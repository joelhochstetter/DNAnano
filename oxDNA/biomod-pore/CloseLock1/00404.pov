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
	<24.133234, 35.024891, 35.355289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370771, 34.786026, 35.139606>,  <24.513294, 34.642708, 35.010197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370771, 34.786026, 35.139606>,  <24.133234, 35.024891, 35.355289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370771, 34.786026, 35.139606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634858, 0.759482, -0.141924,
		0.494271, -0.258040, 0.830128,
		0.593845, -0.597162, -0.539208,
		24.548925, 34.606876, 34.977844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861799, 35.038773, 35.549610>,  <24.133234, 35.024891, 35.355289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861799, 35.038773, 35.549610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895679, 34.905880, 35.173855>,  <24.916008, 34.826145, 34.948402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895679, 34.905880, 35.173855>,  <24.861799, 35.038773, 35.549610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895679, 34.905880, 35.173855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750087, 0.641849, -0.159370,
		0.655892, -0.691122, 0.303571,
		0.084702, -0.332234, -0.939386,
		24.921091, 34.806210, 34.892040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568295, 34.948368, 35.534584>,  <24.861799, 35.038773, 35.549610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568295, 34.948368, 35.534584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400162, 35.000481, 35.175396>,  <25.299282, 35.031746, 34.959885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400162, 35.000481, 35.175396>,  <25.568295, 34.948368, 35.534584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400162, 35.000481, 35.175396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765419, 0.582384, -0.273793,
		0.487294, -0.802407, -0.344511,
		-0.420332, 0.130278, -0.897969,
		25.274063, 35.039562, 34.906006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306908, 34.417892, 36.045845>,  <25.568295, 34.948368, 35.534584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306908, 34.417892, 36.045845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308075, 34.597195, 36.403404>,  <25.308775, 34.704777, 36.617939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308075, 34.597195, 36.403404>,  <25.306908, 34.417892, 36.045845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308075, 34.597195, 36.403404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801745, 0.533201, -0.270001,
		-0.597659, 0.717468, -0.357832,
		0.002921, 0.448258, 0.893899,
		25.308950, 34.731670, 36.671574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757076, 34.227276, 36.563862>,  <25.306908, 34.417892, 36.045845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757076, 34.227276, 36.563862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136572, 34.123833, 36.636539>,  <26.364269, 34.061768, 36.680145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136572, 34.123833, 36.636539>,  <25.757076, 34.227276, 36.563862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136572, 34.123833, 36.636539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255353, 0.965956, 0.041511,
		-0.186247, 0.007014, 0.982478,
		0.948740, -0.258610, 0.181698,
		26.421194, 34.046249, 36.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020561, 34.507149, 37.188160>,  <25.757076, 34.227276, 36.563862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020561, 34.507149, 37.188160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325674, 34.443760, 36.937386>,  <26.508741, 34.405727, 36.786922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325674, 34.443760, 36.937386>,  <26.020561, 34.507149, 37.188160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325674, 34.443760, 36.937386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285394, 0.952478, 0.106472,
		0.580267, -0.260139, 0.771763,
		0.762784, -0.158474, -0.626934,
		26.554510, 34.396217, 36.749306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582087, 34.878624, 37.402927>,  <26.020561, 34.507149, 37.188160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582087, 34.878624, 37.402927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704847, 34.828514, 37.025543>,  <26.778503, 34.798450, 36.799114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704847, 34.828514, 37.025543>,  <26.582087, 34.878624, 37.402927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704847, 34.828514, 37.025543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386490, 0.922288, 0.003263,
		0.869735, -0.365640, 0.331466,
		0.306900, -0.125271, -0.943462,
		26.796917, 34.790932, 36.742504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238667, 35.166172, 37.465340>,  <26.582087, 34.878624, 37.402927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238667, 35.166172, 37.465340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145403, 35.151100, 37.076656>,  <27.089445, 35.142056, 36.843445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145403, 35.151100, 37.076656>,  <27.238667, 35.166172, 37.465340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145403, 35.151100, 37.076656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440258, 0.886885, -0.140030,
		0.867070, -0.460452, -0.190197,
		-0.233160, -0.037680, -0.971708,
		27.075455, 35.139797, 36.785145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904800, 35.340897, 37.180958>,  <27.238667, 35.166172, 37.465340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904800, 35.340897, 37.180958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611343, 35.427742, 36.923389>,  <27.435268, 35.479847, 36.768848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611343, 35.427742, 36.923389>,  <27.904800, 35.340897, 37.180958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611343, 35.427742, 36.923389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385506, 0.913319, -0.131278,
		0.559601, -0.344545, -0.753748,
		-0.733643, 0.217111, -0.643918,
		27.391251, 35.492874, 36.730213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195168, 35.717033, 36.758667>,  <27.904800, 35.340897, 37.180958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195168, 35.717033, 36.758667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813955, 35.779781, 36.655033>,  <27.585228, 35.817429, 36.592854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813955, 35.779781, 36.655033>,  <28.195168, 35.717033, 36.758667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813955, 35.779781, 36.655033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217735, 0.949467, -0.226063,
		0.210532, -0.271857, -0.939026,
		-0.953031, 0.156866, -0.259086,
		27.528046, 35.826839, 36.577309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227303, 36.118320, 36.177017>,  <28.195168, 35.717033, 36.758667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227303, 36.118320, 36.177017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862396, 36.177910, 36.329636>,  <27.643454, 36.213665, 36.421207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862396, 36.177910, 36.329636>,  <28.227303, 36.118320, 36.177017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862396, 36.177910, 36.329636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093413, 0.982636, -0.160316,
		-0.398807, -0.110608, -0.910340,
		-0.912265, 0.148973, 0.381550,
		27.588717, 36.222603, 36.444099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932529, 36.636726, 35.651665>,  <28.227303, 36.118320, 36.177017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932529, 36.636726, 35.651665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711679, 36.658348, 35.984467>,  <27.579168, 36.671322, 36.184147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711679, 36.658348, 35.984467>,  <27.932529, 36.636726, 35.651665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711679, 36.658348, 35.984467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068438, 0.997467, -0.019384,
		-0.830947, 0.046239, -0.554427,
		-0.552126, 0.054051, 0.832006,
		27.546041, 36.674564, 36.234070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467730, 37.114700, 35.500706>,  <27.932529, 36.636726, 35.651665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467730, 37.114700, 35.500706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490143, 37.120213, 35.900040>,  <27.503592, 37.123520, 36.139641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490143, 37.120213, 35.900040>,  <27.467730, 37.114700, 35.500706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490143, 37.120213, 35.900040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066381, 0.997641, -0.017492,
		-0.996220, 0.067250, 0.054988,
		0.056034, 0.013776, 0.998334,
		27.506952, 37.124344, 36.199539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976479, 37.582054, 35.712166>,  <27.467730, 37.114700, 35.500706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976479, 37.582054, 35.712166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231089, 37.567318, 36.020317>,  <27.383854, 37.558475, 36.205208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231089, 37.567318, 36.020317>,  <26.976479, 37.582054, 35.712166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231089, 37.567318, 36.020317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039580, 0.995982, 0.080338,
		-0.770241, -0.081628, 0.632507,
		0.636523, -0.036845, 0.770377,
		27.422045, 37.556263, 36.251431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757807, 38.092110, 36.118210>,  <26.976479, 37.582054, 35.712166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757807, 38.092110, 36.118210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127930, 38.028343, 36.255844>,  <27.350002, 37.990082, 36.338425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127930, 38.028343, 36.255844>,  <26.757807, 38.092110, 36.118210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127930, 38.028343, 36.255844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193136, 0.978963, -0.065808,
		-0.326354, 0.127348, 0.936630,
		0.925306, -0.159421, 0.344084,
		27.405521, 37.980518, 36.359070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816023, 38.616459, 36.712944>,  <26.757807, 38.092110, 36.118210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816023, 38.616459, 36.712944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195934, 38.512505, 36.643215>,  <27.423882, 38.450134, 36.601379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195934, 38.512505, 36.643215>,  <26.816023, 38.616459, 36.712944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195934, 38.512505, 36.643215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287648, 0.944393, 0.159313,
		0.123223, -0.201454, 0.971716,
		0.949776, -0.259881, -0.174318,
		27.480867, 38.434540, 36.590919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185719, 39.026752, 37.215164>,  <26.816023, 38.616459, 36.712944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185719, 39.026752, 37.215164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437798, 38.911263, 36.926861>,  <27.589045, 38.841969, 36.753880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437798, 38.911263, 36.926861>,  <27.185719, 39.026752, 37.215164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437798, 38.911263, 36.926861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407557, 0.913131, -0.009438,
		0.660870, -0.287802, 0.693124,
		0.630197, -0.288725, -0.720756,
		27.626856, 38.824646, 36.710632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932583, 39.310402, 37.308559>,  <27.185719, 39.026752, 37.215164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932583, 39.310402, 37.308559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900442, 39.241341, 36.915878>,  <27.881157, 39.199902, 36.680271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900442, 39.241341, 36.915878>,  <27.932583, 39.310402, 37.308559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900442, 39.241341, 36.915878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500113, 0.844962, -0.189542,
		0.862224, -0.506191, 0.018453,
		-0.080352, -0.172657, -0.981699,
		27.876337, 39.189545, 36.621368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531731, 39.607761, 37.052204>,  <27.932583, 39.310402, 37.308559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531731, 39.607761, 37.052204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321899, 39.560062, 36.715015>,  <28.196001, 39.531445, 36.512703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321899, 39.560062, 36.715015>,  <28.531731, 39.607761, 37.052204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321899, 39.560062, 36.715015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306063, 0.897534, -0.317424,
		0.794445, -0.424516, -0.434331,
		-0.524579, -0.119243, -0.842970,
		28.164526, 39.524288, 36.462124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006590, 39.608780, 36.400692>,  <28.531731, 39.607761, 37.052204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006590, 39.608780, 36.400692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645500, 39.720657, 36.269936>,  <28.428846, 39.787785, 36.191483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645500, 39.720657, 36.269936>,  <29.006590, 39.608780, 36.400692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645500, 39.720657, 36.269936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427011, 0.675092, -0.601591,
		0.052420, -0.682658, -0.728855,
		-0.902725, 0.279694, -0.326891,
		28.374683, 39.804565, 36.171867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139645, 39.658905, 35.715141>,  <29.006590, 39.608780, 36.400692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139645, 39.658905, 35.715141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802536, 39.870632, 35.754257>,  <28.600271, 39.997669, 35.777725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802536, 39.870632, 35.754257>,  <29.139645, 39.658905, 35.715141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802536, 39.870632, 35.754257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410824, 0.749899, -0.518532,
		-0.347798, -0.396830, -0.849449,
		-0.842770, 0.529318, 0.097786,
		28.549706, 40.029427, 35.783592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994343, 39.977314, 35.075428>,  <29.139645, 39.658905, 35.715141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994343, 39.977314, 35.075428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789938, 40.198490, 35.338676>,  <28.667295, 40.331196, 35.496628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789938, 40.198490, 35.338676>,  <28.994343, 39.977314, 35.075428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789938, 40.198490, 35.338676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205754, 0.822066, -0.530917,
		-0.834585, -0.135893, -0.533855,
		-0.511012, 0.552938, 0.658124,
		28.636635, 40.364372, 35.536114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622744, 40.447231, 34.658653>,  <28.994343, 39.977314, 35.075428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622744, 40.447231, 34.658653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650919, 40.608273, 35.023716>,  <28.667824, 40.704899, 35.242752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650919, 40.608273, 35.023716>,  <28.622744, 40.447231, 34.658653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650919, 40.608273, 35.023716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168869, 0.896912, -0.408695,
		-0.983118, 0.182908, -0.004810,
		0.070440, 0.402608, 0.912658,
		28.672050, 40.729053, 35.297512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130230, 41.016632, 34.616894>,  <28.622744, 40.447231, 34.658653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130230, 41.016632, 34.616894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398230, 41.080368, 34.906918>,  <28.559029, 41.118610, 35.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398230, 41.080368, 34.906918>,  <28.130230, 41.016632, 34.616894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398230, 41.080368, 34.906918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265685, 0.860531, -0.434623,
		-0.693191, 0.483835, 0.534219,
		0.669998, 0.159343, 0.725060,
		28.599230, 41.128170, 35.124435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025074, 41.703869, 34.752201>,  <28.130230, 41.016632, 34.616894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025074, 41.703869, 34.752201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385365, 41.560696, 34.850651>,  <28.601540, 41.474792, 34.909721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385365, 41.560696, 34.850651>,  <28.025074, 41.703869, 34.752201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385365, 41.560696, 34.850651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433109, 0.696549, -0.572045,
		0.033312, 0.621857, 0.782422,
		0.900726, -0.357931, 0.246129,
		28.655582, 41.453316, 34.924488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502192, 42.253044, 34.774155>,  <28.025074, 41.703869, 34.752201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502192, 42.253044, 34.774155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742628, 41.945686, 34.686279>,  <28.886890, 41.761272, 34.633553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742628, 41.945686, 34.686279>,  <28.502192, 42.253044, 34.774155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742628, 41.945686, 34.686279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473264, 0.563756, -0.676905,
		0.643982, 0.302907, 0.702520,
		0.601089, -0.768392, -0.219693,
		28.922955, 41.715168, 34.620373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168329, 42.404129, 34.923416>,  <28.502192, 42.253044, 34.774155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168329, 42.404129, 34.923416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166269, 42.158173, 34.607975>,  <29.165033, 42.010601, 34.418713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166269, 42.158173, 34.607975>,  <29.168329, 42.404129, 34.923416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166269, 42.158173, 34.607975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451052, 0.702400, -0.550623,
		0.892483, -0.358534, 0.273728,
		-0.005150, -0.614888, -0.788598,
		29.164724, 41.973705, 34.371395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765572, 42.185154, 34.734978>,  <29.168329, 42.404129, 34.923416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765572, 42.185154, 34.734978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586464, 42.226921, 34.379765>,  <29.479000, 42.251984, 34.166637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586464, 42.226921, 34.379765>,  <29.765572, 42.185154, 34.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586464, 42.226921, 34.379765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757600, 0.571809, -0.314766,
		0.474916, -0.813715, -0.335147,
		-0.447770, 0.104420, -0.888031,
		29.452133, 42.258247, 34.113354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150772, 41.880821, 34.210716>,  <29.765572, 42.185154, 34.734978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150772, 41.880821, 34.210716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943958, 42.214066, 34.132118>,  <29.819870, 42.414013, 34.084961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943958, 42.214066, 34.132118>,  <30.150772, 41.880821, 34.210716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943958, 42.214066, 34.132118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855647, 0.509303, -0.092086,
		0.023357, -0.215740, -0.976172,
		-0.517033, 0.833107, -0.196493,
		29.788849, 42.463997, 34.073170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550131, 42.166199, 33.708881>,  <30.150772, 41.880821, 34.210716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550131, 42.166199, 33.708881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343166, 42.463036, 33.879330>,  <30.218987, 42.641140, 33.981598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343166, 42.463036, 33.879330>,  <30.550131, 42.166199, 33.708881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343166, 42.463036, 33.879330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844674, 0.522709, 0.115332,
		-0.137148, 0.419605, -0.897286,
		-0.517414, 0.742096, 0.426118,
		30.187943, 42.685665, 34.007164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498362, 42.849819, 33.335976>,  <30.550131, 42.166199, 33.708881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498362, 42.849819, 33.335976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488094, 42.909321, 33.731392>,  <30.481934, 42.945023, 33.968643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488094, 42.909321, 33.731392>,  <30.498362, 42.849819, 33.335976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488094, 42.909321, 33.731392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701851, 0.706850, -0.088140,
		-0.711862, 0.691546, -0.122543,
		-0.025667, 0.148751, 0.988542,
		30.480394, 42.953945, 34.027954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190617, 42.632858, 32.637722>,  <30.498362, 42.849819, 33.335976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190617, 42.632858, 32.637722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832632, 42.792336, 32.717812>,  <29.617842, 42.888020, 32.765865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832632, 42.792336, 32.717812>,  <30.190617, 42.632858, 32.637722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832632, 42.792336, 32.717812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436062, -0.686823, -0.581484,
		-0.094309, -0.607718, 0.788533,
		-0.894962, 0.398688, 0.200229,
		29.564144, 42.911942, 32.777882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891598, 42.387299, 32.846958>,  <30.190617, 42.632858, 32.637722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891598, 42.387299, 32.846958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912352, 42.173023, 32.509830>,  <30.924805, 42.044460, 32.307552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912352, 42.173023, 32.509830>,  <30.891598, 42.387299, 32.846958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912352, 42.173023, 32.509830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166874, -0.827442, 0.536183,
		-0.984612, -0.168465, 0.046460,
		0.051885, -0.535685, -0.842822,
		30.927917, 42.012318, 32.256985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333197, 41.932163, 32.802067>,  <30.891598, 42.387299, 32.846958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333197, 41.932163, 32.802067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663074, 41.788933, 32.626953>,  <30.861002, 41.702995, 32.521885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663074, 41.788933, 32.626953>,  <30.333197, 41.932163, 32.802067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663074, 41.788933, 32.626953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024795, -0.750421, 0.660495,
		-0.565034, -0.555562, -0.609990,
		0.824695, -0.358077, -0.437788,
		30.910482, 41.681511, 32.495617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310579, 41.202259, 32.676006>,  <30.333197, 41.932163, 32.802067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310579, 41.202259, 32.676006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687176, 41.326843, 32.727528>,  <30.913134, 41.401592, 32.758438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687176, 41.326843, 32.727528>,  <30.310579, 41.202259, 32.676006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687176, 41.326843, 32.727528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143918, -0.717068, 0.681983,
		0.304766, -0.623545, -0.719937,
		0.941491, 0.311457, 0.128799,
		30.969624, 41.420280, 32.766167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721445, 40.636391, 32.602303>,  <30.310579, 41.202259, 32.676006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721445, 40.636391, 32.602303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949268, 40.878880, 32.824326>,  <31.085962, 41.024372, 32.957539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949268, 40.878880, 32.824326>,  <30.721445, 40.636391, 32.602303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949268, 40.878880, 32.824326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359286, -0.790989, 0.495228,
		0.739267, -0.082636, -0.668323,
		0.569560, 0.606224, 0.555062,
		31.120136, 41.060745, 32.990845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381727, 40.443375, 32.648792>,  <30.721445, 40.636391, 32.602303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381727, 40.443375, 32.648792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334234, 40.654697, 32.985077>,  <31.305738, 40.781490, 33.186848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334234, 40.654697, 32.985077>,  <31.381727, 40.443375, 32.648792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334234, 40.654697, 32.985077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358620, -0.766729, 0.532464,
		0.925902, 0.364716, -0.098427,
		-0.118732, 0.528308, 0.840710,
		31.298615, 40.813190, 33.237289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056332, 40.467136, 32.996925>,  <31.381727, 40.443375, 32.648792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056332, 40.467136, 32.996925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750854, 40.518429, 33.250011>,  <31.567568, 40.549202, 33.401863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750854, 40.518429, 33.250011>,  <32.056332, 40.467136, 32.996925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750854, 40.518429, 33.250011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381700, -0.700733, 0.602726,
		0.520650, 0.701806, 0.486202,
		-0.763694, 0.128226, 0.632715,
		31.521746, 40.556896, 33.439827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286461, 40.278454, 33.626644>,  <32.056332, 40.467136, 32.996925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286461, 40.278454, 33.626644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903727, 40.315445, 33.736855>,  <31.674086, 40.337639, 33.802982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903727, 40.315445, 33.736855>,  <32.286461, 40.278454, 33.626644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903727, 40.315445, 33.736855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139885, -0.684452, 0.715513,
		0.254753, 0.723169, 0.641971,
		-0.956835, 0.092477, 0.275526,
		31.616676, 40.343189, 33.819511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249714, 40.337368, 34.300407>,  <32.286461, 40.278454, 33.626644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249714, 40.337368, 34.300407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881472, 40.208519, 34.212116>,  <31.660526, 40.131210, 34.159142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881472, 40.208519, 34.212116>,  <32.249714, 40.337368, 34.300407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881472, 40.208519, 34.212116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127429, -0.782132, 0.609944,
		-0.369115, 0.533391, 0.761084,
		-0.920606, -0.322124, -0.220727,
		31.605289, 40.111881, 34.145897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911270, 40.245266, 34.978939>,  <32.249714, 40.337368, 34.300407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911270, 40.245266, 34.978939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711834, 40.037045, 34.701687>,  <31.592173, 39.912109, 34.535336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711834, 40.037045, 34.701687>,  <31.911270, 40.245266, 34.978939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711834, 40.037045, 34.701687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143799, -0.738858, 0.658340,
		-0.854826, 0.427914, 0.293533,
		-0.498592, -0.520556, -0.693128,
		31.562256, 39.880878, 34.493748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359243, 39.894085, 35.372818>,  <31.911270, 40.245266, 34.978939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359243, 39.894085, 35.372818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386106, 39.695984, 35.026360>,  <31.402225, 39.577122, 34.818485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386106, 39.695984, 35.026360>,  <31.359243, 39.894085, 35.372818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386106, 39.695984, 35.026360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151999, -0.863055, 0.481699,
		-0.986096, 0.099303, -0.133240,
		0.067160, -0.495254, -0.866149,
		31.406254, 39.547409, 34.766514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690418, 39.532970, 35.313370>,  <31.359243, 39.894085, 35.372818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690418, 39.532970, 35.313370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979834, 39.361332, 35.097088>,  <31.153484, 39.258347, 34.967319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979834, 39.361332, 35.097088>,  <30.690418, 39.532970, 35.313370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979834, 39.361332, 35.097088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196701, -0.879002, 0.434354,
		-0.661662, -0.207916, -0.720398,
		0.723541, -0.429099, -0.540705,
		31.196896, 39.232601, 34.934875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377258, 38.874355, 35.127193>,  <30.690418, 39.532970, 35.313370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377258, 38.874355, 35.127193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774939, 38.852718, 35.090019>,  <31.013546, 38.839737, 35.067715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774939, 38.852718, 35.090019>,  <30.377258, 38.874355, 35.127193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774939, 38.852718, 35.090019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030254, -0.970055, 0.240995,
		-0.103193, -0.236785, -0.966066,
		0.994201, -0.054096, -0.092939,
		31.073198, 38.836491, 35.062138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453901, 38.347328, 34.675640>,  <30.377258, 38.874355, 35.127193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453901, 38.347328, 34.675640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787462, 38.368748, 34.895363>,  <30.987598, 38.381599, 35.027199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787462, 38.368748, 34.895363>,  <30.453901, 38.347328, 34.675640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787462, 38.368748, 34.895363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044521, -0.998565, 0.029764,
		0.550115, -0.000364, -0.835089,
		0.833902, 0.053553, 0.549309,
		31.037632, 38.384815, 35.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978598, 37.992317, 34.324490>,  <30.453901, 38.347328, 34.675640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978598, 37.992317, 34.324490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052723, 37.976139, 34.717228>,  <31.097198, 37.966434, 34.952869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052723, 37.976139, 34.717228>,  <30.978598, 37.992317, 34.324490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052723, 37.976139, 34.717228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134279, -0.988739, -0.066071,
		0.973462, 0.144085, -0.177795,
		0.185313, -0.040443, 0.981847,
		31.108316, 37.964005, 35.011784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416128, 37.380287, 34.397053>,  <30.978598, 37.992317, 34.324490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416128, 37.380287, 34.397053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298952, 37.477894, 34.766842>,  <31.228645, 37.536457, 34.988716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298952, 37.477894, 34.766842>,  <31.416128, 37.380287, 34.397053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298952, 37.477894, 34.766842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190775, -0.962360, 0.193565,
		0.936904, -0.119663, 0.328467,
		-0.292941, 0.244015, 0.924468,
		31.211069, 37.551098, 35.044182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644541, 36.799892, 34.891556>,  <31.416128, 37.380287, 34.397053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644541, 36.799892, 34.891556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371813, 37.004658, 35.100578>,  <31.208176, 37.127518, 35.225994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371813, 37.004658, 35.100578>,  <31.644541, 36.799892, 34.891556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371813, 37.004658, 35.100578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389476, -0.858714, 0.333044,
		0.619219, 0.023551, 0.784865,
		-0.681818, 0.511914, 0.522559,
		31.167267, 37.158234, 35.257347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477304, 36.383327, 35.500790>,  <31.644541, 36.799892, 34.891556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477304, 36.383327, 35.500790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163307, 36.628185, 35.462692>,  <30.974909, 36.775101, 35.439835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163307, 36.628185, 35.462692>,  <31.477304, 36.383327, 35.500790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163307, 36.628185, 35.462692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608422, -0.732827, 0.304611,
		0.116665, 0.297067, 0.947703,
		-0.784992, 0.612141, -0.095247,
		30.927809, 36.811829, 35.434116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081482, 36.175484, 35.973690>,  <31.477304, 36.383327, 35.500790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081482, 36.175484, 35.973690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831917, 36.383472, 35.740330>,  <30.682178, 36.508266, 35.600311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831917, 36.383472, 35.740330>,  <31.081482, 36.175484, 35.973690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831917, 36.383472, 35.740330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663887, -0.746499, 0.044644,
		-0.412296, 0.415167, 0.810955,
		-0.623912, 0.519976, -0.583403,
		30.644743, 36.539467, 35.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358559, 36.109325, 36.314354>,  <31.081482, 36.175484, 35.973690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358559, 36.109325, 36.314354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302563, 36.160110, 35.921562>,  <30.268965, 36.190582, 35.685886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302563, 36.160110, 35.921562>,  <30.358559, 36.109325, 36.314354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302563, 36.160110, 35.921562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693482, -0.720452, 0.005714,
		-0.706744, 0.681785, 0.188899,
		-0.139989, 0.126960, -0.981980,
		30.260567, 36.198196, 35.626968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608480, 36.192322, 36.250172>,  <30.358559, 36.109325, 36.314354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608480, 36.192322, 36.250172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735527, 36.138687, 35.874695>,  <29.811754, 36.106506, 35.649410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735527, 36.138687, 35.874695>,  <29.608480, 36.192322, 36.250172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735527, 36.138687, 35.874695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825579, -0.526045, -0.204198,
		-0.466412, 0.839820, -0.277781,
		0.317615, -0.134090, -0.938691,
		29.830812, 36.098461, 35.593086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018919, 36.358215, 35.735870>,  <29.608480, 36.192322, 36.250172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018919, 36.358215, 35.735870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276812, 36.104504, 35.565220>,  <29.431547, 35.952278, 35.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276812, 36.104504, 35.565220>,  <29.018919, 36.358215, 35.735870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276812, 36.104504, 35.565220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764389, -0.530945, -0.365797,
		0.005499, 0.561953, -0.827151,
		0.644732, -0.634276, -0.426631,
		29.470232, 35.914223, 35.437229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540960, 36.024525, 35.283501>,  <29.018919, 36.358215, 35.735870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540960, 36.024525, 35.283501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855450, 35.779274, 35.252712>,  <29.044144, 35.632122, 35.234238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855450, 35.779274, 35.252712>,  <28.540960, 36.024525, 35.283501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855450, 35.779274, 35.252712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590696, -0.709130, -0.384985,
		0.181462, 0.348151, -0.919708,
		0.786225, -0.613128, -0.076971,
		29.091318, 35.595337, 35.229622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329929, 35.736610, 34.719685>,  <28.540960, 36.024525, 35.283501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329929, 35.736610, 34.719685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606094, 35.496281, 34.880848>,  <28.771793, 35.352081, 34.977547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606094, 35.496281, 34.880848>,  <28.329929, 35.736610, 34.719685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606094, 35.496281, 34.880848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537350, -0.798823, -0.270438,
		0.484341, -0.029790, -0.874372,
		0.690412, -0.600828, 0.402910,
		28.813217, 35.316032, 35.001720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364464, 35.176804, 34.337688>,  <28.329929, 35.736610, 34.719685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364464, 35.176804, 34.337688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508007, 35.012985, 34.673187>,  <28.594133, 34.914696, 34.874485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508007, 35.012985, 34.673187>,  <28.364464, 35.176804, 34.337688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508007, 35.012985, 34.673187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526199, -0.830961, -0.180606,
		0.770932, -0.376537, -0.513696,
		0.358856, -0.409542, 0.838748,
		28.615664, 34.890121, 34.924812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880102, 34.608307, 34.276371>,  <28.364464, 35.176804, 34.337688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880102, 34.608307, 34.276371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724110, 34.545135, 34.639244>,  <28.630514, 34.507233, 34.856968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724110, 34.545135, 34.639244>,  <28.880102, 34.608307, 34.276371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724110, 34.545135, 34.639244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369158, -0.875734, -0.311147,
		0.843587, -0.456234, 0.283218,
		-0.389979, -0.157928, 0.907180,
		28.607117, 34.497757, 34.911400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980255, 33.852474, 34.599743>,  <28.880102, 34.608307, 34.276371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980255, 33.852474, 34.599743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629625, 33.962776, 34.757519>,  <28.419249, 34.028957, 34.852184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629625, 33.962776, 34.757519>,  <28.980255, 33.852474, 34.599743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629625, 33.962776, 34.757519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463785, -0.702918, -0.539268,
		0.128549, -0.655641, 0.744049,
		-0.876572, 0.275756, 0.394436,
		28.366653, 34.045502, 34.875851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628292, 33.958443, 34.199924>,  <28.980255, 33.852474, 34.599743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628292, 33.958443, 34.199924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811661, 34.112831, 34.520145>,  <29.921682, 34.205463, 34.712276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811661, 34.112831, 34.520145>,  <29.628292, 33.958443, 34.199924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811661, 34.112831, 34.520145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791464, -0.587045, -0.170187,
		0.404272, 0.711623, -0.574592,
		0.458421, 0.385967, 0.800550,
		29.949186, 34.228622, 34.760311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374470, 34.034355, 34.090000>,  <29.628292, 33.958443, 34.199924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374470, 34.034355, 34.090000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303190, 33.985210, 34.480518>,  <30.260422, 33.955723, 34.714828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303190, 33.985210, 34.480518>,  <30.374470, 34.034355, 34.090000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303190, 33.985210, 34.480518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710344, -0.702646, 0.041234,
		0.680923, 0.700853, 0.212485,
		-0.178201, -0.122860, 0.976294,
		30.249729, 33.948353, 34.773407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036699, 33.973896, 34.431248>,  <30.374470, 34.034355, 34.090000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036699, 33.973896, 34.431248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743059, 33.771042, 34.611874>,  <30.566875, 33.649330, 34.720249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743059, 33.771042, 34.611874>,  <31.036699, 33.973896, 34.431248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743059, 33.771042, 34.611874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521407, -0.846997, -0.103594,
		0.435011, 0.159401, 0.886204,
		-0.734098, -0.507137, 0.451566,
		30.522829, 33.618900, 34.747345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794250, 33.793598, 34.529133>,  <31.036699, 33.973896, 34.431248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794250, 33.793598, 34.529133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808708, 33.587036, 34.871365>,  <31.817383, 33.463100, 35.076702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808708, 33.587036, 34.871365>,  <31.794250, 33.793598, 34.529133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808708, 33.587036, 34.871365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653983, 0.659584, 0.370479,
		-0.755645, 0.546145, 0.361562,
		0.036145, -0.516406, 0.855581,
		31.819551, 33.432114, 35.128040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964691, 34.333950, 35.093380>,  <31.794250, 33.793598, 34.529133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964691, 34.333950, 35.093380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020359, 33.959023, 35.221165>,  <32.053761, 33.734066, 35.297836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020359, 33.959023, 35.221165>,  <31.964691, 34.333950, 35.093380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020359, 33.959023, 35.221165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657594, 0.328682, 0.677893,
		-0.740407, 0.115737, 0.662120,
		0.139170, -0.937322, 0.319467,
		32.062111, 33.677826, 35.317005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822046, 34.372421, 35.736122>,  <31.964691, 34.333950, 35.093380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822046, 34.372421, 35.736122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072964, 34.070087, 35.661064>,  <32.223515, 33.888687, 35.616032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072964, 34.070087, 35.661064>,  <31.822046, 34.372421, 35.736122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072964, 34.070087, 35.661064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692261, 0.430800, 0.578952,
		-0.356758, -0.493071, 0.793477,
		0.627294, -0.755839, -0.187642,
		32.261150, 33.843334, 35.604771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030468, 33.963825, 36.315052>,  <31.822046, 34.372421, 35.736122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030468, 33.963825, 36.315052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321732, 34.003014, 36.043701>,  <32.496490, 34.026527, 35.880890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321732, 34.003014, 36.043701>,  <32.030468, 33.963825, 36.315052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321732, 34.003014, 36.043701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651979, 0.206335, 0.729623,
		0.211482, -0.973561, 0.086343,
		0.728148, 0.098008, -0.678377,
		32.540180, 34.032406, 35.840191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638863, 33.651348, 36.599659>,  <32.030468, 33.963825, 36.315052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638863, 33.651348, 36.599659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793510, 33.912842, 36.339458>,  <32.886299, 34.069740, 36.183338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793510, 33.912842, 36.339458>,  <32.638863, 33.651348, 36.599659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793510, 33.912842, 36.339458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614446, 0.343404, 0.710303,
		0.687736, -0.674316, -0.268919,
		0.386620, 0.653737, -0.650502,
		32.909496, 34.108963, 36.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347435, 33.451817, 36.535862>,  <32.638863, 33.651348, 36.599659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347435, 33.451817, 36.535862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308872, 33.830605, 36.413258>,  <33.285736, 34.057877, 36.339695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308872, 33.830605, 36.413258>,  <33.347435, 33.451817, 36.535862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308872, 33.830605, 36.413258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642761, 0.294355, 0.707258,
		0.759977, -0.128831, -0.637054,
		-0.096404, 0.946973, -0.306510,
		33.279953, 34.114697, 36.321304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051548, 33.780575, 36.298515>,  <33.347435, 33.451817, 36.535862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051548, 33.780575, 36.298515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801754, 34.078056, 36.393948>,  <33.651878, 34.256546, 36.451206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801754, 34.078056, 36.393948>,  <34.051548, 33.780575, 36.298515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801754, 34.078056, 36.393948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639872, 0.312007, 0.702293,
		0.447861, 0.591232, -0.670720,
		-0.624487, 0.743704, 0.238577,
		33.614407, 34.301167, 36.465519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484066, 34.306976, 36.479885>,  <34.051548, 33.780575, 36.298515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484066, 34.306976, 36.479885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137524, 34.407532, 36.652504>,  <33.929600, 34.467865, 36.756073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137524, 34.407532, 36.652504>,  <34.484066, 34.306976, 36.479885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137524, 34.407532, 36.652504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488339, 0.245349, 0.837454,
		0.104648, 0.936273, -0.335323,
		-0.866357, 0.251389, 0.431543,
		33.877617, 34.482948, 36.781967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581516, 34.954491, 36.761383>,  <34.484066, 34.306976, 36.479885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581516, 34.954491, 36.761383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248192, 34.846489, 36.954338>,  <34.048199, 34.781689, 37.070110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248192, 34.846489, 36.954338>,  <34.581516, 34.954491, 36.761383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248192, 34.846489, 36.954338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355754, 0.405979, 0.841796,
		-0.423127, 0.873086, -0.242250,
		-0.833308, -0.270006, 0.482384,
		33.998199, 34.765488, 37.099052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415771, 35.520279, 37.148239>,  <34.581516, 34.954491, 36.761383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415771, 35.520279, 37.148239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228107, 35.212746, 37.322033>,  <34.115509, 35.028225, 37.426311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228107, 35.212746, 37.322033>,  <34.415771, 35.520279, 37.148239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228107, 35.212746, 37.322033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314807, 0.314071, 0.895687,
		-0.825096, 0.557002, 0.094685,
		-0.469162, -0.768836, 0.434487,
		34.087360, 34.982094, 37.452377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036797, 35.870144, 37.744637>,  <34.415771, 35.520279, 37.148239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036797, 35.870144, 37.744637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061611, 35.479340, 37.826221>,  <34.076500, 35.244858, 37.875172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061611, 35.479340, 37.826221>,  <34.036797, 35.870144, 37.744637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061611, 35.479340, 37.826221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282926, 0.213185, 0.935150,
		-0.957133, -0.000312, 0.289648,
		0.062040, -0.977012, 0.203958,
		34.080223, 35.186237, 37.887409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783985, 35.864399, 38.383003>,  <34.036797, 35.870144, 37.744637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783985, 35.864399, 38.383003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985947, 35.520660, 38.350491>,  <34.107124, 35.314419, 38.330982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985947, 35.520660, 38.350491>,  <33.783985, 35.864399, 38.383003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985947, 35.520660, 38.350491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272597, 0.069399, 0.959622,
		-0.819004, -0.506669, 0.269293,
		0.504900, -0.859343, -0.081279,
		34.137417, 35.262859, 38.326107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501167, 35.389465, 38.911720>,  <33.783985, 35.864399, 38.383003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501167, 35.389465, 38.911720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883724, 35.298813, 38.838020>,  <34.113258, 35.244419, 38.793800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883724, 35.298813, 38.838020>,  <33.501167, 35.389465, 38.911720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883724, 35.298813, 38.838020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187509, -0.007259, 0.982236,
		-0.223948, -0.973952, 0.035554,
		0.956393, -0.226636, -0.184251,
		34.170643, 35.230824, 38.782745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661968, 35.167393, 39.469044>,  <33.501167, 35.389465, 38.911720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661968, 35.167393, 39.469044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021702, 35.164520, 39.294163>,  <34.237541, 35.162796, 39.189236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021702, 35.164520, 39.294163>,  <33.661968, 35.167393, 39.469044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021702, 35.164520, 39.294163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436780, -0.032214, 0.898991,
		-0.020522, -0.999455, -0.025843,
		0.899334, -0.007161, -0.437203,
		34.291504, 35.162369, 39.163002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002113, 34.595409, 39.666973>,  <33.661968, 35.167393, 39.469044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002113, 34.595409, 39.666973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290646, 34.858158, 39.579151>,  <34.463764, 35.015808, 39.526459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290646, 34.858158, 39.579151>,  <34.002113, 34.595409, 39.666973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290646, 34.858158, 39.579151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411131, -0.150997, 0.898983,
		0.557365, -0.738728, -0.378979,
		0.721329, 0.656872, -0.219554,
		34.507046, 35.055218, 39.513287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602699, 34.296490, 39.841755>,  <34.002113, 34.595409, 39.666973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602699, 34.296490, 39.841755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734016, 34.672878, 39.808758>,  <34.812805, 34.898712, 39.788960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734016, 34.672878, 39.808758>,  <34.602699, 34.296490, 39.841755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734016, 34.672878, 39.808758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426101, -0.069583, 0.901995,
		0.843008, -0.331268, -0.423791,
		0.328290, 0.940968, -0.082495,
		34.832504, 34.955170, 39.784008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251415, 34.251919, 40.160877>,  <34.602699, 34.296490, 39.841755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251415, 34.251919, 40.160877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116821, 34.628563, 40.165775>,  <35.036064, 34.854549, 40.168713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116821, 34.628563, 40.165775>,  <35.251415, 34.251919, 40.160877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116821, 34.628563, 40.165775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281554, 0.088188, 0.955484,
		0.898614, 0.324952, -0.294788,
		-0.336483, 0.941610, 0.012244,
		35.015877, 34.911045, 40.169449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712677, 34.578049, 40.621471>,  <35.251415, 34.251919, 40.160877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712677, 34.578049, 40.621471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419987, 34.847313, 40.578709>,  <35.244373, 35.008873, 40.553051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419987, 34.847313, 40.578709>,  <35.712677, 34.578049, 40.621471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419987, 34.847313, 40.578709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072898, 0.078661, 0.994233,
		0.677691, 0.735298, -0.008486,
		-0.731725, 0.673163, -0.106910,
		35.200470, 35.049263, 40.546635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924427, 34.991489, 41.105194>,  <35.712677, 34.578049, 40.621471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924427, 34.991489, 41.105194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542774, 35.082684, 41.027573>,  <35.313782, 35.137402, 40.980999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542774, 35.082684, 41.027573>,  <35.924427, 34.991489, 41.105194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542774, 35.082684, 41.027573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193364, 0.025569, 0.980794,
		0.228567, 0.973329, 0.019688,
		-0.954132, 0.227984, -0.194051,
		35.256535, 35.151077, 40.969357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748756, 35.455830, 41.610722>,  <35.924427, 34.991489, 41.105194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748756, 35.455830, 41.610722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406303, 35.294514, 41.481487>,  <35.200832, 35.197723, 41.403946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406303, 35.294514, 41.481487>,  <35.748756, 35.455830, 41.610722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406303, 35.294514, 41.481487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279713, -0.164049, 0.945964,
		-0.434504, 0.900246, 0.027642,
		-0.856135, -0.403294, -0.323090,
		35.149464, 35.173527, 41.384560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227787, 35.781956, 41.972912>,  <35.748756, 35.455830, 41.610722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227787, 35.781956, 41.972912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047306, 35.458801, 41.821262>,  <34.939018, 35.264908, 41.730274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047306, 35.458801, 41.821262>,  <35.227787, 35.781956, 41.972912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047306, 35.458801, 41.821262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456120, -0.156378, 0.876071,
		-0.767055, 0.568208, -0.297937,
		-0.451200, -0.807889, -0.379122,
		34.911945, 35.216434, 41.707527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482883, 35.864372, 42.037071>,  <35.227787, 35.781956, 41.972912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482883, 35.864372, 42.037071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598419, 35.481487, 42.044083>,  <34.667740, 35.251755, 42.048290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598419, 35.481487, 42.044083>,  <34.482883, 35.864372, 42.037071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598419, 35.481487, 42.044083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554821, -0.152439, 0.817885,
		-0.780221, -0.245963, -0.575114,
		0.288840, -0.957217, 0.017529,
		34.685070, 35.194321, 42.049343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898884, 35.433895, 42.180428>,  <34.482883, 35.864372, 42.037071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898884, 35.433895, 42.180428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193218, 35.184006, 42.284943>,  <34.369820, 35.034073, 42.347652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193218, 35.184006, 42.284943>,  <33.898884, 35.433895, 42.180428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193218, 35.184006, 42.284943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458301, -0.175387, 0.871321,
		-0.498510, -0.760893, -0.415367,
		0.735831, -0.624726, 0.261286,
		34.413967, 34.996590, 42.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521358, 34.993290, 42.474613>,  <33.898884, 35.433895, 42.180428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521358, 34.993290, 42.474613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883106, 34.871754, 42.594479>,  <34.100155, 34.798832, 42.666397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883106, 34.871754, 42.594479>,  <33.521358, 34.993290, 42.474613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883106, 34.871754, 42.594479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359267, -0.163103, 0.918872,
		-0.230313, -0.938658, -0.256665,
		0.904369, -0.303839, 0.299664,
		34.154415, 34.780602, 42.684380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504055, 34.392365, 42.903255>,  <33.521358, 34.993290, 42.474613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504055, 34.392365, 42.903255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870667, 34.527992, 42.988117>,  <34.090633, 34.609371, 43.039036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870667, 34.527992, 42.988117>,  <33.504055, 34.392365, 42.903255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870667, 34.527992, 42.988117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068500, -0.389521, 0.918467,
		0.394066, -0.856331, -0.333780,
		0.916526, 0.339073, 0.212156,
		34.145626, 34.629715, 43.051765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880669, 33.865604, 43.118431>,  <33.504055, 34.392365, 42.903255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880669, 33.865604, 43.118431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043453, 34.195538, 43.275421>,  <34.141125, 34.393497, 43.369614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043453, 34.195538, 43.275421>,  <33.880669, 33.865604, 43.118431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043453, 34.195538, 43.275421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114699, -0.380120, 0.917798,
		0.906215, -0.418526, -0.060087,
		0.406963, 0.824830, 0.392475,
		34.165543, 34.442986, 43.393162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352451, 33.641354, 43.557896>,  <33.880669, 33.865604, 43.118431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352451, 33.641354, 43.557896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304451, 34.014160, 43.694683>,  <34.275650, 34.237846, 43.776756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304451, 34.014160, 43.694683>,  <34.352451, 33.641354, 43.557896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304451, 34.014160, 43.694683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054871, -0.337702, 0.939652,
		0.991256, 0.131525, -0.010616,
		-0.120003, 0.932019, 0.341966,
		34.268452, 34.293766, 43.797272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921425, 33.755344, 44.113720>,  <34.352451, 33.641354, 43.557896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921425, 33.755344, 44.113720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632484, 34.022923, 44.183826>,  <34.459122, 34.183472, 44.225891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632484, 34.022923, 44.183826>,  <34.921425, 33.755344, 44.113720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632484, 34.022923, 44.183826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093504, -0.345599, 0.933712,
		0.685177, 0.658079, 0.312193,
		-0.722350, 0.668949, 0.175263,
		34.415779, 34.223606, 44.236404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100838, 34.065323, 44.753880>,  <34.921425, 33.755344, 44.113720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100838, 34.065323, 44.753880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714558, 34.149830, 44.693489>,  <34.482792, 34.200535, 44.657253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714558, 34.149830, 44.693489>,  <35.100838, 34.065323, 44.753880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714558, 34.149830, 44.693489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223680, -0.381470, 0.896910,
		0.131894, 0.899915, 0.415641,
		-0.965697, 0.211268, -0.150980,
		34.424847, 34.213211, 44.648193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882172, 34.377640, 45.379345>,  <35.100838, 34.065323, 44.753880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882172, 34.377640, 45.379345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532887, 34.270676, 45.216377>,  <34.323315, 34.206497, 45.118595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532887, 34.270676, 45.216377>,  <34.882172, 34.377640, 45.379345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532887, 34.270676, 45.216377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383977, -0.137287, 0.913079,
		-0.300102, 0.953752, 0.017201,
		-0.873213, -0.267412, -0.407419,
		34.270924, 34.190453, 45.094151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337730, 34.858353, 45.507599>,  <34.882172, 34.377640, 45.379345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337730, 34.858353, 45.507599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174061, 34.497459, 45.453117>,  <34.075859, 34.280922, 45.420429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174061, 34.497459, 45.453117>,  <34.337730, 34.858353, 45.507599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174061, 34.497459, 45.453117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317140, 0.000654, 0.948379,
		-0.855569, 0.431249, -0.286401,
		-0.409175, -0.902233, -0.136207,
		34.051308, 34.226791, 45.412254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828014, 34.921398, 46.066925>,  <34.337730, 34.858353, 45.507599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828014, 34.921398, 46.066925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794498, 34.537270, 45.960514>,  <33.774387, 34.306793, 45.896667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794498, 34.537270, 45.960514>,  <33.828014, 34.921398, 46.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794498, 34.537270, 45.960514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478995, -0.195280, 0.855821,
		-0.873809, 0.199136, -0.443625,
		-0.083793, -0.960318, -0.266023,
		33.769360, 34.249176, 45.880707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128094, 34.772205, 46.142849>,  <33.828014, 34.921398, 46.066925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128094, 34.772205, 46.142849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327606, 34.425533, 46.146492>,  <33.447315, 34.217529, 46.148678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327606, 34.425533, 46.146492>,  <33.128094, 34.772205, 46.142849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327606, 34.425533, 46.146492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451931, -0.251099, 0.855984,
		-0.739578, -0.431063, -0.516923,
		0.498782, -0.866680, 0.009103,
		33.477242, 34.165531, 46.149223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658379, 34.192562, 46.339413>,  <33.128094, 34.772205, 46.142849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658379, 34.192562, 46.339413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032547, 34.066063, 46.402634>,  <33.257046, 33.990162, 46.440567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032547, 34.066063, 46.402634>,  <32.658379, 34.192562, 46.339413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032547, 34.066063, 46.402634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239092, -0.236549, 0.941743,
		-0.260443, -0.918710, -0.296885,
		0.935417, -0.316253, 0.158049,
		33.313171, 33.971188, 46.450050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633080, 33.713085, 46.895603>,  <32.658379, 34.192562, 46.339413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633080, 33.713085, 46.895603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013889, 33.834721, 46.909367>,  <33.242374, 33.907703, 46.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013889, 33.834721, 46.909367>,  <32.633080, 33.713085, 46.895603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013889, 33.834721, 46.909367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010554, -0.079735, 0.996760,
		0.305848, -0.949300, -0.072700,
		0.952022, 0.304090, 0.034406,
		33.299496, 33.925949, 46.919689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968357, 33.200394, 47.312126>,  <32.633080, 33.713085, 46.895603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968357, 33.200394, 47.312126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209263, 33.519463, 47.324791>,  <33.353806, 33.710903, 47.332390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209263, 33.519463, 47.324791>,  <32.968357, 33.200394, 47.312126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209263, 33.519463, 47.324791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105281, -0.118677, 0.987336,
		0.791324, -0.591304, -0.155454,
		0.602264, 0.797668, 0.031659,
		33.389942, 33.758762, 47.334290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506790, 33.003628, 47.696674>,  <32.968357, 33.200394, 47.312126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506790, 33.003628, 47.696674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563198, 33.399628, 47.694897>,  <33.597042, 33.637226, 47.693829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563198, 33.399628, 47.694897>,  <33.506790, 33.003628, 47.696674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563198, 33.399628, 47.694897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213514, -0.026029, 0.976593,
		0.966708, -0.138667, -0.215049,
		0.141018, 0.989997, -0.004445,
		33.605503, 33.696629, 47.693562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055786, 33.105839, 48.156712>,  <33.506790, 33.003628, 47.696674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055786, 33.105839, 48.156712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885632, 33.466694, 48.127892>,  <33.783539, 33.683208, 48.110600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885632, 33.466694, 48.127892>,  <34.055786, 33.105839, 48.156712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885632, 33.466694, 48.127892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032429, 0.064364, 0.997399,
		0.904431, 0.426616, 0.001876,
		-0.425386, 0.902140, -0.072047,
		33.758015, 33.737335, 48.106277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425316, 33.607697, 48.565392>,  <34.055786, 33.105839, 48.156712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425316, 33.607697, 48.565392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060997, 33.763168, 48.509708>,  <33.842407, 33.856453, 48.476299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060997, 33.763168, 48.509708>,  <34.425316, 33.607697, 48.565392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060997, 33.763168, 48.509708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048656, 0.233781, 0.971071,
		0.409983, 0.891220, -0.194015,
		-0.910795, 0.388683, -0.139209,
		33.787758, 33.879772, 48.467945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361481, 34.357742, 48.872795>,  <34.425316, 33.607697, 48.565392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361481, 34.357742, 48.872795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998852, 34.188942, 48.870537>,  <33.781273, 34.087662, 48.869183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998852, 34.188942, 48.870537>,  <34.361481, 34.357742, 48.872795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998852, 34.188942, 48.870537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064015, 0.124281, 0.990180,
		-0.417158, 0.898036, -0.139685,
		-0.906577, -0.422003, -0.005643,
		33.726879, 34.062340, 48.868843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161892, 34.568085, 49.437531>,  <34.361481, 34.357742, 48.872795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161892, 34.568085, 49.437531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858662, 34.318863, 49.360462>,  <33.676723, 34.169331, 49.314220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858662, 34.318863, 49.360462>,  <34.161892, 34.568085, 49.437531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858662, 34.318863, 49.360462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145245, -0.126712, 0.981248,
		-0.635787, 0.771844, 0.005561,
		-0.758076, -0.623057, -0.192668,
		33.631237, 34.131947, 49.302662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686993, 34.852901, 49.770996>,  <34.161892, 34.568085, 49.437531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686993, 34.852901, 49.770996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592659, 34.466843, 49.725609>,  <33.536060, 34.235207, 49.698376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592659, 34.466843, 49.725609>,  <33.686993, 34.852901, 49.770996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592659, 34.466843, 49.725609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219841, -0.060750, 0.973642,
		-0.946601, 0.254560, -0.197852,
		-0.235831, -0.965147, -0.113469,
		33.521908, 34.177299, 49.691566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169693, 34.841660, 50.229034>,  <33.686993, 34.852901, 49.770996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169693, 34.841660, 50.229034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268436, 34.457214, 50.179523>,  <33.327682, 34.226547, 50.149818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268436, 34.457214, 50.179523>,  <33.169693, 34.841660, 50.229034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268436, 34.457214, 50.179523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346790, -0.206889, 0.914841,
		-0.904874, -0.182913, -0.384377,
		0.246860, -0.961113, -0.123776,
		33.342495, 34.168880, 50.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671871, 34.426807, 50.609245>,  <33.169693, 34.841660, 50.229034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671871, 34.426807, 50.609245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976376, 34.174511, 50.549057>,  <33.159081, 34.023132, 50.512943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976376, 34.174511, 50.549057>,  <32.671871, 34.426807, 50.609245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976376, 34.174511, 50.549057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243538, -0.493170, 0.835148,
		-0.600971, -0.599122, -0.529043,
		0.761264, -0.630742, -0.150472,
		33.204754, 33.985287, 50.503914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441555, 33.595486, 50.427895>,  <32.671871, 34.426807, 50.609245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441555, 33.595486, 50.427895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764156, 33.708557, 50.635601>,  <32.957718, 33.776402, 50.760223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764156, 33.708557, 50.635601>,  <32.441555, 33.595486, 50.427895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764156, 33.708557, 50.635601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295041, -0.568673, 0.767830,
		0.512343, -0.772465, -0.375236,
		0.806508, 0.282682, 0.519265,
		33.006107, 33.793362, 50.791382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913845, 32.976555, 50.493969>,  <32.441555, 33.595486, 50.427895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913845, 32.976555, 50.493969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977448, 33.252476, 50.776497>,  <33.015610, 33.418030, 50.946014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977448, 33.252476, 50.776497>,  <32.913845, 32.976555, 50.493969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977448, 33.252476, 50.776497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160928, -0.687747, 0.707888,
		0.974073, -0.226226, 0.001652,
		0.159007, 0.689801, 0.706323,
		33.025150, 33.459415, 50.988392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389286, 32.764961, 51.070019>,  <32.913845, 32.976555, 50.493969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389286, 32.764961, 51.070019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113716, 33.015587, 51.215786>,  <32.948376, 33.165962, 51.303246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113716, 33.015587, 51.215786>,  <33.389286, 32.764961, 51.070019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113716, 33.015587, 51.215786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189757, -0.641129, 0.743604,
		0.699555, 0.443136, 0.560584,
		-0.688924, 0.626566, 0.364416,
		32.907040, 33.203556, 51.325111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760658, 33.138283, 51.615707>,  <33.389286, 32.764961, 51.070019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760658, 33.138283, 51.615707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944557, 32.846478, 51.818264>,  <34.054897, 32.671394, 51.939800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944557, 32.846478, 51.818264>,  <33.760658, 33.138283, 51.615707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944557, 32.846478, 51.818264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887793, 0.363907, -0.281772,
		0.021276, 0.579120, 0.814965,
		0.459752, -0.729514, 0.506396,
		34.082481, 32.627625, 51.970184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296539, 33.462227, 52.044445>,  <33.760658, 33.138283, 51.615707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296539, 33.462227, 52.044445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372227, 33.085094, 51.934708>,  <34.417637, 32.858814, 51.868866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372227, 33.085094, 51.934708>,  <34.296539, 33.462227, 52.044445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372227, 33.085094, 51.934708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940027, 0.254678, -0.226909,
		0.283807, -0.214959, 0.934476,
		0.189215, -0.942832, -0.274347,
		34.428989, 32.802246, 51.852402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933044, 33.222958, 52.447063>,  <34.296539, 33.462227, 52.044445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933044, 33.222958, 52.447063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856926, 33.050896, 52.094074>,  <34.811256, 32.947659, 51.882282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856926, 33.050896, 52.094074>,  <34.933044, 33.222958, 52.447063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856926, 33.050896, 52.094074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970819, 0.051174, -0.234290,
		0.145940, -0.901305, 0.407861,
		-0.190295, -0.430152, -0.882472,
		34.799839, 32.921852, 51.829334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414383, 32.632320, 52.294926>,  <34.933044, 33.222958, 52.447063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414383, 32.632320, 52.294926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297962, 32.790874, 51.946632>,  <35.228111, 32.886005, 51.737656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297962, 32.790874, 51.946632>,  <35.414383, 32.632320, 52.294926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297962, 32.790874, 51.946632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949191, 0.233501, -0.210981,
		0.119687, -0.887896, -0.444202,
		-0.291051, 0.396381, -0.870730,
		35.210648, 32.909790, 51.685413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747849, 32.210976, 51.878838>,  <35.414383, 32.632320, 52.294926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747849, 32.210976, 51.878838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690006, 32.588272, 51.759243>,  <35.655300, 32.814648, 51.687485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690006, 32.588272, 51.759243>,  <35.747849, 32.210976, 51.878838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690006, 32.588272, 51.759243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986121, 0.162288, 0.035051,
		0.081583, -0.289770, -0.953613,
		-0.144604, 0.943237, -0.298988,
		35.646626, 32.871243, 51.669548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776150, 32.422993, 51.236732>,  <35.747849, 32.210976, 51.878838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776150, 32.422993, 51.236732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603600, 32.129959, 51.447346>,  <35.500069, 31.954138, 51.573715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603600, 32.129959, 51.447346>,  <35.776150, 32.422993, 51.236732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603600, 32.129959, 51.447346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242315, -0.468100, -0.849803,
		0.869024, -0.494167, 0.024409,
		-0.431371, -0.732585, 0.526535,
		35.474190, 31.910183, 51.605305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020683, 31.798067, 50.937088>,  <35.776150, 32.422993, 51.236732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020683, 31.798067, 50.937088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642242, 31.788961, 51.066315>,  <35.415176, 31.783499, 51.143852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642242, 31.788961, 51.066315>,  <36.020683, 31.798067, 50.937088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642242, 31.788961, 51.066315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307150, -0.253320, -0.917327,
		0.102723, -0.967115, 0.232674,
		-0.946101, -0.022765, 0.323071,
		35.358414, 31.782133, 51.163235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803673, 31.205462, 50.792751>,  <36.020683, 31.798067, 50.937088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803673, 31.205462, 50.792751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497204, 31.461454, 50.816093>,  <35.313324, 31.615049, 50.830097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497204, 31.461454, 50.816093>,  <35.803673, 31.205462, 50.792751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497204, 31.461454, 50.816093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290610, -0.264056, -0.919685,
		-0.573173, -0.721594, 0.388297,
		-0.766171, 0.639982, 0.058353,
		35.267353, 31.653448, 50.833599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152340, 30.821344, 50.587128>,  <35.803673, 31.205462, 50.792751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152340, 30.821344, 50.587128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134140, 31.213697, 50.511440>,  <35.123219, 31.449108, 50.466030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134140, 31.213697, 50.511440>,  <35.152340, 30.821344, 50.587128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134140, 31.213697, 50.511440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368074, -0.192547, -0.909641,
		-0.928683, 0.028256, 0.369798,
		-0.045500, 0.980881, -0.189216,
		35.120491, 31.507961, 50.454674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471600, 30.880842, 50.255856>,  <35.152340, 30.821344, 50.587128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471600, 30.880842, 50.255856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681244, 31.206066, 50.154472>,  <34.807030, 31.401201, 50.093643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681244, 31.206066, 50.154472>,  <34.471600, 30.880842, 50.255856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681244, 31.206066, 50.154472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371973, -0.049180, -0.926940,
		-0.766124, 0.580097, 0.276661,
		0.524109, 0.813061, -0.253458,
		34.838478, 31.449986, 50.078434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089127, 31.205008, 49.694965>,  <34.471600, 30.880842, 50.255856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089127, 31.205008, 49.694965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420708, 31.427120, 49.668140>,  <34.619656, 31.560389, 49.652046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420708, 31.427120, 49.668140>,  <34.089127, 31.205008, 49.694965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420708, 31.427120, 49.668140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180371, 0.151898, -0.971799,
		-0.529435, 0.817673, 0.226074,
		0.828954, 0.555281, -0.067065,
		34.669395, 31.593704, 49.648022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905777, 31.761564, 49.300709>,  <34.089127, 31.205008, 49.694965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905777, 31.761564, 49.300709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304115, 31.766712, 49.264637>,  <34.543118, 31.769800, 49.242996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304115, 31.766712, 49.264637>,  <33.905777, 31.761564, 49.300709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304115, 31.766712, 49.264637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089896, -0.021033, -0.995729,
		-0.014711, 0.999696, -0.019788,
		0.995843, 0.012869, -0.090178,
		34.602867, 31.770573, 49.237583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052864, 32.291550, 48.798630>,  <33.905777, 31.761564, 49.300709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052864, 32.291550, 48.798630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361370, 32.036976, 48.802624>,  <34.546474, 31.884232, 48.805019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361370, 32.036976, 48.802624>,  <34.052864, 32.291550, 48.798630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361370, 32.036976, 48.802624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084454, -0.117864, -0.989432,
		0.630885, 0.762272, -0.144654,
		0.771266, -0.636435, 0.009982,
		34.592751, 31.846045, 48.805618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488678, 32.521713, 48.313442>,  <34.052864, 32.291550, 48.798630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488678, 32.521713, 48.313442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614487, 32.144970, 48.360744>,  <34.689972, 31.918924, 48.389126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614487, 32.144970, 48.360744>,  <34.488678, 32.521713, 48.313442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614487, 32.144970, 48.360744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296704, -0.215880, -0.930249,
		0.901688, 0.257499, -0.347352,
		0.314525, -0.941855, 0.118255,
		34.708843, 31.862413, 48.396221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996593, 32.405796, 47.825901>,  <34.488678, 32.521713, 48.313442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996593, 32.405796, 47.825901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895523, 32.028282, 47.911156>,  <34.834881, 31.801775, 47.962307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895523, 32.028282, 47.911156>,  <34.996593, 32.405796, 47.825901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895523, 32.028282, 47.911156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104446, -0.192390, -0.975744,
		0.961896, -0.268812, -0.049962,
		-0.252680, -0.943783, 0.213135,
		34.819717, 31.745148, 47.975098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562740, 31.947422, 47.527588>,  <34.996593, 32.405796, 47.825901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562740, 31.947422, 47.527588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221024, 31.743568, 47.568504>,  <35.015995, 31.621256, 47.593056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221024, 31.743568, 47.568504>,  <35.562740, 31.947422, 47.527588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221024, 31.743568, 47.568504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032677, -0.249060, -0.967937,
		0.518772, -0.823554, 0.229422,
		-0.854288, -0.509635, 0.102294,
		34.964737, 31.590677, 47.599194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699680, 31.280645, 47.210991>,  <35.562740, 31.947422, 47.527588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699680, 31.280645, 47.210991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300987, 31.310850, 47.222427>,  <35.061771, 31.328972, 47.229290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300987, 31.310850, 47.222427>,  <35.699680, 31.280645, 47.210991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300987, 31.310850, 47.222427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049687, -0.294536, -0.954348,
		-0.063641, -0.952653, 0.297326,
		-0.996735, 0.075509, 0.028590,
		35.001968, 31.333504, 47.231003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452347, 30.621271, 46.914383>,  <35.699680, 31.280645, 47.210991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452347, 30.621271, 46.914383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134769, 30.863350, 46.891102>,  <34.944221, 31.008598, 46.877132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134769, 30.863350, 46.891102>,  <35.452347, 30.621271, 46.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134769, 30.863350, 46.891102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113593, -0.241697, -0.963680,
		-0.597285, -0.758497, 0.260640,
		-0.793944, 0.605198, -0.058202,
		34.896587, 31.044909, 46.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015060, 30.198032, 46.455540>,  <35.452347, 30.621271, 46.914383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015060, 30.198032, 46.455540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890087, 30.574261, 46.402298>,  <34.815102, 30.799997, 46.370354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890087, 30.574261, 46.402298>,  <35.015060, 30.198032, 46.455540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890087, 30.574261, 46.402298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359185, -0.246684, -0.900074,
		-0.879416, -0.233404, 0.414910,
		-0.312432, 0.940569, -0.133103,
		34.796356, 30.856432, 46.362366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458721, 30.143015, 45.861488>,  <35.015060, 30.198032, 46.455540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458721, 30.143015, 45.861488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520672, 30.534533, 45.915123>,  <34.557842, 30.769444, 45.947304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520672, 30.534533, 45.915123>,  <34.458721, 30.143015, 45.861488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520672, 30.534533, 45.915123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289139, 0.174692, -0.941213,
		-0.944676, 0.107000, 0.310062,
		0.154875, 0.978792, 0.134090,
		34.567135, 30.828171, 45.955349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989567, 30.388680, 45.485336>,  <34.458721, 30.143015, 45.861488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989567, 30.388680, 45.485336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249912, 30.687307, 45.540489>,  <34.406120, 30.866484, 45.573582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249912, 30.687307, 45.540489>,  <33.989567, 30.388680, 45.485336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249912, 30.687307, 45.540489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178138, 0.326722, -0.928181,
		-0.738001, 0.579556, 0.345644,
		0.650862, 0.746571, 0.137881,
		34.445171, 30.911278, 45.581852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604935, 30.912031, 45.241894>,  <33.989567, 30.388680, 45.485336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604935, 30.912031, 45.241894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993088, 31.008659, 45.240944>,  <34.225979, 31.066637, 45.240376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993088, 31.008659, 45.240944>,  <33.604935, 30.912031, 45.241894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993088, 31.008659, 45.240944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079616, 0.310510, -0.947230,
		-0.228086, 0.919362, 0.320546,
		0.970380, 0.241570, -0.002372,
		34.284203, 31.081131, 45.240231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607082, 31.609409, 44.958462>,  <33.604935, 30.912031, 45.241894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607082, 31.609409, 44.958462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955929, 31.421980, 44.902115>,  <34.165237, 31.309523, 44.868305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955929, 31.421980, 44.902115>,  <33.607082, 31.609409, 44.958462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955929, 31.421980, 44.902115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021424, 0.251063, -0.967734,
		0.488822, 0.846998, 0.208918,
		0.872120, -0.468574, -0.140872,
		34.217564, 31.281408, 44.859852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923801, 32.028118, 44.470440>,  <33.607082, 31.609409, 44.958462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923801, 32.028118, 44.470440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080742, 31.661467, 44.439854>,  <34.174908, 31.441475, 44.421501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080742, 31.661467, 44.439854>,  <33.923801, 32.028118, 44.470440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080742, 31.661467, 44.439854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020123, 0.074556, -0.997014,
		0.919594, 0.392722, 0.010807,
		0.392355, -0.916630, -0.076464,
		34.198448, 31.386478, 44.416916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529305, 32.173523, 44.087025>,  <33.923801, 32.028118, 44.470440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529305, 32.173523, 44.087025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499336, 31.776585, 44.047756>,  <34.481354, 31.538422, 44.024193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499336, 31.776585, 44.047756>,  <34.529305, 32.173523, 44.087025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499336, 31.776585, 44.047756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075577, 0.092516, -0.992839,
		0.994321, -0.081807, 0.068066,
		-0.074924, -0.992345, -0.098173,
		34.476860, 31.478882, 44.018303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037964, 31.868017, 43.636265>,  <34.529305, 32.173523, 44.087025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037964, 31.868017, 43.636265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725723, 31.618008, 43.634884>,  <34.538380, 31.468002, 43.634056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725723, 31.618008, 43.634884>,  <35.037964, 31.868017, 43.636265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725723, 31.618008, 43.634884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026536, -0.027623, -0.999266,
		0.624470, -0.780117, 0.038148,
		-0.780598, -0.625023, -0.003452,
		34.491543, 31.430500, 43.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284462, 31.330217, 43.201340>,  <35.037964, 31.868017, 43.636265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284462, 31.330217, 43.201340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885986, 31.295349, 43.201107>,  <34.646900, 31.274427, 43.200966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885986, 31.295349, 43.201107>,  <35.284462, 31.330217, 43.201340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885986, 31.295349, 43.201107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000887, -0.003458, -0.999994,
		0.087167, -0.996188, 0.003522,
		-0.996193, -0.087170, -0.000583,
		34.587128, 31.269197, 43.200932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088531, 30.803789, 42.747913>,  <35.284462, 31.330217, 43.201340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088531, 30.803789, 42.747913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759071, 31.029177, 42.773514>,  <34.561394, 31.164410, 42.788876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759071, 31.029177, 42.773514>,  <35.088531, 30.803789, 42.747913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759071, 31.029177, 42.773514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066741, 0.015758, -0.997646,
		-0.563150, -0.825987, 0.024628,
		-0.823655, 0.563468, 0.064001,
		34.511974, 31.198217, 42.792713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642876, 30.406782, 42.192772>,  <35.088531, 30.803789, 42.747913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642876, 30.406782, 42.192772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508080, 30.774136, 42.275734>,  <34.427204, 30.994547, 42.325512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508080, 30.774136, 42.275734>,  <34.642876, 30.406782, 42.192772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508080, 30.774136, 42.275734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279953, 0.112584, -0.953389,
		-0.898925, -0.379342, 0.219164,
		-0.336986, 0.918382, 0.207402,
		34.406982, 31.049650, 42.337955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130856, 30.460630, 41.721310>,  <34.642876, 30.406782, 42.192772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130856, 30.460630, 41.721310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178032, 30.837418, 41.847031>,  <34.206337, 31.063490, 41.922462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178032, 30.837418, 41.847031>,  <34.130856, 30.460630, 41.721310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178032, 30.837418, 41.847031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136012, 0.328853, -0.934535,
		-0.983662, 0.067473, 0.166905,
		0.117943, 0.941968, 0.314303,
		34.213413, 31.120008, 41.941322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545506, 30.849449, 41.562054>,  <34.130856, 30.460630, 41.721310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545506, 30.849449, 41.562054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857380, 31.098782, 41.585861>,  <34.044506, 31.248381, 41.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857380, 31.098782, 41.585861>,  <33.545506, 30.849449, 41.562054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857380, 31.098782, 41.585861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135330, 0.260548, -0.955929,
		-0.611369, 0.737273, 0.287502,
		0.779689, 0.623333, 0.059516,
		34.091286, 31.285782, 41.603718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318325, 31.500265, 41.292652>,  <33.545506, 30.849449, 41.562054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318325, 31.500265, 41.292652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718254, 31.495451, 41.286774>,  <33.958210, 31.492563, 41.283249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718254, 31.495451, 41.286774>,  <33.318325, 31.500265, 41.292652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718254, 31.495451, 41.286774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008322, 0.417755, -0.908521,
		0.017070, 0.908480, 0.417580,
		0.999820, -0.012033, -0.014692,
		34.018200, 31.491840, 41.282368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550385, 32.111855, 40.887398>,  <33.318325, 31.500265, 41.292652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550385, 32.111855, 40.887398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888218, 31.898367, 40.904526>,  <34.090916, 31.770275, 40.914803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888218, 31.898367, 40.904526>,  <33.550385, 32.111855, 40.887398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888218, 31.898367, 40.904526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224210, 0.279903, -0.933480,
		0.486227, 0.797998, 0.356065,
		0.844579, -0.533716, 0.042822,
		34.141590, 31.738253, 40.917374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024193, 32.533382, 40.708015>,  <33.550385, 32.111855, 40.887398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024193, 32.533382, 40.708015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142807, 32.157894, 40.637733>,  <34.213974, 31.932602, 40.595566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142807, 32.157894, 40.637733>,  <34.024193, 32.533382, 40.708015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142807, 32.157894, 40.637733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221095, 0.246460, -0.943597,
		0.929078, 0.240959, 0.280630,
		0.296532, -0.938721, -0.175706,
		34.231766, 31.876278, 40.585022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580479, 32.612572, 40.284203>,  <34.024193, 32.533382, 40.708015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580479, 32.612572, 40.284203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481953, 32.229568, 40.224201>,  <34.422836, 31.999765, 40.188202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481953, 32.229568, 40.224201>,  <34.580479, 32.612572, 40.284203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481953, 32.229568, 40.224201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169114, 0.109935, -0.979446,
		0.954322, -0.266618, 0.134850,
		-0.246313, -0.957512, -0.150002,
		34.408058, 31.942314, 40.179199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100952, 32.370525, 39.810959>,  <34.580479, 32.612572, 40.284203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100952, 32.370525, 39.810959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781746, 32.129940, 39.795952>,  <34.590221, 31.985588, 39.786949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781746, 32.129940, 39.795952>,  <35.100952, 32.370525, 39.810959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781746, 32.129940, 39.795952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080654, -0.044906, -0.995730,
		0.597213, -0.797635, 0.084346,
		-0.798017, -0.601466, -0.037514,
		34.542339, 31.949501, 39.784698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266373, 31.956638, 39.297760>,  <35.100952, 32.370525, 39.810959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266373, 31.956638, 39.297760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884888, 31.838696, 39.321381>,  <34.655994, 31.767929, 39.335552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884888, 31.838696, 39.321381>,  <35.266373, 31.956638, 39.297760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884888, 31.838696, 39.321381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023829, -0.121665, -0.992285,
		0.299769, -0.947764, 0.109008,
		-0.953714, -0.294859, 0.059056,
		34.598774, 31.750238, 39.339096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289822, 31.374796, 38.884140>,  <35.266373, 31.956638, 39.297760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289822, 31.374796, 38.884140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912682, 31.500929, 38.927219>,  <34.686398, 31.576609, 38.953068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912682, 31.500929, 38.927219>,  <35.289822, 31.374796, 38.884140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912682, 31.500929, 38.927219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112577, 0.002766, -0.993639,
		-0.313624, -0.948977, 0.032892,
		-0.942850, 0.315332, 0.107700,
		34.629826, 31.595528, 38.959530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833530, 30.966284, 38.464951>,  <35.289822, 31.374796, 38.884140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833530, 30.966284, 38.464951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628696, 31.306112, 38.515549>,  <34.505795, 31.510010, 38.545910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628696, 31.306112, 38.515549>,  <34.833530, 30.966284, 38.464951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628696, 31.306112, 38.515549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091491, 0.092483, -0.991502,
		-0.854049, -0.519305, 0.030369,
		-0.512083, 0.849570, 0.126497,
		34.475071, 31.560984, 38.553497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407452, 31.018969, 37.893936>,  <34.833530, 30.966284, 38.464951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407452, 31.018969, 37.893936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351566, 31.396215, 38.014606>,  <34.318035, 31.622564, 38.087009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351566, 31.396215, 38.014606>,  <34.407452, 31.018969, 37.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351566, 31.396215, 38.014606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227802, 0.265878, -0.936704,
		-0.963632, -0.199594, 0.177697,
		-0.139715, 0.943118, 0.301677,
		34.309650, 31.679152, 38.105110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749546, 31.221035, 37.724522>,  <34.407452, 31.018969, 37.893936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749546, 31.221035, 37.724522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996010, 31.535788, 37.738140>,  <34.143890, 31.724640, 37.746311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996010, 31.535788, 37.738140>,  <33.749546, 31.221035, 37.724522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996010, 31.535788, 37.738140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167913, 0.173469, -0.970419,
		-0.769511, 0.592221, 0.239013,
		0.616164, 0.786882, 0.034045,
		34.180859, 31.771852, 37.748352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410332, 31.784100, 37.231693>,  <33.749546, 31.221035, 37.724522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410332, 31.784100, 37.231693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797813, 31.872168, 37.277538>,  <34.030304, 31.925009, 37.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797813, 31.872168, 37.277538>,  <33.410332, 31.784100, 37.231693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797813, 31.872168, 37.277538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036184, 0.331557, -0.942741,
		-0.245566, 0.917385, 0.313214,
		0.968704, 0.220172, 0.114614,
		34.088425, 31.938219, 37.311924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449581, 32.470348, 36.917953>,  <33.410332, 31.784100, 37.231693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449581, 32.470348, 36.917953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829208, 32.344452, 36.923782>,  <34.056984, 32.268913, 36.927280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829208, 32.344452, 36.923782>,  <33.449581, 32.470348, 36.917953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829208, 32.344452, 36.923782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179761, 0.502899, -0.845446,
		0.258764, 0.805004, 0.533862,
		0.949067, -0.314739, 0.014576,
		34.113930, 32.250031, 36.928154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902435, 33.074650, 36.777645>,  <33.449581, 32.470348, 36.917953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902435, 33.074650, 36.777645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155170, 32.775463, 36.696335>,  <34.306812, 32.595951, 36.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155170, 32.775463, 36.696335>,  <33.902435, 33.074650, 36.777645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155170, 32.775463, 36.696335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435681, 0.559628, -0.704981,
		0.641061, 0.356874, 0.679471,
		0.631841, -0.747968, -0.203272,
		34.344723, 32.551071, 36.635353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534218, 33.331024, 36.759190>,  <33.902435, 33.074650, 36.777645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534218, 33.331024, 36.759190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568436, 33.006020, 36.528534>,  <34.588966, 32.811016, 36.390141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568436, 33.006020, 36.528534>,  <34.534218, 33.331024, 36.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568436, 33.006020, 36.528534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413556, 0.555505, -0.721378,
		0.906452, -0.176765, 0.383536,
		0.085541, -0.812508, -0.576640,
		34.594097, 32.762268, 36.355541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089539, 33.458145, 36.341209>,  <34.534218, 33.331024, 36.759190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089539, 33.458145, 36.341209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917015, 33.157593, 36.141445>,  <34.813503, 32.977261, 36.021587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917015, 33.157593, 36.141445>,  <35.089539, 33.458145, 36.341209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917015, 33.157593, 36.141445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131118, 0.495461, -0.858677,
		0.892628, -0.435833, -0.115175,
		-0.431305, -0.751378, -0.499408,
		34.787624, 32.932178, 35.991623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561054, 33.300709, 35.825756>,  <35.089539, 33.458145, 36.341209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561054, 33.300709, 35.825756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219208, 33.131016, 35.705982>,  <35.014099, 33.029202, 35.634117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219208, 33.131016, 35.705982>,  <35.561054, 33.300709, 35.825756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219208, 33.131016, 35.705982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122999, 0.394855, -0.910473,
		0.504485, -0.814933, -0.285269,
		-0.854614, -0.424232, -0.299434,
		34.962822, 33.003746, 35.616154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145973, 32.861809, 35.982540>,  <35.561054, 33.300709, 35.825756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145973, 32.861809, 35.982540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461525, 32.724926, 35.778358>,  <36.650856, 32.642796, 35.655849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461525, 32.724926, 35.778358>,  <36.145973, 32.861809, 35.982540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461525, 32.724926, 35.778358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551289, 0.027003, 0.833877,
		-0.271574, -0.939237, 0.209957,
		0.788878, -0.342206, -0.510457,
		36.698189, 32.622265, 35.625221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479462, 32.200260, 36.253372>,  <36.145973, 32.861809, 35.982540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479462, 32.200260, 36.253372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741440, 32.452969, 36.087524>,  <36.898628, 32.604595, 35.988014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741440, 32.452969, 36.087524>,  <36.479462, 32.200260, 36.253372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741440, 32.452969, 36.087524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433064, 0.135843, 0.891068,
		0.619277, -0.763157, -0.184629,
		0.654944, 0.631773, -0.414621,
		36.937923, 32.642502, 35.963139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181568, 31.973598, 36.348583>,  <36.479462, 32.200260, 36.253372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181568, 31.973598, 36.348583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246536, 32.364609, 36.294823>,  <37.285515, 32.599216, 36.262566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246536, 32.364609, 36.294823>,  <37.181568, 31.973598, 36.348583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246536, 32.364609, 36.294823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478167, 0.041178, 0.877303,
		0.863121, -0.206756, -0.460733,
		0.162416, 0.977526, -0.134405,
		37.295261, 32.657867, 36.254501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974937, 31.992428, 36.404575>,  <37.181568, 31.973598, 36.348583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974937, 31.992428, 36.404575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803707, 32.348854, 36.464912>,  <37.700970, 32.562710, 36.501114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803707, 32.348854, 36.464912>,  <37.974937, 31.992428, 36.404575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803707, 32.348854, 36.464912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475146, 0.079931, 0.876269,
		0.768756, 0.446781, -0.457603,
		-0.428077, 0.891065, 0.150839,
		37.675285, 32.616173, 36.510162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598461, 32.429871, 36.614796>,  <37.974937, 31.992428, 36.404575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598461, 32.429871, 36.614796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254692, 32.597733, 36.731613>,  <38.048431, 32.698448, 36.801704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254692, 32.597733, 36.731613>,  <38.598461, 32.429871, 36.614796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254692, 32.597733, 36.731613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393615, 0.178534, 0.901772,
		0.326290, 0.889954, -0.318616,
		-0.859420, 0.419651, 0.292045,
		37.996864, 32.723629, 36.819225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771442, 33.040947, 37.081032>,  <38.598461, 32.429871, 36.614796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771442, 33.040947, 37.081032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391922, 32.947365, 37.165920>,  <38.164207, 32.891216, 37.216854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391922, 32.947365, 37.165920>,  <38.771442, 33.040947, 37.081032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391922, 32.947365, 37.165920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219452, -0.004992, 0.975610,
		-0.227187, 0.972235, 0.056078,
		-0.948803, -0.233953, 0.212225,
		38.107281, 32.877178, 37.229588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513664, 33.476017, 37.587124>,  <38.771442, 33.040947, 37.081032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513664, 33.476017, 37.587124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260551, 33.172546, 37.649082>,  <38.108685, 32.990463, 37.686256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260551, 33.172546, 37.649082>,  <38.513664, 33.476017, 37.587124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260551, 33.172546, 37.649082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111274, 0.108874, 0.987808,
		-0.766296, 0.642300, 0.015528,
		-0.632778, -0.758681, 0.154900,
		38.070717, 32.944942, 37.695553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100655, 33.733189, 38.120007>,  <38.513664, 33.476017, 37.587124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100655, 33.733189, 38.120007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056236, 33.336277, 38.097939>,  <38.029587, 33.098129, 38.084698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056236, 33.336277, 38.097939>,  <38.100655, 33.733189, 38.120007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056236, 33.336277, 38.097939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100795, -0.066473, 0.992684,
		-0.988691, 0.104671, 0.107398,
		-0.111044, -0.992283, -0.055171,
		38.022923, 33.038593, 38.081387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542015, 33.567497, 38.655624>,  <38.100655, 33.733189, 38.120007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542015, 33.567497, 38.655624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707645, 33.216553, 38.558647>,  <37.807026, 33.005985, 38.500462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707645, 33.216553, 38.558647>,  <37.542015, 33.567497, 38.655624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707645, 33.216553, 38.558647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071978, -0.233959, 0.969579,
		-0.907391, -0.418932, -0.033727,
		0.414078, -0.877359, -0.242446,
		37.831867, 32.953346, 38.485912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110603, 33.022785, 38.908604>,  <37.542015, 33.567497, 38.655624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110603, 33.022785, 38.908604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470055, 32.851978, 38.868366>,  <37.685726, 32.749493, 38.844223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470055, 32.851978, 38.868366>,  <37.110603, 33.022785, 38.908604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470055, 32.851978, 38.868366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005496, -0.218314, 0.975863,
		-0.438672, -0.877493, -0.193836,
		0.898631, -0.427018, -0.100591,
		37.739643, 32.723873, 38.838188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065331, 32.526711, 39.366680>,  <37.110603, 33.022785, 38.908604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065331, 32.526711, 39.366680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454208, 32.598083, 39.306015>,  <37.687534, 32.640907, 39.269615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454208, 32.598083, 39.306015>,  <37.065331, 32.526711, 39.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454208, 32.598083, 39.306015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182447, -0.171144, 0.968206,
		0.146802, -0.968954, -0.198939,
		0.972194, 0.178431, -0.151658,
		37.745865, 32.651611, 39.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331284, 31.976168, 39.691116>,  <37.065331, 32.526711, 39.366680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331284, 31.976168, 39.691116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612095, 32.260647, 39.676399>,  <37.780582, 32.431335, 39.667568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612095, 32.260647, 39.676399>,  <37.331284, 31.976168, 39.691116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612095, 32.260647, 39.676399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232346, -0.179904, 0.955850,
		0.673179, -0.679584, -0.291542,
		0.702030, 0.711196, -0.036791,
		37.822704, 32.474007, 39.665363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016788, 31.658821, 39.861549>,  <37.331284, 31.976168, 39.691116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016788, 31.658821, 39.861549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026737, 32.055687, 39.910530>,  <38.032707, 32.293804, 39.939919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026737, 32.055687, 39.910530>,  <38.016788, 31.658821, 39.861549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026737, 32.055687, 39.910530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438371, -0.120911, 0.890624,
		0.898450, 0.031529, -0.437942,
		0.024872, 0.992162, 0.122454,
		38.034199, 32.353336, 39.947266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749992, 31.754784, 40.182484>,  <38.016788, 31.658821, 39.861549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749992, 31.754784, 40.182484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493771, 32.045254, 40.282375>,  <38.340038, 32.219536, 40.342308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493771, 32.045254, 40.282375>,  <38.749992, 31.754784, 40.182484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493771, 32.045254, 40.282375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266461, -0.094808, 0.959171,
		0.720204, 0.680939, -0.132769,
		-0.640550, 0.726177, 0.249725,
		38.301605, 32.263107, 40.357292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950550, 31.953632, 40.938580>,  <38.749992, 31.754784, 40.182484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950550, 31.953632, 40.938580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599655, 32.138584, 40.886948>,  <38.389118, 32.249557, 40.855968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599655, 32.138584, 40.886948>,  <38.950550, 31.953632, 40.938580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599655, 32.138584, 40.886948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113535, 0.061420, 0.991634,
		0.466441, 0.884551, -0.001383,
		-0.877236, 0.462382, -0.129077,
		38.336483, 32.277298, 40.848225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999775, 32.400032, 41.396366>,  <38.950550, 31.953632, 40.938580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999775, 32.400032, 41.396366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606647, 32.368317, 41.329685>,  <38.370773, 32.349289, 41.289677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606647, 32.368317, 41.329685>,  <38.999775, 32.400032, 41.396366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606647, 32.368317, 41.329685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168650, 0.018494, 0.985502,
		-0.075057, 0.996680, -0.031549,
		-0.982814, -0.079290, -0.166702,
		38.311802, 32.344528, 41.279675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693558, 32.764565, 41.976742>,  <38.999775, 32.400032, 41.396366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693558, 32.764565, 41.976742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367649, 32.580536, 41.835613>,  <38.172104, 32.470119, 41.750938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367649, 32.580536, 41.835613>,  <38.693558, 32.764565, 41.976742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367649, 32.580536, 41.835613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318397, -0.153500, 0.935447,
		-0.484533, 0.874511, -0.021419,
		-0.814771, -0.460075, -0.352817,
		38.123219, 32.442513, 41.729767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128372, 32.986092, 42.369415>,  <38.693558, 32.764565, 41.976742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128372, 32.986092, 42.369415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025352, 32.630024, 42.219070>,  <37.963543, 32.416386, 42.128864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025352, 32.630024, 42.219070>,  <38.128372, 32.986092, 42.369415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025352, 32.630024, 42.219070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396643, -0.257305, 0.881174,
		-0.881104, 0.376026, -0.286810,
		-0.257547, -0.890167, -0.375861,
		37.948090, 32.362972, 42.106312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433922, 32.898685, 42.360725>,  <38.128372, 32.986092, 42.369415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433922, 32.898685, 42.360725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607975, 32.538872, 42.376183>,  <37.712406, 32.322983, 42.385456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607975, 32.538872, 42.376183>,  <37.433922, 32.898685, 42.360725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607975, 32.538872, 42.376183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422902, -0.166306, 0.890784,
		-0.794867, -0.403951, -0.452781,
		0.435133, -0.899537, 0.038640,
		37.738514, 32.269012, 42.387775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863110, 32.444679, 42.616089>,  <37.433922, 32.898685, 42.360725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863110, 32.444679, 42.616089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179848, 32.214092, 42.696751>,  <37.369888, 32.075741, 42.745148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179848, 32.214092, 42.696751>,  <36.863110, 32.444679, 42.616089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179848, 32.214092, 42.696751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368510, -0.187692, 0.910479,
		-0.487017, -0.795268, -0.361058,
		0.791842, -0.576473, 0.201655,
		37.417400, 32.041149, 42.757248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542870, 31.931019, 42.900661>,  <36.863110, 32.444679, 42.616089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542870, 31.931019, 42.900661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928852, 31.886047, 42.995506>,  <37.160442, 31.859064, 43.052414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928852, 31.886047, 42.995506>,  <36.542870, 31.931019, 42.900661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928852, 31.886047, 42.995506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256092, -0.206298, 0.944382,
		-0.057257, -0.972009, -0.227860,
		0.964955, -0.112426, 0.237112,
		37.218338, 31.852318, 43.066639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629574, 31.219074, 43.310574>,  <36.542870, 31.931019, 42.900661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629574, 31.219074, 43.310574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919106, 31.479689, 43.401413>,  <37.092823, 31.636057, 43.455917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919106, 31.479689, 43.401413>,  <36.629574, 31.219074, 43.310574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919106, 31.479689, 43.401413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034567, -0.362968, 0.931160,
		0.689113, -0.666150, -0.285249,
		0.723829, 0.651535, 0.227100,
		37.136253, 31.675150, 43.469543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029587, 30.920666, 43.756390>,  <36.629574, 31.219074, 43.310574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029587, 30.920666, 43.756390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120522, 31.303795, 43.826694>,  <37.175083, 31.533672, 43.868877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120522, 31.303795, 43.826694>,  <37.029587, 30.920666, 43.756390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120522, 31.303795, 43.826694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038121, -0.189104, 0.981217,
		0.973069, -0.216369, -0.079504,
		0.227339, 0.957823, 0.175763,
		37.188725, 31.591141, 43.879425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564789, 30.933773, 44.265354>,  <37.029587, 30.920666, 43.756390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564789, 30.933773, 44.265354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380779, 31.288841, 44.273514>,  <37.270374, 31.501883, 44.278408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380779, 31.288841, 44.273514>,  <37.564789, 30.933773, 44.265354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380779, 31.288841, 44.273514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016259, -0.014550, 0.999762,
		0.887758, 0.460246, -0.007739,
		-0.460023, 0.887672, 0.020400,
		37.242771, 31.555143, 44.279633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917866, 31.258226, 44.843525>,  <37.564789, 30.933773, 44.265354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917866, 31.258226, 44.843525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578327, 31.461496, 44.785248>,  <37.374603, 31.583458, 44.750282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578327, 31.461496, 44.785248>,  <37.917866, 31.258226, 44.843525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578327, 31.461496, 44.785248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083184, 0.143762, 0.986110,
		0.522061, 0.849171, -0.079759,
		-0.848842, 0.508175, -0.145690,
		37.323673, 31.613949, 44.741539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084846, 31.909698, 45.201241>,  <37.917866, 31.258226, 44.843525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084846, 31.909698, 45.201241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690483, 31.929602, 45.137360>,  <37.453865, 31.941544, 45.099030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690483, 31.929602, 45.137360>,  <38.084846, 31.909698, 45.201241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690483, 31.929602, 45.137360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136110, 0.316375, 0.938819,
		0.097239, 0.947329, -0.305145,
		-0.985910, 0.049756, -0.159705,
		37.394711, 31.944529, 45.089447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878391, 32.594311, 45.318306>,  <38.084846, 31.909698, 45.201241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878391, 32.594311, 45.318306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530437, 32.398453, 45.342129>,  <37.321667, 32.280937, 45.356422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530437, 32.398453, 45.342129>,  <37.878391, 32.594311, 45.318306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530437, 32.398453, 45.342129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186241, 0.437860, 0.879541,
		-0.456741, 0.754008, -0.472080,
		-0.869886, -0.489644, 0.059561,
		37.269470, 32.251560, 45.359997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459179, 33.127060, 45.557327>,  <37.878391, 32.594311, 45.318306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459179, 33.127060, 45.557327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300327, 32.768570, 45.636391>,  <37.205017, 32.553474, 45.683830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300327, 32.768570, 45.636391>,  <37.459179, 33.127060, 45.557327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300327, 32.768570, 45.636391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130404, 0.268291, 0.954471,
		-0.908451, 0.353272, -0.223418,
		-0.397129, -0.896225, 0.197661,
		37.181187, 32.499702, 45.695690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864086, 33.241325, 45.941891>,  <37.459179, 33.127060, 45.557327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864086, 33.241325, 45.941891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940136, 32.857296, 46.023972>,  <36.985764, 32.626877, 46.073219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940136, 32.857296, 46.023972>,  <36.864086, 33.241325, 45.941891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940136, 32.857296, 46.023972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086515, 0.191822, 0.977609,
		-0.977941, -0.203619, -0.046591,
		0.190122, -0.960075, 0.205207,
		36.997173, 32.569275, 46.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381985, 33.024006, 46.409290>,  <36.864086, 33.241325, 45.941891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381985, 33.024006, 46.409290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663250, 32.745758, 46.468182>,  <36.832008, 32.578812, 46.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663250, 32.745758, 46.468182>,  <36.381985, 33.024006, 46.409290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663250, 32.745758, 46.468182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026714, 0.232764, 0.972166,
		-0.710525, -0.679660, 0.182254,
		0.703165, -0.695617, 0.147229,
		36.874199, 32.537071, 46.512352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150921, 32.512592, 46.974075>,  <36.381985, 33.024006, 46.409290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150921, 32.512592, 46.974075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549366, 32.479939, 46.960880>,  <36.788433, 32.460346, 46.952965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549366, 32.479939, 46.960880>,  <36.150921, 32.512592, 46.974075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549366, 32.479939, 46.960880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055413, 0.290120, 0.955385,
		-0.068423, -0.953502, 0.293517,
		0.996116, -0.081635, -0.032985,
		36.848202, 32.455448, 46.950985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267097, 32.215336, 47.581631>,  <36.150921, 32.512592, 46.974075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267097, 32.215336, 47.581631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632072, 32.338512, 47.473824>,  <36.851055, 32.412418, 47.409138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632072, 32.338512, 47.473824>,  <36.267097, 32.215336, 47.581631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632072, 32.338512, 47.473824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226393, 0.168798, 0.959298,
		0.340898, -0.936313, 0.084302,
		0.912434, 0.307937, -0.269518,
		36.905804, 32.430893, 47.392967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718449, 31.934185, 48.152576>,  <36.267097, 32.215336, 47.581631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718449, 31.934185, 48.152576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902439, 32.230713, 47.957081>,  <37.012833, 32.408630, 47.839783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902439, 32.230713, 47.957081>,  <36.718449, 31.934185, 48.152576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902439, 32.230713, 47.957081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364481, 0.344282, 0.865230,
		0.809676, -0.576122, -0.111835,
		0.459976, 0.741318, -0.488742,
		37.040432, 32.453110, 47.810459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468472, 31.902332, 48.292072>,  <36.718449, 31.934185, 48.152576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468472, 31.902332, 48.292072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386330, 32.283405, 48.202427>,  <37.337044, 32.512051, 48.148640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386330, 32.283405, 48.202427>,  <37.468472, 31.902332, 48.292072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386330, 32.283405, 48.202427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463289, 0.296339, 0.835192,
		0.862086, 0.067683, -0.502222,
		-0.205356, 0.952682, -0.224113,
		37.324722, 32.569210, 48.135193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144585, 32.230793, 48.319782>,  <37.468472, 31.902332, 48.292072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144585, 32.230793, 48.319782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871834, 32.517578, 48.377762>,  <37.708183, 32.689648, 48.412548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871834, 32.517578, 48.377762>,  <38.144585, 32.230793, 48.319782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871834, 32.517578, 48.377762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422765, 0.224582, 0.877970,
		0.596920, 0.659945, -0.456244,
		-0.681876, 0.716963, 0.144944,
		37.667271, 32.732666, 48.421246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480705, 32.871998, 48.537006>,  <38.144585, 32.230793, 48.319782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480705, 32.871998, 48.537006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105122, 32.905640, 48.670444>,  <37.879772, 32.925823, 48.750507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105122, 32.905640, 48.670444>,  <38.480705, 32.871998, 48.537006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105122, 32.905640, 48.670444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343213, 0.296125, 0.891356,
		-0.023820, 0.951439, -0.306914,
		-0.938956, 0.084104, 0.333600,
		37.823437, 32.930870, 48.770523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550377, 33.418514, 49.005726>,  <38.480705, 32.871998, 48.537006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550377, 33.418514, 49.005726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190395, 33.263512, 49.085655>,  <37.974407, 33.170509, 49.133614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190395, 33.263512, 49.085655>,  <38.550377, 33.418514, 49.005726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190395, 33.263512, 49.085655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117137, 0.226567, 0.966926,
		-0.419964, 0.893591, -0.158507,
		-0.899949, -0.387508, 0.199822,
		37.920410, 33.147259, 49.145603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044357, 33.935928, 49.364918>,  <38.550377, 33.418514, 49.005726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044357, 33.935928, 49.364918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007080, 33.547810, 49.454220>,  <37.984715, 33.314938, 49.507801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007080, 33.547810, 49.454220>,  <38.044357, 33.935928, 49.364918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007080, 33.547810, 49.454220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028976, 0.221493, 0.974731,
		-0.995227, 0.097304, 0.007474,
		-0.093189, -0.970295, 0.223256,
		37.979122, 33.256721, 49.521198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762424, 34.352852, 50.023460>,  <38.044357, 33.935928, 49.364918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762424, 34.352852, 50.023460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850235, 34.735867, 50.098232>,  <37.902920, 34.965675, 50.143097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850235, 34.735867, 50.098232>,  <37.762424, 34.352852, 50.023460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850235, 34.735867, 50.098232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052057, 0.179833, -0.982319,
		-0.974217, 0.225372, -0.010368,
		0.219523, 0.957532, 0.186928,
		37.916092, 35.023125, 50.154312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294659, 34.908745, 49.758373>,  <37.762424, 34.352852, 50.023460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294659, 34.908745, 49.758373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654076, 35.082088, 49.786156>,  <37.869724, 35.186096, 49.802826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654076, 35.082088, 49.786156>,  <37.294659, 34.908745, 49.758373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654076, 35.082088, 49.786156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017646, 0.122460, -0.992317,
		-0.438536, 0.892862, 0.102388,
		0.898540, 0.433360, 0.069459,
		37.923637, 35.212097, 49.806992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278320, 35.376488, 49.199982>,  <37.294659, 34.908745, 49.758373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278320, 35.376488, 49.199982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668812, 35.393986, 49.284897>,  <37.903107, 35.404484, 49.335846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668812, 35.393986, 49.284897>,  <37.278320, 35.376488, 49.199982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668812, 35.393986, 49.284897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197663, 0.222140, -0.954769,
		-0.088927, 0.974033, 0.208212,
		0.976228, 0.043749, 0.212285,
		37.961681, 35.407112, 49.348583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492638, 36.040409, 48.953835>,  <37.278320, 35.376488, 49.199982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492638, 36.040409, 48.953835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816944, 35.808807, 48.988285>,  <38.011528, 35.669846, 49.008957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816944, 35.808807, 48.988285>,  <37.492638, 36.040409, 48.953835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816944, 35.808807, 48.988285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203933, 0.141468, -0.968710,
		0.548701, 0.802959, 0.232775,
		0.810764, -0.579003, 0.086126,
		38.060173, 35.635105, 49.014122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947754, 36.364151, 48.495201>,  <37.492638, 36.040409, 48.953835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947754, 36.364151, 48.495201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125500, 36.016403, 48.581676>,  <38.232147, 35.807755, 48.633560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125500, 36.016403, 48.581676>,  <37.947754, 36.364151, 48.495201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125500, 36.016403, 48.581676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223848, -0.125914, -0.966456,
		0.867427, 0.477855, 0.138654,
		0.444368, -0.869367, 0.216188,
		38.258812, 35.755592, 48.646534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645042, 36.415867, 48.333843>,  <37.947754, 36.364151, 48.495201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645042, 36.415867, 48.333843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519779, 36.037926, 48.295517>,  <38.444622, 35.811161, 48.272522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519779, 36.037926, 48.295517>,  <38.645042, 36.415867, 48.333843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519779, 36.037926, 48.295517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376169, -0.030767, -0.926040,
		0.872027, -0.326036, 0.365060,
		-0.313154, -0.944857, -0.095815,
		38.425835, 35.754467, 48.266773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181107, 36.053020, 47.946049>,  <38.645042, 36.415867, 48.333843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181107, 36.053020, 47.946049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866589, 35.809170, 47.905857>,  <38.677876, 35.662861, 47.881744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866589, 35.809170, 47.905857>,  <39.181107, 36.053020, 47.946049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866589, 35.809170, 47.905857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226076, -0.132537, -0.965051,
		0.575002, -0.781532, 0.242035,
		-0.786297, -0.609625, -0.100476,
		38.630699, 35.626282, 47.875713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401470, 35.513340, 47.425709>,  <39.181107, 36.053020, 47.946049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401470, 35.513340, 47.425709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003117, 35.549580, 47.426380>,  <38.764103, 35.571323, 47.426785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003117, 35.549580, 47.426380>,  <39.401470, 35.513340, 47.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003117, 35.549580, 47.426380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025000, -0.256898, -0.966115,
		-0.087099, -0.962182, 0.258106,
		-0.995886, 0.090600, 0.001679,
		38.704350, 35.576759, 47.426884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222816, 34.891785, 47.024975>,  <39.401470, 35.513340, 47.425709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222816, 34.891785, 47.024975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886906, 35.107895, 47.046471>,  <38.685360, 35.237560, 47.059368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886906, 35.107895, 47.046471>,  <39.222816, 34.891785, 47.024975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886906, 35.107895, 47.046471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128429, -0.101500, -0.986511,
		-0.527530, -0.835347, 0.154623,
		-0.839773, 0.540272, 0.053739,
		38.634975, 35.269978, 47.062592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676563, 34.485371, 46.725777>,  <39.222816, 34.891785, 47.024975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676563, 34.485371, 46.725777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543213, 34.861740, 46.702057>,  <38.463203, 35.087563, 46.687824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543213, 34.861740, 46.702057>,  <38.676563, 34.485371, 46.725777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543213, 34.861740, 46.702057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325842, -0.174014, -0.929272,
		-0.884697, -0.290474, 0.364606,
		-0.333376, 0.940928, -0.059301,
		38.443199, 35.144020, 46.684265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084286, 34.326603, 46.404602>,  <38.676563, 34.485371, 46.725777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084286, 34.326603, 46.404602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159447, 34.715225, 46.346962>,  <38.204544, 34.948399, 46.312378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159447, 34.715225, 46.346962>,  <38.084286, 34.326603, 46.404602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159447, 34.715225, 46.346962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417953, -0.053680, -0.906882,
		-0.888825, 0.230630, 0.395979,
		0.187898, 0.971560, -0.144105,
		38.215816, 35.006695, 46.303730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490734, 34.633049, 46.115551>,  <38.084286, 34.326603, 46.404602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490734, 34.633049, 46.115551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760529, 34.917629, 46.036655>,  <37.922405, 35.088379, 45.989319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760529, 34.917629, 46.036655>,  <37.490734, 34.633049, 46.115551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760529, 34.917629, 46.036655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311988, 0.032543, -0.949529,
		-0.669125, 0.701981, 0.243914,
		0.674489, 0.711451, -0.197235,
		37.962875, 35.131065, 45.977486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140656, 35.168171, 45.864227>,  <37.490734, 34.633049, 46.115551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140656, 35.168171, 45.864227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517380, 35.190125, 45.731575>,  <37.743416, 35.203297, 45.651981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517380, 35.190125, 45.731575>,  <37.140656, 35.168171, 45.864227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517380, 35.190125, 45.731575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324651, -0.107283, -0.939730,
		-0.087156, 0.992713, -0.083222,
		0.941810, 0.054885, -0.331635,
		37.799923, 35.206589, 45.632084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081230, 35.531212, 45.186665>,  <37.140656, 35.168171, 45.864227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081230, 35.531212, 45.186665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452171, 35.384621, 45.156429>,  <37.674736, 35.296665, 45.138287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452171, 35.384621, 45.156429>,  <37.081230, 35.531212, 45.186665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452171, 35.384621, 45.156429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116130, -0.089843, -0.989162,
		0.355718, 0.926078, -0.125875,
		0.927350, -0.366481, -0.075587,
		37.730377, 35.274677, 45.133755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440968, 36.008545, 44.712635>,  <37.081230, 35.531212, 45.186665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440968, 36.008545, 44.712635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647972, 35.666275, 44.713192>,  <37.772175, 35.460915, 44.713524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647972, 35.666275, 44.713192>,  <37.440968, 36.008545, 44.712635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647972, 35.666275, 44.713192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006322, -0.005448, -0.999965,
		0.855654, 0.517483, -0.008229,
		0.517510, -0.855676, 0.001390,
		37.803226, 35.409573, 44.713608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126373, 36.158264, 44.224125>,  <37.440968, 36.008545, 44.712635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126373, 36.158264, 44.224125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053047, 35.765530, 44.243694>,  <38.009052, 35.529888, 44.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053047, 35.765530, 44.243694>,  <38.126373, 36.158264, 44.224125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053047, 35.765530, 44.243694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106298, -0.069277, -0.991918,
		0.977290, -0.176631, 0.117067,
		-0.183314, -0.981836, 0.048928,
		37.998055, 35.470978, 44.258373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754498, 35.767914, 43.959625>,  <38.126373, 36.158264, 44.224125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754498, 35.767914, 43.959625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465511, 35.494717, 43.916607>,  <38.292118, 35.330799, 43.890797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465511, 35.494717, 43.916607>,  <38.754498, 35.767914, 43.959625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465511, 35.494717, 43.916607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391423, -0.275814, -0.877904,
		0.569939, -0.676350, 0.466605,
		-0.722467, -0.682991, -0.107541,
		38.248772, 35.289818, 43.884346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083412, 35.120029, 43.712677>,  <38.754498, 35.767914, 43.959625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083412, 35.120029, 43.712677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696911, 35.095768, 43.612530>,  <38.465012, 35.081211, 43.552441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696911, 35.095768, 43.612530>,  <39.083412, 35.120029, 43.712677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696911, 35.095768, 43.612530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252048, -0.423418, -0.870166,
		-0.053233, -0.903902, 0.424415,
		-0.966250, -0.060651, -0.250367,
		38.407036, 35.077572, 43.537418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076042, 34.452629, 43.309563>,  <39.083412, 35.120029, 43.712677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076042, 34.452629, 43.309563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742744, 34.663124, 43.241711>,  <38.542767, 34.789421, 43.201000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742744, 34.663124, 43.241711>,  <39.076042, 34.452629, 43.309563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742744, 34.663124, 43.241711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086990, -0.178208, -0.980140,
		-0.546012, -0.831457, 0.102714,
		-0.833249, 0.526234, -0.169632,
		38.492771, 34.820995, 43.190823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729927, 33.997601, 42.876015>,  <39.076042, 34.452629, 43.309563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729927, 33.997601, 42.876015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573082, 34.360306, 42.814022>,  <38.478973, 34.577930, 42.776825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573082, 34.360306, 42.814022>,  <38.729927, 33.997601, 42.876015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573082, 34.360306, 42.814022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018017, -0.176012, -0.984223,
		-0.919739, -0.383138, 0.085355,
		-0.392117, 0.906766, -0.154982,
		38.455448, 34.632336, 42.767529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197483, 33.916275, 42.313122>,  <38.729927, 33.997601, 42.876015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197483, 33.916275, 42.313122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267685, 34.309792, 42.298393>,  <38.309807, 34.545902, 42.289555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267685, 34.309792, 42.298393>,  <38.197483, 33.916275, 42.313122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267685, 34.309792, 42.298393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009811, -0.039150, -0.999185,
		-0.984429, 0.175002, -0.016523,
		0.175506, 0.983790, -0.036824,
		38.320335, 34.604927, 42.287346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783409, 34.201782, 41.765953>,  <38.197483, 33.916275, 42.313122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783409, 34.201782, 41.765953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070339, 34.473049, 41.829861>,  <38.242496, 34.635811, 41.868206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070339, 34.473049, 41.829861>,  <37.783409, 34.201782, 41.765953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070339, 34.473049, 41.829861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252534, -0.039347, -0.966788,
		-0.649358, 0.733853, -0.199485,
		0.717329, 0.678168, 0.159773,
		38.285538, 34.676498, 41.877792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735001, 34.615162, 41.237312>,  <37.783409, 34.201782, 41.765953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735001, 34.615162, 41.237312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107643, 34.681789, 41.366535>,  <38.331230, 34.721764, 41.444069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107643, 34.681789, 41.366535>,  <37.735001, 34.615162, 41.237312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107643, 34.681789, 41.366535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292043, 0.186084, -0.938128,
		-0.216375, 0.968312, 0.124713,
		0.931608, 0.166566, 0.323053,
		38.387127, 34.731758, 41.463451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921925, 35.176468, 40.831928>,  <37.735001, 34.615162, 41.237312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921925, 35.176468, 40.831928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255451, 34.981827, 40.936214>,  <38.455566, 34.865040, 40.998787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255451, 34.981827, 40.936214>,  <37.921925, 35.176468, 40.831928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255451, 34.981827, 40.936214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384127, 0.172213, -0.907077,
		0.396490, 0.856480, 0.330512,
		0.833812, -0.486605, 0.260716,
		38.505596, 34.835846, 41.014431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401215, 35.668732, 40.676716>,  <37.921925, 35.176468, 40.831928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401215, 35.668732, 40.676716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582718, 35.312290, 40.674446>,  <38.691620, 35.098427, 40.673084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582718, 35.312290, 40.674446>,  <38.401215, 35.668732, 40.676716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582718, 35.312290, 40.674446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579756, 0.300045, -0.757533,
		0.676745, 0.340447, 0.652772,
		0.453761, -0.891105, -0.005678,
		38.718845, 35.044960, 40.672741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134716, 35.818638, 40.570766>,  <38.401215, 35.668732, 40.676716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134716, 35.818638, 40.570766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120186, 35.427319, 40.489162>,  <39.111465, 35.192528, 40.440201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120186, 35.427319, 40.489162>,  <39.134716, 35.818638, 40.570766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120186, 35.427319, 40.489162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684118, 0.124468, -0.718673,
		0.728466, -0.165678, 0.664746,
		-0.036328, -0.978294, -0.204014,
		39.109287, 35.133831, 40.427959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840839, 35.626781, 40.389584>,  <39.134716, 35.818638, 40.570766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840839, 35.626781, 40.389584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625916, 35.331760, 40.225967>,  <39.496960, 35.154747, 40.127800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625916, 35.331760, 40.225967>,  <39.840839, 35.626781, 40.389584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625916, 35.331760, 40.225967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632107, -0.031099, -0.774257,
		0.558337, -0.674570, 0.482924,
		-0.537309, -0.737556, -0.409037,
		39.464722, 35.110493, 40.103256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329250, 35.276783, 40.117435>,  <39.840839, 35.626781, 40.389584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329250, 35.276783, 40.117435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008514, 35.127441, 39.930820>,  <39.816074, 35.037834, 39.818851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008514, 35.127441, 39.930820>,  <40.329250, 35.276783, 40.117435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008514, 35.127441, 39.930820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503938, -0.002968, -0.863735,
		0.321097, -0.927683, 0.190529,
		-0.801837, -0.373358, -0.466541,
		39.767963, 35.015434, 39.790859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574642, 34.653419, 39.817245>,  <40.329250, 35.276783, 40.117435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574642, 34.653419, 39.817245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269341, 34.784988, 39.594803>,  <40.086159, 34.863930, 39.461338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269341, 34.784988, 39.594803>,  <40.574642, 34.653419, 39.817245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269341, 34.784988, 39.594803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529318, -0.175237, -0.830129,
		-0.370500, -0.927955, -0.040356,
		-0.763251, 0.328924, -0.556109,
		40.040363, 34.883667, 39.427971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700214, 34.296955, 39.143326>,  <40.574642, 34.653419, 39.817245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700214, 34.296955, 39.143326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431568, 34.579552, 39.054070>,  <40.270378, 34.749111, 39.000515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431568, 34.579552, 39.054070>,  <40.700214, 34.296955, 39.143326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431568, 34.579552, 39.054070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438820, 0.136648, -0.888124,
		-0.596963, -0.694400, -0.401800,
		-0.671619, 0.706495, -0.223143,
		40.230083, 34.791500, 38.987125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472347, 34.167057, 38.429787>,  <40.700214, 34.296955, 39.143326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472347, 34.167057, 38.429787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371670, 34.550285, 38.484562>,  <40.311264, 34.780224, 38.517426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371670, 34.550285, 38.484562>,  <40.472347, 34.167057, 38.429787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371670, 34.550285, 38.484562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327268, 0.217409, -0.919581,
		-0.910795, -0.186636, -0.368266,
		-0.251692, 0.958071, 0.136935,
		40.296162, 34.837708, 38.525642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207558, 34.388145, 37.750500>,  <40.472347, 34.167057, 38.429787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207558, 34.388145, 37.750500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264568, 34.730885, 37.948689>,  <40.298775, 34.936527, 38.067604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264568, 34.730885, 37.948689>,  <40.207558, 34.388145, 37.750500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264568, 34.730885, 37.948689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369917, 0.418198, -0.829621,
		-0.918067, 0.301527, -0.257360,
		0.142525, 0.856850, 0.495474,
		40.307327, 34.987938, 38.097332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070217, 34.883282, 37.351746>,  <40.207558, 34.388145, 37.750500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070217, 34.883282, 37.351746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308411, 35.065506, 37.616432>,  <40.451328, 35.174839, 37.775242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308411, 35.065506, 37.616432>,  <40.070217, 34.883282, 37.351746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308411, 35.065506, 37.616432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379784, 0.566190, -0.731569,
		-0.707928, 0.686946, 0.164144,
		0.595485, 0.455559, 0.661713,
		40.487057, 35.202175, 37.814945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989578, 35.638531, 37.254612>,  <40.070217, 34.883282, 37.351746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989578, 35.638531, 37.254612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333485, 35.566235, 37.445667>,  <40.539829, 35.522858, 37.560299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333485, 35.566235, 37.445667>,  <39.989578, 35.638531, 37.254612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333485, 35.566235, 37.445667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451211, 0.706910, -0.544690,
		-0.239197, 0.683820, 0.689329,
		0.859764, -0.180745, 0.477638,
		40.591415, 35.512012, 37.588959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217838, 36.292793, 37.349670>,  <39.989578, 35.638531, 37.254612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217838, 36.292793, 37.349670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534218, 36.058651, 37.420948>,  <40.724045, 35.918167, 37.463715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534218, 36.058651, 37.420948>,  <40.217838, 36.292793, 37.349670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534218, 36.058651, 37.420948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599369, 0.682617, -0.418081,
		0.123083, 0.437490, 0.890760,
		0.790954, -0.585353, 0.178199,
		40.771503, 35.883045, 37.474407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601002, 36.723270, 37.677425>,  <40.217838, 36.292793, 37.349670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601002, 36.723270, 37.677425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849953, 36.452026, 37.521061>,  <40.999325, 36.289280, 37.427242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849953, 36.452026, 37.521061>,  <40.601002, 36.723270, 37.677425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849953, 36.452026, 37.521061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460437, 0.721063, -0.517751,
		0.632962, 0.142249, 0.761002,
		0.622380, -0.678110, -0.390908,
		41.036667, 36.248592, 37.403790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297234, 37.010906, 37.667717>,  <40.601002, 36.723270, 37.677425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297234, 37.010906, 37.667717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309875, 36.719444, 37.394058>,  <41.317459, 36.544567, 37.229862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309875, 36.719444, 37.394058>,  <41.297234, 37.010906, 37.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309875, 36.719444, 37.394058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451703, 0.621017, -0.640549,
		0.891609, -0.288791, 0.348760,
		0.031601, -0.728655, -0.684151,
		41.319355, 36.500847, 37.188812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941021, 37.011681, 37.522522>,  <41.297234, 37.010906, 37.667717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941021, 37.011681, 37.522522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761669, 36.840149, 37.208817>,  <41.654060, 36.737228, 37.020596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761669, 36.840149, 37.208817>,  <41.941021, 37.011681, 37.522522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761669, 36.840149, 37.208817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554903, 0.554308, -0.620343,
		0.700744, -0.713335, -0.010578,
		-0.448376, -0.428831, -0.784259,
		41.627155, 36.711498, 36.973537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509254, 36.916817, 37.120998>,  <41.941021, 37.011681, 37.522522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509254, 36.916817, 37.120998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183586, 36.896805, 36.889614>,  <41.988186, 36.884796, 36.750782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183586, 36.896805, 36.889614>,  <42.509254, 36.916817, 37.120998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183586, 36.896805, 36.889614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409227, 0.657313, -0.632830,
		0.411893, -0.751955, -0.514692,
		-0.814173, -0.050033, -0.578463,
		41.939335, 36.881794, 36.716076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805443, 36.684555, 36.541359>,  <42.509254, 36.916817, 37.120998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805443, 36.684555, 36.541359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460209, 36.842224, 36.415047>,  <42.253067, 36.936825, 36.339260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460209, 36.842224, 36.415047>,  <42.805443, 36.684555, 36.541359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460209, 36.842224, 36.415047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487191, 0.484911, -0.726296,
		-0.133159, -0.780700, -0.610555,
		-0.863084, 0.394169, -0.315779,
		42.201283, 36.960476, 36.320312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758778, 36.596855, 35.819241>,  <42.805443, 36.684555, 36.541359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758778, 36.596855, 35.819241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549610, 36.919407, 35.929737>,  <42.424110, 37.112938, 35.996033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549610, 36.919407, 35.929737>,  <42.758778, 36.596855, 35.819241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549610, 36.919407, 35.929737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528290, 0.560928, -0.637393,
		-0.668932, -0.187370, -0.719321,
		-0.522916, 0.806382, 0.276237,
		42.392735, 37.161320, 36.012608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482231, 36.850929, 35.186382>,  <42.758778, 36.596855, 35.819241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482231, 36.850929, 35.186382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547363, 37.097198, 35.494781>,  <42.586445, 37.244961, 35.679821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547363, 37.097198, 35.494781>,  <42.482231, 36.850929, 35.186382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547363, 37.097198, 35.494781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562194, 0.584265, -0.585297,
		-0.810816, 0.528753, -0.250992,
		0.162832, 0.615674, 0.770993,
		42.596214, 37.281902, 35.726078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351593, 37.571430, 35.086514>,  <42.482231, 36.850929, 35.186382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351593, 37.571430, 35.086514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679104, 37.542519, 35.314331>,  <42.875610, 37.525173, 35.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679104, 37.542519, 35.314331>,  <42.351593, 37.571430, 35.086514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679104, 37.542519, 35.314331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513567, 0.535644, -0.670324,
		-0.256622, 0.841345, 0.475693,
		0.818776, -0.072280, 0.569545,
		42.924736, 37.520836, 35.485195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661983, 37.680473, 34.682812>,  <42.351593, 37.571430, 35.086514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661983, 37.680473, 34.682812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750114, 37.293999, 34.629234>,  <41.802994, 37.062115, 34.597088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750114, 37.293999, 34.629234>,  <41.661983, 37.680473, 34.682812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750114, 37.293999, 34.629234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803150, -0.101771, -0.587020,
		0.553539, 0.236913, -0.798415,
		0.220328, -0.966186, -0.133942,
		41.816212, 37.004143, 34.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223392, 37.613113, 34.217823>,  <41.661983, 37.680473, 34.682812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223392, 37.613113, 34.217823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331020, 37.244656, 34.330315>,  <41.395596, 37.023579, 34.397808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331020, 37.244656, 34.330315>,  <41.223392, 37.613113, 34.217823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331020, 37.244656, 34.330315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816007, -0.373139, -0.441473,
		0.511599, -0.110696, -0.852064,
		0.269069, -0.921148, 0.281226,
		41.411739, 36.968311, 34.414684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354042, 37.275890, 33.609089>,  <41.223392, 37.613113, 34.217823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354042, 37.275890, 33.609089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224937, 37.041626, 33.906498>,  <41.147472, 36.901070, 34.084946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224937, 37.041626, 33.906498>,  <41.354042, 37.275890, 33.609089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224937, 37.041626, 33.906498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827011, -0.207535, -0.522477,
		0.460300, -0.783540, -0.417360,
		-0.322764, -0.585657, 0.743524,
		41.128109, 36.865929, 34.129555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036686, 37.147335, 33.395199>,  <41.354042, 37.275890, 33.609089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036686, 37.147335, 33.395199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736290, 36.978996, 33.191666>,  <41.556053, 36.877995, 33.069546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736290, 36.978996, 33.191666>,  <42.036686, 37.147335, 33.395199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736290, 36.978996, 33.191666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302871, 0.904282, -0.300903,
		0.586759, -0.071865, -0.806567,
		-0.750988, -0.420844, -0.508830,
		41.510994, 36.852745, 33.039017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726006, 37.210941, 33.329578>,  <42.036686, 37.147335, 33.395199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726006, 37.210941, 33.329578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964977, 37.007694, 33.577740>,  <43.108360, 36.885746, 33.726635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964977, 37.007694, 33.577740>,  <42.726006, 37.210941, 33.329578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964977, 37.007694, 33.577740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314567, -0.860125, -0.401539,
		0.737650, 0.044733, -0.673699,
		0.597427, -0.508119, 0.620400,
		43.144207, 36.855259, 33.763859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093769, 36.765625, 32.956360>,  <42.726006, 37.210941, 33.329578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093769, 36.765625, 32.956360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128101, 36.590824, 33.314503>,  <43.148701, 36.485943, 33.529388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128101, 36.590824, 33.314503>,  <43.093769, 36.765625, 32.956360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128101, 36.590824, 33.314503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291018, -0.870478, -0.396959,
		0.952860, -0.226494, -0.201889,
		0.085831, -0.437000, 0.895357,
		43.153851, 36.459724, 33.583111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458614, 36.131008, 32.850151>,  <43.093769, 36.765625, 32.956360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458614, 36.131008, 32.850151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270309, 36.082191, 33.199661>,  <43.157326, 36.052902, 33.409367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270309, 36.082191, 33.199661>,  <43.458614, 36.131008, 32.850151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270309, 36.082191, 33.199661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232284, -0.938298, -0.256204,
		0.851133, -0.323576, 0.413365,
		-0.470761, -0.122046, 0.873778,
		43.129082, 36.045578, 33.461796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648628, 35.481834, 33.168571>,  <43.458614, 36.131008, 32.850151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648628, 35.481834, 33.168571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293346, 35.566544, 33.331661>,  <43.080177, 35.617371, 33.429516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293346, 35.566544, 33.331661>,  <43.648628, 35.481834, 33.168571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293346, 35.566544, 33.331661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286898, -0.948797, -0.132186,
		0.358857, -0.234385, 0.903485,
		-0.888206, 0.211772, 0.407727,
		43.026886, 35.630074, 33.453979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477753, 34.908653, 33.570786>,  <43.648628, 35.481834, 33.168571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477753, 34.908653, 33.570786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118298, 35.083736, 33.559093>,  <42.902622, 35.188786, 33.552078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118298, 35.083736, 33.559093>,  <43.477753, 34.908653, 33.570786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118298, 35.083736, 33.559093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437375, -0.899114, -0.017263,
		-0.033837, -0.002729, 0.999424,
		-0.898643, 0.437707, -0.029230,
		42.848705, 35.215050, 33.550323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059620, 34.500370, 34.077583>,  <43.477753, 34.908653, 33.570786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059620, 34.500370, 34.077583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796524, 34.679443, 33.835274>,  <42.638668, 34.786888, 33.689888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796524, 34.679443, 33.835274>,  <43.059620, 34.500370, 34.077583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796524, 34.679443, 33.835274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565223, -0.824928, 0.004065,
		-0.497902, 0.345073, 0.795624,
		-0.657736, 0.447681, -0.605777,
		42.599205, 34.813747, 33.653542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431099, 34.327415, 34.349579>,  <43.059620, 34.500370, 34.077583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431099, 34.327415, 34.349579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337627, 34.461628, 33.984543>,  <42.281544, 34.542156, 33.765522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337627, 34.461628, 33.984543>,  <42.431099, 34.327415, 34.349579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337627, 34.461628, 33.984543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676486, -0.730267, -0.095275,
		-0.698400, 0.595089, 0.397626,
		-0.233676, 0.335528, -0.912588,
		42.267525, 34.562286, 33.710766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740021, 34.360397, 34.330040>,  <42.431099, 34.327415, 34.349579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740021, 34.360397, 34.330040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851810, 34.340694, 33.946484>,  <41.918884, 34.328873, 33.716351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851810, 34.340694, 33.946484>,  <41.740021, 34.360397, 34.330040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851810, 34.340694, 33.946484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622872, -0.769324, -0.142023,
		-0.730700, 0.636957, -0.245688,
		0.279476, -0.049255, -0.958888,
		41.935654, 34.325916, 33.658817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237183, 34.083344, 34.067574>,  <41.740021, 34.360397, 34.330040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237183, 34.083344, 34.067574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495564, 34.034184, 33.766205>,  <41.650593, 34.004688, 33.585384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495564, 34.034184, 33.766205>,  <41.237183, 34.083344, 34.067574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495564, 34.034184, 33.766205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477992, -0.834643, -0.273669,
		-0.595202, 0.536905, -0.597886,
		0.645956, -0.122896, -0.753417,
		41.689350, 33.997314, 33.540180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845985, 34.145729, 33.495781>,  <41.237183, 34.083344, 34.067574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845985, 34.145729, 33.495781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161121, 33.929615, 33.377522>,  <41.350201, 33.799946, 33.306568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161121, 33.929615, 33.377522>,  <40.845985, 34.145729, 33.495781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161121, 33.929615, 33.377522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615659, -0.677895, -0.401775,
		0.016656, 0.498550, -0.866701,
		0.787837, -0.540284, -0.295646,
		41.397472, 33.767529, 33.288826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612743, 33.843857, 32.869743>,  <40.845985, 34.145729, 33.495781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612743, 33.843857, 32.869743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924381, 33.615917, 32.974266>,  <41.111366, 33.479153, 33.036980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924381, 33.615917, 32.974266>,  <40.612743, 33.843857, 32.869743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924381, 33.615917, 32.974266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449287, -0.798241, -0.401188,
		0.437203, 0.195162, -0.877932,
		0.779099, -0.569845, 0.261310,
		41.158112, 33.444965, 33.052658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796913, 33.477283, 32.197647>,  <40.612743, 33.843857, 32.869743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796913, 33.477283, 32.197647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954319, 33.264111, 32.497280>,  <41.048763, 33.136208, 32.677059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954319, 33.264111, 32.497280>,  <40.796913, 33.477283, 32.197647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954319, 33.264111, 32.497280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467937, -0.817487, -0.335783,
		0.791318, -0.218391, -0.571070,
		0.393510, -0.532936, 0.749086,
		41.072372, 33.104229, 32.722004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097851, 32.987530, 31.925354>,  <40.796913, 33.477283, 32.197647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097851, 32.987530, 31.925354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059082, 32.840385, 32.295280>,  <41.035820, 32.752098, 32.517235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059082, 32.840385, 32.295280>,  <41.097851, 32.987530, 31.925354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059082, 32.840385, 32.295280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341458, -0.860507, -0.378067,
		0.934886, -0.352430, -0.042204,
		-0.096925, -0.367860, 0.924816,
		41.030003, 32.730026, 32.572723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492435, 32.328911, 31.967581>,  <41.097851, 32.987530, 31.925354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492435, 32.328911, 31.967581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213604, 32.306087, 32.253468>,  <41.046303, 32.292393, 32.424999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213604, 32.306087, 32.253468>,  <41.492435, 32.328911, 31.967581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213604, 32.306087, 32.253468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271878, -0.901346, -0.337131,
		0.663447, -0.429324, 0.612797,
		-0.697080, -0.057063, 0.714719,
		41.004478, 32.288967, 32.467884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616264, 31.707903, 32.259594>,  <41.492435, 32.328911, 31.967581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616264, 31.707903, 32.259594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235023, 31.806765, 32.329472>,  <41.006279, 31.866081, 32.371399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235023, 31.806765, 32.329472>,  <41.616264, 31.707903, 32.259594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235023, 31.806765, 32.329472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296208, -0.880240, -0.370727,
		0.062144, -0.405085, 0.912165,
		-0.953099, 0.247152, 0.174692,
		40.949093, 31.880911, 32.381878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226513, 31.091764, 32.547504>,  <41.616264, 31.707903, 32.259594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226513, 31.091764, 32.547504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902958, 31.299324, 32.436905>,  <40.708824, 31.423859, 32.370544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902958, 31.299324, 32.436905>,  <41.226513, 31.091764, 32.547504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902958, 31.299324, 32.436905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459744, -0.851335, -0.252713,
		-0.366527, -0.077295, 0.927191,
		-0.808884, 0.518897, -0.276502,
		40.660294, 31.454992, 32.353954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654972, 30.662205, 32.661121>,  <41.226513, 31.091764, 32.547504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654972, 30.662205, 32.661121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513226, 30.924431, 32.394390>,  <40.428177, 31.081766, 32.234352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513226, 30.924431, 32.394390>,  <40.654972, 30.662205, 32.661121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513226, 30.924431, 32.394390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485680, -0.738408, -0.467835,
		-0.799086, 0.158078, 0.580063,
		-0.354368, 0.655565, -0.666827,
		40.406914, 31.121099, 32.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935749, 30.487402, 32.532623>,  <40.654972, 30.662205, 32.661121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935749, 30.487402, 32.532623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058323, 30.698202, 32.215546>,  <40.131866, 30.824682, 32.025299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058323, 30.698202, 32.215546>,  <39.935749, 30.487402, 32.532623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058323, 30.698202, 32.215546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369421, -0.701648, -0.609277,
		-0.877284, 0.479541, -0.020322,
		0.306432, 0.527001, -0.792698,
		40.150253, 30.856302, 31.977736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395981, 30.400002, 32.055660>,  <39.935749, 30.487402, 32.532623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395981, 30.400002, 32.055660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709156, 30.525873, 31.841002>,  <39.897060, 30.601397, 31.712206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709156, 30.525873, 31.841002>,  <39.395981, 30.400002, 32.055660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709156, 30.525873, 31.841002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358555, -0.476682, -0.802628,
		-0.508382, 0.820823, -0.260380,
		0.782934, 0.314681, -0.536647,
		39.944035, 30.620277, 31.680008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073002, 30.480579, 31.426208>,  <39.395981, 30.400002, 32.055660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073002, 30.480579, 31.426208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466213, 30.457096, 31.356695>,  <39.702141, 30.443007, 31.314987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466213, 30.457096, 31.356695>,  <39.073002, 30.480579, 31.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466213, 30.457096, 31.356695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182973, -0.380840, -0.906356,
		-0.012973, 0.922775, -0.385120,
		0.983032, -0.058708, -0.173783,
		39.761124, 30.439484, 31.304560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216663, 30.850718, 30.754353>,  <39.073002, 30.480579, 31.426208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216663, 30.850718, 30.754353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506279, 30.579773, 30.806435>,  <39.680050, 30.417206, 30.837685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506279, 30.579773, 30.806435>,  <39.216663, 30.850718, 30.754353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506279, 30.579773, 30.806435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038351, -0.228009, -0.972903,
		0.688693, 0.699425, -0.191064,
		0.724038, -0.677360, 0.130205,
		39.723492, 30.376566, 30.845495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847603, 31.030954, 30.339144>,  <39.216663, 30.850718, 30.754353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847603, 31.030954, 30.339144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741470, 30.649141, 30.393497>,  <39.677792, 30.420053, 30.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741470, 30.649141, 30.393497>,  <39.847603, 31.030954, 30.339144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741470, 30.649141, 30.393497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114651, -0.108700, -0.987441,
		0.957317, -0.277577, -0.080597,
		-0.265330, -0.954534, 0.135885,
		39.661873, 30.362782, 30.434263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087040, 30.539675, 29.730234>,  <39.847603, 31.030954, 30.339144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087040, 30.539675, 29.730234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786880, 30.353025, 29.917492>,  <39.606785, 30.241035, 30.029846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786880, 30.353025, 29.917492>,  <40.087040, 30.539675, 29.730234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786880, 30.353025, 29.917492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075416, -0.643192, -0.761982,
		0.656666, -0.607098, 0.447462,
		-0.750402, -0.466622, 0.468146,
		39.561760, 30.213039, 30.057936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185806, 29.776648, 29.720533>,  <40.087040, 30.539675, 29.730234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185806, 29.776648, 29.720533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794773, 29.853876, 29.754145>,  <39.560154, 29.900213, 29.774311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794773, 29.853876, 29.754145>,  <40.185806, 29.776648, 29.720533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794773, 29.853876, 29.754145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205244, -0.784598, -0.585048,
		-0.047026, -0.589178, 0.806634,
		-0.977581, 0.193069, 0.084029,
		39.501499, 29.911797, 29.779354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851826, 30.140614, 29.558626>,  <40.185806, 29.776648, 29.720533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851826, 30.140614, 29.558626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883602, 29.742022, 29.547935>,  <40.902668, 29.502867, 29.541521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883602, 29.742022, 29.547935>,  <40.851826, 30.140614, 29.558626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883602, 29.742022, 29.547935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996173, 0.078384, 0.038668,
		-0.036437, -0.029697, 0.998895,
		0.079445, -0.996481, -0.026727,
		40.907436, 29.443077, 29.539917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260300, 29.938839, 30.160429>,  <40.851826, 30.140614, 29.558626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260300, 29.938839, 30.160429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272434, 29.669550, 29.864902>,  <41.279716, 29.507977, 29.687586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272434, 29.669550, 29.864902>,  <41.260300, 29.938839, 30.160429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272434, 29.669550, 29.864902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994107, -0.056636, 0.092429,
		-0.104069, -0.737268, 0.667537,
		0.030338, -0.673222, -0.738818,
		41.281536, 29.467583, 29.643257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543919, 29.249302, 30.397146>,  <41.260300, 29.938839, 30.160429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543919, 29.249302, 30.397146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618412, 29.351152, 30.017570>,  <41.663109, 29.412262, 29.789825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618412, 29.351152, 30.017570>,  <41.543919, 29.249302, 30.397146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618412, 29.351152, 30.017570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981485, -0.092244, 0.167864,
		-0.044791, -0.962630, -0.267090,
		0.186229, 0.254626, -0.948939,
		41.674282, 29.427540, 29.732889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050713, 28.833946, 30.046280>,  <41.543919, 29.249302, 30.397146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050713, 28.833946, 30.046280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029968, 29.219465, 29.941662>,  <42.017521, 29.450777, 29.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029968, 29.219465, 29.941662>,  <42.050713, 28.833946, 30.046280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029968, 29.219465, 29.941662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967677, 0.113225, 0.225348,
		0.246803, -0.241401, -0.938517,
		-0.051865, 0.963797, -0.261543,
		42.014408, 29.508604, 29.863199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684402, 28.956640, 29.788713>,  <42.050713, 28.833946, 30.046280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684402, 28.956640, 29.788713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509491, 29.291214, 29.920870>,  <42.404545, 29.491959, 30.000164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509491, 29.291214, 29.920870>,  <42.684402, 28.956640, 29.788713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509491, 29.291214, 29.920870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815000, 0.213252, 0.538793,
		0.380209, 0.504874, -0.774947,
		-0.437282, 0.836436, 0.330392,
		42.378307, 29.542145, 30.019987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013199, 29.079491, 30.355476>,  <42.684402, 28.956640, 29.788713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013199, 29.079491, 30.355476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321655, 29.315056, 30.258711>,  <43.506729, 29.456394, 30.200651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321655, 29.315056, 30.258711>,  <43.013199, 29.079491, 30.355476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321655, 29.315056, 30.258711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126301, 0.513924, 0.848487,
		0.624012, -0.623749, 0.470688,
		0.771141, 0.588914, -0.241915,
		43.552998, 29.491730, 30.186136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607891, 29.192961, 30.890509>,  <43.013199, 29.079491, 30.355476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607891, 29.192961, 30.890509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574635, 29.526045, 30.671535>,  <43.554680, 29.725895, 30.540152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574635, 29.526045, 30.671535>,  <43.607891, 29.192961, 30.890509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574635, 29.526045, 30.671535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125145, 0.536260, 0.834724,
		0.988649, 0.137905, 0.059626,
		-0.083137, 0.832711, -0.547431,
		43.549694, 29.775858, 30.507307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008160, 29.727459, 31.200495>,  <43.607891, 29.192961, 30.890509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008160, 29.727459, 31.200495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690231, 29.891493, 31.021566>,  <43.499474, 29.989912, 30.914209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690231, 29.891493, 31.021566>,  <44.008160, 29.727459, 31.200495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690231, 29.891493, 31.021566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148846, 0.582866, 0.798819,
		0.588310, 0.701498, -0.402233,
		-0.794818, 0.410083, -0.447321,
		43.451786, 30.014517, 30.887369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227798, 30.437059, 31.102018>,  <44.008160, 29.727459, 31.200495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227798, 30.437059, 31.102018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836990, 30.476793, 31.026575>,  <43.602505, 30.500633, 30.981310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836990, 30.476793, 31.026575>,  <44.227798, 30.437059, 31.102018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836990, 30.476793, 31.026575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057311, 0.729803, 0.681251,
		0.205318, 0.676402, -0.707336,
		-0.977016, 0.099335, -0.188607,
		43.543884, 30.506594, 30.969994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048222, 31.110390, 30.971458>,  <44.227798, 30.437059, 31.102018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048222, 31.110390, 30.971458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723660, 30.922741, 31.110914>,  <43.528923, 30.810152, 31.194588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723660, 30.922741, 31.110914>,  <44.048222, 31.110390, 30.971458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723660, 30.922741, 31.110914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126539, 0.723333, 0.678805,
		-0.570625, 0.506668, -0.646277,
		-0.811403, -0.469122, 0.348639,
		43.480240, 30.782003, 31.215506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546093, 31.691820, 31.119873>,  <44.048222, 31.110390, 30.971458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546093, 31.691820, 31.119873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440548, 31.360332, 31.317295>,  <43.377220, 31.161440, 31.435749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440548, 31.360332, 31.317295>,  <43.546093, 31.691820, 31.119873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440548, 31.360332, 31.317295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154341, 0.541374, 0.826494,
		-0.952131, 0.141908, -0.270756,
		-0.263866, -0.828720, 0.493557,
		43.361389, 31.111717, 31.465363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830856, 31.771442, 31.454079>,  <43.546093, 31.691820, 31.119873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830856, 31.771442, 31.454079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066914, 31.511463, 31.645622>,  <43.208546, 31.355476, 31.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066914, 31.511463, 31.645622>,  <42.830856, 31.771442, 31.454079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066914, 31.511463, 31.645622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056250, 0.558613, 0.827519,
		-0.805339, -0.515288, 0.293100,
		0.590140, -0.649946, 0.478858,
		43.243958, 31.316479, 31.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688732, 31.922897, 32.132435>,  <42.830856, 31.771442, 31.454079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688732, 31.922897, 32.132435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978699, 31.653614, 32.190792>,  <43.152679, 31.492044, 32.225807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978699, 31.653614, 32.190792>,  <42.688732, 31.922897, 32.132435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978699, 31.653614, 32.190792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234907, 0.440707, 0.866369,
		-0.647545, -0.593773, 0.477618,
		0.724917, -0.673209, 0.145896,
		43.196175, 31.451651, 32.234562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761543, 31.944296, 32.846550>,  <42.688732, 31.922897, 32.132435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761543, 31.944296, 32.846550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076122, 31.720903, 32.741016>,  <43.264870, 31.586868, 32.677696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076122, 31.720903, 32.741016>,  <42.761543, 31.944296, 32.846550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076122, 31.720903, 32.741016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441406, 0.209390, 0.872534,
		-0.432050, -0.802655, 0.411191,
		0.786443, -0.558481, -0.263830,
		43.312054, 31.553360, 32.661869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936386, 31.515249, 33.415588>,  <42.761543, 31.944296, 32.846550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936386, 31.515249, 33.415588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270267, 31.564837, 33.200962>,  <43.470596, 31.594589, 33.072186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270267, 31.564837, 33.200962>,  <42.936386, 31.515249, 33.415588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270267, 31.564837, 33.200962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438543, 0.439703, 0.783799,
		0.333095, -0.889547, 0.312656,
		0.834702, 0.123966, -0.536568,
		43.520679, 31.602028, 33.039993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383942, 31.187872, 33.833160>,  <42.936386, 31.515249, 33.415588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383942, 31.187872, 33.833160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572041, 31.458059, 33.605965>,  <43.684898, 31.620173, 33.469646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572041, 31.458059, 33.605965>,  <43.383942, 31.187872, 33.833160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572041, 31.458059, 33.605965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521672, 0.306366, 0.796240,
		0.711848, -0.670732, -0.208306,
		0.470245, 0.675469, -0.567988,
		43.713116, 31.660700, 33.435570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029495, 31.317184, 34.179005>,  <43.383942, 31.187872, 33.833160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029495, 31.317184, 34.179005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042988, 31.635286, 33.936871>,  <44.051083, 31.826147, 33.791588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042988, 31.635286, 33.936871>,  <44.029495, 31.317184, 34.179005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042988, 31.635286, 33.936871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397514, 0.545037, 0.738185,
		0.916976, -0.265532, -0.297738,
		0.033734, 0.795253, -0.605338,
		44.053108, 31.873861, 33.755268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684715, 31.664619, 34.200798>,  <44.029495, 31.317184, 34.179005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684715, 31.664619, 34.200798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419983, 31.939350, 34.080631>,  <44.261143, 32.104191, 34.008530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419983, 31.939350, 34.080631>,  <44.684715, 31.664619, 34.200798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419983, 31.939350, 34.080631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401509, 0.663177, 0.631654,
		0.633068, 0.297426, -0.714677,
		-0.661828, 0.686829, -0.300417,
		44.221436, 32.145397, 33.990505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031364, 32.379227, 34.151756>,  <44.684715, 31.664619, 34.200798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031364, 32.379227, 34.151756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639828, 32.461025, 34.148712>,  <44.404907, 32.510105, 34.146885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639828, 32.461025, 34.148712>,  <45.031364, 32.379227, 34.151756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639828, 32.461025, 34.148712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189760, 0.920966, 0.340314,
		0.076601, 0.331668, -0.940281,
		-0.978838, 0.204496, -0.007609,
		44.346176, 32.522373, 34.146431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051262, 33.063484, 34.041237>,  <45.031364, 32.379227, 34.151756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051262, 33.063484, 34.041237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671627, 33.020020, 34.159515>,  <44.443848, 32.993942, 34.230480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671627, 33.020020, 34.159515>,  <45.051262, 33.063484, 34.041237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671627, 33.020020, 34.159515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031226, 0.901555, 0.431535,
		-0.313474, 0.418796, -0.852258,
		-0.949083, -0.108663, 0.295692,
		44.386902, 32.987419, 34.248222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681000, 33.763248, 33.881805>,  <45.051262, 33.063484, 34.041237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681000, 33.763248, 33.881805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470821, 33.571434, 34.162933>,  <44.344715, 33.456345, 34.331608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470821, 33.571434, 34.162933>,  <44.681000, 33.763248, 33.881805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470821, 33.571434, 34.162933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027129, 0.835065, 0.549482,
		-0.850392, 0.269659, -0.451794,
		-0.525450, -0.479532, 0.702817,
		44.313187, 33.427574, 34.373779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151386, 34.195690, 34.125965>,  <44.681000, 33.763248, 33.881805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151386, 34.195690, 34.125965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217903, 33.929050, 34.416618>,  <44.257812, 33.769066, 34.591011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217903, 33.929050, 34.416618>,  <44.151386, 34.195690, 34.125965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217903, 33.929050, 34.416618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035232, 0.732402, 0.679961,
		-0.985447, -0.138672, 0.098306,
		0.166291, -0.666602, 0.726629,
		44.267792, 33.729069, 34.634605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722054, 34.398479, 34.688873>,  <44.151386, 34.195690, 34.125965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722054, 34.398479, 34.688873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005592, 34.158333, 34.836979>,  <44.175716, 34.014244, 34.925842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005592, 34.158333, 34.836979>,  <43.722054, 34.398479, 34.688873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005592, 34.158333, 34.836979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129846, 0.627020, 0.768105,
		-0.693304, -0.496396, 0.522419,
		0.708852, -0.600364, 0.370261,
		44.218246, 33.978222, 34.948055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492676, 34.274845, 35.356884>,  <43.722054, 34.398479, 34.688873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492676, 34.274845, 35.356884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890625, 34.237949, 35.340275>,  <44.129395, 34.215813, 35.330311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890625, 34.237949, 35.340275>,  <43.492676, 34.274845, 35.356884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890625, 34.237949, 35.340275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096957, 0.752500, 0.651416,
		-0.028844, -0.652100, 0.757584,
		0.994871, -0.092242, -0.041520,
		44.189087, 34.210278, 35.327820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653725, 34.338314, 36.068428>,  <43.492676, 34.274845, 35.356884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653725, 34.338314, 36.068428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996101, 34.389736, 35.868092>,  <44.201527, 34.420589, 35.747890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996101, 34.389736, 35.868092>,  <43.653725, 34.338314, 36.068428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996101, 34.389736, 35.868092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197012, 0.814457, 0.545752,
		0.478069, -0.565803, 0.671802,
		0.855942, 0.128554, -0.500836,
		44.252884, 34.428303, 35.717842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097057, 34.639542, 36.594505>,  <43.653725, 34.338314, 36.068428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097057, 34.639542, 36.594505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288746, 34.734734, 36.256580>,  <44.403759, 34.791847, 36.053825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288746, 34.734734, 36.256580>,  <44.097057, 34.639542, 36.594505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288746, 34.734734, 36.256580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268047, 0.876872, 0.399057,
		0.835763, -0.417686, 0.356425,
		0.479220, 0.237979, -0.844816,
		44.432510, 34.806126, 36.003136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792912, 34.862114, 36.793091>,  <44.097057, 34.639542, 36.594505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792912, 34.862114, 36.793091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726913, 35.013275, 36.428680>,  <44.687317, 35.103973, 36.210033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726913, 35.013275, 36.428680>,  <44.792912, 34.862114, 36.793091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726913, 35.013275, 36.428680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390431, 0.873256, 0.291526,
		0.905727, -0.307593, -0.291625,
		-0.164992, 0.377903, -0.911025,
		44.677414, 35.126644, 36.155373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397823, 35.179512, 36.572887>,  <44.792912, 34.862114, 36.793091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397823, 35.179512, 36.572887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095940, 35.341373, 36.366329>,  <44.914810, 35.438492, 36.242393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095940, 35.341373, 36.366329>,  <45.397823, 35.179512, 36.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095940, 35.341373, 36.366329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349172, 0.914133, 0.206009,
		0.555418, -0.024834, -0.831201,
		-0.754712, 0.404653, -0.516397,
		44.869526, 35.462769, 36.211411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015408, 35.338886, 36.094810>,  <45.397823, 35.179512, 36.572887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.015408, 35.338886, 36.094810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249313, 35.609882, 35.916348>,  <46.389656, 35.772480, 35.809269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249313, 35.609882, 35.916348>,  <46.015408, 35.338886, 36.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249313, 35.609882, 35.916348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669255, -0.092115, 0.737301,
		0.458419, -0.729738, -0.507282,
		0.584765, 0.677493, -0.446153,
		46.424744, 35.813129, 35.782501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650143, 35.058239, 35.886841>,  <46.015408, 35.338886, 36.094810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650143, 35.058239, 35.886841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.703190, 35.442390, 35.984882>,  <46.735016, 35.672882, 36.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.703190, 35.442390, 35.984882>,  <46.650143, 35.058239, 35.886841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703190, 35.442390, 35.984882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607744, -0.274138, 0.745316,
		0.782982, 0.050121, -0.620022,
		0.132616, 0.960383, 0.245106,
		46.742973, 35.730507, 36.058414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.393192, 35.276981, 35.810627>,  <46.650143, 35.058239, 35.886841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.393192, 35.276981, 35.810627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177917, 35.458576, 36.094673>,  <47.048752, 35.567532, 36.265099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177917, 35.458576, 36.094673>,  <47.393192, 35.276981, 35.810627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177917, 35.458576, 36.094673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566162, -0.429406, 0.703612,
		0.624354, 0.780711, -0.025928,
		-0.538185, 0.453982, 0.710111,
		47.016460, 35.594772, 36.307705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.693886, 35.500397, 35.049137>,  <47.393192, 35.276981, 35.810627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.693886, 35.500397, 35.049137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755497, 35.105743, 35.027824>,  <47.792461, 34.868954, 35.015038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755497, 35.105743, 35.027824>,  <47.693886, 35.500397, 35.049137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.755497, 35.105743, 35.027824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586018, -0.047800, -0.808887,
		0.795524, 0.155815, -0.585545,
		0.154026, -0.986629, -0.053285,
		47.801704, 34.809753, 35.011841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.489716, 38.182693, 43.773701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164886, 37.960693, 43.701572>,  <34.969990, 37.827496, 43.658295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164886, 37.960693, 43.701572>,  <35.489716, 38.182693, 43.773701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164886, 37.960693, 43.701572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229370, -0.019438, -0.973145,
		0.536589, -0.831624, 0.143085,
		-0.812072, -0.554998, -0.180320,
		34.921265, 37.794193, 43.647476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718254, 37.820736, 43.203671>,  <35.489716, 38.182693, 43.773701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718254, 37.820736, 43.203671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324886, 37.751865, 43.180923>,  <35.088863, 37.710545, 43.167274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324886, 37.751865, 43.180923>,  <35.718254, 37.820736, 43.203671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324886, 37.751865, 43.180923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078209, -0.119811, -0.989711,
		0.163589, -0.977753, 0.131290,
		-0.983424, -0.172174, -0.056870,
		35.029858, 37.700214, 43.163864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559155, 37.187889, 42.862915>,  <35.718254, 37.820736, 43.203671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559155, 37.187889, 42.862915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207436, 37.371456, 42.811958>,  <34.996403, 37.481598, 42.781384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207436, 37.371456, 42.811958>,  <35.559155, 37.187889, 42.862915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207436, 37.371456, 42.811958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115577, -0.053885, -0.991836,
		-0.462035, -0.886844, -0.005660,
		-0.879298, 0.458917, -0.127396,
		34.943645, 37.509132, 42.773739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142494, 36.770721, 42.405468>,  <35.559155, 37.187889, 42.862915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142494, 36.770721, 42.405468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985188, 37.136623, 42.368435>,  <34.890804, 37.356163, 42.346214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985188, 37.136623, 42.368435>,  <35.142494, 36.770721, 42.405468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985188, 37.136623, 42.368435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091201, -0.061385, -0.993939,
		-0.914889, -0.399329, -0.059285,
		-0.393270, 0.914751, -0.092579,
		34.867207, 37.411049, 42.340660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694477, 36.733768, 41.786598>,  <35.142494, 36.770721, 42.405468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694477, 36.733768, 41.786598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766842, 37.120789, 41.857155>,  <34.810261, 37.353001, 41.899490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766842, 37.120789, 41.857155>,  <34.694477, 36.733768, 41.786598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766842, 37.120789, 41.857155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257537, 0.126489, -0.957954,
		-0.949181, 0.218735, -0.226296,
		0.180914, 0.967551, 0.176394,
		34.821117, 37.411053, 41.910072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261875, 37.190113, 41.356270>,  <34.694477, 36.733768, 41.786598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261875, 37.190113, 41.356270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.607464, 37.366173, 41.454098>,  <34.814819, 37.471809, 41.512794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.607464, 37.366173, 41.454098>,  <34.261875, 37.190113, 41.356270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607464, 37.366173, 41.454098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265672, 0.014139, -0.963960,
		-0.427743, 0.897814, -0.104719,
		0.863976, 0.440148, 0.244572,
		34.866657, 37.498219, 41.527470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178535, 37.700455, 40.880383>,  <34.261875, 37.190113, 41.356270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178535, 37.700455, 40.880383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561180, 37.648815, 40.984863>,  <34.790768, 37.617832, 41.047550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561180, 37.648815, 40.984863>,  <34.178535, 37.700455, 40.880383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561180, 37.648815, 40.984863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272777, 0.081762, -0.958597,
		0.102393, 0.988256, 0.113428,
		0.956613, -0.129095, 0.261202,
		34.848164, 37.610088, 41.063225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597069, 38.033478, 40.428677>,  <34.178535, 37.700455, 40.880383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597069, 38.033478, 40.428677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.883377, 37.812408, 40.599426>,  <35.055164, 37.679768, 40.701878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.883377, 37.812408, 40.599426>,  <34.597069, 38.033478, 40.428677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883377, 37.812408, 40.599426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571659, 0.112626, -0.812725,
		0.401091, 0.825755, 0.396553,
		0.715774, -0.552669, 0.426877,
		35.098110, 37.646606, 40.727489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259220, 38.401852, 40.331345>,  <34.597069, 38.033478, 40.428677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259220, 38.401852, 40.331345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387608, 38.035263, 40.426895>,  <35.464642, 37.815311, 40.484226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387608, 38.035263, 40.426895>,  <35.259220, 38.401852, 40.331345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387608, 38.035263, 40.426895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669389, 0.041095, -0.741775,
		0.669997, 0.397988, 0.626665,
		0.320970, -0.916470, 0.238875,
		35.483898, 37.760323, 40.498558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978954, 38.527515, 40.233082>,  <35.259220, 38.401852, 40.331345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978954, 38.527515, 40.233082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898384, 38.135872, 40.221924>,  <35.850040, 37.900887, 40.215229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898384, 38.135872, 40.221924>,  <35.978954, 38.527515, 40.233082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898384, 38.135872, 40.221924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551147, -0.089751, -0.829567,
		0.809730, -0.182475, 0.557710,
		-0.201430, -0.979105, -0.027896,
		35.837955, 37.842140, 40.213554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635559, 38.287178, 40.022755>,  <35.978954, 38.527515, 40.233082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635559, 38.287178, 40.022755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361404, 38.009510, 39.934780>,  <36.196911, 37.842911, 39.881996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361404, 38.009510, 39.934780>,  <36.635559, 38.287178, 40.022755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361404, 38.009510, 39.934780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525622, -0.262602, -0.809173,
		0.503947, -0.670202, 0.544855,
		-0.685390, -0.694168, -0.219935,
		36.155788, 37.801258, 39.868801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956085, 37.743935, 39.834766>,  <36.635559, 38.287178, 40.022755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956085, 37.743935, 39.834766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604790, 37.689701, 39.651325>,  <36.394012, 37.657162, 39.541260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604790, 37.689701, 39.651325>,  <36.956085, 37.743935, 39.834766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604790, 37.689701, 39.651325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478191, -0.236628, -0.845778,
		0.006159, -0.962093, 0.272653,
		-0.878234, -0.135589, -0.458607,
		36.341320, 37.649025, 39.513744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183212, 37.208817, 39.363823>,  <36.956085, 37.743935, 39.834766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183212, 37.208817, 39.363823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835835, 37.358669, 39.233925>,  <36.627407, 37.448582, 39.155987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835835, 37.358669, 39.233925>,  <37.183212, 37.208817, 39.363823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835835, 37.358669, 39.233925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372967, 0.062084, -0.925765,
		-0.326656, -0.925094, -0.193640,
		-0.868442, 0.374629, -0.324750,
		36.575302, 37.471058, 39.136501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924141, 36.821495, 38.911751>,  <37.183212, 37.208817, 39.363823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924141, 36.821495, 38.911751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776623, 37.183769, 38.828098>,  <36.688114, 37.401134, 38.777908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776623, 37.183769, 38.828098>,  <36.924141, 36.821495, 38.911751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776623, 37.183769, 38.828098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476855, -0.008779, -0.878938,
		-0.797874, -0.423868, -0.428641,
		-0.368791, 0.905681, -0.209129,
		36.665985, 37.455475, 38.765358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673737, 36.709297, 38.218678>,  <36.924141, 36.821495, 38.911751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673737, 36.709297, 38.218678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705780, 37.103210, 38.280369>,  <36.725006, 37.339558, 38.317383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705780, 37.103210, 38.280369>,  <36.673737, 36.709297, 38.218678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705780, 37.103210, 38.280369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561630, 0.083231, -0.823192,
		-0.823501, 0.152565, -0.546416,
		0.080111, 0.984783, 0.154225,
		36.729813, 37.398643, 38.326637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462727, 37.038307, 37.602428>,  <36.673737, 36.709297, 38.218678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462727, 37.038307, 37.602428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681774, 37.317879, 37.786434>,  <36.813202, 37.485622, 37.896835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681774, 37.317879, 37.786434>,  <36.462727, 37.038307, 37.602428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681774, 37.317879, 37.786434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468409, 0.199478, -0.860698,
		-0.693327, 0.686811, -0.218145,
		0.547622, 0.698927, 0.460012,
		36.846062, 37.527557, 37.924438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507359, 37.501129, 37.102726>,  <36.462727, 37.038307, 37.602428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507359, 37.501129, 37.102726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801121, 37.625431, 37.344082>,  <36.977379, 37.700012, 37.488895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801121, 37.625431, 37.344082>,  <36.507359, 37.501129, 37.102726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801121, 37.625431, 37.344082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545835, 0.257940, -0.797202,
		-0.403370, 0.914822, 0.019814,
		0.734409, 0.310752, 0.603387,
		37.021442, 37.718658, 37.525097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806232, 38.110294, 36.716469>,  <36.507359, 37.501129, 37.102726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806232, 38.110294, 36.716469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083401, 38.022034, 36.991035>,  <37.249702, 37.969078, 37.155777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083401, 38.022034, 36.991035>,  <36.806232, 38.110294, 36.716469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083401, 38.022034, 36.991035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719204, 0.278879, -0.636374,
		-0.051014, 0.934634, 0.351932,
		0.692924, -0.220647, 0.686419,
		37.291279, 37.955841, 37.196960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200550, 38.726048, 36.817837>,  <36.806232, 38.110294, 36.716469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200550, 38.726048, 36.817837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437313, 38.435165, 36.956867>,  <37.579372, 38.260635, 37.040283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437313, 38.435165, 36.956867>,  <37.200550, 38.726048, 36.817837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437313, 38.435165, 36.956867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786995, 0.428351, -0.444021,
		0.174012, 0.536360, 0.825856,
		0.591911, -0.727209, 0.347574,
		37.614887, 38.217003, 37.061138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818436, 39.018044, 37.247166>,  <37.200550, 38.726048, 36.817837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818436, 39.018044, 37.247166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907703, 38.657757, 37.098083>,  <37.961266, 38.441586, 37.008633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907703, 38.657757, 37.098083>,  <37.818436, 39.018044, 37.247166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907703, 38.657757, 37.098083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803961, 0.386288, -0.452139,
		0.551220, -0.198738, 0.810346,
		0.223169, -0.900714, -0.372707,
		37.974655, 38.387543, 36.986271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543732, 38.888115, 37.404270>,  <37.818436, 39.018044, 37.247166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543732, 38.888115, 37.404270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444851, 38.639969, 37.106537>,  <38.385521, 38.491081, 36.927895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444851, 38.639969, 37.106537>,  <38.543732, 38.888115, 37.404270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444851, 38.639969, 37.106537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846007, 0.236326, -0.477935,
		0.472401, -0.747862, 0.466413,
		-0.247204, -0.620366, -0.744336,
		38.370689, 38.453857, 36.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116867, 38.479286, 37.334194>,  <38.543732, 38.888115, 37.404270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116867, 38.479286, 37.334194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882244, 38.487400, 37.010334>,  <38.741470, 38.492268, 36.816017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882244, 38.487400, 37.010334>,  <39.116867, 38.479286, 37.334194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882244, 38.487400, 37.010334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804000, 0.135112, -0.579076,
		0.097649, -0.990623, -0.095558,
		-0.586557, 0.020283, -0.809654,
		38.706276, 38.493484, 36.767437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602924, 38.235149, 36.826561>,  <39.116867, 38.479286, 37.334194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602924, 38.235149, 36.826561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.982365, 38.352028, 36.875187>,  <40.210030, 38.422153, 36.904362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.982365, 38.352028, 36.875187>,  <39.602924, 38.235149, 36.826561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982365, 38.352028, 36.875187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087937, -0.125630, 0.988172,
		0.304010, -0.948072, -0.093479,
		0.948601, 0.292194, 0.121563,
		40.266945, 38.439686, 36.911655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008743, 37.786892, 37.277794>,  <39.602924, 38.235149, 36.826561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008743, 37.786892, 37.277794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144203, 38.160732, 37.321323>,  <40.225479, 38.385036, 37.347443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144203, 38.160732, 37.321323>,  <40.008743, 37.786892, 37.277794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144203, 38.160732, 37.321323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013359, -0.120425, 0.992632,
		0.940818, -0.334701, -0.053267,
		0.338650, 0.934598, 0.108826,
		40.245800, 38.441113, 37.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339249, 37.847385, 38.038952>,  <40.008743, 37.786892, 37.277794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339249, 37.847385, 38.038952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310455, 38.226543, 37.914814>,  <40.293179, 38.454037, 37.840332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310455, 38.226543, 37.914814>,  <40.339249, 37.847385, 38.038952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310455, 38.226543, 37.914814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234394, 0.286361, 0.929008,
		0.969473, 0.139612, 0.201569,
		-0.071979, 0.947896, -0.310344,
		40.288860, 38.510914, 37.821712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727398, 38.242100, 38.497864>,  <40.339249, 37.847385, 38.038952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727398, 38.242100, 38.497864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.463734, 38.498077, 38.339882>,  <40.305534, 38.651665, 38.245094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.463734, 38.498077, 38.339882>,  <40.727398, 38.242100, 38.497864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463734, 38.498077, 38.339882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146882, 0.405523, 0.902207,
		0.737521, 0.652708, -0.173308,
		-0.659157, 0.639940, -0.394953,
		40.265987, 38.690060, 38.221397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869675, 38.805992, 38.879604>,  <40.727398, 38.242100, 38.497864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869675, 38.805992, 38.879604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514164, 38.854885, 38.702904>,  <40.300858, 38.884220, 38.596882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514164, 38.854885, 38.702904>,  <40.869675, 38.805992, 38.879604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514164, 38.854885, 38.702904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361444, 0.405758, 0.839475,
		0.281855, 0.905770, -0.316446,
		-0.888772, 0.122233, -0.441750,
		40.247532, 38.891556, 38.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704632, 39.380726, 39.137768>,  <40.869675, 38.805992, 38.879604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704632, 39.380726, 39.137768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.351357, 39.266975, 38.988583>,  <40.139389, 39.198723, 38.899071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.351357, 39.266975, 38.988583>,  <40.704632, 39.380726, 39.137768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351357, 39.266975, 38.988583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468970, 0.524455, 0.710643,
		-0.006490, 0.802542, -0.596560,
		-0.883190, -0.284381, -0.372965,
		40.086399, 39.181660, 38.876694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277035, 39.970371, 39.167553>,  <40.704632, 39.380726, 39.137768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277035, 39.970371, 39.167553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054981, 39.638092, 39.184341>,  <39.921749, 39.438725, 39.194416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054981, 39.638092, 39.184341>,  <40.277035, 39.970371, 39.167553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054981, 39.638092, 39.184341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559629, 0.410368, 0.720010,
		-0.615335, 0.376216, -0.692694,
		-0.555138, -0.830699, 0.041973,
		39.888439, 39.388882, 39.196934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633080, 40.270733, 39.286789>,  <40.277035, 39.970371, 39.167553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633080, 40.270733, 39.286789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593231, 39.887100, 39.392792>,  <39.569321, 39.656921, 39.456394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593231, 39.887100, 39.392792>,  <39.633080, 40.270733, 39.286789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593231, 39.887100, 39.392792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469137, 0.280147, 0.837513,
		-0.877489, -0.040894, -0.477850,
		-0.099619, -0.959086, 0.265011,
		39.563347, 39.599373, 39.472294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968773, 40.286900, 39.651020>,  <39.633080, 40.270733, 39.286789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968773, 40.286900, 39.651020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161854, 39.947803, 39.738960>,  <39.277702, 39.744347, 39.791725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161854, 39.947803, 39.738960>,  <38.968773, 40.286900, 39.651020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161854, 39.947803, 39.738960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467943, -0.037458, 0.882964,
		-0.740287, -0.529091, -0.414775,
		0.482705, -0.847739, 0.219855,
		39.306664, 39.693481, 39.804916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484493, 39.620014, 39.705444>,  <38.968773, 40.286900, 39.651020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484493, 39.620014, 39.705444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822601, 39.538132, 39.902874>,  <39.025467, 39.489002, 40.021332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822601, 39.538132, 39.902874>,  <38.484493, 39.620014, 39.705444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822601, 39.538132, 39.902874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533302, -0.265614, 0.803142,
		-0.033305, -0.942096, -0.333684,
		0.845269, -0.204704, 0.493576,
		39.076183, 39.476719, 40.050945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381485, 39.002651, 39.955170>,  <38.484493, 39.620014, 39.705444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381485, 39.002651, 39.955170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683712, 39.145699, 40.174706>,  <38.865047, 39.231529, 40.306427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683712, 39.145699, 40.174706>,  <38.381485, 39.002651, 39.955170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683712, 39.145699, 40.174706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469920, -0.287825, 0.834465,
		0.456392, -0.888406, -0.049418,
		0.755567, 0.357621, 0.548841,
		38.910381, 39.252983, 40.339359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462677, 38.501743, 40.435978>,  <38.381485, 39.002651, 39.955170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462677, 38.501743, 40.435978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650452, 38.818535, 40.592129>,  <38.763119, 39.008610, 40.685818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650452, 38.818535, 40.592129>,  <38.462677, 38.501743, 40.435978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650452, 38.818535, 40.592129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437223, -0.175606, 0.882043,
		0.767113, -0.584746, 0.263836,
		0.469440, 0.791981, 0.390374,
		38.791283, 39.056129, 40.709240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970730, 38.289669, 40.892239>,  <38.462677, 38.501743, 40.435978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970730, 38.289669, 40.892239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871262, 38.661568, 41.000854>,  <38.811581, 38.884708, 41.066025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871262, 38.661568, 41.000854>,  <38.970730, 38.289669, 40.892239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871262, 38.661568, 41.000854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233262, -0.329577, 0.914860,
		0.940082, 0.164155, 0.298829,
		-0.248666, 0.929749, 0.271538,
		38.796661, 38.940491, 41.082317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884537, 38.139191, 41.507900>,  <38.970730, 38.289669, 40.892239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884537, 38.139191, 41.507900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715771, 38.499176, 41.463997>,  <38.614510, 38.715168, 41.437656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715771, 38.499176, 41.463997>,  <38.884537, 38.139191, 41.507900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715771, 38.499176, 41.463997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351810, -0.050945, 0.934684,
		0.835593, 0.432972, 0.338111,
		-0.421917, 0.899967, -0.109755,
		38.589195, 38.769165, 41.431072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065857, 38.380154, 42.096008>,  <38.884537, 38.139191, 41.507900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065857, 38.380154, 42.096008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753403, 38.586330, 41.955070>,  <38.565929, 38.710037, 41.870506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753403, 38.586330, 41.955070>,  <39.065857, 38.380154, 42.096008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753403, 38.586330, 41.955070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455736, -0.084964, 0.886051,
		0.426767, 0.852704, 0.301272,
		-0.781137, 0.515438, -0.352348,
		38.519062, 38.740963, 41.849365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005367, 38.813213, 42.587543>,  <39.065857, 38.380154, 42.096008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005367, 38.813213, 42.587543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654671, 38.824928, 42.395515>,  <38.444252, 38.831959, 42.280300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654671, 38.824928, 42.395515>,  <39.005367, 38.813213, 42.587543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654671, 38.824928, 42.395515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480949, -0.046370, 0.875522,
		0.003381, 0.998495, 0.054740,
		-0.876742, 0.029288, -0.480068,
		38.391647, 38.833714, 42.251495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555904, 39.394043, 42.916557>,  <39.005367, 38.813213, 42.587543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555904, 39.394043, 42.916557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333286, 39.112343, 42.740242>,  <38.199715, 38.943325, 42.634453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333286, 39.112343, 42.740242>,  <38.555904, 39.394043, 42.916557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333286, 39.112343, 42.740242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603802, -0.021576, 0.796843,
		-0.570685, 0.709626, -0.413218,
		-0.556545, -0.704248, -0.440786,
		38.166325, 38.901070, 42.608006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765110, 39.582260, 43.013966>,  <38.555904, 39.394043, 42.916557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765110, 39.582260, 43.013966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761612, 39.191204, 42.929932>,  <37.759514, 38.956570, 42.879513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761612, 39.191204, 42.929932>,  <37.765110, 39.582260, 43.013966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761612, 39.191204, 42.929932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558605, -0.169477, 0.811934,
		-0.829388, 0.124456, -0.544634,
		-0.008747, -0.977644, -0.210084,
		37.758987, 38.897911, 42.866905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.021854, 39.376266, 43.039234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232788, 39.039402, 43.084297>,  <37.359348, 38.837284, 43.111336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232788, 39.039402, 43.084297>,  <37.021854, 39.376266, 43.039234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232788, 39.039402, 43.084297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472384, -0.180383, 0.862737,
		-0.706240, -0.508165, -0.492943,
		0.527331, -0.842158, 0.112655,
		37.390987, 38.786755, 43.118095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542656, 38.812077, 43.187668>,  <37.021854, 39.376266, 43.039234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542656, 38.812077, 43.187668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896793, 38.690228, 43.328163>,  <37.109276, 38.617119, 43.412460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896793, 38.690228, 43.328163>,  <36.542656, 38.812077, 43.187668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896793, 38.690228, 43.328163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417510, -0.188522, 0.888901,
		-0.204574, -0.933626, -0.294094,
		0.885345, -0.304633, 0.351231,
		37.162399, 38.598843, 43.433533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254040, 38.352615, 43.607544>,  <36.542656, 38.812077, 43.187668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254040, 38.352615, 43.607544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636032, 38.372028, 43.724606>,  <36.865227, 38.383678, 43.794842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636032, 38.372028, 43.724606>,  <36.254040, 38.352615, 43.607544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636032, 38.372028, 43.724606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280791, -0.170377, 0.944525,
		0.095707, -0.984183, -0.149078,
		0.954985, 0.048538, 0.292656,
		36.922527, 38.386589, 43.812401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452778, 37.623981, 43.837677>,  <36.254040, 38.352615, 43.607544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452778, 37.623981, 43.837677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749386, 37.845165, 43.989666>,  <36.927349, 37.977875, 44.080860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749386, 37.845165, 43.989666>,  <36.452778, 37.623981, 43.837677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749386, 37.845165, 43.989666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228610, -0.324211, 0.917946,
		0.630782, -0.767541, -0.113996,
		0.741520, 0.552963, 0.379975,
		36.971840, 38.011055, 44.103657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903866, 37.155869, 44.389282>,  <36.452778, 37.623981, 43.837677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903866, 37.155869, 44.389282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913837, 37.549091, 44.461929>,  <36.919819, 37.785023, 44.505516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913837, 37.549091, 44.461929>,  <36.903866, 37.155869, 44.389282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913837, 37.549091, 44.461929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174296, -0.174616, 0.969087,
		0.984378, -0.055810, 0.166990,
		0.024925, 0.983054, 0.181615,
		36.921314, 37.844006, 44.516415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233326, 37.189583, 45.004192>,  <36.903866, 37.155869, 44.389282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233326, 37.189583, 45.004192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069225, 37.552814, 44.970531>,  <36.970764, 37.770756, 44.950336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069225, 37.552814, 44.970531>,  <37.233326, 37.189583, 45.004192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069225, 37.552814, 44.970531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162640, 0.017941, 0.986522,
		0.897353, 0.418408, 0.140330,
		-0.410251, 0.908082, -0.084150,
		36.946152, 37.825237, 44.945286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596542, 37.611088, 45.425987>,  <37.233326, 37.189583, 45.004192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596542, 37.611088, 45.425987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257759, 37.815277, 45.366554>,  <37.054489, 37.937790, 45.330894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257759, 37.815277, 45.366554>,  <37.596542, 37.611088, 45.425987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257759, 37.815277, 45.366554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077166, 0.158479, 0.984342,
		0.526032, 0.845161, -0.094833,
		-0.846957, 0.510478, -0.148583,
		37.003674, 37.968422, 45.321980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686504, 38.196732, 45.817085>,  <37.596542, 37.611088, 45.425987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686504, 38.196732, 45.817085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298008, 38.108559, 45.781086>,  <37.064911, 38.055656, 45.759487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298008, 38.108559, 45.781086>,  <37.686504, 38.196732, 45.817085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298008, 38.108559, 45.781086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111068, 0.085122, 0.990161,
		-0.210599, 0.971682, -0.107156,
		-0.971242, -0.220428, -0.089997,
		37.006634, 38.042431, 45.754086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338268, 38.760216, 46.173805>,  <37.686504, 38.196732, 45.817085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338268, 38.760216, 46.173805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079365, 38.457935, 46.133862>,  <36.924023, 38.276566, 46.109894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079365, 38.457935, 46.133862>,  <37.338268, 38.760216, 46.173805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079365, 38.457935, 46.133862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193025, 0.035753, 0.980542,
		-0.737427, 0.653939, -0.169011,
		-0.647257, -0.755702, -0.099861,
		36.885189, 38.231224, 46.103905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766552, 39.013298, 46.587574>,  <37.338268, 38.760216, 46.173805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766552, 39.013298, 46.587574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652821, 38.633503, 46.534473>,  <36.584583, 38.405624, 46.502613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652821, 38.633503, 46.534473>,  <36.766552, 39.013298, 46.587574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652821, 38.633503, 46.534473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433481, 0.003811, 0.901155,
		-0.855133, 0.313768, -0.412670,
		-0.284326, -0.949492, -0.132754,
		36.567524, 38.348656, 46.494648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013496, 38.947029, 46.773037>,  <36.766552, 39.013298, 46.587574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013496, 38.947029, 46.773037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152336, 38.574326, 46.815647>,  <36.235641, 38.350704, 46.841213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152336, 38.574326, 46.815647>,  <36.013496, 38.947029, 46.773037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152336, 38.574326, 46.815647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347044, -0.022089, 0.937589,
		-0.871252, -0.362409, -0.331028,
		0.347102, -0.931757, 0.106527,
		36.256466, 38.294800, 46.847607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466675, 38.601852, 47.040546>,  <36.013496, 38.947029, 46.773037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466675, 38.601852, 47.040546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786079, 38.381546, 47.137737>,  <35.977722, 38.249363, 47.196053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786079, 38.381546, 47.137737>,  <35.466675, 38.601852, 47.040546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786079, 38.381546, 47.137737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316142, -0.040196, 0.947860,
		-0.512280, -0.833693, -0.206216,
		0.798514, -0.550763, 0.242975,
		36.025635, 38.216316, 47.210629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290852, 38.018078, 47.373684>,  <35.466675, 38.601852, 47.040546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290852, 38.018078, 47.373684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667652, 38.058586, 47.501675>,  <35.893730, 38.082893, 47.578468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667652, 38.058586, 47.501675>,  <35.290852, 38.018078, 47.373684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667652, 38.058586, 47.501675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276561, -0.305890, 0.911014,
		0.190140, -0.946665, -0.260139,
		0.941998, 0.101276, 0.319972,
		35.950253, 38.088970, 47.597668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499874, 37.397106, 47.782196>,  <35.290852, 38.018078, 47.373684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499874, 37.397106, 47.782196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760086, 37.662678, 47.929714>,  <35.916214, 37.822021, 48.018227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760086, 37.662678, 47.929714>,  <35.499874, 37.397106, 47.782196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760086, 37.662678, 47.929714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085386, -0.418577, 0.904159,
		0.754662, -0.619675, -0.215608,
		0.650533, 0.663925, 0.368795,
		35.955246, 37.861855, 48.040352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904476, 36.982521, 48.245319>,  <35.499874, 37.397106, 47.782196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904476, 36.982521, 48.245319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005440, 37.354195, 48.353329>,  <36.066017, 37.577198, 48.418137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005440, 37.354195, 48.353329>,  <35.904476, 36.982521, 48.245319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005440, 37.354195, 48.353329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012176, -0.282092, 0.959310,
		0.967544, -0.238852, -0.082517,
		0.252411, 0.929179, 0.270028,
		36.081161, 37.632950, 48.434338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384842, 36.877949, 48.643433>,  <35.904476, 36.982521, 48.245319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384842, 36.877949, 48.643433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290768, 37.253464, 48.744129>,  <36.234322, 37.478771, 48.804546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290768, 37.253464, 48.744129>,  <36.384842, 36.877949, 48.643433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290768, 37.253464, 48.744129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080422, -0.239323, 0.967604,
		0.968617, 0.247812, -0.019213,
		-0.235186, 0.938783, 0.251742,
		36.220211, 37.535099, 48.819653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880424, 37.119495, 49.199844>,  <36.384842, 36.877949, 48.643433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880424, 37.119495, 49.199844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530731, 37.313293, 49.212360>,  <36.320915, 37.429573, 49.219872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530731, 37.313293, 49.212360>,  <36.880424, 37.119495, 49.199844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530731, 37.313293, 49.212360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057588, -0.167474, 0.984193,
		0.482073, 0.858615, 0.174313,
		-0.874236, 0.484492, 0.031289,
		36.268459, 37.458641, 49.221748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965427, 37.376633, 49.783451>,  <36.880424, 37.119495, 49.199844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965427, 37.376633, 49.783451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572495, 37.414478, 49.718861>,  <36.336735, 37.437183, 49.680107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572495, 37.414478, 49.718861>,  <36.965427, 37.376633, 49.783451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572495, 37.414478, 49.718861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174100, -0.145377, 0.973938,
		0.068668, 0.984842, 0.159279,
		-0.982331, 0.094609, -0.161478,
		36.277794, 37.442860, 49.670418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692833, 37.805420, 50.363129>,  <36.965427, 37.376633, 49.783451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692833, 37.805420, 50.363129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375324, 37.610676, 50.217308>,  <36.184818, 37.493832, 50.129814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375324, 37.610676, 50.217308>,  <36.692833, 37.805420, 50.363129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375324, 37.610676, 50.217308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314989, -0.183676, 0.931153,
		-0.520297, 0.853952, -0.007557,
		-0.793772, -0.486856, -0.364551,
		36.137192, 37.464619, 50.107944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097614, 38.011024, 50.782902>,  <36.692833, 37.805420, 50.363129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097614, 38.011024, 50.782902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022205, 37.653530, 50.620079>,  <35.976959, 37.439034, 50.522385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022205, 37.653530, 50.620079>,  <36.097614, 38.011024, 50.782902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022205, 37.653530, 50.620079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442681, -0.292660, 0.847575,
		-0.876637, 0.339984, -0.340466,
		-0.188521, -0.893734, -0.407062,
		35.965649, 37.385410, 50.497959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717705, 37.697193, 51.312798>,  <36.097614, 38.011024, 50.782902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717705, 37.697193, 51.312798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732124, 37.397915, 51.047802>,  <35.740776, 37.218346, 50.888805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732124, 37.397915, 51.047802>,  <35.717705, 37.697193, 51.312798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732124, 37.397915, 51.047802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653578, -0.519150, 0.550744,
		-0.756000, 0.413136, -0.507723,
		0.036052, -0.748199, -0.662494,
		35.742939, 37.173454, 50.849052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019115, 37.480495, 51.012474>,  <35.717705, 37.697193, 51.312798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019115, 37.480495, 51.012474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250168, 37.160114, 50.949459>,  <35.388802, 36.967888, 50.911652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250168, 37.160114, 50.949459>,  <35.019115, 37.480495, 51.012474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250168, 37.160114, 50.949459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615438, -0.554097, 0.560547,
		-0.536262, -0.226836, -0.813000,
		0.577633, -0.800951, -0.157538,
		35.423458, 36.919830, 50.902199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851265, 37.736458, 51.715122>,  <35.019115, 37.480495, 51.012474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851265, 37.736458, 51.715122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102146, 37.981796, 51.523113>,  <35.252674, 38.128998, 51.407909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102146, 37.981796, 51.523113>,  <34.851265, 37.736458, 51.715122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102146, 37.981796, 51.523113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756310, 0.626839, -0.187265,
		0.186036, 0.480498, 0.857037,
		0.627204, 0.613348, -0.480020,
		35.290306, 38.165802, 51.379108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192898, 37.749344, 51.525925>,  <34.851265, 37.736458, 51.715122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192898, 37.749344, 51.525925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949150, 37.453403, 51.639973>,  <33.802902, 37.275841, 51.708401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949150, 37.453403, 51.639973>,  <34.192898, 37.749344, 51.525925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949150, 37.453403, 51.639973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001739, -0.358351, -0.933585,
		0.792884, -0.569394, 0.217082,
		-0.609370, -0.739848, 0.285121,
		33.766338, 37.231449, 51.725510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481998, 36.981827, 51.317169>,  <34.192898, 37.749344, 51.525925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481998, 36.981827, 51.317169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085472, 37.033741, 51.325638>,  <33.847557, 37.064888, 51.330719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085472, 37.033741, 51.325638>,  <34.481998, 36.981827, 51.317169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085472, 37.033741, 51.325638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070717, -0.390379, -0.917934,
		-0.110866, -0.911460, 0.396167,
		-0.991316, 0.129784, 0.021175,
		33.788078, 37.072678, 51.331989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207569, 36.371212, 51.157753>,  <34.481998, 36.981827, 51.317169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207569, 36.371212, 51.157753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902817, 36.615444, 51.071281>,  <33.719967, 36.761982, 51.019398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902817, 36.615444, 51.071281>,  <34.207569, 36.371212, 51.157753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902817, 36.615444, 51.071281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091857, -0.432237, -0.897070,
		-0.641173, -0.663600, 0.385398,
		-0.761879, 0.610579, -0.216182,
		33.674252, 36.798618, 51.006428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777283, 35.944023, 50.863590>,  <34.207569, 36.371212, 51.157753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777283, 35.944023, 50.863590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629158, 36.301239, 50.761330>,  <33.540283, 36.515568, 50.699974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629158, 36.301239, 50.761330>,  <33.777283, 35.944023, 50.863590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629158, 36.301239, 50.761330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171423, -0.336187, -0.926063,
		-0.912953, -0.299107, 0.277581,
		-0.370311, 0.893036, -0.255649,
		33.518066, 36.569149, 50.684635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105953, 35.879677, 50.516541>,  <33.777283, 35.944023, 50.863590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105953, 35.879677, 50.516541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253696, 36.229469, 50.390774>,  <33.342342, 36.439342, 50.315315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253696, 36.229469, 50.390774>,  <33.105953, 35.879677, 50.516541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253696, 36.229469, 50.390774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213053, -0.249643, -0.944609,
		-0.904533, 0.415891, 0.094102,
		0.369363, 0.874479, -0.314417,
		33.364506, 36.491814, 50.296448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625839, 36.091274, 49.982044>,  <33.105953, 35.879677, 50.516541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625839, 36.091274, 49.982044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954224, 36.313908, 49.931076>,  <33.151257, 36.447487, 49.900494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954224, 36.313908, 49.931076>,  <32.625839, 36.091274, 49.982044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954224, 36.313908, 49.931076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186251, 0.050088, -0.981225,
		-0.539749, 0.829282, 0.144784,
		0.820964, 0.556581, -0.127420,
		33.200512, 36.480881, 49.892849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407749, 36.548977, 49.406292>,  <32.625839, 36.091274, 49.982044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407749, 36.548977, 49.406292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806984, 36.535049, 49.426750>,  <33.046524, 36.526691, 49.439026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806984, 36.535049, 49.426750>,  <32.407749, 36.548977, 49.406292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806984, 36.535049, 49.426750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051350, 0.005122, -0.998668,
		0.034509, 0.999380, 0.006900,
		0.998084, -0.034817, 0.051141,
		33.106411, 36.524605, 49.442093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579727, 37.028946, 48.871494>,  <32.407749, 36.548977, 49.406292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579727, 37.028946, 48.871494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895172, 36.791454, 48.935463>,  <33.084438, 36.648960, 48.973846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895172, 36.791454, 48.935463>,  <32.579727, 37.028946, 48.871494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895172, 36.791454, 48.935463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243285, 0.062421, -0.967944,
		0.564710, 0.802244, 0.193670,
		0.788616, -0.593724, 0.159924,
		33.131756, 36.613338, 48.983440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054657, 37.220470, 48.352207>,  <32.579727, 37.028946, 48.871494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054657, 37.220470, 48.352207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235615, 36.888725, 48.483360>,  <33.344189, 36.689678, 48.562050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235615, 36.888725, 48.483360>,  <33.054657, 37.220470, 48.352207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235615, 36.888725, 48.483360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492284, -0.074333, -0.867255,
		0.743639, 0.553747, 0.374653,
		0.452391, -0.829360, 0.327878,
		33.371330, 36.639915, 48.581722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792004, 37.219055, 48.240112>,  <33.054657, 37.220470, 48.352207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792004, 37.219055, 48.240112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706402, 36.828663, 48.256413>,  <33.655041, 36.594429, 48.266193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706402, 36.828663, 48.256413>,  <33.792004, 37.219055, 48.240112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706402, 36.828663, 48.256413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531780, -0.151395, -0.833240,
		0.819397, -0.156647, 0.551408,
		-0.214005, -0.975982, 0.040751,
		33.642200, 36.535870, 48.268639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380539, 36.954926, 47.877407>,  <33.792004, 37.219055, 48.240112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380539, 36.954926, 47.877407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111301, 36.659389, 47.864410>,  <33.949757, 36.482067, 47.856613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111301, 36.659389, 47.864410>,  <34.380539, 36.954926, 47.877407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111301, 36.659389, 47.864410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136854, -0.081261, -0.987253,
		0.726783, -0.668962, 0.155809,
		-0.673096, -0.738842, -0.032491,
		33.909374, 36.437737, 47.854664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713253, 36.433662, 47.589424>,  <34.380539, 36.954926, 47.877407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713253, 36.433662, 47.589424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320023, 36.394230, 47.527649>,  <34.084084, 36.370571, 47.490582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320023, 36.394230, 47.527649>,  <34.713253, 36.433662, 47.589424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320023, 36.394230, 47.527649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160854, -0.060756, -0.985107,
		0.087731, -0.993273, 0.075585,
		-0.983072, -0.098583, -0.154442,
		34.025101, 36.364655, 47.481316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795647, 36.048500, 47.078888>,  <34.713253, 36.433662, 47.589424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795647, 36.048500, 47.078888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419651, 36.184525, 47.090042>,  <34.194054, 36.266140, 47.096737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419651, 36.184525, 47.090042>,  <34.795647, 36.048500, 47.078888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419651, 36.184525, 47.090042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055418, 0.232810, -0.970942,
		-0.336673, -0.911130, -0.237684,
		-0.939989, 0.340062, 0.027888,
		34.137653, 36.286545, 47.098408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519508, 35.749271, 46.554142>,  <34.795647, 36.048500, 47.078888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519508, 35.749271, 46.554142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292667, 36.073101, 46.614780>,  <34.156563, 36.267399, 46.651165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292667, 36.073101, 46.614780>,  <34.519508, 35.749271, 46.554142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292667, 36.073101, 46.614780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084310, 0.240145, -0.967069,
		-0.819321, -0.535645, -0.204442,
		-0.567102, 0.809577, 0.151596,
		34.122536, 36.315975, 46.660259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271442, 35.828049, 45.844749>,  <34.519508, 35.749271, 46.554142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271442, 35.828049, 45.844749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187004, 36.180634, 46.013729>,  <34.136341, 36.392185, 46.115116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187004, 36.180634, 46.013729>,  <34.271442, 35.828049, 45.844749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187004, 36.180634, 46.013729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237503, 0.465494, -0.852589,
		-0.948173, -0.079643, -0.307613,
		-0.211095, 0.881460, 0.422453,
		34.123676, 36.445072, 46.140465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805851, 36.165985, 45.352673>,  <34.271442, 35.828049, 45.844749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805851, 36.165985, 45.352673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967552, 36.443081, 45.591568>,  <34.064571, 36.609337, 45.734905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967552, 36.443081, 45.591568>,  <33.805851, 36.165985, 45.352673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967552, 36.443081, 45.591568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250534, 0.544132, -0.800721,
		-0.879667, 0.473321, 0.046412,
		0.404252, 0.692739, 0.597237,
		34.088829, 36.650902, 45.770741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464123, 36.806248, 45.161133>,  <33.805851, 36.165985, 45.352673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464123, 36.806248, 45.161133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806374, 36.903500, 45.343910>,  <34.011723, 36.961849, 45.453575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806374, 36.903500, 45.343910>,  <33.464123, 36.806248, 45.161133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806374, 36.903500, 45.343910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307533, 0.471299, -0.826620,
		-0.416333, 0.847800, 0.328484,
		0.855623, 0.243130, 0.456944,
		34.063061, 36.976440, 45.480995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483479, 37.495098, 45.109253>,  <33.464123, 36.806248, 45.161133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483479, 37.495098, 45.109253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872932, 37.415264, 45.153446>,  <34.106606, 37.367363, 45.179962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872932, 37.415264, 45.153446>,  <33.483479, 37.495098, 45.109253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872932, 37.415264, 45.153446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192036, 0.455658, -0.869194,
		0.123138, 0.867491, 0.481971,
		0.973632, -0.199586, 0.110481,
		34.165024, 37.355389, 45.186592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778698, 38.143173, 44.886974>,  <33.483479, 37.495098, 45.109253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778698, 38.143173, 44.886974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071125, 37.871532, 44.860542>,  <34.246582, 37.708549, 44.844685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071125, 37.871532, 44.860542>,  <33.778698, 38.143173, 44.886974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071125, 37.871532, 44.860542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352714, 0.459046, -0.815395,
		0.584071, 0.572798, 0.575120,
		0.731064, -0.679102, -0.066081,
		34.290443, 37.667801, 44.840717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260384, 38.535721, 44.524014>,  <33.778698, 38.143173, 44.886974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260384, 38.535721, 44.524014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372063, 38.154327, 44.478569>,  <34.439072, 37.925491, 44.451302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372063, 38.154327, 44.478569>,  <34.260384, 38.535721, 44.524014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372063, 38.154327, 44.478569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297114, 0.198296, -0.934025,
		0.913111, 0.227022, 0.338658,
		0.279199, -0.953488, -0.113615,
		34.455822, 37.868282, 44.444485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022476, 38.452785, 44.251518>,  <34.260384, 38.535721, 44.524014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022476, 38.452785, 44.251518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820908, 38.122059, 44.151573>,  <34.699966, 37.923622, 44.091606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820908, 38.122059, 44.151573>,  <35.022476, 38.452785, 44.251518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820908, 38.122059, 44.151573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310647, 0.096434, -0.945621,
		0.805952, -0.554141, 0.208253,
		-0.503925, -0.826818, -0.249863,
		34.669731, 37.874012, 44.076614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.848267, 29.744432, 31.133638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502251, 29.925245, 31.046579>,  <40.294640, 30.033733, 30.994345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502251, 29.925245, 31.046579>,  <40.848267, 29.744432, 31.133638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502251, 29.925245, 31.046579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148285, 0.644798, 0.749832,
		0.479288, 0.616361, -0.624806,
		-0.865040, 0.452034, -0.217647,
		40.242737, 30.060856, 30.981285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005955, 30.451393, 31.076960>,  <40.848267, 29.744432, 31.133638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005955, 30.451393, 31.076960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610104, 30.467314, 31.132172>,  <40.372593, 30.476866, 31.165298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610104, 30.467314, 31.132172>,  <41.005955, 30.451393, 31.076960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610104, 30.467314, 31.132172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125221, 0.709900, 0.693081,
		-0.070403, 0.703177, -0.707521,
		-0.989628, 0.039801, 0.138031,
		40.313217, 30.479254, 31.173580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830940, 31.069796, 30.837851>,  <41.005955, 30.451393, 31.076960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830940, 31.069796, 30.837851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565147, 30.935020, 31.104664>,  <40.405670, 30.854156, 31.264751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565147, 30.935020, 31.104664>,  <40.830940, 31.069796, 30.837851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565147, 30.935020, 31.104664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242124, 0.747372, 0.618717,
		-0.706991, 0.572633, -0.415036,
		-0.664484, -0.336937, 0.667034,
		40.365803, 30.833939, 31.304773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457951, 31.688738, 31.021158>,  <40.830940, 31.069796, 30.837851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457951, 31.688738, 31.021158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369228, 31.423838, 31.307440>,  <40.315994, 31.264898, 31.479208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369228, 31.423838, 31.307440>,  <40.457951, 31.688738, 31.021158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369228, 31.423838, 31.307440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131246, 0.707030, 0.694898,
		-0.966219, 0.248063, -0.069903,
		-0.221802, -0.662249, 0.715703,
		40.302689, 31.225163, 31.522150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948502, 32.084179, 31.429630>,  <40.457951, 31.688738, 31.021158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948502, 32.084179, 31.429630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.092739, 31.790377, 31.659578>,  <40.179283, 31.614096, 31.797546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.092739, 31.790377, 31.659578>,  <39.948502, 32.084179, 31.429630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092739, 31.790377, 31.659578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202423, 0.663271, 0.720484,
		-0.910492, -0.143437, 0.387854,
		0.360596, -0.734505, 0.574868,
		40.200916, 31.570024, 31.832039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602375, 32.090199, 32.041721>,  <39.948502, 32.084179, 31.429630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602375, 32.090199, 32.041721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.935398, 31.888531, 32.133514>,  <40.135212, 31.767530, 32.188591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.935398, 31.888531, 32.133514>,  <39.602375, 32.090199, 32.041721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935398, 31.888531, 32.133514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193336, 0.652693, 0.732539,
		-0.519107, -0.565512, 0.640878,
		0.832556, -0.504171, 0.229483,
		40.185165, 31.737280, 32.202358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721615, 32.125637, 32.766602>,  <39.602375, 32.090199, 32.041721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721615, 32.125637, 32.766602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095600, 32.036327, 32.656342>,  <40.319992, 31.982740, 32.590183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095600, 32.036327, 32.656342>,  <39.721615, 32.125637, 32.766602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095600, 32.036327, 32.656342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335251, 0.810151, 0.480898,
		0.115948, -0.542037, 0.832317,
		0.934967, -0.223276, -0.275654,
		40.376091, 31.969345, 32.573647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081833, 32.307655, 33.367554>,  <39.721615, 32.125637, 32.766602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081833, 32.307655, 33.367554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370701, 32.264942, 33.094185>,  <40.544022, 32.239315, 32.930164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370701, 32.264942, 33.094185>,  <40.081833, 32.307655, 33.367554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370701, 32.264942, 33.094185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522574, 0.731544, 0.437904,
		0.453196, -0.673381, 0.584099,
		0.722170, -0.106779, -0.683425,
		40.587353, 32.232910, 32.889156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753746, 32.245567, 33.744690>,  <40.081833, 32.307655, 33.367554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753746, 32.245567, 33.744690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.858116, 32.395752, 33.388950>,  <40.920738, 32.485863, 33.175507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.858116, 32.395752, 33.388950>,  <40.753746, 32.245567, 33.744690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858116, 32.395752, 33.388950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675215, 0.587433, 0.446102,
		0.689930, -0.716902, -0.100244,
		0.260925, 0.375465, -0.889350,
		40.936394, 32.508392, 33.122147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493942, 32.386791, 33.734756>,  <40.753746, 32.245567, 33.744690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493942, 32.386791, 33.734756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373222, 32.611687, 33.426781>,  <41.300793, 32.746624, 33.241997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373222, 32.611687, 33.426781>,  <41.493942, 32.386791, 33.734756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373222, 32.611687, 33.426781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621933, 0.728195, 0.287978,
		0.722577, -0.391937, -0.569445,
		-0.301798, 0.562243, -0.769936,
		41.282684, 32.780361, 33.195801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077263, 32.684143, 33.459156>,  <41.493942, 32.386791, 33.734756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077263, 32.684143, 33.459156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790413, 32.936066, 33.339775>,  <41.618305, 33.087219, 33.268147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790413, 32.936066, 33.339775>,  <42.077263, 32.684143, 33.459156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790413, 32.936066, 33.339775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660329, 0.750974, -0.001894,
		0.222935, -0.198433, -0.954424,
		-0.717123, 0.629811, -0.298449,
		41.575275, 33.125008, 33.250240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402924, 33.062416, 32.856731>,  <42.077263, 32.684143, 33.459156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402924, 33.062416, 32.856731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119270, 33.275219, 33.041813>,  <41.949078, 33.402901, 33.152863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119270, 33.275219, 33.041813>,  <42.402924, 33.062416, 32.856731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119270, 33.275219, 33.041813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549657, 0.828145, -0.109781,
		-0.441591, 0.176480, -0.879689,
		-0.709136, 0.532006, 0.462705,
		41.906528, 33.434822, 33.180626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515182, 33.710320, 32.529758>,  <42.402924, 33.062416, 32.856731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515182, 33.710320, 32.529758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279873, 33.794044, 32.842201>,  <42.138687, 33.844280, 33.029667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279873, 33.794044, 32.842201>,  <42.515182, 33.710320, 32.529758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279873, 33.794044, 32.842201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388561, 0.920272, 0.046038,
		-0.709191, 0.330588, -0.622703,
		-0.588276, 0.209308, 0.781103,
		42.103390, 33.856838, 33.076530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243031, 34.330532, 32.353802>,  <42.515182, 33.710320, 32.529758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243031, 34.330532, 32.353802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145592, 34.319729, 32.741600>,  <42.087128, 34.313248, 32.974281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145592, 34.319729, 32.741600>,  <42.243031, 34.330532, 32.353802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145592, 34.319729, 32.741600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414992, 0.900582, 0.129361,
		-0.876608, 0.433847, -0.208171,
		-0.243598, -0.027010, 0.969500,
		42.072514, 34.311626, 33.032452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063385, 35.035896, 32.520782>,  <42.243031, 34.330532, 32.353802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063385, 35.035896, 32.520782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137001, 34.877541, 32.880650>,  <42.181171, 34.782528, 33.096569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.137001, 34.877541, 32.880650>,  <42.063385, 35.035896, 32.520782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137001, 34.877541, 32.880650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447918, 0.848520, 0.281749,
		-0.874927, 0.351123, 0.333490,
		0.184044, -0.395886, 0.899668,
		42.192215, 34.758774, 33.150551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788258, 35.553425, 32.898865>,  <42.063385, 35.035896, 32.520782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788258, 35.553425, 32.898865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043064, 35.341873, 33.123184>,  <42.195950, 35.214943, 33.257774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043064, 35.341873, 33.123184>,  <41.788258, 35.553425, 32.898865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043064, 35.341873, 33.123184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480069, 0.841390, 0.248189,
		-0.603111, 0.111120, 0.789880,
		0.637018, -0.528882, 0.560796,
		42.234169, 35.183208, 33.291424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744701, 35.877632, 33.520756>,  <41.788258, 35.553425, 32.898865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744701, 35.877632, 33.520756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083870, 35.665619, 33.516735>,  <42.287369, 35.538410, 33.514324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083870, 35.665619, 33.516735>,  <41.744701, 35.877632, 33.520756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083870, 35.665619, 33.516735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518389, 0.825025, 0.224959,
		-0.110941, -0.195958, 0.974316,
		0.847918, -0.530032, -0.010053,
		42.338245, 35.506611, 33.513718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917988, 35.971897, 34.147488>,  <41.744701, 35.877632, 33.520756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917988, 35.971897, 34.147488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247307, 35.855053, 33.952816>,  <42.444897, 35.784946, 33.836014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247307, 35.855053, 33.952816>,  <41.917988, 35.971897, 34.147488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247307, 35.855053, 33.952816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528807, 0.706318, 0.470616,
		0.206277, -0.644814, 0.735978,
		0.823294, -0.292113, -0.486679,
		42.494293, 35.767418, 33.806812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517735, 35.971344, 34.572220>,  <41.917988, 35.971897, 34.147488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517735, 35.971344, 34.572220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705750, 35.995686, 34.220001>,  <42.818558, 36.010288, 34.008671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705750, 35.995686, 34.220001>,  <42.517735, 35.971344, 34.572220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705750, 35.995686, 34.220001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568211, 0.742545, 0.354630,
		0.675423, -0.667026, 0.314452,
		0.470042, 0.060850, -0.880544,
		42.846764, 36.013939, 33.955837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321014, 35.887093, 34.699596>,  <42.517735, 35.971344, 34.572220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321014, 35.887093, 34.699596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.233173, 36.077240, 34.358822>,  <43.180470, 36.191330, 34.154358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.233173, 36.077240, 34.358822>,  <43.321014, 35.887093, 34.699596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233173, 36.077240, 34.358822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619483, 0.742556, 0.254658,
		0.753668, -0.471838, -0.457552,
		-0.219600, 0.475373, -0.851937,
		43.167294, 36.219852, 34.103241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733700, 36.358521, 34.769547>,  <43.321014, 35.887093, 34.699596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733700, 36.358521, 34.769547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575661, 36.490246, 34.426514>,  <43.480839, 36.569279, 34.220692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575661, 36.490246, 34.426514>,  <43.733700, 36.358521, 34.769547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575661, 36.490246, 34.426514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550630, 0.832147, 0.065860,
		0.735325, -0.446191, -0.510109,
		-0.395099, 0.329310, -0.857585,
		43.457130, 36.589039, 34.169239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072617, 35.970905, 35.345497>,  <43.733700, 36.358521, 34.769547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072617, 35.970905, 35.345497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349377, 35.836678, 35.601204>,  <44.515434, 35.756142, 35.754627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349377, 35.836678, 35.601204>,  <44.072617, 35.970905, 35.345497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349377, 35.836678, 35.601204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117956, -0.926069, -0.358445,
		0.712289, 0.172604, -0.680332,
		0.691903, -0.335566, 0.639269,
		44.556950, 35.736008, 35.792984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373833, 35.407619, 34.937851>,  <44.072617, 35.970905, 35.345497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373833, 35.407619, 34.937851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495506, 35.360184, 35.315933>,  <44.568512, 35.331722, 35.542782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495506, 35.360184, 35.315933>,  <44.373833, 35.407619, 34.937851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495506, 35.360184, 35.315933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020130, -0.991199, -0.130842,
		0.952400, 0.058828, -0.299122,
		0.304187, -0.118592, 0.945202,
		44.586761, 35.324608, 35.599495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018551, 35.087368, 34.879364>,  <44.373833, 35.407619, 34.937851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018551, 35.087368, 34.879364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.850216, 34.987457, 35.228191>,  <44.749214, 34.927509, 35.437489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.850216, 34.987457, 35.228191>,  <45.018551, 35.087368, 34.879364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850216, 34.987457, 35.228191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012670, -0.959632, -0.280975,
		0.907046, -0.129294, 0.400687,
		-0.420840, -0.249780, 0.872068,
		44.723965, 34.912521, 35.489811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407398, 34.529461, 35.125973>,  <45.018551, 35.087368, 34.879364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407398, 34.529461, 35.125973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.050140, 34.505608, 35.304291>,  <44.835785, 34.491295, 35.411282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.050140, 34.505608, 35.304291>,  <45.407398, 34.529461, 35.125973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050140, 34.505608, 35.304291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046431, -0.973651, -0.223266,
		0.447364, -0.220108, 0.866844,
		-0.893146, -0.059632, 0.445796,
		44.782196, 34.487717, 35.438030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440151, 33.829487, 35.294922>,  <45.407398, 34.529461, 35.125973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440151, 33.829487, 35.294922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060299, 33.950294, 35.328346>,  <44.832386, 34.022778, 35.348400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060299, 33.950294, 35.328346>,  <45.440151, 33.829487, 35.294922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060299, 33.950294, 35.328346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307901, -0.849732, -0.427964,
		-0.058248, -0.432137, 0.899925,
		-0.949634, 0.302016, 0.083560,
		44.775410, 34.040901, 35.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025604, 33.257473, 35.627907>,  <45.440151, 33.829487, 35.294922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025604, 33.257473, 35.627907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775608, 33.478550, 35.407391>,  <44.625610, 33.611195, 35.275082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775608, 33.478550, 35.407391>,  <45.025604, 33.257473, 35.627907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775608, 33.478550, 35.407391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275297, -0.816886, -0.506862,
		-0.730478, -0.165016, 0.662701,
		-0.624991, 0.552690, -0.551289,
		44.588112, 33.644356, 35.242004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420479, 32.862530, 35.626678>,  <45.025604, 33.257473, 35.627907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420479, 32.862530, 35.626678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382996, 33.118294, 35.321423>,  <44.360504, 33.271751, 35.138271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382996, 33.118294, 35.321423>,  <44.420479, 32.862530, 35.626678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382996, 33.118294, 35.321423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385027, -0.730145, -0.564484,
		-0.918135, 0.240929, 0.314612,
		-0.093712, 0.639407, -0.763136,
		44.354881, 33.310116, 35.092484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759377, 32.812866, 35.386581>,  <44.420479, 32.862530, 35.626678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759377, 32.812866, 35.386581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.902184, 33.003864, 35.065449>,  <43.987869, 33.118462, 34.872768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.902184, 33.003864, 35.065449>,  <43.759377, 32.812866, 35.386581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902184, 33.003864, 35.065449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408661, -0.693014, -0.593909,
		-0.839960, 0.540123, -0.052287,
		0.357019, 0.477492, -0.802832,
		44.009289, 33.147114, 34.824600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338257, 32.560135, 34.808014>,  <43.759377, 32.812866, 35.386581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338257, 32.560135, 34.808014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643269, 32.740234, 34.622185>,  <43.826275, 32.848293, 34.510685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643269, 32.740234, 34.622185>,  <43.338257, 32.560135, 34.808014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643269, 32.740234, 34.622185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185089, -0.536259, -0.823510,
		-0.619917, 0.713936, -0.325576,
		0.762526, 0.450247, -0.464578,
		43.872025, 32.875309, 34.482811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079540, 32.854015, 34.175240>,  <43.338257, 32.560135, 34.808014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079540, 32.854015, 34.175240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466793, 32.756905, 34.150673>,  <43.699146, 32.698639, 34.135933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466793, 32.756905, 34.150673>,  <43.079540, 32.854015, 34.175240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466793, 32.756905, 34.150673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170745, -0.460531, -0.871067,
		0.183189, 0.853798, -0.487309,
		0.968136, -0.242776, -0.061418,
		43.757233, 32.684071, 34.132248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241547, 32.862518, 33.521439>,  <43.079540, 32.854015, 34.175240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241547, 32.862518, 33.521439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562843, 32.658775, 33.644955>,  <43.755623, 32.536530, 33.719067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562843, 32.658775, 33.644955>,  <43.241547, 32.862518, 33.521439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562843, 32.658775, 33.644955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043537, -0.466824, -0.883278,
		0.594056, 0.722932, -0.352798,
		0.803244, -0.509357, 0.308794,
		43.803818, 32.505970, 33.737595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833202, 32.901772, 32.963860>,  <43.241547, 32.862518, 33.521439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833202, 32.901772, 32.963860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918110, 32.584709, 33.192467>,  <43.969055, 32.394470, 33.329632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918110, 32.584709, 33.192467>,  <43.833202, 32.901772, 32.963860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918110, 32.584709, 33.192467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087178, -0.597876, -0.796834,
		0.973315, 0.119318, -0.196013,
		0.212268, -0.792659, 0.571520,
		43.981789, 32.346912, 33.363922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275181, 32.582424, 32.579922>,  <43.833202, 32.901772, 32.963860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275181, 32.582424, 32.579922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125534, 32.301872, 32.822605>,  <44.035748, 32.133541, 32.968216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125534, 32.301872, 32.822605>,  <44.275181, 32.582424, 32.579922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125534, 32.301872, 32.822605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126273, -0.609601, -0.782586,
		0.918746, -0.369388, 0.139494,
		-0.374113, -0.701383, 0.606713,
		44.013302, 32.091457, 33.004620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494320, 31.964294, 32.270424>,  <44.275181, 32.582424, 32.579922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494320, 31.964294, 32.270424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192997, 31.856350, 32.510323>,  <44.012203, 31.791582, 32.654263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192997, 31.856350, 32.510323>,  <44.494320, 31.964294, 32.270424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192997, 31.856350, 32.510323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401626, -0.533369, -0.744456,
		0.520788, -0.801680, 0.293408,
		-0.753310, -0.269863, 0.599748,
		43.967003, 31.775391, 32.690247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485050, 31.225746, 32.292271>,  <44.494320, 31.964294, 32.270424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485050, 31.225746, 32.292271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116550, 31.325232, 32.411892>,  <43.895451, 31.384922, 32.483665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116550, 31.325232, 32.411892>,  <44.485050, 31.225746, 32.292271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116550, 31.325232, 32.411892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383161, -0.712577, -0.587726,
		0.066922, -0.656030, 0.751762,
		-0.921254, 0.248714, 0.299052,
		43.840176, 31.399845, 32.501606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214096, 30.679796, 32.513199>,  <44.485050, 31.225746, 32.292271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214096, 30.679796, 32.513199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895000, 30.904131, 32.424587>,  <43.703545, 31.038733, 32.371418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895000, 30.904131, 32.424587>,  <44.214096, 30.679796, 32.513199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895000, 30.904131, 32.424587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359879, -0.737582, -0.571367,
		-0.483841, -0.376077, 0.790230,
		-0.797737, 0.560838, -0.221530,
		43.655678, 31.072382, 32.358128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697346, 30.279167, 32.380821>,  <44.214096, 30.679796, 32.513199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697346, 30.279167, 32.380821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524715, 30.595287, 32.206848>,  <43.421139, 30.784960, 32.102463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524715, 30.595287, 32.206848>,  <43.697346, 30.279167, 32.380821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524715, 30.595287, 32.206848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340738, -0.589245, -0.732590,
		-0.835249, -0.167969, 0.523589,
		-0.431575, 0.790301, -0.434933,
		43.395245, 30.832378, 32.076366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008198, 30.175747, 32.301777>,  <43.697346, 30.279167, 32.380821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008198, 30.175747, 32.301777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073765, 30.466763, 32.035297>,  <43.113106, 30.641373, 31.875410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073765, 30.466763, 32.035297>,  <43.008198, 30.175747, 32.301777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073765, 30.466763, 32.035297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236884, -0.626540, -0.742518,
		-0.957610, 0.279522, 0.069642,
		0.163917, 0.727540, -0.666196,
		43.122940, 30.685024, 31.835440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452339, 30.109285, 31.657679>,  <43.008198, 30.175747, 32.301777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452339, 30.109285, 31.657679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772495, 30.309767, 31.526127>,  <42.964588, 30.430056, 31.447195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772495, 30.309767, 31.526127>,  <42.452339, 30.109285, 31.657679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772495, 30.309767, 31.526127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062629, -0.475701, -0.877375,
		-0.596195, 0.722843, -0.349358,
		0.800393, 0.501206, -0.328882,
		43.012615, 30.460129, 31.427462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275318, 30.215385, 30.975962>,  <42.452339, 30.109285, 31.657679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275318, 30.215385, 30.975962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.660210, 30.324276, 30.976088>,  <42.891144, 30.389610, 30.976162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.660210, 30.324276, 30.976088>,  <42.275318, 30.215385, 30.975962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660210, 30.324276, 30.976088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105945, -0.373425, -0.921591,
		-0.250764, 0.886819, -0.388163,
		0.962233, 0.272225, 0.000313,
		42.948879, 30.405943, 30.976181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374096, 30.440603, 30.327477>,  <42.275318, 30.215385, 30.975962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374096, 30.440603, 30.327477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727478, 30.337828, 30.484190>,  <42.939507, 30.276163, 30.578218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727478, 30.337828, 30.484190>,  <42.374096, 30.440603, 30.327477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727478, 30.337828, 30.484190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185106, -0.576770, -0.795658,
		0.430405, 0.775447, -0.461988,
		0.883452, -0.256939, 0.391785,
		42.992512, 30.260746, 30.601725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.249763, 40.157619, 41.231499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097282, 39.821117, 41.078148>,  <39.005795, 39.619217, 40.986137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097282, 39.821117, 41.078148>,  <39.249763, 40.157619, 41.231499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097282, 39.821117, 41.078148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615188, 0.078724, -0.784441,
		0.690096, -0.534876, 0.487521,
		-0.381199, -0.841256, -0.383376,
		38.982922, 39.568741, 40.963135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798161, 39.865891, 40.980900>,  <39.249763, 40.157619, 41.231499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798161, 39.865891, 40.980900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500504, 39.695518, 40.775055>,  <39.321907, 39.593296, 40.651546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500504, 39.695518, 40.775055>,  <39.798161, 39.865891, 40.980900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500504, 39.695518, 40.775055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573760, -0.012993, -0.818921,
		0.342119, -0.904662, 0.254052,
		-0.744147, -0.425933, -0.514613,
		39.277260, 39.567738, 40.620670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074055, 39.192993, 40.754196>,  <39.798161, 39.865891, 40.980900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074055, 39.192993, 40.754196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752213, 39.265697, 40.528072>,  <39.559109, 39.309322, 40.392399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752213, 39.265697, 40.528072>,  <40.074055, 39.192993, 40.754196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752213, 39.265697, 40.528072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489305, -0.336439, -0.804605,
		-0.336439, -0.923997, 0.181763,
		0.804605, -0.181763, 0.565308,
		39.510830, 39.320225, 40.358479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982906, 38.681713, 40.307995>,  <40.074055, 39.192993, 40.754196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982906, 38.681713, 40.307995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734257, 38.945816, 40.139404>,  <39.585068, 39.104279, 40.038250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734257, 38.945816, 40.139404>,  <39.982906, 38.681713, 40.307995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734257, 38.945816, 40.139404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281714, -0.313626, -0.906794,
		-0.730906, -0.682419, 0.008952,
		-0.621621, 0.660259, -0.421479,
		39.547771, 39.143894, 40.012962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449234, 38.293674, 39.844372>,  <39.982906, 38.681713, 40.307995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449234, 38.293674, 39.844372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501701, 38.675415, 39.737034>,  <39.533180, 38.904461, 39.672630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501701, 38.675415, 39.737034>,  <39.449234, 38.293674, 39.844372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501701, 38.675415, 39.737034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162329, -0.287706, -0.943862,
		-0.977980, 0.080245, -0.192657,
		0.131168, 0.954351, -0.268344,
		39.541050, 38.961720, 39.656532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181015, 38.311398, 39.200851>,  <39.449234, 38.293674, 39.844372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181015, 38.311398, 39.200851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399464, 38.646435, 39.206478>,  <39.530533, 38.847458, 39.209854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399464, 38.646435, 39.206478>,  <39.181015, 38.311398, 39.200851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399464, 38.646435, 39.206478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334206, -0.202444, -0.920501,
		-0.768154, 0.507406, -0.390486,
		0.546120, 0.837589, 0.014070,
		39.563301, 38.897713, 39.210701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056389, 38.571625, 38.526642>,  <39.181015, 38.311398, 39.200851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056389, 38.571625, 38.526642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384212, 38.774921, 38.632481>,  <39.580906, 38.896900, 38.695984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384212, 38.774921, 38.632481>,  <39.056389, 38.571625, 38.526642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384212, 38.774921, 38.632481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363937, -0.105037, -0.925482,
		-0.442575, 0.854785, -0.271052,
		0.819559, 0.508241, 0.264601,
		39.630081, 38.927395, 38.711861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079220, 39.132900, 38.023800>,  <39.056389, 38.571625, 38.526642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079220, 39.132900, 38.023800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444958, 39.069592, 38.172886>,  <39.664402, 39.031609, 38.262337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444958, 39.069592, 38.172886>,  <39.079220, 39.132900, 38.023800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444958, 39.069592, 38.172886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371540, -0.038086, -0.927636,
		0.161010, 0.986661, 0.023979,
		0.914349, -0.158268, 0.372716,
		39.719261, 39.022110, 38.284702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467739, 39.524719, 37.549187>,  <39.079220, 39.132900, 38.023800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467739, 39.524719, 37.549187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712868, 39.288429, 37.759136>,  <39.859943, 39.146656, 37.885105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712868, 39.288429, 37.759136>,  <39.467739, 39.524719, 37.549187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712868, 39.288429, 37.759136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403314, -0.337373, -0.850598,
		0.679549, 0.732954, 0.031498,
		0.612822, -0.590727, 0.524872,
		39.896713, 39.111210, 37.916599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150063, 39.718445, 37.280926>,  <39.467739, 39.524719, 37.549187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150063, 39.718445, 37.280926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161976, 39.359791, 37.457630>,  <40.169125, 39.144596, 37.563652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161976, 39.359791, 37.457630>,  <40.150063, 39.718445, 37.280926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161976, 39.359791, 37.457630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546079, -0.355578, -0.758527,
		0.837204, 0.263830, 0.479044,
		0.029785, -0.896637, 0.441763,
		40.170910, 39.090801, 37.590160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854393, 39.570808, 37.358028>,  <40.150063, 39.718445, 37.280926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854393, 39.570808, 37.358028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649731, 39.227512, 37.341885>,  <40.526932, 39.021534, 37.332199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649731, 39.227512, 37.341885>,  <40.854393, 39.570808, 37.358028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649731, 39.227512, 37.341885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527035, -0.276414, -0.803635,
		0.678557, -0.432457, 0.593752,
		-0.511659, -0.858240, -0.040358,
		40.496231, 38.970039, 37.329777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330685, 39.137432, 37.262646>,  <40.854393, 39.570808, 37.358028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330685, 39.137432, 37.262646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007767, 38.936089, 37.139420>,  <40.814018, 38.815281, 37.065483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007767, 38.936089, 37.139420>,  <41.330685, 39.137432, 37.262646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007767, 38.936089, 37.139420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474650, -0.243601, -0.845793,
		0.350694, -0.829027, 0.435577,
		-0.807293, -0.503362, -0.308068,
		40.765579, 38.785080, 37.047001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478294, 38.589851, 36.867668>,  <41.330685, 39.137432, 37.262646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478294, 38.589851, 36.867668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093323, 38.590054, 36.759052>,  <40.862339, 38.590176, 36.693882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093323, 38.590054, 36.759052>,  <41.478294, 38.589851, 36.867668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093323, 38.590054, 36.759052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250215, -0.386775, -0.887580,
		-0.105475, -0.922174, 0.372116,
		-0.962428, 0.000508, -0.271537,
		40.804596, 38.590206, 36.677589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593334, 37.992188, 36.245747>,  <41.478294, 38.589851, 36.867668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593334, 37.992188, 36.245747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793449, 37.692081, 36.072857>,  <41.913517, 37.512020, 35.969124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793449, 37.692081, 36.072857>,  <41.593334, 37.992188, 36.245747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793449, 37.692081, 36.072857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499232, -0.657801, 0.563973,
		-0.707449, -0.066364, -0.703642,
		0.500284, -0.750263, -0.432230,
		41.943535, 37.467003, 35.943188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085064, 37.542912, 36.038223>,  <41.593334, 37.992188, 36.245747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085064, 37.542912, 36.038223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425163, 37.342674, 36.103329>,  <41.629223, 37.222534, 36.142391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425163, 37.342674, 36.103329>,  <41.085064, 37.542912, 36.038223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425163, 37.342674, 36.103329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499464, -0.669607, 0.549692,
		-0.166181, -0.548669, -0.819357,
		0.850247, -0.500588, 0.162764,
		41.680237, 37.192497, 36.152157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963772, 36.859638, 35.837524>,  <41.085064, 37.542912, 36.038223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963772, 36.859638, 35.837524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268536, 36.841908, 36.095989>,  <41.451393, 36.831268, 36.251068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268536, 36.841908, 36.095989>,  <40.963772, 36.859638, 35.837524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268536, 36.841908, 36.095989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413154, -0.801577, 0.432178,
		0.498795, -0.596246, -0.629043,
		0.761911, -0.044323, 0.646164,
		41.497108, 36.828609, 36.289837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906021, 36.229080, 36.051174>,  <40.963772, 36.859638, 35.837524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906021, 36.229080, 36.051174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141754, 36.380699, 36.336555>,  <41.283192, 36.471672, 36.507782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141754, 36.380699, 36.336555>,  <40.906021, 36.229080, 36.051174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141754, 36.380699, 36.336555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347986, -0.677882, 0.647597,
		0.729107, -0.629919, -0.267591,
		0.589329, 0.379050, 0.713452,
		41.318554, 36.494415, 36.550591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148628, 35.567604, 36.272606>,  <40.906021, 36.229080, 36.051174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148628, 35.567604, 36.272606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215698, 35.851894, 36.545883>,  <41.255939, 36.022469, 36.709850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215698, 35.851894, 36.545883>,  <41.148628, 35.567604, 36.272606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215698, 35.851894, 36.545883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284212, -0.628728, 0.723826,
		0.943985, -0.315542, 0.096573,
		0.167679, 0.710728, 0.683190,
		41.266003, 36.065113, 36.750839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564800, 35.258991, 36.867180>,  <41.148628, 35.567604, 36.272606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564800, 35.258991, 36.867180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387558, 35.584888, 37.016766>,  <41.281212, 35.780426, 37.106518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387558, 35.584888, 37.016766>,  <41.564800, 35.258991, 36.867180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387558, 35.584888, 37.016766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121778, -0.467993, 0.875302,
		0.888158, 0.342313, 0.306590,
		-0.443109, 0.814742, 0.373965,
		41.254623, 35.829311, 37.128956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853760, 35.224117, 37.486328>,  <41.564800, 35.258991, 36.867180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853760, 35.224117, 37.486328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517307, 35.439354, 37.508030>,  <41.315434, 35.568497, 37.521049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517307, 35.439354, 37.508030>,  <41.853760, 35.224117, 37.486328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517307, 35.439354, 37.508030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291769, -0.535963, 0.792221,
		0.455370, 0.650535, 0.607817,
		-0.841136, 0.538096, 0.054255,
		41.264965, 35.600784, 37.524307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723267, 35.523815, 38.197495>,  <41.853760, 35.224117, 37.486328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723267, 35.523815, 38.197495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367935, 35.518547, 38.013889>,  <41.154736, 35.515385, 37.903725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367935, 35.518547, 38.013889>,  <41.723267, 35.523815, 38.197495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367935, 35.518547, 38.013889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421491, -0.373321, 0.826424,
		-0.182248, 0.927609, 0.326080,
		-0.888331, -0.013174, -0.459016,
		41.101437, 35.514595, 37.876186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255165, 35.823277, 38.682827>,  <41.723267, 35.523815, 38.197495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255165, 35.823277, 38.682827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012928, 35.640812, 38.422005>,  <40.867584, 35.531334, 38.265511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012928, 35.640812, 38.422005>,  <41.255165, 35.823277, 38.682827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012928, 35.640812, 38.422005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595940, -0.283046, 0.751493,
		-0.527362, 0.843684, -0.100434,
		-0.605595, -0.456162, -0.652052,
		40.831249, 35.503963, 38.226391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552158, 36.035191, 38.817734>,  <41.255165, 35.823277, 38.682827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552158, 36.035191, 38.817734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515072, 35.696815, 38.607670>,  <40.492821, 35.493790, 38.481632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515072, 35.696815, 38.607670>,  <40.552158, 36.035191, 38.817734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515072, 35.696815, 38.607670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773685, -0.270791, 0.572786,
		-0.626750, 0.459417, -0.629381,
		-0.092717, -0.845936, -0.525162,
		40.487255, 35.443035, 38.450123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945969, 36.077335, 38.720123>,  <40.552158, 36.035191, 38.817734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945969, 36.077335, 38.720123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031590, 35.691105, 38.661015>,  <40.082962, 35.459366, 38.625549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031590, 35.691105, 38.661015>,  <39.945969, 36.077335, 38.720123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031590, 35.691105, 38.661015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646587, -0.253448, 0.719507,
		-0.732193, -0.058467, -0.678583,
		0.214052, -0.965580, -0.147769,
		40.095806, 35.401432, 38.616684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369125, 35.710087, 38.707863>,  <39.945969, 36.077335, 38.720123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369125, 35.710087, 38.707863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633366, 35.423141, 38.796398>,  <39.791912, 35.250973, 38.849518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633366, 35.423141, 38.796398>,  <39.369125, 35.710087, 38.707863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633366, 35.423141, 38.796398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647467, -0.395179, 0.651628,
		-0.379981, -0.573784, -0.725525,
		0.660606, -0.717360, 0.221346,
		39.831547, 35.207932, 38.862801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987949, 35.067436, 38.676361>,  <39.369125, 35.710087, 38.707863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987949, 35.067436, 38.676361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301807, 35.036781, 38.922440>,  <39.490120, 35.018387, 39.070087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301807, 35.036781, 38.922440>,  <38.987949, 35.067436, 38.676361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301807, 35.036781, 38.922440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592091, -0.386776, 0.706988,
		0.183760, -0.918983, -0.348858,
		0.784640, -0.076639, 0.615196,
		39.537201, 35.013790, 39.106998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789036, 34.578228, 39.093807>,  <38.987949, 35.067436, 38.676361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789036, 34.578228, 39.093807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094494, 34.697533, 39.322853>,  <39.277767, 34.769115, 39.460281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094494, 34.697533, 39.322853>,  <38.789036, 34.578228, 39.093807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094494, 34.697533, 39.322853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519725, -0.242214, 0.819279,
		0.383055, -0.923240, -0.029951,
		0.763645, 0.298263, 0.572612,
		39.323589, 34.787010, 39.494637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806992, 34.115150, 39.620720>,  <38.789036, 34.578228, 39.093807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806992, 34.115150, 39.620720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016911, 34.417309, 39.777672>,  <39.142860, 34.598606, 39.871845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016911, 34.417309, 39.777672>,  <38.806992, 34.115150, 39.620720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016911, 34.417309, 39.777672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377183, -0.206877, 0.902737,
		0.763102, -0.621750, 0.176356,
		0.524793, 0.755399, 0.392382,
		39.174347, 34.643929, 39.895386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821827, 33.322472, 39.607037>,  <38.806992, 34.115150, 39.620720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821827, 33.322472, 39.607037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504993, 33.078308, 39.606709>,  <38.314892, 32.931808, 39.606510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504993, 33.078308, 39.606709>,  <38.821827, 33.322472, 39.607037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504993, 33.078308, 39.606709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002735, -0.002198, -0.999994,
		0.610405, -0.792082, 0.003410,
		-0.792085, -0.610410, -0.000825,
		38.267368, 32.895184, 39.606461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001324, 32.814480, 39.174137>,  <38.821827, 33.322472, 39.607037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001324, 32.814480, 39.174137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602802, 32.781513, 39.183765>,  <38.363689, 32.761734, 39.189541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602802, 32.781513, 39.183765>,  <39.001324, 32.814480, 39.174137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602802, 32.781513, 39.183765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004608, -0.228562, -0.973519,
		0.085738, -0.970034, 0.227338,
		-0.996308, -0.082420, 0.024066,
		38.303909, 32.756786, 39.190987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920918, 32.315323, 38.606388>,  <39.001324, 32.814480, 39.174137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920918, 32.315323, 38.606388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552921, 32.451969, 38.683235>,  <38.332123, 32.533958, 38.729343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552921, 32.451969, 38.683235>,  <38.920918, 32.315323, 38.606388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552921, 32.451969, 38.683235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208516, -0.011579, -0.977950,
		-0.331863, -0.939767, 0.081886,
		-0.919994, 0.341620, 0.192114,
		38.276924, 32.554455, 38.740868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412643, 31.815893, 38.296188>,  <38.920918, 32.315323, 38.606388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412643, 31.815893, 38.296188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237778, 32.172817, 38.341206>,  <38.132858, 32.386971, 38.368214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237778, 32.172817, 38.341206>,  <38.412643, 31.815893, 38.296188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237778, 32.172817, 38.341206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155337, 0.048338, -0.986678,
		-0.885864, -0.448825, 0.117477,
		-0.437167, 0.892312, 0.112540,
		38.106628, 32.440510, 38.374966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826771, 31.754877, 37.905392>,  <38.412643, 31.815893, 38.296188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826771, 31.754877, 37.905392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911514, 32.143501, 37.947701>,  <37.962360, 32.376675, 37.973083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911514, 32.143501, 37.947701>,  <37.826771, 31.754877, 37.905392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911514, 32.143501, 37.947701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405006, 0.185777, -0.895241,
		-0.889429, 0.146832, 0.432846,
		0.211862, 0.971559, 0.105768,
		37.975075, 32.434971, 37.979431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160648, 32.075043, 37.857613>,  <37.826771, 31.754877, 37.905392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160648, 32.075043, 37.857613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453457, 32.336960, 37.782372>,  <37.629143, 32.494110, 37.737228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453457, 32.336960, 37.782372>,  <37.160648, 32.075043, 37.857613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453457, 32.336960, 37.782372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403142, 0.193759, -0.894390,
		-0.549198, 0.730546, 0.405812,
		0.732023, 0.654797, -0.188102,
		37.673065, 32.533398, 37.725941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888397, 32.657650, 37.641685>,  <37.160648, 32.075043, 37.857613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888397, 32.657650, 37.641685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261112, 32.713810, 37.507782>,  <37.484741, 32.747505, 37.427441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261112, 32.713810, 37.507782>,  <36.888397, 32.657650, 37.641685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261112, 32.713810, 37.507782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361658, 0.279512, -0.889425,
		-0.031304, 0.949822, 0.311222,
		0.931785, 0.140398, -0.334760,
		37.540649, 32.755928, 37.407352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868671, 33.328785, 37.311928>,  <36.888397, 32.657650, 37.641685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868671, 33.328785, 37.311928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194275, 33.135891, 37.182411>,  <37.389637, 33.020153, 37.104702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194275, 33.135891, 37.182411>,  <36.868671, 33.328785, 37.311928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194275, 33.135891, 37.182411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316462, 0.099253, -0.943399,
		0.487077, 0.870402, -0.071816,
		0.814008, -0.482234, -0.323792,
		37.438477, 32.991222, 37.085274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097233, 33.818943, 36.832874>,  <36.868671, 33.328785, 37.311928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097233, 33.818943, 36.832874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264477, 33.472775, 36.722439>,  <37.364822, 33.265072, 36.656178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264477, 33.472775, 36.722439>,  <37.097233, 33.818943, 36.832874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264477, 33.472775, 36.722439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228360, 0.194031, -0.954046,
		0.879223, 0.461947, -0.116501,
		0.418114, -0.865423, -0.276087,
		37.389912, 33.213146, 36.639614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492996, 33.934467, 36.171616>,  <37.097233, 33.818943, 36.832874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492996, 33.934467, 36.171616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407150, 33.543789, 36.170654>,  <37.355640, 33.309383, 36.170078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407150, 33.543789, 36.170654>,  <37.492996, 33.934467, 36.171616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407150, 33.543789, 36.170654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330323, 0.074903, -0.940891,
		0.919144, -0.201138, -0.338700,
		-0.214619, -0.976695, -0.002406,
		37.342766, 33.250782, 36.169933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789463, 33.622650, 35.597549>,  <37.492996, 33.934467, 36.171616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789463, 33.622650, 35.597549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513237, 33.353355, 35.703278>,  <37.347500, 33.191776, 35.766716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513237, 33.353355, 35.703278>,  <37.789463, 33.622650, 35.597549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513237, 33.353355, 35.703278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340373, -0.019954, -0.940079,
		0.638174, -0.739153, -0.215374,
		-0.690565, -0.673242, 0.264322,
		37.306068, 33.151382, 35.782574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573078, 33.201237, 35.034588>,  <37.789463, 33.622650, 35.597549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573078, 33.201237, 35.034588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280636, 33.074566, 35.276314>,  <37.105171, 32.998562, 35.421349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280636, 33.074566, 35.276314>,  <37.573078, 33.201237, 35.034588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280636, 33.074566, 35.276314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635166, -0.007452, -0.772340,
		0.249088, -0.948503, -0.195696,
		-0.731108, -0.316680, 0.604313,
		37.061302, 32.979561, 35.457607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.462006, 31.812473, 43.446812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077946, 31.816244, 43.335075>,  <37.847511, 31.818506, 43.268036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077946, 31.816244, 43.335075>,  <38.462006, 31.812473, 43.446812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077946, 31.816244, 43.335075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279496, 0.033013, -0.959579,
		0.000169, -0.999410, -0.034335,
		-0.960147, 0.009434, -0.279337,
		37.789902, 31.819073, 43.251274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502911, 31.368006, 42.846306>,  <38.462006, 31.812473, 43.446812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502911, 31.368006, 42.846306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144829, 31.545767, 42.833000>,  <37.929977, 31.652424, 42.825016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144829, 31.545767, 42.833000>,  <38.502911, 31.368006, 42.846306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144829, 31.545767, 42.833000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064826, 0.056004, -0.996324,
		-0.440907, -0.894075, -0.078945,
		-0.895209, 0.444403, -0.033267,
		37.876266, 31.679089, 42.823021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058315, 31.072037, 42.298069>,  <38.502911, 31.368006, 42.846306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058315, 31.072037, 42.298069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970448, 31.460268, 42.337517>,  <37.917728, 31.693207, 42.361187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970448, 31.460268, 42.337517>,  <38.058315, 31.072037, 42.298069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970448, 31.460268, 42.337517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033778, 0.108593, -0.993512,
		-0.974990, -0.214911, -0.056639,
		-0.219668, 0.970577, 0.098618,
		37.904549, 31.751442, 42.367104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619541, 31.191267, 41.727905>,  <38.058315, 31.072037, 42.298069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619541, 31.191267, 41.727905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738880, 31.557831, 41.834621>,  <37.810482, 31.777769, 41.898651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738880, 31.557831, 41.834621>,  <37.619541, 31.191267, 41.727905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738880, 31.557831, 41.834621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027931, 0.271019, -0.962169,
		-0.954048, 0.294513, 0.055262,
		0.298348, 0.916412, 0.266791,
		37.828384, 31.832754, 41.914658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126472, 31.636898, 41.391853>,  <37.619541, 31.191267, 41.727905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126472, 31.636898, 41.391853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454071, 31.851585, 41.473019>,  <37.650631, 31.980398, 41.521717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454071, 31.851585, 41.473019>,  <37.126472, 31.636898, 41.391853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454071, 31.851585, 41.473019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027628, 0.390109, -0.920354,
		-0.573129, 0.748163, 0.334327,
		0.818999, 0.536718, 0.202913,
		37.699772, 32.012600, 41.533894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069008, 32.234547, 40.971531>,  <37.126472, 31.636898, 41.391853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069008, 32.234547, 40.971531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452820, 32.262154, 41.080738>,  <37.683105, 32.278717, 41.146263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452820, 32.262154, 41.080738>,  <37.069008, 32.234547, 40.971531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452820, 32.262154, 41.080738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220114, 0.420915, -0.879989,
		-0.175654, 0.904471, 0.388688,
		0.959529, 0.069018, 0.273022,
		37.740677, 32.282860, 41.162643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275078, 32.956440, 40.805225>,  <37.069008, 32.234547, 40.971531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275078, 32.956440, 40.805225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615665, 32.747105, 40.791821>,  <37.820019, 32.621502, 40.783779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615665, 32.747105, 40.791821>,  <37.275078, 32.956440, 40.805225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615665, 32.747105, 40.791821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187270, 0.363129, -0.912725,
		0.489832, 0.770879, 0.407198,
		0.851466, -0.523338, -0.033509,
		37.871105, 32.590103, 40.781769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694313, 33.390034, 40.535748>,  <37.275078, 32.956440, 40.805225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694313, 33.390034, 40.535748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871067, 33.035511, 40.480328>,  <37.977119, 32.822796, 40.447075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871067, 33.035511, 40.480328>,  <37.694313, 33.390034, 40.535748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871067, 33.035511, 40.480328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255255, 0.272292, -0.927740,
		0.859988, 0.374591, 0.346557,
		0.441888, -0.886306, -0.138552,
		38.003632, 32.769619, 40.438763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274986, 33.610794, 40.196411>,  <37.694313, 33.390034, 40.535748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274986, 33.610794, 40.196411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188534, 33.230354, 40.108143>,  <38.136662, 33.002090, 40.055180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188534, 33.230354, 40.108143>,  <38.274986, 33.610794, 40.196411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188534, 33.230354, 40.108143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055583, 0.213663, -0.975325,
		0.974781, -0.223064, 0.006686,
		-0.216131, -0.951100, -0.220673,
		38.123695, 32.945023, 40.041943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060135, 33.872898, 40.243652>,  <38.274986, 33.610794, 40.196411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060135, 33.872898, 40.243652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107944, 34.263580, 40.314934>,  <39.136631, 34.497990, 40.357704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107944, 34.263580, 40.314934>,  <39.060135, 33.872898, 40.243652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107944, 34.263580, 40.314934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381048, -0.120619, 0.916654,
		0.916797, -0.177464, 0.357756,
		0.119521, 0.976708, 0.178205,
		39.143803, 34.556591, 40.368397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453030, 34.020172, 40.887955>,  <39.060135, 33.872898, 40.243652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453030, 34.020172, 40.887955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.214458, 34.335857, 40.829403>,  <39.071316, 34.525269, 40.794273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.214458, 34.335857, 40.829403>,  <39.453030, 34.020172, 40.887955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214458, 34.335857, 40.829403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315770, -0.063043, 0.946739,
		0.737949, 0.610878, 0.286809,
		-0.596424, 0.789210, -0.146375,
		39.035530, 34.572620, 40.785492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653511, 34.399208, 41.393566>,  <39.453030, 34.020172, 40.887955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653511, 34.399208, 41.393566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289520, 34.522202, 41.282288>,  <39.071125, 34.595997, 41.215523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289520, 34.522202, 41.282288>,  <39.653511, 34.399208, 41.393566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289520, 34.522202, 41.282288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286198, 0.019727, 0.957967,
		0.300043, 0.951350, 0.070049,
		-0.909981, 0.307479, -0.278194,
		39.016525, 34.614445, 41.198830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603634, 34.960842, 41.864338>,  <39.653511, 34.399208, 41.393566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603634, 34.960842, 41.864338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221912, 34.902676, 41.759911>,  <38.992878, 34.867775, 41.697254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221912, 34.902676, 41.759911>,  <39.603634, 34.960842, 41.864338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221912, 34.902676, 41.759911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298219, 0.407197, 0.863282,
		-0.019233, 0.901689, -0.431957,
		-0.954304, -0.145421, -0.261069,
		38.935619, 34.859051, 41.681591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239777, 35.553833, 42.088684>,  <39.603634, 34.960842, 41.864338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239777, 35.553833, 42.088684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951111, 35.287182, 42.014061>,  <38.777912, 35.127190, 41.969288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951111, 35.287182, 42.014061>,  <39.239777, 35.553833, 42.088684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951111, 35.287182, 42.014061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432648, 0.223967, 0.873301,
		-0.540383, 0.710948, -0.450044,
		-0.721666, -0.666628, -0.186563,
		38.734612, 35.087193, 41.958092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550800, 35.895905, 42.336681>,  <39.239777, 35.553833, 42.088684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550800, 35.895905, 42.336681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477200, 35.502865, 42.326618>,  <38.433037, 35.267040, 42.320580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477200, 35.502865, 42.326618>,  <38.550800, 35.895905, 42.336681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477200, 35.502865, 42.326618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193738, 0.011166, 0.980990,
		-0.963643, 0.185382, -0.192422,
		-0.184006, -0.982603, -0.025155,
		38.421997, 35.208084, 42.319073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860760, 35.774155, 42.740067>,  <38.550800, 35.895905, 42.336681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860760, 35.774155, 42.740067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043476, 35.418839, 42.720974>,  <38.153107, 35.205650, 42.709518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043476, 35.418839, 42.720974>,  <37.860760, 35.774155, 42.740067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043476, 35.418839, 42.720974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155699, -0.132669, 0.978855,
		-0.875841, -0.439701, -0.198908,
		0.456792, -0.888291, -0.047736,
		38.180515, 35.152351, 42.706654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341782, 35.403461, 42.972446>,  <37.860760, 35.774155, 42.740067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341782, 35.403461, 42.972446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686699, 35.208000, 43.025612>,  <37.893650, 35.090725, 43.057510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686699, 35.208000, 43.025612>,  <37.341782, 35.403461, 42.972446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686699, 35.208000, 43.025612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105463, 0.083422, 0.990918,
		-0.495302, -0.868482, 0.020400,
		0.862296, -0.488652, 0.132912,
		37.945389, 35.061405, 43.065487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160515, 34.768368, 43.380333>,  <37.341782, 35.403461, 42.972446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160515, 34.768368, 43.380333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546875, 34.863697, 43.420822>,  <37.778690, 34.920895, 43.445118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546875, 34.863697, 43.420822>,  <37.160515, 34.768368, 43.380333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546875, 34.863697, 43.420822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054069, -0.196675, 0.978977,
		0.253223, -0.951063, -0.177082,
		0.965896, 0.238324, 0.101225,
		37.836643, 34.935196, 43.451191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342316, 34.401379, 43.871304>,  <37.160515, 34.768368, 43.380333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342316, 34.401379, 43.871304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647381, 34.659843, 43.882767>,  <37.830421, 34.814922, 43.889645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647381, 34.659843, 43.882767>,  <37.342316, 34.401379, 43.871304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647381, 34.659843, 43.882767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036322, -0.087028, 0.995543,
		0.645776, -0.758223, -0.089843,
		0.762662, 0.646161, 0.028660,
		37.876179, 34.853691, 43.891365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784534, 34.208031, 44.393127>,  <37.342316, 34.401379, 43.871304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784534, 34.208031, 44.393127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.868729, 34.598114, 44.365784>,  <37.919247, 34.832165, 44.349377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.868729, 34.598114, 44.365784>,  <37.784534, 34.208031, 44.393127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868729, 34.598114, 44.365784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160687, 0.034460, 0.986404,
		0.964300, -0.218610, -0.149449,
		0.210487, 0.975204, -0.068358,
		37.931873, 34.890675, 44.345276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384354, 34.229710, 44.761414>,  <37.784534, 34.208031, 44.393127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384354, 34.229710, 44.761414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.224606, 34.596092, 44.745762>,  <38.128757, 34.815922, 44.736370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.224606, 34.596092, 44.745762>,  <38.384354, 34.229710, 44.761414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224606, 34.596092, 44.745762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354898, 0.193816, 0.914594,
		0.845309, 0.351377, -0.402475,
		-0.399374, 0.915953, -0.039131,
		38.104794, 34.870876, 44.734024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856411, 34.681103, 44.961849>,  <38.384354, 34.229710, 44.761414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856411, 34.681103, 44.961849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.505165, 34.857430, 45.036240>,  <38.294418, 34.963226, 45.080875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.505165, 34.857430, 45.036240>,  <38.856411, 34.681103, 44.961849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505165, 34.857430, 45.036240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306972, 0.220948, 0.925716,
		0.366982, 0.869977, -0.329338,
		-0.878118, 0.440819, 0.185975,
		38.241730, 34.989674, 45.092033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114723, 35.287834, 45.222187>,  <38.856411, 34.681103, 44.961849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114723, 35.287834, 45.222187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729431, 35.293240, 45.329517>,  <38.498257, 35.296482, 45.393913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729431, 35.293240, 45.329517>,  <39.114723, 35.287834, 45.222187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729431, 35.293240, 45.329517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251390, 0.397649, 0.882427,
		-0.094776, 0.917438, -0.386426,
		-0.963234, 0.013511, 0.268322,
		38.440460, 35.297295, 45.410015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.124378, 33.715744, 44.576401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452133, 33.880737, 44.735634>,  <33.648785, 33.979733, 44.831173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452133, 33.880737, 44.735634>,  <33.124378, 33.715744, 44.576401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452133, 33.880737, 44.735634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241752, 0.381014, -0.892403,
		-0.519774, 0.827458, 0.212479,
		0.819384, 0.412481, 0.398081,
		33.697948, 34.004482, 44.855057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154995, 34.446899, 44.404716>,  <33.124378, 33.715744, 44.576401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154995, 34.446899, 44.404716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535355, 34.347366, 44.478344>,  <33.763569, 34.287647, 44.522518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535355, 34.347366, 44.478344>,  <33.154995, 34.446899, 44.404716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535355, 34.347366, 44.478344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293601, 0.536941, -0.790881,
		0.097966, 0.806087, 0.583632,
		0.950895, -0.248834, 0.184066,
		33.820621, 34.272717, 44.533566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482319, 35.087128, 44.482655>,  <33.154995, 34.446899, 44.404716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482319, 35.087128, 44.482655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762100, 34.809483, 44.414562>,  <33.929970, 34.642895, 44.373707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762100, 34.809483, 44.414562>,  <33.482319, 35.087128, 44.482655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762100, 34.809483, 44.414562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400526, 0.577979, -0.710998,
		0.591902, 0.429125, 0.682278,
		0.699450, -0.694112, -0.170232,
		33.971935, 34.601250, 44.363491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025372, 35.453030, 44.158661>,  <33.482319, 35.087128, 44.482655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025372, 35.453030, 44.158661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129715, 35.080036, 44.058723>,  <34.192322, 34.856239, 43.998760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129715, 35.080036, 44.058723>,  <34.025372, 35.453030, 44.158661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129715, 35.080036, 44.058723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369933, 0.335601, -0.866326,
		0.891685, 0.133565, 0.432502,
		0.260859, -0.932487, -0.249840,
		34.207973, 34.800289, 43.983772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560612, 35.557762, 43.701473>,  <34.025372, 35.453030, 44.158661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560612, 35.557762, 43.701473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500992, 35.166279, 43.645012>,  <34.465221, 34.931389, 43.611137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500992, 35.166279, 43.645012>,  <34.560612, 35.557762, 43.701473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500992, 35.166279, 43.645012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441079, 0.061954, -0.895327,
		0.885005, -0.195706, 0.422451,
		-0.149048, -0.978704, -0.141151,
		34.456276, 34.872669, 43.602665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202404, 35.184921, 43.454262>,  <34.560612, 35.557762, 43.701473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202404, 35.184921, 43.454262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.876171, 35.000153, 43.314865>,  <34.680431, 34.889290, 43.231228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.876171, 35.000153, 43.314865>,  <35.202404, 35.184921, 43.454262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876171, 35.000153, 43.314865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390582, 0.004873, -0.920555,
		0.426923, -0.886907, 0.176444,
		-0.815587, -0.461923, -0.348490,
		34.631496, 34.861576, 43.210320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348957, 34.507610, 43.033669>,  <35.202404, 35.184921, 43.454262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348957, 34.507610, 43.033669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984001, 34.638493, 42.935303>,  <34.765026, 34.717022, 42.876286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984001, 34.638493, 42.935303>,  <35.348957, 34.507610, 43.033669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984001, 34.638493, 42.935303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215700, -0.126232, -0.968266,
		-0.347865, -0.936483, 0.044595,
		-0.912394, 0.327207, -0.245911,
		34.710281, 34.736656, 42.861530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145515, 33.971790, 42.542931>,  <35.348957, 34.507610, 43.033669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145515, 33.971790, 42.542931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956692, 34.322365, 42.504936>,  <34.843399, 34.532707, 42.482140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956692, 34.322365, 42.504936>,  <35.145515, 33.971790, 42.542931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956692, 34.322365, 42.504936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186652, -0.005937, -0.982408,
		-0.861580, -0.481484, -0.160785,
		-0.472060, 0.876434, -0.094986,
		34.815075, 34.585297, 42.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804974, 33.967068, 41.901638>,  <35.145515, 33.971790, 42.542931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804974, 33.967068, 41.901638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787899, 34.359230, 41.978558>,  <34.777653, 34.594528, 42.024708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787899, 34.359230, 41.978558>,  <34.804974, 33.967068, 41.901638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787899, 34.359230, 41.978558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115132, 0.196021, -0.973818,
		-0.992433, -0.019432, -0.121244,
		-0.042689, 0.980407, 0.192300,
		34.775093, 34.653351, 42.036247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328083, 34.135071, 41.316944>,  <34.804974, 33.967068, 41.901638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328083, 34.135071, 41.316944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512726, 34.465797, 41.445503>,  <34.623512, 34.664234, 41.522640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512726, 34.465797, 41.445503>,  <34.328083, 34.135071, 41.316944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512726, 34.465797, 41.445503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088666, 0.317490, -0.944107,
		-0.882640, 0.464307, 0.073247,
		0.461611, 0.826813, 0.321398,
		34.651211, 34.713840, 41.541924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954540, 34.717777, 40.983974>,  <34.328083, 34.135071, 41.316944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954540, 34.717777, 40.983974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318295, 34.834240, 41.102795>,  <34.536549, 34.904118, 41.174088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318295, 34.834240, 41.102795>,  <33.954540, 34.717777, 40.983974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318295, 34.834240, 41.102795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138749, 0.460911, -0.876533,
		-0.392122, 0.838325, 0.378750,
		0.909390, 0.291157, 0.297050,
		34.591110, 34.921589, 41.191910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028347, 35.442982, 40.733425>,  <33.954540, 34.717777, 40.983974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028347, 35.442982, 40.733425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409981, 35.358177, 40.818069>,  <34.638962, 35.307293, 40.868855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409981, 35.358177, 40.818069>,  <34.028347, 35.442982, 40.733425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409981, 35.358177, 40.818069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280571, 0.385059, -0.879210,
		0.104918, 0.898210, 0.426862,
		0.954082, -0.212010, 0.211612,
		34.696205, 35.294575, 40.881554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414196, 36.064556, 40.489719>,  <34.028347, 35.442982, 40.733425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414196, 36.064556, 40.489719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654552, 35.745338, 40.507900>,  <34.798767, 35.553810, 40.518810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654552, 35.745338, 40.507900>,  <34.414196, 36.064556, 40.489719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654552, 35.745338, 40.507900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191985, 0.088889, -0.977364,
		0.775936, 0.596011, 0.206625,
		0.600887, -0.798041, 0.045453,
		34.834820, 35.505928, 40.521538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946701, 36.273224, 40.202042>,  <34.414196, 36.064556, 40.489719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946701, 36.273224, 40.202042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940262, 35.874252, 40.174110>,  <34.936398, 35.634869, 40.157352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940262, 35.874252, 40.174110>,  <34.946701, 36.273224, 40.202042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940262, 35.874252, 40.174110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037734, 0.069179, -0.996890,
		0.999158, -0.018681, 0.036524,
		-0.016096, -0.997429, -0.069825,
		34.935432, 35.575024, 40.153164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676292, 36.573719, 40.000916>,  <34.946701, 36.273224, 40.202042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676292, 36.573719, 40.000916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737251, 36.960850, 40.081013>,  <35.773827, 37.193127, 40.129070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737251, 36.960850, 40.081013>,  <35.676292, 36.573719, 40.000916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737251, 36.960850, 40.081013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312114, -0.145108, 0.938897,
		0.937742, -0.205580, 0.279957,
		0.152395, 0.967822, 0.200239,
		35.782970, 37.251198, 40.141083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889420, 36.564503, 40.658051>,  <35.676292, 36.573719, 40.000916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889420, 36.564503, 40.658051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760185, 36.940521, 40.614349>,  <35.682644, 37.166130, 40.588131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760185, 36.940521, 40.614349>,  <35.889420, 36.564503, 40.658051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760185, 36.940521, 40.614349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323456, -0.001199, 0.946242,
		0.889378, 0.341053, 0.304450,
		-0.323084, 0.940043, -0.109249,
		35.663261, 37.222534, 40.581573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978539, 36.902184, 41.290413>,  <35.889420, 36.564503, 40.658051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978539, 36.902184, 41.290413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721638, 37.149113, 41.108681>,  <35.567497, 37.297272, 40.999641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.721638, 37.149113, 41.108681>,  <35.978539, 36.902184, 41.290413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721638, 37.149113, 41.108681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427613, 0.203357, 0.880791,
		0.636128, 0.759970, 0.133371,
		-0.642253, 0.617326, -0.454334,
		35.528961, 37.334312, 40.972382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132610, 37.640156, 41.523136>,  <35.978539, 36.902184, 41.290413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132610, 37.640156, 41.523136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756134, 37.600037, 41.394081>,  <35.530247, 37.575966, 41.316650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756134, 37.600037, 41.394081>,  <36.132610, 37.640156, 41.523136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756134, 37.600037, 41.394081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337711, 0.250461, 0.907315,
		-0.010194, 0.962917, -0.269604,
		-0.941195, -0.100297, -0.322635,
		35.473774, 37.569946, 41.297291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799671, 38.281891, 41.737888>,  <36.132610, 37.640156, 41.523136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799671, 38.281891, 41.737888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501141, 38.029423, 41.653393>,  <35.322021, 37.877941, 41.602695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501141, 38.029423, 41.653393>,  <35.799671, 38.281891, 41.737888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501141, 38.029423, 41.653393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434641, 0.221806, 0.872862,
		-0.504074, 0.743250, -0.439873,
		-0.746322, -0.631175, -0.211240,
		35.277245, 37.840069, 41.590019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143826, 38.680199, 42.046505>,  <35.799671, 38.281891, 41.737888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143826, 38.680199, 42.046505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028893, 38.299564, 42.002815>,  <34.959930, 38.071186, 41.976601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028893, 38.299564, 42.002815>,  <35.143826, 38.680199, 42.046505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028893, 38.299564, 42.002815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477926, 0.043614, 0.877317,
		-0.830076, 0.304283, -0.467318,
		-0.287335, -0.951582, -0.109222,
		34.942692, 38.014088, 41.970047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380077, 38.650383, 42.234741>,  <35.143826, 38.680199, 42.046505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380077, 38.650383, 42.234741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.531616, 38.282021, 42.271423>,  <34.622540, 38.061005, 42.293434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.531616, 38.282021, 42.271423>,  <34.380077, 38.650383, 42.234741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531616, 38.282021, 42.271423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369222, -0.059537, 0.927432,
		-0.848616, -0.385217, -0.362574,
		0.378849, -0.920904, 0.091706,
		34.645271, 38.005749, 42.298935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959812, 38.277370, 42.766678>,  <34.380077, 38.650383, 42.234741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959812, 38.277370, 42.766678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271130, 38.026661, 42.751656>,  <34.457920, 37.876236, 42.742641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271130, 38.026661, 42.751656>,  <33.959812, 38.277370, 42.766678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271130, 38.026661, 42.751656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189071, -0.290976, 0.937862,
		-0.598755, -0.722833, -0.344971,
		0.778296, -0.626774, -0.037557,
		34.504620, 37.838627, 42.740387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727962, 37.717728, 43.018002>,  <33.959812, 38.277370, 42.766678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727962, 37.717728, 43.018002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121872, 37.726757, 43.086948>,  <34.358219, 37.732174, 43.128315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121872, 37.726757, 43.086948>,  <33.727962, 37.717728, 43.018002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121872, 37.726757, 43.086948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158817, -0.286386, 0.944860,
		0.070694, -0.957848, -0.278440,
		0.984774, 0.022575, 0.172368,
		34.417305, 37.733528, 43.138660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762051, 37.148220, 43.460712>,  <33.727962, 37.717728, 43.018002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762051, 37.148220, 43.460712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108719, 37.332706, 43.536781>,  <34.316719, 37.443398, 43.582420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108719, 37.332706, 43.536781>,  <33.762051, 37.148220, 43.460712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108719, 37.332706, 43.536781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038146, -0.318808, 0.947051,
		0.497426, -0.828033, -0.258707,
		0.866668, 0.461219, 0.190169,
		34.368721, 37.471073, 43.593834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124847, 36.692341, 43.911530>,  <33.762051, 37.148220, 43.460712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124847, 36.692341, 43.911530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334724, 37.028198, 43.967670>,  <34.460651, 37.229713, 44.001354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334724, 37.028198, 43.967670>,  <34.124847, 36.692341, 43.911530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334724, 37.028198, 43.967670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068262, -0.205834, 0.976203,
		0.848551, -0.502626, -0.165316,
		0.524693, 0.839643, 0.140350,
		34.492134, 37.280090, 44.009777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788139, 36.588879, 44.244843>,  <34.124847, 36.692341, 43.911530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788139, 36.588879, 44.244843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.704655, 36.972404, 44.321896>,  <34.654564, 37.202522, 44.368126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.704655, 36.972404, 44.321896>,  <34.788139, 36.588879, 44.244843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704655, 36.972404, 44.321896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020892, -0.201296, 0.979308,
		0.977755, 0.200364, 0.062043,
		-0.208707, 0.958819, 0.192632,
		34.642044, 37.260052, 44.379684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278034, 36.809673, 44.718819>,  <34.788139, 36.588879, 44.244843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278034, 36.809673, 44.718819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953678, 37.040638, 44.756863>,  <34.759064, 37.179218, 44.779690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953678, 37.040638, 44.756863>,  <35.278034, 36.809673, 44.718819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953678, 37.040638, 44.756863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010497, -0.148152, 0.988909,
		0.585101, 0.802897, 0.114075,
		-0.810892, 0.577414, 0.095112,
		34.710411, 37.213863, 44.785397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403416, 37.284351, 45.263683>,  <35.278034, 36.809673, 44.718819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403416, 37.284351, 45.263683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.006393, 37.241131, 45.241192>,  <34.768181, 37.215199, 45.227699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.006393, 37.241131, 45.241192>,  <35.403416, 37.284351, 45.263683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006393, 37.241131, 45.241192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034597, -0.192510, 0.980685,
		-0.116784, 0.975328, 0.187339,
		-0.992555, -0.108047, -0.056225,
		34.708626, 37.208717, 45.224323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723660, 37.945980, 45.505524>,  <35.403416, 37.284351, 45.263683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723660, 37.945980, 45.505524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111229, 38.002056, 45.587048>,  <36.343769, 38.035702, 45.635960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111229, 38.002056, 45.587048>,  <35.723660, 37.945980, 45.505524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111229, 38.002056, 45.587048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161923, 0.263409, -0.950998,
		-0.187009, 0.954443, 0.232522,
		0.968921, 0.140194, 0.203806,
		36.401905, 38.044113, 45.648190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847599, 38.533810, 45.115326>,  <35.723660, 37.945980, 45.505524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847599, 38.533810, 45.115326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211666, 38.386253, 45.190701>,  <36.430107, 38.297718, 45.235924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211666, 38.386253, 45.190701>,  <35.847599, 38.533810, 45.115326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211666, 38.386253, 45.190701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287802, 0.235968, -0.928165,
		0.297929, 0.899020, 0.320939,
		0.910170, -0.368894, 0.188438,
		36.484718, 38.275585, 45.247231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289173, 38.949974, 44.874256>,  <35.847599, 38.533810, 45.115326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289173, 38.949974, 44.874256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501457, 38.611473, 44.893028>,  <36.628826, 38.408371, 44.904293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501457, 38.611473, 44.893028>,  <36.289173, 38.949974, 44.874256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501457, 38.611473, 44.893028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286743, 0.127165, -0.949530,
		0.797577, 0.517379, 0.310145,
		0.530706, -0.846256, 0.046931,
		36.660667, 38.357597, 44.907108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956001, 39.136024, 44.729179>,  <36.289173, 38.949974, 44.874256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956001, 39.136024, 44.729179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953156, 38.741749, 44.661800>,  <36.951447, 38.505184, 44.621372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953156, 38.741749, 44.661800>,  <36.956001, 39.136024, 44.729179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953156, 38.741749, 44.661800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602924, 0.130156, -0.787110,
		0.797767, -0.107161, 0.593367,
		-0.007118, -0.985686, -0.168444,
		36.951019, 38.446045, 44.611267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600773, 38.932034, 44.662350>,  <36.956001, 39.136024, 44.729179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600773, 38.932034, 44.662350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437183, 38.616055, 44.479607>,  <37.339031, 38.426468, 44.369961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437183, 38.616055, 44.479607>,  <37.600773, 38.932034, 44.662350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437183, 38.616055, 44.479607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582793, 0.159144, -0.796885,
		0.702207, -0.592156, 0.395293,
		-0.408972, -0.789952, -0.456856,
		37.314491, 38.379070, 44.342548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121750, 38.499184, 44.296654>,  <37.600773, 38.932034, 44.662350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121750, 38.499184, 44.296654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752232, 38.479641, 44.144749>,  <37.530521, 38.467915, 44.053604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752232, 38.479641, 44.144749>,  <38.121750, 38.499184, 44.296654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752232, 38.479641, 44.144749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354314, 0.266930, -0.896220,
		0.145158, -0.962476, -0.229277,
		-0.923792, -0.048857, -0.379766,
		37.475094, 38.464985, 44.030819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278145, 38.127354, 43.772583>,  <38.121750, 38.499184, 44.296654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278145, 38.127354, 43.772583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918594, 38.278076, 43.683102>,  <37.702866, 38.368511, 43.629414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918594, 38.278076, 43.683102>,  <38.278145, 38.127354, 43.772583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918594, 38.278076, 43.683102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207091, -0.084616, -0.974656,
		-0.386187, -0.922418, -0.001974,
		-0.898873, 0.376808, -0.223702,
		37.648933, 38.391117, 43.615990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121731, 37.737499, 43.124542>,  <38.278145, 38.127354, 43.772583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121731, 37.737499, 43.124542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898201, 38.069111, 43.132843>,  <37.764084, 38.268078, 43.137825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898201, 38.069111, 43.132843>,  <38.121731, 37.737499, 43.124542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898201, 38.069111, 43.132843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165828, 0.136234, -0.976699,
		-0.812537, -0.542361, -0.213607,
		-0.558825, 0.829026, 0.020756,
		37.730553, 38.317818, 43.139069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855072, 37.669685, 42.498146>,  <38.121731, 37.737499, 43.124542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855072, 37.669685, 42.498146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798683, 38.046249, 42.620701>,  <37.764851, 38.272186, 42.694233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798683, 38.046249, 42.620701>,  <37.855072, 37.669685, 42.498146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798683, 38.046249, 42.620701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292994, 0.335284, -0.895399,
		-0.945664, -0.036459, -0.323094,
		-0.140973, 0.941411, 0.306384,
		37.756390, 38.328674, 42.712616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402637, 38.095554, 41.998592>,  <37.855072, 37.669685, 42.498146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402637, 38.095554, 41.998592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.657566, 38.327972, 42.201057>,  <37.810524, 38.467422, 42.322536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.657566, 38.327972, 42.201057>,  <37.402637, 38.095554, 41.998592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657566, 38.327972, 42.201057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317671, 0.400331, -0.859547,
		-0.702070, 0.708604, 0.070559,
		0.637325, 0.581047, 0.506163,
		37.848763, 38.502285, 42.352905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238472, 38.772976, 41.720505>,  <37.402637, 38.095554, 41.998592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238472, 38.772976, 41.720505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601761, 38.784046, 41.887539>,  <37.819733, 38.790688, 41.987759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601761, 38.784046, 41.887539>,  <37.238472, 38.772976, 41.720505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601761, 38.784046, 41.887539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378259, 0.372630, -0.847388,
		-0.179055, 0.927567, 0.327961,
		0.908218, 0.027675, 0.417582,
		37.874226, 38.792347, 42.012814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497345, 39.413910, 41.432091>,  <37.238472, 38.772976, 41.720505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497345, 39.413910, 41.432091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.816021, 39.204586, 41.553043>,  <38.007229, 39.078991, 41.625614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.816021, 39.204586, 41.553043>,  <37.497345, 39.413910, 41.432091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816021, 39.204586, 41.553043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548061, 0.414631, -0.726437,
		0.254773, 0.744468, 0.617137,
		0.796693, -0.523305, 0.302377,
		38.055027, 39.047596, 41.643757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991226, 39.916607, 41.306763>,  <37.497345, 39.413910, 41.432091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991226, 39.916607, 41.306763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163189, 39.559834, 41.362816>,  <38.266369, 39.345772, 41.396450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163189, 39.559834, 41.362816>,  <37.991226, 39.916607, 41.306763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163189, 39.559834, 41.362816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796512, 0.301583, -0.524038,
		0.425142, 0.336910, 0.840087,
		0.429910, -0.891930, 0.140137,
		38.292160, 39.292255, 41.404858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625072, 40.117558, 41.594639>,  <37.991226, 39.916607, 41.306763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625072, 40.117558, 41.594639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.661934, 39.765518, 41.408333>,  <38.684052, 39.554295, 41.296551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.661934, 39.765518, 41.408333>,  <38.625072, 40.117558, 41.594639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661934, 39.765518, 41.408333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770263, 0.359432, -0.526787,
		0.631034, -0.310214, 0.711030,
		0.092150, -0.880100, -0.465760,
		38.689579, 39.501488, 41.268604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.672010, 41.253513, 35.669250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336172, 41.420860, 35.530659>,  <29.134668, 41.521267, 35.447506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336172, 41.420860, 35.530659>,  <29.672010, 41.253513, 35.669250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336172, 41.420860, 35.530659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543172, -0.639110, 0.544521,
		0.006374, 0.645374, 0.763840,
		-0.839598, 0.418367, -0.346476,
		29.084293, 41.546371, 35.426716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200512, 41.467773, 36.235992>,  <29.672010, 41.253513, 35.669250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200512, 41.467773, 36.235992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000145, 41.369694, 35.903980>,  <28.879925, 41.310844, 35.704773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000145, 41.369694, 35.903980>,  <29.200512, 41.467773, 36.235992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000145, 41.369694, 35.903980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501815, -0.699094, 0.509361,
		-0.705170, 0.671672, 0.227141,
		-0.500917, -0.245203, -0.830035,
		28.849871, 41.296131, 35.654968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526962, 41.288155, 36.424683>,  <29.200512, 41.467773, 36.235992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526962, 41.288155, 36.424683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566704, 41.109035, 36.069244>,  <28.590548, 41.001564, 35.855980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566704, 41.109035, 36.069244>,  <28.526962, 41.288155, 36.424683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566704, 41.109035, 36.069244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470758, -0.807910, 0.354498,
		-0.876650, 0.383096, -0.291070,
		0.099351, -0.447794, -0.888600,
		28.596510, 40.974697, 35.802666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924538, 41.066010, 36.332092>,  <28.526962, 41.288155, 36.424683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924538, 41.066010, 36.332092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139551, 40.851189, 36.072052>,  <28.268560, 40.722294, 35.916027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139551, 40.851189, 36.072052>,  <27.924538, 41.066010, 36.332092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139551, 40.851189, 36.072052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550353, -0.807551, 0.212069,
		-0.638880, 0.243789, -0.729657,
		0.537535, -0.537056, -0.650098,
		28.300812, 40.690071, 35.877022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445198, 40.673367, 36.047848>,  <27.924538, 41.066010, 36.332092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445198, 40.673367, 36.047848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770046, 40.461391, 35.950172>,  <27.964954, 40.334206, 35.891567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770046, 40.461391, 35.950172>,  <27.445198, 40.673367, 36.047848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770046, 40.461391, 35.950172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464986, -0.840596, 0.277825,
		-0.352493, -0.112083, -0.929078,
		0.812118, -0.529939, -0.244187,
		28.013681, 40.302410, 35.876915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257147, 40.082264, 35.632431>,  <27.445198, 40.673367, 36.047848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257147, 40.082264, 35.632431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598866, 39.977474, 35.812004>,  <27.803898, 39.914600, 35.919746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598866, 39.977474, 35.812004>,  <27.257147, 40.082264, 35.632431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598866, 39.977474, 35.812004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368761, -0.914167, 0.168266,
		0.366318, -0.309299, -0.877579,
		0.854298, -0.261978, 0.448934,
		27.855156, 39.898880, 35.946686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489332, 39.434029, 35.332886>,  <27.257147, 40.082264, 35.632431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489332, 39.434029, 35.332886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680264, 39.457741, 35.683575>,  <27.794823, 39.471970, 35.893990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680264, 39.457741, 35.683575>,  <27.489332, 39.434029, 35.332886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680264, 39.457741, 35.683575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292420, -0.930142, 0.222097,
		0.828643, -0.362385, -0.426647,
		0.477327, 0.059279, 0.876724,
		27.823462, 39.475525, 35.946590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771042, 38.819847, 35.413021>,  <27.489332, 39.434029, 35.332886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771042, 38.819847, 35.413021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829517, 38.938351, 35.790562>,  <27.864603, 39.009453, 36.017086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829517, 38.938351, 35.790562>,  <27.771042, 38.819847, 35.413021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829517, 38.938351, 35.790562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064106, -0.954935, 0.289810,
		0.987178, 0.018140, -0.158592,
		0.146188, 0.296261, 0.943853,
		27.873373, 39.027229, 36.073719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435612, 38.463650, 35.660587>,  <27.771042, 38.819847, 35.413021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435612, 38.463650, 35.660587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236324, 38.566635, 35.991764>,  <28.116753, 38.628426, 36.190472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236324, 38.566635, 35.991764>,  <28.435612, 38.463650, 35.660587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236324, 38.566635, 35.991764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170721, -0.965332, 0.197457,
		0.850078, -0.042971, 0.524901,
		-0.498219, 0.257465, 0.827943,
		28.086859, 38.643875, 36.240147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645428, 38.065689, 36.192425>,  <28.435612, 38.463650, 35.660587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645428, 38.065689, 36.192425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291639, 38.186737, 36.334484>,  <28.079367, 38.259365, 36.419720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291639, 38.186737, 36.334484>,  <28.645428, 38.065689, 36.192425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291639, 38.186737, 36.334484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259439, -0.951604, 0.164744,
		0.387817, 0.053572, 0.920178,
		-0.884471, 0.302620, 0.355150,
		28.026299, 38.277523, 36.441029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576891, 37.877586, 36.933445>,  <28.645428, 38.065689, 36.192425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576891, 37.877586, 36.933445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.215916, 37.909786, 36.764149>,  <27.999331, 37.929104, 36.662571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.215916, 37.909786, 36.764149>,  <28.576891, 37.877586, 36.933445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215916, 37.909786, 36.764149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197400, -0.950458, 0.240131,
		-0.382939, 0.300250, 0.873618,
		-0.902437, 0.080497, -0.423236,
		27.945185, 37.933937, 36.637177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207325, 37.357895, 37.318474>,  <28.576891, 37.877586, 36.933445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207325, 37.357895, 37.318474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965218, 37.422626, 37.006714>,  <27.819952, 37.461468, 36.819660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965218, 37.422626, 37.006714>,  <28.207325, 37.357895, 37.318474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965218, 37.422626, 37.006714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323314, -0.944696, 0.054927,
		-0.727404, 0.285235, 0.624119,
		-0.605270, 0.161832, -0.779396,
		27.783636, 37.471176, 36.772896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514452, 37.104298, 37.507942>,  <28.207325, 37.357895, 37.318474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514452, 37.104298, 37.507942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523069, 37.102062, 37.108040>,  <27.528240, 37.100719, 36.868099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523069, 37.102062, 37.108040>,  <27.514452, 37.104298, 37.507942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523069, 37.102062, 37.108040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344943, -0.938621, -0.002185,
		-0.938376, 0.344905, -0.022150,
		0.021544, -0.005590, -0.999752,
		27.529533, 37.100384, 36.808113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921770, 36.637444, 37.377731>,  <27.514452, 37.104298, 37.507942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921770, 36.637444, 37.377731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105240, 36.648552, 37.022465>,  <27.215321, 36.655216, 36.809303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105240, 36.648552, 37.022465>,  <26.921770, 36.637444, 37.377731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105240, 36.648552, 37.022465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218686, -0.965242, -0.143121,
		-0.861275, 0.259876, -0.436656,
		0.458673, 0.027776, -0.888171,
		27.242842, 36.656883, 36.756012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437450, 36.451046, 36.949039>,  <26.921770, 36.637444, 37.377731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437450, 36.451046, 36.949039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789751, 36.380630, 36.773182>,  <27.001131, 36.338383, 36.667667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789751, 36.380630, 36.773182>,  <26.437450, 36.451046, 36.949039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789751, 36.380630, 36.773182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250165, -0.961194, -0.116296,
		-0.402111, 0.212411, -0.890611,
		0.880752, -0.176036, -0.439644,
		27.053976, 36.327820, 36.641289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335707, 36.219360, 36.281712>,  <26.437450, 36.451046, 36.949039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335707, 36.219360, 36.281712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702517, 36.090366, 36.375584>,  <26.922602, 36.012970, 36.431908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702517, 36.090366, 36.375584>,  <26.335707, 36.219360, 36.281712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702517, 36.090366, 36.375584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301024, -0.945630, -0.123155,
		0.261632, 0.042293, -0.964241,
		0.917024, -0.322481, 0.234676,
		26.977623, 35.993622, 36.445988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464251, 35.741402, 35.827499>,  <26.335707, 36.219360, 36.281712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464251, 35.741402, 35.827499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743530, 35.665401, 36.103592>,  <26.911098, 35.619801, 36.269249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743530, 35.665401, 36.103592>,  <26.464251, 35.741402, 35.827499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743530, 35.665401, 36.103592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211403, -0.975863, -0.054778,
		0.683979, -0.107671, -0.721512,
		0.698199, -0.189997, 0.690231,
		26.952990, 35.608402, 36.310661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666212, 35.040501, 35.608238>,  <26.464251, 35.741402, 35.827499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666212, 35.040501, 35.608238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825865, 35.094448, 35.971004>,  <26.921658, 35.126816, 36.188663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825865, 35.094448, 35.971004>,  <26.666212, 35.040501, 35.608238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825865, 35.094448, 35.971004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020096, -0.987598, 0.155710,
		0.916673, -0.080374, -0.391473,
		0.399133, 0.134868, 0.906920,
		26.945604, 35.134907, 36.243080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125809, 34.534309, 35.517654>,  <26.666212, 35.040501, 35.608238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125809, 34.534309, 35.517654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019840, 34.623402, 35.892933>,  <26.956259, 34.676857, 36.118099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019840, 34.623402, 35.892933>,  <27.125809, 34.534309, 35.517654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019840, 34.623402, 35.892933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084727, -0.974571, 0.207441,
		0.960541, -0.024536, 0.277055,
		-0.264920, 0.222730, 0.938195,
		26.940365, 34.690220, 36.174393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608574, 34.168407, 36.017128>,  <27.125809, 34.534309, 35.517654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608574, 34.168407, 36.017128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259535, 34.232403, 36.201729>,  <27.050112, 34.270802, 36.312489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259535, 34.232403, 36.201729>,  <27.608574, 34.168407, 36.017128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259535, 34.232403, 36.201729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148490, -0.987006, 0.061408,
		0.465326, -0.014943, 0.885014,
		-0.872596, 0.159990, 0.461498,
		26.997757, 34.280399, 36.340179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350311, 34.401829, 36.146336>,  <27.608574, 34.168407, 36.017128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350311, 34.401829, 36.146336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438324, 34.400661, 35.756142>,  <28.491133, 34.399960, 35.522026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438324, 34.400661, 35.756142>,  <28.350311, 34.401829, 36.146336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438324, 34.400661, 35.756142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476857, 0.872693, 0.104946,
		0.850995, -0.488260, 0.193415,
		0.220033, -0.002922, -0.975488,
		28.504333, 34.399784, 35.463493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016560, 34.485676, 36.105274>,  <28.350311, 34.401829, 36.146336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016560, 34.485676, 36.105274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896990, 34.601494, 35.741558>,  <28.825249, 34.670986, 35.523327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.896990, 34.601494, 35.741558>,  <29.016560, 34.485676, 36.105274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896990, 34.601494, 35.741558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662280, 0.748969, 0.020777,
		0.687045, -0.595993, -0.415645,
		-0.298923, 0.289548, -0.909289,
		28.807314, 34.688358, 35.468773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652306, 34.555504, 35.677528>,  <29.016560, 34.485676, 36.105274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652306, 34.555504, 35.677528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402208, 34.788319, 35.469566>,  <29.252150, 34.928009, 35.344791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402208, 34.788319, 35.469566>,  <29.652306, 34.555504, 35.677528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402208, 34.788319, 35.469566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690502, 0.723026, -0.020970,
		0.363699, -0.372106, -0.853968,
		-0.625244, 0.582040, -0.519903,
		29.214636, 34.962929, 35.313595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052885, 34.786854, 35.220097>,  <29.652306, 34.555504, 35.677528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052885, 34.786854, 35.220097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752855, 35.051186, 35.230595>,  <29.572838, 35.209785, 35.236893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752855, 35.051186, 35.230595>,  <30.052885, 34.786854, 35.220097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752855, 35.051186, 35.230595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661112, 0.750281, 0.002861,
		-0.017803, 0.019499, -0.999651,
		-0.750076, 0.660831, 0.026248,
		29.527832, 35.249435, 35.238468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278284, 35.227394, 34.729729>,  <30.052885, 34.786854, 35.220097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278284, 35.227394, 34.729729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013121, 35.430939, 34.949406>,  <29.854023, 35.553066, 35.081211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013121, 35.430939, 34.949406>,  <30.278284, 35.227394, 34.729729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013121, 35.430939, 34.949406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645142, 0.760460, 0.074113,
		-0.379929, 0.403439, -0.832401,
		-0.662907, 0.508859, 0.549196,
		29.814249, 35.583595, 35.114166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232979, 35.820873, 34.400257>,  <30.278284, 35.227394, 34.729729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232979, 35.820873, 34.400257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.093143, 35.902580, 34.766003>,  <30.009241, 35.951603, 34.985451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.093143, 35.902580, 34.766003>,  <30.232979, 35.820873, 34.400257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093143, 35.902580, 34.766003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642685, 0.762411, 0.075400,
		-0.681721, 0.614008, -0.397808,
		-0.349589, 0.204263, 0.914365,
		29.988266, 35.963860, 35.040314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994354, 36.449463, 34.390541>,  <30.232979, 35.820873, 34.400257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994354, 36.449463, 34.390541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094788, 36.376633, 34.770817>,  <30.155048, 36.332935, 34.998981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094788, 36.376633, 34.770817>,  <29.994354, 36.449463, 34.390541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094788, 36.376633, 34.770817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574985, 0.818150, 0.004834,
		-0.778684, 0.545416, 0.310117,
		0.251085, -0.182077, 0.950686,
		30.170113, 36.322010, 35.056023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966072, 37.083706, 34.640675>,  <29.994354, 36.449463, 34.390541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966072, 37.083706, 34.640675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183479, 36.911610, 34.928974>,  <30.313923, 36.808353, 35.101955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183479, 36.911610, 34.928974>,  <29.966072, 37.083706, 34.640675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183479, 36.911610, 34.928974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461374, 0.870438, 0.171674,
		-0.701231, 0.239229, 0.671599,
		0.543516, -0.430241, 0.720752,
		30.346535, 36.782536, 35.145199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861876, 37.460434, 35.357224>,  <29.966072, 37.083706, 34.640675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861876, 37.460434, 35.357224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218935, 37.280846, 35.341202>,  <30.433170, 37.173092, 35.331589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218935, 37.280846, 35.341202>,  <29.861876, 37.460434, 35.357224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218935, 37.280846, 35.341202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446548, 0.868708, 0.214338,
		-0.061436, -0.209214, 0.975938,
		0.892648, -0.448971, -0.040054,
		30.486729, 37.146152, 35.329185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159567, 37.765015, 35.882668>,  <29.861876, 37.460434, 35.357224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159567, 37.765015, 35.882668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469887, 37.589478, 35.701317>,  <30.656078, 37.484158, 35.592506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469887, 37.589478, 35.701317>,  <30.159567, 37.765015, 35.882668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469887, 37.589478, 35.701317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430583, 0.893430, -0.127990,
		0.461230, -0.095923, 0.882080,
		0.775800, -0.438841, -0.453380,
		30.702627, 37.457825, 35.565304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905468, 37.970589, 36.255039>,  <30.159567, 37.765015, 35.882668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905468, 37.970589, 36.255039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.987255, 37.850842, 35.882252>,  <31.036327, 37.778996, 35.658577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.987255, 37.850842, 35.882252>,  <30.905468, 37.970589, 36.255039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987255, 37.850842, 35.882252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481012, 0.859936, -0.170696,
		0.852538, -0.413388, 0.319826,
		0.204466, -0.299365, -0.931973,
		31.048595, 37.761032, 35.602661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624496, 38.133869, 36.171673>,  <30.905468, 37.970589, 36.255039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624496, 38.133869, 36.171673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494459, 38.074352, 35.798111>,  <31.416437, 38.038643, 35.573975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.494459, 38.074352, 35.798111>,  <31.624496, 38.133869, 36.171673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494459, 38.074352, 35.798111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343113, 0.901695, -0.263098,
		0.881242, -0.405966, -0.242084,
		-0.325095, -0.148790, -0.933903,
		31.396931, 38.029716, 35.517941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167259, 38.465733, 35.671551>,  <31.624496, 38.133869, 36.171673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167259, 38.465733, 35.671551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.821075, 38.429314, 35.474495>,  <31.613365, 38.407463, 35.356262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.821075, 38.429314, 35.474495>,  <32.167259, 38.465733, 35.671551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821075, 38.429314, 35.474495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237709, 0.790974, -0.563786,
		0.441000, -0.605037, -0.662910,
		-0.865456, -0.091050, -0.492642,
		31.561440, 38.402000, 35.326702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355789, 38.561741, 34.910023>,  <32.167259, 38.465733, 35.671551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355789, 38.561741, 34.910023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.966835, 38.648010, 34.945702>,  <31.733463, 38.699772, 34.967110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.966835, 38.648010, 34.945702>,  <32.355789, 38.561741, 34.910023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966835, 38.648010, 34.945702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111245, 0.764281, -0.635216,
		-0.205170, -0.607751, -0.767166,
		-0.972384, 0.215670, 0.089198,
		31.675119, 38.712711, 34.972462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154922, 38.723579, 34.223293>,  <32.355789, 38.561741, 34.910023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154922, 38.723579, 34.223293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.868031, 38.873009, 34.458591>,  <31.695896, 38.962666, 34.599770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.868031, 38.873009, 34.458591>,  <32.154922, 38.723579, 34.223293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868031, 38.873009, 34.458591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140807, 0.749048, -0.647379,
		-0.682465, -0.547147, -0.484636,
		-0.717227, 0.373573, 0.588241,
		31.652863, 38.985081, 34.635063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713694, 38.894966, 33.727875>,  <32.154922, 38.723579, 34.223293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713694, 38.894966, 33.727875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642443, 39.110706, 34.057083>,  <31.599691, 39.240150, 34.254608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642443, 39.110706, 34.057083>,  <31.713694, 38.894966, 33.727875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642443, 39.110706, 34.057083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219879, 0.793436, -0.567550,
		-0.959126, -0.282062, -0.022742,
		-0.178128, 0.539352, 0.823025,
		31.589005, 39.272511, 34.303989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030472, 39.157318, 33.587509>,  <31.713694, 38.894966, 33.727875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030472, 39.157318, 33.587509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.197624, 39.375397, 33.878201>,  <31.297915, 39.506245, 34.052616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.197624, 39.375397, 33.878201>,  <31.030472, 39.157318, 33.587509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197624, 39.375397, 33.878201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334802, 0.836035, -0.434687,
		-0.844562, -0.061663, 0.531895,
		0.417879, 0.545200, 0.726729,
		31.322989, 39.538956, 34.096218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430992, 39.632713, 33.882034>,  <31.030472, 39.157318, 33.587509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430992, 39.632713, 33.882034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.794821, 39.779747, 33.959557>,  <31.013117, 39.867970, 34.006069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.794821, 39.779747, 33.959557>,  <30.430992, 39.632713, 33.882034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794821, 39.779747, 33.959557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305218, 0.907462, -0.288713,
		-0.281999, 0.203452, 0.937595,
		0.909571, 0.367587, 0.193806,
		31.067692, 39.890022, 34.017700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312225, 40.245888, 33.965294>,  <30.430992, 39.632713, 33.882034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312225, 40.245888, 33.965294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.709944, 40.281052, 33.941135>,  <30.948574, 40.302151, 33.926640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.709944, 40.281052, 33.941135>,  <30.312225, 40.245888, 33.965294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709944, 40.281052, 33.941135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099696, 0.967282, -0.233293,
		0.037906, 0.237983, 0.970529,
		0.994296, 0.087914, -0.060392,
		31.008232, 40.307426, 33.923019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570255, 40.868736, 34.328041>,  <30.312225, 40.245888, 33.965294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570255, 40.868736, 34.328041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846239, 40.763035, 34.058487>,  <31.011829, 40.699612, 33.896755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846239, 40.763035, 34.058487>,  <30.570255, 40.868736, 34.328041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846239, 40.763035, 34.058487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136885, 0.866546, -0.479958,
		0.710786, 0.423397, 0.561710,
		0.689961, -0.264258, -0.673886,
		31.053226, 40.683758, 33.856319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988840, 41.510357, 34.251705>,  <30.570255, 40.868736, 34.328041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988840, 41.510357, 34.251705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.075188, 41.260990, 33.951103>,  <31.126997, 41.111370, 33.770744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.075188, 41.260990, 33.951103>,  <30.988840, 41.510357, 34.251705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075188, 41.260990, 33.951103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005003, 0.768930, -0.639313,
		0.976409, 0.141767, 0.162870,
		0.215869, -0.623416, -0.751500,
		31.139948, 41.073967, 33.725655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565100, 41.840816, 33.893700>,  <30.988840, 41.510357, 34.251705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565100, 41.840816, 33.893700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364729, 41.600471, 33.644531>,  <31.244507, 41.456264, 33.495029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364729, 41.600471, 33.644531>,  <31.565100, 41.840816, 33.893700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364729, 41.600471, 33.644531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189755, 0.778469, -0.598313,
		0.844432, -0.181509, -0.503974,
		-0.500927, -0.600866, -0.622921,
		31.214451, 41.420212, 33.457657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.980289, 35.906898, 45.711956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660175, 35.680443, 45.790985>,  <38.468105, 35.544571, 45.838402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660175, 35.680443, 45.790985>,  <38.980289, 35.906898, 45.711956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660175, 35.680443, 45.790985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100498, 0.198191, 0.974998,
		-0.591139, 0.800131, -0.101714,
		-0.800284, -0.566137, 0.197569,
		38.420090, 35.510601, 45.850254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482101, 36.340958, 46.169022>,  <38.980289, 35.906898, 45.711956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482101, 36.340958, 46.169022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400295, 35.951553, 46.209927>,  <38.351212, 35.717911, 46.234470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400295, 35.951553, 46.209927>,  <38.482101, 36.340958, 46.169022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400295, 35.951553, 46.209927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008786, 0.102643, 0.994679,
		-0.978823, 0.204327, -0.012439,
		-0.204517, -0.973506, 0.102265,
		38.338940, 35.659500, 46.240604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989910, 36.344208, 46.629147>,  <38.482101, 36.340958, 46.169022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989910, 36.344208, 46.629147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109856, 35.963039, 46.647156>,  <38.181824, 35.734341, 46.657959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109856, 35.963039, 46.647156>,  <37.989910, 36.344208, 46.629147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109856, 35.963039, 46.647156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031634, 0.037233, 0.998806,
		-0.953456, -0.300933, -0.018980,
		0.299867, -0.952918, 0.045020,
		38.199818, 35.677162, 46.660664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563168, 36.018093, 47.109722>,  <37.989910, 36.344208, 46.629147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563168, 36.018093, 47.109722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905907, 35.812695, 47.091236>,  <38.111549, 35.689453, 47.080143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905907, 35.812695, 47.091236>,  <37.563168, 36.018093, 47.109722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905907, 35.812695, 47.091236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065008, 0.018683, 0.997710,
		-0.511459, -0.857887, 0.049389,
		0.856845, -0.513499, -0.046214,
		38.162960, 35.658646, 47.077374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391190, 35.426868, 47.458057>,  <37.563168, 36.018093, 47.109722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391190, 35.426868, 47.458057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.790222, 35.449364, 47.441692>,  <38.029640, 35.462860, 47.431873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.790222, 35.449364, 47.441692>,  <37.391190, 35.426868, 47.458057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790222, 35.449364, 47.441692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052285, -0.218663, 0.974399,
		0.045851, -0.974179, -0.221074,
		0.997579, 0.056236, -0.040909,
		38.089497, 35.466236, 47.429420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623024, 34.839817, 47.809738>,  <37.391190, 35.426868, 47.458057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623024, 34.839817, 47.809738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947479, 35.073593, 47.818626>,  <38.142151, 35.213860, 47.823959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947479, 35.073593, 47.818626>,  <37.623024, 34.839817, 47.809738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947479, 35.073593, 47.818626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128494, -0.215150, 0.968091,
		0.570571, -0.782395, -0.249613,
		0.811134, 0.584438, 0.022225,
		38.190819, 35.248924, 47.825294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237011, 34.486664, 48.176342>,  <37.623024, 34.839817, 47.809738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237011, 34.486664, 48.176342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294197, 34.880787, 48.213715>,  <38.328506, 35.117260, 48.236137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294197, 34.880787, 48.213715>,  <38.237011, 34.486664, 48.176342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294197, 34.880787, 48.213715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123338, -0.111399, 0.986092,
		0.982013, -0.129451, -0.137452,
		0.142962, 0.985308, 0.093429,
		38.337086, 35.176380, 48.241745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729717, 34.532719, 48.748661>,  <38.237011, 34.486664, 48.176342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729717, 34.532719, 48.748661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590206, 34.906673, 48.722332>,  <38.506500, 35.131046, 48.706535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590206, 34.906673, 48.722332>,  <38.729717, 34.532719, 48.748661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590206, 34.906673, 48.722332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181273, 0.136196, 0.973956,
		0.919507, 0.327765, -0.216973,
		-0.348780, 0.934891, -0.065818,
		38.485573, 35.187141, 48.702587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143955, 34.890930, 49.259953>,  <38.729717, 34.532719, 48.748661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143955, 34.890930, 49.259953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828983, 35.125839, 49.185059>,  <38.639999, 35.266785, 49.140121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828983, 35.125839, 49.185059>,  <39.143955, 34.890930, 49.259953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828983, 35.125839, 49.185059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105141, 0.171332, 0.979587,
		0.607368, 0.791044, -0.073165,
		-0.787432, 0.587277, -0.187232,
		38.592754, 35.302021, 49.128887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203976, 35.445396, 49.644848>,  <39.143955, 34.890930, 49.259953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203976, 35.445396, 49.644848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811764, 35.417004, 49.571613>,  <38.576435, 35.399967, 49.527672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811764, 35.417004, 49.571613>,  <39.203976, 35.445396, 49.644848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811764, 35.417004, 49.571613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189170, 0.091443, 0.977677,
		-0.052654, 0.993277, -0.103090,
		-0.980532, -0.070980, -0.183083,
		38.517605, 35.395710, 49.516689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016022, 35.853672, 50.110485>,  <39.203976, 35.445396, 49.644848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016022, 35.853672, 50.110485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674976, 35.673107, 50.005203>,  <38.470348, 35.564770, 49.942036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674976, 35.673107, 50.005203>,  <39.016022, 35.853672, 50.110485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674976, 35.673107, 50.005203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303558, 0.017901, 0.952645,
		-0.425321, 0.892138, -0.152292,
		-0.852616, -0.451409, -0.263202,
		38.419193, 35.537685, 49.926243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574989, 36.198597, 50.370743>,  <39.016022, 35.853672, 50.110485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574989, 36.198597, 50.370743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366352, 35.862415, 50.311974>,  <38.241169, 35.660706, 50.276711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366352, 35.862415, 50.311974>,  <38.574989, 36.198597, 50.370743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366352, 35.862415, 50.311974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411305, 0.096813, 0.906342,
		-0.747511, 0.533171, -0.396178,
		-0.521590, -0.840450, -0.146927,
		38.209873, 35.610279, 50.267895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852314, 36.401955, 50.457535>,  <38.574989, 36.198597, 50.370743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852314, 36.401955, 50.457535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914139, 36.011520, 50.518692>,  <37.951233, 35.777260, 50.555386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914139, 36.011520, 50.518692>,  <37.852314, 36.401955, 50.457535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914139, 36.011520, 50.518692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182354, 0.123908, 0.975394,
		-0.971008, -0.178641, -0.158840,
		0.154564, -0.976081, 0.152892,
		37.960506, 35.718697, 50.564560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209415, 36.084972, 50.844028>,  <37.852314, 36.401955, 50.457535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209415, 36.084972, 50.844028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.557552, 35.901966, 50.916901>,  <37.766434, 35.792164, 50.960625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.557552, 35.901966, 50.916901>,  <37.209415, 36.084972, 50.844028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557552, 35.901966, 50.916901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143030, 0.119138, 0.982522,
		-0.471223, -0.881184, 0.038252,
		0.870340, -0.457516, 0.182177,
		37.818653, 35.764709, 50.971554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431309, 35.962395, 50.761627>,  <37.209415, 36.084972, 50.844028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431309, 35.962395, 50.761627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113342, 36.201099, 50.805420>,  <35.922562, 36.344322, 50.831696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113342, 36.201099, 50.805420>,  <36.431309, 35.962395, 50.761627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113342, 36.201099, 50.805420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146606, 0.364031, -0.919776,
		-0.588743, -0.715092, -0.376862,
		-0.794914, 0.596762, 0.109484,
		35.874866, 36.380127, 50.838264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112461, 36.040920, 50.100677>,  <36.431309, 35.962395, 50.761627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112461, 36.040920, 50.100677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982449, 36.347443, 50.322353>,  <35.904442, 36.531357, 50.455360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982449, 36.347443, 50.322353>,  <36.112461, 36.040920, 50.100677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982449, 36.347443, 50.322353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041951, 0.597119, -0.801055,
		-0.944771, -0.237123, -0.226232,
		-0.325036, 0.766304, 0.554193,
		35.884937, 36.577335, 50.488609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466030, 36.297359, 49.868347>,  <36.112461, 36.040920, 50.100677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466030, 36.297359, 49.868347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635147, 36.600574, 50.066994>,  <35.736618, 36.782505, 50.186180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635147, 36.600574, 50.066994>,  <35.466030, 36.297359, 49.868347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635147, 36.600574, 50.066994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149804, 0.598923, -0.786670,
		-0.893758, 0.258206, 0.366778,
		0.422795, 0.758038, 0.496612,
		35.761986, 36.827988, 50.215977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153767, 36.778313, 49.591377>,  <35.466030, 36.297359, 49.868347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153767, 36.778313, 49.591377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445206, 36.998501, 49.754410>,  <35.620068, 37.130615, 49.852230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445206, 36.998501, 49.754410>,  <35.153767, 36.778313, 49.591377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445206, 36.998501, 49.754410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039841, 0.560000, -0.827534,
		-0.683782, 0.619179, 0.386084,
		0.728598, 0.550471, 0.407586,
		35.663784, 37.163643, 49.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992329, 37.497303, 49.498875>,  <35.153767, 36.778313, 49.591377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992329, 37.497303, 49.498875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388844, 37.458984, 49.535034>,  <35.626751, 37.435993, 49.556732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388844, 37.458984, 49.535034>,  <34.992329, 37.497303, 49.498875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388844, 37.458984, 49.535034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127920, 0.536606, -0.834080,
		0.031388, 0.838378, 0.544185,
		0.991288, -0.095793, 0.090403,
		35.686230, 37.430248, 49.562157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219330, 38.193008, 49.327705>,  <34.992329, 37.497303, 49.498875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219330, 38.193008, 49.327705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548679, 37.971043, 49.280174>,  <35.746288, 37.837864, 49.251656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548679, 37.971043, 49.280174>,  <35.219330, 38.193008, 49.327705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548679, 37.971043, 49.280174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270178, 0.567439, -0.777828,
		0.499058, 0.608340, 0.617142,
		0.823375, -0.554919, -0.118825,
		35.795692, 37.804565, 49.244526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709793, 38.722210, 49.022804>,  <35.219330, 38.193008, 49.327705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709793, 38.722210, 49.022804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886906, 38.368618, 48.962776>,  <35.993172, 38.156464, 48.926758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886906, 38.368618, 48.962776>,  <35.709793, 38.722210, 49.022804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886906, 38.368618, 48.962776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232120, 0.274679, -0.933098,
		0.866064, 0.378320, 0.326812,
		0.442778, -0.883983, -0.150074,
		36.019741, 38.103424, 48.917755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366344, 38.841759, 48.740013>,  <35.709793, 38.722210, 49.022804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366344, 38.841759, 48.740013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306061, 38.460266, 48.635956>,  <36.269890, 38.231369, 48.573521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306061, 38.460266, 48.635956>,  <36.366344, 38.841759, 48.740013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306061, 38.460266, 48.635956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241009, 0.219763, -0.945314,
		0.958750, -0.205166, 0.196738,
		-0.150710, -0.953735, -0.260144,
		36.260849, 38.174145, 48.557911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917152, 38.674400, 48.198807>,  <36.366344, 38.841759, 48.740013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917152, 38.674400, 48.198807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633842, 38.393604, 48.168972>,  <36.463856, 38.225128, 48.151070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633842, 38.393604, 48.168972>,  <36.917152, 38.674400, 48.198807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633842, 38.393604, 48.168972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114244, -0.009714, -0.993405,
		0.696634, -0.712123, 0.087078,
		-0.708272, -0.701988, -0.074588,
		36.421360, 38.183006, 48.146595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209846, 38.155624, 47.758869>,  <36.917152, 38.674400, 48.198807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209846, 38.155624, 47.758869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814285, 38.102016, 47.733234>,  <36.576950, 38.069851, 47.717854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814285, 38.102016, 47.733234>,  <37.209846, 38.155624, 47.758869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814285, 38.102016, 47.733234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091508, -0.209671, -0.973480,
		0.117031, -0.968543, 0.219609,
		-0.988904, -0.134023, -0.064092,
		36.517612, 38.061810, 47.714008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073475, 37.484325, 47.463448>,  <37.209846, 38.155624, 47.758869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073475, 37.484325, 47.463448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749817, 37.707378, 47.389339>,  <36.555622, 37.841209, 47.344875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749817, 37.707378, 47.389339>,  <37.073475, 37.484325, 47.463448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749817, 37.707378, 47.389339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095430, -0.186408, -0.977827,
		-0.579803, -0.808888, 0.097617,
		-0.809149, 0.557631, -0.185272,
		36.507072, 37.874668, 47.333759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682659, 37.090000, 47.032883>,  <37.073475, 37.484325, 47.463448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682659, 37.090000, 47.032883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579891, 37.471146, 46.968338>,  <36.518230, 37.699833, 46.929611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579891, 37.471146, 46.968338>,  <36.682659, 37.090000, 47.032883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579891, 37.471146, 46.968338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098295, -0.140334, -0.985213,
		-0.961422, -0.268977, -0.057608,
		-0.256915, 0.952868, -0.161360,
		36.502815, 37.757008, 46.919930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305416, 37.035084, 46.415062>,  <36.682659, 37.090000, 47.032883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305416, 37.035084, 46.415062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371910, 37.429447, 46.422539>,  <36.411808, 37.666065, 46.427025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371910, 37.429447, 46.422539>,  <36.305416, 37.035084, 46.415062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371910, 37.429447, 46.422539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238096, -0.021736, -0.970998,
		-0.956909, 0.165869, -0.238354,
		0.166239, 0.985908, 0.018693,
		36.421783, 37.725220, 46.428146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929825, 37.329121, 45.981514>,  <36.305416, 37.035084, 46.415062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929825, 37.329121, 45.981514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211159, 37.611755, 46.012642>,  <36.379959, 37.781334, 46.031319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211159, 37.611755, 46.012642>,  <35.929825, 37.329121, 45.981514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211159, 37.611755, 46.012642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089203, 0.196333, -0.976471,
		-0.705236, 0.679849, 0.201118,
		0.703339, 0.706583, 0.077816,
		36.422161, 37.823730, 46.035988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169895, 37.394970, 46.045258>,  <35.929825, 37.329121, 45.981514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169895, 37.394970, 46.045258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818722, 37.302589, 45.877499>,  <34.608017, 37.247162, 45.776844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818722, 37.302589, 45.877499>,  <35.169895, 37.394970, 46.045258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818722, 37.302589, 45.877499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390291, -0.162165, 0.906298,
		-0.277325, 0.959356, 0.052231,
		-0.877932, -0.230954, -0.419400,
		34.555344, 37.233303, 45.751678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658066, 37.540787, 46.526852>,  <35.169895, 37.394970, 46.045258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658066, 37.540787, 46.526852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486565, 37.275787, 46.281162>,  <34.383663, 37.116787, 46.133751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486565, 37.275787, 46.281162>,  <34.658066, 37.540787, 46.526852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486565, 37.275787, 46.281162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358556, -0.499255, 0.788785,
		-0.829221, 0.558427, -0.023486,
		-0.428753, -0.662499, -0.614220,
		34.357937, 37.077038, 46.096897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900234, 37.572414, 46.678646>,  <34.658066, 37.540787, 46.526852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900234, 37.572414, 46.678646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967632, 37.212994, 46.516548>,  <34.008072, 36.997341, 46.419289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967632, 37.212994, 46.516548>,  <33.900234, 37.572414, 46.678646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967632, 37.212994, 46.516548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524442, -0.429822, 0.734993,
		-0.834608, 0.088685, -0.543658,
		0.168493, -0.898548, -0.405243,
		34.018181, 36.943428, 46.394974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306149, 37.272488, 46.856167>,  <33.900234, 37.572414, 46.678646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306149, 37.272488, 46.856167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567638, 36.974808, 46.801308>,  <33.724533, 36.796200, 46.768394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567638, 36.974808, 46.801308>,  <33.306149, 37.272488, 46.856167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567638, 36.974808, 46.801308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275913, -0.403167, 0.872542,
		-0.704635, -0.532566, -0.468895,
		0.653728, -0.744198, -0.137144,
		33.763756, 36.751549, 46.760166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880871, 36.689564, 46.939014>,  <33.306149, 37.272488, 46.856167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880871, 36.689564, 46.939014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257332, 36.562099, 46.984062>,  <33.483208, 36.485619, 47.011089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257332, 36.562099, 46.984062>,  <32.880871, 36.689564, 46.939014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257332, 36.562099, 46.984062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269591, -0.506857, 0.818790,
		-0.203839, -0.800967, -0.562939,
		0.941153, -0.318665, 0.112616,
		33.539677, 36.466499, 47.017845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769966, 36.009827, 47.248352>,  <32.880871, 36.689564, 46.939014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769966, 36.009827, 47.248352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139530, 36.138599, 47.331051>,  <33.361271, 36.215862, 47.380669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139530, 36.138599, 47.331051>,  <32.769966, 36.009827, 47.248352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139530, 36.138599, 47.331051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105115, -0.305999, 0.946211,
		0.367876, -0.895951, -0.248877,
		0.923914, 0.321928, 0.206747,
		33.416706, 36.235176, 47.393074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999088, 35.528004, 47.748310>,  <32.769966, 36.009827, 47.248352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999088, 35.528004, 47.748310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268513, 35.821842, 47.781036>,  <33.430168, 35.998146, 47.800671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268513, 35.821842, 47.781036>,  <32.999088, 35.528004, 47.748310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268513, 35.821842, 47.781036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183845, 0.059290, 0.981165,
		0.715906, -0.675913, 0.174986,
		0.673558, 0.734593, 0.081817,
		33.470581, 36.042221, 47.805580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562908, 35.005432, 47.508934>,  <32.999088, 35.528004, 47.748310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562908, 35.005432, 47.508934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586281, 34.612938, 47.582428>,  <33.600304, 34.377441, 47.626522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586281, 34.612938, 47.582428>,  <33.562908, 35.005432, 47.508934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586281, 34.612938, 47.582428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350700, -0.152138, -0.924047,
		0.934663, 0.118429, 0.335230,
		0.058433, -0.981238, 0.183731,
		33.603809, 34.318565, 47.637547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241222, 34.737984, 47.401524>,  <33.562908, 35.005432, 47.508934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241222, 34.737984, 47.401524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004509, 34.415920, 47.385986>,  <33.862480, 34.222683, 47.376663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004509, 34.415920, 47.385986>,  <34.241222, 34.737984, 47.401524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004509, 34.415920, 47.385986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374575, -0.232004, -0.897701,
		0.713781, -0.545795, 0.438889,
		-0.591785, -0.805159, -0.038841,
		33.826973, 34.174374, 47.374332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530579, 34.237770, 47.083427>,  <34.241222, 34.737984, 47.401524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530579, 34.237770, 47.083427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150642, 34.130405, 47.019230>,  <33.922680, 34.065987, 46.980713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150642, 34.130405, 47.019230>,  <34.530579, 34.237770, 47.083427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150642, 34.130405, 47.019230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191375, -0.092983, -0.977103,
		0.247344, -0.958806, 0.139687,
		-0.949840, -0.268413, -0.160493,
		33.865692, 34.049881, 46.971081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578262, 33.659149, 46.720921>,  <34.530579, 34.237770, 47.083427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578262, 33.659149, 46.720921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198036, 33.753395, 46.640018>,  <33.969898, 33.809944, 46.591476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198036, 33.753395, 46.640018>,  <34.578262, 33.659149, 46.720921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198036, 33.753395, 46.640018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184469, -0.095461, -0.978191,
		-0.249787, -0.967146, 0.047278,
		-0.950567, 0.235618, -0.202253,
		33.912865, 33.824081, 46.579342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347099, 33.124786, 46.328297>,  <34.578262, 33.659149, 46.720921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347099, 33.124786, 46.328297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087883, 33.418240, 46.246490>,  <33.932354, 33.594311, 46.197407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087883, 33.418240, 46.246490>,  <34.347099, 33.124786, 46.328297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087883, 33.418240, 46.246490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249864, -0.048875, -0.967046,
		-0.719453, -0.677787, -0.151636,
		-0.648040, 0.733633, -0.204518,
		33.893471, 33.638329, 46.185135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973717, 32.940044, 45.747047>,  <34.347099, 33.124786, 46.328297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973717, 32.940044, 45.747047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950844, 33.338589, 45.772339>,  <33.937119, 33.577717, 45.787514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950844, 33.338589, 45.772339>,  <33.973717, 32.940044, 45.747047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950844, 33.338589, 45.772339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051921, 0.060280, -0.996830,
		-0.997013, -0.060286, 0.048285,
		-0.057184, 0.996359, 0.063230,
		33.933689, 33.637497, 45.791309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416580, 33.137188, 45.383022>,  <33.973717, 32.940044, 45.747047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416580, 33.137188, 45.383022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668114, 33.448082, 45.391678>,  <33.819035, 33.634621, 45.396870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668114, 33.448082, 45.391678>,  <33.416580, 33.137188, 45.383022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668114, 33.448082, 45.391678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119492, 0.124099, -0.985049,
		-0.768304, 0.616845, 0.170911,
		0.628832, 0.777240, 0.021637,
		33.856762, 33.681255, 45.398170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.418507, 32.107979, 49.776237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536518, 32.488705, 49.742767>,  <37.607327, 32.717140, 49.722687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536518, 32.488705, 49.742767>,  <37.418507, 32.107979, 49.776237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536518, 32.488705, 49.742767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331726, 0.019910, -0.943166,
		-0.896055, 0.306019, 0.321616,
		0.295030, 0.951817, -0.083674,
		37.625027, 32.774250, 49.717667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897488, 32.514576, 49.571846>,  <37.418507, 32.107979, 49.776237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897488, 32.514576, 49.571846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.213413, 32.710766, 49.424538>,  <37.402969, 32.828480, 49.336151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.213413, 32.710766, 49.424538>,  <36.897488, 32.514576, 49.571846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213413, 32.710766, 49.424538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399333, -0.044520, -0.915724,
		-0.465535, 0.870317, 0.160700,
		0.789816, 0.490475, -0.368272,
		37.450359, 32.857910, 49.314056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623714, 33.112213, 49.138477>,  <36.897488, 32.514576, 49.571846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623714, 33.112213, 49.138477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.003723, 33.046478, 49.032303>,  <37.231728, 33.007038, 48.968597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.003723, 33.046478, 49.032303>,  <36.623714, 33.112213, 49.138477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003723, 33.046478, 49.032303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226928, 0.220383, -0.948649,
		0.214392, 0.961471, 0.172076,
		0.950021, -0.164334, -0.265433,
		37.288731, 32.997177, 48.952671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832726, 33.640594, 48.564457>,  <36.623714, 33.112213, 49.138477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832726, 33.640594, 48.564457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.083473, 33.331806, 48.522327>,  <37.233921, 33.146534, 48.497051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.083473, 33.331806, 48.522327>,  <36.832726, 33.640594, 48.564457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083473, 33.331806, 48.522327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226602, -0.051306, -0.972635,
		0.745444, 0.633582, -0.207093,
		0.626869, -0.771973, -0.105325,
		37.271534, 33.100216, 48.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145710, 33.820057, 47.929214>,  <36.832726, 33.640594, 48.564457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145710, 33.820057, 47.929214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.181400, 33.429218, 48.006481>,  <37.202816, 33.194714, 48.052841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.181400, 33.429218, 48.006481>,  <37.145710, 33.820057, 47.929214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181400, 33.429218, 48.006481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102645, -0.201925, -0.974007,
		0.990708, 0.067081, -0.118312,
		0.089228, -0.977101, 0.193163,
		37.208168, 33.136089, 48.064430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477947, 33.566696, 47.285480>,  <37.145710, 33.820057, 47.929214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477947, 33.566696, 47.285480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.421852, 33.204666, 47.446068>,  <37.388195, 32.987450, 47.542419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.421852, 33.204666, 47.446068>,  <37.477947, 33.566696, 47.285480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421852, 33.204666, 47.446068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086572, -0.415130, -0.905634,
		0.986325, -0.092252, 0.136573,
		-0.140242, -0.905073, 0.401466,
		37.379780, 32.933144, 47.566509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997448, 33.011257, 47.044380>,  <37.477947, 33.566696, 47.285480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997448, 33.011257, 47.044380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679016, 32.805462, 47.171852>,  <37.487957, 32.681984, 47.248333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679016, 32.805462, 47.171852>,  <37.997448, 33.011257, 47.044380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679016, 32.805462, 47.171852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052942, -0.465351, -0.883542,
		0.602866, -0.720245, 0.343221,
		-0.796084, -0.514486, 0.318676,
		37.440189, 32.651115, 47.267456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123337, 32.314198, 46.844151>,  <37.997448, 33.011257, 47.044380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123337, 32.314198, 46.844151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.726318, 32.350967, 46.876175>,  <37.488110, 32.373028, 46.895390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.726318, 32.350967, 46.876175>,  <38.123337, 32.314198, 46.844151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726318, 32.350967, 46.876175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117539, -0.547564, -0.828467,
		-0.032313, -0.831700, 0.554285,
		-0.992543, 0.091921, 0.080064,
		37.428555, 32.378544, 46.900192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852455, 31.711546, 46.598022>,  <38.123337, 32.314198, 46.844151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852455, 31.711546, 46.598022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562042, 31.984484, 46.563896>,  <37.387794, 32.148247, 46.543423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562042, 31.984484, 46.563896>,  <37.852455, 31.711546, 46.598022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562042, 31.984484, 46.563896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135581, -0.263672, -0.955037,
		-0.674158, -0.681824, 0.283948,
		-0.726036, 0.682344, -0.085314,
		37.344231, 32.189186, 46.538303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271450, 31.321751, 46.352699>,  <37.852455, 31.711546, 46.598022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271450, 31.321751, 46.352699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207531, 31.707348, 46.267670>,  <37.169182, 31.938705, 46.216652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207531, 31.707348, 46.267670>,  <37.271450, 31.321751, 46.352699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207531, 31.707348, 46.267670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262552, -0.249085, -0.932214,
		-0.951594, -0.093153, 0.292901,
		-0.159796, 0.963991, -0.212570,
		37.159592, 31.996546, 46.203899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613281, 31.358791, 46.014488>,  <37.271450, 31.321751, 46.352699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613281, 31.358791, 46.014488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825325, 31.676352, 45.895351>,  <36.952553, 31.866888, 45.823872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825325, 31.676352, 45.895351>,  <36.613281, 31.358791, 46.014488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825325, 31.676352, 45.895351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268546, -0.175980, -0.947056,
		-0.804281, 0.582026, 0.119910,
		0.530109, 0.793900, -0.297837,
		36.984356, 31.914522, 45.806000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153065, 31.647970, 45.547253>,  <36.613281, 31.358791, 46.014488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153065, 31.647970, 45.547253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510883, 31.817160, 45.489456>,  <36.725574, 31.918674, 45.454781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510883, 31.817160, 45.489456>,  <36.153065, 31.647970, 45.547253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510883, 31.817160, 45.489456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102730, -0.120044, -0.987439,
		-0.435008, 0.898154, -0.063932,
		0.894547, 0.422976, -0.144488,
		36.779247, 31.944052, 45.446110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417717, 31.726740, 45.472057>,  <36.153065, 31.647970, 45.547253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417717, 31.726740, 45.472057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116997, 31.466705, 45.516197>,  <34.936565, 31.310684, 45.542683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116997, 31.466705, 45.516197>,  <35.417717, 31.726740, 45.472057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116997, 31.466705, 45.516197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025819, 0.196250, 0.980214,
		-0.658881, 0.734079, -0.164326,
		-0.751804, -0.650087, 0.110352,
		34.891457, 31.271679, 45.549301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955238, 32.014263, 45.898785>,  <35.417717, 31.726740, 45.472057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955238, 32.014263, 45.898785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.848759, 31.629791, 45.927814>,  <34.784870, 31.399107, 45.945232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.848759, 31.629791, 45.927814>,  <34.955238, 32.014263, 45.898785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848759, 31.629791, 45.927814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163206, 0.119149, 0.979371,
		-0.950000, 0.248867, -0.188589,
		-0.266204, -0.961181, 0.072575,
		34.768898, 31.341436, 45.949589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238796, 32.033718, 46.260208>,  <34.955238, 32.014263, 45.898785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238796, 32.033718, 46.260208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395676, 31.667747, 46.298367>,  <34.489803, 31.448166, 46.321262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395676, 31.667747, 46.298367>,  <34.238796, 32.033718, 46.260208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395676, 31.667747, 46.298367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248379, -0.005471, 0.968647,
		-0.885715, -0.403594, -0.229393,
		0.392195, -0.914922, 0.095398,
		34.513336, 31.393270, 46.326984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791111, 31.757954, 46.675781>,  <34.238796, 32.033718, 46.260208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791111, 31.757954, 46.675781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.131001, 31.552460, 46.723179>,  <34.334934, 31.429163, 46.751617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.131001, 31.552460, 46.723179>,  <33.791111, 31.757954, 46.675781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131001, 31.552460, 46.723179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122305, 0.026543, 0.992138,
		-0.512843, -0.857537, -0.040278,
		0.849725, -0.513737, 0.118493,
		34.385918, 31.398338, 46.758728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725403, 31.341562, 47.261921>,  <33.791111, 31.757954, 46.675781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725403, 31.341562, 47.261921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.124805, 31.336655, 47.240654>,  <34.364449, 31.333710, 47.227894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.124805, 31.336655, 47.240654>,  <33.725403, 31.341562, 47.261921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124805, 31.336655, 47.240654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052898, -0.021144, 0.998376,
		-0.013338, -0.999702, -0.020466,
		0.998511, -0.012234, -0.053165,
		34.424358, 31.332973, 47.224705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956669, 30.812361, 47.723907>,  <33.725403, 31.341562, 47.261921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956669, 30.812361, 47.723907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273270, 31.052536, 47.678288>,  <34.463230, 31.196640, 47.650917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273270, 31.052536, 47.678288>,  <33.956669, 30.812361, 47.723907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273270, 31.052536, 47.678288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141957, 0.000885, 0.989872,
		0.594457, -0.799672, -0.084536,
		0.791498, 0.600437, -0.114045,
		34.510719, 31.232668, 47.644073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449078, 30.495337, 48.132683>,  <33.956669, 30.812361, 47.723907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449078, 30.495337, 48.132683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556915, 30.878138, 48.089855>,  <34.621616, 31.107819, 48.064159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556915, 30.878138, 48.089855>,  <34.449078, 30.495337, 48.132683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556915, 30.878138, 48.089855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122058, 0.076330, 0.989583,
		0.955207, -0.279854, -0.096232,
		0.269594, 0.957003, -0.107070,
		34.637794, 31.165239, 48.057735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011124, 30.623211, 48.559986>,  <34.449078, 30.495337, 48.132683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011124, 30.623211, 48.559986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.943672, 31.010826, 48.487839>,  <34.903202, 31.243395, 48.444550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.943672, 31.010826, 48.487839>,  <35.011124, 30.623211, 48.559986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943672, 31.010826, 48.487839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248774, 0.218908, 0.943499,
		0.953770, 0.114228, -0.277985,
		-0.168628, 0.969036, -0.180371,
		34.893085, 31.301537, 48.433727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529079, 30.970533, 48.851440>,  <35.011124, 30.623211, 48.559986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529079, 30.970533, 48.851440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.236526, 31.243179, 48.842709>,  <35.060993, 31.406767, 48.837467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.236526, 31.243179, 48.842709>,  <35.529079, 30.970533, 48.851440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236526, 31.243179, 48.842709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215791, 0.261682, 0.940721,
		0.646921, 0.683320, -0.338477,
		-0.731387, 0.681613, -0.021833,
		35.017109, 31.447662, 48.836159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858955, 31.643070, 49.111279>,  <35.529079, 30.970533, 48.851440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858955, 31.643070, 49.111279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.462288, 31.649305, 49.162434>,  <35.224289, 31.653046, 49.193127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.462288, 31.649305, 49.162434>,  <35.858955, 31.643070, 49.111279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462288, 31.649305, 49.162434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126591, 0.302444, 0.944724,
		-0.023953, 0.953040, -0.301896,
		-0.991666, 0.015588, 0.127890,
		35.164787, 31.653982, 49.200802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802849, 32.222462, 49.457619>,  <35.858955, 31.643070, 49.111279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802849, 32.222462, 49.457619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464832, 32.015789, 49.512672>,  <35.262024, 31.891785, 49.545704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464832, 32.015789, 49.512672>,  <35.802849, 32.222462, 49.457619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464832, 32.015789, 49.512672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045841, 0.186450, 0.981394,
		-0.532731, 0.835629, -0.133873,
		-0.845042, -0.516682, 0.137634,
		35.211319, 31.860785, 49.553963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325024, 32.649689, 49.843884>,  <35.802849, 32.222462, 49.457619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325024, 32.649689, 49.843884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.199112, 32.274784, 49.903809>,  <35.123566, 32.049839, 49.939766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.199112, 32.274784, 49.903809>,  <35.325024, 32.649689, 49.843884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199112, 32.274784, 49.903809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119850, 0.195825, 0.973287,
		-0.941567, 0.288419, -0.173974,
		-0.314783, -0.937266, 0.149815,
		35.104675, 31.993605, 49.948753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777992, 32.769608, 50.286591>,  <35.325024, 32.649689, 49.843884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777992, 32.769608, 50.286591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876232, 32.385853, 50.342091>,  <34.935177, 32.155598, 50.375393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876232, 32.385853, 50.342091>,  <34.777992, 32.769608, 50.286591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876232, 32.385853, 50.342091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002305, 0.143715, 0.989616,
		-0.969370, -0.242726, 0.037507,
		0.245596, -0.959390, 0.138754,
		34.949909, 32.098034, 50.383717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227871, 32.394932, 50.750389>,  <34.777992, 32.769608, 50.286591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227871, 32.394932, 50.750389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.584599, 32.218143, 50.788994>,  <34.798637, 32.112072, 50.812157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.584599, 32.218143, 50.788994>,  <34.227871, 32.394932, 50.750389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584599, 32.218143, 50.788994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027223, 0.265396, 0.963755,
		-0.451564, -0.856872, 0.248718,
		0.891824, -0.441968, 0.096516,
		34.852146, 32.085552, 50.817947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110741, 33.078568, 50.562710>,  <34.227871, 32.394932, 50.750389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110741, 33.078568, 50.562710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.816292, 33.344418, 50.511490>,  <33.639622, 33.503925, 50.480759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.816292, 33.344418, 50.511490>,  <34.110741, 33.078568, 50.562710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816292, 33.344418, 50.511490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243029, 0.082968, -0.966464,
		-0.631709, -0.742559, -0.222597,
		-0.736126, 0.664622, -0.128052,
		33.595455, 33.543804, 50.473076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710083, 32.943176, 49.966450>,  <34.110741, 33.078568, 50.562710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710083, 32.943176, 49.966450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573654, 33.316406, 50.012146>,  <33.491798, 33.540344, 50.039566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573654, 33.316406, 50.012146>,  <33.710083, 32.943176, 49.966450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573654, 33.316406, 50.012146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094933, 0.086721, -0.991699,
		-0.935233, -0.349082, 0.059001,
		-0.341068, 0.933071, 0.114244,
		33.471333, 33.596329, 50.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077957, 32.951527, 49.656815>,  <33.710083, 32.943176, 49.966450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077957, 32.951527, 49.656815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.199165, 33.332722, 49.657307>,  <33.271889, 33.561440, 49.657604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.199165, 33.332722, 49.657307>,  <33.077957, 32.951527, 49.656815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199165, 33.332722, 49.657307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217395, 0.070384, -0.973543,
		-0.927857, 0.294736, 0.228502,
		0.303020, 0.952983, 0.001232,
		33.290070, 33.618618, 49.657677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676571, 33.323639, 49.218197>,  <33.077957, 32.951527, 49.656815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676571, 33.323639, 49.218197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.962200, 33.603050, 49.236752>,  <33.133579, 33.770699, 49.247883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.962200, 33.603050, 49.236752>,  <32.676571, 33.323639, 49.218197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962200, 33.603050, 49.236752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130897, -0.068137, -0.989052,
		-0.687722, 0.712330, -0.140091,
		0.714076, 0.698530, 0.046383,
		33.176422, 33.812611, 49.250668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469109, 33.683445, 48.618454>,  <32.676571, 33.323639, 49.218197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469109, 33.683445, 48.618454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844448, 33.787514, 48.709499>,  <33.069653, 33.849957, 48.764126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844448, 33.787514, 48.709499>,  <32.469109, 33.683445, 48.618454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844448, 33.787514, 48.709499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188338, 0.167368, -0.967738,
		-0.289877, 0.950945, 0.108048,
		0.938350, 0.260176, 0.227615,
		33.125954, 33.865566, 48.777782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543758, 34.355377, 48.429882>,  <32.469109, 33.683445, 48.618454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543758, 34.355377, 48.429882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.912979, 34.201611, 48.435547>,  <33.134510, 34.109352, 48.438946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.912979, 34.201611, 48.435547>,  <32.543758, 34.355377, 48.429882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912979, 34.201611, 48.435547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083511, 0.164311, -0.982867,
		0.375501, 0.908420, 0.183770,
		0.923052, -0.384414, 0.014164,
		33.189896, 34.086285, 48.439796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950424, 34.808025, 47.881340>,  <32.543758, 34.355377, 48.429882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950424, 34.808025, 47.881340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187187, 34.491047, 47.940220>,  <33.329247, 34.300858, 47.975548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187187, 34.491047, 47.940220>,  <32.950424, 34.808025, 47.881340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187187, 34.491047, 47.940220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346174, 0.085026, -0.934309,
		0.727876, 0.603984, 0.324653,
		0.591912, -0.792448, 0.147196,
		33.364761, 34.253311, 47.984379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373611, 35.266266, 48.328304>,  <32.950424, 34.808025, 47.881340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373611, 35.266266, 48.328304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420830, 35.662193, 48.296505>,  <33.449162, 35.899750, 48.277424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420830, 35.662193, 48.296505>,  <33.373611, 35.266266, 48.328304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420830, 35.662193, 48.296505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114465, 0.093091, 0.989056,
		0.986389, -0.107656, 0.124289,
		0.118048, 0.989820, -0.079501,
		33.456245, 35.959141, 48.272655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785763, 35.421436, 48.807842>,  <33.373611, 35.266266, 48.328304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785763, 35.421436, 48.807842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.646576, 35.790237, 48.739925>,  <33.563065, 36.011517, 48.699177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.646576, 35.790237, 48.739925>,  <33.785763, 35.421436, 48.807842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646576, 35.790237, 48.739925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074410, 0.207701, 0.975358,
		0.934550, 0.326757, -0.140879,
		-0.347966, 0.922003, -0.169793,
		33.542187, 36.066837, 48.688988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140686, 35.763569, 49.275555>,  <33.785763, 35.421436, 48.807842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140686, 35.763569, 49.275555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843590, 36.014301, 49.181393>,  <33.665333, 36.164742, 49.124897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843590, 36.014301, 49.181393>,  <34.140686, 35.763569, 49.275555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843590, 36.014301, 49.181393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031314, 0.318670, 0.947348,
		0.668847, 0.711006, -0.217060,
		-0.742741, 0.626834, -0.235406,
		33.620766, 36.202351, 49.110771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410156, 36.471756, 49.543102>,  <34.140686, 35.763569, 49.275555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410156, 36.471756, 49.543102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.011280, 36.474766, 49.513271>,  <33.771954, 36.476570, 49.495373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.011280, 36.474766, 49.513271>,  <34.410156, 36.471756, 49.543102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011280, 36.474766, 49.513271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058528, 0.543472, 0.837384,
		0.046830, 0.839393, -0.541503,
		-0.997187, 0.007522, -0.074579,
		33.712124, 36.477024, 49.490898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280338, 37.109745, 49.838531>,  <34.410156, 36.471756, 49.543102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280338, 37.109745, 49.838531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.925438, 36.925304, 49.833324>,  <33.712498, 36.814640, 49.830200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.925438, 36.925304, 49.833324>,  <34.280338, 37.109745, 49.838531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925438, 36.925304, 49.833324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245402, 0.447933, 0.859729,
		-0.390592, 0.765990, -0.510585,
		-0.887252, -0.461102, -0.013016,
		33.659264, 36.786972, 49.829418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781475, 37.644245, 49.882534>,  <34.280338, 37.109745, 49.838531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781475, 37.644245, 49.882534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.675312, 37.278721, 50.005501>,  <33.611614, 37.059406, 50.079281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.675312, 37.278721, 50.005501>,  <33.781475, 37.644245, 49.882534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675312, 37.278721, 50.005501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193906, 0.362927, 0.911419,
		-0.944435, 0.182292, -0.273519,
		-0.265412, -0.913813, 0.307414,
		33.595688, 37.004578, 50.097725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212959, 37.747364, 50.250343>,  <33.781475, 37.644245, 49.882534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212959, 37.747364, 50.250343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.338570, 37.398453, 50.400284>,  <33.413937, 37.189106, 50.490250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.338570, 37.398453, 50.400284>,  <33.212959, 37.747364, 50.250343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338570, 37.398453, 50.400284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203189, 0.323933, 0.924003,
		-0.927417, -0.366326, -0.075515,
		0.314024, -0.872280, 0.374854,
		33.432777, 37.136768, 50.512741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798622, 37.706013, 50.738823>,  <33.212959, 37.747364, 50.250343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798622, 37.706013, 50.738823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.052437, 37.412369, 50.835526>,  <33.204727, 37.236183, 50.893547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.052437, 37.412369, 50.835526>,  <32.798622, 37.706013, 50.738823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052437, 37.412369, 50.835526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017936, 0.298727, 0.954170,
		-0.772682, -0.609795, 0.176388,
		0.634540, -0.734106, 0.241758,
		33.242798, 37.192139, 50.908054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537563, 37.258247, 51.337322>,  <32.798622, 37.706013, 50.738823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537563, 37.258247, 51.337322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936054, 37.224899, 51.327721>,  <33.175148, 37.204891, 51.321960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936054, 37.224899, 51.327721>,  <32.537563, 37.258247, 51.337322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936054, 37.224899, 51.327721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040830, 0.206469, 0.977601,
		-0.076550, -0.974895, 0.209094,
		0.996230, -0.083373, -0.023999,
		33.234924, 37.199886, 51.320522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.933071, 38.238880, 35.790493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251236, 38.277458, 36.029835>,  <38.442135, 38.300606, 36.173439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251236, 38.277458, 36.029835>,  <37.933071, 38.238880, 35.790493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251236, 38.277458, 36.029835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457322, -0.552353, 0.696967,
		0.397723, -0.828012, -0.395238,
		0.795408, 0.096449, 0.598352,
		38.489857, 38.306393, 36.209339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107094, 37.591019, 35.971455>,  <37.933071, 38.238880, 35.790493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107094, 37.591019, 35.971455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198986, 37.864941, 36.248081>,  <38.254120, 38.029293, 36.414055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198986, 37.864941, 36.248081>,  <38.107094, 37.591019, 35.971455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198986, 37.864941, 36.248081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592356, -0.465417, 0.657648,
		0.772229, -0.560734, 0.298730,
		0.229732, 0.684809, 0.691563,
		38.267906, 38.070385, 36.455551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231213, 37.130798, 36.667858>,  <38.107094, 37.591019, 35.971455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231213, 37.130798, 36.667858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159889, 37.514210, 36.756790>,  <38.117096, 37.744255, 36.810150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159889, 37.514210, 36.756790>,  <38.231213, 37.130798, 36.667858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159889, 37.514210, 36.756790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638890, -0.284624, 0.714709,
		0.748348, -0.014605, 0.663145,
		-0.178309, 0.958528, 0.222329,
		38.106396, 37.801769, 36.823490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163551, 37.103420, 37.356838>,  <38.231213, 37.130798, 36.667858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163551, 37.103420, 37.356838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010654, 37.463581, 37.273739>,  <37.918915, 37.679680, 37.223881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010654, 37.463581, 37.273739>,  <38.163551, 37.103420, 37.356838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010654, 37.463581, 37.273739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654126, -0.104862, 0.749082,
		0.652692, 0.422226, 0.629061,
		-0.382247, 0.900405, -0.207746,
		37.895981, 37.733704, 37.211414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137569, 37.389282, 38.037514>,  <38.163551, 37.103420, 37.356838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137569, 37.389282, 38.037514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886555, 37.583931, 37.794403>,  <37.735947, 37.700718, 37.648537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886555, 37.583931, 37.794403>,  <38.137569, 37.389282, 38.037514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886555, 37.583931, 37.794403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684333, 0.027561, 0.728649,
		0.371326, 0.873179, 0.315714,
		-0.627540, 0.486619, -0.607779,
		37.698292, 37.729916, 37.612068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927563, 37.943775, 38.444191>,  <38.137569, 37.389282, 38.037514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927563, 37.943775, 38.444191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657116, 37.911716, 38.151222>,  <37.494846, 37.892483, 37.975441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657116, 37.911716, 38.151222>,  <37.927563, 37.943775, 38.444191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657116, 37.911716, 38.151222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735547, 0.015633, 0.677293,
		-0.042834, 0.996660, -0.069522,
		-0.676118, -0.080148, -0.732421,
		37.454281, 37.887672, 37.931496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461418, 38.434719, 38.553104>,  <37.927563, 37.943775, 38.444191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461418, 38.434719, 38.553104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266293, 38.149231, 38.352047>,  <37.149220, 37.977940, 38.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266293, 38.149231, 38.352047>,  <37.461418, 38.434719, 38.553104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266293, 38.149231, 38.352047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653791, -0.082842, 0.752126,
		-0.578445, 0.695519, -0.426210,
		-0.487810, -0.713716, -0.502643,
		37.119949, 37.935116, 38.201256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794300, 38.653591, 38.558811>,  <37.461418, 38.434719, 38.553104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794300, 38.653591, 38.558811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770840, 38.266758, 38.459774>,  <36.756763, 38.034657, 38.400352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770840, 38.266758, 38.459774>,  <36.794300, 38.653591, 38.558811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770840, 38.266758, 38.459774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787255, -0.107699, 0.607149,
		-0.613831, 0.230533, -0.755027,
		-0.058652, -0.967086, -0.247597,
		36.753242, 37.976631, 38.385494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070965, 38.552757, 38.429256>,  <36.794300, 38.653591, 38.558811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070965, 38.552757, 38.429256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267673, 38.223862, 38.543850>,  <36.385700, 38.026524, 38.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267673, 38.223862, 38.543850>,  <36.070965, 38.552757, 38.429256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267673, 38.223862, 38.543850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640800, -0.119004, 0.758428,
		-0.589519, -0.556556, -0.585416,
		0.491775, -0.822243, 0.286486,
		36.415207, 37.977188, 38.629795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534767, 37.949669, 38.541958>,  <36.070965, 38.552757, 38.429256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534767, 37.949669, 38.541958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854706, 37.825954, 38.747711>,  <36.046669, 37.751728, 38.871162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854706, 37.825954, 38.747711>,  <35.534767, 37.949669, 38.541958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854706, 37.825954, 38.747711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556688, -0.061880, 0.828414,
		-0.224384, -0.948955, -0.221668,
		0.799844, -0.309283, 0.514386,
		36.094658, 37.733170, 38.902027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219597, 37.414112, 38.963070>,  <35.534767, 37.949669, 38.541958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219597, 37.414112, 38.963070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569958, 37.487431, 39.141594>,  <35.780174, 37.531422, 39.248711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569958, 37.487431, 39.141594>,  <35.219597, 37.414112, 38.963070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569958, 37.487431, 39.141594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396155, -0.254820, 0.882116,
		0.275421, -0.949457, -0.150583,
		0.875902, 0.183299, 0.446314,
		35.832729, 37.542419, 39.275490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185493, 36.931889, 39.523209>,  <35.219597, 37.414112, 38.963070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185493, 36.931889, 39.523209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475998, 37.191051, 39.615086>,  <35.650303, 37.346550, 39.670212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475998, 37.191051, 39.615086>,  <35.185493, 36.931889, 39.523209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475998, 37.191051, 39.615086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266667, -0.042427, 0.962854,
		0.633583, -0.760539, 0.141961,
		0.726265, 0.647905, 0.229691,
		35.693878, 37.385422, 39.683994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025326, 36.214127, 39.498070>,  <35.185493, 36.931889, 39.523209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025326, 36.214127, 39.498070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021896, 35.831249, 39.613804>,  <35.019836, 35.601524, 39.683247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021896, 35.831249, 39.613804>,  <35.025326, 36.214127, 39.498070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021896, 35.831249, 39.613804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147245, -0.284985, -0.947155,
		0.989063, -0.050727, -0.138497,
		-0.008577, -0.957189, 0.289338,
		35.019325, 35.544094, 39.700603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520241, 35.837654, 39.083096>,  <35.025326, 36.214127, 39.498070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520241, 35.837654, 39.083096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234314, 35.584137, 39.201309>,  <35.062759, 35.432026, 39.272240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234314, 35.584137, 39.201309>,  <35.520241, 35.837654, 39.083096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234314, 35.584137, 39.201309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172709, -0.249521, -0.952844,
		0.677647, -0.732152, 0.068901,
		-0.714818, -0.633792, 0.295536,
		35.019867, 35.394001, 39.289970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534241, 35.160671, 38.748264>,  <35.520241, 35.837654, 39.083096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534241, 35.160671, 38.748264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151661, 35.148666, 38.864407>,  <34.922112, 35.141464, 38.934093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151661, 35.148666, 38.864407>,  <35.534241, 35.160671, 38.748264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151661, 35.148666, 38.864407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277870, -0.211104, -0.937136,
		0.089418, -0.977003, 0.193572,
		-0.956448, -0.030009, 0.290357,
		34.864727, 35.139664, 38.951515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238949, 34.623058, 38.397419>,  <35.534241, 35.160671, 38.748264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238949, 34.623058, 38.397419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912907, 34.824718, 38.511574>,  <34.717281, 34.945713, 38.580067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912907, 34.824718, 38.511574>,  <35.238949, 34.623058, 38.397419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912907, 34.824718, 38.511574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505209, -0.377515, -0.776045,
		-0.283500, -0.776737, 0.562412,
		-0.815102, 0.504144, 0.285389,
		34.668377, 34.975964, 38.597191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673813, 34.102001, 38.309280>,  <35.238949, 34.623058, 38.397419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673813, 34.102001, 38.309280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488869, 34.455585, 38.337067>,  <34.377903, 34.667736, 38.353737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488869, 34.455585, 38.337067>,  <34.673813, 34.102001, 38.309280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488869, 34.455585, 38.337067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580395, -0.242494, -0.777392,
		-0.670344, -0.399753, 0.625170,
		-0.462364, 0.883965, 0.069461,
		34.350159, 34.720776, 38.357906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971336, 34.032024, 38.471436>,  <34.673813, 34.102001, 38.309280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971336, 34.032024, 38.471436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005573, 34.381580, 38.280022>,  <34.026115, 34.591312, 38.165173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005573, 34.381580, 38.280022>,  <33.971336, 34.032024, 38.471436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005573, 34.381580, 38.280022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570824, -0.350642, -0.742435,
		-0.816599, 0.336707, 0.468823,
		0.085594, 0.873887, -0.478534,
		34.031250, 34.643745, 38.136463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278767, 34.199528, 38.172306>,  <33.971336, 34.032024, 38.471436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278767, 34.199528, 38.172306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532818, 34.415478, 37.951347>,  <33.685249, 34.545048, 37.818771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532818, 34.415478, 37.951347>,  <33.278767, 34.199528, 38.172306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532818, 34.415478, 37.951347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587427, -0.126752, -0.799290,
		-0.501535, 0.832147, 0.236633,
		0.635132, 0.539876, -0.552396,
		33.723358, 34.577442, 37.785629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918980, 34.402061, 37.702244>,  <33.278767, 34.199528, 38.172306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918980, 34.402061, 37.702244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258419, 34.503029, 37.516270>,  <33.462082, 34.563610, 37.404686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258419, 34.503029, 37.516270>,  <32.918980, 34.402061, 37.702244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258419, 34.503029, 37.516270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441203, -0.147285, -0.885238,
		-0.291931, 0.956342, -0.013616,
		0.848596, 0.252421, -0.464938,
		33.512997, 34.578754, 37.376789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784435, 34.969433, 37.196747>,  <32.918980, 34.402061, 37.702244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784435, 34.969433, 37.196747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120480, 34.794483, 37.068424>,  <33.322105, 34.689514, 36.991432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120480, 34.794483, 37.068424>,  <32.784435, 34.969433, 37.196747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120480, 34.794483, 37.068424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361272, -0.010037, -0.932406,
		0.404588, 0.899225, -0.166442,
		0.840114, -0.437371, -0.320804,
		33.372513, 34.663273, 36.972183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891605, 35.301018, 36.592522>,  <32.784435, 34.969433, 37.196747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891605, 35.301018, 36.592522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106339, 34.964211, 36.571293>,  <33.235180, 34.762127, 36.558556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106339, 34.964211, 36.571293>,  <32.891605, 35.301018, 36.592522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106339, 34.964211, 36.571293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395030, -0.195277, -0.897674,
		0.745493, 0.502867, -0.437454,
		0.536835, -0.842016, -0.053070,
		33.267387, 34.711605, 36.555370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121384, 35.379242, 35.905167>,  <32.891605, 35.301018, 36.592522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121384, 35.379242, 35.905167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168613, 35.002010, 36.029530>,  <33.196953, 34.775673, 36.104145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168613, 35.002010, 36.029530>,  <33.121384, 35.379242, 35.905167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168613, 35.002010, 36.029530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360353, -0.332443, -0.871566,
		0.925313, -0.009126, -0.379094,
		0.118074, -0.943079, 0.310903,
		33.204037, 34.719086, 36.122799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321770, 35.066887, 35.378502>,  <33.121384, 35.379242, 35.905167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321770, 35.066887, 35.378502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174351, 34.777851, 35.612438>,  <33.085899, 34.604427, 35.752800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174351, 34.777851, 35.612438>,  <33.321770, 35.066887, 35.378502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174351, 34.777851, 35.612438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431045, -0.424572, -0.796203,
		0.823636, -0.545527, -0.154996,
		-0.368543, -0.722592, 0.584839,
		33.063789, 34.561073, 35.787891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480339, 34.365498, 35.063751>,  <33.321770, 35.066887, 35.378502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480339, 34.365498, 35.063751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196693, 34.258934, 35.324883>,  <33.026508, 34.194996, 35.481564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196693, 34.258934, 35.324883>,  <33.480339, 34.365498, 35.063751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196693, 34.258934, 35.324883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483066, -0.490892, -0.725032,
		0.513623, -0.829489, 0.219405,
		-0.709111, -0.266406, 0.652832,
		32.983959, 34.179012, 35.520733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263287, 33.713642, 34.801826>,  <33.480339, 34.365498, 35.063751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263287, 33.713642, 34.801826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965443, 33.863270, 35.022957>,  <32.786736, 33.953049, 35.155636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965443, 33.863270, 35.022957>,  <33.263287, 33.713642, 34.801826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965443, 33.863270, 35.022957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664101, -0.498581, -0.557124,
		0.067224, -0.781975, 0.619674,
		-0.744615, 0.374074, 0.552827,
		32.742058, 33.975491, 35.188805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987141, 33.201363, 35.099895>,  <33.263287, 33.713642, 34.801826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987141, 33.201363, 35.099895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696320, 33.473167, 35.060585>,  <32.521828, 33.636250, 35.036999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696320, 33.473167, 35.060585>,  <32.987141, 33.201363, 35.099895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696320, 33.473167, 35.060585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465391, -0.592978, -0.657105,
		-0.504789, -0.432011, 0.747365,
		-0.727048, 0.679517, -0.098275,
		32.478207, 33.677021, 35.031101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757317, 33.177929, 35.344902>,  <32.987141, 33.201363, 35.099895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757317, 33.177929, 35.344902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134914, 33.083656, 35.252529>,  <34.361473, 33.027092, 35.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134914, 33.083656, 35.252529>,  <33.757317, 33.177929, 35.344902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134914, 33.083656, 35.252529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029982, -0.635713, 0.771343,
		-0.328595, -0.735068, -0.593044,
		0.943995, -0.235679, -0.230931,
		34.418114, 33.012951, 35.183250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814949, 32.517700, 35.403473>,  <33.757317, 33.177929, 35.344902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814949, 32.517700, 35.403473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184048, 32.667168, 35.441227>,  <34.405506, 32.756847, 35.463879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184048, 32.667168, 35.441227>,  <33.814949, 32.517700, 35.403473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184048, 32.667168, 35.441227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182822, -0.639983, 0.746323,
		0.339278, -0.671414, -0.658858,
		0.922750, 0.373665, 0.094382,
		34.460873, 32.779266, 35.469543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186371, 31.957247, 35.462212>,  <33.814949, 32.517700, 35.403473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186371, 31.957247, 35.462212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398273, 32.258270, 35.618679>,  <34.525414, 32.438885, 35.712559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398273, 32.258270, 35.618679>,  <34.186371, 31.957247, 35.462212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398273, 32.258270, 35.618679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210550, -0.563453, 0.798868,
		0.821601, -0.340844, -0.456943,
		0.529755, 0.752560, 0.391169,
		34.557201, 32.484039, 35.736031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788620, 31.601725, 35.785713>,  <34.186371, 31.957247, 35.462212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788620, 31.601725, 35.785713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710732, 31.952461, 35.961548>,  <34.663998, 32.162903, 36.067047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710732, 31.952461, 35.961548>,  <34.788620, 31.601725, 35.785713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710732, 31.952461, 35.961548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090055, -0.430287, 0.898189,
		0.976717, 0.214479, 0.004820,
		-0.194717, 0.876842, 0.439583,
		34.652317, 32.215515, 36.093422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210911, 31.562620, 36.384907>,  <34.788620, 31.601725, 35.785713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210911, 31.562620, 36.384907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927727, 31.839027, 36.443264>,  <34.757816, 32.004871, 36.478279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927727, 31.839027, 36.443264>,  <35.210911, 31.562620, 36.384907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927727, 31.839027, 36.443264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089768, -0.292938, 0.951908,
		0.700521, 0.660820, 0.269421,
		-0.707963, 0.691017, 0.145889,
		34.715340, 32.046333, 36.487030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342808, 31.797125, 36.949478>,  <35.210911, 31.562620, 36.384907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342808, 31.797125, 36.949478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963772, 31.923319, 36.929306>,  <34.736351, 31.999035, 36.917202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963772, 31.923319, 36.929306>,  <35.342808, 31.797125, 36.949478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963772, 31.923319, 36.929306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132702, -0.245055, 0.960384,
		0.290628, 0.916743, 0.274077,
		-0.947589, 0.315485, -0.050434,
		34.679497, 32.017963, 36.914177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308018, 32.349304, 37.476254>,  <35.342808, 31.797125, 36.949478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308018, 32.349304, 37.476254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927925, 32.231735, 37.434921>,  <34.699871, 32.161194, 37.410122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927925, 32.231735, 37.434921>,  <35.308018, 32.349304, 37.476254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927925, 32.231735, 37.434921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109758, 0.005398, 0.993944,
		-0.291584, 0.955814, -0.037390,
		-0.950227, -0.293922, -0.103334,
		34.642857, 32.143559, 37.403919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953091, 32.795341, 37.954773>,  <35.308018, 32.349304, 37.476254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953091, 32.795341, 37.954773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718765, 32.479557, 37.881477>,  <34.578171, 32.290089, 37.837502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718765, 32.479557, 37.881477>,  <34.953091, 32.795341, 37.954773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718765, 32.479557, 37.881477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171385, -0.100304, 0.980085,
		-0.792114, 0.605555, -0.076542,
		-0.585817, -0.789457, -0.183235,
		34.543018, 32.242722, 37.826508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501503, 32.904438, 38.459812>,  <34.953091, 32.795341, 37.954773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501503, 32.904438, 38.459812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429260, 32.524509, 38.357655>,  <34.385914, 32.296555, 38.296360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429260, 32.524509, 38.357655>,  <34.501503, 32.904438, 38.459812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429260, 32.524509, 38.357655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154218, -0.229109, 0.961107,
		-0.971391, 0.212965, -0.105101,
		-0.180602, -0.949818, -0.255398,
		34.375080, 32.239563, 38.281036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883236, 32.691101, 38.780708>,  <34.501503, 32.904438, 38.459812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883236, 32.691101, 38.780708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020374, 32.324539, 38.698097>,  <34.102657, 32.104603, 38.648533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020374, 32.324539, 38.698097>,  <33.883236, 32.691101, 38.780708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020374, 32.324539, 38.698097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103076, -0.255221, 0.961373,
		-0.933719, -0.308318, -0.181962,
		0.342849, -0.916408, -0.206525,
		34.123230, 32.049618, 38.636139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424038, 32.058815, 38.970768>,  <33.883236, 32.691101, 38.780708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424038, 32.058815, 38.970768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796963, 31.914360, 38.962959>,  <34.020718, 31.827686, 38.958275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796963, 31.914360, 38.962959>,  <33.424038, 32.058815, 38.970768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796963, 31.914360, 38.962959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034494, -0.142530, 0.989189,
		-0.360019, -0.921555, -0.145339,
		0.932307, -0.361140, -0.019525,
		34.076656, 31.806019, 38.957100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363892, 31.521957, 39.368725>,  <33.424038, 32.058815, 38.970768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363892, 31.521957, 39.368725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756332, 31.595490, 39.344563>,  <33.991795, 31.639608, 39.330067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756332, 31.595490, 39.344563>,  <33.363892, 31.521957, 39.368725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756332, 31.595490, 39.344563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093924, -0.179511, 0.979262,
		0.169178, -0.966427, -0.193384,
		0.981100, 0.183833, -0.060401,
		34.050663, 31.650639, 39.326443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706444, 30.920553, 39.624821>,  <33.363892, 31.521957, 39.368725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706444, 30.920553, 39.624821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926762, 31.249363, 39.682648>,  <34.058952, 31.446650, 39.717342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926762, 31.249363, 39.682648>,  <33.706444, 30.920553, 39.624821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926762, 31.249363, 39.682648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062891, -0.213587, 0.974897,
		0.832268, -0.527876, -0.169341,
		0.550795, 0.822026, 0.144563,
		34.091999, 31.495972, 39.726017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356117, 30.691393, 39.881027>,  <33.706444, 30.920553, 39.624821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356117, 30.691393, 39.881027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347427, 31.074270, 39.996479>,  <34.342213, 31.303997, 40.065750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347427, 31.074270, 39.996479>,  <34.356117, 30.691393, 39.881027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347427, 31.074270, 39.996479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209679, -0.277917, 0.937442,
		0.977529, 0.080889, -0.194664,
		-0.021729, 0.957193, 0.288633,
		34.340908, 31.361427, 40.083069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709541, 30.672089, 40.482643>,  <34.356117, 30.691393, 39.881027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709541, 30.672089, 40.482643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569511, 31.046583, 40.494732>,  <34.485493, 31.271280, 40.501984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569511, 31.046583, 40.494732>,  <34.709541, 30.672089, 40.482643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569511, 31.046583, 40.494732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182509, 0.036532, 0.982525,
		0.918770, 0.349473, -0.183660,
		-0.350075, 0.936234, 0.030217,
		34.464489, 31.327454, 40.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241608, 31.061777, 40.801151>,  <34.709541, 30.672089, 40.482643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241608, 31.061777, 40.801151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892868, 31.255726, 40.828804>,  <34.683624, 31.372095, 40.845394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892868, 31.255726, 40.828804>,  <35.241608, 31.061777, 40.801151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892868, 31.255726, 40.828804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098997, 0.036222, 0.994428,
		0.479666, 0.873835, -0.079581,
		-0.871849, 0.484872, 0.069133,
		34.631313, 31.401188, 40.849545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290829, 31.609322, 41.395279>,  <35.241608, 31.061777, 40.801151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290829, 31.609322, 41.395279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896423, 31.577740, 41.336571>,  <34.659779, 31.558790, 41.301346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896423, 31.577740, 41.336571>,  <35.290829, 31.609322, 41.395279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896423, 31.577740, 41.336571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161479, 0.234727, 0.958555,
		-0.041231, 0.968850, -0.244193,
		-0.986015, -0.078954, -0.146771,
		34.600620, 31.554054, 41.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005283, 32.193104, 41.716927>,  <35.290829, 31.609322, 41.395279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005283, 32.193104, 41.716927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732674, 31.901505, 41.691341>,  <34.569107, 31.726545, 41.675991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732674, 31.901505, 41.691341>,  <35.005283, 32.193104, 41.716927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732674, 31.901505, 41.691341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052133, -0.038819, 0.997885,
		-0.729938, 0.683416, -0.011548,
		-0.681522, -0.728997, -0.063964,
		34.528217, 31.682806, 41.672153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631317, 32.321354, 42.264084>,  <35.005283, 32.193104, 41.716927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631317, 32.321354, 42.264084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489677, 31.960831, 42.164276>,  <34.404694, 31.744518, 42.104393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489677, 31.960831, 42.164276>,  <34.631317, 32.321354, 42.264084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489677, 31.960831, 42.164276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184031, -0.194436, 0.963497,
		-0.916921, 0.387096, -0.097018,
		-0.354102, -0.901305, -0.249520,
		34.383446, 31.690439, 42.089420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912216, 32.268635, 42.503601>,  <34.631317, 32.321354, 42.264084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912216, 32.268635, 42.503601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090977, 31.911751, 42.477554>,  <34.198231, 31.697620, 42.461926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090977, 31.911751, 42.477554>,  <33.912216, 32.268635, 42.503601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090977, 31.911751, 42.477554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155086, -0.148953, 0.976607,
		-0.881039, -0.426346, -0.204936,
		0.446899, -0.892212, -0.065113,
		34.225048, 31.644087, 42.458019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406754, 31.830662, 42.811001>,  <33.912216, 32.268635, 42.503601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406754, 31.830662, 42.811001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749462, 31.624483, 42.817406>,  <33.955090, 31.500776, 42.821247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749462, 31.624483, 42.817406>,  <33.406754, 31.830662, 42.811001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749462, 31.624483, 42.817406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136003, -0.195899, 0.971147,
		-0.497437, -0.834230, -0.237943,
		0.856773, -0.515446, 0.016010,
		34.006493, 31.469851, 42.822208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239174, 31.283854, 43.322350>,  <33.406754, 31.830662, 42.811001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239174, 31.283854, 43.322350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636730, 31.269024, 43.280758>,  <33.875263, 31.260126, 43.255802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636730, 31.269024, 43.280758>,  <33.239174, 31.283854, 43.322350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636730, 31.269024, 43.280758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094646, -0.198698, 0.975480,
		-0.056826, -0.979359, -0.193974,
		0.993888, -0.037074, -0.103983,
		33.934898, 31.257902, 43.249561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484715, 30.618248, 43.677986>,  <33.239174, 31.283854, 43.322350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484715, 30.618248, 43.677986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813900, 30.845074, 43.664337>,  <34.011414, 30.981169, 43.656147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813900, 30.845074, 43.664337>,  <33.484715, 30.618248, 43.677986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813900, 30.845074, 43.664337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249794, -0.307270, 0.918253,
		0.510222, -0.764215, -0.394522,
		0.822968, 0.567062, -0.034120,
		34.060791, 31.015192, 43.654102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070213, 30.205170, 43.944370>,  <33.484715, 30.618248, 43.677986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070213, 30.205170, 43.944370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189983, 30.585878, 43.971119>,  <34.261845, 30.814304, 43.987167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189983, 30.585878, 43.971119>,  <34.070213, 30.205170, 43.944370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189983, 30.585878, 43.971119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253600, -0.146959, 0.956081,
		0.919800, -0.269313, -0.285373,
		0.299423, 0.951774, 0.066875,
		34.279812, 30.871410, 43.991180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659035, 30.182386, 44.366379>,  <34.070213, 30.205170, 43.944370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659035, 30.182386, 44.366379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543770, 30.565414, 44.364498>,  <34.474609, 30.795231, 44.363369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543770, 30.565414, 44.364498>,  <34.659035, 30.182386, 44.366379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543770, 30.565414, 44.364498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279707, 0.088867, 0.955964,
		0.915820, 0.274158, -0.293447,
		-0.288163, 0.957570, -0.004702,
		34.457321, 30.852686, 44.363087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322124, 30.593111, 44.528225>,  <34.659035, 30.182386, 44.366379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322124, 30.593111, 44.528225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986877, 30.776131, 44.647022>,  <34.785728, 30.885942, 44.718300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986877, 30.776131, 44.647022>,  <35.322124, 30.593111, 44.528225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986877, 30.776131, 44.647022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347319, 0.027778, 0.937335,
		0.420625, 0.888752, -0.182196,
		-0.838119, 0.457547, 0.296996,
		34.735443, 30.913395, 44.736122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528530, 31.238575, 44.945343>,  <35.322124, 30.593111, 44.528225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528530, 31.238575, 44.945343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153023, 31.155983, 45.055668>,  <34.927719, 31.106428, 45.121864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153023, 31.155983, 45.055668>,  <35.528530, 31.238575, 44.945343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153023, 31.155983, 45.055668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261240, 0.095359, 0.960552,
		-0.224634, 0.973793, -0.035580,
		-0.938772, -0.206478, 0.275815,
		34.871391, 31.094040, 45.138412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132221, 31.770390, 44.816223>,  <35.528530, 31.238575, 44.945343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132221, 31.770390, 44.816223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513012, 31.834263, 44.920712>,  <36.741486, 31.872587, 44.983406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513012, 31.834263, 44.920712>,  <36.132221, 31.770390, 44.816223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513012, 31.834263, 44.920712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242434, 0.127900, -0.961700,
		-0.186978, 0.978848, 0.083045,
		0.951979, 0.159683, 0.261221,
		36.798607, 31.882168, 44.999077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304142, 32.413155, 44.573421>,  <36.132221, 31.770390, 44.816223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304142, 32.413155, 44.573421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633324, 32.187859, 44.603107>,  <36.830833, 32.052681, 44.620918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633324, 32.187859, 44.603107>,  <36.304142, 32.413155, 44.573421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633324, 32.187859, 44.603107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199838, 0.164724, -0.965883,
		0.531799, 0.809708, 0.248117,
		0.822955, -0.563239, 0.074210,
		36.880211, 32.018887, 44.625370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777802, 32.747646, 44.325806>,  <36.304142, 32.413155, 44.573421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777802, 32.747646, 44.325806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911373, 32.370842, 44.312546>,  <36.991516, 32.144760, 44.304588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911373, 32.370842, 44.312546>,  <36.777802, 32.747646, 44.325806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911373, 32.370842, 44.312546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331951, 0.150444, -0.931222,
		0.882212, 0.299961, 0.362941,
		0.333933, -0.942014, -0.033151,
		37.011555, 32.088238, 44.302601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440575, 32.782257, 44.120884>,  <36.777802, 32.747646, 44.325806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440575, 32.782257, 44.120884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336788, 32.405388, 44.036037>,  <37.274517, 32.179268, 43.985130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336788, 32.405388, 44.036037>,  <37.440575, 32.782257, 44.120884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336788, 32.405388, 44.036037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500309, 0.056736, -0.863986,
		0.826057, -0.330297, 0.456655,
		-0.259463, -0.942170, -0.212118,
		37.258949, 32.122738, 43.972401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043690, 32.606564, 43.697052>,  <37.440575, 32.782257, 44.120884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043690, 32.606564, 43.697052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785458, 32.305820, 43.643482>,  <37.630520, 32.125374, 43.611340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785458, 32.305820, 43.643482>,  <38.043690, 32.606564, 43.697052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785458, 32.305820, 43.643482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387825, -0.171701, -0.905599,
		0.657888, -0.636575, 0.402437,
		-0.645580, -0.751858, -0.133920,
		37.591782, 32.080261, 43.603306>
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
