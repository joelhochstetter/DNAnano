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
	<24.368280, 34.926876, 34.533993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385773, 35.016716, 34.923382>,  <24.396267, 35.070621, 35.157013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385773, 35.016716, 34.923382>,  <24.368280, 34.926876, 34.533993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.385773, 35.016716, 34.923382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683673, 0.703781, -0.193089,
		-0.728477, 0.673978, -0.122778,
		0.043729, 0.224601, 0.973469,
		24.398891, 35.084095, 35.215424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059175, 34.607292, 34.484787>,  <24.368280, 34.926876, 34.533993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059175, 34.607292, 34.484787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838919, 34.274216, 34.461422>,  <24.706764, 34.074368, 34.447403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838919, 34.274216, 34.461422>,  <25.059175, 34.607292, 34.484787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838919, 34.274216, 34.461422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585022, 0.434884, -0.684561,
		0.595433, -0.342777, -0.726611,
		-0.550643, -0.832694, -0.058412,
		24.673725, 34.024406, 34.443897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166168, 34.459122, 33.838737>,  <25.059175, 34.607292, 34.484787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166168, 34.459122, 33.838737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829334, 34.334526, 34.014862>,  <24.627234, 34.259769, 34.120537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829334, 34.334526, 34.014862>,  <25.166168, 34.459122, 33.838737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829334, 34.334526, 34.014862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536822, 0.405132, -0.740060,
		0.052135, -0.859561, -0.508368,
		-0.842083, -0.311486, 0.440310,
		24.576710, 34.241081, 34.146954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474075, 34.790161, 33.183369>,  <25.166168, 34.459122, 33.838737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474075, 34.790161, 33.183369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859241, 34.683987, 33.164032>,  <26.090342, 34.620281, 33.152431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859241, 34.683987, 33.164032>,  <25.474075, 34.790161, 33.183369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859241, 34.683987, 33.164032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190703, -0.796349, 0.573986,
		-0.190850, -0.543482, -0.817437,
		0.962917, -0.265433, -0.048340,
		26.148117, 34.604355, 33.149529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569082, 34.083290, 32.979328>,  <25.474075, 34.790161, 33.183369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569082, 34.083290, 32.979328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931051, 34.174736, 33.122913>,  <26.148232, 34.229603, 33.209064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931051, 34.174736, 33.122913>,  <25.569082, 34.083290, 32.979328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931051, 34.174736, 33.122913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004958, -0.837748, 0.546034,
		0.425552, -0.495897, -0.756962,
		0.904920, 0.228613, 0.358964,
		26.202528, 34.243320, 33.230602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044617, 33.453030, 32.960590>,  <25.569082, 34.083290, 32.979328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044617, 33.453030, 32.960590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243546, 33.683552, 33.219986>,  <26.362904, 33.821865, 33.375622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243546, 33.683552, 33.219986>,  <26.044617, 33.453030, 32.960590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243546, 33.683552, 33.219986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180858, -0.799927, 0.572195,
		0.848504, -0.167282, -0.502054,
		0.497324, 0.576310, 0.648487,
		26.392742, 33.856445, 33.414532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569210, 32.958580, 33.244678>,  <26.044617, 33.453030, 32.960590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569210, 32.958580, 33.244678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616117, 33.269829, 33.491505>,  <26.644262, 33.456577, 33.639599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616117, 33.269829, 33.491505>,  <26.569210, 32.958580, 33.244678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616117, 33.269829, 33.491505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319832, -0.617839, 0.718319,
		0.940189, 0.113122, -0.321322,
		0.117267, 0.778125, 0.617065,
		26.651299, 33.503265, 33.676624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197392, 32.941395, 33.608013>,  <26.569210, 32.958580, 33.244678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197392, 32.941395, 33.608013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954155, 33.153049, 33.844738>,  <26.808212, 33.280041, 33.986774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954155, 33.153049, 33.844738>,  <27.197392, 32.941395, 33.608013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954155, 33.153049, 33.844738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369830, -0.470827, 0.800966,
		0.702460, 0.705931, 0.090616,
		-0.608091, 0.529135, 0.591812,
		26.771729, 33.311790, 34.022282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611153, 33.243774, 34.134865>,  <27.197392, 32.941395, 33.608013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611153, 33.243774, 34.134865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257551, 33.258762, 34.321255>,  <27.045391, 33.267754, 34.433090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257551, 33.258762, 34.321255>,  <27.611153, 33.243774, 34.134865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257551, 33.258762, 34.321255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389223, -0.493107, 0.778043,
		0.258927, 0.869162, 0.421325,
		-0.884003, 0.037467, 0.465977,
		26.992350, 33.270000, 34.461048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827446, 33.341015, 34.807053>,  <27.611153, 33.243774, 34.134865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827446, 33.341015, 34.807053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445736, 33.232487, 34.857239>,  <27.216709, 33.167370, 34.887352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445736, 33.232487, 34.857239>,  <27.827446, 33.341015, 34.807053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445736, 33.232487, 34.857239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261474, -0.554220, 0.790235,
		-0.144867, 0.786910, 0.599822,
		-0.954277, -0.271317, 0.125469,
		27.159452, 33.151093, 34.894878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714586, 33.320545, 35.538376>,  <27.827446, 33.341015, 34.807053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714586, 33.320545, 35.538376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407755, 33.112415, 35.388252>,  <27.223656, 32.987537, 35.298180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407755, 33.112415, 35.388252>,  <27.714586, 33.320545, 35.538376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407755, 33.112415, 35.388252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169130, -0.728309, 0.664049,
		-0.618858, 0.445903, 0.646672,
		-0.767079, -0.520324, -0.375305,
		27.177631, 32.956318, 35.275661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206543, 33.069920, 36.161762>,  <27.714586, 33.320545, 35.538376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206543, 33.069920, 36.161762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191320, 32.837330, 35.836693>,  <27.182188, 32.697777, 35.641651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191320, 32.837330, 35.836693>,  <27.206543, 33.069920, 36.161762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191320, 32.837330, 35.836693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174233, -0.804666, 0.567587,
		-0.983969, -0.119996, 0.131933,
		-0.038054, -0.581475, -0.812674,
		27.179905, 32.662888, 35.592892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890999, 32.391727, 36.406040>,  <27.206543, 33.069920, 36.161762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890999, 32.391727, 36.406040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080135, 32.311039, 36.062943>,  <27.193617, 32.262627, 35.857082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080135, 32.311039, 36.062943>,  <26.890999, 32.391727, 36.406040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080135, 32.311039, 36.062943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227516, -0.912483, 0.340016,
		-0.851267, -0.355926, -0.385566,
		0.472843, -0.201722, -0.857746,
		27.221989, 32.250523, 35.805618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622793, 31.703669, 36.199730>,  <26.890999, 32.391727, 36.406040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622793, 31.703669, 36.199730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980118, 31.752331, 36.026669>,  <27.194513, 31.781528, 35.922832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980118, 31.752331, 36.026669>,  <26.622793, 31.703669, 36.199730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980118, 31.752331, 36.026669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292015, -0.888893, 0.352983,
		-0.341642, -0.441666, -0.829586,
		0.893313, 0.121658, -0.432656,
		27.248112, 31.788828, 35.896870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704046, 31.198822, 35.728992>,  <26.622793, 31.703669, 36.199730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704046, 31.198822, 35.728992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077681, 31.314327, 35.812992>,  <27.301861, 31.383631, 35.863392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077681, 31.314327, 35.812992>,  <26.704046, 31.198822, 35.728992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077681, 31.314327, 35.812992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230391, -0.936783, 0.263361,
		0.272772, -0.197620, -0.941564,
		0.934086, 0.288765, 0.209998,
		27.357906, 31.400957, 35.875992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153463, 30.624212, 35.544182>,  <26.704046, 31.198822, 35.728992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153463, 30.624212, 35.544182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389919, 30.850451, 35.774193>,  <27.531794, 30.986193, 35.912201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389919, 30.850451, 35.774193>,  <27.153463, 30.624212, 35.544182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389919, 30.850451, 35.774193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488797, -0.818313, 0.302394,
		0.641585, 0.102314, -0.760198,
		0.591140, 0.565594, 0.575028,
		27.567261, 31.020128, 35.946701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832079, 30.451864, 35.369389>,  <27.153463, 30.624212, 35.544182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832079, 30.451864, 35.369389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867167, 30.601555, 35.738659>,  <27.888218, 30.691368, 35.960220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867167, 30.601555, 35.738659>,  <27.832079, 30.451864, 35.369389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867167, 30.601555, 35.738659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637915, -0.732899, 0.236479,
		0.765094, 0.568167, -0.303012,
		0.087718, 0.374225, 0.923180,
		27.893482, 30.713823, 36.015614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505442, 30.459129, 35.528404>,  <27.832079, 30.451864, 35.369389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505442, 30.459129, 35.528404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339836, 30.496262, 35.890614>,  <28.240473, 30.518541, 36.107941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339836, 30.496262, 35.890614>,  <28.505442, 30.459129, 35.528404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339836, 30.496262, 35.890614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597559, -0.722709, 0.347296,
		0.686670, 0.684890, 0.243741,
		-0.414013, 0.092828, 0.905525,
		28.215631, 30.524111, 36.162270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110489, 30.476151, 36.095097>,  <28.505442, 30.459129, 35.528404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110489, 30.476151, 36.095097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782021, 30.362436, 36.293030>,  <28.584940, 30.294209, 36.411789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782021, 30.362436, 36.293030>,  <29.110489, 30.476151, 36.095097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782021, 30.362436, 36.293030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527232, -0.709770, 0.467175,
		0.218407, 0.644522, 0.732727,
		-0.821172, -0.284283, 0.494832,
		28.535669, 30.277151, 36.441479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303267, 30.499281, 36.749001>,  <29.110489, 30.476151, 36.095097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303267, 30.499281, 36.749001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995316, 30.244019, 36.746193>,  <28.810545, 30.090862, 36.744507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995316, 30.244019, 36.746193>,  <29.303267, 30.499281, 36.749001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995316, 30.244019, 36.746193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601355, -0.729076, 0.326833,
		-0.213687, 0.247401, 0.945056,
		-0.769877, -0.638154, -0.007018,
		28.764353, 30.052572, 36.744087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327738, 30.156742, 37.420498>,  <29.303267, 30.499281, 36.749001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327738, 30.156742, 37.420498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088762, 29.912722, 37.212303>,  <28.945377, 29.766310, 37.087387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088762, 29.912722, 37.212303>,  <29.327738, 30.156742, 37.420498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088762, 29.912722, 37.212303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462084, -0.792358, 0.398305,
		-0.655396, -0.002545, 0.755281,
		-0.597440, -0.610051, -0.520485,
		28.909531, 29.729706, 37.056156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039351, 29.687555, 37.908154>,  <29.327738, 30.156742, 37.420498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039351, 29.687555, 37.908154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013828, 29.525028, 37.543552>,  <28.998514, 29.427513, 37.324791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013828, 29.525028, 37.543552>,  <29.039351, 29.687555, 37.908154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013828, 29.525028, 37.543552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346026, -0.865709, 0.361682,
		-0.936053, -0.292326, 0.195833,
		-0.063805, -0.406317, -0.911502,
		28.994686, 29.403133, 37.270103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888836, 28.981958, 38.001999>,  <29.039351, 29.687555, 37.908154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888836, 28.981958, 38.001999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018782, 28.975693, 37.623745>,  <29.096748, 28.971933, 37.396793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018782, 28.975693, 37.623745>,  <28.888836, 28.981958, 38.001999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018782, 28.975693, 37.623745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450256, -0.876721, 0.169205,
		-0.831705, -0.480745, -0.277761,
		0.324863, -0.015665, -0.945631,
		29.116241, 28.970993, 37.340057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885662, 28.336910, 37.794930>,  <28.888836, 28.981958, 38.001999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885662, 28.336910, 37.794930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157148, 28.511230, 37.558483>,  <29.320040, 28.615822, 37.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157148, 28.511230, 37.558483>,  <28.885662, 28.336910, 37.794930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157148, 28.511230, 37.558483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600417, -0.792774, 0.104924,
		-0.422898, -0.426132, -0.799730,
		0.678717, 0.435799, -0.591119,
		29.360764, 28.641970, 37.381145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123436, 27.859909, 37.259037>,  <28.885662, 28.336910, 37.794930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123436, 27.859909, 37.259037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425571, 28.121157, 37.280579>,  <29.606852, 28.277905, 37.293503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425571, 28.121157, 37.280579>,  <29.123436, 27.859909, 37.259037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425571, 28.121157, 37.280579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651585, -0.757254, 0.044768,
		0.070021, 0.001276, -0.997545,
		0.755337, 0.653120, 0.053855,
		29.652172, 28.317093, 37.296734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673893, 27.652464, 36.817379>,  <29.123436, 27.859909, 37.259037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673893, 27.652464, 36.817379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805069, 27.883965, 37.116043>,  <29.883776, 28.022865, 37.295242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805069, 27.883965, 37.116043>,  <29.673893, 27.652464, 36.817379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805069, 27.883965, 37.116043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804486, -0.585420, 0.100429,
		0.495234, 0.567743, -0.657579,
		0.327942, 0.578749, 0.746661,
		29.903452, 28.057589, 37.340042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288300, 26.960377, 36.448280>,  <29.673893, 27.652464, 36.817379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288300, 26.960377, 36.448280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553118, 26.682487, 36.335815>,  <29.712009, 26.515753, 36.268337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553118, 26.682487, 36.335815>,  <29.288300, 26.960377, 36.448280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553118, 26.682487, 36.335815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163035, 0.499669, -0.850735,
		0.731516, 0.517386, 0.444068,
		0.662045, -0.694725, -0.281164,
		29.751732, 26.474070, 36.251465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941551, 27.298073, 36.026619>,  <29.288300, 26.960377, 36.448280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941551, 27.298073, 36.026619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905575, 26.922915, 35.892597>,  <29.883989, 26.697819, 35.812183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905575, 26.922915, 35.892597>,  <29.941551, 27.298073, 36.026619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905575, 26.922915, 35.892597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132105, 0.322211, -0.937405,
		0.987147, -0.128573, 0.094921,
		-0.089940, -0.937896, -0.335055,
		29.878593, 26.641546, 35.792080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450251, 27.064190, 35.501904>,  <29.941551, 27.298073, 36.026619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450251, 27.064190, 35.501904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125114, 26.849783, 35.410709>,  <29.930033, 26.721140, 35.355991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125114, 26.849783, 35.410709>,  <30.450251, 27.064190, 35.501904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125114, 26.849783, 35.410709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080841, 0.283802, -0.955469,
		0.576849, -0.795074, -0.187353,
		-0.812840, -0.536015, -0.227986,
		29.881262, 26.688978, 35.342312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617527, 26.722225, 34.953934>,  <30.450251, 27.064190, 35.501904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617527, 26.722225, 34.953934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225975, 26.651497, 34.912895>,  <29.991043, 26.609060, 34.888271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225975, 26.651497, 34.912895>,  <30.617527, 26.722225, 34.953934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225975, 26.651497, 34.912895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070603, 0.178557, -0.981393,
		0.191858, -0.967910, -0.162301,
		-0.978880, -0.176829, -0.102595,
		29.932310, 26.598452, 34.882118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591757, 26.251451, 34.405506>,  <30.617527, 26.722225, 34.953934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591757, 26.251451, 34.405506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239742, 26.440607, 34.423012>,  <30.028534, 26.554100, 34.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239742, 26.440607, 34.423012>,  <30.591757, 26.251451, 34.405506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239742, 26.440607, 34.423012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049714, -0.000086, -0.998764,
		-0.472300, -0.881122, 0.023585,
		-0.880035, 0.472889, 0.043764,
		29.975731, 26.582474, 34.436142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024408, 25.875332, 34.153713>,  <30.591757, 26.251451, 34.405506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024408, 25.875332, 34.153713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959850, 26.265543, 34.093979>,  <29.921116, 26.499670, 34.058136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959850, 26.265543, 34.093979>,  <30.024408, 25.875332, 34.153713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959850, 26.265543, 34.093979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019569, -0.154455, -0.987806,
		-0.986696, -0.156505, 0.044018,
		-0.161395, 0.975525, -0.149338,
		29.911432, 26.558201, 34.049179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714865, 25.903017, 33.535259>,  <30.024408, 25.875332, 34.153713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714865, 25.903017, 33.535259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824673, 26.283493, 33.591652>,  <29.890556, 26.511780, 33.625488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824673, 26.283493, 33.591652>,  <29.714865, 25.903017, 33.535259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824673, 26.283493, 33.591652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075723, 0.124772, -0.989292,
		-0.958596, 0.282254, -0.037775,
		0.274518, 0.951191, 0.140979,
		29.907028, 26.568850, 33.633945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314217, 26.483723, 33.202068>,  <29.714865, 25.903017, 33.535259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314217, 26.483723, 33.202068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672628, 26.661205, 33.195610>,  <29.887674, 26.767694, 33.191734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672628, 26.661205, 33.195610>,  <29.314217, 26.483723, 33.202068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672628, 26.661205, 33.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077863, -0.192838, -0.978136,
		-0.437117, 0.875180, -0.207336,
		0.896028, 0.443704, -0.016148,
		29.941437, 26.794317, 33.190765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326622, 26.904455, 32.595779>,  <29.314217, 26.483723, 33.202068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326622, 26.904455, 32.595779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704281, 26.805262, 32.682583>,  <29.930876, 26.745745, 32.734665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704281, 26.805262, 32.682583>,  <29.326622, 26.904455, 32.595779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704281, 26.805262, 32.682583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200516, -0.090241, -0.975525,
		0.261500, 0.964551, -0.035476,
		0.944146, -0.247986, 0.217006,
		29.987524, 26.730865, 32.747684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838243, 27.521147, 32.761459>,  <29.326622, 26.904455, 32.595779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838243, 27.521147, 32.761459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079388, 27.517208, 33.080574>,  <30.224075, 27.514845, 33.272041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079388, 27.517208, 33.080574>,  <29.838243, 27.521147, 32.761459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079388, 27.517208, 33.080574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780192, 0.201905, 0.592060,
		-0.166908, -0.979356, 0.114037,
		0.602862, -0.009849, 0.797785,
		30.260246, 27.514254, 33.319908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313177, 27.986586, 32.638851>,  <29.838243, 27.521147, 32.761459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313177, 27.986586, 32.638851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021406, 27.919792, 32.904198>,  <28.846344, 27.879715, 33.063404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021406, 27.919792, 32.904198>,  <29.313177, 27.986586, 32.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021406, 27.919792, 32.904198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075132, 0.983438, 0.164941,
		-0.679921, 0.070472, -0.729891,
		-0.729426, -0.166985, 0.663365,
		28.802578, 27.869698, 33.103207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759163, 28.412844, 32.443062>,  <29.313177, 27.986586, 32.638851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759163, 28.412844, 32.443062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732666, 28.347179, 32.836746>,  <28.716768, 28.307781, 33.072956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732666, 28.347179, 32.836746>,  <28.759163, 28.412844, 32.443062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732666, 28.347179, 32.836746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059387, 0.985273, 0.160342,
		-0.996035, -0.047828, -0.075018,
		-0.066244, -0.164162, 0.984207,
		28.712793, 28.297932, 33.132008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040913, 28.644855, 32.779327>,  <28.759163, 28.412844, 32.443062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040913, 28.644855, 32.779327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330814, 28.667122, 33.054031>,  <28.504755, 28.680481, 33.218853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330814, 28.667122, 33.054031>,  <28.040913, 28.644855, 32.779327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330814, 28.667122, 33.054031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291375, 0.927980, 0.232280,
		-0.624366, -0.368449, 0.688776,
		0.724754, 0.055665, 0.686756,
		28.548241, 28.683821, 33.260059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758924, 29.027647, 33.353092>,  <28.040913, 28.644855, 32.779327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758924, 29.027647, 33.353092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150854, 29.059572, 33.426388>,  <28.386011, 29.078728, 33.470364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150854, 29.059572, 33.426388>,  <27.758924, 29.027647, 33.353092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150854, 29.059572, 33.426388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098482, 0.990580, 0.095144,
		-0.173916, -0.111269, 0.978454,
		0.979823, 0.079813, 0.183236,
		28.444801, 29.083517, 33.481358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896517, 29.703012, 33.819271>,  <27.758924, 29.027647, 33.353092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896517, 29.703012, 33.819271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254557, 29.606800, 33.669102>,  <28.469379, 29.549072, 33.578999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254557, 29.606800, 33.669102>,  <27.896517, 29.703012, 33.819271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254557, 29.606800, 33.669102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291416, 0.952875, 0.084300,
		0.337457, -0.184862, 0.923011,
		0.895097, -0.240533, -0.375426,
		28.523087, 29.534639, 33.556473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400047, 30.282110, 34.176418>,  <27.896517, 29.703012, 33.819271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400047, 30.282110, 34.176418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566547, 30.119307, 33.851192>,  <28.666449, 30.021626, 33.656055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566547, 30.119307, 33.851192>,  <28.400047, 30.282110, 34.176418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566547, 30.119307, 33.851192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357307, 0.895501, -0.265348,
		0.836102, -0.180063, 0.518180,
		0.416252, -0.407007, -0.813068,
		28.691423, 29.997204, 33.607273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111115, 30.498552, 34.220951>,  <28.400047, 30.282110, 34.176418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111115, 30.498552, 34.220951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036154, 30.401718, 33.840157>,  <28.991177, 30.343618, 33.611679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036154, 30.401718, 33.840157>,  <29.111115, 30.498552, 34.220951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036154, 30.401718, 33.840157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316739, 0.902497, -0.291850,
		0.929816, -0.356224, -0.092451,
		-0.187400, -0.242084, -0.951985,
		28.979933, 30.329094, 33.554562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524189, 30.979746, 33.885242>,  <29.111115, 30.498552, 34.220951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524189, 30.979746, 33.885242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297625, 30.846514, 33.583717>,  <29.161686, 30.766575, 33.402802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297625, 30.846514, 33.583717>,  <29.524189, 30.979746, 33.885242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297625, 30.846514, 33.583717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139327, 0.862817, -0.485937,
		0.812258, -0.380268, -0.442304,
		-0.566413, -0.333081, -0.753812,
		29.127701, 30.746590, 33.357574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872175, 31.238798, 33.186512>,  <29.524189, 30.979746, 33.885242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872175, 31.238798, 33.186512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488085, 31.159281, 33.108078>,  <29.257631, 31.111570, 33.061016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488085, 31.159281, 33.108078>,  <29.872175, 31.238798, 33.186512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488085, 31.159281, 33.108078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044382, 0.801969, -0.595715,
		0.275679, -0.563317, -0.778893,
		-0.960225, -0.198795, -0.196084,
		29.200018, 31.099642, 33.049252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812077, 31.252495, 32.424446>,  <29.872175, 31.238798, 33.186512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812077, 31.252495, 32.424446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458611, 31.354998, 32.581146>,  <29.246531, 31.416498, 32.675167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458611, 31.354998, 32.581146>,  <29.812077, 31.252495, 32.424446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458611, 31.354998, 32.581146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042829, 0.877607, -0.477464,
		-0.466154, -0.405141, -0.786487,
		-0.883666, 0.256256, 0.391748,
		29.193510, 31.431875, 32.698669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368677, 31.688501, 31.986879>,  <29.812077, 31.252495, 32.424446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368677, 31.688501, 31.986879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120234, 31.724077, 32.298344>,  <28.971167, 31.745422, 32.485222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120234, 31.724077, 32.298344>,  <29.368677, 31.688501, 31.986879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120234, 31.724077, 32.298344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164149, 0.956740, -0.240214,
		-0.766340, -0.277016, -0.579642,
		-0.621110, 0.088938, 0.778661,
		28.933901, 31.750759, 32.531940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826000, 32.163876, 31.756519>,  <29.368677, 31.688501, 31.986879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826000, 32.163876, 31.756519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851940, 32.169693, 32.155636>,  <28.867504, 32.173183, 32.395103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851940, 32.169693, 32.155636>,  <28.826000, 32.163876, 31.756519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851940, 32.169693, 32.155636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269215, 0.963074, 0.003457,
		-0.960894, -0.268844, 0.066371,
		0.064850, 0.014546, 0.997789,
		28.871395, 32.174057, 32.454971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415209, 32.648853, 31.956827>,  <28.826000, 32.163876, 31.756519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415209, 32.648853, 31.956827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626959, 32.628799, 32.295589>,  <28.754009, 32.616768, 32.498848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626959, 32.628799, 32.295589>,  <28.415209, 32.648853, 31.956827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626959, 32.628799, 32.295589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169775, 0.971799, 0.163655,
		-0.831227, -0.230418, 0.505934,
		0.529375, -0.050139, 0.846905,
		28.785770, 32.613758, 32.549660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070530, 33.064774, 32.426548>,  <28.415209, 32.648853, 31.956827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070530, 33.064774, 32.426548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434088, 33.033581, 32.590416>,  <28.652224, 33.014866, 32.688736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434088, 33.033581, 32.590416>,  <28.070530, 33.064774, 32.426548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434088, 33.033581, 32.590416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017491, 0.974369, 0.224275,
		-0.416655, -0.211008, 0.884237,
		0.908896, -0.077979, 0.409666,
		28.706757, 33.010185, 32.713314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986389, 33.473858, 32.926094>,  <28.070530, 33.064774, 32.426548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986389, 33.473858, 32.926094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384327, 33.433495, 32.922104>,  <28.623091, 33.409279, 32.919708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384327, 33.433495, 32.922104>,  <27.986389, 33.473858, 32.926094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384327, 33.433495, 32.922104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098627, 0.940131, 0.326230,
		-0.023537, -0.325533, 0.945238,
		0.994846, -0.100905, -0.009978,
		28.682781, 33.403225, 32.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105062, 33.597252, 33.551891>,  <27.986389, 33.473858, 32.926094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105062, 33.597252, 33.551891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438055, 33.683704, 33.347828>,  <28.637850, 33.735577, 33.225391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438055, 33.683704, 33.347828>,  <28.105062, 33.597252, 33.551891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438055, 33.683704, 33.347828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066763, 0.953196, 0.294890,
		0.550018, -0.211430, 0.807946,
		0.832480, 0.216136, -0.510159,
		28.687799, 33.748547, 33.194778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611975, 33.920879, 34.003780>,  <28.105062, 33.597252, 33.551891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611975, 33.920879, 34.003780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721924, 34.031387, 33.635406>,  <28.787893, 34.097691, 33.414383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721924, 34.031387, 33.635406>,  <28.611975, 33.920879, 34.003780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721924, 34.031387, 33.635406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267797, 0.897929, 0.349295,
		0.923434, -0.342635, 0.172832,
		0.274872, 0.276267, -0.920936,
		28.804386, 34.114265, 33.359127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258278, 34.339752, 34.135551>,  <28.611975, 33.920879, 34.003780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258278, 34.339752, 34.135551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109577, 34.424084, 33.773922>,  <29.020355, 34.474682, 33.556946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109577, 34.424084, 33.773922>,  <29.258278, 34.339752, 34.135551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109577, 34.424084, 33.773922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216002, 0.966786, 0.136634,
		0.902852, -0.144487, -0.404946,
		-0.371754, 0.210829, -0.904074,
		28.998051, 34.487331, 33.502701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794725, 34.779137, 33.808910>,  <29.258278, 34.339752, 34.135551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794725, 34.779137, 33.808910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445267, 34.864506, 33.634010>,  <29.235592, 34.915730, 33.529072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445267, 34.864506, 33.634010>,  <29.794725, 34.779137, 33.808910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445267, 34.864506, 33.634010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078025, 0.948484, 0.307067,
		0.480261, 0.234152, -0.845294,
		-0.873648, 0.213426, -0.437250,
		29.183172, 34.928535, 33.502834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942753, 35.355198, 33.505096>,  <29.794725, 34.779137, 33.808910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942753, 35.355198, 33.505096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543365, 35.339657, 33.520866>,  <29.303734, 35.330330, 33.530327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543365, 35.339657, 33.520866>,  <29.942753, 35.355198, 33.505096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543365, 35.339657, 33.520866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027963, 0.968730, 0.246538,
		-0.047772, 0.245057, -0.968331,
		-0.998467, -0.038855, 0.039426,
		29.243826, 35.327999, 33.532696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693836, 36.066700, 33.216900>,  <29.942753, 35.355198, 33.505096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693836, 36.066700, 33.216900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422279, 35.887569, 33.449642>,  <29.259346, 35.780090, 33.589287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422279, 35.887569, 33.449642>,  <29.693836, 36.066700, 33.216900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422279, 35.887569, 33.449642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202976, 0.876045, 0.437432,
		-0.705624, 0.178867, -0.685639,
		-0.678893, -0.447831, 0.581853,
		29.218611, 35.753220, 33.624199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352003, 36.110130, 32.875122>,  <29.693836, 36.066700, 33.216900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352003, 36.110130, 32.875122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646692, 35.862411, 32.766525>,  <30.823505, 35.713779, 32.701366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646692, 35.862411, 32.766525>,  <30.352003, 36.110130, 32.875122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646692, 35.862411, 32.766525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345076, -0.000949, 0.938574,
		-0.581516, -0.785154, 0.213006,
		0.736724, -0.619299, -0.271490,
		30.867710, 35.676620, 32.685078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612030, 35.614410, 33.392803>,  <30.352003, 36.110130, 32.875122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612030, 35.614410, 33.392803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948620, 35.666138, 33.182968>,  <31.150574, 35.697174, 33.057068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948620, 35.666138, 33.182968>,  <30.612030, 35.614410, 33.392803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948620, 35.666138, 33.182968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513970, 0.107792, 0.851008,
		0.166600, -0.985727, 0.024237,
		0.841474, 0.129321, -0.524592,
		31.201061, 35.704933, 33.025589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134375, 35.240784, 33.668667>,  <30.612030, 35.614410, 33.392803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134375, 35.240784, 33.668667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320339, 35.545349, 33.487957>,  <31.431919, 35.728088, 33.379532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320339, 35.545349, 33.487957>,  <31.134375, 35.240784, 33.668667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320339, 35.545349, 33.487957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499225, 0.195965, 0.844022,
		0.731185, -0.617933, -0.289012,
		0.464913, 0.761417, -0.451774,
		31.459812, 35.773773, 33.352425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872231, 35.110626, 33.685997>,  <31.134375, 35.240784, 33.668667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872231, 35.110626, 33.685997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737665, 35.487293, 33.682430>,  <31.656925, 35.713295, 33.680290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737665, 35.487293, 33.682430>,  <31.872231, 35.110626, 33.685997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737665, 35.487293, 33.682430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298762, 0.115700, 0.947288,
		0.893066, 0.316018, -0.320258,
		-0.336414, 0.941672, -0.008914,
		31.636742, 35.769794, 33.679756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380207, 35.488823, 34.105286>,  <31.872231, 35.110626, 33.685997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380207, 35.488823, 34.105286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051712, 35.716831, 34.115513>,  <31.854616, 35.853638, 34.121651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051712, 35.716831, 34.115513>,  <32.380207, 35.488823, 34.105286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051712, 35.716831, 34.115513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336887, 0.448218, 0.828014,
		0.460524, 0.688607, -0.560123,
		-0.821233, 0.570019, 0.025568,
		31.805342, 35.887836, 34.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589394, 36.072578, 34.361938>,  <32.380207, 35.488823, 34.105286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589394, 36.072578, 34.361938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193127, 36.069672, 34.416378>,  <31.955366, 36.067928, 34.449039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193127, 36.069672, 34.416378>,  <32.589394, 36.072578, 34.361938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193127, 36.069672, 34.416378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128958, 0.273084, 0.953307,
		-0.044094, 0.961963, -0.269599,
		-0.990669, -0.007268, 0.136094,
		31.895926, 36.067490, 34.457207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266235, 36.751419, 34.372910>,  <32.589394, 36.072578, 34.361938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266235, 36.751419, 34.372910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141655, 36.446014, 34.599205>,  <32.066906, 36.262772, 34.734982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141655, 36.446014, 34.599205>,  <32.266235, 36.751419, 34.372910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141655, 36.446014, 34.599205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099407, 0.565902, 0.818458,
		-0.945049, 0.311145, -0.100351,
		-0.311448, -0.763508, 0.565735,
		32.048222, 36.216961, 34.768925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674372, 36.925560, 34.842846>,  <32.266235, 36.751419, 34.372910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674372, 36.925560, 34.842846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897619, 36.636242, 35.005497>,  <32.031567, 36.462650, 35.103088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897619, 36.636242, 35.005497>,  <31.674372, 36.925560, 34.842846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897619, 36.636242, 35.005497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061501, 0.524762, 0.849024,
		-0.827480, -0.448847, 0.337362,
		0.558117, -0.723299, 0.406626,
		32.065056, 36.419250, 35.127483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419559, 36.874886, 35.568729>,  <31.674372, 36.925560, 34.842846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419559, 36.874886, 35.568729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774052, 36.692680, 35.535027>,  <31.986748, 36.583355, 35.514805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774052, 36.692680, 35.535027>,  <31.419559, 36.874886, 35.568729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774052, 36.692680, 35.535027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287866, 0.399037, 0.870576,
		-0.362941, -0.795785, 0.484767,
		0.886232, -0.455516, -0.084253,
		32.039921, 36.556026, 35.509750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571026, 36.607487, 36.219818>,  <31.419559, 36.874886, 35.568729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571026, 36.607487, 36.219818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920116, 36.673832, 36.036148>,  <32.129570, 36.713638, 35.925945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920116, 36.673832, 36.036148>,  <31.571026, 36.607487, 36.219818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920116, 36.673832, 36.036148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379678, 0.360668, 0.851918,
		0.306913, -0.917828, 0.251788,
		0.872725, 0.165867, -0.459172,
		32.181934, 36.723591, 35.898396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078659, 36.345169, 36.718811>,  <31.571026, 36.607487, 36.219818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078659, 36.345169, 36.718811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307438, 36.559719, 36.470562>,  <32.444706, 36.688450, 36.321613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307438, 36.559719, 36.470562>,  <32.078659, 36.345169, 36.718811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307438, 36.559719, 36.470562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459397, 0.417359, 0.784070,
		0.679580, -0.733561, -0.007702,
		0.571949, 0.536376, -0.620624,
		32.479023, 36.720631, 36.284374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733288, 36.278400, 36.932281>,  <32.078659, 36.345169, 36.718811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733288, 36.278400, 36.932281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753368, 36.600235, 36.695599>,  <32.765415, 36.793335, 36.553589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753368, 36.600235, 36.695599>,  <32.733288, 36.278400, 36.932281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753368, 36.600235, 36.695599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549804, 0.472343, 0.688917,
		0.833784, -0.359908, -0.418654,
		0.050198, 0.804586, -0.591711,
		32.768429, 36.841610, 36.518085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517384, 36.559601, 36.905418>,  <32.733288, 36.278400, 36.932281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517384, 36.559601, 36.905418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263329, 36.857895, 36.824936>,  <33.110893, 37.036869, 36.776646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263329, 36.857895, 36.824936>,  <33.517384, 36.559601, 36.905418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263329, 36.857895, 36.824936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443900, 0.565591, 0.695025,
		0.632100, 0.352124, -0.690259,
		-0.635139, 0.745732, -0.201202,
		33.072788, 37.081615, 36.764576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851498, 37.197765, 36.983559>,  <33.517384, 36.559601, 36.905418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851498, 37.197765, 36.983559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472591, 37.313950, 37.037697>,  <33.245247, 37.383659, 37.070179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472591, 37.313950, 37.037697>,  <33.851498, 37.197765, 36.983559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472591, 37.313950, 37.037697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263137, 0.464013, 0.845843,
		0.182881, 0.836854, -0.515975,
		-0.947266, 0.290461, 0.135348,
		33.188412, 37.401089, 37.078300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855095, 37.839340, 37.302170>,  <33.851498, 37.197765, 36.983559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855095, 37.839340, 37.302170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487587, 37.718575, 37.403923>,  <33.267082, 37.646114, 37.464973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487587, 37.718575, 37.403923>,  <33.855095, 37.839340, 37.302170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487587, 37.718575, 37.403923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145837, 0.339216, 0.929335,
		-0.366868, 0.890944, -0.267632,
		-0.918770, -0.301913, 0.254380,
		33.211956, 37.628002, 37.480236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721313, 38.243797, 37.830822>,  <33.855095, 37.839340, 37.302170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721313, 38.243797, 37.830822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443199, 37.959755, 37.875233>,  <33.276333, 37.789330, 37.901878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443199, 37.959755, 37.875233>,  <33.721313, 38.243797, 37.830822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443199, 37.959755, 37.875233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007349, 0.161493, 0.986847,
		-0.718700, 0.685321, -0.117502,
		-0.695282, -0.710110, 0.111028,
		33.234615, 37.746723, 37.908543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258095, 38.508816, 38.240463>,  <33.721313, 38.243797, 37.830822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258095, 38.508816, 38.240463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198643, 38.115253, 38.280136>,  <33.162971, 37.879116, 38.303940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198643, 38.115253, 38.280136>,  <33.258095, 38.508816, 38.240463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198643, 38.115253, 38.280136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082704, 0.112314, 0.990225,
		-0.985428, 0.138976, -0.098067,
		-0.148631, -0.983906, 0.099183,
		33.154053, 37.820080, 38.309891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810280, 38.451813, 38.767262>,  <33.258095, 38.508816, 38.240463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810280, 38.451813, 38.767262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966442, 38.083611, 38.760872>,  <33.060139, 37.862690, 38.757038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966442, 38.083611, 38.760872>,  <32.810280, 38.451813, 38.767262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966442, 38.083611, 38.760872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181456, 0.059929, 0.981572,
		-0.902584, -0.386109, 0.190427,
		0.390405, -0.920505, -0.015971,
		33.083565, 37.807461, 38.756081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468712, 38.014339, 39.229031>,  <32.810280, 38.451813, 38.767262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468712, 38.014339, 39.229031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835415, 37.865704, 39.170406>,  <33.055435, 37.776520, 39.135231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835415, 37.865704, 39.170406>,  <32.468712, 38.014339, 39.229031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835415, 37.865704, 39.170406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142073, -0.039599, 0.989064,
		-0.373333, -0.927551, 0.016491,
		0.916754, -0.371592, -0.146563,
		33.110443, 37.754227, 39.126438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477337, 37.472874, 39.724049>,  <32.468712, 38.014339, 39.229031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477337, 37.472874, 39.724049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862103, 37.531651, 39.631851>,  <33.092960, 37.566917, 39.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862103, 37.531651, 39.631851>,  <32.477337, 37.472874, 39.724049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862103, 37.531651, 39.631851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230458, 0.017507, 0.972925,
		0.147003, -0.988990, -0.017024,
		0.961914, 0.146946, -0.230495,
		33.150677, 37.575733, 39.562702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814770, 36.888191, 40.010273>,  <32.477337, 37.472874, 39.724049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814770, 36.888191, 40.010273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056427, 37.204742, 39.972908>,  <33.201424, 37.394672, 39.950489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056427, 37.204742, 39.972908>,  <32.814770, 36.888191, 40.010273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056427, 37.204742, 39.972908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140861, 0.009322, 0.989985,
		0.784324, -0.611256, -0.105843,
		0.604147, 0.791378, -0.093413,
		33.237671, 37.442158, 39.944885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438583, 36.792423, 40.332993>,  <32.814770, 36.888191, 40.010273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438583, 36.792423, 40.332993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419891, 37.190456, 40.298050>,  <33.408676, 37.429276, 40.277084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419891, 37.190456, 40.298050>,  <33.438583, 36.792423, 40.332993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419891, 37.190456, 40.298050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199061, 0.094976, 0.975374,
		0.978872, 0.028190, -0.202520,
		-0.046730, 0.995081, -0.087358,
		33.405872, 37.488979, 40.271843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771614, 37.005325, 40.965820>,  <33.438583, 36.792423, 40.332993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771614, 37.005325, 40.965820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569756, 37.324886, 40.834923>,  <33.448639, 37.516621, 40.756386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569756, 37.324886, 40.834923>,  <33.771614, 37.005325, 40.965820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569756, 37.324886, 40.834923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003699, 0.377045, 0.926188,
		0.863317, 0.468610, -0.187320,
		-0.504648, 0.798901, -0.327243,
		33.418362, 37.564556, 40.736752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009499, 37.547981, 41.285957>,  <33.771614, 37.005325, 40.965820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009499, 37.547981, 41.285957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677101, 37.723354, 41.149010>,  <33.477661, 37.828579, 41.066841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677101, 37.723354, 41.149010>,  <34.009499, 37.547981, 41.285957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677101, 37.723354, 41.149010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080686, 0.513967, 0.854007,
		0.550392, 0.737303, -0.391730,
		-0.830998, 0.438432, -0.342373,
		33.427803, 37.854885, 41.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134624, 38.270092, 41.285255>,  <34.009499, 37.547981, 41.285957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134624, 38.270092, 41.285255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745575, 38.187809, 41.328491>,  <33.512146, 38.138439, 41.354431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745575, 38.187809, 41.328491>,  <34.134624, 38.270092, 41.285255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745575, 38.187809, 41.328491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001569, 0.470946, 0.882161,
		-0.232371, 0.857843, -0.458377,
		-0.972626, -0.205707, 0.108088,
		33.453789, 38.126099, 41.360916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855377, 38.818878, 41.541164>,  <34.134624, 38.270092, 41.285255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855377, 38.818878, 41.541164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588619, 38.532780, 41.624760>,  <33.428566, 38.361122, 41.674915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588619, 38.532780, 41.624760>,  <33.855377, 38.818878, 41.541164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588619, 38.532780, 41.624760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064950, 0.335189, 0.939909,
		-0.742314, 0.613249, -0.269992,
		-0.666896, -0.715244, 0.208986,
		33.388550, 38.318207, 41.687454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450001, 39.287380, 41.933640>,  <33.855377, 38.818878, 41.541164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450001, 39.287380, 41.933640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328827, 38.912048, 42.000286>,  <33.256123, 38.686848, 42.040276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328827, 38.912048, 42.000286>,  <33.450001, 39.287380, 41.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328827, 38.912048, 42.000286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212373, 0.236902, 0.948038,
		-0.929048, 0.251807, -0.271042,
		-0.302933, -0.938334, 0.166616,
		33.237946, 38.630547, 42.050270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854805, 39.370945, 42.279106>,  <33.450001, 39.287380, 41.933640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854805, 39.370945, 42.279106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994022, 39.008953, 42.376984>,  <33.077553, 38.791756, 42.435711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994022, 39.008953, 42.376984>,  <32.854805, 39.370945, 42.279106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994022, 39.008953, 42.376984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197403, 0.184413, 0.962821,
		-0.916460, -0.383405, -0.114463,
		0.348042, -0.904982, 0.244692,
		33.098434, 38.737457, 42.450390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344044, 39.110661, 42.704227>,  <32.854805, 39.370945, 42.279106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344044, 39.110661, 42.704227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691025, 38.927887, 42.782951>,  <32.899212, 38.818222, 42.830185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691025, 38.927887, 42.782951>,  <32.344044, 39.110661, 42.704227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691025, 38.927887, 42.782951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171305, 0.097068, 0.980425,
		-0.467098, -0.884186, 0.005926,
		0.867453, -0.456939, 0.196806,
		32.951260, 38.790806, 42.841991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284615, 38.866508, 43.400654>,  <32.344044, 39.110661, 42.704227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284615, 38.866508, 43.400654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671341, 38.781376, 43.344120>,  <32.903378, 38.730297, 43.310200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671341, 38.781376, 43.344120>,  <32.284615, 38.866508, 43.400654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671341, 38.781376, 43.344120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169298, 0.119409, 0.978305,
		-0.191341, -0.969765, 0.151478,
		0.966813, -0.212835, -0.141331,
		32.961384, 38.717525, 43.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530315, 38.255947, 43.737915>,  <32.284615, 38.866508, 43.400654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530315, 38.255947, 43.737915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835716, 38.510967, 43.696747>,  <33.018955, 38.663979, 43.672047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835716, 38.510967, 43.696747>,  <32.530315, 38.255947, 43.737915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835716, 38.510967, 43.696747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070572, 0.076040, 0.994604,
		0.641936, -0.766647, 0.013064,
		0.763503, 0.637551, -0.102917,
		33.064766, 38.702232, 43.665871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937401, 38.070732, 44.251293>,  <32.530315, 38.255947, 43.737915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937401, 38.070732, 44.251293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146126, 38.405933, 44.187473>,  <33.271362, 38.607056, 44.149181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146126, 38.405933, 44.187473>,  <32.937401, 38.070732, 44.251293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146126, 38.405933, 44.187473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210315, 0.054879, 0.976092,
		0.826727, -0.542895, -0.147609,
		0.521814, 0.838006, -0.159549,
		33.302670, 38.657333, 44.139610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600544, 38.031445, 44.605270>,  <32.937401, 38.070732, 44.251293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600544, 38.031445, 44.605270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550541, 38.424370, 44.549496>,  <33.520538, 38.660126, 44.516029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550541, 38.424370, 44.549496>,  <33.600544, 38.031445, 44.605270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550541, 38.424370, 44.549496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233509, 0.165722, 0.958128,
		0.964285, 0.087215, -0.250095,
		-0.125009, 0.982309, -0.139437,
		33.513039, 38.719063, 44.507664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246826, 38.397007, 44.992123>,  <33.600544, 38.031445, 44.605270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246826, 38.397007, 44.992123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965836, 38.673843, 44.925743>,  <33.797241, 38.839943, 44.885914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965836, 38.673843, 44.925743>,  <34.246826, 38.397007, 44.992123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965836, 38.673843, 44.925743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151242, 0.373012, 0.915417,
		0.695451, 0.617960, -0.366705,
		-0.702477, 0.692089, -0.165950,
		33.755093, 38.881470, 44.875957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534325, 39.092216, 45.153675>,  <34.246826, 38.397007, 44.992123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534325, 39.092216, 45.153675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141926, 39.165802, 45.178345>,  <33.906487, 39.209953, 45.193146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141926, 39.165802, 45.178345>,  <34.534325, 39.092216, 45.153675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141926, 39.165802, 45.178345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127563, 0.371995, 0.919428,
		0.146200, 0.909822, -0.388392,
		-0.980996, 0.183965, 0.061674,
		33.847626, 39.220993, 45.196846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419018, 39.789940, 45.325054>,  <34.534325, 39.092216, 45.153675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419018, 39.789940, 45.325054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103329, 39.579216, 45.451286>,  <33.913914, 39.452782, 45.527027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103329, 39.579216, 45.451286>,  <34.419018, 39.789940, 45.325054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103329, 39.579216, 45.451286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067588, 0.436250, 0.897283,
		-0.610374, 0.729488, -0.308693,
		-0.789225, -0.526814, 0.315581,
		33.866562, 39.421173, 45.545959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078869, 40.276352, 45.701035>,  <34.419018, 39.789940, 45.325054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078869, 40.276352, 45.701035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950809, 39.916451, 45.819656>,  <33.873974, 39.700508, 45.890831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950809, 39.916451, 45.819656>,  <34.078869, 40.276352, 45.701035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950809, 39.916451, 45.819656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064111, 0.291736, 0.954348,
		-0.945194, 0.324549, -0.035716,
		-0.320152, -0.899754, 0.296555,
		33.854763, 39.646523, 45.908623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703995, 40.430965, 46.140945>,  <34.078869, 40.276352, 45.701035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703995, 40.430965, 46.140945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743927, 40.045940, 46.241745>,  <33.767887, 39.814926, 46.302223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743927, 40.045940, 46.241745>,  <33.703995, 40.430965, 46.140945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743927, 40.045940, 46.241745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051363, 0.257909, 0.964803,
		-0.993678, -0.083372, 0.075187,
		0.099829, -0.962565, 0.251997,
		33.773876, 39.757172, 46.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308952, 40.296757, 46.797024>,  <33.703995, 40.430965, 46.140945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308952, 40.296757, 46.797024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577507, 40.001633, 46.769119>,  <33.738640, 39.824558, 46.752377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577507, 40.001633, 46.769119>,  <33.308952, 40.296757, 46.797024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577507, 40.001633, 46.769119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111940, 0.007912, 0.993683,
		-0.732602, -0.674957, 0.087903,
		0.671389, -0.737815, -0.069758,
		33.778923, 39.780289, 46.748192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167778, 39.829155, 47.328369>,  <33.308952, 40.296757, 46.797024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167778, 39.829155, 47.328369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547096, 39.760838, 47.221367>,  <33.774689, 39.719845, 47.157166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547096, 39.760838, 47.221367>,  <33.167778, 39.829155, 47.328369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547096, 39.760838, 47.221367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206614, -0.307591, 0.928815,
		-0.240921, -0.936064, -0.256399,
		0.948298, -0.170795, -0.267510,
		33.831585, 39.709599, 47.141113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169277, 39.220978, 47.500011>,  <33.167778, 39.829155, 47.328369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169277, 39.220978, 47.500011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545918, 39.355663, 47.500950>,  <33.771904, 39.436474, 47.501511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545918, 39.355663, 47.500950>,  <33.169277, 39.220978, 47.500011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545918, 39.355663, 47.500950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071258, -0.206058, 0.975942,
		0.329099, -0.918783, -0.218019,
		0.941603, 0.336717, 0.002343,
		33.828400, 39.456680, 47.501652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543976, 38.721844, 47.791119>,  <33.169277, 39.220978, 47.500011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543976, 38.721844, 47.791119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769337, 39.048317, 47.842384>,  <33.904552, 39.244202, 47.873142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769337, 39.048317, 47.842384>,  <33.543976, 38.721844, 47.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769337, 39.048317, 47.842384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268083, -0.327333, 0.906082,
		0.781482, -0.476127, -0.403224,
		0.563398, 0.816184, 0.128163,
		33.938354, 39.293171, 47.880833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246914, 38.554073, 48.060005>,  <33.543976, 38.721844, 47.791119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246914, 38.554073, 48.060005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215977, 38.942280, 48.151318>,  <34.197414, 39.175205, 48.206104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215977, 38.942280, 48.151318>,  <34.246914, 38.554073, 48.060005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215977, 38.942280, 48.151318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295837, -0.196315, 0.934848,
		0.952103, 0.139833, -0.271932,
		-0.077338, 0.970519, 0.228280,
		34.192776, 39.233437, 48.219803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458069, 38.610870, 48.870705>,  <34.246914, 38.554073, 48.060005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458069, 38.610870, 48.870705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378387, 38.995834, 48.796867>,  <34.330578, 39.226814, 48.752563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378387, 38.995834, 48.796867>,  <34.458069, 38.610870, 48.870705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378387, 38.995834, 48.796867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085250, 0.204676, 0.975110,
		0.976242, 0.178513, -0.122819,
		-0.199208, 0.962414, -0.184595,
		34.318626, 39.284557, 48.741489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931042, 39.008148, 49.279652>,  <34.458069, 38.610870, 48.870705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931042, 39.008148, 49.279652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585068, 39.200348, 49.221680>,  <34.377483, 39.315666, 49.186897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585068, 39.200348, 49.221680>,  <34.931042, 39.008148, 49.279652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585068, 39.200348, 49.221680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018586, 0.319238, 0.947492,
		0.501536, 0.816828, -0.285051,
		-0.864937, 0.480500, -0.144928,
		34.325588, 39.344498, 49.178200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973278, 39.512154, 49.640533>,  <34.931042, 39.008148, 49.279652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973278, 39.512154, 49.640533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577610, 39.469608, 49.600071>,  <34.340210, 39.444080, 49.575794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577610, 39.469608, 49.600071>,  <34.973278, 39.512154, 49.640533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577610, 39.469608, 49.600071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117266, 0.158076, 0.980439,
		-0.088294, 0.981681, -0.168837,
		-0.989168, -0.106365, -0.101160,
		34.280861, 39.437698, 49.569721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646416, 40.058384, 50.096188>,  <34.973278, 39.512154, 49.640533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646416, 40.058384, 50.096188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351833, 39.803665, 50.004871>,  <34.175083, 39.650833, 49.950081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351833, 39.803665, 50.004871>,  <34.646416, 40.058384, 50.096188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351833, 39.803665, 50.004871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296284, 0.000247, 0.955100,
		-0.608152, 0.771028, -0.188857,
		-0.736455, -0.636801, -0.228293,
		34.130898, 39.612625, 49.936382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018108, 40.386040, 50.383327>,  <34.646416, 40.058384, 50.096188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018108, 40.386040, 50.383327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001938, 39.986477, 50.373981>,  <33.992233, 39.746738, 50.368374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001938, 39.986477, 50.373981>,  <34.018108, 40.386040, 50.383327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001938, 39.986477, 50.373981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172545, -0.016051, 0.984871,
		-0.984172, 0.043850, -0.171708,
		-0.040430, -0.998909, -0.023363,
		33.989807, 39.686806, 50.366974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362804, 40.199940, 50.664436>,  <34.018108, 40.386040, 50.383327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362804, 40.199940, 50.664436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647671, 39.921406, 50.700081>,  <33.818592, 39.754288, 50.721466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647671, 39.921406, 50.700081>,  <33.362804, 40.199940, 50.664436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647671, 39.921406, 50.700081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168768, -0.046616, 0.984553,
		-0.681423, -0.716203, -0.150717,
		0.712166, -0.696333, 0.089107,
		33.861320, 39.712505, 50.726814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288048, 39.968338, 51.271935>,  <33.362804, 40.199940, 50.664436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288048, 39.968338, 51.271935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649529, 39.816921, 51.191906>,  <33.866417, 39.726070, 51.143887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649529, 39.816921, 51.191906>,  <33.288048, 39.968338, 51.271935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649529, 39.816921, 51.191906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221206, 0.012683, 0.975145,
		-0.366599, -0.925496, 0.095198,
		0.903700, -0.378545, -0.200076,
		33.920639, 39.703358, 51.131882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486389, 39.355862, 51.700298>,  <33.288048, 39.968338, 51.271935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486389, 39.355862, 51.700298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785194, 39.605385, 51.608356>,  <33.964478, 39.755100, 51.553192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785194, 39.605385, 51.608356>,  <33.486389, 39.355862, 51.700298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785194, 39.605385, 51.608356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247020, 0.060552, 0.967117,
		0.617214, -0.779228, -0.108860,
		0.747013, 0.623808, -0.229858,
		34.009300, 39.792526, 51.539398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162338, 39.040695, 51.913639>,  <33.486389, 39.355862, 51.700298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162338, 39.040695, 51.913639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148808, 39.440105, 51.930614>,  <34.140690, 39.679752, 51.940800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148808, 39.440105, 51.930614>,  <34.162338, 39.040695, 51.913639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148808, 39.440105, 51.930614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085223, -0.039429, 0.995581,
		0.995787, 0.037296, -0.083763,
		-0.033828, 0.998526, 0.042441,
		34.138660, 39.739662, 51.943348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435810, 39.193279, 52.521263>,  <34.162338, 39.040695, 51.913639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435810, 39.193279, 52.521263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288792, 39.553024, 52.426556>,  <34.200581, 39.768871, 52.369732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288792, 39.553024, 52.426556>,  <34.435810, 39.193279, 52.521263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288792, 39.553024, 52.426556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175783, 0.182820, 0.967304,
		0.913241, 0.397151, 0.090897,
		-0.367548, 0.899360, -0.236771,
		34.178528, 39.822834, 52.355526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597393, 38.516327, 52.220581>,  <34.435810, 39.193279, 52.521263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597393, 38.516327, 52.220581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428471, 38.188393, 52.375259>,  <34.327118, 37.991634, 52.468067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428471, 38.188393, 52.375259>,  <34.597393, 38.516327, 52.220581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428471, 38.188393, 52.375259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377756, -0.546965, -0.747081,
		0.823989, -0.169420, 0.540683,
		-0.422305, -0.819833, 0.386694,
		34.301781, 37.942444, 52.491268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145252, 37.936966, 52.416271>,  <34.597393, 38.516327, 52.220581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145252, 37.936966, 52.416271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779373, 37.825645, 52.299053>,  <34.559845, 37.758854, 52.228722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779373, 37.825645, 52.299053>,  <35.145252, 37.936966, 52.416271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779373, 37.825645, 52.299053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397883, -0.493082, -0.773666,
		0.070818, -0.824268, 0.561753,
		-0.914698, -0.278302, -0.293043,
		34.504963, 37.742153, 52.211140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005482, 37.705643, 51.686153>,  <35.145252, 37.936966, 52.416271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005482, 37.705643, 51.686153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925938, 37.337559, 51.821018>,  <34.878212, 37.116711, 51.901936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925938, 37.337559, 51.821018>,  <35.005482, 37.705643, 51.686153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925938, 37.337559, 51.821018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693335, -0.111046, -0.712008,
		0.692634, -0.375354, -0.615928,
		-0.198859, -0.920205, 0.337160,
		34.866280, 37.061497, 51.922165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040199, 37.083366, 51.124641>,  <35.005482, 37.705643, 51.686153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040199, 37.083366, 51.124641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733341, 37.030106, 51.375641>,  <34.549225, 36.998150, 51.526241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733341, 37.030106, 51.375641>,  <35.040199, 37.083366, 51.124641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733341, 37.030106, 51.375641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592275, -0.228665, -0.772608,
		0.246359, -0.964357, 0.096559,
		-0.767149, -0.133150, 0.627498,
		34.503197, 36.990162, 51.563889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710831, 36.450729, 51.009571>,  <35.040199, 37.083366, 51.124641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710831, 36.450729, 51.009571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433552, 36.711674, 51.132149>,  <34.267185, 36.868240, 51.205696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433552, 36.711674, 51.132149>,  <34.710831, 36.450729, 51.009571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433552, 36.711674, 51.132149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563175, -0.224917, -0.795139,
		-0.449796, -0.723764, 0.523306,
		-0.693193, 0.652363, 0.306439,
		34.225594, 36.907383, 51.224079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998837, 36.112305, 51.187977>,  <34.710831, 36.450729, 51.009571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998837, 36.112305, 51.187977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028946, 36.478436, 51.029728>,  <34.047012, 36.698112, 50.934776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028946, 36.478436, 51.029728>,  <33.998837, 36.112305, 51.187977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028946, 36.478436, 51.029728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414451, -0.332140, -0.847297,
		-0.906953, 0.227744, 0.354356,
		0.075271, 0.915323, -0.395625,
		34.051529, 36.753033, 50.911041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543957, 36.106483, 50.647129>,  <33.998837, 36.112305, 51.187977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543957, 36.106483, 50.647129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738605, 36.437340, 50.534676>,  <33.855396, 36.635853, 50.467205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738605, 36.437340, 50.534676>,  <33.543957, 36.106483, 50.647129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738605, 36.437340, 50.534676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086680, -0.274502, -0.957672,
		-0.869300, 0.490397, -0.061883,
		0.486626, 0.827140, -0.281132,
		33.884594, 36.685482, 50.450336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087841, 36.446556, 50.192192>,  <33.543957, 36.106483, 50.647129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087841, 36.446556, 50.192192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439499, 36.593521, 50.070789>,  <33.650494, 36.681702, 49.997948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439499, 36.593521, 50.070789>,  <33.087841, 36.446556, 50.192192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439499, 36.593521, 50.070789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189873, -0.314086, -0.930214,
		-0.437104, 0.875417, -0.206364,
		0.879141, 0.367417, -0.303507,
		33.703239, 36.703747, 49.979736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950172, 36.731468, 49.579979>,  <33.087841, 36.446556, 50.192192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950172, 36.731468, 49.579979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349201, 36.703686, 49.578323>,  <33.588619, 36.687016, 49.577332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349201, 36.703686, 49.578323>,  <32.950172, 36.731468, 49.579979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349201, 36.703686, 49.578323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028325, -0.351053, -0.935927,
		0.063558, 0.933776, -0.352170,
		0.997576, -0.069461, -0.004137,
		33.648476, 36.682846, 49.577084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330929, 37.188511, 49.032444>,  <32.950172, 36.731468, 49.579979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330929, 37.188511, 49.032444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563381, 36.873989, 49.116364>,  <33.702854, 36.685276, 49.166714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563381, 36.873989, 49.116364>,  <33.330929, 37.188511, 49.032444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563381, 36.873989, 49.116364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033362, -0.234561, -0.971529,
		0.813125, 0.571586, -0.110078,
		0.581132, -0.786302, 0.209797,
		33.737720, 36.638100, 49.179302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869858, 37.186394, 48.587730>,  <33.330929, 37.188511, 49.032444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869858, 37.186394, 48.587730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896770, 36.809280, 48.718346>,  <33.912918, 36.583012, 48.796715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896770, 36.809280, 48.718346>,  <33.869858, 37.186394, 48.587730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896770, 36.809280, 48.718346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044810, -0.324089, -0.944965,
		0.996727, 0.078209, 0.020441,
		0.067280, -0.942788, 0.326533,
		33.916954, 36.526443, 48.816307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275955, 36.920063, 48.053471>,  <33.869858, 37.186394, 48.587730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275955, 36.920063, 48.053471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165939, 36.587914, 48.247311>,  <34.099930, 36.388626, 48.363613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165939, 36.587914, 48.247311>,  <34.275955, 36.920063, 48.053471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165939, 36.587914, 48.247311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114846, -0.528806, -0.840937,
		0.954548, -0.175638, 0.240808,
		-0.275041, -0.830371, 0.484600,
		34.083427, 36.338802, 48.392689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677284, 36.434113, 47.814125>,  <34.275955, 36.920063, 48.053471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677284, 36.434113, 47.814125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358292, 36.247192, 47.966785>,  <34.166897, 36.135040, 48.058380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358292, 36.247192, 47.966785>,  <34.677284, 36.434113, 47.814125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358292, 36.247192, 47.966785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166741, -0.778618, -0.604939,
		0.579849, -0.418789, 0.698850,
		-0.797479, -0.467300, 0.381652,
		34.119049, 36.107002, 48.081280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874790, 35.732872, 47.903412>,  <34.677284, 36.434113, 47.814125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874790, 35.732872, 47.903412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475807, 35.708889, 47.918781>,  <34.236416, 35.694500, 47.928005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475807, 35.708889, 47.918781>,  <34.874790, 35.732872, 47.903412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475807, 35.708889, 47.918781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020057, -0.754279, -0.656247,
		0.068331, -0.653811, 0.753567,
		-0.997461, -0.059957, 0.038427,
		34.176567, 35.690903, 47.930309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730835, 34.926701, 47.825161>,  <34.874790, 35.732872, 47.903412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730835, 34.926701, 47.825161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384354, 35.108189, 47.741421>,  <34.176464, 35.217083, 47.691177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384354, 35.108189, 47.741421>,  <34.730835, 34.926701, 47.825161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384354, 35.108189, 47.741421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185062, -0.680462, -0.709030,
		-0.464160, -0.575420, 0.673385,
		-0.866203, 0.453722, -0.209354,
		34.124493, 35.244305, 47.678616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251804, 34.439854, 47.833935>,  <34.730835, 34.926701, 47.825161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251804, 34.439854, 47.833935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085857, 34.722145, 47.604210>,  <33.986290, 34.891521, 47.466373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085857, 34.722145, 47.604210>,  <34.251804, 34.439854, 47.833935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085857, 34.722145, 47.604210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215728, -0.689487, -0.691426,
		-0.883939, -0.162953, 0.438289,
		-0.414864, 0.705730, -0.574311,
		33.961399, 34.933865, 47.431915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900307, 34.012783, 47.365242>,  <34.251804, 34.439854, 47.833935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900307, 34.012783, 47.365242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904705, 34.376957, 47.199841>,  <33.907345, 34.595463, 47.100601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904705, 34.376957, 47.199841>,  <33.900307, 34.012783, 47.365242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904705, 34.376957, 47.199841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024568, -0.413158, -0.910328,
		-0.999638, 0.020168, 0.017825,
		0.010995, 0.910436, -0.413503,
		33.908005, 34.650089, 47.075790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228127, 34.132477, 47.005199>,  <33.900307, 34.012783, 47.365242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228127, 34.132477, 47.005199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485355, 34.378979, 46.823349>,  <33.639690, 34.526882, 46.714237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485355, 34.378979, 46.823349>,  <33.228127, 34.132477, 47.005199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485355, 34.378979, 46.823349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199607, -0.438254, -0.876408,
		-0.739337, 0.654338, -0.158818,
		0.643069, 0.616259, -0.454628,
		33.678276, 34.563858, 46.686962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796722, 34.424824, 46.401558>,  <33.228127, 34.132477, 47.005199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796722, 34.424824, 46.401558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175434, 34.505199, 46.300972>,  <33.402660, 34.553425, 46.240620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175434, 34.505199, 46.300972>,  <32.796722, 34.424824, 46.401558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175434, 34.505199, 46.300972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192331, -0.273289, -0.942508,
		-0.258105, 0.940712, -0.220098,
		0.946779, 0.200934, -0.251466,
		33.459469, 34.565479, 46.225533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704128, 34.833027, 45.804478>,  <32.796722, 34.424824, 46.401558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704128, 34.833027, 45.804478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070457, 34.672657, 45.813633>,  <33.290257, 34.576435, 45.819126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070457, 34.672657, 45.813633>,  <32.704128, 34.833027, 45.804478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070457, 34.672657, 45.813633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073483, -0.223337, -0.971967,
		0.394792, 0.888473, -0.233999,
		0.915827, -0.400920, 0.022884,
		33.345207, 34.552380, 45.820499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862698, 35.010471, 45.146305>,  <32.704128, 34.833027, 45.804478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862698, 35.010471, 45.146305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155853, 34.772839, 45.278931>,  <33.331749, 34.630260, 45.358505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155853, 34.772839, 45.278931>,  <32.862698, 35.010471, 45.146305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155853, 34.772839, 45.278931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144110, -0.340736, -0.929049,
		0.664907, 0.728674, -0.164109,
		0.732892, -0.594081, 0.331567,
		33.375721, 34.594616, 45.378399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533012, 35.191216, 44.758816>,  <32.862698, 35.010471, 45.146305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533012, 35.191216, 44.758816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513424, 34.817017, 44.898781>,  <33.501671, 34.592495, 44.982761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513424, 34.817017, 44.898781>,  <33.533012, 35.191216, 44.758816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513424, 34.817017, 44.898781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096921, -0.344229, -0.933870,
		0.994087, -0.079645, -0.073813,
		-0.048970, -0.935502, 0.349913,
		33.498734, 34.536366, 45.003754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029411, 34.792393, 44.397072>,  <33.533012, 35.191216, 44.758816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029411, 34.792393, 44.397072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759598, 34.517673, 44.505371>,  <33.597710, 34.352840, 44.570351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759598, 34.517673, 44.505371>,  <34.029411, 34.792393, 44.397072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759598, 34.517673, 44.505371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010351, -0.357918, -0.933696,
		0.738169, -0.632614, 0.234319,
		-0.674536, -0.686800, 0.270752,
		33.557236, 34.311634, 44.586597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129845, 34.224155, 43.991962>,  <34.029411, 34.792393, 44.397072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129845, 34.224155, 43.991962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797829, 34.093460, 44.172749>,  <33.598618, 34.015045, 44.281219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797829, 34.093460, 44.172749>,  <34.129845, 34.224155, 43.991962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797829, 34.093460, 44.172749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287858, -0.443119, -0.848989,
		0.477670, -0.834799, 0.273754,
		-0.830042, -0.326735, 0.451968,
		33.548817, 33.995441, 44.308338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024651, 33.409515, 43.858704>,  <34.129845, 34.224155, 43.991962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024651, 33.409515, 43.858704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667885, 33.572086, 43.938007>,  <33.453827, 33.669628, 43.985588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667885, 33.572086, 43.938007>,  <34.024651, 33.409515, 43.858704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667885, 33.572086, 43.938007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380780, -0.438513, -0.814072,
		-0.243926, -0.801574, 0.545876,
		-0.891912, 0.406431, 0.198258,
		33.400311, 33.694016, 43.997486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507465, 32.927578, 43.520180>,  <34.024651, 33.409515, 43.858704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507465, 32.927578, 43.520180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298794, 33.267735, 43.547543>,  <33.173592, 33.471828, 43.563961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298794, 33.267735, 43.547543>,  <33.507465, 32.927578, 43.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298794, 33.267735, 43.547543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406417, -0.177209, -0.896338,
		-0.750119, -0.495402, 0.438061,
		-0.521677, 0.850396, 0.068412,
		33.142292, 33.522854, 43.568066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844578, 32.718678, 43.411499>,  <33.507465, 32.927578, 43.520180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844578, 32.718678, 43.411499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835426, 33.109993, 43.329109>,  <32.829937, 33.344784, 43.279675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835426, 33.109993, 43.329109>,  <32.844578, 32.718678, 43.411499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835426, 33.109993, 43.329109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469459, -0.192410, -0.861735,
		-0.882658, 0.076979, 0.463669,
		-0.022879, 0.978290, -0.205971,
		32.828564, 33.403481, 43.267319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217167, 32.833340, 43.116226>,  <32.844578, 32.718678, 43.411499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217167, 32.833340, 43.116226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420551, 33.158512, 43.002666>,  <32.542583, 33.353615, 42.934528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420551, 33.158512, 43.002666>,  <32.217167, 32.833340, 43.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420551, 33.158512, 43.002666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361210, -0.097928, -0.927328,
		-0.781659, 0.574063, 0.243847,
		0.508465, 0.812935, -0.283904,
		32.573090, 33.402393, 42.917496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715891, 33.372780, 42.816448>,  <32.217167, 32.833340, 43.116226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715891, 33.372780, 42.816448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087143, 33.424397, 42.676777>,  <32.309895, 33.455364, 42.592976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087143, 33.424397, 42.676777>,  <31.715891, 33.372780, 42.816448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087143, 33.424397, 42.676777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360134, 0.073809, -0.929976,
		-0.094229, 0.988889, 0.114975,
		0.928130, 0.129037, -0.349177,
		32.365582, 33.463108, 42.572025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625078, 33.930244, 42.306431>,  <31.715891, 33.372780, 42.816448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625078, 33.930244, 42.306431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966705, 33.731194, 42.245861>,  <32.171680, 33.611763, 42.209518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966705, 33.731194, 42.245861>,  <31.625078, 33.930244, 42.306431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966705, 33.731194, 42.245861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186812, -0.021759, -0.982155,
		0.485454, 0.867117, -0.111547,
		0.854070, -0.497630, -0.151425,
		32.222927, 33.581905, 42.200432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960939, 34.308037, 41.759537>,  <31.625078, 33.930244, 42.306431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960939, 34.308037, 41.759537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147125, 33.954010, 41.758465>,  <32.258839, 33.741596, 41.757820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147125, 33.954010, 41.758465>,  <31.960939, 34.308037, 41.759537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147125, 33.954010, 41.758465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012260, -0.003415, -0.999919,
		0.884982, 0.465460, -0.012440,
		0.465465, -0.885062, -0.002684,
		32.286766, 33.688492, 41.757660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512589, 34.404736, 41.358192>,  <31.960939, 34.308037, 41.759537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512589, 34.404736, 41.358192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476231, 34.006500, 41.348881>,  <32.454414, 33.767559, 41.343292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476231, 34.006500, 41.348881>,  <32.512589, 34.404736, 41.358192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476231, 34.006500, 41.348881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121570, 0.034297, -0.991991,
		0.988412, -0.087341, -0.124151,
		-0.090899, -0.995588, -0.023281,
		32.448959, 33.707825, 41.341896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005985, 34.161816, 40.880783>,  <32.512589, 34.404736, 41.358192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005985, 34.161816, 40.880783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737976, 33.866310, 40.909893>,  <32.577171, 33.689007, 40.927357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737976, 33.866310, 40.909893>,  <33.005985, 34.161816, 40.880783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737976, 33.866310, 40.909893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026724, -0.121971, -0.992174,
		0.741861, -0.662833, 0.101466,
		-0.670021, -0.738766, 0.072771,
		32.536968, 33.644680, 40.931725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263889, 33.530319, 40.591576>,  <33.005985, 34.161816, 40.880783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263889, 33.530319, 40.591576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864197, 33.534050, 40.576359>,  <32.624382, 33.536289, 40.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864197, 33.534050, 40.576359>,  <33.263889, 33.530319, 40.591576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864197, 33.534050, 40.576359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037561, -0.046862, -0.998195,
		-0.011089, -0.998858, 0.046476,
		-0.999233, 0.009324, -0.038038,
		32.564426, 33.536850, 40.564949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108860, 33.216267, 39.903290>,  <33.263889, 33.530319, 40.591576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108860, 33.216267, 39.903290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740517, 33.340084, 39.998119>,  <32.519512, 33.414375, 40.055016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740517, 33.340084, 39.998119>,  <33.108860, 33.216267, 39.903290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740517, 33.340084, 39.998119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158390, 0.258622, -0.952904,
		-0.356278, -0.915040, -0.189125,
		-0.920858, 0.309543, 0.237075,
		32.464260, 33.432945, 40.069241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700531, 32.934155, 39.430939>,  <33.108860, 33.216267, 39.903290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700531, 32.934155, 39.430939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459156, 33.223160, 39.565895>,  <32.314331, 33.396564, 39.646870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459156, 33.223160, 39.565895>,  <32.700531, 32.934155, 39.430939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459156, 33.223160, 39.565895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333230, 0.155911, -0.929865,
		-0.724445, -0.673546, 0.146681,
		-0.603438, 0.722515, 0.337395,
		32.278126, 33.439915, 39.667114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106140, 32.652721, 39.118172>,  <32.700531, 32.934155, 39.430939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106140, 32.652721, 39.118172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052025, 33.035873, 39.219498>,  <32.019554, 33.265762, 39.280293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052025, 33.035873, 39.219498>,  <32.106140, 32.652721, 39.118172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052025, 33.035873, 39.219498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191467, 0.225573, -0.955226,
		-0.972130, -0.177733, 0.152884,
		-0.135288, 0.957877, 0.253316,
		32.011436, 33.323238, 39.295494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468763, 32.753117, 38.930225>,  <32.106140, 32.652721, 39.118172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468763, 32.753117, 38.930225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661837, 33.101681, 38.965252>,  <31.777679, 33.310818, 38.986267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661837, 33.101681, 38.965252>,  <31.468763, 32.753117, 38.930225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661837, 33.101681, 38.965252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100499, 0.044212, -0.993954,
		-0.870010, 0.488564, -0.066236,
		0.482682, 0.871407, 0.087565,
		31.806641, 33.363102, 38.991520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156872, 33.164795, 38.495125>,  <31.468763, 32.753117, 38.930225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156872, 33.164795, 38.495125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502085, 33.360455, 38.545574>,  <31.709213, 33.477852, 38.575844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502085, 33.360455, 38.545574>,  <31.156872, 33.164795, 38.495125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502085, 33.360455, 38.545574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069019, 0.133150, -0.988690,
		-0.500410, 0.861977, 0.081152,
		0.863033, 0.489149, 0.126123,
		31.760994, 33.507198, 38.583412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105377, 33.669724, 38.012360>,  <31.156872, 33.164795, 38.495125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105377, 33.669724, 38.012360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494785, 33.665066, 38.103680>,  <31.728430, 33.662270, 38.158470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494785, 33.665066, 38.103680>,  <31.105377, 33.669724, 38.012360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494785, 33.665066, 38.103680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223948, 0.248999, -0.942256,
		-0.045874, 0.968434, 0.245013,
		0.973521, -0.011645, 0.228301,
		31.786842, 33.661572, 38.172169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399002, 34.305439, 37.702686>,  <31.105377, 33.669724, 38.012360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399002, 34.305439, 37.702686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712196, 34.067162, 37.774338>,  <31.900112, 33.924194, 37.817329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712196, 34.067162, 37.774338>,  <31.399002, 34.305439, 37.702686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712196, 34.067162, 37.774338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397607, 0.257822, -0.880589,
		0.478377, 0.760709, 0.438722,
		0.782984, -0.595692, 0.179127,
		31.947092, 33.888454, 37.828075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989336, 34.711281, 37.671700>,  <31.399002, 34.305439, 37.702686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989336, 34.711281, 37.671700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081505, 34.326286, 37.614388>,  <32.136806, 34.095291, 37.580002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081505, 34.326286, 37.614388>,  <31.989336, 34.711281, 37.671700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081505, 34.326286, 37.614388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317138, 0.213479, -0.924040,
		0.919961, 0.167481, 0.354431,
		0.230423, -0.962485, -0.143278,
		32.150631, 34.037540, 37.571404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651615, 34.737324, 37.260353>,  <31.989336, 34.711281, 37.671700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651615, 34.737324, 37.260353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493958, 34.371811, 37.221046>,  <32.399364, 34.152504, 37.197464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493958, 34.371811, 37.221046>,  <32.651615, 34.737324, 37.260353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493958, 34.371811, 37.221046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258194, -0.007477, -0.966064,
		0.882036, -0.406140, 0.238880,
		-0.394143, -0.913780, -0.098268,
		32.375713, 34.097675, 37.191566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237812, 34.284019, 37.146706>,  <32.651615, 34.737324, 37.260353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237812, 34.284019, 37.146706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906780, 34.111069, 37.003506>,  <32.708160, 34.007298, 36.917583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906780, 34.111069, 37.003506>,  <33.237812, 34.284019, 37.146706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906780, 34.111069, 37.003506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389656, 0.016613, -0.920810,
		0.404082, -0.901541, 0.154729,
		-0.827578, -0.432374, -0.358004,
		32.658508, 33.981358, 36.896103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486553, 33.792915, 36.747814>,  <33.237812, 34.284019, 37.146706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486553, 33.792915, 36.747814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122154, 33.914227, 36.636032>,  <32.903515, 33.987015, 36.568962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122154, 33.914227, 36.636032>,  <33.486553, 33.792915, 36.747814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122154, 33.914227, 36.636032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320182, 0.093049, -0.942776,
		-0.259921, -0.948348, -0.181872,
		-0.911002, 0.303280, -0.279458,
		32.848854, 34.005211, 36.552197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300236, 33.059658, 36.739174>,  <33.486553, 33.792915, 36.747814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300236, 33.059658, 36.739174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655949, 33.147293, 36.578583>,  <33.869377, 33.199875, 36.482227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655949, 33.147293, 36.578583>,  <33.300236, 33.059658, 36.739174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655949, 33.147293, 36.578583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442769, -0.192423, 0.875745,
		0.114614, -0.956542, -0.268125,
		0.889280, 0.219090, -0.401473,
		33.922733, 33.213020, 36.458141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804775, 32.681671, 37.168648>,  <33.300236, 33.059658, 36.739174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804775, 32.681671, 37.168648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084141, 32.889244, 36.971500>,  <34.251762, 33.013790, 36.853210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084141, 32.889244, 36.971500>,  <33.804775, 32.681671, 37.168648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084141, 32.889244, 36.971500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622097, -0.099700, 0.776567,
		0.353849, -0.848980, -0.392460,
		0.698417, 0.518935, -0.492869,
		34.293667, 33.044926, 36.823639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471954, 32.371010, 37.163124>,  <33.804775, 32.681671, 37.168648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471954, 32.371010, 37.163124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543865, 32.763012, 37.129028>,  <34.587009, 32.998215, 37.108570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543865, 32.763012, 37.129028>,  <34.471954, 32.371010, 37.163124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543865, 32.763012, 37.129028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604708, -0.041754, 0.795352,
		0.775893, -0.194526, -0.600125,
		0.179774, 0.980008, -0.085235,
		34.597797, 33.057014, 37.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178967, 32.355347, 37.369778>,  <34.471954, 32.371010, 37.163124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178967, 32.355347, 37.369778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046059, 32.729992, 37.414234>,  <34.966312, 32.954781, 37.440907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046059, 32.729992, 37.414234>,  <35.178967, 32.355347, 37.369778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046059, 32.729992, 37.414234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586573, 0.112929, 0.801984,
		0.738598, 0.331668, -0.586915,
		-0.332272, 0.936613, 0.111139,
		34.946377, 33.010975, 37.447575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839909, 32.751362, 37.415932>,  <35.178967, 32.355347, 37.369778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839909, 32.751362, 37.415932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517059, 32.939171, 37.559097>,  <35.323349, 33.051857, 37.644997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517059, 32.939171, 37.559097>,  <35.839909, 32.751362, 37.415932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517059, 32.939171, 37.559097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467062, 0.136981, 0.873550,
		0.361125, 0.872229, -0.329857,
		-0.807119, 0.469525, 0.357918,
		35.274925, 33.080029, 37.666473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134663, 33.290577, 37.576534>,  <35.839909, 32.751362, 37.415932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134663, 33.290577, 37.576534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784924, 33.283115, 37.770512>,  <35.575081, 33.278637, 37.886898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784924, 33.283115, 37.770512>,  <36.134663, 33.290577, 37.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784924, 33.283115, 37.770512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485302, -0.030471, 0.873815,
		-0.001524, 0.999362, 0.035695,
		-0.874345, -0.018654, 0.484946,
		35.522621, 33.277519, 37.915997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029247, 33.894035, 37.979328>,  <36.134663, 33.290577, 37.576534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029247, 33.894035, 37.979328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811401, 33.608170, 38.154900>,  <35.680695, 33.436649, 38.260242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811401, 33.608170, 38.154900>,  <36.029247, 33.894035, 37.979328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811401, 33.608170, 38.154900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521694, 0.121109, 0.844493,
		-0.656683, 0.688908, 0.306876,
		-0.544612, -0.714660, 0.438929,
		35.648018, 33.393772, 38.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129784, 34.016998, 38.691914>,  <36.029247, 33.894035, 37.979328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129784, 34.016998, 38.691914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961349, 33.654942, 38.715252>,  <35.860291, 33.437706, 38.729256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961349, 33.654942, 38.715252>,  <36.129784, 34.016998, 38.691914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961349, 33.654942, 38.715252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371029, -0.113191, 0.921697,
		-0.827662, 0.409763, 0.383497,
		-0.421085, -0.905142, 0.058350,
		35.835022, 33.383400, 38.732758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705429, 34.005985, 39.342991>,  <36.129784, 34.016998, 38.691914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705429, 34.005985, 39.342991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771233, 33.624336, 39.242924>,  <35.810715, 33.395348, 39.182884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771233, 33.624336, 39.242924>,  <35.705429, 34.005985, 39.342991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771233, 33.624336, 39.242924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221267, -0.211466, 0.952010,
		-0.961237, -0.211973, 0.176327,
		0.164513, -0.954123, -0.250172,
		35.820587, 33.338100, 39.167873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285011, 33.645432, 39.918507>,  <35.705429, 34.005985, 39.342991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285011, 33.645432, 39.918507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530560, 33.389988, 39.732887>,  <35.677887, 33.236721, 39.621517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530560, 33.389988, 39.732887>,  <35.285011, 33.645432, 39.918507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530560, 33.389988, 39.732887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353819, -0.302902, 0.884908,
		-0.705674, -0.707406, 0.040011,
		0.613870, -0.638613, -0.464044,
		35.714722, 33.198402, 39.593674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140060, 32.945301, 40.248337>,  <35.285011, 33.645432, 39.918507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140060, 32.945301, 40.248337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501736, 32.999653, 40.086353>,  <35.718739, 33.032265, 39.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501736, 32.999653, 40.086353>,  <35.140060, 32.945301, 40.248337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501736, 32.999653, 40.086353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426853, -0.252452, 0.868369,
		0.015765, -0.958021, -0.286265,
		0.904183, 0.135883, -0.404954,
		35.772991, 33.040417, 39.964867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469967, 32.388027, 40.481148>,  <35.140060, 32.945301, 40.248337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469967, 32.388027, 40.481148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766975, 32.629898, 40.365891>,  <35.945183, 32.775021, 40.296738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766975, 32.629898, 40.365891>,  <35.469967, 32.388027, 40.481148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766975, 32.629898, 40.365891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454256, -0.138449, 0.880048,
		0.492249, -0.784347, -0.377479,
		0.742524, 0.604675, -0.288143,
		35.989731, 32.811302, 40.279449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181324, 32.064373, 40.565620>,  <35.469967, 32.388027, 40.481148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181324, 32.064373, 40.565620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264973, 32.454781, 40.541412>,  <36.315163, 32.689026, 40.526886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264973, 32.454781, 40.541412>,  <36.181324, 32.064373, 40.565620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264973, 32.454781, 40.541412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260940, 0.003955, 0.965347,
		0.942433, -0.217664, -0.253855,
		0.209117, 0.976016, -0.060525,
		36.327709, 32.747585, 40.523254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813099, 32.021263, 40.889320>,  <36.181324, 32.064373, 40.565620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813099, 32.021263, 40.889320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683590, 32.399632, 40.897346>,  <36.605885, 32.626652, 40.902161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683590, 32.399632, 40.897346>,  <36.813099, 32.021263, 40.889320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683590, 32.399632, 40.897346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168857, 0.036905, 0.984949,
		0.930945, 0.322287, -0.171675,
		-0.323772, 0.945922, 0.020064,
		36.586460, 32.683407, 40.903366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212650, 32.308865, 41.368641>,  <36.813099, 32.021263, 40.889320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212650, 32.308865, 41.368641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915646, 32.576130, 41.349781>,  <36.737442, 32.736488, 41.338467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915646, 32.576130, 41.349781>,  <37.212650, 32.308865, 41.368641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915646, 32.576130, 41.349781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008511, 0.060976, 0.998103,
		0.669775, 0.741508, -0.039589,
		-0.742515, 0.668168, -0.047151,
		36.692890, 32.776581, 41.335636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435535, 32.864204, 41.944778>,  <37.212650, 32.308865, 41.368641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435535, 32.864204, 41.944778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044365, 32.885303, 41.863903>,  <36.809662, 32.897964, 41.815376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044365, 32.885303, 41.863903>,  <37.435535, 32.864204, 41.944778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044365, 32.885303, 41.863903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188199, 0.198130, 0.961938,
		0.090800, 0.978755, -0.183829,
		-0.977924, 0.052748, -0.202191,
		36.750988, 32.901127, 41.803246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291832, 33.425484, 42.292461>,  <37.435535, 32.864204, 41.944778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291832, 33.425484, 42.292461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949097, 33.230293, 42.225872>,  <36.743458, 33.113178, 42.185921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949097, 33.230293, 42.225872>,  <37.291832, 33.425484, 42.292461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949097, 33.230293, 42.225872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323636, 0.257689, 0.910415,
		-0.401366, 0.833950, -0.378724,
		-0.856834, -0.487979, -0.166469,
		36.692047, 33.083900, 42.175930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893902, 33.977016, 42.485325>,  <37.291832, 33.425484, 42.292461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893902, 33.977016, 42.485325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703789, 33.625614, 42.504612>,  <36.589722, 33.414772, 42.516186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703789, 33.625614, 42.504612>,  <36.893902, 33.977016, 42.485325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703789, 33.625614, 42.504612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307574, 0.217247, 0.926392,
		-0.824319, 0.425470, -0.373461,
		-0.475286, -0.878509, 0.048217,
		36.561203, 33.362061, 42.519077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217999, 34.045216, 42.892799>,  <36.893902, 33.977016, 42.485325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217999, 34.045216, 42.892799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279243, 33.650108, 42.904552>,  <36.315990, 33.413044, 42.911602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279243, 33.650108, 42.904552>,  <36.217999, 34.045216, 42.892799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279243, 33.650108, 42.904552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297997, -0.017805, 0.954401,
		-0.942208, -0.154881, -0.297079,
		0.153108, -0.987773, 0.029378,
		36.325176, 33.353775, 42.913364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623386, 33.775326, 43.191296>,  <36.217999, 34.045216, 42.892799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623386, 33.775326, 43.191296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885147, 33.482391, 43.266594>,  <36.042206, 33.306629, 43.311775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885147, 33.482391, 43.266594>,  <35.623386, 33.775326, 43.191296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885147, 33.482391, 43.266594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335607, -0.058210, 0.940202,
		-0.677585, -0.678451, -0.283870,
		0.654406, -0.732336, 0.188250,
		36.081470, 33.262691, 43.323071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330109, 33.462990, 43.749466>,  <35.623386, 33.775326, 43.191296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330109, 33.462990, 43.749466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707844, 33.334053, 43.775749>,  <35.934486, 33.256691, 43.791519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707844, 33.334053, 43.775749>,  <35.330109, 33.462990, 43.749466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707844, 33.334053, 43.775749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059067, 0.030351, 0.997793,
		-0.323629, -0.946135, 0.009622,
		0.944339, -0.322346, 0.065708,
		35.991146, 33.237350, 43.795460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289619, 32.828533, 44.126705>,  <35.330109, 33.462990, 43.749466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289619, 32.828533, 44.126705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661469, 32.973862, 44.151382>,  <35.884579, 33.061058, 44.166187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661469, 32.973862, 44.151382>,  <35.289619, 32.828533, 44.126705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661469, 32.973862, 44.151382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060945, -0.013531, 0.998049,
		0.363446, -0.931566, 0.009564,
		0.929620, 0.363320, 0.061692,
		35.940353, 33.082859, 44.169891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663239, 32.524200, 44.664455>,  <35.289619, 32.828533, 44.126705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663239, 32.524200, 44.664455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886875, 32.853245, 44.623024>,  <36.021057, 33.050671, 44.598164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886875, 32.853245, 44.623024>,  <35.663239, 32.524200, 44.664455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886875, 32.853245, 44.623024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024683, 0.141392, 0.989646,
		0.828737, -0.550747, 0.099356,
		0.559093, 0.822609, -0.103582,
		36.054604, 33.100029, 44.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979755, 32.708298, 45.316227>,  <35.663239, 32.524200, 44.664455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979755, 32.708298, 45.316227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087738, 33.041626, 45.123268>,  <36.152527, 33.241623, 45.007492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087738, 33.041626, 45.123268>,  <35.979755, 32.708298, 45.316227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087738, 33.041626, 45.123268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289910, 0.407407, 0.866009,
		0.918193, -0.373633, -0.131606,
		0.269952, 0.833317, -0.482398,
		36.168724, 33.291622, 44.978550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543793, 32.938568, 45.705082>,  <35.979755, 32.708298, 45.316227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543793, 32.938568, 45.705082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395111, 33.245815, 45.496532>,  <36.305904, 33.430164, 45.371403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395111, 33.245815, 45.496532>,  <36.543793, 32.938568, 45.705082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395111, 33.245815, 45.496532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045075, 0.575887, 0.816286,
		0.927257, 0.279914, -0.248680,
		-0.371701, 0.768116, -0.521378,
		36.283600, 33.476250, 45.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958134, 33.519291, 45.833038>,  <36.543793, 32.938568, 45.705082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958134, 33.519291, 45.833038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604191, 33.678101, 45.735554>,  <36.391823, 33.773384, 45.677063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604191, 33.678101, 45.735554>,  <36.958134, 33.519291, 45.833038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604191, 33.678101, 45.735554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018932, 0.553363, 0.832725,
		0.465469, 0.732233, -0.497166,
		-0.884862, 0.397020, -0.243710,
		36.338734, 33.797207, 45.662441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108593, 34.271229, 45.631210>,  <36.958134, 33.519291, 45.833038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108593, 34.271229, 45.631210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719006, 34.240166, 45.716404>,  <36.485252, 34.221527, 45.767521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719006, 34.240166, 45.716404>,  <37.108593, 34.271229, 45.631210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719006, 34.240166, 45.716404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126178, 0.594815, 0.793898,
		-0.188337, 0.800103, -0.569531,
		-0.973965, -0.077658, 0.212981,
		36.426815, 34.216869, 45.780300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834751, 35.042065, 45.797119>,  <37.108593, 34.271229, 45.631210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834751, 35.042065, 45.797119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589260, 34.764664, 45.948059>,  <36.441963, 34.598225, 46.038624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589260, 34.764664, 45.948059>,  <36.834751, 35.042065, 45.797119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589260, 34.764664, 45.948059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161884, 0.578330, 0.799580,
		-0.772742, 0.429639, -0.467204,
		-0.613729, -0.693502, 0.377348,
		36.405140, 34.556614, 46.061264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224773, 35.360558, 46.032509>,  <36.834751, 35.042065, 45.797119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224773, 35.360558, 46.032509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225056, 35.007904, 46.221283>,  <36.225227, 34.796310, 46.334545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225056, 35.007904, 46.221283>,  <36.224773, 35.360558, 46.032509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225056, 35.007904, 46.221283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094529, 0.469761, 0.877718,
		-0.995522, -0.045234, -0.083007,
		0.000710, -0.881634, 0.471933,
		36.225269, 34.743412, 46.362862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718746, 35.345181, 46.605953>,  <36.224773, 35.360558, 46.032509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718746, 35.345181, 46.605953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980579, 35.056416, 46.695724>,  <36.137680, 34.883156, 46.749588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980579, 35.056416, 46.695724>,  <35.718746, 35.345181, 46.605953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980579, 35.056416, 46.695724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150706, 0.415519, 0.897013,
		-0.740816, -0.553347, 0.380787,
		0.654584, -0.721908, 0.224430,
		36.176956, 34.839844, 46.763054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574787, 35.208351, 47.230228>,  <35.718746, 35.345181, 46.605953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574787, 35.208351, 47.230228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926800, 35.018471, 47.224541>,  <36.138008, 34.904541, 47.221130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926800, 35.018471, 47.224541>,  <35.574787, 35.208351, 47.230228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926800, 35.018471, 47.224541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177108, 0.300262, 0.937270,
		-0.440655, -0.827346, 0.348313,
		0.880031, -0.474702, -0.014217,
		36.190811, 34.876060, 47.220276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695244, 35.016712, 47.878788>,  <35.574787, 35.208351, 47.230228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695244, 35.016712, 47.878788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068424, 34.960159, 47.746357>,  <36.292332, 34.926228, 47.666897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068424, 34.960159, 47.746357>,  <35.695244, 35.016712, 47.878788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068424, 34.960159, 47.746357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355828, 0.222490, 0.907681,
		-0.054674, -0.964628, 0.257881,
		0.932951, -0.141387, -0.331077,
		36.348309, 34.917744, 47.647034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107296, 34.457588, 48.255360>,  <35.695244, 35.016712, 47.878788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107296, 34.457588, 48.255360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393509, 34.690712, 48.101299>,  <36.565239, 34.830585, 48.008862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393509, 34.690712, 48.101299>,  <36.107296, 34.457588, 48.255360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393509, 34.690712, 48.101299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407995, 0.098896, 0.907612,
		0.567054, -0.806570, -0.167019,
		0.715535, 0.582808, -0.385155,
		36.608170, 34.865555, 47.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768570, 34.271343, 48.593227>,  <36.107296, 34.457588, 48.255360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768570, 34.271343, 48.593227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838291, 34.627716, 48.425484>,  <36.880123, 34.841537, 48.324837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838291, 34.627716, 48.425484>,  <36.768570, 34.271343, 48.593227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838291, 34.627716, 48.425484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678720, 0.199845, 0.706683,
		0.713411, -0.407808, -0.569857,
		0.174307, 0.890929, -0.419360,
		36.890583, 34.894997, 48.299675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515209, 34.324245, 48.552677>,  <36.768570, 34.271343, 48.593227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515209, 34.324245, 48.552677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360214, 34.692612, 48.569511>,  <37.267216, 34.913631, 48.579613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360214, 34.692612, 48.569511>,  <37.515209, 34.324245, 48.552677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360214, 34.692612, 48.569511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634462, 0.233281, 0.736911,
		0.668814, 0.312245, -0.674678,
		-0.387486, 0.920914, 0.042086,
		37.243969, 34.968887, 48.582138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111217, 34.784214, 48.825809>,  <37.515209, 34.324245, 48.552677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111217, 34.784214, 48.825809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768349, 34.975895, 48.901310>,  <37.562630, 35.090904, 48.946609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768349, 34.975895, 48.901310>,  <38.111217, 34.784214, 48.825809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768349, 34.975895, 48.901310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328255, 0.225895, 0.917180,
		0.396878, 0.848136, -0.350931,
		-0.857168, 0.479204, 0.188753,
		37.511200, 35.119656, 48.957935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156162, 35.521729, 48.969574>,  <38.111217, 34.784214, 48.825809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156162, 35.521729, 48.969574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896503, 35.328140, 49.204308>,  <37.740707, 35.211987, 49.345150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896503, 35.328140, 49.204308>,  <38.156162, 35.521729, 48.969574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896503, 35.328140, 49.204308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656951, 0.032178, 0.753246,
		-0.383431, 0.874494, 0.297055,
		-0.649150, -0.483968, 0.586838,
		37.701759, 35.182949, 49.380360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238888, 35.788532, 49.610771>,  <38.156162, 35.521729, 48.969574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238888, 35.788532, 49.610771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086151, 35.421955, 49.658657>,  <37.994511, 35.202007, 49.687389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086151, 35.421955, 49.658657>,  <38.238888, 35.788532, 49.610771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086151, 35.421955, 49.658657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711405, -0.208751, 0.671063,
		-0.590000, 0.341404, 0.731671,
		-0.381841, -0.916442, 0.119713,
		37.971600, 35.147022, 49.694572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422287, 36.348499, 49.980240>,  <38.238888, 35.788532, 49.610771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422287, 36.348499, 49.980240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746311, 36.530682, 49.832527>,  <38.940723, 36.639992, 49.743900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746311, 36.530682, 49.832527>,  <38.422287, 36.348499, 49.980240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746311, 36.530682, 49.832527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546313, 0.357530, -0.757439,
		-0.212951, 0.815311, 0.538441,
		0.810058, 0.455455, -0.369279,
		38.989330, 36.667316, 49.721745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106976, 36.791420, 49.691628>,  <38.422287, 36.348499, 49.980240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106976, 36.791420, 49.691628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473202, 36.830910, 49.535683>,  <38.692940, 36.854603, 49.442116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473202, 36.830910, 49.535683>,  <38.106976, 36.791420, 49.691628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473202, 36.830910, 49.535683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391674, 0.438861, -0.808698,
		0.091253, 0.893115, 0.440476,
		0.915568, 0.098726, -0.389857,
		38.747871, 36.860527, 49.418724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089733, 37.426159, 49.418980>,  <38.106976, 36.791420, 49.691628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089733, 37.426159, 49.418980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381226, 37.272415, 49.192276>,  <38.556122, 37.180168, 49.056252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381226, 37.272415, 49.192276>,  <38.089733, 37.426159, 49.418980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381226, 37.272415, 49.192276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402582, 0.429058, -0.808602,
		0.553964, 0.817423, 0.157934,
		0.728733, -0.384355, -0.566763,
		38.599846, 37.157108, 49.022247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382820, 37.960316, 49.015808>,  <38.089733, 37.426159, 49.418980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382820, 37.960316, 49.015808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520569, 37.649723, 48.804722>,  <38.603218, 37.463367, 48.678070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520569, 37.649723, 48.804722>,  <38.382820, 37.960316, 49.015808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520569, 37.649723, 48.804722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344796, 0.418212, -0.840366,
		0.873227, 0.471349, -0.123710,
		0.344369, -0.776485, -0.527713,
		38.623878, 37.416779, 48.646408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704014, 38.256004, 48.348423>,  <38.382820, 37.960316, 49.015808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704014, 38.256004, 48.348423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637577, 37.871052, 48.262405>,  <38.597713, 37.640079, 48.210796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637577, 37.871052, 48.262405>,  <38.704014, 38.256004, 48.348423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637577, 37.871052, 48.262405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210710, 0.247671, -0.945653,
		0.963335, -0.111754, -0.243919,
		-0.166092, -0.962377, -0.215042,
		38.587749, 37.582340, 48.197891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015209, 38.168694, 47.753212>,  <38.704014, 38.256004, 48.348423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015209, 38.168694, 47.753212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737202, 37.881229, 47.761906>,  <38.570396, 37.708752, 47.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737202, 37.881229, 47.761906>,  <39.015209, 38.168694, 47.753212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737202, 37.881229, 47.761906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189334, 0.153774, -0.969797,
		0.693615, -0.678142, -0.242943,
		-0.695018, -0.718663, 0.021735,
		38.528694, 37.665630, 47.768425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165466, 37.714558, 47.135635>,  <39.015209, 38.168694, 47.753212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165466, 37.714558, 47.135635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787262, 37.649155, 47.248257>,  <38.560341, 37.609913, 47.315830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787262, 37.649155, 47.248257>,  <39.165466, 37.714558, 47.135635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787262, 37.649155, 47.248257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290690, 0.034420, -0.956198,
		0.146658, -0.985941, -0.080076,
		-0.945511, -0.163512, 0.281556,
		38.503609, 37.600101, 47.332722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983742, 37.099190, 46.751026>,  <39.165466, 37.714558, 47.135635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983742, 37.099190, 46.751026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647896, 37.289841, 46.855244>,  <38.446388, 37.404232, 46.917774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647896, 37.289841, 46.855244>,  <38.983742, 37.099190, 46.751026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647896, 37.289841, 46.855244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389610, -0.194208, -0.900271,
		-0.378493, -0.857387, 0.348757,
		-0.839611, 0.476625, 0.260540,
		38.396011, 37.432827, 46.933407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547729, 36.635006, 46.584126>,  <38.983742, 37.099190, 46.751026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547729, 36.635006, 46.584126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361816, 36.989105, 46.576981>,  <38.250267, 37.201565, 46.572693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361816, 36.989105, 46.576981>,  <38.547729, 36.635006, 46.584126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361816, 36.989105, 46.576981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359280, -0.206994, -0.909984,
		-0.809255, -0.416528, 0.414258,
		-0.464783, 0.885244, -0.017861,
		38.222382, 37.254677, 46.571621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914871, 36.522747, 46.364693>,  <38.547729, 36.635006, 46.584126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914871, 36.522747, 46.364693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916927, 36.913692, 46.280083>,  <37.918159, 37.148258, 46.229317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916927, 36.913692, 46.280083>,  <37.914871, 36.522747, 46.364693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916927, 36.913692, 46.280083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499176, -0.180779, -0.847433,
		-0.866486, 0.109943, 0.486945,
		0.005140, 0.977360, -0.211523,
		37.918468, 37.206902, 46.216625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170582, 36.742508, 46.336967>,  <37.914871, 36.522747, 46.364693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170582, 36.742508, 46.336967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420826, 36.978008, 46.132229>,  <37.570972, 37.119308, 46.009388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420826, 36.978008, 46.132229>,  <37.170582, 36.742508, 46.336967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420826, 36.978008, 46.132229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515021, -0.181115, -0.837825,
		-0.585973, 0.787762, 0.189912,
		0.625611, 0.588751, -0.511843,
		37.608509, 37.154633, 45.978676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693321, 37.239620, 45.975365>,  <37.170582, 36.742508, 46.336967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693321, 37.239620, 45.975365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037724, 37.259686, 45.772919>,  <37.244366, 37.271725, 45.651451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037724, 37.259686, 45.772919>,  <36.693321, 37.239620, 45.975365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037724, 37.259686, 45.772919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498765, -0.111415, -0.859546,
		-0.099503, 0.992507, -0.070911,
		0.861006, 0.050160, -0.506114,
		37.296024, 37.274734, 45.621086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508900, 37.533459, 45.359177>,  <36.693321, 37.239620, 45.975365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508900, 37.533459, 45.359177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869064, 37.381393, 45.274574>,  <37.085163, 37.290154, 45.223812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869064, 37.381393, 45.274574>,  <36.508900, 37.533459, 45.359177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869064, 37.381393, 45.274574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302087, -0.196510, -0.932806,
		0.313055, 0.903803, -0.291782,
		0.900411, -0.380163, -0.211508,
		37.139187, 37.267345, 45.211121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666618, 37.856976, 44.660686>,  <36.508900, 37.533459, 45.359177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666618, 37.856976, 44.660686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911362, 37.543266, 44.701775>,  <37.058208, 37.355042, 44.726429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911362, 37.543266, 44.701775>,  <36.666618, 37.856976, 44.660686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911362, 37.543266, 44.701775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293122, -0.345451, -0.891484,
		0.734649, 0.515350, -0.441253,
		0.611858, -0.784269, 0.102724,
		37.094917, 37.307987, 44.732594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928394, 37.781719, 43.967251>,  <36.666618, 37.856976, 44.660686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928394, 37.781719, 43.967251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058884, 37.439766, 44.128620>,  <37.137177, 37.234592, 44.225441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058884, 37.439766, 44.128620>,  <36.928394, 37.781719, 43.967251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058884, 37.439766, 44.128620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030069, -0.417173, -0.908330,
		0.944814, 0.308449, -0.110387,
		0.326224, -0.854883, 0.403425,
		37.156750, 37.183300, 44.249649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341503, 37.561550, 43.379707>,  <36.928394, 37.781719, 43.967251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341503, 37.561550, 43.379707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233009, 37.255344, 43.613091>,  <37.167915, 37.071621, 43.753120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233009, 37.255344, 43.613091>,  <37.341503, 37.561550, 43.379707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233009, 37.255344, 43.613091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034983, -0.613621, -0.788826,
		0.961878, -0.193544, 0.193214,
		-0.271233, -0.765513, 0.583457,
		37.151638, 37.025692, 43.788128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919727, 36.917782, 43.333225>,  <37.341503, 37.561550, 43.379707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919727, 36.917782, 43.333225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573147, 36.762016, 43.458202>,  <37.365200, 36.668556, 43.533188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573147, 36.762016, 43.458202>,  <37.919727, 36.917782, 43.333225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573147, 36.762016, 43.458202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087182, -0.734207, -0.673305,
		0.491592, -0.556146, 0.670103,
		-0.866450, -0.389413, 0.312444,
		37.313213, 36.645191, 43.551937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054207, 36.153164, 43.471989>,  <37.919727, 36.917782, 43.333225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054207, 36.153164, 43.471989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662941, 36.215309, 43.416775>,  <37.428181, 36.252598, 43.383644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662941, 36.215309, 43.416775>,  <38.054207, 36.153164, 43.471989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662941, 36.215309, 43.416775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002532, -0.655231, -0.755424,
		-0.207813, -0.739279, 0.640531,
		-0.978166, 0.155365, -0.138037,
		37.369492, 36.261917, 43.375362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788273, 35.530174, 43.462132>,  <38.054207, 36.153164, 43.471989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788273, 35.530174, 43.462132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523682, 35.768520, 43.279968>,  <37.364929, 35.911530, 43.170670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523682, 35.768520, 43.279968>,  <37.788273, 35.530174, 43.462132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523682, 35.768520, 43.279968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010052, -0.600137, -0.799834,
		-0.749900, -0.533647, 0.390986,
		-0.661475, 0.595866, -0.455407,
		37.325237, 35.947281, 43.143345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225857, 35.102215, 43.154465>,  <37.788273, 35.530174, 43.462132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225857, 35.102215, 43.154465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238487, 35.448376, 42.954430>,  <37.246067, 35.656071, 42.834408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238487, 35.448376, 42.954430>,  <37.225857, 35.102215, 43.154465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238487, 35.448376, 42.954430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039052, -0.498887, -0.865787,
		-0.998738, 0.046871, 0.018040,
		0.031581, 0.865399, -0.500088,
		37.247963, 35.707996, 42.804401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765343, 34.860783, 42.582321>,  <37.225857, 35.102215, 43.154465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765343, 34.860783, 42.582321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927063, 35.216339, 42.496147>,  <37.024094, 35.429672, 42.444443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927063, 35.216339, 42.496147>,  <36.765343, 34.860783, 42.582321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927063, 35.216339, 42.496147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148801, -0.296330, -0.943423,
		-0.902441, 0.349368, -0.252074,
		0.404299, 0.888893, -0.215434,
		37.048351, 35.483006, 42.431519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467941, 35.001545, 41.905396>,  <36.765343, 34.860783, 42.582321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467941, 35.001545, 41.905396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788651, 35.239380, 41.929485>,  <36.981075, 35.382080, 41.943939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788651, 35.239380, 41.929485>,  <36.467941, 35.001545, 41.905396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788651, 35.239380, 41.929485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299290, -0.312260, -0.901621,
		-0.517284, 0.740921, -0.428315,
		0.801775, 0.594584, 0.060223,
		37.029182, 35.417755, 41.947552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542542, 35.347286, 41.189075>,  <36.467941, 35.001545, 41.905396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542542, 35.347286, 41.189075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900719, 35.357185, 41.366867>,  <37.115627, 35.363125, 41.473541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900719, 35.357185, 41.366867>,  <36.542542, 35.347286, 41.189075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900719, 35.357185, 41.366867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426582, -0.333231, -0.840824,
		0.127303, 0.942520, -0.308949,
		0.895445, 0.024752, 0.444483,
		37.169353, 35.364613, 41.500214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112492, 35.727840, 40.718941>,  <36.542542, 35.347286, 41.189075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112492, 35.727840, 40.718941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310623, 35.486217, 40.968666>,  <37.429501, 35.341244, 41.118500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310623, 35.486217, 40.968666>,  <37.112492, 35.727840, 40.718941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310623, 35.486217, 40.968666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468822, -0.419148, -0.777509,
		0.731340, 0.677813, 0.075581,
		0.495326, -0.604057, 0.624313,
		37.459221, 35.305000, 41.155960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724300, 35.770660, 40.439991>,  <37.112492, 35.727840, 40.718941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724300, 35.770660, 40.439991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775959, 35.449871, 40.673286>,  <37.806953, 35.257397, 40.813263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775959, 35.449871, 40.673286>,  <37.724300, 35.770660, 40.439991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775959, 35.449871, 40.673286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646703, -0.377759, -0.662626,
		0.751730, 0.462755, 0.469852,
		0.129143, -0.801970, 0.583237,
		37.814701, 35.209278, 40.848259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437572, 35.676460, 40.492119>,  <37.724300, 35.770660, 40.439991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437572, 35.676460, 40.492119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260101, 35.324738, 40.561356>,  <38.153618, 35.113701, 40.602898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260101, 35.324738, 40.561356>,  <38.437572, 35.676460, 40.492119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260101, 35.324738, 40.561356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638937, -0.445799, -0.626915,
		0.628417, -0.167555, 0.759617,
		-0.443679, -0.879312, 0.173090,
		38.126999, 35.060944, 40.613281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021538, 35.286488, 40.525734>,  <38.437572, 35.676460, 40.492119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021538, 35.286488, 40.525734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709541, 35.042763, 40.468658>,  <38.522343, 34.896526, 40.434414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709541, 35.042763, 40.468658>,  <39.021538, 35.286488, 40.525734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709541, 35.042763, 40.468658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511043, -0.488579, -0.707195,
		0.361186, -0.624524, 0.692469,
		-0.779987, -0.609311, -0.142691,
		38.475544, 34.859970, 40.425850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225929, 34.506798, 40.539661>,  <39.021538, 35.286488, 40.525734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225929, 34.506798, 40.539661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886883, 34.532249, 40.328949>,  <38.683456, 34.547520, 40.202522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886883, 34.532249, 40.328949>,  <39.225929, 34.506798, 40.539661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886883, 34.532249, 40.328949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459436, -0.408672, -0.788610,
		-0.265454, -0.910461, 0.317167,
		-0.847616, 0.063622, -0.526782,
		38.632599, 34.551338, 40.170914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065697, 33.836338, 40.323284>,  <39.225929, 34.506798, 40.539661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065697, 33.836338, 40.323284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881489, 34.075207, 40.060589>,  <38.770966, 34.218529, 39.902969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881489, 34.075207, 40.060589>,  <39.065697, 33.836338, 40.323284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881489, 34.075207, 40.060589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413374, -0.510462, -0.754023,
		-0.785524, -0.618719, -0.011780,
		-0.460515, 0.597173, -0.656742,
		38.743336, 34.254360, 39.863567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878986, 33.407902, 39.837444>,  <39.065697, 33.836338, 40.323284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878986, 33.407902, 39.837444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869591, 33.767807, 39.663143>,  <38.863953, 33.983749, 39.558563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869591, 33.767807, 39.663143>,  <38.878986, 33.407902, 39.837444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869591, 33.767807, 39.663143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374911, -0.396132, -0.838166,
		-0.926763, -0.183059, -0.328024,
		-0.023493, 0.899761, -0.435751,
		38.862541, 34.037735, 39.532417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705025, 33.202908, 39.173859>,  <38.878986, 33.407902, 39.837444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705025, 33.202908, 39.173859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843365, 33.575146, 39.125893>,  <38.926369, 33.798489, 39.097111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843365, 33.575146, 39.125893>,  <38.705025, 33.202908, 39.173859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843365, 33.575146, 39.125893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211720, -0.201910, -0.956246,
		-0.914091, 0.305329, -0.266856,
		0.345851, 0.930595, -0.119920,
		38.947121, 33.854324, 39.089916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370171, 33.470589, 38.550564>,  <38.705025, 33.202908, 39.173859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370171, 33.470589, 38.550564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698307, 33.689548, 38.616772>,  <38.895187, 33.820923, 38.656494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698307, 33.689548, 38.616772>,  <38.370171, 33.470589, 38.550564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698307, 33.689548, 38.616772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305244, -0.174374, -0.936173,
		-0.483600, 0.818502, -0.310137,
		0.820339, 0.547401, 0.165516,
		38.944408, 33.853767, 38.666428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463577, 33.877831, 37.938622>,  <38.370171, 33.470589, 38.550564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463577, 33.877831, 37.938622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823677, 33.905590, 38.110546>,  <39.039738, 33.922245, 38.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823677, 33.905590, 38.110546>,  <38.463577, 33.877831, 37.938622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823677, 33.905590, 38.110546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433825, -0.226323, -0.872109,
		0.036753, 0.971577, -0.233853,
		0.900247, 0.069398, 0.429812,
		39.093750, 33.926411, 38.239491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725857, 34.215919, 37.475563>,  <38.463577, 33.877831, 37.938622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725857, 34.215919, 37.475563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020397, 34.057934, 37.695305>,  <39.197121, 33.963142, 37.827148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020397, 34.057934, 37.695305>,  <38.725857, 34.215919, 37.475563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020397, 34.057934, 37.695305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535799, -0.155409, -0.829920,
		0.413162, 0.905457, 0.097185,
		0.736353, -0.394963, 0.549352,
		39.241302, 33.939445, 37.860111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225403, 34.667419, 37.261047>,  <38.725857, 34.215919, 37.475563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225403, 34.667419, 37.261047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389435, 34.325771, 37.388988>,  <39.487854, 34.120781, 37.465755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389435, 34.325771, 37.388988>,  <39.225403, 34.667419, 37.261047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389435, 34.325771, 37.388988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583379, -0.023932, -0.811847,
		0.701071, 0.519523, 0.488462,
		0.410084, -0.854121, 0.319857,
		39.512459, 34.069534, 37.484947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844139, 34.668713, 36.904808>,  <39.225403, 34.667419, 37.261047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844139, 34.668713, 36.904808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820297, 34.295380, 37.046417>,  <39.805992, 34.071381, 37.131382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820297, 34.295380, 37.046417>,  <39.844139, 34.668713, 36.904808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820297, 34.295380, 37.046417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543995, -0.327735, -0.772438,
		0.836969, 0.146543, 0.527265,
		-0.059607, -0.933336, 0.354022,
		39.802414, 34.015381, 37.152622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552822, 34.483860, 36.870705>,  <39.844139, 34.668713, 36.904808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552822, 34.483860, 36.870705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358692, 34.137554, 36.919540>,  <40.242214, 33.929771, 36.948841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358692, 34.137554, 36.919540>,  <40.552822, 34.483860, 36.870705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358692, 34.137554, 36.919540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679296, -0.461282, -0.570768,
		0.550473, -0.194069, 0.811984,
		-0.485321, -0.865769, 0.122092,
		40.213097, 33.877823, 36.956169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046139, 33.967056, 36.937092>,  <40.552822, 34.483860, 36.870705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046139, 33.967056, 36.937092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726440, 33.774952, 36.792561>,  <40.534622, 33.659687, 36.705841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726440, 33.774952, 36.792561>,  <41.046139, 33.967056, 36.937092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726440, 33.774952, 36.792561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521931, -0.256546, -0.813494,
		0.297994, -0.838768, 0.455706,
		-0.799242, -0.480263, -0.361330,
		40.486668, 33.630875, 36.684162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297371, 33.222446, 36.692219>,  <41.046139, 33.967056, 36.937092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297371, 33.222446, 36.692219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949909, 33.309761, 36.514320>,  <40.741432, 33.362148, 36.407581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949909, 33.309761, 36.514320>,  <41.297371, 33.222446, 36.692219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949909, 33.309761, 36.514320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442680, -0.061064, -0.894598,
		-0.222434, -0.973973, -0.043587,
		-0.868653, 0.218284, -0.444741,
		40.689312, 33.375248, 36.380898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252628, 32.722736, 36.113457>,  <41.297371, 33.222446, 36.692219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252628, 32.722736, 36.113457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037781, 33.049175, 36.028145>,  <40.908871, 33.245037, 35.976959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037781, 33.049175, 36.028145>,  <41.252628, 32.722736, 36.113457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037781, 33.049175, 36.028145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290217, -0.058615, -0.955164,
		-0.792007, -0.574936, -0.205362,
		-0.537121, 0.816096, -0.213280,
		40.876644, 33.294003, 35.964161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601868, 32.502090, 35.739021>,  <41.252628, 32.722736, 36.113457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601868, 32.502090, 35.739021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737068, 32.867294, 35.647663>,  <40.818188, 33.086418, 35.592846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737068, 32.867294, 35.647663>,  <40.601868, 32.502090, 35.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737068, 32.867294, 35.647663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190930, -0.304155, -0.933293,
		-0.921576, 0.271844, -0.277126,
		0.337999, 0.913012, -0.228399,
		40.838467, 33.141197, 35.579144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356743, 32.731770, 35.132179>,  <40.601868, 32.502090, 35.739021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356743, 32.731770, 35.132179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715191, 32.903927, 35.175507>,  <40.930260, 33.007221, 35.201504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715191, 32.903927, 35.175507>,  <40.356743, 32.731770, 35.132179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715191, 32.903927, 35.175507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311642, -0.436455, -0.844030,
		-0.315990, 0.790107, -0.525244,
		0.896119, 0.430393, 0.108315,
		40.984028, 33.033043, 35.208000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620258, 32.887756, 34.445667>,  <40.356743, 32.731770, 35.132179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620258, 32.887756, 34.445667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931290, 32.820061, 34.687901>,  <41.117908, 32.779442, 34.833241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931290, 32.820061, 34.687901>,  <40.620258, 32.887756, 34.445667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931290, 32.820061, 34.687901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431842, -0.556298, -0.709961,
		0.457036, 0.813567, -0.359482,
		0.777580, -0.169238, 0.605580,
		41.164562, 32.769291, 34.869576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256287, 32.859840, 33.982796>,  <40.620258, 32.887756, 34.445667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256287, 32.859840, 33.982796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349987, 32.695175, 34.335083>,  <41.406208, 32.596378, 34.546455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349987, 32.695175, 34.335083>,  <41.256287, 32.859840, 33.982796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349987, 32.695175, 34.335083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382789, -0.793686, -0.472795,
		0.893644, 0.447881, -0.028341,
		0.234250, -0.411661, 0.880717,
		41.420261, 32.571678, 34.599297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914242, 32.542835, 33.940735>,  <41.256287, 32.859840, 33.982796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914242, 32.542835, 33.940735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708382, 32.345516, 34.221249>,  <41.584866, 32.227127, 34.389557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708382, 32.345516, 34.221249>,  <41.914242, 32.542835, 33.940735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708382, 32.345516, 34.221249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406308, -0.860562, -0.307159,
		0.755018, 0.126859, 0.643315,
		-0.514647, -0.493295, 0.701284,
		41.553989, 32.197529, 34.431633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294342, 32.111935, 34.316284>,  <41.914242, 32.542835, 33.940735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294342, 32.111935, 34.316284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934284, 31.938068, 34.304966>,  <41.718250, 31.833748, 34.298176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934284, 31.938068, 34.304966>,  <42.294342, 32.111935, 34.316284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934284, 31.938068, 34.304966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420931, -0.851312, -0.313184,
		0.112045, -0.293821, 0.949271,
		-0.900146, -0.434668, -0.028293,
		41.664242, 31.807669, 34.296478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009377, 32.389034, 34.201244>,  <42.294342, 32.111935, 34.316284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009377, 32.389034, 34.201244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323730, 32.566364, 34.028805>,  <43.512344, 32.672764, 33.925343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323730, 32.566364, 34.028805>,  <43.009377, 32.389034, 34.201244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323730, 32.566364, 34.028805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388417, -0.188553, -0.901987,
		-0.481162, 0.876303, 0.024016,
		0.785885, 0.443330, -0.431096,
		43.559498, 32.699364, 33.899475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826736, 33.026989, 33.868458>,  <43.009377, 32.389034, 34.201244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826736, 33.026989, 33.868458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129814, 32.804676, 33.731632>,  <43.311661, 32.671288, 33.649536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129814, 32.804676, 33.731632>,  <42.826736, 33.026989, 33.868458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129814, 32.804676, 33.731632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552155, -0.266548, -0.789985,
		0.347884, 0.787438, -0.508840,
		0.757695, -0.555782, -0.342060,
		43.357124, 32.637943, 33.629013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701210, 33.085835, 33.146812>,  <42.826736, 33.026989, 33.868458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701210, 33.085835, 33.146812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974934, 32.795803, 33.177753>,  <43.139168, 32.621784, 33.196320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974934, 32.795803, 33.177753>,  <42.701210, 33.085835, 33.146812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974934, 32.795803, 33.177753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369493, -0.436251, -0.820463,
		0.628646, 0.532867, -0.566442,
		0.684309, -0.725078, 0.077357,
		43.180225, 32.578281, 33.200962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919853, 33.023827, 32.474461>,  <42.701210, 33.085835, 33.146812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919853, 33.023827, 32.474461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972755, 32.680916, 32.673496>,  <43.004498, 32.475170, 32.792915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972755, 32.680916, 32.673496>,  <42.919853, 33.023827, 32.474461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972755, 32.680916, 32.673496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316576, -0.512236, -0.798369,
		0.939302, -0.051934, -0.339139,
		0.132257, -0.857273, 0.497585,
		43.012432, 32.423733, 32.822773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347214, 32.672874, 32.044659>,  <42.919853, 33.023827, 32.474461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347214, 32.672874, 32.044659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148590, 32.410019, 32.271496>,  <43.029415, 32.252304, 32.407597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148590, 32.410019, 32.271496>,  <43.347214, 32.672874, 32.044659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148590, 32.410019, 32.271496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255538, -0.513704, -0.819028,
		0.829536, -0.551609, 0.087159,
		-0.496557, -0.657142, 0.567094,
		42.999622, 32.212875, 32.441624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421371, 32.064808, 31.716373>,  <43.347214, 32.672874, 32.044659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421371, 32.064808, 31.716373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108727, 31.991993, 31.955015>,  <42.921139, 31.948303, 32.098202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108727, 31.991993, 31.955015>,  <43.421371, 32.064808, 31.716373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108727, 31.991993, 31.955015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374624, -0.627749, -0.682340,
		0.498732, -0.756830, 0.422462,
		-0.781616, -0.182040, 0.596605,
		42.874241, 31.937382, 32.133995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314888, 31.379009, 31.678411>,  <43.421371, 32.064808, 31.716373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314888, 31.379009, 31.678411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967552, 31.536634, 31.798882>,  <42.759151, 31.631208, 31.871164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967552, 31.536634, 31.798882>,  <43.314888, 31.379009, 31.678411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967552, 31.536634, 31.798882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444397, -0.348523, -0.825253,
		-0.220231, -0.850441, 0.477754,
		-0.868337, 0.394059, 0.301178,
		42.707050, 31.654852, 31.889235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874252, 30.827795, 31.682070>,  <43.314888, 31.379009, 31.678411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874252, 30.827795, 31.682070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639141, 31.146296, 31.624807>,  <42.498074, 31.337397, 31.590450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639141, 31.146296, 31.624807>,  <42.874252, 30.827795, 31.682070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639141, 31.146296, 31.624807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490250, -0.491327, -0.719898,
		-0.643558, -0.352959, 0.679156,
		-0.587782, 0.796252, -0.143159,
		42.462807, 31.385172, 31.581860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141617, 30.538431, 31.643370>,  <42.874252, 30.827795, 31.682070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141617, 30.538431, 31.643370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149284, 30.910370, 31.496391>,  <42.153885, 31.133533, 31.408205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149284, 30.910370, 31.496391>,  <42.141617, 30.538431, 31.643370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149284, 30.910370, 31.496391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797554, -0.207408, -0.566472,
		-0.602943, 0.303919, 0.737626,
		0.019172, 0.929847, -0.367447,
		42.155037, 31.189323, 31.386158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504578, 30.807699, 31.626204>,  <42.141617, 30.538431, 31.643370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504578, 30.807699, 31.626204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654053, 31.056684, 31.351135>,  <41.743740, 31.206076, 31.186094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654053, 31.056684, 31.351135>,  <41.504578, 30.807699, 31.626204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654053, 31.056684, 31.351135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754496, -0.227250, -0.615705,
		-0.539527, 0.748930, 0.384725,
		0.373691, 0.622463, -0.687673,
		41.766159, 31.243423, 31.144833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940147, 31.113949, 31.297047>,  <41.504578, 30.807699, 31.626204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940147, 31.113949, 31.297047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226200, 31.201147, 31.031397>,  <41.397831, 31.253466, 30.872007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226200, 31.201147, 31.031397>,  <40.940147, 31.113949, 31.297047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226200, 31.201147, 31.031397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513074, -0.481537, -0.710547,
		-0.474696, 0.848882, -0.232516,
		0.715135, 0.217996, -0.664123,
		41.440742, 31.266546, 30.832161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519379, 31.490974, 30.704813>,  <40.940147, 31.113949, 31.297047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519379, 31.490974, 30.704813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873596, 31.359978, 30.573015>,  <41.086124, 31.281380, 30.493937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873596, 31.359978, 30.573015>,  <40.519379, 31.490974, 30.704813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873596, 31.359978, 30.573015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418032, -0.252354, -0.872678,
		0.202644, 0.910532, -0.360371,
		0.885542, -0.327490, -0.329493,
		41.139259, 31.261730, 30.474167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619629, 31.720148, 29.981478>,  <40.519379, 31.490974, 30.704813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619629, 31.720148, 29.981478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859509, 31.403936, 30.031162>,  <41.003437, 31.214209, 30.060972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859509, 31.403936, 30.031162>,  <40.619629, 31.720148, 29.981478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859509, 31.403936, 30.031162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180637, -0.284943, -0.941370,
		0.779573, 0.542099, -0.313678,
		0.599697, -0.790529, 0.124211,
		41.039417, 31.166779, 30.068426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049858, 31.801779, 29.340984>,  <40.619629, 31.720148, 29.981478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049858, 31.801779, 29.340984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092041, 31.422710, 29.461514>,  <41.117352, 31.195269, 29.533831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092041, 31.422710, 29.461514>,  <41.049858, 31.801779, 29.340984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092041, 31.422710, 29.461514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077078, -0.309889, -0.947643,
		0.991432, 0.076709, -0.105724,
		0.105455, -0.947673, 0.301322,
		41.123676, 31.138409, 29.551910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530979, 31.521809, 28.846987>,  <41.049858, 31.801779, 29.340984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530979, 31.521809, 28.846987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350342, 31.198149, 28.997368>,  <41.241959, 31.003952, 29.087597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350342, 31.198149, 28.997368>,  <41.530979, 31.521809, 28.846987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350342, 31.198149, 28.997368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314488, -0.249968, -0.915758,
		0.834962, -0.531783, -0.141584,
		-0.451593, -0.809150, 0.375953,
		41.214863, 30.955404, 29.110153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652664, 30.970158, 28.376410>,  <41.530979, 31.521809, 28.846987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652664, 30.970158, 28.376410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338242, 30.853395, 28.594364>,  <41.149586, 30.783339, 28.725136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338242, 30.853395, 28.594364>,  <41.652664, 30.970158, 28.376410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338242, 30.853395, 28.594364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478926, -0.269710, -0.835396,
		0.390817, -0.917632, 0.072207,
		-0.786061, -0.291905, 0.544885,
		41.102425, 30.765823, 28.757830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359680, 30.384336, 27.959734>,  <41.652664, 30.970158, 28.376410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359680, 30.384336, 27.959734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067314, 30.536417, 28.186436>,  <40.891895, 30.627666, 28.322456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067314, 30.536417, 28.186436>,  <41.359680, 30.384336, 27.959734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067314, 30.536417, 28.186436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636793, -0.081238, -0.766743,
		-0.245478, -0.921328, 0.301490,
		-0.730914, 0.380205, 0.566753,
		40.848042, 30.650478, 28.356462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755810, 29.923990, 27.886829>,  <41.359680, 30.384336, 27.959734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755810, 29.923990, 27.886829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579300, 30.251200, 28.034407>,  <40.473396, 30.447525, 28.122953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579300, 30.251200, 28.034407>,  <40.755810, 29.923990, 27.886829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579300, 30.251200, 28.034407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829872, -0.215551, -0.514636,
		-0.341458, -0.533269, 0.773971,
		-0.441270, 0.818023, 0.368943,
		40.446918, 30.496607, 28.145090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102009, 29.655313, 28.000612>,  <40.755810, 29.923990, 27.886829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102009, 29.655313, 28.000612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096272, 30.055103, 27.988974>,  <40.092831, 30.294977, 27.981991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096272, 30.055103, 27.988974>,  <40.102009, 29.655313, 28.000612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096272, 30.055103, 27.988974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719615, -0.030522, -0.693702,
		-0.694225, 0.010989, 0.719674,
		-0.014343, 0.999474, -0.029097,
		40.091969, 30.354946, 27.980246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421009, 29.837614, 27.952219>,  <40.102009, 29.655313, 28.000612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421009, 29.837614, 27.952219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581501, 30.176733, 27.813509>,  <39.677795, 30.380205, 27.730284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581501, 30.176733, 27.813509>,  <39.421009, 29.837614, 27.952219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581501, 30.176733, 27.813509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708404, 0.047212, -0.704226,
		-0.580670, 0.528214, 0.619526,
		0.401231, 0.847798, -0.346774,
		39.701870, 30.431072, 27.709476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914856, 30.371157, 27.926373>,  <39.421009, 29.837614, 27.952219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914856, 30.371157, 27.926373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198784, 30.460939, 27.659307>,  <39.369141, 30.514809, 27.499067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198784, 30.460939, 27.659307>,  <38.914856, 30.371157, 27.926373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198784, 30.460939, 27.659307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631405, -0.217400, -0.744356,
		-0.312227, 0.949924, -0.012591,
		0.709819, 0.224458, -0.667665,
		39.411728, 30.528276, 27.459007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600204, 30.879635, 27.465073>,  <38.914856, 30.371157, 27.926373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600204, 30.879635, 27.465073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896790, 30.721798, 27.247990>,  <39.074741, 30.627096, 27.117739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896790, 30.721798, 27.247990>,  <38.600204, 30.879635, 27.465073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896790, 30.721798, 27.247990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641555, -0.179950, -0.745671,
		0.196575, 0.901063, -0.386578,
		0.741461, -0.394592, -0.542709,
		39.119228, 30.603420, 27.085176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440594, 31.164732, 26.830986>,  <38.600204, 30.879635, 27.465073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440594, 31.164732, 26.830986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702358, 30.868196, 26.771437>,  <38.859417, 30.690275, 26.735706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702358, 30.868196, 26.771437>,  <38.440594, 31.164732, 26.830986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702358, 30.868196, 26.771437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428697, -0.201573, -0.880674,
		0.622871, 0.640143, -0.449722,
		0.654409, -0.741340, -0.148873,
		38.898682, 30.645794, 26.726774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090561, 31.828711, 26.861055>,  <38.440594, 31.164732, 26.830986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090561, 31.828711, 26.861055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168030, 32.145771, 26.629816>,  <38.214512, 32.336006, 26.491072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168030, 32.145771, 26.629816>,  <38.090561, 31.828711, 26.861055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168030, 32.145771, 26.629816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371622, 0.486073, 0.790968,
		0.907958, -0.368022, -0.200427,
		0.193672, 0.792649, -0.578099,
		38.226131, 32.383564, 26.456387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709583, 32.041195, 27.175919>,  <38.090561, 31.828711, 26.861055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709583, 32.041195, 27.175919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523697, 32.313564, 26.949511>,  <38.412167, 32.476986, 26.813665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523697, 32.313564, 26.949511>,  <38.709583, 32.041195, 27.175919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523697, 32.313564, 26.949511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365063, 0.729719, 0.578134,
		0.806703, 0.062035, -0.587693,
		-0.464715, 0.680927, -0.566020,
		38.384281, 32.517841, 26.779705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070934, 32.621449, 27.122404>,  <38.709583, 32.041195, 27.175919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070934, 32.621449, 27.122404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700798, 32.744713, 27.034063>,  <38.478714, 32.818672, 26.981060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700798, 32.744713, 27.034063>,  <39.070934, 32.621449, 27.122404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700798, 32.744713, 27.034063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103034, 0.765001, 0.635734,
		0.364859, 0.565518, -0.739640,
		-0.925344, 0.308161, -0.220850,
		38.423195, 32.837162, 26.967808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142262, 33.366112, 26.923178>,  <39.070934, 32.621449, 27.122404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142262, 33.366112, 26.923178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776340, 33.283203, 27.061838>,  <38.556786, 33.233459, 27.145035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776340, 33.283203, 27.061838>,  <39.142262, 33.366112, 26.923178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776340, 33.283203, 27.061838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006800, 0.866061, 0.499893,
		-0.403834, 0.454948, -0.793688,
		-0.914807, -0.207271, 0.346651,
		38.501900, 33.221024, 27.165833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595478, 33.848785, 26.644375>,  <39.142262, 33.366112, 26.923178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595478, 33.848785, 26.644375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551338, 33.707634, 27.016031>,  <38.524853, 33.622944, 27.239025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551338, 33.707634, 27.016031>,  <38.595478, 33.848785, 26.644375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551338, 33.707634, 27.016031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236524, 0.898668, 0.369395,
		-0.965339, 0.260527, -0.015704,
		-0.110350, -0.352877, 0.929140,
		38.518234, 33.601772, 27.294773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595207, 34.432095, 26.132055>,  <38.595478, 33.848785, 26.644375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595207, 34.432095, 26.132055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439030, 34.076946, 26.034706>,  <38.345322, 33.863857, 25.976295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439030, 34.076946, 26.034706>,  <38.595207, 34.432095, 26.132055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439030, 34.076946, 26.034706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919431, -0.389530, -0.053968,
		-0.046885, -0.244837, 0.968430,
		-0.390445, -0.887875, -0.243374,
		38.321896, 33.810585, 25.961695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233597, 34.136860, 26.071224>,  <38.595207, 34.432095, 26.132055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233597, 34.136860, 26.071224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469734, 34.213425, 25.757572>,  <39.611416, 34.259365, 25.569382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469734, 34.213425, 25.757572>,  <39.233597, 34.136860, 26.071224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469734, 34.213425, 25.757572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767244, 0.168618, 0.618793,
		0.250664, -0.966917, -0.047319,
		0.590342, 0.191414, -0.784128,
		39.646835, 34.270847, 25.522333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751938, 33.807621, 26.291447>,  <39.233597, 34.136860, 26.071224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751938, 33.807621, 26.291447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874176, 34.113346, 26.064312>,  <39.947517, 34.296780, 25.928032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874176, 34.113346, 26.064312>,  <39.751938, 33.807621, 26.291447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874176, 34.113346, 26.064312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750276, 0.173900, 0.637845,
		0.586260, -0.620953, -0.520304,
		0.305591, 0.764314, -0.567836,
		39.965855, 34.342640, 25.893961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602692, 33.861336, 26.143927>,  <39.751938, 33.807621, 26.291447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602692, 33.861336, 26.143927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411572, 34.212532, 26.155571>,  <40.296898, 34.423248, 26.162558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411572, 34.212532, 26.155571>,  <40.602692, 33.861336, 26.143927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411572, 34.212532, 26.155571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725707, 0.375823, 0.576286,
		0.495032, 0.296474, -0.816729,
		-0.477800, 0.877986, 0.029109,
		40.268230, 34.475929, 26.164303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767059, 34.467213, 26.546488>,  <40.602692, 33.861336, 26.143927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767059, 34.467213, 26.546488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065796, 34.218533, 26.452068>,  <41.245037, 34.069324, 26.395416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065796, 34.218533, 26.452068>,  <40.767059, 34.467213, 26.546488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065796, 34.218533, 26.452068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301980, 0.000807, 0.953314,
		-0.592488, -0.783253, 0.188344,
		0.746838, -0.621703, -0.236048,
		41.289848, 34.032021, 26.381254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783699, 33.953476, 27.116638>,  <40.767059, 34.467213, 26.546488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783699, 33.953476, 27.116638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138664, 33.939205, 26.932800>,  <41.351643, 33.930645, 26.822498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138664, 33.939205, 26.932800>,  <40.783699, 33.953476, 27.116638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138664, 33.939205, 26.932800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440502, -0.228209, 0.868262,
		-0.135853, -0.972959, -0.186803,
		0.887413, -0.035669, -0.459593,
		41.404888, 33.928505, 26.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105232, 33.429779, 27.430435>,  <40.783699, 33.953476, 27.116638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105232, 33.429779, 27.430435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409206, 33.621262, 27.254555>,  <41.591591, 33.736153, 27.149027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409206, 33.621262, 27.254555>,  <41.105232, 33.429779, 27.430435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409206, 33.621262, 27.254555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565636, -0.153752, 0.810195,
		0.320245, -0.864405, -0.387617,
		0.759934, 0.478711, -0.439700,
		41.637188, 33.764874, 27.122644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618912, 33.042038, 27.580048>,  <41.105232, 33.429779, 27.430435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618912, 33.042038, 27.580048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822300, 33.362637, 27.454147>,  <41.944332, 33.554996, 27.378607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822300, 33.362637, 27.454147>,  <41.618912, 33.042038, 27.580048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822300, 33.362637, 27.454147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591165, -0.059152, 0.804379,
		0.626086, -0.595071, -0.503891,
		0.508469, 0.801493, -0.314751,
		41.974842, 33.603085, 27.359722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348949, 32.877121, 27.579432>,  <41.618912, 33.042038, 27.580048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348949, 32.877121, 27.579432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342815, 33.276646, 27.597954>,  <42.339134, 33.516361, 27.609066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342815, 33.276646, 27.597954>,  <42.348949, 32.877121, 27.579432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342815, 33.276646, 27.597954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603798, -0.027665, 0.796657,
		0.796990, 0.040172, -0.602655,
		-0.015331, 0.998810, 0.046305,
		42.338215, 33.576290, 27.611845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031361, 33.212395, 27.512550>,  <42.348949, 32.877121, 27.579432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031361, 33.212395, 27.512550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790508, 33.449417, 27.726583>,  <42.645996, 33.591629, 27.855003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790508, 33.449417, 27.726583>,  <43.031361, 33.212395, 27.512550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790508, 33.449417, 27.726583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698645, 0.066677, 0.712355,
		0.386433, 0.802765, -0.454134,
		-0.602134, 0.592556, 0.535081,
		42.609867, 33.627186, 27.887108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539169, 33.766449, 27.796354>,  <43.031361, 33.212395, 27.512550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539169, 33.766449, 27.796354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218124, 33.848198, 28.020512>,  <43.025497, 33.897247, 28.155006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218124, 33.848198, 28.020512>,  <43.539169, 33.766449, 27.796354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218124, 33.848198, 28.020512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593573, 0.180720, 0.784226,
		0.059000, 0.962066, -0.266359,
		-0.802614, 0.204373, 0.560395,
		42.977341, 33.909512, 28.188629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791946, 34.194447, 28.210310>,  <43.539169, 33.766449, 27.796354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791946, 34.194447, 28.210310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469254, 34.075764, 28.414719>,  <43.275639, 34.004555, 28.537363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469254, 34.075764, 28.414719>,  <43.791946, 34.194447, 28.210310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469254, 34.075764, 28.414719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472035, 0.196649, 0.859367,
		-0.355471, 0.934502, -0.018588,
		-0.806736, -0.296706, 0.511021,
		43.227234, 33.986752, 28.568026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610088, 34.755466, 28.620153>,  <43.791946, 34.194447, 28.210310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610088, 34.755466, 28.620153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456833, 34.429554, 28.794203>,  <43.364880, 34.234005, 28.898632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456833, 34.429554, 28.794203>,  <43.610088, 34.755466, 28.620153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456833, 34.429554, 28.794203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325213, 0.321919, 0.889160,
		-0.864546, 0.482181, 0.141638,
		-0.383139, -0.814782, 0.435125,
		43.341892, 34.185120, 28.924740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344372, 34.920380, 29.230066>,  <43.610088, 34.755466, 28.620153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344372, 34.920380, 29.230066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374466, 34.527939, 29.301380>,  <43.392521, 34.292477, 29.344170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374466, 34.527939, 29.301380>,  <43.344372, 34.920380, 29.230066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374466, 34.527939, 29.301380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380150, 0.193511, 0.904456,
		-0.921860, -0.000270, 0.387523,
		0.075234, -0.981098, 0.178287,
		43.397038, 34.233608, 29.354866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137184, 34.891987, 29.841415>,  <43.344372, 34.920380, 29.230066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137184, 34.891987, 29.841415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323498, 34.541592, 29.791307>,  <43.435284, 34.331356, 29.761242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323498, 34.541592, 29.791307>,  <43.137184, 34.891987, 29.841415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323498, 34.541592, 29.791307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310078, 0.028980, 0.950270,
		-0.828795, -0.481460, 0.285123,
		0.465779, -0.875989, -0.125271,
		43.463230, 34.278793, 29.753727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992790, 34.490387, 30.448944>,  <43.137184, 34.891987, 29.841415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992790, 34.490387, 30.448944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315102, 34.304642, 30.301928>,  <43.508488, 34.193195, 30.213717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315102, 34.304642, 30.301928>,  <42.992790, 34.490387, 30.448944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315102, 34.304642, 30.301928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388616, -0.053707, 0.919833,
		-0.446874, -0.884016, 0.137182,
		0.805780, -0.464361, -0.367543,
		43.556835, 34.165333, 30.191666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204361, 34.058437, 30.960552>,  <42.992790, 34.490387, 30.448944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204361, 34.058437, 30.960552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521133, 34.083660, 30.717613>,  <43.711197, 34.098793, 30.571850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521133, 34.083660, 30.717613>,  <43.204361, 34.058437, 30.960552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521133, 34.083660, 30.717613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609679, -0.136636, 0.780783,
		-0.033753, -0.988612, -0.146650,
		0.791929, 0.063056, -0.607348,
		43.758713, 34.102577, 30.535408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671108, 33.484177, 31.186352>,  <43.204361, 34.058437, 30.960552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671108, 33.484177, 31.186352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891369, 33.750580, 30.985069>,  <44.023525, 33.910423, 30.864300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891369, 33.750580, 30.985069>,  <43.671108, 33.484177, 31.186352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891369, 33.750580, 30.985069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658042, 0.024552, 0.752581,
		0.513582, -0.745538, -0.424744,
		0.550649, 0.666011, -0.503205,
		44.056564, 33.950382, 30.834108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337292, 33.158684, 31.198988>,  <43.671108, 33.484177, 31.186352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337292, 33.158684, 31.198988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396351, 33.550934, 31.147497>,  <44.431786, 33.786285, 31.116604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396351, 33.550934, 31.147497>,  <44.337292, 33.158684, 31.198988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396351, 33.550934, 31.147497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625802, 0.008160, 0.779939,
		0.765881, -0.195710, -0.612474,
		0.147644, 0.980628, -0.128725,
		44.440643, 33.845123, 31.108879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038410, 33.250214, 31.390348>,  <44.337292, 33.158684, 31.198988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038410, 33.250214, 31.390348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866772, 33.610584, 31.416300>,  <44.763786, 33.826805, 31.431871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866772, 33.610584, 31.416300>,  <45.038410, 33.250214, 31.390348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866772, 33.610584, 31.416300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507478, 0.181040, 0.842431,
		0.747221, 0.394412, -0.534884,
		-0.429100, 0.900924, 0.064879,
		44.738041, 33.880863, 31.435762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601013, 33.735111, 31.535183>,  <45.038410, 33.250214, 31.390348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601013, 33.735111, 31.535183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268208, 33.934818, 31.631924>,  <45.068523, 34.054642, 31.689968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268208, 33.934818, 31.631924>,  <45.601013, 33.735111, 31.535183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.268208, 33.934818, 31.631924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414898, 0.270601, 0.868697,
		0.368265, 0.823109, -0.432287,
		-0.832010, 0.499266, 0.241853,
		45.018604, 34.084599, 31.704479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807678, 34.452675, 31.829721>,  <45.601013, 33.735111, 31.535183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807678, 34.452675, 31.829721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442661, 34.388882, 31.980362>,  <45.223652, 34.350605, 32.070747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442661, 34.388882, 31.980362>,  <45.807678, 34.452675, 31.829721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442661, 34.388882, 31.980362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368885, 0.076652, 0.926309,
		-0.176602, 0.984220, -0.011116,
		-0.912544, -0.159487, 0.376600,
		45.168900, 34.341034, 32.093342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724468, 35.006546, 32.292500>,  <45.807678, 34.452675, 31.829721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724468, 35.006546, 32.292500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443680, 34.756649, 32.429283>,  <45.275208, 34.606712, 32.511353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443680, 34.756649, 32.429283>,  <45.724468, 35.006546, 32.292500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443680, 34.756649, 32.429283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340008, 0.127925, 0.931681,
		-0.625805, 0.770281, 0.122618,
		-0.701970, -0.624742, 0.341957,
		45.233089, 34.569225, 32.531872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600151, 35.165829, 33.055092>,  <45.724468, 35.006546, 32.292500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600151, 35.165829, 33.055092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478081, 34.788803, 33.000782>,  <45.404839, 34.562588, 32.968197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478081, 34.788803, 33.000782>,  <45.600151, 35.165829, 33.055092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478081, 34.788803, 33.000782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301912, -0.230982, 0.924930,
		-0.903169, 0.241278, 0.355063,
		-0.305179, -0.942567, -0.135771,
		45.386528, 34.506035, 32.960049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195969, 34.814571, 33.373375>,  <45.600151, 35.165829, 33.055092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195969, 34.814571, 33.373375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204262, 34.617649, 33.721443>,  <46.209236, 34.499496, 33.930286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204262, 34.617649, 33.721443>,  <46.195969, 34.814571, 33.373375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204262, 34.617649, 33.721443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768178, 0.564909, 0.301299,
		-0.639901, 0.662201, 0.389893,
		0.020734, -0.492308, 0.870174,
		46.210484, 34.469955, 33.982494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356686, 35.289536, 33.930767>,  <46.195969, 34.814571, 33.373375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356686, 35.289536, 33.930767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442474, 34.931740, 34.087685>,  <46.493946, 34.717064, 34.181835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442474, 34.931740, 34.087685>,  <46.356686, 35.289536, 33.930767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442474, 34.931740, 34.087685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826218, 0.380352, 0.415567,
		-0.520928, 0.234991, 0.820617,
		0.214469, -0.894490, 0.392290,
		46.506817, 34.663391, 34.205372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470875, 35.295166, 34.730610>,  <46.356686, 35.289536, 33.930767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470875, 35.295166, 34.730610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681450, 35.019726, 34.531132>,  <46.807793, 34.854462, 34.411446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681450, 35.019726, 34.531132>,  <46.470875, 35.295166, 34.730610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681450, 35.019726, 34.531132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846018, 0.366047, 0.387637,
		-0.084379, -0.625973, 0.775266,
		0.526434, -0.688598, -0.498698,
		46.839378, 34.813145, 34.381523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.967186, 35.145836, 35.251881>,  <46.470875, 35.295166, 34.730610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.967186, 35.145836, 35.251881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140457, 35.033302, 34.909370>,  <47.244419, 34.965782, 34.703865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140457, 35.033302, 34.909370>,  <46.967186, 35.145836, 35.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.140457, 35.033302, 34.909370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849198, 0.445744, 0.283151,
		0.302021, -0.849803, 0.431993,
		0.433181, -0.281330, -0.856275,
		47.270412, 34.948902, 34.652489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675236, 34.857666, 35.349983>,  <46.967186, 35.145836, 35.251881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675236, 34.857666, 35.349983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676304, 34.987251, 34.971558>,  <47.676945, 35.065002, 34.744503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676304, 34.987251, 34.971558>,  <47.675236, 34.857666, 35.349983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.676304, 34.987251, 34.971558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970850, 0.225907, 0.080100,
		0.239673, -0.918703, -0.313915,
		0.002672, 0.323962, -0.946066,
		47.677105, 35.084438, 34.687737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.902149, 39.090118, 43.011894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598919, 39.347260, 43.055801>,  <36.416981, 39.501545, 43.082146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598919, 39.347260, 43.055801>,  <36.902149, 39.090118, 43.011894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598919, 39.347260, 43.055801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515464, -0.487522, -0.704712,
		-0.399511, -0.590812, 0.700950,
		-0.758081, 0.642855, 0.109772,
		36.371494, 39.540115, 43.088734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407192, 38.627808, 43.057404>,  <36.902149, 39.090118, 43.011894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407192, 38.627808, 43.057404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247475, 38.976871, 42.944950>,  <36.151646, 39.186310, 42.877476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247475, 38.976871, 42.944950>,  <36.407192, 38.627808, 43.057404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247475, 38.976871, 42.944950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311961, -0.417664, -0.853368,
		-0.862116, -0.253042, 0.439005,
		-0.399294, 0.872655, -0.281136,
		36.127686, 39.238667, 42.860611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663624, 38.460045, 42.810791>,  <36.407192, 38.627808, 43.057404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663624, 38.460045, 42.810791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724453, 38.828495, 42.667458>,  <35.760952, 39.049564, 42.581459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724453, 38.828495, 42.667458>,  <35.663624, 38.460045, 42.810791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724453, 38.828495, 42.667458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386294, -0.278320, -0.879384,
		-0.909753, 0.272153, 0.313499,
		0.152074, 0.921125, -0.358334,
		35.770077, 39.104832, 42.559959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079525, 38.647499, 42.444942>,  <35.663624, 38.460045, 42.810791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079525, 38.647499, 42.444942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361076, 38.887432, 42.292759>,  <35.530006, 39.031391, 42.201447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361076, 38.887432, 42.292759>,  <35.079525, 38.647499, 42.444942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361076, 38.887432, 42.292759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258966, -0.282053, -0.923787,
		-0.661430, 0.748762, -0.043194,
		0.703880, 0.599835, -0.380462,
		35.572239, 39.067383, 42.178619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812607, 38.951332, 41.928581>,  <35.079525, 38.647499, 42.444942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812607, 38.951332, 41.928581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192341, 39.017006, 41.821392>,  <35.420181, 39.056412, 41.757080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192341, 39.017006, 41.821392>,  <34.812607, 38.951332, 41.928581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192341, 39.017006, 41.821392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240814, -0.167814, -0.955953,
		-0.201926, 0.972050, -0.119773,
		0.949334, 0.164189, -0.267970,
		35.477142, 39.066261, 41.741001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880436, 39.307796, 41.290051>,  <34.812607, 38.951332, 41.928581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880436, 39.307796, 41.290051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257133, 39.174320, 41.306866>,  <35.483150, 39.094234, 41.316956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257133, 39.174320, 41.306866>,  <34.880436, 39.307796, 41.290051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257133, 39.174320, 41.306866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078262, -0.338991, -0.937529,
		0.327095, 0.879623, -0.345359,
		0.941745, -0.333690, 0.042041,
		35.539658, 39.074215, 41.319477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224842, 39.615318, 40.663227>,  <34.880436, 39.307796, 41.290051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224842, 39.615318, 40.663227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395870, 39.273846, 40.782158>,  <35.498489, 39.068962, 40.853516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395870, 39.273846, 40.782158>,  <35.224842, 39.615318, 40.663227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395870, 39.273846, 40.782158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202978, -0.229844, -0.951825,
		0.880898, 0.467325, 0.075005,
		0.427572, -0.853686, 0.297326,
		35.524143, 39.017738, 40.871357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790031, 39.536114, 40.215885>,  <35.224842, 39.615318, 40.663227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790031, 39.536114, 40.215885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739059, 39.165653, 40.357880>,  <35.708477, 38.943378, 40.443077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739059, 39.165653, 40.357880>,  <35.790031, 39.536114, 40.215885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739059, 39.165653, 40.357880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285492, -0.377002, -0.881115,
		0.949872, -0.010935, 0.312448,
		-0.127429, -0.926148, 0.354982,
		35.700832, 38.887810, 40.464375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341488, 39.172474, 39.753773>,  <35.790031, 39.536114, 40.215885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341488, 39.172474, 39.753773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100388, 38.909782, 39.935055>,  <35.955727, 38.752167, 40.043823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100388, 38.909782, 39.935055>,  <36.341488, 39.172474, 39.753773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100388, 38.909782, 39.935055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207477, -0.677438, -0.705713,
		0.770483, -0.331339, 0.544582,
		-0.602751, -0.656728, 0.453210,
		35.919563, 38.712765, 40.071018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677799, 38.521626, 39.777439>,  <36.341488, 39.172474, 39.753773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677799, 38.521626, 39.777439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285069, 38.445721, 39.778976>,  <36.049431, 38.400177, 39.779900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285069, 38.445721, 39.778976>,  <36.677799, 38.521626, 39.777439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285069, 38.445721, 39.778976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136994, -0.722508, -0.677654,
		0.131369, -0.664809, 0.735371,
		-0.981822, -0.189764, 0.003840,
		35.990520, 38.388790, 39.780128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578060, 37.868179, 39.702808>,  <36.677799, 38.521626, 39.777439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578060, 37.868179, 39.702808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208138, 37.986572, 39.607201>,  <35.986183, 38.057610, 39.549835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208138, 37.986572, 39.607201>,  <36.578060, 37.868179, 39.702808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208138, 37.986572, 39.607201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007058, -0.614812, -0.788642,
		-0.380376, -0.731027, 0.566492,
		-0.924805, 0.295982, -0.239019,
		35.930695, 38.075367, 39.535496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209740, 37.268452, 39.648026>,  <36.578060, 37.868179, 39.702808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209740, 37.268452, 39.648026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984116, 37.534351, 39.452087>,  <35.848740, 37.693890, 39.334526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984116, 37.534351, 39.452087>,  <36.209740, 37.268452, 39.648026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984116, 37.534351, 39.452087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262276, -0.418275, -0.869631,
		-0.782974, -0.618999, 0.061585,
		-0.564060, 0.664745, -0.489847,
		35.814896, 37.733776, 39.305134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701736, 36.875404, 39.185944>,  <36.209740, 37.268452, 39.648026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701736, 36.875404, 39.185944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753349, 37.233021, 39.014343>,  <35.784317, 37.447590, 38.911385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753349, 37.233021, 39.014343>,  <35.701736, 36.875404, 39.185944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753349, 37.233021, 39.014343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290889, -0.447707, -0.845543,
		-0.948016, -0.015687, -0.317837,
		0.129034, 0.894043, -0.428996,
		35.792061, 37.501232, 38.885643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290405, 36.865150, 38.538002>,  <35.701736, 36.875404, 39.185944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290405, 36.865150, 38.538002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.559422, 37.159687, 38.508354>,  <35.720829, 37.336411, 38.490566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.559422, 37.159687, 38.508354>,  <35.290405, 36.865150, 38.538002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559422, 37.159687, 38.508354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074742, -0.167226, -0.983082,
		-0.736281, 0.655618, -0.167501,
		0.672536, 0.736343, -0.074123,
		35.761181, 37.380589, 38.486118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142101, 37.048450, 37.913799>,  <35.290405, 36.865150, 38.538002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142101, 37.048450, 37.913799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492573, 37.231716, 37.973652>,  <35.702858, 37.341675, 38.009563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492573, 37.231716, 37.973652>,  <35.142101, 37.048450, 37.913799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492573, 37.231716, 37.973652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150354, 0.035132, -0.988008,
		-0.457930, 0.888171, -0.038106,
		0.876181, 0.458168, 0.149628,
		35.755428, 37.369167, 38.018539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197598, 37.534252, 37.384861>,  <35.142101, 37.048450, 37.913799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197598, 37.534252, 37.384861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573311, 37.468060, 37.505108>,  <35.798737, 37.428345, 37.577255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573311, 37.468060, 37.505108>,  <35.197598, 37.534252, 37.384861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573311, 37.468060, 37.505108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316303, 0.077802, -0.945463,
		0.133064, 0.983140, 0.125419,
		0.939280, -0.165477, 0.300617,
		35.855095, 37.418415, 37.595295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572842, 38.036404, 37.052433>,  <35.197598, 37.534252, 37.384861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572842, 38.036404, 37.052433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833141, 37.748978, 37.150566>,  <35.989323, 37.576523, 37.209446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833141, 37.748978, 37.150566>,  <35.572842, 38.036404, 37.052433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833141, 37.748978, 37.150566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441364, 0.095068, -0.892278,
		0.617837, 0.688930, 0.379015,
		0.650749, -0.718566, 0.245332,
		36.028366, 37.533409, 37.224167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105347, 38.276314, 36.722698>,  <35.572842, 38.036404, 37.052433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105347, 38.276314, 36.722698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.173374, 37.889053, 36.796196>,  <36.214191, 37.656696, 36.840294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.173374, 37.889053, 36.796196>,  <36.105347, 38.276314, 36.722698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173374, 37.889053, 36.796196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379331, -0.107775, -0.918963,
		0.909496, 0.225991, 0.348919,
		0.170072, -0.968149, 0.183746,
		36.224396, 37.598610, 36.851318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701469, 38.088608, 36.366955>,  <36.105347, 38.276314, 36.722698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701469, 38.088608, 36.366955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560368, 37.718571, 36.423191>,  <36.475708, 37.496548, 36.456932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560368, 37.718571, 36.423191>,  <36.701469, 38.088608, 36.366955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560368, 37.718571, 36.423191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122001, -0.194434, -0.973299,
		0.927729, -0.326183, 0.181450,
		-0.352754, -0.925094, 0.140588,
		36.454540, 37.441044, 36.465366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198341, 37.550697, 36.147095>,  <36.701469, 38.088608, 36.366955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198341, 37.550697, 36.147095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864647, 37.330353, 36.137302>,  <36.664429, 37.198147, 36.131428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864647, 37.330353, 36.137302>,  <37.198341, 37.550697, 36.147095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864647, 37.330353, 36.137302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208674, -0.274302, -0.938730,
		0.510399, -0.788230, 0.343784,
		-0.834235, -0.550865, -0.024480,
		36.614376, 37.165092, 36.129959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332481, 37.038448, 35.622612>,  <37.198341, 37.550697, 36.147095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332481, 37.038448, 35.622612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939606, 36.984787, 35.675240>,  <36.703880, 36.952591, 35.706818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939606, 36.984787, 35.675240>,  <37.332481, 37.038448, 35.622612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939606, 36.984787, 35.675240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056586, -0.456524, -0.887910,
		0.179180, -0.879539, 0.440801,
		-0.982188, -0.134152, 0.131570,
		36.644951, 36.944542, 35.714710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149822, 36.321236, 35.401814>,  <37.332481, 37.038448, 35.622612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149822, 36.321236, 35.401814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805511, 36.522770, 35.372948>,  <36.598927, 36.643692, 35.355629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805511, 36.522770, 35.372948>,  <37.149822, 36.321236, 35.401814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805511, 36.522770, 35.372948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044247, -0.067175, -0.996760,
		-0.507055, -0.861181, 0.035529,
		-0.860777, 0.503839, -0.072166,
		36.547279, 36.673923, 35.351299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269642, 35.604862, 35.704281>,  <37.149822, 36.321236, 35.401814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269642, 35.604862, 35.704281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668522, 35.610836, 35.674953>,  <37.907848, 35.614422, 35.657356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668522, 35.610836, 35.674953>,  <37.269642, 35.604862, 35.704281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668522, 35.610836, 35.674953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059506, 0.435752, 0.898097,
		0.045363, -0.899943, 0.433642,
		0.997197, 0.014936, -0.073319,
		37.967682, 35.615318, 35.652958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573395, 35.260899, 36.299984>,  <37.269642, 35.604862, 35.704281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573395, 35.260899, 36.299984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875820, 35.479694, 36.156223>,  <38.057278, 35.610973, 36.069969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875820, 35.479694, 36.156223>,  <37.573395, 35.260899, 36.299984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875820, 35.479694, 36.156223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240957, 0.277927, 0.929891,
		0.608527, -0.789657, 0.078330,
		0.756065, 0.546990, -0.359399,
		38.102638, 35.643791, 36.048405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337875, 35.113907, 36.726044>,  <37.573395, 35.260899, 36.299984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337875, 35.113907, 36.726044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328091, 35.470013, 36.544132>,  <38.322220, 35.683678, 36.434986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328091, 35.470013, 36.544132>,  <38.337875, 35.113907, 36.726044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328091, 35.470013, 36.544132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376899, 0.429563, 0.820623,
		0.925931, -0.151333, -0.346049,
		-0.024463, 0.890266, -0.454783,
		38.320751, 35.737091, 36.407696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998245, 35.408257, 36.897827>,  <38.337875, 35.113907, 36.726044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998245, 35.408257, 36.897827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758713, 35.703094, 36.772556>,  <38.614994, 35.879997, 36.697392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758713, 35.703094, 36.772556>,  <38.998245, 35.408257, 36.897827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758713, 35.703094, 36.772556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284123, 0.561141, 0.777428,
		0.748780, 0.376570, -0.545457,
		-0.598835, 0.737100, -0.313179,
		38.579063, 35.924225, 36.678604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347942, 36.003597, 36.837875>,  <38.998245, 35.408257, 36.897827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347942, 36.003597, 36.837875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969433, 36.130135, 36.864681>,  <38.742325, 36.206055, 36.880764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969433, 36.130135, 36.864681>,  <39.347942, 36.003597, 36.837875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969433, 36.130135, 36.864681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244314, 0.563679, 0.789035,
		0.211829, 0.763017, -0.610682,
		-0.946276, 0.316339, 0.067012,
		38.685551, 36.225037, 36.884785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554581, 36.656300, 37.123940>,  <39.347942, 36.003597, 36.837875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554581, 36.656300, 37.123940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161011, 36.616425, 37.183220>,  <38.924870, 36.592499, 37.218788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161011, 36.616425, 37.183220>,  <39.554581, 36.656300, 37.123940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161011, 36.616425, 37.183220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050711, 0.639666, 0.766978,
		-0.171259, 0.762161, -0.624325,
		-0.983920, -0.099692, 0.148198,
		38.865833, 36.586517, 37.227680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267239, 37.279453, 37.238773>,  <39.554581, 36.656300, 37.123940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267239, 37.279453, 37.238773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984535, 37.063042, 37.421104>,  <38.814911, 36.933197, 37.530502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984535, 37.063042, 37.421104>,  <39.267239, 37.279453, 37.238773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984535, 37.063042, 37.421104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121057, 0.727309, 0.675549,
		-0.697018, 0.422271, -0.579529,
		-0.706761, -0.541025, 0.455829,
		38.772507, 36.900734, 37.557854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677601, 37.727348, 37.326992>,  <39.267239, 37.279453, 37.238773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677601, 37.727348, 37.326992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622551, 37.425575, 37.583706>,  <38.589520, 37.244511, 37.737736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622551, 37.425575, 37.583706>,  <38.677601, 37.727348, 37.326992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622551, 37.425575, 37.583706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071569, 0.653832, 0.753248,
		-0.987895, 0.057737, -0.143980,
		-0.137629, -0.754434, 0.641785,
		38.581261, 37.199245, 37.776241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173096, 38.005070, 37.737644>,  <38.677601, 37.727348, 37.326992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173096, 38.005070, 37.737644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327744, 37.700089, 37.945179>,  <38.420532, 37.517101, 38.069698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327744, 37.700089, 37.945179>,  <38.173096, 38.005070, 37.737644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327744, 37.700089, 37.945179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113964, 0.597770, 0.793526,
		-0.915169, -0.247667, 0.318004,
		0.386623, -0.762451, 0.518836,
		38.443729, 37.471352, 38.100830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841305, 38.030811, 38.354012>,  <38.173096, 38.005070, 37.737644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841305, 38.030811, 38.354012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171040, 37.824142, 38.446545>,  <38.368881, 37.700142, 38.502064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171040, 37.824142, 38.446545>,  <37.841305, 38.030811, 38.354012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171040, 37.824142, 38.446545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061625, 0.488113, 0.870602,
		-0.562731, -0.703416, 0.434211,
		0.824340, -0.516673, 0.231329,
		38.418343, 37.669140, 38.515942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764202, 37.957111, 39.100510>,  <37.841305, 38.030811, 38.354012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764202, 37.957111, 39.100510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.142586, 37.854202, 39.021542>,  <38.369617, 37.792458, 38.974159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.142586, 37.854202, 39.021542>,  <37.764202, 37.957111, 39.100510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142586, 37.854202, 39.021542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292488, 0.413967, 0.862022,
		-0.140047, -0.873180, 0.466844,
		0.945959, -0.257269, -0.197420,
		38.426373, 37.777023, 38.962315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072811, 37.770863, 39.825874>,  <37.764202, 37.957111, 39.100510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072811, 37.770863, 39.825874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399273, 37.849041, 39.608368>,  <38.595150, 37.895950, 39.477863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399273, 37.849041, 39.608368>,  <38.072811, 37.770863, 39.825874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399273, 37.849041, 39.608368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406791, 0.473991, 0.780931,
		0.410373, -0.858565, 0.307345,
		0.816159, 0.195447, -0.543770,
		38.644119, 37.907677, 39.445236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711937, 37.581402, 40.262814>,  <38.072811, 37.770863, 39.825874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711937, 37.581402, 40.262814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807838, 37.852283, 39.984558>,  <38.865379, 38.014812, 39.817604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807838, 37.852283, 39.984558>,  <38.711937, 37.581402, 40.262814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807838, 37.852283, 39.984558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443981, 0.560735, 0.698897,
		0.863365, -0.476412, -0.166228,
		0.239753, 0.677205, -0.695637,
		38.879765, 38.055447, 39.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318523, 37.631371, 40.343216>,  <38.711937, 37.581402, 40.262814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318523, 37.631371, 40.343216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214943, 37.977077, 40.170712>,  <39.152794, 38.184502, 40.067207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214943, 37.977077, 40.170712>,  <39.318523, 37.631371, 40.343216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214943, 37.977077, 40.170712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306672, 0.496958, 0.811779,
		0.915913, 0.077954, -0.393733,
		-0.258951, 0.864266, -0.431264,
		39.137257, 38.236359, 40.041332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763889, 38.067314, 40.603210>,  <39.318523, 37.631371, 40.343216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763889, 38.067314, 40.603210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.490742, 38.322922, 40.461597>,  <39.326855, 38.476288, 40.376629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.490742, 38.322922, 40.461597>,  <39.763889, 38.067314, 40.603210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490742, 38.322922, 40.461597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052847, 0.526562, 0.848493,
		0.728627, 0.560700, -0.393343,
		-0.682869, 0.639022, -0.354036,
		39.285881, 38.514629, 40.355385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012836, 38.764397, 40.881512>,  <39.763889, 38.067314, 40.603210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012836, 38.764397, 40.881512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626076, 38.815929, 40.793419>,  <39.394020, 38.846851, 40.740562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626076, 38.815929, 40.793419>,  <40.012836, 38.764397, 40.881512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626076, 38.815929, 40.793419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117288, 0.542109, 0.832082,
		0.226588, 0.830373, -0.509056,
		-0.966903, 0.128834, -0.220228,
		39.336006, 38.854580, 40.727352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842812, 39.524090, 40.956894>,  <40.012836, 38.764397, 40.881512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842812, 39.524090, 40.956894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496555, 39.326412, 40.989006>,  <39.288803, 39.207806, 41.008274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496555, 39.326412, 40.989006>,  <39.842812, 39.524090, 40.956894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496555, 39.326412, 40.989006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227681, 0.531356, 0.815979,
		-0.445910, 0.688063, -0.572480,
		-0.865636, -0.494196, 0.080278,
		39.236866, 39.178154, 41.013088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373310, 40.002296, 41.166546>,  <39.842812, 39.524090, 40.956894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373310, 40.002296, 41.166546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221870, 39.651791, 41.285759>,  <39.131008, 39.441486, 41.357288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221870, 39.651791, 41.285759>,  <39.373310, 40.002296, 41.166546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221870, 39.651791, 41.285759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302152, 0.421371, 0.855073,
		-0.874854, 0.233675, -0.424295,
		-0.378595, -0.876266, 0.298033,
		39.108292, 39.388912, 41.375168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.814873, 40.164589, 41.618904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876335, 39.779877, 41.709557>,  <38.913212, 39.549049, 41.763950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876335, 39.779877, 41.709557>,  <38.814873, 40.164589, 41.618904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876335, 39.779877, 41.709557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394185, 0.150654, 0.906599,
		-0.906095, -0.228639, -0.355971,
		0.153655, -0.961784, 0.226633,
		38.922432, 39.491341, 41.777546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144283, 39.940838, 41.952599>,  <38.814873, 40.164589, 41.618904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144283, 39.940838, 41.952599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448547, 39.693367, 42.031219>,  <38.631107, 39.544884, 42.078392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448547, 39.693367, 42.031219>,  <38.144283, 39.940838, 41.952599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448547, 39.693367, 42.031219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291508, -0.055014, 0.954985,
		-0.580013, -0.783718, -0.222196,
		0.760663, -0.618676, 0.196552,
		38.676746, 39.507763, 42.090183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862389, 39.429188, 42.396610>,  <38.144283, 39.940838, 41.952599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862389, 39.429188, 42.396610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255573, 39.413723, 42.468494>,  <38.491482, 39.404446, 42.511623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255573, 39.413723, 42.468494>,  <37.862389, 39.429188, 42.396610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255573, 39.413723, 42.468494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179885, -0.001037, 0.983687,
		-0.037853, -0.999252, -0.007975,
		0.982959, -0.038670, 0.179711,
		38.550461, 39.402126, 42.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930099, 39.014267, 43.026855>,  <37.862389, 39.429188, 42.396610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930099, 39.014267, 43.026855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273434, 39.218601, 43.007610>,  <38.479435, 39.341202, 42.996063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273434, 39.218601, 43.007610>,  <37.930099, 39.014267, 43.026855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273434, 39.218601, 43.007610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066079, -0.017059, 0.997669,
		0.508821, -0.859511, -0.048397,
		0.858333, 0.510833, -0.048115,
		38.530933, 39.371849, 42.993176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317329, 38.587845, 43.416470>,  <37.930099, 39.014267, 43.026855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317329, 38.587845, 43.416470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.474583, 38.955128, 43.397102>,  <38.568935, 39.175499, 43.385483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.474583, 38.955128, 43.397102>,  <38.317329, 38.587845, 43.416470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474583, 38.955128, 43.397102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097254, 0.010835, 0.995201,
		0.914325, -0.395951, -0.085039,
		0.393130, 0.918208, -0.048414,
		38.592522, 39.230591, 43.382580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755276, 38.669716, 43.941784>,  <38.317329, 38.587845, 43.416470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755276, 38.669716, 43.941784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727646, 39.060894, 43.862946>,  <38.711067, 39.295601, 43.815643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727646, 39.060894, 43.862946>,  <38.755276, 38.669716, 43.941784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727646, 39.060894, 43.862946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182723, 0.206629, 0.961206,
		0.980735, 0.030381, -0.192966,
		-0.069075, 0.977948, -0.197097,
		38.706924, 39.354279, 43.803818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349293, 38.886662, 44.194637>,  <38.755276, 38.669716, 43.941784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349293, 38.886662, 44.194637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075977, 39.177948, 44.173378>,  <38.911987, 39.352718, 44.160622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075977, 39.177948, 44.173378>,  <39.349293, 38.886662, 44.194637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075977, 39.177948, 44.173378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072279, 0.139891, 0.987525,
		0.726566, 0.670919, -0.148220,
		-0.683284, 0.728216, -0.053146,
		38.870991, 39.396412, 44.157433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577099, 39.493347, 44.550945>,  <39.349293, 38.886662, 44.194637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577099, 39.493347, 44.550945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183113, 39.562412, 44.548908>,  <38.946720, 39.603851, 44.547688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183113, 39.562412, 44.548908>,  <39.577099, 39.493347, 44.550945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183113, 39.562412, 44.548908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013598, 0.106872, 0.994180,
		0.172201, 0.979166, -0.107613,
		-0.984968, 0.172662, -0.005089,
		38.887623, 39.614212, 44.547382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457092, 40.213333, 44.847492>,  <39.577099, 39.493347, 44.550945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457092, 40.213333, 44.847492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120358, 40.001183, 44.887524>,  <38.918316, 39.873894, 44.911541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120358, 40.001183, 44.887524>,  <39.457092, 40.213333, 44.847492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120358, 40.001183, 44.887524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064525, 0.282982, 0.956952,
		-0.535865, 0.799138, -0.272446,
		-0.841835, -0.530376, 0.100076,
		38.867805, 39.842068, 44.917545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015190, 40.647747, 45.199730>,  <39.457092, 40.213333, 44.847492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015190, 40.647747, 45.199730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845024, 40.287609, 45.236397>,  <38.742924, 40.071526, 45.258396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845024, 40.287609, 45.236397>,  <39.015190, 40.647747, 45.199730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845024, 40.287609, 45.236397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204284, 0.194214, 0.959452,
		-0.881641, 0.389438, -0.266547,
		-0.425414, -0.900344, 0.091671,
		38.717400, 40.017506, 45.263897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339443, 40.781593, 45.569836>,  <39.015190, 40.647747, 45.199730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339443, 40.781593, 45.569836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435349, 40.398071, 45.630764>,  <38.492893, 40.167957, 45.667320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435349, 40.398071, 45.630764>,  <38.339443, 40.781593, 45.569836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435349, 40.398071, 45.630764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169154, 0.113240, 0.979063,
		-0.955981, -0.260511, -0.135035,
		0.239765, -0.958807, 0.152322,
		38.507278, 40.110428, 45.676460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116505, 40.685104, 46.199478>,  <38.339443, 40.781593, 45.569836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116505, 40.685104, 46.199478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346493, 40.360031, 46.161633>,  <38.484486, 40.164986, 46.138924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346493, 40.360031, 46.161633>,  <38.116505, 40.685104, 46.199478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346493, 40.360031, 46.161633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071497, -0.165110, 0.983680,
		-0.815045, -0.558821, -0.153038,
		0.574970, -0.812685, -0.094618,
		38.518982, 40.116226, 46.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923355, 40.319595, 46.775681>,  <38.116505, 40.685104, 46.199478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923355, 40.319595, 46.775681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280411, 40.159012, 46.693676>,  <38.494644, 40.062660, 46.644474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280411, 40.159012, 46.693676>,  <37.923355, 40.319595, 46.775681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280411, 40.159012, 46.693676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130117, -0.205957, 0.969872,
		-0.431588, -0.892419, -0.131608,
		0.892637, -0.401461, -0.205007,
		38.548203, 40.038574, 46.632175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877296, 39.612041, 47.132599>,  <37.923355, 40.319595, 46.775681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877296, 39.612041, 47.132599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255810, 39.709084, 47.047096>,  <38.482918, 39.767307, 46.995796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255810, 39.709084, 47.047096>,  <37.877296, 39.612041, 47.132599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255810, 39.709084, 47.047096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250492, -0.132011, 0.959076,
		0.204456, -0.961102, -0.185690,
		0.946283, 0.242603, -0.213758,
		38.539696, 39.781864, 46.982967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269783, 39.128712, 47.505348>,  <37.877296, 39.612041, 47.132599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269783, 39.128712, 47.505348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549240, 39.407646, 47.441334>,  <38.716915, 39.575008, 47.402924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549240, 39.407646, 47.441334>,  <38.269783, 39.128712, 47.505348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549240, 39.407646, 47.441334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315422, -0.099432, 0.943728,
		0.642186, -0.709810, -0.289424,
		0.698645, 0.697340, -0.160035,
		38.758835, 39.616848, 47.393322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842655, 38.844566, 47.856960>,  <38.269783, 39.128712, 47.505348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842655, 38.844566, 47.856960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961983, 39.225292, 47.828499>,  <39.033577, 39.453728, 47.811420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961983, 39.225292, 47.828499>,  <38.842655, 38.844566, 47.856960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961983, 39.225292, 47.828499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302222, -0.023480, 0.952949,
		0.905356, -0.305786, -0.294662,
		0.298317, 0.951811, -0.071158,
		39.051479, 39.510834, 47.807152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448845, 38.840473, 48.253384>,  <38.842655, 38.844566, 47.856960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448845, 38.840473, 48.253384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347446, 39.226078, 48.221355>,  <39.286606, 39.457443, 48.202137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347446, 39.226078, 48.221355>,  <39.448845, 38.840473, 48.253384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347446, 39.226078, 48.221355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228125, 0.140020, 0.963511,
		0.940053, 0.225978, -0.255410,
		-0.253495, 0.964017, -0.080075,
		39.271397, 39.515282, 48.197334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981068, 39.197109, 48.405693>,  <39.448845, 38.840473, 48.253384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981068, 39.197109, 48.405693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.675632, 39.441677, 48.488731>,  <39.492371, 39.588417, 48.538555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.675632, 39.441677, 48.488731>,  <39.981068, 39.197109, 48.405693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675632, 39.441677, 48.488731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311275, 0.066882, 0.947963,
		0.565718, 0.788476, -0.241389,
		-0.763591, 0.611418, 0.207596,
		39.446556, 39.625103, 48.551010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232025, 39.700352, 48.782394>,  <39.981068, 39.197109, 48.405693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232025, 39.700352, 48.782394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840790, 39.713402, 48.864639>,  <39.606049, 39.721233, 48.913986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840790, 39.713402, 48.864639>,  <40.232025, 39.700352, 48.782394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840790, 39.713402, 48.864639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205852, 0.004178, 0.978574,
		0.031069, 0.999459, -0.010802,
		-0.978090, 0.032627, 0.205610,
		39.547363, 39.723190, 48.926323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241459, 40.089516, 49.364109>,  <40.232025, 39.700352, 48.782394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241459, 40.089516, 49.364109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867386, 39.948647, 49.349091>,  <39.642941, 39.864124, 49.340080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867386, 39.948647, 49.349091>,  <40.241459, 40.089516, 49.364109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867386, 39.948647, 49.349091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046082, -0.226106, 0.973012,
		-0.351156, 0.908214, 0.227679,
		-0.935182, -0.352171, -0.037546,
		39.586830, 39.842995, 49.337826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811092, 40.423275, 49.846008>,  <40.241459, 40.089516, 49.364109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811092, 40.423275, 49.846008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612633, 40.079433, 49.797150>,  <39.493557, 39.873131, 49.767834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612633, 40.079433, 49.797150>,  <39.811092, 40.423275, 49.846008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612633, 40.079433, 49.797150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060451, -0.174542, 0.982792,
		-0.866129, 0.480230, 0.138564,
		-0.496152, -0.859601, -0.122145,
		39.463787, 39.821552, 49.760506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274544, 40.398651, 50.374989>,  <39.811092, 40.423275, 49.846008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274544, 40.398651, 50.374989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365166, 40.027946, 50.255135>,  <39.419540, 39.805523, 50.183224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365166, 40.027946, 50.255135>,  <39.274544, 40.398651, 50.374989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365166, 40.027946, 50.255135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042323, -0.316711, 0.947577,
		-0.973077, -0.202001, -0.110977,
		0.226559, -0.926763, -0.299635,
		39.433132, 39.749916, 50.165245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839264, 39.932507, 50.733234>,  <39.274544, 40.398651, 50.374989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839264, 39.932507, 50.733234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152111, 39.718601, 50.605289>,  <39.339821, 39.590256, 50.528522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152111, 39.718601, 50.605289>,  <38.839264, 39.932507, 50.733234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152111, 39.718601, 50.605289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021060, -0.490341, 0.871276,
		-0.622771, -0.688180, -0.372243,
		0.782121, -0.534766, -0.319864,
		39.386749, 39.558170, 50.509331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096027, 39.850403, 50.984726>,  <38.839264, 39.932507, 50.733234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096027, 39.850403, 50.984726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718132, 39.980759, 50.999016>,  <37.491394, 40.058971, 51.007591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718132, 39.980759, 50.999016>,  <38.096027, 39.850403, 50.984726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718132, 39.980759, 50.999016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063455, 0.288682, -0.955320,
		-0.321639, -0.900256, -0.293407,
		-0.944734, 0.325886, 0.035726,
		37.434711, 40.078526, 51.009735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825329, 39.750584, 50.211880>,  <38.096027, 39.850403, 50.984726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825329, 39.750584, 50.211880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573437, 39.993404, 50.405758>,  <37.422302, 40.139099, 50.522083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573437, 39.993404, 50.405758>,  <37.825329, 39.750584, 50.211880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573437, 39.993404, 50.405758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347219, 0.338184, -0.874683,
		-0.694895, -0.719108, -0.002184,
		-0.629730, 0.607054, 0.484691,
		37.384518, 40.175522, 50.551167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249489, 39.620949, 49.900509>,  <37.825329, 39.750584, 50.211880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249489, 39.620949, 49.900509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177734, 39.969818, 50.082554>,  <37.134682, 40.179142, 50.191780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177734, 39.969818, 50.082554>,  <37.249489, 39.620949, 49.900509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177734, 39.969818, 50.082554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349576, 0.375916, -0.858186,
		-0.919574, -0.313045, 0.237457,
		-0.179387, 0.872175, 0.455116,
		37.123917, 40.231472, 50.219090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510963, 39.839512, 49.761173>,  <37.249489, 39.620949, 49.900509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510963, 39.839512, 49.761173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707184, 40.179817, 49.836597>,  <36.824917, 40.383999, 49.881851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707184, 40.179817, 49.836597>,  <36.510963, 39.839512, 49.761173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707184, 40.179817, 49.836597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530079, 0.463082, -0.710332,
		-0.691644, 0.248506, 0.678139,
		0.490556, 0.850764, 0.188560,
		36.854351, 40.435047, 49.893166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953197, 40.408436, 49.770260>,  <36.510963, 39.839512, 49.761173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953197, 40.408436, 49.770260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296417, 40.606026, 49.714054>,  <36.502350, 40.724579, 49.680332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296417, 40.606026, 49.714054>,  <35.953197, 40.408436, 49.770260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296417, 40.606026, 49.714054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408199, 0.489936, -0.770283,
		-0.311661, 0.718295, 0.622029,
		0.858045, 0.493979, -0.140513,
		36.553829, 40.754219, 49.671902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815300, 41.064098, 49.586193>,  <35.953197, 40.408436, 49.770260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815300, 41.064098, 49.586193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199764, 41.044407, 49.477573>,  <36.430443, 41.032593, 49.412403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199764, 41.044407, 49.477573>,  <35.815300, 41.064098, 49.586193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199764, 41.044407, 49.477573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216899, 0.473638, -0.853594,
		0.170635, 0.879343, 0.444567,
		0.961165, -0.049227, -0.271548,
		36.488113, 41.029640, 49.396111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886959, 41.584599, 49.105381>,  <35.815300, 41.064098, 49.586193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886959, 41.584599, 49.105381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217701, 41.372364, 49.030781>,  <36.416145, 41.245022, 48.986019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.217701, 41.372364, 49.030781>,  <35.886959, 41.584599, 49.105381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217701, 41.372364, 49.030781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069108, 0.233241, -0.969960,
		0.558147, 0.814909, 0.156190,
		0.826859, -0.530586, -0.186499,
		36.465759, 41.213188, 48.974831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399918, 42.003136, 48.655697>,  <35.886959, 41.584599, 49.105381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399918, 42.003136, 48.655697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425827, 41.606056, 48.614994>,  <36.441372, 41.367809, 48.590572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425827, 41.606056, 48.614994>,  <36.399918, 42.003136, 48.655697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425827, 41.606056, 48.614994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125760, 0.093036, -0.987688,
		0.989944, 0.076772, -0.118816,
		0.064773, -0.992698, -0.101755,
		36.445259, 41.308247, 48.584469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599842, 41.913593, 47.921593>,  <36.399918, 42.003136, 48.655697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599842, 41.913593, 47.921593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496006, 41.539906, 48.019444>,  <36.433704, 41.315693, 48.078156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496006, 41.539906, 48.019444>,  <36.599842, 41.913593, 47.921593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496006, 41.539906, 48.019444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151811, -0.210689, -0.965693,
		0.953713, -0.287819, -0.087133,
		-0.259587, -0.934222, 0.244631,
		36.418129, 41.259640, 48.092834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054485, 41.481487, 47.547989>,  <36.599842, 41.913593, 47.921593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054485, 41.481487, 47.547989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729675, 41.259941, 47.621578>,  <36.534790, 41.127014, 47.665730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729675, 41.259941, 47.621578>,  <37.054485, 41.481487, 47.547989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729675, 41.259941, 47.621578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178585, -0.064294, -0.981822,
		0.555627, -0.830119, -0.046704,
		-0.812026, -0.553867, 0.183970,
		36.486069, 41.093781, 47.676769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189667, 40.926048, 47.138508>,  <37.054485, 41.481487, 47.547989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189667, 40.926048, 47.138508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805271, 40.853516, 47.222038>,  <36.574635, 40.809994, 47.272156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805271, 40.853516, 47.222038>,  <37.189667, 40.926048, 47.138508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805271, 40.853516, 47.222038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145517, -0.310590, -0.939339,
		0.235195, -0.933087, 0.272088,
		-0.960993, -0.181334, 0.208830,
		36.516972, 40.799114, 47.284687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074753, 40.263172, 47.009960>,  <37.189667, 40.926048, 47.138508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074753, 40.263172, 47.009960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722042, 40.447163, 46.968216>,  <36.510414, 40.557556, 46.943169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722042, 40.447163, 46.968216>,  <37.074753, 40.263172, 47.009960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722042, 40.447163, 46.968216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069880, -0.346217, -0.935548,
		-0.466464, -0.817651, 0.337429,
		-0.881775, 0.459979, -0.104360,
		36.457508, 40.585155, 46.936909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591530, 39.769421, 46.758369>,  <37.074753, 40.263172, 47.009960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591530, 39.769421, 46.758369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.461971, 40.131874, 46.649544>,  <36.384235, 40.349346, 46.584248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.461971, 40.131874, 46.649544>,  <36.591530, 39.769421, 46.758369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461971, 40.131874, 46.649544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018631, -0.281401, -0.959409,
		-0.945909, -0.315819, 0.074263,
		-0.323897, 0.906130, -0.272063,
		36.364803, 40.403713, 46.567924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051403, 39.650776, 46.301685>,  <36.591530, 39.769421, 46.758369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051403, 39.650776, 46.301685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112110, 40.040279, 46.233856>,  <36.148533, 40.273983, 46.193161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112110, 40.040279, 46.233856>,  <36.051403, 39.650776, 46.301685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112110, 40.040279, 46.233856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132270, -0.150005, -0.979798,
		-0.979526, 0.171132, 0.106034,
		0.151769, 0.973762, -0.169569,
		36.157642, 40.332409, 46.182987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597221, 39.760300, 45.773373>,  <36.051403, 39.650776, 46.301685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597221, 39.760300, 45.773373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858238, 40.062965, 45.757149>,  <36.014851, 40.244564, 45.747414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858238, 40.062965, 45.757149>,  <35.597221, 39.760300, 45.773373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858238, 40.062965, 45.757149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020496, -0.071134, -0.997256,
		-0.757471, 0.649925, -0.061927,
		0.652547, 0.756662, -0.040561,
		36.054001, 40.289963, 45.744980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349590, 40.179688, 45.224316>,  <35.597221, 39.760300, 45.773373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349590, 40.179688, 45.224316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732445, 40.290394, 45.258469>,  <35.962158, 40.356819, 45.278961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732445, 40.290394, 45.258469>,  <35.349590, 40.179688, 45.224316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732445, 40.290394, 45.258469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079954, 0.030873, -0.996320,
		-0.278387, 0.960440, 0.007421,
		0.957135, 0.276770, 0.085385,
		36.019585, 40.373425, 45.284084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514992, 40.708233, 44.710636>,  <35.349590, 40.179688, 45.224316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514992, 40.708233, 44.710636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887497, 40.586842, 44.791294>,  <36.111000, 40.514008, 44.839687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887497, 40.586842, 44.791294>,  <35.514992, 40.708233, 44.710636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887497, 40.586842, 44.791294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217677, 0.019600, -0.975824,
		0.292187, 0.952637, 0.084313,
		0.931259, -0.303476, 0.201640,
		36.166874, 40.495800, 44.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938652, 41.113632, 44.304317>,  <35.514992, 40.708233, 44.710636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938652, 41.113632, 44.304317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152939, 40.783329, 44.374893>,  <36.281509, 40.585148, 44.417236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152939, 40.783329, 44.374893>,  <35.938652, 41.113632, 44.304317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152939, 40.783329, 44.374893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208738, -0.072956, -0.975247,
		0.818191, 0.559284, 0.133283,
		0.535716, -0.825759, 0.176436,
		36.313652, 40.535603, 44.427822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487328, 41.249176, 43.834625>,  <35.938652, 41.113632, 44.304317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487328, 41.249176, 43.834625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471069, 40.859924, 43.925278>,  <36.461315, 40.626373, 43.979668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471069, 40.859924, 43.925278>,  <36.487328, 41.249176, 43.834625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471069, 40.859924, 43.925278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208964, -0.230081, -0.950472,
		0.977078, 0.008730, 0.212700,
		-0.040641, -0.973132, 0.226631,
		36.458878, 40.567986, 43.993267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099106, 40.885899, 43.489864>,  <36.487328, 41.249176, 43.834625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099106, 40.885899, 43.489864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824764, 40.610741, 43.584869>,  <36.660160, 40.445648, 43.641872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824764, 40.610741, 43.584869>,  <37.099106, 40.885899, 43.489864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824764, 40.610741, 43.584869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037288, -0.359157, -0.932532,
		0.726787, -0.630721, 0.271978,
		-0.685850, -0.687893, 0.237513,
		36.619011, 40.404373, 43.656124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298717, 40.181515, 43.250481>,  <37.099106, 40.885899, 43.489864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298717, 40.181515, 43.250481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903362, 40.154671, 43.305004>,  <36.666149, 40.138565, 43.337719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903362, 40.154671, 43.305004>,  <37.298717, 40.181515, 43.250481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903362, 40.154671, 43.305004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100771, -0.381847, -0.918716,
		0.113707, -0.921786, 0.370651,
		-0.988391, -0.067114, 0.136308,
		36.606846, 40.134537, 43.345898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.187355, 30.298681, 26.470451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860390, 30.455303, 26.639458>,  <39.664211, 30.549276, 26.740862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860390, 30.455303, 26.639458>,  <40.187355, 30.298681, 26.470451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860390, 30.455303, 26.639458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509804, 0.150217, 0.847074,
		0.268207, 0.907810, -0.322406,
		-0.817414, 0.391555, 0.422516,
		39.615166, 30.572769, 26.766212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382751, 31.012783, 26.701191>,  <40.187355, 30.298681, 26.470451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382751, 31.012783, 26.701191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.080547, 30.875492, 26.924402>,  <39.899223, 30.793118, 27.058329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.080547, 30.875492, 26.924402>,  <40.382751, 31.012783, 26.701191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080547, 30.875492, 26.924402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497097, 0.254480, 0.829539,
		-0.426727, 0.904121, -0.021645,
		-0.755512, -0.343227, 0.558030,
		39.853893, 30.772524, 27.091810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271839, 31.511101, 27.273079>,  <40.382751, 31.012783, 26.701191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271839, 31.511101, 27.273079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109062, 31.174454, 27.415108>,  <40.011395, 30.972466, 27.500324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109062, 31.174454, 27.415108>,  <40.271839, 31.511101, 27.273079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109062, 31.174454, 27.415108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418115, 0.173978, 0.891578,
		-0.812142, 0.511284, 0.281093,
		-0.406946, -0.841617, 0.355071,
		39.986977, 30.921968, 27.521629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130711, 31.655979, 28.016880>,  <40.271839, 31.511101, 27.273079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130711, 31.655979, 28.016880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086319, 31.258709, 28.002506>,  <40.059685, 31.020348, 27.993881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086319, 31.258709, 28.002506>,  <40.130711, 31.655979, 28.016880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086319, 31.258709, 28.002506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441758, -0.081688, 0.893407,
		-0.890244, 0.083270, 0.447808,
		-0.110975, -0.993173, -0.035936,
		40.053028, 30.960756, 27.991726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907848, 31.517948, 28.714899>,  <40.130711, 31.655979, 28.016880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907848, 31.517948, 28.714899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079788, 31.199083, 28.545305>,  <40.182953, 31.007765, 28.443550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079788, 31.199083, 28.545305>,  <39.907848, 31.517948, 28.714899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079788, 31.199083, 28.545305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543404, -0.146607, 0.826570,
		-0.721069, -0.585696, 0.370162,
		0.429850, -0.797162, -0.423983,
		40.208744, 30.959934, 28.418110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868416, 31.004902, 29.181080>,  <39.907848, 31.517948, 28.714899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868416, 31.004902, 29.181080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156368, 30.901464, 28.923429>,  <40.329140, 30.839401, 28.768839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156368, 30.901464, 28.923429>,  <39.868416, 31.004902, 29.181080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156368, 30.901464, 28.923429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630614, -0.144047, 0.762611,
		-0.289993, -0.955185, 0.059377,
		0.719882, -0.258596, -0.644126,
		40.372334, 30.823885, 28.730192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092442, 30.375784, 29.391293>,  <39.868416, 31.004902, 29.181080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092442, 30.375784, 29.391293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403385, 30.529699, 29.192236>,  <40.589951, 30.622047, 29.072802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403385, 30.529699, 29.192236>,  <40.092442, 30.375784, 29.391293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403385, 30.529699, 29.192236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562270, -0.070296, 0.823961,
		0.282066, -0.920325, -0.270999,
		0.777362, 0.384786, -0.497642,
		40.636593, 30.645136, 29.042944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616959, 29.990887, 29.760223>,  <40.092442, 30.375784, 29.391293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616959, 29.990887, 29.760223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771133, 30.302103, 29.561792>,  <40.863640, 30.488832, 29.442734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771133, 30.302103, 29.561792>,  <40.616959, 29.990887, 29.760223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771133, 30.302103, 29.561792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624684, 0.175660, 0.760863,
		0.679123, -0.603155, -0.418324,
		0.385436, 0.778041, -0.496076,
		40.886765, 30.535515, 29.412970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261497, 29.935390, 29.873703>,  <40.616959, 29.990887, 29.760223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261497, 29.935390, 29.873703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.220211, 30.321424, 29.777405>,  <41.195438, 30.553045, 29.719625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.220211, 30.321424, 29.777405>,  <41.261497, 29.935390, 29.873703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220211, 30.321424, 29.777405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659848, 0.247544, 0.709452,
		0.744277, -0.085630, -0.662360,
		-0.103213, 0.965085, -0.240744,
		41.189247, 30.610950, 29.705181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868580, 30.213125, 30.062481>,  <41.261497, 29.935390, 29.873703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868580, 30.213125, 30.062481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608398, 30.516914, 30.058151>,  <41.452290, 30.699188, 30.055553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608398, 30.516914, 30.058151>,  <41.868580, 30.213125, 30.062481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608398, 30.516914, 30.058151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423593, 0.374542, 0.824795,
		0.630463, 0.531904, -0.565328,
		-0.650451, 0.759471, -0.010824,
		41.413261, 30.744757, 30.054903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255707, 30.748863, 30.075583>,  <41.868580, 30.213125, 30.062481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255707, 30.748863, 30.075583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912922, 30.916567, 30.195471>,  <41.707249, 31.017189, 30.267405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912922, 30.916567, 30.195471>,  <42.255707, 30.748863, 30.075583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912922, 30.916567, 30.195471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501259, 0.542882, 0.673809,
		0.119786, 0.727670, -0.675388,
		-0.856966, 0.419257, 0.299721,
		41.655830, 31.042343, 30.285387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391544, 31.452660, 29.981985>,  <42.255707, 30.748863, 30.075583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391544, 31.452660, 29.981985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087883, 31.409546, 30.238754>,  <41.905685, 31.383677, 30.392817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087883, 31.409546, 30.238754>,  <42.391544, 31.452660, 29.981985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087883, 31.409546, 30.238754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519419, 0.494036, 0.697232,
		-0.392286, 0.862734, -0.319063,
		-0.759154, -0.107786, 0.641924,
		41.860138, 31.377211, 30.431332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222179, 32.121021, 30.300064>,  <42.391544, 31.452660, 29.981985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222179, 32.121021, 30.300064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.077545, 31.840511, 30.545820>,  <41.990765, 31.672207, 30.693274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.077545, 31.840511, 30.545820>,  <42.222179, 32.121021, 30.300064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077545, 31.840511, 30.545820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502953, 0.408152, 0.761873,
		-0.785043, 0.584492, 0.205124,
		-0.361587, -0.701271, 0.614389,
		41.969070, 31.630131, 30.730137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095722, 32.412357, 31.004576>,  <42.222179, 32.121021, 30.300064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095722, 32.412357, 31.004576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120743, 32.028305, 31.113565>,  <42.135754, 31.797874, 31.178959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120743, 32.028305, 31.113565>,  <42.095722, 32.412357, 31.004576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120743, 32.028305, 31.113565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503519, 0.266076, 0.821992,
		-0.861717, 0.085781, 0.500086,
		0.062549, -0.960128, 0.272475,
		42.139507, 31.740267, 31.195309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660801, 32.389214, 31.617033>,  <42.095722, 32.412357, 31.004576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660801, 32.389214, 31.617033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.917854, 32.082764, 31.613609>,  <42.072086, 31.898893, 31.611555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.917854, 32.082764, 31.613609>,  <41.660801, 32.389214, 31.617033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917854, 32.082764, 31.613609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409502, 0.334009, 0.848967,
		-0.647559, -0.549078, 0.528376,
		0.642632, -0.766127, -0.008558,
		42.110645, 31.852926, 31.611042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589851, 32.127579, 32.282280>,  <41.660801, 32.389214, 31.617033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589851, 32.127579, 32.282280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946495, 32.006668, 32.147419>,  <42.160480, 31.934122, 32.066502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946495, 32.006668, 32.147419>,  <41.589851, 32.127579, 32.282280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946495, 32.006668, 32.147419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433959, 0.357782, 0.826844,
		-0.129305, -0.883529, 0.450175,
		0.891605, -0.302273, -0.337152,
		42.213978, 31.915987, 32.046272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838379, 31.759670, 32.886868>,  <41.589851, 32.127579, 32.282280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838379, 31.759670, 32.886868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161678, 31.816275, 32.658237>,  <42.355659, 31.850237, 32.521057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161678, 31.816275, 32.658237>,  <41.838379, 31.759670, 32.886868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161678, 31.816275, 32.658237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502594, 0.339962, 0.794874,
		0.306794, -0.929732, 0.203656,
		0.808256, 0.141506, -0.571576,
		42.404156, 31.858728, 32.486763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408211, 31.330334, 33.193787>,  <41.838379, 31.759670, 32.886868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408211, 31.330334, 33.193787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593716, 31.606516, 32.971722>,  <42.705017, 31.772224, 32.838482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593716, 31.606516, 32.971722>,  <42.408211, 31.330334, 33.193787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593716, 31.606516, 32.971722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603511, 0.212553, 0.768502,
		0.648616, -0.691444, -0.318123,
		0.463758, 0.690454, -0.555159,
		42.732841, 31.813652, 32.805172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263962, 31.262894, 33.355881>,  <42.408211, 31.330334, 33.193787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263962, 31.262894, 33.355881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174904, 31.619450, 33.197968>,  <43.121468, 31.833384, 33.103218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174904, 31.619450, 33.197968>,  <43.263962, 31.262894, 33.355881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174904, 31.619450, 33.197968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637074, 0.439558, 0.633187,
		0.737946, -0.110530, -0.665747,
		-0.222648, 0.891388, -0.394786,
		43.108109, 31.886866, 33.079533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910816, 31.530809, 33.180889>,  <43.263962, 31.262894, 33.355881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910816, 31.530809, 33.180889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692753, 31.866100, 33.186256>,  <43.561916, 32.067276, 33.189476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692753, 31.866100, 33.186256>,  <43.910816, 31.530809, 33.180889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692753, 31.866100, 33.186256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741607, 0.474727, 0.473975,
		0.390929, 0.268341, -0.880436,
		-0.545154, 0.838229, 0.013419,
		43.529205, 32.117569, 33.190281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354057, 32.150352, 32.999470>,  <43.910816, 31.530809, 33.180889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354057, 32.150352, 32.999470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054981, 32.322159, 33.202042>,  <43.875534, 32.425243, 33.323586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054981, 32.322159, 33.202042>,  <44.354057, 32.150352, 32.999470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054981, 32.322159, 33.202042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650827, 0.625408, 0.430453,
		-0.131840, 0.651446, -0.747153,
		-0.747691, 0.429516, 0.506432,
		43.830673, 32.451015, 33.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806641, 32.736000, 32.782547>,  <44.354057, 32.150352, 32.999470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806641, 32.736000, 32.782547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662971, 32.634998, 32.423161>,  <44.576771, 32.574398, 32.207531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662971, 32.634998, 32.423161>,  <44.806641, 32.736000, 32.782547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662971, 32.634998, 32.423161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739787, -0.509868, 0.439032,
		-0.568954, 0.822361, -0.003665,
		-0.359174, -0.252500, -0.898464,
		44.555218, 32.559250, 32.153622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029095, 33.435863, 33.015587>,  <44.806641, 32.736000, 32.782547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029095, 33.435863, 33.015587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045818, 33.834835, 33.038895>,  <45.055855, 34.074219, 33.052879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045818, 33.834835, 33.038895>,  <45.029095, 33.435863, 33.015587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045818, 33.834835, 33.038895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376357, 0.069747, -0.923845,
		-0.925531, 0.016697, 0.378305,
		0.041811, 0.997425, 0.058269,
		45.058361, 34.134064, 33.056377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307739, 33.719257, 32.914902>,  <45.029095, 33.435863, 33.015587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307739, 33.719257, 32.914902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582726, 33.990124, 32.809959>,  <44.747719, 34.152645, 32.746994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582726, 33.990124, 32.809959>,  <44.307739, 33.719257, 32.914902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582726, 33.990124, 32.809959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359592, 0.003546, -0.933103,
		-0.630936, 0.735821, 0.245942,
		0.687469, 0.677167, -0.262358,
		44.788967, 34.193275, 32.731251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969868, 34.163998, 32.550133>,  <44.307739, 33.719257, 32.914902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969868, 34.163998, 32.550133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348732, 34.213993, 32.431973>,  <44.576050, 34.243992, 32.361076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348732, 34.213993, 32.431973>,  <43.969868, 34.163998, 32.550133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348732, 34.213993, 32.431973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303770, 0.053815, -0.951224,
		-0.102999, 0.990697, 0.088940,
		0.947161, 0.124992, -0.295401,
		44.632881, 34.251492, 32.343353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965240, 34.749435, 32.059254>,  <43.969868, 34.163998, 32.550133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965240, 34.749435, 32.059254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286678, 34.532818, 31.960495>,  <44.479542, 34.402847, 31.901239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286678, 34.532818, 31.960495>,  <43.965240, 34.749435, 32.059254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286678, 34.532818, 31.960495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227628, 0.103648, -0.968216,
		0.549925, 0.834257, -0.039980,
		0.803597, -0.541546, -0.246899,
		44.527756, 34.370354, 31.886425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295647, 35.094521, 31.561054>,  <43.965240, 34.749435, 32.059254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295647, 35.094521, 31.561054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416660, 34.717674, 31.503246>,  <44.489269, 34.491566, 31.468561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416660, 34.717674, 31.503246>,  <44.295647, 35.094521, 31.561054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416660, 34.717674, 31.503246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210675, 0.081779, -0.974129,
		0.929565, 0.325151, -0.173741,
		0.302531, -0.942119, -0.144520,
		44.507420, 34.435040, 31.459890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643520, 35.097828, 30.956020>,  <44.295647, 35.094521, 31.561054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643520, 35.097828, 30.956020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558758, 34.708687, 30.993212>,  <44.507900, 34.475201, 31.015526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558758, 34.708687, 30.993212>,  <44.643520, 35.097828, 30.956020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558758, 34.708687, 30.993212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187360, -0.052931, -0.980864,
		0.959161, -0.225275, -0.171057,
		-0.211910, -0.972856, 0.092977,
		44.495186, 34.416828, 31.021105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814480, 34.837002, 30.203917>,  <44.643520, 35.097828, 30.956020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814480, 34.837002, 30.203917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595978, 34.568790, 30.404715>,  <44.464878, 34.407864, 30.525192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595978, 34.568790, 30.404715>,  <44.814480, 34.837002, 30.203917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595978, 34.568790, 30.404715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469754, -0.250954, -0.846377,
		0.693499, -0.698148, -0.177901,
		-0.546251, -0.670531, 0.501994,
		44.432102, 34.367630, 30.555313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861572, 34.286686, 29.865604>,  <44.814480, 34.837002, 30.203917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861572, 34.286686, 29.865604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514877, 34.243523, 30.060383>,  <44.306858, 34.217625, 30.177250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514877, 34.243523, 30.060383>,  <44.861572, 34.286686, 29.865604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514877, 34.243523, 30.060383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429498, -0.334863, -0.838688,
		0.253564, -0.936068, 0.243891,
		-0.866739, -0.107910, 0.486949,
		44.254856, 34.211151, 30.206467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634731, 33.553066, 29.812197>,  <44.861572, 34.286686, 29.865604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634731, 33.553066, 29.812197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300735, 33.746410, 29.917379>,  <44.100338, 33.862419, 29.980490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300735, 33.746410, 29.917379>,  <44.634731, 33.553066, 29.812197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300735, 33.746410, 29.917379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418647, -0.247919, -0.873653,
		-0.357102, -0.839580, 0.409370,
		-0.834993, 0.483365, 0.262955,
		44.050236, 33.891418, 29.996265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018478, 33.120266, 29.623373>,  <44.634731, 33.553066, 29.812197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018478, 33.120266, 29.623373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872917, 33.490650, 29.663719>,  <43.785580, 33.712879, 29.687927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872917, 33.490650, 29.663719>,  <44.018478, 33.120266, 29.623373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872917, 33.490650, 29.663719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601010, -0.150693, -0.784907,
		-0.711593, -0.346249, 0.611349,
		-0.363899, 0.925961, 0.100867,
		43.763748, 33.768440, 29.693979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276997, 32.997826, 29.567526>,  <44.018478, 33.120266, 29.623373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276997, 32.997826, 29.567526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347225, 33.378643, 29.467291>,  <43.389362, 33.607132, 29.407150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347225, 33.378643, 29.467291>,  <43.276997, 32.997826, 29.567526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347225, 33.378643, 29.467291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533864, -0.121790, -0.836753,
		-0.827142, 0.280688, 0.486878,
		0.175570, 0.952040, -0.250587,
		43.399895, 33.664257, 29.392115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641262, 33.365437, 29.581821>,  <43.276997, 32.997826, 29.567526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641262, 33.365437, 29.581821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886982, 33.581894, 29.352106>,  <43.034412, 33.711769, 29.214277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886982, 33.581894, 29.352106>,  <42.641262, 33.365437, 29.581821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886982, 33.581894, 29.352106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613276, -0.130538, -0.779007,
		-0.496517, 0.830740, 0.251678,
		0.614299, 0.541139, -0.574287,
		43.071270, 33.744236, 29.179819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179531, 33.723080, 29.280514>,  <42.641262, 33.365437, 29.581821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179531, 33.723080, 29.280514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492882, 33.791985, 29.041636>,  <42.680893, 33.833328, 28.898308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492882, 33.791985, 29.041636>,  <42.179531, 33.723080, 29.280514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492882, 33.791985, 29.041636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590832, -0.091904, -0.801543,
		-0.192962, 0.980754, 0.029784,
		0.783379, 0.172265, -0.597195,
		42.727894, 33.843662, 28.862476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845642, 34.073711, 28.802906>,  <42.179531, 33.723080, 29.280514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845642, 34.073711, 28.802906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197685, 34.034958, 28.616991>,  <42.408909, 34.011703, 28.505442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197685, 34.034958, 28.616991>,  <41.845642, 34.073711, 28.802906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197685, 34.034958, 28.616991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459066, 0.076095, -0.885137,
		0.121126, 0.992382, 0.022494,
		0.880106, -0.096887, -0.464786,
		42.461716, 34.005894, 28.477554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884228, 34.626919, 28.342079>,  <41.845642, 34.073711, 28.802906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884228, 34.626919, 28.342079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124748, 34.337536, 28.206411>,  <42.269062, 34.163906, 28.125011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124748, 34.337536, 28.206411>,  <41.884228, 34.626919, 28.342079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124748, 34.337536, 28.206411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355138, 0.138262, -0.924533,
		0.715757, 0.676379, -0.173790,
		0.601306, -0.723461, -0.339170,
		42.305141, 34.120499, 28.104660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245129, 34.855114, 27.723381>,  <41.884228, 34.626919, 28.342079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245129, 34.855114, 27.723381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244549, 34.455521, 27.705339>,  <42.244202, 34.215767, 27.694515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244549, 34.455521, 27.705339>,  <42.245129, 34.855114, 27.723381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244549, 34.455521, 27.705339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396055, 0.041989, -0.917266,
		0.918226, 0.016531, -0.395713,
		-0.001453, -0.998981, -0.045103,
		42.244114, 34.155827, 27.691809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573441, 34.689240, 27.137934>,  <42.245129, 34.855114, 27.723381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573441, 34.689240, 27.137934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374798, 34.352634, 27.223001>,  <42.255611, 34.150669, 27.274042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374798, 34.352634, 27.223001>,  <42.573441, 34.689240, 27.137934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374798, 34.352634, 27.223001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417630, 0.016873, -0.908460,
		0.760897, -0.539967, -0.359822,
		-0.496610, -0.841517, 0.212668,
		42.225815, 34.100178, 27.286802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667965, 34.402042, 26.511744>,  <42.573441, 34.689240, 27.137934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667965, 34.402042, 26.511744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361401, 34.221241, 26.694309>,  <42.177464, 34.112759, 26.803848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361401, 34.221241, 26.694309>,  <42.667965, 34.402042, 26.511744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361401, 34.221241, 26.694309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437509, -0.152931, -0.886114,
		0.470327, -0.878809, -0.080548,
		-0.766406, -0.452004, 0.456415,
		42.131477, 34.085640, 26.831234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510548, 33.882515, 26.023956>,  <42.667965, 34.402042, 26.511744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510548, 33.882515, 26.023956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193192, 33.896606, 26.267035>,  <42.002777, 33.905060, 26.412882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193192, 33.896606, 26.267035>,  <42.510548, 33.882515, 26.023956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193192, 33.896606, 26.267035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593475, -0.266749, -0.759363,
		0.135353, -0.963122, 0.232541,
		-0.793389, 0.035225, 0.607694,
		41.955173, 33.907173, 26.449343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275612, 33.260139, 25.935926>,  <42.510548, 33.882515, 26.023956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275612, 33.260139, 25.935926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984257, 33.496609, 26.074467>,  <41.809444, 33.638493, 26.157591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984257, 33.496609, 26.074467>,  <42.275612, 33.260139, 25.935926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984257, 33.496609, 26.074467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549689, -0.202449, -0.810467,
		-0.409011, -0.780720, 0.472425,
		-0.728390, 0.591177, 0.346350,
		41.765739, 33.673962, 26.178371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.625637, 38.271233, 38.720299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310493, 38.151493, 38.935581>,  <39.121407, 38.079647, 39.064751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310493, 38.151493, 38.935581>,  <39.625637, 38.271233, 38.720299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310493, 38.151493, 38.935581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248848, -0.644652, -0.722840,
		0.563340, -0.703428, 0.433402,
		-0.787859, -0.299353, 0.538205,
		39.074135, 38.061687, 39.097042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679657, 37.570526, 38.730614>,  <39.625637, 38.271233, 38.720299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679657, 37.570526, 38.730614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293171, 37.639629, 38.807125>,  <39.061279, 37.681091, 38.853031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293171, 37.639629, 38.807125>,  <39.679657, 37.570526, 38.730614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293171, 37.639629, 38.807125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257420, -0.609554, -0.749786,
		-0.012935, -0.773692, 0.633430,
		-0.966213, 0.172756, 0.191279,
		39.003307, 37.691456, 38.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407684, 36.907120, 38.857807>,  <39.679657, 37.570526, 38.730614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407684, 36.907120, 38.857807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111103, 37.150265, 38.744144>,  <38.933155, 37.296150, 38.675949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111103, 37.150265, 38.744144>,  <39.407684, 36.907120, 38.857807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111103, 37.150265, 38.744144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213709, -0.615355, -0.758727,
		-0.636063, -0.501833, 0.586163,
		-0.741453, 0.607866, -0.284158,
		38.888664, 37.332623, 38.658897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908489, 36.449715, 38.754276>,  <39.407684, 36.907120, 38.857807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908489, 36.449715, 38.754276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755741, 36.773613, 38.576069>,  <38.664093, 36.967953, 38.469143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755741, 36.773613, 38.576069>,  <38.908489, 36.449715, 38.754276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755741, 36.773613, 38.576069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503784, -0.586514, -0.634195,
		-0.774841, -0.017731, 0.631907,
		-0.381867, 0.809745, -0.445523,
		38.641182, 37.016537, 38.442413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260147, 36.202221, 38.543896>,  <38.908489, 36.449715, 38.754276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260147, 36.202221, 38.543896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369213, 36.512901, 38.316780>,  <38.434650, 36.699310, 38.180511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369213, 36.512901, 38.316780>,  <38.260147, 36.202221, 38.543896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369213, 36.512901, 38.316780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242051, -0.515791, -0.821810,
		-0.931164, 0.361510, 0.047366,
		0.272661, 0.776705, -0.567790,
		38.451012, 36.745914, 38.146442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799297, 36.240685, 38.058533>,  <38.260147, 36.202221, 38.543896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799297, 36.240685, 38.058533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093819, 36.439949, 37.875362>,  <38.270531, 36.559505, 37.765461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093819, 36.439949, 37.875362>,  <37.799297, 36.240685, 38.058533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093819, 36.439949, 37.875362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309093, -0.354407, -0.882529,
		-0.601932, 0.791350, -0.106973,
		0.736301, 0.498158, -0.457929,
		38.314709, 36.589397, 37.737984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530636, 36.385723, 37.422562>,  <37.799297, 36.240685, 38.058533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530636, 36.385723, 37.422562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919765, 36.458160, 37.364841>,  <38.153244, 36.501621, 37.330208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919765, 36.458160, 37.364841>,  <37.530636, 36.385723, 37.422562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919765, 36.458160, 37.364841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056587, -0.418357, -0.906518,
		-0.224531, 0.890047, -0.396740,
		0.972822, 0.181091, -0.144299,
		38.211613, 36.512489, 37.321552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514668, 36.693893, 36.776329>,  <37.530636, 36.385723, 37.422562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514668, 36.693893, 36.776329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889778, 36.566708, 36.832142>,  <38.114845, 36.490398, 36.865631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889778, 36.566708, 36.832142>,  <37.514668, 36.693893, 36.776329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889778, 36.566708, 36.832142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045350, -0.286256, -0.957079,
		0.344258, 0.903857, -0.254025,
		0.937779, -0.317963, 0.139536,
		38.171112, 36.471317, 36.874004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846584, 36.877659, 36.192211>,  <37.514668, 36.693893, 36.776329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846584, 36.877659, 36.192211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066525, 36.585636, 36.354538>,  <38.198486, 36.410423, 36.451935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066525, 36.585636, 36.354538>,  <37.846584, 36.877659, 36.192211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066525, 36.585636, 36.354538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271043, -0.303616, -0.913429,
		0.790065, 0.612242, 0.030933,
		0.549848, -0.730052, 0.405820,
		38.231480, 36.366619, 36.476284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512325, 36.913216, 35.767105>,  <37.846584, 36.877659, 36.192211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512325, 36.913216, 35.767105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448029, 36.569305, 35.960991>,  <38.409451, 36.362957, 36.077320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448029, 36.569305, 35.960991>,  <38.512325, 36.913216, 35.767105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448029, 36.569305, 35.960991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086714, -0.501499, -0.860802,
		0.983180, -0.096335, 0.155167,
		-0.160741, -0.859778, 0.484710,
		38.399807, 36.311371, 36.106403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992901, 36.399452, 35.511333>,  <38.512325, 36.913216, 35.767105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992901, 36.399452, 35.511333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701584, 36.179428, 35.674801>,  <38.526794, 36.047413, 35.772881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701584, 36.179428, 35.674801>,  <38.992901, 36.399452, 35.511333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701584, 36.179428, 35.674801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014290, -0.584054, -0.811589,
		0.685114, -0.596917, 0.417504,
		-0.728296, -0.550065, 0.408673,
		38.483093, 36.014408, 35.797401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188679, 35.719414, 35.274136>,  <38.992901, 36.399452, 35.511333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188679, 35.719414, 35.274136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797974, 35.717384, 35.359844>,  <38.563553, 35.716167, 35.411270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797974, 35.717384, 35.359844>,  <39.188679, 35.719414, 35.274136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797974, 35.717384, 35.359844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172885, -0.572260, -0.801641,
		0.126688, -0.820056, 0.558084,
		-0.976760, -0.005074, 0.214274,
		38.504944, 35.715862, 35.424126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009491, 34.933548, 35.260666>,  <39.188679, 35.719414, 35.274136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009491, 34.933548, 35.260666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706959, 35.181931, 35.178322>,  <38.525440, 35.330959, 35.128914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706959, 35.181931, 35.178322>,  <39.009491, 34.933548, 35.260666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706959, 35.181931, 35.178322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192845, -0.512324, -0.836860,
		-0.625123, -0.593241, 0.507233,
		-0.756328, 0.620958, -0.205862,
		38.480061, 35.368217, 35.116562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623730, 34.688843, 35.420769>,  <39.009491, 34.933548, 35.260666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623730, 34.688843, 35.420769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961765, 34.719608, 35.209141>,  <40.164585, 34.738068, 35.082165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961765, 34.719608, 35.209141>,  <39.623730, 34.688843, 35.420769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961765, 34.719608, 35.209141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447915, -0.642153, 0.622103,
		-0.291898, -0.762709, -0.577123,
		0.845084, 0.076912, -0.529071,
		40.215290, 34.742683, 35.050419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128452, 34.341370, 35.586460>,  <39.623730, 34.688843, 35.420769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128452, 34.341370, 35.586460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294453, 33.991158, 35.685432>,  <40.394051, 33.781029, 35.744816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294453, 33.991158, 35.685432>,  <40.128452, 34.341370, 35.586460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294453, 33.991158, 35.685432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460964, 0.032133, 0.886837,
		-0.784404, -0.482092, -0.390253,
		0.414997, -0.875531, 0.247433,
		40.418953, 33.728497, 35.759663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670998, 33.739674, 35.627514>,  <40.128452, 34.341370, 35.586460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670998, 33.739674, 35.627514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977787, 33.617260, 35.853115>,  <40.161861, 33.543812, 35.988476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977787, 33.617260, 35.853115>,  <39.670998, 33.739674, 35.627514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977787, 33.617260, 35.853115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607547, -0.063487, 0.791743,
		-0.206493, -0.949902, -0.234622,
		0.766973, -0.306033, 0.564000,
		40.207878, 33.525452, 36.022316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387283, 33.209568, 36.159401>,  <39.670998, 33.739674, 35.627514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387283, 33.209568, 36.159401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733463, 33.331833, 36.318184>,  <39.941170, 33.405193, 36.413452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733463, 33.331833, 36.318184>,  <39.387283, 33.209568, 36.159401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733463, 33.331833, 36.318184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421555, 0.016131, 0.906659,
		0.270730, -0.952003, 0.142815,
		0.865446, 0.305664, 0.396955,
		39.993095, 33.423531, 36.437271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420681, 32.874035, 36.884235>,  <39.387283, 33.209568, 36.159401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420681, 32.874035, 36.884235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677525, 33.179565, 36.910358>,  <39.831631, 33.362885, 36.926033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677525, 33.179565, 36.910358>,  <39.420681, 32.874035, 36.884235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677525, 33.179565, 36.910358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319738, 0.189402, 0.928383,
		0.696757, -0.617001, 0.365841,
		0.642104, 0.763830, 0.065312,
		39.870155, 33.408714, 36.929951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638462, 32.801601, 37.571022>,  <39.420681, 32.874035, 36.884235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638462, 32.801601, 37.571022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714611, 33.180222, 37.466869>,  <39.760300, 33.407394, 37.404377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714611, 33.180222, 37.466869>,  <39.638462, 32.801601, 37.571022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714611, 33.180222, 37.466869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279102, 0.306471, 0.910042,
		0.941202, -0.100570, 0.322527,
		0.190369, 0.946552, -0.260382,
		39.771721, 33.464188, 37.388756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129848, 33.056385, 38.024189>,  <39.638462, 32.801601, 37.571022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129848, 33.056385, 38.024189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912968, 33.357388, 37.874649>,  <39.782841, 33.537987, 37.784924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912968, 33.357388, 37.874649>,  <40.129848, 33.056385, 38.024189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912968, 33.357388, 37.874649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091133, 0.389636, 0.916449,
		0.835294, 0.530967, -0.142682,
		-0.542198, 0.752502, -0.373849,
		39.750309, 33.583138, 37.762493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382351, 33.656181, 38.321247>,  <40.129848, 33.056385, 38.024189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382351, 33.656181, 38.321247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013180, 33.719246, 38.180759>,  <39.791679, 33.757084, 38.096466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013180, 33.719246, 38.180759>,  <40.382351, 33.656181, 38.321247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013180, 33.719246, 38.180759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250595, 0.446532, 0.858959,
		0.292254, 0.880768, -0.372607,
		-0.922925, 0.157661, -0.351217,
		39.736301, 33.766544, 38.075394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232540, 34.072426, 38.821232>,  <40.382351, 33.656181, 38.321247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232540, 34.072426, 38.821232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881481, 34.032684, 38.633675>,  <39.670845, 34.008839, 38.521141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881481, 34.032684, 38.633675>,  <40.232540, 34.072426, 38.821232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881481, 34.032684, 38.633675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457873, 0.463060, 0.758899,
		0.141725, 0.880741, -0.451896,
		-0.877648, -0.099356, -0.468894,
		39.618187, 34.002876, 38.493008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903843, 34.759163, 38.921085>,  <40.232540, 34.072426, 38.821232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903843, 34.759163, 38.921085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623615, 34.481884, 38.853352>,  <39.455479, 34.315517, 38.812714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623615, 34.481884, 38.853352>,  <39.903843, 34.759163, 38.921085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623615, 34.481884, 38.853352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577801, 0.411812, 0.704668,
		-0.418745, 0.591509, -0.689036,
		-0.700570, -0.693202, -0.169330,
		39.413445, 34.273922, 38.802551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272503, 35.083019, 38.789646>,  <39.903843, 34.759163, 38.921085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272503, 35.083019, 38.789646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154972, 34.713272, 38.886978>,  <39.084454, 34.491425, 38.945377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154972, 34.713272, 38.886978>,  <39.272503, 35.083019, 38.789646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154972, 34.713272, 38.886978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652003, 0.379967, 0.656138,
		-0.698971, 0.034139, -0.714335,
		-0.293824, -0.924370, 0.243327,
		39.066826, 34.435963, 38.959976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598461, 35.175701, 38.961754>,  <39.272503, 35.083019, 38.789646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598461, 35.175701, 38.961754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645790, 34.810097, 39.116974>,  <38.674187, 34.590733, 39.210106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645790, 34.810097, 39.116974>,  <38.598461, 35.175701, 38.961754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645790, 34.810097, 39.116974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691170, 0.204776, 0.693074,
		-0.712941, -0.350210, -0.607509,
		0.118318, -0.914013, 0.388048,
		38.681286, 34.535892, 39.233387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980289, 34.947651, 39.104950>,  <38.598461, 35.175701, 38.961754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980289, 34.947651, 39.104950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198895, 34.716850, 39.347733>,  <38.330059, 34.578369, 39.493401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198895, 34.716850, 39.347733>,  <37.980289, 34.947651, 39.104950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198895, 34.716850, 39.347733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644233, 0.173392, 0.744915,
		-0.535060, -0.798124, -0.276965,
		0.546511, -0.577004, 0.606953,
		38.362846, 34.543751, 39.529819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472385, 34.600403, 39.523949>,  <37.980289, 34.947651, 39.104950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472385, 34.600403, 39.523949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819515, 34.590561, 39.722454>,  <38.027794, 34.584656, 39.841557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819515, 34.590561, 39.722454>,  <37.472385, 34.600403, 39.523949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819515, 34.590561, 39.722454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451912, 0.376107, 0.808900,
		-0.206550, -0.926250, 0.315275,
		0.867821, -0.024602, 0.496268,
		38.079861, 34.583179, 39.871334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344185, 34.271339, 40.169739>,  <37.472385, 34.600403, 39.523949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344185, 34.271339, 40.169739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680069, 34.478874, 40.233852>,  <37.881599, 34.603394, 40.272320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680069, 34.478874, 40.233852>,  <37.344185, 34.271339, 40.169739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680069, 34.478874, 40.233852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412683, 0.417874, 0.809367,
		0.352948, -0.745784, 0.565009,
		0.839715, 0.518833, 0.160284,
		37.931984, 34.634525, 40.281937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026566, 33.620808, 39.932556>,  <37.344185, 34.271339, 40.169739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026566, 33.620808, 39.932556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716393, 33.389454, 40.033886>,  <36.530289, 33.250641, 40.094685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716393, 33.389454, 40.033886>,  <37.026566, 33.620808, 39.932556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716393, 33.389454, 40.033886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278626, -0.046600, -0.959268,
		0.566630, -0.814433, -0.125018,
		-0.775434, -0.578384, 0.253327,
		36.483761, 33.215939, 40.109882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974083, 33.061127, 39.387665>,  <37.026566, 33.620808, 39.932556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974083, 33.061127, 39.387665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611870, 33.067177, 39.557266>,  <36.394543, 33.070805, 39.659027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611870, 33.067177, 39.557266>,  <36.974083, 33.061127, 39.387665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611870, 33.067177, 39.557266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410268, -0.285899, -0.865992,
		0.108127, -0.958140, 0.265095,
		-0.905533, 0.015123, 0.424008,
		36.340210, 33.071712, 39.684467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683937, 32.393898, 39.099335>,  <36.974083, 33.061127, 39.387665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683937, 32.393898, 39.099335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401913, 32.638714, 39.242611>,  <36.232700, 32.785603, 39.328579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401913, 32.638714, 39.242611>,  <36.683937, 32.393898, 39.099335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401913, 32.638714, 39.242611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525608, -0.111932, -0.843331,
		-0.476059, -0.782866, 0.400611,
		-0.705056, 0.612040, 0.358195,
		36.190395, 32.822327, 39.350071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051548, 32.151012, 38.783081>,  <36.683937, 32.393898, 39.099335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051548, 32.151012, 38.783081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937050, 32.504715, 38.930672>,  <35.868351, 32.716938, 39.019226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937050, 32.504715, 38.930672>,  <36.051548, 32.151012, 38.783081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937050, 32.504715, 38.930672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621311, 0.121855, -0.774031,
		-0.729407, -0.450816, 0.514520,
		-0.286248, 0.884260, 0.368979,
		35.851177, 32.769993, 39.041367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334095, 32.224640, 38.771294>,  <36.051548, 32.151012, 38.783081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334095, 32.224640, 38.771294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473835, 32.599373, 38.764473>,  <35.557678, 32.824215, 38.760380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473835, 32.599373, 38.764473>,  <35.334095, 32.224640, 38.771294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473835, 32.599373, 38.764473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488194, 0.166461, -0.856713,
		-0.799762, 0.307617, 0.515511,
		0.349352, 0.936836, -0.017048,
		35.578640, 32.880424, 38.759357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780029, 32.675011, 38.875229>,  <35.334095, 32.224640, 38.771294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780029, 32.675011, 38.875229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067997, 32.874718, 38.682377>,  <35.240776, 32.994541, 38.566666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067997, 32.874718, 38.682377>,  <34.780029, 32.675011, 38.875229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067997, 32.874718, 38.682377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553595, -0.005929, -0.832765,
		-0.418629, 0.866429, 0.272123,
		0.719918, 0.499265, -0.482133,
		35.283974, 33.024498, 38.537735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396294, 33.281410, 38.568413>,  <34.780029, 32.675011, 38.875229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396294, 33.281410, 38.568413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745632, 33.274574, 38.373692>,  <34.955235, 33.270473, 38.256859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745632, 33.274574, 38.373692>,  <34.396294, 33.281410, 38.568413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745632, 33.274574, 38.373692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486701, 0.009799, -0.873514,
		0.019699, 0.999806, 0.000240,
		0.873347, -0.017091, -0.486799,
		35.007637, 33.269447, 38.227654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373589, 33.872398, 38.117290>,  <34.396294, 33.281410, 38.568413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373589, 33.872398, 38.117290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647156, 33.616302, 37.977375>,  <34.811295, 33.462646, 37.893425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647156, 33.616302, 37.977375>,  <34.373589, 33.872398, 38.117290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647156, 33.616302, 37.977375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347211, 0.136031, -0.927868,
		0.641637, 0.756037, -0.129263,
		0.683920, -0.640237, -0.349787,
		34.852333, 33.424232, 37.872440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518406, 34.256390, 37.515972>,  <34.373589, 33.872398, 38.117290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518406, 34.256390, 37.515972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670395, 33.887424, 37.488354>,  <34.761589, 33.666046, 37.471783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670395, 33.887424, 37.488354>,  <34.518406, 34.256390, 37.515972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670395, 33.887424, 37.488354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372707, -0.084357, -0.924107,
		0.846587, 0.376871, -0.375845,
		0.379974, -0.922416, -0.069046,
		34.784386, 33.610699, 37.467640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081123, 34.219753, 36.946453>,  <34.518406, 34.256390, 37.515972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081123, 34.219753, 36.946453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901085, 33.866127, 36.996803>,  <34.793060, 33.653954, 37.027012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901085, 33.866127, 36.996803>,  <35.081123, 34.219753, 36.946453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901085, 33.866127, 36.996803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278757, 0.005188, -0.960347,
		0.848354, -0.467340, -0.248774,
		-0.450100, -0.884062, 0.125873,
		34.766056, 33.600910, 37.034565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830334, 34.136185, 36.373245>,  <35.081123, 34.219753, 36.946453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830334, 34.136185, 36.373245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703697, 33.776608, 36.494350>,  <34.627716, 33.560860, 36.567013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703697, 33.776608, 36.494350>,  <34.830334, 34.136185, 36.373245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703697, 33.776608, 36.494350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436264, -0.145426, -0.887990,
		0.842283, -0.413218, -0.346136,
		-0.316596, -0.898945, 0.302761,
		34.608719, 33.506924, 36.585178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061634, 33.651875, 35.907658>,  <34.830334, 34.136185, 36.373245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061634, 33.651875, 35.907658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728954, 33.503437, 36.072857>,  <34.529346, 33.414375, 36.171978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728954, 33.503437, 36.072857>,  <35.061634, 33.651875, 35.907658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728954, 33.503437, 36.072857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319851, -0.287791, -0.902702,
		0.453848, -0.882873, 0.120658,
		-0.831696, -0.371096, 0.413001,
		34.479446, 33.392109, 36.196758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.224865, 32.848358, 43.861980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838181, 32.944973, 43.828224>,  <36.606171, 33.002941, 43.807972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838181, 32.944973, 43.828224>,  <37.224865, 32.848358, 43.861980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838181, 32.944973, 43.828224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026814, -0.423656, -0.905426,
		-0.254450, -0.873025, 0.416031,
		-0.966714, 0.241541, -0.084390,
		36.548168, 33.017437, 43.802906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883072, 32.254208, 43.540478>,  <37.224865, 32.848358, 43.861980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883072, 32.254208, 43.540478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635811, 32.563293, 43.482788>,  <36.487453, 32.748745, 43.448174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635811, 32.563293, 43.482788>,  <36.883072, 32.254208, 43.540478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635811, 32.563293, 43.482788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173265, -0.045020, -0.983846,
		-0.766722, -0.633158, -0.106055,
		-0.618155, 0.772712, -0.144221,
		36.450363, 32.795109, 43.439522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517612, 32.076969, 42.967491>,  <36.883072, 32.254208, 43.540478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517612, 32.076969, 42.967491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456470, 32.472164, 42.958431>,  <36.419785, 32.709282, 42.952995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456470, 32.472164, 42.958431>,  <36.517612, 32.076969, 42.967491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456470, 32.472164, 42.958431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107507, -0.039408, -0.993423,
		-0.982383, -0.149417, 0.112239,
		-0.152857, 0.987989, -0.022651,
		36.410614, 32.768562, 42.951637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063377, 32.149426, 42.477112>,  <36.517612, 32.076969, 42.967491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063377, 32.149426, 42.477112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186264, 32.529087, 42.504623>,  <36.259995, 32.756882, 42.521130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186264, 32.529087, 42.504623>,  <36.063377, 32.149426, 42.477112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186264, 32.529087, 42.504623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003204, 0.073302, -0.997305,
		-0.951634, 0.306168, 0.025560,
		0.307216, 0.949151, 0.068775,
		36.278427, 32.813831, 42.525257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601166, 32.410004, 41.965626>,  <36.063377, 32.149426, 42.477112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601166, 32.410004, 41.965626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914116, 32.649330, 42.034790>,  <36.101887, 32.792927, 42.076290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914116, 32.649330, 42.034790>,  <35.601166, 32.410004, 41.965626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914116, 32.649330, 42.034790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119183, 0.128666, -0.984500,
		-0.611292, 0.790861, 0.029357,
		0.782380, 0.598318, 0.172909,
		36.148830, 32.828827, 42.086662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460876, 33.064064, 41.572330>,  <35.601166, 32.410004, 41.965626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460876, 33.064064, 41.572330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850033, 33.031136, 41.658787>,  <36.083527, 33.011379, 41.710659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850033, 33.031136, 41.658787>,  <35.460876, 33.064064, 41.572330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850033, 33.031136, 41.658787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226422, 0.148400, -0.962658,
		0.047175, 0.985495, 0.163016,
		0.972886, -0.082324, 0.216137,
		36.141899, 33.006439, 41.723629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774689, 33.617470, 41.284977>,  <35.460876, 33.064064, 41.572330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774689, 33.617470, 41.284977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079144, 33.359108, 41.308552>,  <36.261818, 33.204090, 41.322697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079144, 33.359108, 41.308552>,  <35.774689, 33.617470, 41.284977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079144, 33.359108, 41.308552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221167, 0.173046, -0.959760,
		0.609716, 0.743546, 0.274565,
		0.761138, -0.645906, 0.058939,
		36.307484, 33.165337, 41.326233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131874, 33.916985, 40.896503>,  <35.774689, 33.617470, 41.284977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131874, 33.916985, 40.896503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.261555, 33.538639, 40.902546>,  <36.339363, 33.311630, 40.906170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.261555, 33.538639, 40.902546>,  <36.131874, 33.916985, 40.896503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261555, 33.538639, 40.902546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231346, 0.063795, -0.970778,
		0.917262, 0.318226, 0.239505,
		0.324206, -0.945866, 0.015104,
		36.358818, 33.254879, 40.907078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760513, 33.923115, 40.555550>,  <36.131874, 33.916985, 40.896503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760513, 33.923115, 40.555550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622757, 33.547630, 40.549797>,  <36.540104, 33.322338, 40.546345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622757, 33.547630, 40.549797>,  <36.760513, 33.923115, 40.555550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622757, 33.547630, 40.549797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061573, 0.037865, -0.997384,
		0.936805, -0.342606, -0.070840,
		-0.344392, -0.938716, -0.014377,
		36.519440, 33.266014, 40.545483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521027, 33.931862, 40.849583>,  <36.760513, 33.923115, 40.555550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521027, 33.931862, 40.849583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723396, 34.272964, 40.797661>,  <37.844818, 34.477627, 40.766506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723396, 34.272964, 40.797661>,  <37.521027, 33.931862, 40.849583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723396, 34.272964, 40.797661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353567, 0.342278, 0.870538,
		0.786788, -0.394528, 0.474672,
		0.505921, 0.852757, -0.129808,
		37.875172, 34.528790, 40.758717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906200, 34.078026, 41.495773>,  <37.521027, 33.931862, 40.849583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906200, 34.078026, 41.495773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874199, 34.426521, 41.302055>,  <37.855000, 34.635620, 41.185825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874199, 34.426521, 41.302055>,  <37.906200, 34.078026, 41.495773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874199, 34.426521, 41.302055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302997, 0.441605, 0.844499,
		0.949628, 0.214302, 0.228654,
		-0.080003, 0.871240, -0.484293,
		37.850197, 34.687893, 41.156769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088100, 34.620541, 42.046364>,  <37.906200, 34.078026, 41.495773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088100, 34.620541, 42.046364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.910786, 34.833508, 41.757915>,  <37.804398, 34.961288, 41.584846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.910786, 34.833508, 41.757915>,  <38.088100, 34.620541, 42.046364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910786, 34.833508, 41.757915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281029, 0.681378, 0.675830,
		0.851185, 0.502246, -0.152422,
		-0.443290, 0.532422, -0.721125,
		37.777798, 34.993233, 41.541576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282063, 35.315510, 42.148602>,  <38.088100, 34.620541, 42.046364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282063, 35.315510, 42.148602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935116, 35.326035, 41.949814>,  <37.726948, 35.332352, 41.830544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935116, 35.326035, 41.949814>,  <38.282063, 35.315510, 42.148602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935116, 35.326035, 41.949814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379298, 0.611525, 0.694385,
		0.322180, 0.790787, -0.520437,
		-0.867371, 0.026316, -0.496965,
		37.674904, 35.333931, 41.800724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109348, 36.090046, 42.077469>,  <38.282063, 35.315510, 42.148602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109348, 36.090046, 42.077469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782154, 35.862041, 42.046513>,  <37.585838, 35.725239, 42.027939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782154, 35.862041, 42.046513>,  <38.109348, 36.090046, 42.077469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782154, 35.862041, 42.046513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510866, 0.658009, 0.553209,
		-0.264411, 0.492052, -0.829440,
		-0.817987, -0.570007, -0.077388,
		37.536758, 35.691040, 42.023296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694050, 36.529114, 41.959106>,  <38.109348, 36.090046, 42.077469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694050, 36.529114, 41.959106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485981, 36.223495, 42.111771>,  <37.361141, 36.040127, 42.203369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485981, 36.223495, 42.111771>,  <37.694050, 36.529114, 41.959106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485981, 36.223495, 42.111771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213050, 0.548830, 0.808329,
		-0.827063, 0.339156, -0.448263,
		-0.520170, -0.764041, 0.381660,
		37.329929, 35.994282, 42.226269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994019, 36.829159, 42.159813>,  <37.694050, 36.529114, 41.959106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994019, 36.829159, 42.159813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076698, 36.486156, 42.348259>,  <37.126308, 36.280354, 42.461327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076698, 36.486156, 42.348259>,  <36.994019, 36.829159, 42.159813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076698, 36.486156, 42.348259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280010, 0.409529, 0.868263,
		-0.937480, -0.311389, -0.155461,
		0.206702, -0.857509, 0.471118,
		37.138710, 36.228905, 42.489594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416805, 36.630524, 42.569008>,  <36.994019, 36.829159, 42.159813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416805, 36.630524, 42.569008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.712509, 36.434471, 42.753731>,  <36.889931, 36.316841, 42.864567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.712509, 36.434471, 42.753731>,  <36.416805, 36.630524, 42.569008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712509, 36.434471, 42.753731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280831, 0.398916, 0.872926,
		-0.612069, -0.775010, 0.157259,
		0.739260, -0.490128, 0.461811,
		36.934288, 36.287434, 42.892273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076653, 36.332355, 43.218239>,  <36.416805, 36.630524, 42.569008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076653, 36.332355, 43.218239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473022, 36.332249, 43.272003>,  <36.710846, 36.332184, 43.304260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473022, 36.332249, 43.272003>,  <36.076653, 36.332355, 43.218239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473022, 36.332249, 43.272003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123908, 0.385712, 0.914261,
		-0.052091, -0.922619, 0.382178,
		0.990925, -0.000270, 0.134412,
		36.770302, 36.332169, 43.312328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161030, 36.145905, 43.900692>,  <36.076653, 36.332355, 43.218239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161030, 36.145905, 43.900692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506607, 36.310425, 43.784462>,  <36.713955, 36.409138, 43.714722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506607, 36.310425, 43.784462>,  <36.161030, 36.145905, 43.900692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506607, 36.310425, 43.784462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154497, 0.332710, 0.930287,
		0.479306, -0.848608, 0.223897,
		0.863942, 0.411301, -0.290578,
		36.765789, 36.433815, 43.697289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615616, 36.033154, 44.466259>,  <36.161030, 36.145905, 43.900692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615616, 36.033154, 44.466259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805870, 36.328804, 44.275486>,  <36.920021, 36.506195, 44.161022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805870, 36.328804, 44.275486>,  <36.615616, 36.033154, 44.466259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805870, 36.328804, 44.275486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199511, 0.437417, 0.876848,
		0.856720, -0.512212, 0.060587,
		0.475633, 0.739125, -0.476935,
		36.948559, 36.550541, 44.132404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272041, 36.056629, 44.834560>,  <36.615616, 36.033154, 44.466259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272041, 36.056629, 44.834560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264469, 36.413605, 44.654255>,  <37.259926, 36.627792, 44.546070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264469, 36.413605, 44.654255>,  <37.272041, 36.056629, 44.834560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264469, 36.413605, 44.654255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462874, 0.407446, 0.787233,
		0.886222, -0.193741, -0.420803,
		-0.018935, 0.892442, -0.450765,
		37.258789, 36.681335, 44.519024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912804, 36.325127, 44.723095>,  <37.272041, 36.056629, 44.834560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912804, 36.325127, 44.723095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671124, 36.643795, 44.729595>,  <37.526115, 36.834995, 44.733498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671124, 36.643795, 44.729595>,  <37.912804, 36.325127, 44.723095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671124, 36.643795, 44.729595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409312, 0.292794, 0.864139,
		0.683674, 0.528763, -0.502992,
		-0.604197, 0.796669, 0.016253,
		37.489864, 36.882797, 44.734470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330517, 36.848377, 44.963135>,  <37.912804, 36.325127, 44.723095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330517, 36.848377, 44.963135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959835, 36.974735, 45.044540>,  <37.737427, 37.050552, 45.093384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959835, 36.974735, 45.044540>,  <38.330517, 36.848377, 44.963135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959835, 36.974735, 45.044540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309574, 0.334784, 0.889991,
		0.213012, 0.887766, -0.408041,
		-0.926709, 0.315897, 0.203517,
		37.681824, 37.069504, 45.105595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.755184, 39.683773, 44.796993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086205, 39.460430, 44.820328>,  <33.284817, 39.326424, 44.834328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086205, 39.460430, 44.820328>,  <32.755184, 39.683773, 44.796993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086205, 39.460430, 44.820328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020183, -0.074252, -0.997035,
		0.561030, 0.826273, -0.050177,
		0.827549, -0.558354, 0.058334,
		33.334469, 39.292923, 44.837830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151180, 39.921589, 44.272587>,  <32.755184, 39.683773, 44.796993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151180, 39.921589, 44.272587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318008, 39.566853, 44.352161>,  <33.418106, 39.354012, 44.399906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318008, 39.566853, 44.352161>,  <33.151180, 39.921589, 44.272587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318008, 39.566853, 44.352161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037999, -0.201674, -0.978715,
		0.908081, 0.415749, -0.050413,
		0.417067, -0.886837, 0.198935,
		33.443127, 39.300800, 44.411842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855305, 39.819756, 43.870499>,  <33.151180, 39.921589, 44.272587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855305, 39.819756, 43.870499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682774, 39.466377, 43.943691>,  <33.579254, 39.254353, 43.987606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682774, 39.466377, 43.943691>,  <33.855305, 39.819756, 43.870499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682774, 39.466377, 43.943691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227665, -0.089671, -0.969602,
		0.872996, -0.459877, -0.162451,
		-0.431331, -0.883443, 0.182980,
		33.553375, 39.201344, 43.998585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188801, 39.375271, 43.411968>,  <33.855305, 39.819756, 43.870499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188801, 39.375271, 43.411968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870049, 39.144180, 43.482635>,  <33.678795, 39.005527, 43.525036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870049, 39.144180, 43.482635>,  <34.188801, 39.375271, 43.411968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870049, 39.144180, 43.482635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093178, -0.171394, -0.980786,
		0.596902, -0.798035, 0.082750,
		-0.796885, -0.577723, 0.176665,
		33.630981, 38.970863, 43.535637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216438, 38.650700, 43.112576>,  <34.188801, 39.375271, 43.411968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216438, 38.650700, 43.112576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824539, 38.695408, 43.179031>,  <33.589401, 38.722233, 43.218903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824539, 38.695408, 43.179031>,  <34.216438, 38.650700, 43.112576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824539, 38.695408, 43.179031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195408, -0.352665, -0.915119,
		-0.043690, -0.929051, 0.367363,
		-0.979748, 0.111767, 0.166136,
		33.530613, 38.728939, 43.228870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953495, 37.954330, 43.003307>,  <34.216438, 38.650700, 43.112576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953495, 37.954330, 43.003307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678646, 38.238781, 42.943760>,  <33.513737, 38.409451, 42.908031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678646, 38.238781, 42.943760>,  <33.953495, 37.954330, 43.003307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678646, 38.238781, 42.943760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222123, -0.400698, -0.888877,
		-0.691755, -0.577701, 0.433286,
		-0.687122, 0.711128, -0.148864,
		33.472511, 38.452118, 42.899101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409767, 37.554409, 42.822739>,  <33.953495, 37.954330, 43.003307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409767, 37.554409, 42.822739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310909, 37.911060, 42.670994>,  <33.251595, 38.125050, 42.579948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310909, 37.911060, 42.670994>,  <33.409767, 37.554409, 42.822739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310909, 37.911060, 42.670994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208306, -0.431245, -0.877859,
		-0.946322, -0.137938, 0.292314,
		-0.247149, 0.891629, -0.379363,
		33.236763, 38.178551, 42.557186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982353, 37.359081, 42.273357>,  <33.409767, 37.554409, 42.822739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982353, 37.359081, 42.273357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059250, 37.746746, 42.211681>,  <33.105389, 37.979343, 42.174675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059250, 37.746746, 42.211681>,  <32.982353, 37.359081, 42.273357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059250, 37.746746, 42.211681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072441, -0.142676, -0.987115,
		-0.978671, 0.200931, 0.042779,
		0.192239, 0.969160, -0.154188,
		33.116920, 38.037495, 42.165424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410332, 37.485897, 41.964310>,  <32.982353, 37.359081, 42.273357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410332, 37.485897, 41.964310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.714134, 37.727215, 41.867001>,  <32.896416, 37.872005, 41.808613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.714134, 37.727215, 41.867001>,  <32.410332, 37.485897, 41.964310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714134, 37.727215, 41.867001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264210, -0.055644, -0.962859,
		-0.594423, 0.795576, 0.117133,
		0.759509, 0.603293, -0.243275,
		32.941986, 37.908203, 41.794018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190071, 37.937256, 41.442829>,  <32.410332, 37.485897, 41.964310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190071, 37.937256, 41.442829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583012, 38.009682, 41.424080>,  <32.818775, 38.053139, 41.412830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583012, 38.009682, 41.424080>,  <32.190071, 37.937256, 41.442829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583012, 38.009682, 41.424080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042667, -0.027042, -0.998723,
		-0.182100, 0.983100, -0.018839,
		0.982354, 0.181064, -0.046870,
		32.877716, 38.063999, 41.410019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245972, 38.166351, 40.802467>,  <32.190071, 37.937256, 41.442829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245972, 38.166351, 40.802467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620541, 38.061485, 40.895756>,  <32.845280, 37.998566, 40.951729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620541, 38.061485, 40.895756>,  <32.245972, 38.166351, 40.802467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620541, 38.061485, 40.895756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192050, -0.173346, -0.965954,
		0.293664, 0.949327, -0.111977,
		0.936418, -0.262161, 0.233224,
		32.901466, 37.982838, 40.965721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622311, 38.587025, 40.379673>,  <32.245972, 38.166351, 40.802467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622311, 38.587025, 40.379673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878368, 38.296951, 40.481117>,  <33.032005, 38.122906, 40.541985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878368, 38.296951, 40.481117>,  <32.622311, 38.587025, 40.379673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878368, 38.296951, 40.481117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123968, -0.228276, -0.965672,
		0.758185, 0.649610, -0.056231,
		0.640147, -0.725187, 0.253606,
		33.070412, 38.079395, 40.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334900, 38.798820, 40.117672>,  <32.622311, 38.587025, 40.379673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334900, 38.798820, 40.117672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324924, 38.403881, 40.180317>,  <33.318939, 38.166920, 40.217903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324924, 38.403881, 40.180317>,  <33.334900, 38.798820, 40.117672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324924, 38.403881, 40.180317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222931, -0.158208, -0.961910,
		0.974515, 0.010929, 0.224055,
		-0.024935, -0.987345, 0.156613,
		33.317444, 38.107677, 40.227303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916908, 38.534729, 39.862377>,  <33.334900, 38.798820, 40.117672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916908, 38.534729, 39.862377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698490, 38.200802, 39.890381>,  <33.567436, 38.000446, 39.907181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698490, 38.200802, 39.890381>,  <33.916908, 38.534729, 39.862377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698490, 38.200802, 39.890381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241428, -0.236833, -0.941075,
		0.802211, -0.496973, 0.330872,
		-0.546050, -0.834823, 0.070006,
		33.534676, 37.950356, 39.911385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642586, 38.190521, 39.834999>,  <33.916908, 38.534729, 39.862377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642586, 38.190521, 39.834999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036198, 38.256947, 39.809341>,  <35.272366, 38.296803, 39.793949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036198, 38.256947, 39.809341>,  <34.642586, 38.190521, 39.834999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036198, 38.256947, 39.809341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011673, 0.299344, 0.954074,
		0.177632, -0.939584, 0.292624,
		0.984028, 0.166058, -0.064141,
		35.331406, 38.306767, 39.790100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977402, 37.839493, 40.348545>,  <34.642586, 38.190521, 39.834999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977402, 37.839493, 40.348545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229244, 38.136780, 40.258018>,  <35.380352, 38.315151, 40.203701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229244, 38.136780, 40.258018>,  <34.977402, 37.839493, 40.348545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229244, 38.136780, 40.258018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018493, 0.276886, 0.960725,
		0.776691, -0.609068, 0.160586,
		0.629610, 0.743217, -0.226318,
		35.418129, 38.359745, 40.190125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545361, 37.687092, 40.820774>,  <34.977402, 37.839493, 40.348545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545361, 37.687092, 40.820774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549622, 38.064732, 40.688976>,  <35.552177, 38.291317, 40.609898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549622, 38.064732, 40.688976>,  <35.545361, 37.687092, 40.820774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549622, 38.064732, 40.688976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101966, 0.326768, 0.939588,
		0.994731, -0.043609, -0.092784,
		0.010656, 0.944098, -0.329493,
		35.552818, 38.347961, 40.590130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174313, 37.963787, 41.139091>,  <35.545361, 37.687092, 40.820774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174313, 37.963787, 41.139091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937584, 38.277260, 41.063637>,  <35.795547, 38.465343, 41.018364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937584, 38.277260, 41.063637>,  <36.174313, 37.963787, 41.139091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937584, 38.277260, 41.063637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011038, 0.226123, 0.974036,
		0.805990, 0.578542, -0.125175,
		-0.591826, 0.783682, -0.188639,
		35.760036, 38.512363, 41.007046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621361, 38.466312, 41.448044>,  <36.174313, 37.963787, 41.139091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621361, 38.466312, 41.448044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260799, 38.633060, 41.401257>,  <36.044460, 38.733109, 41.373184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260799, 38.633060, 41.401257>,  <36.621361, 38.466312, 41.448044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260799, 38.633060, 41.401257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092093, 0.448565, 0.888993,
		0.423065, 0.790573, -0.442731,
		-0.901407, 0.416874, -0.116966,
		35.990376, 38.758121, 41.366165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764843, 39.175091, 41.403461>,  <36.621361, 38.466312, 41.448044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764843, 39.175091, 41.403461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380909, 39.141182, 41.510441>,  <36.150547, 39.120838, 41.574627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380909, 39.141182, 41.510441>,  <36.764843, 39.175091, 41.403461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380909, 39.141182, 41.510441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167985, 0.589868, 0.789834,
		-0.224712, 0.803038, -0.551937,
		-0.959836, -0.084768, 0.267449,
		36.092957, 39.115753, 41.590675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527630, 39.786705, 41.667774>,  <36.764843, 39.175091, 41.403461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527630, 39.786705, 41.667774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229992, 39.567993, 41.821316>,  <36.051407, 39.436764, 41.913441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229992, 39.567993, 41.821316>,  <36.527630, 39.786705, 41.667774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229992, 39.567993, 41.821316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039658, 0.537411, 0.842388,
		-0.666892, 0.642042, -0.378202,
		-0.744098, -0.546783, 0.383857,
		36.006763, 39.403957, 41.936474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165913, 40.252136, 42.063160>,  <36.527630, 39.786705, 41.667774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165913, 40.252136, 42.063160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053612, 39.898239, 42.211971>,  <35.986233, 39.685902, 42.301258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053612, 39.898239, 42.211971>,  <36.165913, 40.252136, 42.063160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053612, 39.898239, 42.211971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195863, 0.326648, 0.924629,
		-0.939584, 0.332456, 0.081582,
		-0.280750, -0.884745, 0.372029,
		35.969387, 39.632816, 42.323582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609577, 40.372658, 42.448147>,  <36.165913, 40.252136, 42.063160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609577, 40.372658, 42.448147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760162, 40.030201, 42.589741>,  <35.850513, 39.824726, 42.674698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760162, 40.030201, 42.589741>,  <35.609577, 40.372658, 42.448147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760162, 40.030201, 42.589741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075489, 0.409169, 0.909330,
		-0.923352, -0.315604, 0.218665,
		0.376460, -0.856139, 0.353983,
		35.873100, 39.773357, 42.695934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315762, 40.362637, 43.235786>,  <35.609577, 40.372658, 42.448147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315762, 40.362637, 43.235786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629658, 40.125629, 43.163002>,  <35.817997, 39.983425, 43.119331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629658, 40.125629, 43.163002>,  <35.315762, 40.362637, 43.235786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629658, 40.125629, 43.163002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403888, 0.266132, 0.875242,
		-0.470167, -0.760329, 0.448153,
		0.784740, -0.592514, -0.181961,
		35.865078, 39.947876, 43.108414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393894, 39.947815, 43.727226>,  <35.315762, 40.362637, 43.235786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393894, 39.947815, 43.727226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766941, 39.980980, 43.586739>,  <35.990768, 40.000877, 43.502445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766941, 39.980980, 43.586739>,  <35.393894, 39.947815, 43.727226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766941, 39.980980, 43.586739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319365, 0.263565, 0.910241,
		0.168036, -0.961072, 0.219327,
		0.932615, 0.082908, -0.351221,
		36.046726, 40.005852, 43.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830563, 39.493114, 44.112915>,  <35.393894, 39.947815, 43.727226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830563, 39.493114, 44.112915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045128, 39.792900, 43.957706>,  <36.173866, 39.972771, 43.864582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045128, 39.792900, 43.957706>,  <35.830563, 39.493114, 44.112915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045128, 39.792900, 43.957706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427075, 0.155500, 0.890745,
		0.727920, -0.643524, -0.236665,
		0.536414, 0.749464, -0.388025,
		36.206051, 40.017738, 43.841301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475437, 39.269302, 44.328098>,  <35.830563, 39.493114, 44.112915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475437, 39.269302, 44.328098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446873, 39.655464, 44.227776>,  <36.429733, 39.887161, 44.167583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446873, 39.655464, 44.227776>,  <36.475437, 39.269302, 44.328098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446873, 39.655464, 44.227776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413748, 0.257463, 0.873227,
		0.907587, -0.041416, -0.417817,
		-0.071407, 0.965400, -0.250806,
		36.425449, 39.945084, 44.152534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012444, 39.502701, 44.659401>,  <36.475437, 39.269302, 44.328098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012444, 39.502701, 44.659401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811275, 39.840897, 44.587605>,  <36.690575, 40.043816, 44.544529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811275, 39.840897, 44.587605>,  <37.012444, 39.502701, 44.659401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811275, 39.840897, 44.587605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216768, 0.324401, 0.920748,
		0.836711, 0.424154, -0.346423,
		-0.502918, 0.845493, -0.179487,
		36.660400, 40.094543, 44.533760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605347, 39.716434, 44.331867>,  <37.012444, 39.502701, 44.659401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605347, 39.716434, 44.331867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997219, 39.704063, 44.411137>,  <38.232342, 39.696640, 44.458698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997219, 39.704063, 44.411137>,  <37.605347, 39.716434, 44.331867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997219, 39.704063, 44.411137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198280, 0.000293, -0.980145,
		0.030257, 0.999521, 0.006420,
		0.979678, -0.030930, 0.198176,
		38.291122, 39.694786, 44.470589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926937, 40.371861, 44.013691>,  <37.605347, 39.716434, 44.331867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926937, 40.371861, 44.013691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.190529, 40.076450, 44.070713>,  <38.348682, 39.899204, 44.104927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.190529, 40.076450, 44.070713>,  <37.926937, 40.371861, 44.013691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190529, 40.076450, 44.070713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292538, 0.077045, -0.953145,
		0.692942, 0.669806, 0.266819,
		0.658979, -0.738528, 0.142556,
		38.388222, 39.854893, 44.113480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406513, 40.564629, 43.497620>,  <37.926937, 40.371861, 44.013691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406513, 40.564629, 43.497620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503326, 40.198357, 43.625969>,  <38.561413, 39.978596, 43.702976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503326, 40.198357, 43.625969>,  <38.406513, 40.564629, 43.497620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503326, 40.198357, 43.625969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225914, -0.268430, -0.936434,
		0.943601, 0.299138, 0.141894,
		0.242035, -0.915676, 0.320870,
		38.575935, 39.923653, 43.722229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086052, 40.478546, 43.097614>,  <38.406513, 40.564629, 43.497620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086052, 40.478546, 43.097614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956818, 40.110958, 43.188038>,  <38.879276, 39.890404, 43.242290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956818, 40.110958, 43.188038>,  <39.086052, 40.478546, 43.097614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956818, 40.110958, 43.188038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293118, -0.324294, -0.899397,
		0.899832, -0.224321, 0.374143,
		-0.323085, -0.918974, 0.226057,
		38.859894, 39.835266, 43.255856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636429, 39.993320, 42.930004>,  <39.086052, 40.478546, 43.097614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636429, 39.993320, 42.930004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294044, 39.786953, 42.943607>,  <39.088612, 39.663132, 42.951771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294044, 39.786953, 42.943607>,  <39.636429, 39.993320, 42.930004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294044, 39.786953, 42.943607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207698, -0.403337, -0.891168,
		0.473484, -0.755745, 0.452397,
		-0.855964, -0.515916, 0.034007,
		39.037254, 39.632179, 42.953808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861843, 39.433582, 42.707760>,  <39.636429, 39.993320, 42.930004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861843, 39.433582, 42.707760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468815, 39.406021, 42.638699>,  <39.232998, 39.389484, 42.597263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468815, 39.406021, 42.638699>,  <39.861843, 39.433582, 42.707760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468815, 39.406021, 42.638699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185046, -0.273994, -0.943761,
		0.017727, -0.959260, 0.281969,
		-0.982570, -0.068907, -0.172650,
		39.174046, 39.385349, 42.586903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717915, 38.736507, 42.335155>,  <39.861843, 39.433582, 42.707760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717915, 38.736507, 42.335155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398262, 38.966152, 42.263832>,  <39.206470, 39.103939, 42.221039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398262, 38.966152, 42.263832>,  <39.717915, 38.736507, 42.335155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398262, 38.966152, 42.263832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068719, -0.381897, -0.921646,
		-0.597219, -0.724261, 0.344637,
		-0.799129, 0.574108, -0.178306,
		39.158524, 39.138386, 42.210339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184052, 38.289207, 42.011997>,  <39.717915, 38.736507, 42.335155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184052, 38.289207, 42.011997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130657, 38.670887, 41.904896>,  <39.098621, 38.899895, 41.840633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130657, 38.670887, 41.904896>,  <39.184052, 38.289207, 42.011997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130657, 38.670887, 41.904896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101340, -0.281900, -0.954077,
		-0.985856, -0.100220, 0.134328,
		-0.133484, 0.954195, -0.267756,
		39.090611, 38.957146, 41.824570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529915, 38.270309, 41.567719>,  <39.184052, 38.289207, 42.011997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529915, 38.270309, 41.567719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717339, 38.620899, 41.523464>,  <38.829792, 38.831253, 41.496910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717339, 38.620899, 41.523464>,  <38.529915, 38.270309, 41.567719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717339, 38.620899, 41.523464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072584, -0.086621, -0.993594,
		-0.880443, 0.473591, 0.023031,
		0.468562, 0.876475, -0.110640,
		38.857906, 38.883842, 41.490273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115982, 38.590660, 41.140133>,  <38.529915, 38.270309, 41.567719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115982, 38.590660, 41.140133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.467278, 38.775139, 41.089550>,  <38.678055, 38.885826, 41.059200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.467278, 38.775139, 41.089550>,  <38.115982, 38.590660, 41.140133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467278, 38.775139, 41.089550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072772, -0.132475, -0.988511,
		-0.472649, 0.877354, -0.082783,
		0.878241, 0.461195, -0.126461,
		38.730751, 38.913498, 41.051613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048271, 38.967842, 40.545990>,  <38.115982, 38.590660, 41.140133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048271, 38.967842, 40.545990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445969, 38.941860, 40.580082>,  <38.684586, 38.926270, 40.600536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445969, 38.941860, 40.580082>,  <38.048271, 38.967842, 40.545990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445969, 38.941860, 40.580082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069756, -0.211419, -0.974903,
		0.081342, 0.975235, -0.205670,
		0.994242, -0.064953, 0.085226,
		38.744240, 38.922375, 40.605648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334259, 39.302345, 39.926472>,  <38.048271, 38.967842, 40.545990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334259, 39.302345, 39.926472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630379, 39.073395, 40.067520>,  <38.808052, 38.936024, 40.152149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630379, 39.073395, 40.067520>,  <38.334259, 39.302345, 39.926472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630379, 39.073395, 40.067520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199364, -0.314011, -0.928252,
		0.642038, 0.757483, -0.118350,
		0.740298, -0.572378, 0.352621,
		38.852467, 38.901680, 40.173306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855114, 39.360065, 39.416523>,  <38.334259, 39.302345, 39.926472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855114, 39.360065, 39.416523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.933281, 39.012306, 39.598053>,  <38.980183, 38.803650, 39.706970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.933281, 39.012306, 39.598053>,  <38.855114, 39.360065, 39.416523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933281, 39.012306, 39.598053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041911, -0.469732, -0.881814,
		0.979824, 0.153300, -0.128231,
		0.195416, -0.869397, 0.453830,
		38.991905, 38.751488, 39.734203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375233, 39.006069, 39.019600>,  <38.855114, 39.360065, 39.416523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375233, 39.006069, 39.019600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205231, 38.708069, 39.225258>,  <39.103230, 38.529270, 39.348652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205231, 38.708069, 39.225258>,  <39.375233, 39.006069, 39.019600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205231, 38.708069, 39.225258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129516, -0.512104, -0.849103,
		0.895878, -0.427463, 0.121157,
		-0.425005, -0.745000, 0.514145,
		39.077728, 38.484570, 39.379501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.606440, 29.159445, 37.084106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318460, 28.887949, 37.142059>,  <30.145674, 28.725052, 37.176830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318460, 28.887949, 37.142059>,  <30.606440, 29.159445, 37.084106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318460, 28.887949, 37.142059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681639, 0.652250, -0.331569,
		0.130552, -0.337467, -0.932240,
		-0.719947, -0.678739, 0.144878,
		30.102476, 28.684328, 37.185524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254704, 29.031052, 36.463276>,  <30.606440, 29.159445, 37.084106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254704, 29.031052, 36.463276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.003952, 28.948406, 36.763763>,  <29.853500, 28.898819, 36.944057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.003952, 28.948406, 36.763763>,  <30.254704, 29.031052, 36.463276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003952, 28.948406, 36.763763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696078, 0.581663, -0.420885,
		-0.349997, -0.786753, -0.508451,
		-0.626879, -0.206613, 0.751222,
		29.815887, 28.886423, 36.989128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661898, 28.947920, 36.141483>,  <30.254704, 29.031052, 36.463276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661898, 28.947920, 36.141483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511593, 28.997318, 36.508865>,  <29.421410, 29.026957, 36.729294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511593, 28.997318, 36.508865>,  <29.661898, 28.947920, 36.141483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511593, 28.997318, 36.508865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792828, 0.470305, -0.387605,
		-0.479819, -0.873820, -0.078813,
		-0.375763, 0.123495, 0.918450,
		29.398865, 29.034367, 36.784401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901659, 28.944607, 36.039139>,  <29.661898, 28.947920, 36.141483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901659, 28.944607, 36.039139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949135, 29.067556, 36.416801>,  <28.977621, 29.141327, 36.643398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949135, 29.067556, 36.416801>,  <28.901659, 28.944607, 36.039139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949135, 29.067556, 36.416801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851538, 0.520562, -0.062425,
		-0.510681, -0.796577, 0.323526,
		0.118689, 0.307374, 0.944158,
		28.984741, 29.159769, 36.700050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218998, 28.933851, 36.333874>,  <28.901659, 28.944607, 36.039139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218998, 28.933851, 36.333874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438593, 29.189610, 36.549202>,  <28.570349, 29.343065, 36.678398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438593, 29.189610, 36.549202>,  <28.218998, 28.933851, 36.333874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438593, 29.189610, 36.549202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688549, 0.711073, -0.142397,
		-0.473830, -0.292483, 0.830626,
		0.548987, 0.639398, 0.538316,
		28.603289, 29.381430, 36.710697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745073, 29.282402, 36.760078>,  <28.218998, 28.933851, 36.333874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745073, 29.282402, 36.760078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057487, 29.531961, 36.749249>,  <28.244936, 29.681698, 36.742748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057487, 29.531961, 36.749249>,  <27.745073, 29.282402, 36.760078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057487, 29.531961, 36.749249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620019, 0.769539, -0.152927,
		-0.074574, 0.136230, 0.987867,
		0.781035, 0.623900, -0.027078,
		28.291798, 29.719131, 36.741127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563152, 29.810116, 37.200836>,  <27.745073, 29.282402, 36.760078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563152, 29.810116, 37.200836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836092, 29.960793, 36.950237>,  <27.999855, 30.051199, 36.799877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836092, 29.960793, 36.950237>,  <27.563152, 29.810116, 37.200836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836092, 29.960793, 36.950237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548504, 0.830370, -0.098127,
		0.483265, 0.410595, 0.773218,
		0.682348, 0.376692, -0.626502,
		28.040796, 30.073801, 36.762287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705364, 30.499327, 37.359627>,  <27.563152, 29.810116, 37.200836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705364, 30.499327, 37.359627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.873949, 30.524038, 36.997730>,  <27.975100, 30.538866, 36.780594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.873949, 30.524038, 36.997730>,  <27.705364, 30.499327, 37.359627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873949, 30.524038, 36.997730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351952, 0.930617, -0.100405,
		0.835764, 0.360741, 0.413961,
		0.421460, 0.061780, -0.904740,
		28.000387, 30.542572, 36.726307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962179, 31.159485, 37.228218>,  <27.705364, 30.499327, 37.359627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962179, 31.159485, 37.228218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941614, 31.023758, 36.852512>,  <27.929276, 30.942322, 36.627087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941614, 31.023758, 36.852512>,  <27.962179, 31.159485, 37.228218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941614, 31.023758, 36.852512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381161, 0.875982, -0.295589,
		0.923078, 0.342814, -0.174372,
		-0.051414, -0.339315, -0.939266,
		27.926189, 30.921963, 36.570732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332558, 31.668177, 36.758724>,  <27.962179, 31.159485, 37.228218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332558, 31.668177, 36.758724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075039, 31.465370, 36.529476>,  <27.920528, 31.343687, 36.391930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075039, 31.465370, 36.529476>,  <28.332558, 31.668177, 36.758724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075039, 31.465370, 36.529476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272445, 0.851778, -0.447491,
		0.715053, -0.131950, -0.686504,
		-0.643796, -0.507014, -0.573117,
		27.881901, 31.313267, 36.357540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504896, 31.934822, 36.061199>,  <28.332558, 31.668177, 36.758724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504896, 31.934822, 36.061199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160547, 31.742735, 35.993923>,  <27.953938, 31.627481, 35.953556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160547, 31.742735, 35.993923>,  <28.504896, 31.934822, 36.061199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160547, 31.742735, 35.993923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298070, 0.743851, -0.598197,
		0.412374, -0.464839, -0.783500,
		-0.860873, -0.480219, -0.168190,
		27.902285, 31.598669, 35.943466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436424, 31.988169, 35.349430>,  <28.504896, 31.934822, 36.061199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436424, 31.988169, 35.349430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083279, 31.899296, 35.514931>,  <27.871391, 31.845972, 35.614231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083279, 31.899296, 35.514931>,  <28.436424, 31.988169, 35.349430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083279, 31.899296, 35.514931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456128, 0.615407, -0.642823,
		-0.111798, -0.756247, -0.644664,
		-0.882864, -0.222183, 0.413747,
		27.818420, 31.832642, 35.639053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946035, 31.950994, 34.799885>,  <28.436424, 31.988169, 35.349430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946035, 31.950994, 34.799885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700947, 32.039246, 35.103436>,  <27.553894, 32.092197, 35.285564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700947, 32.039246, 35.103436>,  <27.946035, 31.950994, 34.799885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700947, 32.039246, 35.103436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323693, 0.805940, -0.495665,
		-0.720968, -0.549347, -0.422402,
		-0.612722, 0.220630, 0.758877,
		27.517130, 32.105434, 35.331097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251457, 31.895245, 34.559155>,  <27.946035, 31.950994, 34.799885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251457, 31.895245, 34.559155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.236053, 32.133293, 34.880238>,  <27.226810, 32.276123, 35.072887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.236053, 32.133293, 34.880238>,  <27.251457, 31.895245, 34.559155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236053, 32.133293, 34.880238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371040, 0.737360, -0.564473,
		-0.927818, -0.319577, 0.192418,
		-0.038511, 0.595123, 0.802712,
		27.224501, 32.311829, 35.121052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578747, 32.110085, 34.697678>,  <27.251457, 31.895245, 34.559155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578747, 32.110085, 34.697678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705124, 32.403172, 34.938778>,  <26.780951, 32.579025, 35.083439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705124, 32.403172, 34.938778>,  <26.578747, 32.110085, 34.697678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705124, 32.403172, 34.938778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481053, 0.671288, -0.563880,
		-0.817784, -0.111802, 0.564562,
		0.315940, 0.732716, 0.602751,
		26.799906, 32.622986, 35.119602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976658, 32.606579, 34.853249>,  <26.578747, 32.110085, 34.697678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976658, 32.606579, 34.853249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325521, 32.801926, 34.864822>,  <26.534840, 32.919132, 34.871769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325521, 32.801926, 34.864822>,  <25.976658, 32.606579, 34.853249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325521, 32.801926, 34.864822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363391, 0.686299, -0.630032,
		-0.327547, 0.538972, 0.776029,
		0.872158, 0.488367, 0.028937,
		26.587170, 32.948437, 34.873505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807770, 33.301781, 34.949387>,  <25.976658, 32.606579, 34.853249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807770, 33.301781, 34.949387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.169792, 33.277241, 34.781048>,  <26.387005, 33.262516, 34.680046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.169792, 33.277241, 34.781048>,  <25.807770, 33.301781, 34.949387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169792, 33.277241, 34.781048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307814, 0.588327, -0.747745,
		0.293472, 0.806292, 0.513582,
		0.905055, -0.061354, -0.420845,
		26.441309, 33.258835, 34.654793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933151, 33.961472, 34.791748>,  <25.807770, 33.301781, 34.949387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933151, 33.961472, 34.791748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199121, 33.777058, 34.556690>,  <26.358704, 33.666409, 34.415657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199121, 33.777058, 34.556690>,  <25.933151, 33.961472, 34.791748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199121, 33.777058, 34.556690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173999, 0.669510, -0.722136,
		0.726362, 0.582415, 0.364954,
		0.664923, -0.461031, -0.587646,
		26.398598, 33.638748, 34.380398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417738, 34.443581, 34.497555>,  <25.933151, 33.961472, 34.791748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417738, 34.443581, 34.497555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471817, 34.131451, 34.253323>,  <26.504265, 33.944172, 34.106781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471817, 34.131451, 34.253323>,  <26.417738, 34.443581, 34.497555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471817, 34.131451, 34.253323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012467, 0.614853, -0.788543,
		0.990740, 0.114223, 0.073399,
		0.135199, -0.780326, -0.610584,
		26.512377, 33.897354, 34.070148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015646, 34.587612, 34.235489>,  <26.417738, 34.443581, 34.497555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015646, 34.587612, 34.235489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807064, 34.351593, 33.988934>,  <26.681915, 34.209980, 33.841000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807064, 34.351593, 33.988934>,  <27.015646, 34.587612, 34.235489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807064, 34.351593, 33.988934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146288, 0.649855, -0.745848,
		0.840646, -0.479094, -0.252552,
		-0.521453, -0.590049, -0.616384,
		26.650629, 34.174580, 33.804020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385563, 34.532349, 33.559780>,  <27.015646, 34.587612, 34.235489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385563, 34.532349, 33.559780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001032, 34.453865, 33.482471>,  <26.770313, 34.406776, 33.436085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001032, 34.453865, 33.482471>,  <27.385563, 34.532349, 33.559780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001032, 34.453865, 33.482471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027912, 0.628735, -0.777118,
		0.273993, -0.752459, -0.598943,
		-0.961326, -0.196207, -0.193272,
		26.712633, 34.395004, 33.424488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970816, 35.069355, 33.457355>,  <27.385563, 34.532349, 33.559780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970816, 35.069355, 33.457355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339209, 35.218781, 33.413097>,  <28.560244, 35.308437, 33.386543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339209, 35.218781, 33.413097>,  <27.970816, 35.069355, 33.457355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339209, 35.218781, 33.413097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281470, -0.834327, -0.473997,
		-0.269379, 0.405401, -0.873547,
		0.920983, 0.373563, -0.110642,
		28.615503, 35.330849, 33.379906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211386, 35.175571, 32.721188>,  <27.970816, 35.069355, 33.457355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211386, 35.175571, 32.721188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.529964, 35.110569, 32.954174>,  <28.721111, 35.071568, 33.093967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.529964, 35.110569, 32.954174>,  <28.211386, 35.175571, 32.721188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529964, 35.110569, 32.954174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071345, -0.931234, -0.357369,
		0.600486, 0.326181, -0.730084,
		0.796446, -0.162507, 0.582465,
		28.768898, 35.061817, 33.128914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655443, 34.828648, 32.264122>,  <28.211386, 35.175571, 32.721188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655443, 34.828648, 32.264122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769600, 34.722492, 32.632496>,  <28.838093, 34.658798, 32.853519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769600, 34.722492, 32.632496>,  <28.655443, 34.828648, 32.264122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769600, 34.722492, 32.632496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018735, -0.959168, -0.282216,
		0.958228, 0.097795, -0.268765,
		0.285390, -0.265392, 0.920934,
		28.855217, 34.642876, 32.908775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274984, 34.456589, 32.163517>,  <28.655443, 34.828648, 32.264122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274984, 34.456589, 32.163517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121803, 34.361458, 32.520569>,  <29.029896, 34.304379, 32.734798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121803, 34.361458, 32.520569>,  <29.274984, 34.456589, 32.163517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121803, 34.361458, 32.520569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162471, -0.968568, -0.188360,
		0.909369, 0.072893, 0.409554,
		-0.382951, -0.237829, 0.892628,
		29.006918, 34.290108, 32.788357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736662, 33.957535, 32.436867>,  <29.274984, 34.456589, 32.163517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736662, 33.957535, 32.436867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404604, 33.904133, 32.653397>,  <29.205370, 33.872089, 32.783314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404604, 33.904133, 32.653397>,  <29.736662, 33.957535, 32.436867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404604, 33.904133, 32.653397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082703, -0.989653, -0.117251,
		0.551382, -0.052566, 0.832596,
		-0.830144, -0.133509, 0.541329,
		29.155561, 33.864079, 32.815796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974981, 33.472584, 32.838982>,  <29.736662, 33.957535, 32.436867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974981, 33.472584, 32.838982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580458, 33.424473, 32.884113>,  <29.343744, 33.395607, 32.911194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580458, 33.424473, 32.884113>,  <29.974981, 33.472584, 32.838982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580458, 33.424473, 32.884113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101702, -0.982193, -0.157965,
		0.129820, -0.144327, 0.980977,
		-0.986308, -0.120274, 0.112830,
		29.284565, 33.388390, 32.917961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951305, 32.852509, 33.094219>,  <29.974981, 33.472584, 32.838982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951305, 32.852509, 33.094219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.567533, 32.914921, 33.000282>,  <29.337271, 32.952370, 32.943920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.567533, 32.914921, 33.000282>,  <29.951305, 32.852509, 33.094219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567533, 32.914921, 33.000282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145505, -0.987437, -0.061616,
		-0.241507, -0.024946, 0.970078,
		-0.959428, 0.156032, -0.234844,
		29.279705, 32.961731, 32.929829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487522, 32.482254, 33.633434>,  <29.951305, 32.852509, 33.094219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487522, 32.482254, 33.633434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299990, 32.536278, 33.284275>,  <29.187469, 32.568691, 33.074780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299990, 32.536278, 33.284275>,  <29.487522, 32.482254, 33.633434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299990, 32.536278, 33.284275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136442, -0.987453, -0.079499,
		-0.872685, 0.081828, 0.481379,
		-0.468834, 0.135058, -0.872900,
		29.159340, 32.576794, 33.022404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822838, 32.237705, 33.764351>,  <29.487522, 32.482254, 33.633434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822838, 32.237705, 33.764351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.864000, 32.210697, 33.367393>,  <28.888697, 32.194492, 33.129219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.864000, 32.210697, 33.367393>,  <28.822838, 32.237705, 33.764351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864000, 32.210697, 33.367393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291449, -0.955952, 0.034820,
		-0.951035, 0.285650, -0.118052,
		0.102905, -0.067521, -0.992397,
		28.894873, 32.190441, 33.069675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177570, 32.037529, 33.510849>,  <28.822838, 32.237705, 33.764351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177570, 32.037529, 33.510849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436028, 31.950092, 33.218353>,  <28.591103, 31.897631, 33.042854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436028, 31.950092, 33.218353>,  <28.177570, 32.037529, 33.510849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436028, 31.950092, 33.218353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142927, -0.975813, 0.165409,
		-0.749714, -0.002364, -0.661758,
		0.646144, -0.218592, -0.731243,
		28.629871, 31.884514, 32.998981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951565, 31.509758, 33.155895>,  <28.177570, 32.037529, 33.510849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951565, 31.509758, 33.155895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.325823, 31.472113, 33.019829>,  <28.550377, 31.449526, 32.938190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.325823, 31.472113, 33.019829>,  <27.951565, 31.509758, 33.155895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325823, 31.472113, 33.019829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068082, -0.993818, 0.087692,
		-0.346316, -0.058889, -0.936268,
		0.935644, -0.094112, -0.340166,
		28.606516, 31.443880, 32.917778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937181, 30.939077, 32.772709>,  <27.951565, 31.509758, 33.155895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937181, 30.939077, 32.772709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331043, 30.969418, 32.835575>,  <28.567360, 30.987621, 32.873295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331043, 30.969418, 32.835575>,  <27.937181, 30.939077, 32.772709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331043, 30.969418, 32.835575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054787, -0.989430, 0.134262,
		0.165691, -0.123591, -0.978403,
		0.984655, 0.075849, 0.157168,
		28.626440, 30.992172, 32.882725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215151, 30.312271, 32.442303>,  <27.937181, 30.939077, 32.772709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215151, 30.312271, 32.442303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490353, 30.441051, 32.702454>,  <28.655474, 30.518320, 32.858543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490353, 30.441051, 32.702454>,  <28.215151, 30.312271, 32.442303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490353, 30.441051, 32.702454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054948, -0.916743, 0.395680,
		0.723623, -0.236492, -0.648415,
		0.688005, 0.321952, 0.650381,
		28.696754, 30.537638, 32.897568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887848, 30.045595, 32.290825>,  <28.215151, 30.312271, 32.442303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887848, 30.045595, 32.290825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880091, 30.118578, 32.684032>,  <28.875437, 30.162367, 32.919956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880091, 30.118578, 32.684032>,  <28.887848, 30.045595, 32.290825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880091, 30.118578, 32.684032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264507, -0.947240, 0.181034,
		0.964189, 0.263527, -0.029891,
		-0.019393, 0.182457, 0.983023,
		28.874273, 30.173315, 32.978939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343918, 29.658640, 32.552094>,  <28.887848, 30.045595, 32.290825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343918, 29.658640, 32.552094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.148308, 29.739681, 32.891460>,  <29.030943, 29.788305, 33.095081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.148308, 29.739681, 32.891460>,  <29.343918, 29.658640, 32.552094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148308, 29.739681, 32.891460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038408, -0.966706, 0.252990,
		0.871425, 0.156304, 0.464961,
		-0.489024, 0.202604, 0.848415,
		29.001600, 29.800463, 33.145985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683527, 29.298780, 33.047005>,  <29.343918, 29.658640, 32.552094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683527, 29.298780, 33.047005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341045, 29.384373, 33.235100>,  <29.135555, 29.435728, 33.347958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341045, 29.384373, 33.235100>,  <29.683527, 29.298780, 33.047005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341045, 29.384373, 33.235100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130307, -0.970211, 0.204231,
		0.499931, 0.113589, 0.858584,
		-0.856206, 0.213981, 0.470237,
		29.084183, 29.448566, 33.376171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691940, 29.130119, 33.818089>,  <29.683527, 29.298780, 33.047005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691940, 29.130119, 33.818089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306196, 29.112280, 33.713764>,  <29.074749, 29.101576, 33.651169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306196, 29.112280, 33.713764>,  <29.691940, 29.130119, 33.818089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306196, 29.112280, 33.713764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008252, -0.990281, 0.138833,
		-0.264467, 0.131733, 0.955355,
		-0.964359, -0.044601, -0.260809,
		29.016888, 29.098900, 33.635521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333836, 28.704859, 34.261471>,  <29.691940, 29.130119, 33.818089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333836, 28.704859, 34.261471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096836, 28.699631, 33.939285>,  <28.954636, 28.696493, 33.745972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096836, 28.699631, 33.939285>,  <29.333836, 28.704859, 34.261471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096836, 28.699631, 33.939285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047985, -0.997520, 0.051483,
		-0.804141, 0.069154, 0.590403,
		-0.592499, -0.013069, -0.805465,
		28.919086, 28.695709, 33.697647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700808, 28.328951, 34.411068>,  <29.333836, 28.704859, 34.261471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700808, 28.328951, 34.411068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745378, 28.311705, 34.013931>,  <28.772121, 28.301357, 33.775650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745378, 28.311705, 34.013931>,  <28.700808, 28.328951, 34.411068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745378, 28.311705, 34.013931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027149, -0.998553, 0.046411,
		-0.993402, -0.032126, -0.110094,
		0.111426, -0.043115, -0.992837,
		28.778807, 28.298771, 33.716080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335413, 27.832771, 34.053333>,  <28.700808, 28.328951, 34.411068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335413, 27.832771, 34.053333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677715, 27.858807, 33.848026>,  <28.883097, 27.874428, 33.724842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677715, 27.858807, 33.848026>,  <28.335413, 27.832771, 34.053333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677715, 27.858807, 33.848026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040156, -0.997418, -0.059536,
		-0.515821, 0.030337, -0.856160,
		0.855755, 0.065090, -0.513270,
		28.934443, 27.878334, 33.694046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259155, 27.515722, 33.441357>,  <28.335413, 27.832771, 34.053333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259155, 27.515722, 33.441357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652374, 27.523687, 33.514263>,  <28.888306, 27.528467, 33.558006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652374, 27.523687, 33.514263>,  <28.259155, 27.515722, 33.441357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652374, 27.523687, 33.514263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036566, -0.995408, -0.088464,
		0.179670, 0.093629, -0.979261,
		0.983047, 0.019913, 0.182269,
		28.947289, 27.529661, 33.568943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.393509, 37.687622, 45.053532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038555, 37.591377, 45.210835>,  <37.825581, 37.533630, 45.305218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038555, 37.591377, 45.210835>,  <38.393509, 37.687622, 45.053532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038555, 37.591377, 45.210835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325811, 0.276214, 0.904186,
		-0.326180, 0.930491, -0.166715,
		-0.887386, -0.240610, 0.393259,
		37.772339, 37.519196, 45.328812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198162, 38.152119, 45.481129>,  <38.393509, 37.687622, 45.053532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198162, 38.152119, 45.481129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965115, 37.862232, 45.628284>,  <37.825287, 37.688301, 45.716579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965115, 37.862232, 45.628284>,  <38.198162, 38.152119, 45.481129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965115, 37.862232, 45.628284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234417, 0.283577, 0.929856,
		-0.778209, 0.627988, 0.004669,
		-0.582615, -0.724717, 0.367893,
		37.790329, 37.644817, 45.738651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829624, 38.468914, 46.027023>,  <38.198162, 38.152119, 45.481129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829624, 38.468914, 46.027023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861031, 38.076794, 46.099525>,  <37.879875, 37.841522, 46.143028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861031, 38.076794, 46.099525>,  <37.829624, 38.468914, 46.027023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861031, 38.076794, 46.099525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071112, 0.186861, 0.979809,
		-0.994374, -0.064038, 0.084381,
		0.078512, -0.980297, 0.181256,
		37.884583, 37.782703, 46.153904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571079, 38.466866, 46.791676>,  <37.829624, 38.468914, 46.027023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571079, 38.466866, 46.791676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746567, 38.114700, 46.719688>,  <37.851860, 37.903400, 46.676495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746567, 38.114700, 46.719688>,  <37.571079, 38.466866, 46.791676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746567, 38.114700, 46.719688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128716, -0.136640, 0.982223,
		-0.889357, -0.454086, 0.053377,
		0.438721, -0.880417, -0.179970,
		37.878181, 37.850574, 46.665699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259830, 37.963608, 47.215191>,  <37.571079, 38.466866, 46.791676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259830, 37.963608, 47.215191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608585, 37.789715, 47.125011>,  <37.817837, 37.685379, 47.070904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608585, 37.789715, 47.125011>,  <37.259830, 37.963608, 47.215191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608585, 37.789715, 47.125011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215121, -0.073576, 0.973812,
		-0.439932, -0.897551, 0.029369,
		0.871885, -0.434729, -0.225451,
		37.870152, 37.659298, 47.057377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239346, 37.283806, 47.530334>,  <37.259830, 37.963608, 47.215191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239346, 37.283806, 47.530334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623806, 37.382568, 47.480984>,  <37.854485, 37.441826, 47.451374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623806, 37.382568, 47.480984>,  <37.239346, 37.283806, 47.530334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623806, 37.382568, 47.480984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179683, -0.220404, 0.958716,
		0.209521, -0.943641, -0.256207,
		0.961153, 0.246907, -0.123377,
		37.912151, 37.456642, 47.443970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676491, 36.682869, 47.720795>,  <37.239346, 37.283806, 47.530334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676491, 36.682869, 47.720795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959957, 36.964928, 47.711327>,  <38.130039, 37.134163, 47.705647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959957, 36.964928, 47.711327>,  <37.676491, 36.682869, 47.720795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959957, 36.964928, 47.711327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391024, -0.364612, 0.845079,
		0.587273, -0.608136, -0.534118,
		0.708668, 0.705145, -0.023669,
		38.172558, 37.176472, 47.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316502, 36.354504, 47.896057>,  <37.676491, 36.682869, 47.720795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316502, 36.354504, 47.896057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.396935, 36.732372, 47.999710>,  <38.445194, 36.959095, 48.061901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.396935, 36.732372, 47.999710>,  <38.316502, 36.354504, 47.896057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396935, 36.732372, 47.999710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562927, -0.327936, 0.758664,
		0.801671, -0.006683, -0.597728,
		0.201087, 0.944676, 0.259135,
		38.457260, 37.015774, 48.077450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995136, 36.317722, 48.076015>,  <38.316502, 36.354504, 47.896057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995136, 36.317722, 48.076015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867729, 36.655415, 48.248447>,  <38.791286, 36.858028, 48.351906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867729, 36.655415, 48.248447>,  <38.995136, 36.317722, 48.076015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867729, 36.655415, 48.248447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612563, -0.163740, 0.773276,
		0.723406, 0.510362, -0.464989,
		-0.318514, 0.844227, 0.431080,
		38.772175, 36.908684, 48.377769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606739, 36.643112, 48.392239>,  <38.995136, 36.317722, 48.076015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606739, 36.643112, 48.392239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287174, 36.790081, 48.582703>,  <39.095436, 36.878262, 48.696983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287174, 36.790081, 48.582703>,  <39.606739, 36.643112, 48.392239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287174, 36.790081, 48.582703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487315, -0.068562, 0.870530,
		0.352501, 0.927523, -0.124277,
		-0.798916, 0.367425, 0.476164,
		39.047501, 36.900307, 48.725552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907558, 37.029629, 48.839718>,  <39.606739, 36.643112, 48.392239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907558, 37.029629, 48.839718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552097, 36.988510, 49.018478>,  <39.338821, 36.963837, 49.125736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552097, 36.988510, 49.018478>,  <39.907558, 37.029629, 48.839718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552097, 36.988510, 49.018478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451916, -0.030864, 0.891527,
		-0.077855, 0.994223, 0.073884,
		-0.888657, -0.102799, 0.446902,
		39.285500, 36.957672, 49.152550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060459, 37.361427, 49.424675>,  <39.907558, 37.029629, 48.839718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060459, 37.361427, 49.424675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741089, 37.133598, 49.502754>,  <39.549469, 36.996899, 49.549603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741089, 37.133598, 49.502754>,  <40.060459, 37.361427, 49.424675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741089, 37.133598, 49.502754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375450, -0.217531, 0.900953,
		-0.470699, 0.792630, 0.387530,
		-0.798423, -0.569576, 0.195202,
		39.501560, 36.962727, 49.561314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777538, 37.691593, 50.052525>,  <40.060459, 37.361427, 49.424675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777538, 37.691593, 50.052525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.722511, 37.303009, 49.975227>,  <39.689495, 37.069859, 49.928848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.722511, 37.303009, 49.975227>,  <39.777538, 37.691593, 50.052525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722511, 37.303009, 49.975227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188447, -0.217207, 0.957762,
		-0.972401, 0.095336, 0.212948,
		-0.137563, -0.971459, -0.193247,
		39.681244, 37.011570, 49.917252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079933, 38.178955, 49.442432>,  <39.777538, 37.691593, 50.052525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079933, 38.178955, 49.442432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178387, 38.383404, 49.113026>,  <40.237457, 38.506073, 48.915382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178387, 38.383404, 49.113026>,  <40.079933, 38.178955, 49.442432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178387, 38.383404, 49.113026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888698, -0.220093, -0.402214,
		-0.386829, 0.830853, 0.400059,
		0.246131, 0.511119, -0.823515,
		40.252228, 38.536739, 48.865971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541302, 38.559719, 49.771152>,  <40.079933, 38.178955, 49.442432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541302, 38.559719, 49.771152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429302, 38.920898, 49.901562>,  <39.362103, 39.137604, 49.979809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429302, 38.920898, 49.901562>,  <39.541302, 38.559719, 49.771152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429302, 38.920898, 49.901562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039738, 0.350216, -0.935826,
		-0.959178, -0.249072, -0.133940,
		-0.279996, 0.902946, 0.326022,
		39.345303, 39.191784, 49.999367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796032, 38.781574, 49.509502>,  <39.541302, 38.559719, 49.771152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796032, 38.781574, 49.509502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019783, 39.099892, 49.602299>,  <39.154034, 39.290882, 49.657974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019783, 39.099892, 49.602299>,  <38.796032, 38.781574, 49.509502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019783, 39.099892, 49.602299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222057, 0.413502, -0.883010,
		-0.798619, 0.442418, 0.408013,
		0.559373, 0.795791, 0.231988,
		39.187595, 39.338631, 49.671894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340183, 39.320347, 49.490036>,  <38.796032, 38.781574, 49.509502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340183, 39.320347, 49.490036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708015, 39.462841, 49.423737>,  <38.928715, 39.548336, 49.383957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708015, 39.462841, 49.423737>,  <38.340183, 39.320347, 49.490036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708015, 39.462841, 49.423737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270040, 0.266598, -0.925205,
		-0.285404, 0.895556, 0.341356,
		0.919577, 0.356237, -0.165748,
		38.983891, 39.569714, 49.374012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280762, 39.774845, 49.007484>,  <38.340183, 39.320347, 49.490036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280762, 39.774845, 49.007484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680511, 39.766739, 48.995827>,  <38.920361, 39.761875, 48.988831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680511, 39.766739, 48.995827>,  <38.280762, 39.774845, 49.007484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680511, 39.766739, 48.995827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024751, 0.190897, -0.981298,
		0.025450, 0.981401, 0.190275,
		0.999370, -0.020264, -0.029149,
		38.980324, 39.760658, 48.987083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448051, 40.434387, 48.696388>,  <38.280762, 39.774845, 49.007484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448051, 40.434387, 48.696388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746540, 40.170479, 48.660931>,  <38.925632, 40.012135, 48.639656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746540, 40.170479, 48.660931>,  <38.448051, 40.434387, 48.696388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746540, 40.170479, 48.660931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025710, 0.161622, -0.986518,
		0.665205, 0.733878, 0.137568,
		0.746218, -0.659774, -0.088643,
		38.970406, 39.972546, 48.634338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885170, 40.757305, 48.149414>,  <38.448051, 40.434387, 48.696388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885170, 40.757305, 48.149414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.990051, 40.371536, 48.162853>,  <39.052982, 40.140076, 48.170918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.990051, 40.371536, 48.162853>,  <38.885170, 40.757305, 48.149414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990051, 40.371536, 48.162853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073106, -0.014859, -0.997214,
		0.962239, 0.263932, 0.066609,
		0.262206, -0.964427, 0.033593,
		39.068714, 40.082207, 48.172932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488689, 40.758545, 47.778786>,  <38.885170, 40.757305, 48.149414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488689, 40.758545, 47.778786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346470, 40.384686, 47.780201>,  <39.261139, 40.160370, 47.781048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346470, 40.384686, 47.780201>,  <39.488689, 40.758545, 47.778786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346470, 40.384686, 47.780201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000543, -0.003574, -0.999994,
		0.934656, -0.355553, 0.000764,
		-0.355553, -0.934649, 0.003534,
		39.239803, 40.104290, 47.781261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598835, 40.572155, 47.164806>,  <39.488689, 40.758545, 47.778786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598835, 40.572155, 47.164806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355431, 40.260822, 47.226677>,  <39.209389, 40.074024, 47.263798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355431, 40.260822, 47.226677>,  <39.598835, 40.572155, 47.164806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355431, 40.260822, 47.226677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143064, -0.084120, -0.986132,
		0.780545, -0.622197, -0.060163,
		-0.608508, -0.778328, 0.154673,
		39.172878, 40.027325, 47.273079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835613, 39.930244, 46.758778>,  <39.598835, 40.572155, 47.164806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835613, 39.930244, 46.758778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.445656, 39.904224, 46.843960>,  <39.211681, 39.888611, 46.895069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.445656, 39.904224, 46.843960>,  <39.835613, 39.930244, 46.758778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445656, 39.904224, 46.843960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202002, -0.144024, -0.968737,
		0.093688, -0.987434, 0.127268,
		-0.974893, -0.065051, 0.212957,
		39.153187, 39.884708, 46.907848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620346, 39.395130, 46.473118>,  <39.835613, 39.930244, 46.758778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620346, 39.395130, 46.473118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.293369, 39.623764, 46.501652>,  <39.097183, 39.760944, 46.518772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.293369, 39.623764, 46.501652>,  <39.620346, 39.395130, 46.473118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293369, 39.623764, 46.501652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116538, -0.042832, -0.992262,
		-0.564105, -0.819426, 0.101623,
		-0.817438, 0.571583, 0.071332,
		39.048138, 39.795238, 46.523052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250298, 39.063160, 45.984501>,  <39.620346, 39.395130, 46.473118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250298, 39.063160, 45.984501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019623, 39.384083, 46.046131>,  <38.881218, 39.576637, 46.083111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019623, 39.384083, 46.046131>,  <39.250298, 39.063160, 45.984501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019623, 39.384083, 46.046131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290955, -0.025461, -0.956398,
		-0.763402, -0.596368, 0.248118,
		-0.576683, 0.802307, 0.154079,
		38.846619, 39.624775, 46.092354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610287, 38.819862, 45.794682>,  <39.250298, 39.063160, 45.984501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610287, 38.819862, 45.794682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602497, 39.219040, 45.770267>,  <38.597824, 39.458546, 45.755619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602497, 39.219040, 45.770267>,  <38.610287, 38.819862, 45.794682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602497, 39.219040, 45.770267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470933, -0.063002, -0.879916,
		-0.881954, 0.011610, 0.471192,
		-0.019470, 0.997946, -0.061032,
		38.596657, 39.518425, 45.751957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947739, 38.995174, 45.538284>,  <38.610287, 38.819862, 45.794682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947739, 38.995174, 45.538284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.185650, 39.304893, 45.451836>,  <38.328396, 39.490723, 45.399967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.185650, 39.304893, 45.451836>,  <37.947739, 38.995174, 45.538284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185650, 39.304893, 45.451836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341372, -0.000133, -0.939928,
		-0.727811, 0.632825, 0.264244,
		0.594775, 0.774295, -0.216126,
		38.364082, 39.537182, 45.386997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624859, 39.329704, 45.023109>,  <37.947739, 38.995174, 45.538284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624859, 39.329704, 45.023109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.989933, 39.488731, 44.985287>,  <38.208977, 39.584148, 44.962593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.989933, 39.488731, 44.985287>,  <37.624859, 39.329704, 45.023109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989933, 39.488731, 44.985287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070438, -0.074873, -0.994702,
		-0.402540, 0.914513, -0.040332,
		0.912688, 0.397567, -0.094555,
		38.263741, 39.608002, 44.956921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362537, 40.077084, 44.938625>,  <37.624859, 39.329704, 45.023109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362537, 40.077084, 44.938625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991795, 40.225971, 44.919109>,  <36.769348, 40.315304, 44.907398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991795, 40.225971, 44.919109>,  <37.362537, 40.077084, 44.938625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991795, 40.225971, 44.919109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032574, 0.209215, 0.977327,
		0.373989, 0.904257, -0.206038,
		-0.926861, 0.372221, -0.048788,
		36.713737, 40.337639, 44.904472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300159, 40.678745, 45.358932>,  <37.362537, 40.077084, 44.938625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300159, 40.678745, 45.358932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921799, 40.555157, 45.319317>,  <36.694782, 40.481003, 45.295547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921799, 40.555157, 45.319317>,  <37.300159, 40.678745, 45.358932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921799, 40.555157, 45.319317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162779, 0.187847, 0.968616,
		-0.280665, 0.932337, -0.227978,
		-0.945902, -0.308967, -0.099043,
		36.638027, 40.462467, 45.289604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008354, 41.136250, 45.760372>,  <37.300159, 40.678745, 45.358932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008354, 41.136250, 45.760372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694897, 40.890690, 45.722366>,  <36.506824, 40.743355, 45.699562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694897, 40.890690, 45.722366>,  <37.008354, 41.136250, 45.760372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694897, 40.890690, 45.722366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412242, 0.399491, 0.818818,
		-0.464718, 0.680829, -0.566135,
		-0.783641, -0.613904, -0.095016,
		36.459805, 40.706520, 45.693863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311405, 41.532188, 45.870586>,  <37.008354, 41.136250, 45.760372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311405, 41.532188, 45.870586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286560, 41.151234, 45.989986>,  <36.271652, 40.922661, 46.061626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286560, 41.151234, 45.989986>,  <36.311405, 41.532188, 45.870586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286560, 41.151234, 45.989986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255744, 0.304283, 0.917609,
		-0.964747, -0.019341, -0.262468,
		-0.062117, -0.952385, 0.298503,
		36.267925, 40.865517, 46.079536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781639, 41.560818, 46.348057>,  <36.311405, 41.532188, 45.870586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781639, 41.560818, 46.348057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970707, 41.214775, 46.415199>,  <36.084148, 41.007149, 46.455486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970707, 41.214775, 46.415199>,  <35.781639, 41.560818, 46.348057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970707, 41.214775, 46.415199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313430, 0.012986, 0.949522,
		-0.823616, -0.501423, -0.265012,
		0.472671, -0.865105, 0.167856,
		36.112507, 40.955242, 46.465557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330002, 41.180859, 46.774357>,  <35.781639, 41.560818, 46.348057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330002, 41.180859, 46.774357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689751, 41.010391, 46.813354>,  <35.905602, 40.908112, 46.836754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689751, 41.010391, 46.813354>,  <35.330002, 41.180859, 46.774357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689751, 41.010391, 46.813354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043789, 0.134074, 0.990003,
		-0.434978, -0.894654, 0.101921,
		0.899375, -0.426167, 0.097495,
		35.959564, 40.882542, 46.842602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229008, 40.623596, 47.224098>,  <35.330002, 41.180859, 46.774357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229008, 40.623596, 47.224098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621277, 40.684895, 47.272755>,  <35.856640, 40.721676, 47.301949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621277, 40.684895, 47.272755>,  <35.229008, 40.623596, 47.224098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621277, 40.684895, 47.272755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102864, -0.125023, 0.986807,
		0.166437, -0.980247, -0.106843,
		0.980672, 0.153250, 0.121641,
		35.915478, 40.730869, 47.309246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044903, 39.943165, 47.342148>,  <35.229008, 40.623596, 47.224098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044903, 39.943165, 47.342148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670895, 39.811337, 47.394485>,  <34.446487, 39.732239, 47.425888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670895, 39.811337, 47.394485>,  <35.044903, 39.943165, 47.342148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670895, 39.811337, 47.394485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082132, -0.157665, -0.984071,
		0.344947, -0.930874, 0.120352,
		-0.935022, -0.329567, 0.130841,
		34.390388, 39.712467, 47.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025181, 39.386013, 46.802254>,  <35.044903, 39.943165, 47.342148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025181, 39.386013, 46.802254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650135, 39.458782, 46.920773>,  <34.425110, 39.502445, 46.991882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650135, 39.458782, 46.920773>,  <35.025181, 39.386013, 46.802254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650135, 39.458782, 46.920773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333750, -0.232081, -0.913646,
		-0.097449, -0.955533, 0.278318,
		-0.937611, 0.181922, 0.296293,
		34.368851, 39.513359, 47.009659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659931, 38.838932, 46.645168>,  <35.025181, 39.386013, 46.802254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659931, 38.838932, 46.645168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384159, 39.126812, 46.677940>,  <34.218697, 39.299541, 46.697601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384159, 39.126812, 46.677940>,  <34.659931, 38.838932, 46.645168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384159, 39.126812, 46.677940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370759, -0.253458, -0.893474,
		-0.622268, -0.646368, 0.441578,
		-0.689435, 0.719700, 0.081928,
		34.177330, 39.342720, 46.702518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061016, 38.551113, 46.544811>,  <34.659931, 38.838932, 46.645168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061016, 38.551113, 46.544811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971645, 38.929790, 46.451984>,  <33.918022, 39.156998, 46.396286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971645, 38.929790, 46.451984>,  <34.061016, 38.551113, 46.544811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971645, 38.929790, 46.451984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639090, -0.322048, -0.698462,
		-0.735966, -0.007741, 0.676975,
		-0.223425, 0.946692, -0.232069,
		33.904617, 39.213799, 46.382362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325417, 38.505100, 46.263229>,  <34.061016, 38.551113, 46.544811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325417, 38.505100, 46.263229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501797, 38.840969, 46.136410>,  <33.607624, 39.042488, 46.060318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501797, 38.840969, 46.136410>,  <33.325417, 38.505100, 46.263229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501797, 38.840969, 46.136410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391420, -0.137974, -0.909810,
		-0.807681, 0.525282, 0.267823,
		0.440955, 0.839668, -0.317045,
		33.634083, 39.092869, 46.041298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841228, 38.795921, 45.845268>,  <33.325417, 38.505100, 46.263229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841228, 38.795921, 45.845268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178608, 38.990738, 45.754585>,  <33.381035, 39.107628, 45.700176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178608, 38.990738, 45.754585>,  <32.841228, 38.795921, 45.845268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178608, 38.990738, 45.754585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156320, -0.181232, -0.970937,
		-0.513969, 0.854370, -0.076726,
		0.843445, 0.487038, -0.226703,
		33.431641, 39.136848, 45.686573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591660, 39.318829, 45.396118>,  <32.841228, 38.795921, 45.845268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591660, 39.318829, 45.396118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.984657, 39.272511, 45.337734>,  <33.220455, 39.244720, 45.302704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.984657, 39.272511, 45.337734>,  <32.591660, 39.318829, 45.396118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984657, 39.272511, 45.337734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169095, -0.225244, -0.959516,
		0.078227, 0.967397, -0.240880,
		0.982490, -0.115792, -0.145962,
		33.279404, 39.237774, 45.293945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.250763, 35.820381, 50.100544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218357, 36.154186, 49.882542>,  <36.198914, 36.354469, 49.751740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218357, 36.154186, 49.882542>,  <36.250763, 35.820381, 50.100544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218357, 36.154186, 49.882542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025581, 0.544880, 0.838124,
		0.996385, 0.081841, -0.022795,
		-0.081014, 0.834511, -0.545004,
		36.194054, 36.404541, 49.719040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878895, 35.502384, 49.833866>,  <36.250763, 35.820381, 50.100544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878895, 35.502384, 49.833866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.161942, 35.556355, 49.556427>,  <37.331768, 35.588737, 49.389965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.161942, 35.556355, 49.556427>,  <36.878895, 35.502384, 49.833866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161942, 35.556355, 49.556427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654513, -0.244731, -0.715346,
		-0.266260, 0.960158, -0.084867,
		0.707615, 0.134922, -0.693597,
		37.374226, 35.596832, 49.348347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457184, 35.708767, 49.247719>,  <36.878895, 35.502384, 49.833866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457184, 35.708767, 49.247719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.822033, 35.591072, 49.133560>,  <37.040943, 35.520454, 49.065063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.822033, 35.591072, 49.133560>,  <36.457184, 35.708767, 49.247719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822033, 35.591072, 49.133560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352184, -0.206265, -0.912919,
		0.209745, 0.933210, -0.291765,
		0.912126, -0.294235, -0.285398,
		37.095673, 35.502800, 49.047939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686016, 36.119923, 48.585758>,  <36.457184, 35.708767, 49.247719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686016, 36.119923, 48.585758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.857773, 35.758709, 48.590862>,  <36.960827, 35.541981, 48.593925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.857773, 35.758709, 48.590862>,  <36.686016, 36.119923, 48.585758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857773, 35.758709, 48.590862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346322, -0.177694, -0.921133,
		0.834078, 0.391103, -0.389039,
		0.429388, -0.903030, 0.012763,
		36.986588, 35.487801, 48.594692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113438, 36.111603, 48.000134>,  <36.686016, 36.119923, 48.585758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113438, 36.111603, 48.000134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.032612, 35.731892, 48.096497>,  <36.984116, 35.504063, 48.154316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.032612, 35.731892, 48.096497>,  <37.113438, 36.111603, 48.000134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032612, 35.731892, 48.096497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340638, -0.162502, -0.926045,
		0.918225, -0.269180, -0.290526,
		-0.202062, -0.949281, 0.240907,
		36.971992, 35.447105, 48.168770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523674, 35.694378, 47.591419>,  <37.113438, 36.111603, 48.000134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523674, 35.694378, 47.591419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217358, 35.471966, 47.720657>,  <37.033566, 35.338520, 47.798203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217358, 35.471966, 47.720657>,  <37.523674, 35.694378, 47.591419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217358, 35.471966, 47.720657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172202, -0.306771, -0.936076,
		0.619600, -0.772480, 0.139175,
		-0.765795, -0.556026, 0.323098,
		36.987617, 35.305157, 47.817585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546429, 35.015205, 47.268597>,  <37.523674, 35.694378, 47.591419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546429, 35.015205, 47.268597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.162777, 34.968254, 47.371582>,  <36.932587, 34.940083, 47.433372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.162777, 34.968254, 47.371582>,  <37.546429, 35.015205, 47.268597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162777, 34.968254, 47.371582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186508, -0.422011, -0.887199,
		0.212788, -0.898960, 0.382873,
		-0.959133, -0.117376, 0.257462,
		36.875038, 34.933041, 47.448822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453918, 34.357445, 47.199947>,  <37.546429, 35.015205, 47.268597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453918, 34.357445, 47.199947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085464, 34.512352, 47.215591>,  <36.864391, 34.605297, 47.224979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085464, 34.512352, 47.215591>,  <37.453918, 34.357445, 47.199947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085464, 34.512352, 47.215591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305869, -0.658023, -0.688077,
		-0.240736, -0.645775, 0.724583,
		-0.921135, 0.387272, 0.039113,
		36.809124, 34.628532, 47.227325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902069, 33.820660, 47.150482>,  <37.453918, 34.357445, 47.199947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902069, 33.820660, 47.150482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693493, 34.138023, 47.024872>,  <36.568348, 34.328442, 46.949505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693493, 34.138023, 47.024872>,  <36.902069, 33.820660, 47.150482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693493, 34.138023, 47.024872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274834, -0.504566, -0.818461,
		-0.807818, -0.340471, 0.481154,
		-0.521436, 0.793406, -0.314025,
		36.537064, 34.376045, 46.930664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329567, 33.568886, 46.936199>,  <36.902069, 33.820660, 47.150482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329567, 33.568886, 46.936199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299324, 33.928482, 46.763641>,  <36.281178, 34.144241, 46.660107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299324, 33.928482, 46.763641>,  <36.329567, 33.568886, 46.936199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299324, 33.928482, 46.763641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251184, -0.435853, -0.864256,
		-0.964981, 0.043012, 0.258768,
		-0.075612, 0.898990, -0.431394,
		36.276642, 34.198177, 46.634224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657097, 33.682465, 46.640865>,  <36.329567, 33.568886, 46.936199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657097, 33.682465, 46.640865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885548, 33.943199, 46.441299>,  <36.022617, 34.099640, 46.321560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885548, 33.943199, 46.441299>,  <35.657097, 33.682465, 46.640865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885548, 33.943199, 46.441299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209058, -0.472252, -0.856313,
		-0.793794, 0.593366, -0.133443,
		0.571126, 0.651839, -0.498919,
		36.056885, 34.138752, 46.291622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262512, 34.146004, 46.157822>,  <35.657097, 33.682465, 46.640865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262512, 34.146004, 46.157822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644604, 34.128834, 46.040726>,  <35.873859, 34.118530, 45.970467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644604, 34.128834, 46.040726>,  <35.262512, 34.146004, 46.157822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644604, 34.128834, 46.040726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286330, -0.383398, -0.878078,
		-0.074544, 0.922585, -0.378523,
		0.955227, -0.042928, -0.292744,
		35.931171, 34.115955, 45.952904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793407, 34.771221, 46.032806>,  <35.262512, 34.146004, 46.157822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793407, 34.771221, 46.032806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395870, 34.746895, 46.069851>,  <34.157349, 34.732300, 46.092075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395870, 34.746895, 46.069851>,  <34.793407, 34.771221, 46.032806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395870, 34.746895, 46.069851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057150, 0.434657, 0.898781,
		-0.094917, 0.898540, -0.428505,
		-0.993843, -0.060820, 0.092608,
		34.097717, 34.728649, 46.097633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575291, 35.393234, 46.311001>,  <34.793407, 34.771221, 46.032806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575291, 35.393234, 46.311001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271950, 35.149555, 46.403763>,  <34.089947, 35.003349, 46.459419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271950, 35.149555, 46.403763>,  <34.575291, 35.393234, 46.311001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271950, 35.149555, 46.403763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160129, 0.518974, 0.839658,
		-0.631873, 0.599620, -0.491114,
		-0.758351, -0.609198, 0.231909,
		34.044445, 34.966797, 46.473335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983803, 35.732204, 46.352501>,  <34.575291, 35.393234, 46.311001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983803, 35.732204, 46.352501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.964230, 35.410431, 46.589310>,  <33.952488, 35.217365, 46.731396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.964230, 35.410431, 46.589310>,  <33.983803, 35.732204, 46.352501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964230, 35.410431, 46.589310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049569, 0.593957, 0.802969,
		-0.997572, 0.009942, -0.068937,
		-0.048929, -0.804436, 0.592021,
		33.949551, 35.169102, 46.766914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436718, 35.837208, 46.646164>,  <33.983803, 35.732204, 46.352501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436718, 35.837208, 46.646164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594856, 35.567638, 46.895813>,  <33.689739, 35.405895, 47.045601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594856, 35.567638, 46.895813>,  <33.436718, 35.837208, 46.646164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594856, 35.567638, 46.895813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147102, 0.624253, 0.767248,
		-0.906675, -0.395140, 0.147662,
		0.395349, -0.673923, 0.624121,
		33.713463, 35.365463, 47.083050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226109, 36.120613, 47.279549>,  <33.436718, 35.837208, 46.646164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226109, 36.120613, 47.279549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.475666, 35.832573, 47.401009>,  <33.625401, 35.659748, 47.473885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.475666, 35.832573, 47.401009>,  <33.226109, 36.120613, 47.279549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475666, 35.832573, 47.401009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052581, 0.426343, 0.903032,
		-0.779736, -0.547432, 0.303858,
		0.623897, -0.720104, 0.303650,
		33.662834, 35.616543, 47.492104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893768, 35.778042, 47.817238>,  <33.226109, 36.120613, 47.279549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893768, 35.778042, 47.817238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.292091, 35.751392, 47.842312>,  <33.531086, 35.735405, 47.857357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.292091, 35.751392, 47.842312>,  <32.893768, 35.778042, 47.817238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292091, 35.751392, 47.842312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028216, 0.428108, 0.903287,
		-0.087012, -0.901269, 0.424434,
		0.995808, -0.066621, 0.062681,
		33.590836, 35.731407, 47.861115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099957, 35.469955, 48.489487>,  <32.893768, 35.778042, 47.817238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099957, 35.469955, 48.489487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400055, 35.696774, 48.353489>,  <33.580112, 35.832863, 48.271889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400055, 35.696774, 48.353489>,  <33.099957, 35.469955, 48.489487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400055, 35.696774, 48.353489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143095, 0.362788, 0.920820,
		0.645493, -0.739489, 0.191037,
		0.750242, 0.567046, -0.339994,
		33.625126, 35.866886, 48.251492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560802, 35.283955, 48.958630>,  <33.099957, 35.469955, 48.489487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560802, 35.283955, 48.958630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709869, 35.616726, 48.794186>,  <33.799309, 35.816387, 48.695518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709869, 35.616726, 48.794186>,  <33.560802, 35.283955, 48.958630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709869, 35.616726, 48.794186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238179, 0.342432, 0.908852,
		0.896877, -0.436619, -0.070534,
		0.372669, 0.831928, -0.411112,
		33.821671, 35.866302, 48.670853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105122, 35.355667, 49.298660>,  <33.560802, 35.283955, 48.958630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105122, 35.355667, 49.298660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039391, 35.711617, 49.128426>,  <33.999950, 35.925186, 49.026283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039391, 35.711617, 49.128426>,  <34.105122, 35.355667, 49.298660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039391, 35.711617, 49.128426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400013, 0.454502, 0.795876,
		0.901658, -0.039457, -0.430647,
		-0.164327, 0.889872, -0.425588,
		33.990093, 35.978577, 49.000748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663708, 35.794193, 49.400669>,  <34.105122, 35.355667, 49.298660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663708, 35.794193, 49.400669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371506, 36.057365, 49.327465>,  <34.196186, 36.215267, 49.283543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371506, 36.057365, 49.327465>,  <34.663708, 35.794193, 49.400669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371506, 36.057365, 49.327465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362549, 0.600738, 0.712511,
		0.578725, 0.454140, -0.677373,
		-0.730503, 0.657929, -0.183014,
		34.152355, 36.254745, 49.272560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964642, 36.556801, 49.455502>,  <34.663708, 35.794193, 49.400669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964642, 36.556801, 49.455502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568409, 36.573456, 49.507690>,  <34.330669, 36.583450, 49.539005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568409, 36.573456, 49.507690>,  <34.964642, 36.556801, 49.455502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568409, 36.573456, 49.507690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117661, 0.746312, 0.655114,
		-0.070096, 0.664293, -0.744179,
		-0.990577, 0.041640, 0.130474,
		34.271236, 36.585949, 49.546833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795116, 37.316341, 49.569946>,  <34.964642, 36.556801, 49.455502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795116, 37.316341, 49.569946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.486675, 37.114506, 49.725273>,  <34.301613, 36.993404, 49.818470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.486675, 37.114506, 49.725273>,  <34.795116, 37.316341, 49.569946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486675, 37.114506, 49.725273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023568, 0.586841, 0.809359,
		-0.636279, 0.633248, -0.440621,
		-0.771099, -0.504593, 0.388319,
		34.255344, 36.963127, 49.841770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672424, 37.669628, 50.214176>,  <34.795116, 37.316341, 49.569946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672424, 37.669628, 50.214176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.429008, 37.358562, 50.277321>,  <34.282959, 37.171925, 50.315208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.429008, 37.358562, 50.277321>,  <34.672424, 37.669628, 50.214176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429008, 37.358562, 50.277321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017788, 0.185518, 0.982480,
		-0.793324, 0.600686, -0.099062,
		-0.608539, -0.777663, 0.157861,
		34.246449, 37.125263, 50.324680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137962, 38.002880, 50.644302>,  <34.672424, 37.669628, 50.214176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137962, 38.002880, 50.644302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.156059, 37.606182, 50.692310>,  <34.166916, 37.368164, 50.721115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.156059, 37.606182, 50.692310>,  <34.137962, 38.002880, 50.644302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156059, 37.606182, 50.692310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119513, 0.124652, 0.984976,
		-0.991801, -0.030214, 0.124165,
		0.045237, -0.991740, 0.120020,
		34.169632, 37.308659, 50.728317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677391, 38.422413, 50.329807>,  <34.137962, 38.002880, 50.644302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677391, 38.422413, 50.329807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.739895, 38.817078, 50.348091>,  <33.777397, 39.053875, 50.359062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.739895, 38.817078, 50.348091>,  <33.677391, 38.422413, 50.329807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739895, 38.817078, 50.348091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026301, 0.042102, -0.998767,
		-0.987367, 0.157264, -0.019371,
		0.156255, 0.986659, 0.045706,
		33.786770, 39.113075, 50.361801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195957, 38.745834, 49.837017>,  <33.677391, 38.422413, 50.329807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195957, 38.745834, 49.837017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.459293, 39.043453, 49.882584>,  <33.617294, 39.222027, 49.909924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.459293, 39.043453, 49.882584>,  <33.195957, 38.745834, 49.837017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459293, 39.043453, 49.882584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168241, 0.002054, -0.985744,
		-0.733677, 0.668120, -0.123828,
		0.658341, 0.744051, 0.113913,
		33.656796, 39.266670, 49.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999783, 39.261410, 49.344460>,  <33.195957, 38.745834, 49.837017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999783, 39.261410, 49.344460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386703, 39.328033, 49.420959>,  <33.618858, 39.368008, 49.466862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386703, 39.328033, 49.420959>,  <32.999783, 39.261410, 49.344460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386703, 39.328033, 49.420959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179410, 0.083598, -0.980216,
		-0.179254, 0.982481, 0.050982,
		0.967305, 0.166561, 0.191252,
		33.676895, 39.378002, 49.478336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179287, 39.873718, 49.020119>,  <32.999783, 39.261410, 49.344460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179287, 39.873718, 49.020119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548801, 39.722546, 49.044697>,  <33.770512, 39.631840, 49.059444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548801, 39.722546, 49.044697>,  <33.179287, 39.873718, 49.020119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548801, 39.722546, 49.044697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181380, 0.290614, -0.939492,
		0.337212, 0.879038, 0.337017,
		0.923791, -0.377936, 0.061441,
		33.825939, 39.609165, 49.063129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575214, 40.311535, 48.691322>,  <33.179287, 39.873718, 49.020119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575214, 40.311535, 48.691322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818485, 39.994057, 48.686024>,  <33.964447, 39.803570, 48.682846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818485, 39.994057, 48.686024>,  <33.575214, 40.311535, 48.691322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818485, 39.994057, 48.686024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112961, 0.103046, -0.988242,
		0.785726, 0.599526, 0.152326,
		0.608173, -0.793694, -0.013243,
		34.000938, 39.755947, 48.682053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077438, 40.531311, 48.288986>,  <33.575214, 40.311535, 48.691322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077438, 40.531311, 48.288986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.148067, 40.137768, 48.277416>,  <34.190445, 39.901642, 48.270473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.148067, 40.137768, 48.277416>,  <34.077438, 40.531311, 48.288986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148067, 40.137768, 48.277416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268901, 0.076485, -0.960126,
		0.946844, 0.161757, 0.278067,
		0.176576, -0.983862, -0.028923,
		34.201038, 39.842609, 48.268738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717987, 40.394115, 47.876083>,  <34.077438, 40.531311, 48.288986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717987, 40.394115, 47.876083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.501442, 40.057968, 47.865406>,  <34.371513, 39.856281, 47.858997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.501442, 40.057968, 47.865406>,  <34.717987, 40.394115, 47.876083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501442, 40.057968, 47.865406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109589, -0.039044, -0.993210,
		0.833617, -0.540612, 0.113231,
		-0.541362, -0.840366, -0.026697,
		34.339035, 39.805859, 47.857395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459068, 40.344326, 47.862320>,  <34.717987, 40.394115, 47.876083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459068, 40.344326, 47.862320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771015, 40.589909, 47.813545>,  <35.958183, 40.737259, 47.784279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771015, 40.589909, 47.813545>,  <35.459068, 40.344326, 47.862320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771015, 40.589909, 47.813545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066205, 0.112813, 0.991408,
		0.622439, -0.781236, 0.047332,
		0.779863, 0.613957, -0.121941,
		36.004974, 40.774097, 47.776962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915745, 40.098175, 48.383720>,  <35.459068, 40.344326, 47.862320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915745, 40.098175, 48.383720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.059605, 40.459324, 48.289516>,  <36.145920, 40.676014, 48.232994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.059605, 40.459324, 48.289516>,  <35.915745, 40.098175, 48.383720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059605, 40.459324, 48.289516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424707, 0.066341, 0.902897,
		0.830828, -0.424754, -0.359597,
		0.359653, 0.902875, -0.235514,
		36.167500, 40.730186, 48.218861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667984, 40.053040, 48.371635>,  <35.915745, 40.098175, 48.383720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667984, 40.053040, 48.371635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620037, 40.447708, 48.415653>,  <36.591270, 40.684509, 48.442062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620037, 40.447708, 48.415653>,  <36.667984, 40.053040, 48.371635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620037, 40.447708, 48.415653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628238, -0.010445, 0.777951,
		0.768732, 0.162381, -0.618614,
		-0.119863, 0.986673, 0.110044,
		36.584080, 40.743710, 48.448666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377781, 40.363716, 48.521481>,  <36.667984, 40.053040, 48.371635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377781, 40.363716, 48.521481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101112, 40.619034, 48.656643>,  <36.935112, 40.772224, 48.737740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101112, 40.619034, 48.656643>,  <37.377781, 40.363716, 48.521481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101112, 40.619034, 48.656643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505481, 0.093677, 0.857737,
		0.515835, 0.764072, -0.387439,
		-0.691667, 0.638294, 0.337902,
		36.893612, 40.810520, 48.758015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679729, 40.786491, 48.985249>,  <37.377781, 40.363716, 48.521481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679729, 40.786491, 48.985249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.309971, 40.868069, 49.114185>,  <37.088116, 40.917015, 49.191547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.309971, 40.868069, 49.114185>,  <37.679729, 40.786491, 48.985249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309971, 40.868069, 49.114185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323520, -0.028485, 0.945792,
		0.202068, 0.978569, -0.039648,
		-0.924394, 0.203941, 0.322342,
		37.032654, 40.929253, 49.210888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747341, 41.246769, 49.566479>,  <37.679729, 40.786491, 48.985249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747341, 41.246769, 49.566479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.373932, 41.110126, 49.610020>,  <37.149887, 41.028141, 49.636143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.373932, 41.110126, 49.610020>,  <37.747341, 41.246769, 49.566479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373932, 41.110126, 49.610020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196351, -0.233101, 0.952423,
		-0.299977, 0.910479, 0.284679,
		-0.933520, -0.341602, 0.108848,
		37.093876, 41.007645, 49.642673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462940, 41.533134, 50.214634>,  <37.747341, 41.246769, 49.566479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462940, 41.533134, 50.214634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.265423, 41.200237, 50.113796>,  <37.146912, 41.000500, 50.053295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.265423, 41.200237, 50.113796>,  <37.462940, 41.533134, 50.214634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265423, 41.200237, 50.113796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138616, -0.361525, 0.922001,
		-0.858461, 0.420332, 0.293879,
		-0.493791, -0.832238, -0.252091,
		37.117287, 40.950565, 50.038170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991497, 41.432617, 50.759109>,  <37.462940, 41.533134, 50.214634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991497, 41.432617, 50.759109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.039211, 41.076466, 50.583382>,  <37.067841, 40.862774, 50.477943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.039211, 41.076466, 50.583382>,  <36.991497, 41.432617, 50.759109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039211, 41.076466, 50.583382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001942, -0.442690, 0.896673,
		-0.992858, -0.106109, -0.054536,
		0.119288, -0.890374, -0.439322,
		37.074997, 40.809353, 50.451584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565392, 40.994179, 51.160065>,  <36.991497, 41.432617, 50.759109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565392, 40.994179, 51.160065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837166, 40.761406, 50.981308>,  <37.000233, 40.621742, 50.874054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837166, 40.761406, 50.981308>,  <36.565392, 40.994179, 51.160065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837166, 40.761406, 50.981308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205320, -0.433941, 0.877234,
		-0.704419, -0.687783, -0.175353,
		0.679439, -0.581936, -0.446892,
		37.040997, 40.586826, 50.847240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.619873, 37.571476, 35.251457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883236, 37.271603, 35.278210>,  <36.041252, 37.091679, 35.294262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883236, 37.271603, 35.278210>,  <35.619873, 37.571476, 35.251457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883236, 37.271603, 35.278210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069781, 0.027675, 0.997178,
		-0.749423, -0.661213, -0.034092,
		0.658404, -0.749688, 0.066880,
		36.080757, 37.046696, 35.298275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344696, 37.146805, 35.754215>,  <35.619873, 37.571476, 35.251457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344696, 37.146805, 35.754215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736721, 37.067646, 35.747185>,  <35.971935, 37.020153, 35.742966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736721, 37.067646, 35.747185>,  <35.344696, 37.146805, 35.754215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736721, 37.067646, 35.747185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032128, 0.070548, 0.996991,
		-0.196059, -0.977681, 0.075500,
		0.980066, -0.197894, -0.017580,
		36.030743, 37.008278, 35.741909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423344, 36.623188, 36.187038>,  <35.344696, 37.146805, 35.754215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423344, 36.623188, 36.187038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787025, 36.787964, 36.162880>,  <36.005234, 36.886829, 36.148384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787025, 36.787964, 36.162880>,  <35.423344, 36.623188, 36.187038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787025, 36.787964, 36.162880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001352, 0.147993, 0.988987,
		0.416338, -0.899114, 0.135114,
		0.909209, 0.411936, -0.060399,
		36.059788, 36.911545, 36.144760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813160, 36.401619, 36.745129>,  <35.423344, 36.623188, 36.187038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813160, 36.401619, 36.745129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023846, 36.728741, 36.652378>,  <36.150257, 36.925014, 36.596729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023846, 36.728741, 36.652378>,  <35.813160, 36.401619, 36.745129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023846, 36.728741, 36.652378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048160, 0.301052, 0.952391,
		0.848676, -0.490473, 0.197954,
		0.526717, 0.817804, -0.231875,
		36.181862, 36.974083, 36.582817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436584, 36.339714, 37.044136>,  <35.813160, 36.401619, 36.745129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436584, 36.339714, 37.044136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349236, 36.727161, 36.996658>,  <36.296825, 36.959629, 36.968170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349236, 36.727161, 36.996658>,  <36.436584, 36.339714, 37.044136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349236, 36.727161, 36.996658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069212, 0.136696, 0.988192,
		0.973408, 0.207580, -0.096891,
		-0.218373, 0.968620, -0.118694,
		36.283722, 37.017746, 36.961052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833271, 36.630047, 37.653278>,  <36.436584, 36.339714, 37.044136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833271, 36.630047, 37.653278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583569, 36.909901, 37.514244>,  <36.433746, 37.077812, 37.430824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583569, 36.909901, 37.514244>,  <36.833271, 36.630047, 37.653278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583569, 36.909901, 37.514244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030086, 0.423066, 0.905600,
		0.780637, 0.575787, -0.243054,
		-0.624260, 0.699632, -0.347584,
		36.396290, 37.119789, 37.409969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086376, 37.281902, 38.022636>,  <36.833271, 36.630047, 37.653278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086376, 37.281902, 38.022636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711067, 37.318001, 37.889069>,  <36.485882, 37.339661, 37.808926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711067, 37.318001, 37.889069>,  <37.086376, 37.281902, 38.022636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711067, 37.318001, 37.889069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264694, 0.434152, 0.861075,
		0.222679, 0.896308, -0.383465,
		-0.938270, 0.090242, -0.333924,
		36.429585, 37.345074, 37.788891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950859, 37.818115, 38.301891>,  <37.086376, 37.281902, 38.022636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950859, 37.818115, 38.301891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582634, 37.694092, 38.206867>,  <36.361698, 37.619678, 38.149853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582634, 37.694092, 38.206867>,  <36.950859, 37.818115, 38.301891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582634, 37.694092, 38.206867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360921, 0.442655, 0.820849,
		-0.149354, 0.841380, -0.519397,
		-0.920559, -0.310058, -0.237560,
		36.306465, 37.601074, 38.135601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560280, 38.410267, 38.369053>,  <36.950859, 37.818115, 38.301891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560280, 38.410267, 38.369053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311810, 38.098881, 38.405102>,  <36.162727, 37.912048, 38.426731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311810, 38.098881, 38.405102>,  <36.560280, 38.410267, 38.369053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311810, 38.098881, 38.405102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372635, 0.394580, 0.839911,
		-0.689404, 0.488153, -0.535190,
		-0.621180, -0.778468, 0.090122,
		36.125454, 37.865341, 38.432137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910950, 38.706017, 38.457561>,  <36.560280, 38.410267, 38.369053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910950, 38.706017, 38.457561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895466, 38.332535, 38.599945>,  <35.886177, 38.108448, 38.685375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895466, 38.332535, 38.599945>,  <35.910950, 38.706017, 38.457561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895466, 38.332535, 38.599945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538331, 0.319593, 0.779782,
		-0.841844, -0.161441, -0.515010,
		-0.038705, -0.933701, 0.355957,
		35.883854, 38.052425, 38.706734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161499, 38.641373, 38.688725>,  <35.910950, 38.706017, 38.457561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161499, 38.641373, 38.688725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340244, 38.340080, 38.881790>,  <35.447491, 38.159306, 38.997627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340244, 38.340080, 38.881790>,  <35.161499, 38.641373, 38.688725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340244, 38.340080, 38.881790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209554, 0.436381, 0.875019,
		-0.869714, -0.492155, 0.037160,
		0.446861, -0.753229, 0.482660,
		35.474304, 38.114113, 39.026588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742023, 38.375198, 39.153427>,  <35.161499, 38.641373, 38.688725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742023, 38.375198, 39.153427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115028, 38.311142, 39.282902>,  <35.338833, 38.272709, 39.360584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115028, 38.311142, 39.282902>,  <34.742023, 38.375198, 39.153427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115028, 38.311142, 39.282902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227066, 0.436962, 0.870348,
		-0.280811, -0.885110, 0.371113,
		0.932516, -0.160137, 0.323682,
		35.394783, 38.263100, 39.380005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422150, 37.721596, 39.340446>,  <34.742023, 38.375198, 39.153427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422150, 37.721596, 39.340446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031082, 37.679039, 39.412937>,  <33.796440, 37.653503, 39.456432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031082, 37.679039, 39.412937>,  <34.422150, 37.721596, 39.340446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031082, 37.679039, 39.412937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151650, -0.239833, -0.958896,
		0.145489, -0.964966, 0.218342,
		-0.977669, -0.106397, 0.181230,
		33.737782, 37.647121, 39.467308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167664, 37.079803, 38.916351>,  <34.422150, 37.721596, 39.340446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167664, 37.079803, 38.916351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836601, 37.293491, 38.985172>,  <33.637966, 37.421703, 39.026466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836601, 37.293491, 38.985172>,  <34.167664, 37.079803, 38.916351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836601, 37.293491, 38.985172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320794, -0.198741, -0.926063,
		-0.460528, -0.821651, 0.335863,
		-0.827650, 0.534221, 0.172055,
		33.588306, 37.453758, 39.036789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653461, 36.605278, 38.718853>,  <34.167664, 37.079803, 38.916351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653461, 36.605278, 38.718853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471107, 36.961174, 38.728004>,  <33.361694, 37.174713, 38.733494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471107, 36.961174, 38.728004>,  <33.653461, 36.605278, 38.718853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471107, 36.961174, 38.728004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411659, -0.187999, -0.891737,
		-0.789116, -0.415948, 0.451977,
		-0.455887, 0.889744, 0.022875,
		33.334343, 37.228096, 38.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951065, 36.549469, 38.352730>,  <33.653461, 36.605278, 38.718853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951065, 36.549469, 38.352730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997124, 36.946808, 38.353909>,  <33.024761, 37.185211, 38.354614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997124, 36.946808, 38.353909>,  <32.951065, 36.549469, 38.352730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997124, 36.946808, 38.353909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333495, 0.041455, -0.941840,
		-0.935693, 0.107471, 0.336049,
		0.115151, 0.993344, 0.002948,
		33.031670, 37.244812, 38.354794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308353, 36.897747, 38.215195>,  <32.951065, 36.549469, 38.352730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308353, 36.897747, 38.215195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599243, 37.149269, 38.105106>,  <32.773777, 37.300182, 38.039055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599243, 37.149269, 38.105106>,  <32.308353, 36.897747, 38.215195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599243, 37.149269, 38.105106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419142, 0.089288, -0.903520,
		-0.543568, 0.772416, 0.328493,
		0.727224, 0.628809, -0.275218,
		32.817410, 37.337914, 38.022541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980585, 37.489464, 37.763126>,  <32.308353, 36.897747, 38.215195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980585, 37.489464, 37.763126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370296, 37.529198, 37.682213>,  <32.604122, 37.553040, 37.633667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370296, 37.529198, 37.682213>,  <31.980585, 37.489464, 37.763126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370296, 37.529198, 37.682213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189909, -0.121322, -0.974277,
		-0.121322, 0.987630, -0.099336,
		0.974277, 0.099336, -0.202279,
		32.662579, 37.558998, 37.621529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009007, 37.949017, 37.234165>,  <31.980585, 37.489464, 37.763126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009007, 37.949017, 37.234165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352097, 37.746902, 37.196243>,  <32.557953, 37.625633, 37.173492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352097, 37.746902, 37.196243>,  <32.009007, 37.949017, 37.234165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352097, 37.746902, 37.196243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133449, -0.040745, -0.990218,
		0.496481, 0.861990, -0.102378,
		0.857729, -0.505286, -0.094803,
		32.609417, 37.595318, 37.167801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229843, 37.984180, 36.432220>,  <32.009007, 37.949017, 37.234165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229843, 37.984180, 36.432220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493629, 37.705475, 36.545097>,  <32.651901, 37.538254, 36.612823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493629, 37.705475, 36.545097>,  <32.229843, 37.984180, 36.432220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493629, 37.705475, 36.545097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026849, -0.353321, -0.935117,
		0.751258, 0.624251, -0.214294,
		0.659462, -0.696761, 0.282196,
		32.691467, 37.496445, 36.629757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731693, 37.951347, 35.899971>,  <32.229843, 37.984180, 36.432220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731693, 37.951347, 35.899971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733807, 37.602715, 36.096058>,  <32.735073, 37.393536, 36.213711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733807, 37.602715, 36.096058>,  <32.731693, 37.951347, 35.899971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733807, 37.602715, 36.096058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003648, -0.490236, -0.871582,
		0.999979, 0.002813, -0.005768,
		0.005280, -0.871585, 0.490216,
		32.735390, 37.341240, 36.243122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134510, 37.523655, 35.475754>,  <32.731693, 37.951347, 35.899971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134510, 37.523655, 35.475754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936523, 37.283894, 35.727383>,  <32.817734, 37.140038, 35.878361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936523, 37.283894, 35.727383>,  <33.134510, 37.523655, 35.475754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936523, 37.283894, 35.727383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175317, -0.640191, -0.747944,
		0.851043, -0.480492, 0.211786,
		-0.494964, -0.599403, 0.629068,
		32.788033, 37.104073, 35.916103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256817, 36.920330, 35.220158>,  <33.134510, 37.523655, 35.475754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256817, 36.920330, 35.220158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931164, 36.844818, 35.439816>,  <32.735771, 36.799511, 35.571609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931164, 36.844818, 35.439816>,  <33.256817, 36.920330, 35.220158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931164, 36.844818, 35.439816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379609, -0.542606, -0.749317,
		0.439422, -0.818500, 0.370090,
		-0.814129, -0.188777, 0.549143,
		32.686924, 36.788185, 35.604557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229210, 36.192341, 35.437279>,  <33.256817, 36.920330, 35.220158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229210, 36.192341, 35.437279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853062, 36.328388, 35.439129>,  <32.627373, 36.410019, 35.440239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853062, 36.328388, 35.439129>,  <33.229210, 36.192341, 35.437279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853062, 36.328388, 35.439129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285110, -0.780710, -0.556062,
		-0.185518, -0.524222, 0.831128,
		-0.940370, 0.340123, 0.004625,
		32.570950, 36.430424, 35.440517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959354, 35.564133, 35.479652>,  <33.229210, 36.192341, 35.437279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959354, 35.564133, 35.479652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720081, 35.853836, 35.342464>,  <32.576515, 36.027657, 35.260151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720081, 35.853836, 35.342464>,  <32.959354, 35.564133, 35.479652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720081, 35.853836, 35.342464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372793, -0.630355, -0.680938,
		-0.709367, -0.279470, 0.647067,
		-0.598184, 0.724257, -0.342969,
		32.540627, 36.071114, 35.239574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390835, 35.202103, 35.194187>,  <32.959354, 35.564133, 35.479652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390835, 35.202103, 35.194187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357361, 35.575848, 35.055649>,  <32.337276, 35.800095, 34.972527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357361, 35.575848, 35.055649>,  <32.390835, 35.202103, 35.194187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357361, 35.575848, 35.055649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363156, -0.352259, -0.862573,
		-0.927962, 0.053590, 0.368801,
		-0.083688, 0.934367, -0.346344,
		32.332256, 35.856159, 34.951744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251030, 35.036648, 35.870293>,  <32.390835, 35.202103, 35.194187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251030, 35.036648, 35.870293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226402, 34.643559, 35.800468>,  <32.211624, 34.407707, 35.758575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226402, 34.643559, 35.800468>,  <32.251030, 35.036648, 35.870293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226402, 34.643559, 35.800468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251317, -0.153993, 0.955576,
		-0.965944, 0.102709, -0.237492,
		-0.061574, -0.982719, -0.174561,
		32.207932, 34.348743, 35.748100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672417, 34.732006, 36.267986>,  <32.251030, 35.036648, 35.870293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672417, 34.732006, 36.267986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891237, 34.409615, 36.177536>,  <32.022530, 34.216179, 36.123264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891237, 34.409615, 36.177536>,  <31.672417, 34.732006, 36.267986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891237, 34.409615, 36.177536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177776, -0.375828, 0.909477,
		-0.818005, -0.457329, -0.348880,
		0.547050, -0.805980, -0.226127,
		32.055351, 34.167820, 36.109699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441286, 34.135082, 36.462166>,  <31.672417, 34.732006, 36.267986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441286, 34.135082, 36.462166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828447, 34.034840, 36.454544>,  <32.060745, 33.974693, 36.449970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828447, 34.034840, 36.454544>,  <31.441286, 34.135082, 36.462166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828447, 34.034840, 36.454544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054041, -0.281573, 0.958017,
		-0.245442, -0.926238, -0.286078,
		0.967904, -0.250598, -0.019055,
		32.118816, 33.959660, 36.448826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493731, 33.484631, 36.638828>,  <31.441286, 34.135082, 36.462166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493731, 33.484631, 36.638828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865200, 33.615765, 36.708214>,  <32.088081, 33.694447, 36.749844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865200, 33.615765, 36.708214>,  <31.493731, 33.484631, 36.638828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865200, 33.615765, 36.708214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067783, -0.309790, 0.948386,
		0.364651, -0.892499, -0.265472,
		0.928674, 0.327836, 0.173462,
		32.143803, 33.714115, 36.760254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820251, 32.922508, 37.021862>,  <31.493731, 33.484631, 36.638828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820251, 32.922508, 37.021862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980202, 33.283669, 37.084938>,  <32.076172, 33.500366, 37.122784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980202, 33.283669, 37.084938>,  <31.820251, 32.922508, 37.021862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980202, 33.283669, 37.084938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022764, -0.181778, 0.983076,
		0.916287, -0.389517, -0.093242,
		0.399874, 0.902903, 0.157694,
		32.100163, 33.554539, 37.132248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452919, 32.770176, 37.433964>,  <31.820251, 32.922508, 37.021862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452919, 32.770176, 37.433964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348774, 33.155216, 37.463936>,  <32.286289, 33.386242, 37.481918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348774, 33.155216, 37.463936>,  <32.452919, 32.770176, 37.433964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348774, 33.155216, 37.463936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147935, -0.116459, 0.982116,
		0.954111, 0.244620, 0.172724,
		-0.260361, 0.962600, 0.074927,
		32.270664, 33.443996, 37.486416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937405, 33.011089, 37.906376>,  <32.452919, 32.770176, 37.433964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937405, 33.011089, 37.906376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641212, 33.279430, 37.890156>,  <32.463497, 33.440434, 37.880424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641212, 33.279430, 37.890156>,  <32.937405, 33.011089, 37.906376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641212, 33.279430, 37.890156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062688, -0.008871, 0.997994,
		0.669147, 0.741537, 0.048624,
		-0.740481, 0.670853, -0.040549,
		32.419067, 33.480686, 37.877991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086559, 33.612968, 38.440228>,  <32.937405, 33.011089, 37.906376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086559, 33.612968, 38.440228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692848, 33.628654, 38.371346>,  <32.456619, 33.638065, 38.330017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692848, 33.628654, 38.371346>,  <33.086559, 33.612968, 38.440228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692848, 33.628654, 38.371346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171956, 0.009615, 0.985058,
		0.040281, 0.999184, -0.002721,
		-0.984281, 0.039211, -0.172203,
		32.397564, 33.640419, 38.319683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826740, 34.285660, 38.780781>,  <33.086559, 33.612968, 38.440228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826740, 34.285660, 38.780781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526386, 34.033123, 38.703243>,  <32.346172, 33.881599, 38.656719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526386, 34.033123, 38.703243>,  <32.826740, 34.285660, 38.780781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526386, 34.033123, 38.703243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306956, 0.073743, 0.948863,
		-0.584766, 0.771987, -0.249168,
		-0.750884, -0.631346, -0.193843,
		32.301121, 33.843719, 38.645092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273567, 34.653603, 39.104923>,  <32.826740, 34.285660, 38.780781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273567, 34.653603, 39.104923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169590, 34.268387, 39.076706>,  <32.107204, 34.037258, 39.059776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169590, 34.268387, 39.076706>,  <32.273567, 34.653603, 39.104923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169590, 34.268387, 39.076706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257736, -0.001211, 0.966215,
		-0.930592, 0.269344, -0.247896,
		-0.259944, -0.963044, -0.070547,
		32.091606, 33.979473, 39.055542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773115, 34.586559, 39.580585>,  <32.273567, 34.653603, 39.104923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773115, 34.586559, 39.580585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861080, 34.204830, 39.499691>,  <31.913860, 33.975792, 39.451157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861080, 34.204830, 39.499691>,  <31.773115, 34.586559, 39.580585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861080, 34.204830, 39.499691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140487, -0.236129, 0.961512,
		-0.965350, -0.183039, -0.185999,
		0.219914, -0.954327, -0.202233,
		31.927053, 33.918533, 39.439022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512270, 34.338799, 40.092529>,  <31.773115, 34.586559, 39.580585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512270, 34.338799, 40.092529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749434, 34.038891, 39.975021>,  <31.891731, 33.858944, 39.904518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749434, 34.038891, 39.975021>,  <31.512270, 34.338799, 40.092529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749434, 34.038891, 39.975021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015060, -0.375070, 0.926874,
		-0.805129, -0.545128, -0.233674,
		0.592909, -0.749773, -0.293770,
		31.927305, 33.813957, 39.886890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281105, 33.838692, 40.511162>,  <31.512270, 34.338799, 40.092529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281105, 33.838692, 40.511162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636507, 33.716492, 40.374210>,  <31.849749, 33.643173, 40.292038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636507, 33.716492, 40.374210>,  <31.281105, 33.838692, 40.511162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636507, 33.716492, 40.374210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173743, -0.466619, 0.867226,
		-0.424698, -0.830023, -0.361516,
		0.888507, -0.305498, -0.342383,
		31.903059, 33.624844, 40.271496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378984, 33.135960, 40.786900>,  <31.281105, 33.838692, 40.511162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378984, 33.135960, 40.786900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741848, 33.291012, 40.721405>,  <31.959566, 33.384045, 40.682110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741848, 33.291012, 40.721405>,  <31.378984, 33.135960, 40.786900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741848, 33.291012, 40.721405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326654, -0.403422, 0.854721,
		0.265261, -0.828851, -0.492588,
		0.907157, 0.387630, -0.163735,
		32.013996, 33.407299, 40.672283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821550, 32.549961, 41.004150>,  <31.378984, 33.135960, 40.786900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821550, 32.549961, 41.004150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037518, 32.886642, 41.005993>,  <32.167099, 33.088654, 41.007099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037518, 32.886642, 41.005993>,  <31.821550, 32.549961, 41.004150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037518, 32.886642, 41.005993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425904, -0.277911, 0.861029,
		0.726014, -0.462921, -0.508535,
		0.539916, 0.841706, 0.004607,
		32.199493, 33.139153, 41.007374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366344, 32.352451, 41.380871>,  <31.821550, 32.549961, 41.004150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366344, 32.352451, 41.380871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375839, 32.752220, 41.371174>,  <32.381535, 32.992081, 41.365356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375839, 32.752220, 41.371174>,  <32.366344, 32.352451, 41.380871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375839, 32.752220, 41.371174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341780, 0.014674, 0.939665,
		0.939480, -0.030591, -0.341235,
		0.023738, 0.999424, -0.024241,
		32.382961, 33.052048, 41.363903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950695, 32.543335, 41.748730>,  <32.366344, 32.352451, 41.380871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950695, 32.543335, 41.748730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767033, 32.898430, 41.735432>,  <32.656837, 33.111485, 41.727451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767033, 32.898430, 41.735432>,  <32.950695, 32.543335, 41.748730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767033, 32.898430, 41.735432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265088, 0.172638, 0.948644,
		0.847884, 0.426759, -0.314595,
		-0.459153, 0.887735, -0.033248,
		32.629288, 33.164749, 41.725456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437271, 33.068787, 42.038177>,  <32.950695, 32.543335, 41.748730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437271, 33.068787, 42.038177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061539, 33.201900, 42.071445>,  <32.836102, 33.281769, 42.091404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061539, 33.201900, 42.071445>,  <33.437271, 33.068787, 42.038177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061539, 33.201900, 42.071445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176667, 0.261518, 0.948893,
		0.294031, 0.906013, -0.304444,
		-0.939327, 0.332789, 0.083168,
		32.779739, 33.301739, 42.096397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561783, 33.752750, 42.261227>,  <33.437271, 33.068787, 42.038177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561783, 33.752750, 42.261227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182873, 33.654255, 42.343239>,  <32.955528, 33.595158, 42.392445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182873, 33.654255, 42.343239>,  <33.561783, 33.752750, 42.261227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182873, 33.654255, 42.343239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087075, 0.417958, 0.904284,
		-0.308363, 0.874458, -0.374480,
		-0.947275, -0.246240, 0.205027,
		32.898689, 33.580383, 42.404747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305603, 34.362057, 42.598957>,  <33.561783, 33.752750, 42.261227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305603, 34.362057, 42.598957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051888, 34.072586, 42.707741>,  <32.899658, 33.898903, 42.773010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051888, 34.072586, 42.707741>,  <33.305603, 34.362057, 42.598957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051888, 34.072586, 42.707741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109212, 0.264379, 0.958215,
		-0.765340, 0.637490, -0.088659,
		-0.634292, -0.723678, 0.271961,
		32.861599, 33.855484, 42.789330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807255, 34.698132, 42.981266>,  <33.305603, 34.362057, 42.598957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807255, 34.698132, 42.981266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801819, 34.311790, 43.084755>,  <32.798557, 34.079987, 43.146851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801819, 34.311790, 43.084755>,  <32.807255, 34.698132, 42.981266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801819, 34.311790, 43.084755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244132, 0.247713, 0.937570,
		-0.969647, 0.075905, 0.232430,
		-0.013590, -0.965856, 0.258725,
		32.797741, 34.022034, 43.162373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618786, 34.741810, 43.611965>,  <32.807255, 34.698132, 42.981266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618786, 34.741810, 43.611965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753029, 34.365150, 43.601692>,  <32.833576, 34.139153, 43.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753029, 34.365150, 43.601692>,  <32.618786, 34.741810, 43.611965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753029, 34.365150, 43.601692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260896, 0.066717, 0.963059,
		-0.905152, -0.329911, 0.268064,
		0.335608, -0.941652, -0.025684,
		32.853710, 34.082657, 43.593987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243881, 34.294540, 44.147331>,  <32.618786, 34.741810, 43.611965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243881, 34.294540, 44.147331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607929, 34.142864, 44.080532>,  <32.826359, 34.051857, 44.040451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607929, 34.142864, 44.080532>,  <32.243881, 34.294540, 44.147331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607929, 34.142864, 44.080532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197603, 0.042976, 0.979340,
		-0.364181, -0.924320, 0.114043,
		0.910124, -0.379192, -0.166997,
		32.880966, 34.029106, 44.030434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349316, 33.757446, 44.650646>,  <32.243881, 34.294540, 44.147331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349316, 33.757446, 44.650646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729965, 33.827026, 44.549339>,  <32.958355, 33.868774, 44.488556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729965, 33.827026, 44.549339>,  <32.349316, 33.757446, 44.650646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729965, 33.827026, 44.549339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266155, -0.054841, 0.962369,
		0.153520, -0.983225, -0.098487,
		0.951626, 0.173956, -0.253271,
		33.015453, 33.879211, 44.473358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800541, 33.485806, 45.155388>,  <32.349316, 33.757446, 44.650646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800541, 33.485806, 45.155388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062187, 33.728355, 44.974525>,  <33.219173, 33.873886, 44.866009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062187, 33.728355, 44.974525>,  <32.800541, 33.485806, 45.155388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062187, 33.728355, 44.974525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411919, 0.215800, 0.885298,
		0.634396, -0.765339, -0.108618,
		0.654114, 0.606371, -0.452161,
		33.258423, 33.910267, 44.838879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388268, 33.282227, 45.495068>,  <32.800541, 33.485806, 45.155388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388268, 33.282227, 45.495068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429050, 33.652031, 45.348160>,  <33.453522, 33.873913, 45.260014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429050, 33.652031, 45.348160>,  <33.388268, 33.282227, 45.495068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429050, 33.652031, 45.348160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286477, 0.326267, 0.900822,
		0.952647, -0.197060, -0.231585,
		0.101957, 0.924509, -0.367270,
		33.459637, 33.929382, 45.237980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081249, 33.578896, 45.706688>,  <33.388268, 33.282227, 45.495068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081249, 33.578896, 45.706688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873772, 33.902424, 45.595867>,  <33.749283, 34.096542, 45.529373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873772, 33.902424, 45.595867>,  <34.081249, 33.578896, 45.706688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873772, 33.902424, 45.595867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479200, 0.543410, 0.689256,
		0.708039, 0.224752, -0.669453,
		-0.518699, 0.808822, -0.277054,
		33.718163, 34.145069, 45.512753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596596, 34.098244, 45.742832>,  <34.081249, 33.578896, 45.706688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596596, 34.098244, 45.742832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227913, 34.249973, 45.775265>,  <34.006702, 34.341011, 45.794724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227913, 34.249973, 45.775265>,  <34.596596, 34.098244, 45.742832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227913, 34.249973, 45.775265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245255, 0.407959, 0.879443,
		0.300515, 0.830472, -0.469048,
		-0.921705, 0.379322, 0.081080,
		33.951401, 34.363770, 45.799587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206020, 34.251850, 45.305229>,  <34.596596, 34.098244, 45.742832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206020, 34.251850, 45.305229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562733, 34.105179, 45.411270>,  <35.776760, 34.017178, 45.474895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562733, 34.105179, 45.411270>,  <35.206020, 34.251850, 45.305229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562733, 34.105179, 45.411270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108381, -0.395740, -0.911945,
		0.439300, 0.841985, -0.313172,
		0.891779, -0.366675, 0.265104,
		35.830265, 33.995174, 45.490803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637562, 34.409664, 44.771336>,  <35.206020, 34.251850, 45.305229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637562, 34.409664, 44.771336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841293, 34.122059, 44.960480>,  <35.963531, 33.949493, 45.073967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841293, 34.122059, 44.960480>,  <35.637562, 34.409664, 44.771336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841293, 34.122059, 44.960480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143171, -0.471016, -0.870429,
		0.848577, 0.511037, -0.136962,
		0.509333, -0.719017, 0.472859,
		35.994095, 33.906353, 45.102337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243011, 34.412384, 44.387241>,  <35.637562, 34.409664, 44.771336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243011, 34.412384, 44.387241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208164, 34.063156, 44.579140>,  <36.187256, 33.853619, 44.694279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208164, 34.063156, 44.579140>,  <36.243011, 34.412384, 44.387241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208164, 34.063156, 44.579140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272158, -0.484116, -0.831602,
		0.958301, 0.058123, 0.279786,
		-0.087114, -0.873071, 0.479748,
		36.182030, 33.801235, 44.723064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794113, 34.103149, 44.363075>,  <36.243011, 34.412384, 44.387241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794113, 34.103149, 44.363075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543949, 33.797413, 44.425865>,  <36.393852, 33.613972, 44.463539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543949, 33.797413, 44.425865>,  <36.794113, 34.103149, 44.363075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543949, 33.797413, 44.425865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258713, -0.392909, -0.882434,
		0.736159, -0.511273, 0.443475,
		-0.625410, -0.764344, 0.156970,
		36.356327, 33.568111, 44.472958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145382, 33.525681, 44.168404>,  <36.794113, 34.103149, 44.363075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145382, 33.525681, 44.168404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769821, 33.388031, 44.166084>,  <36.544483, 33.305443, 44.164692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769821, 33.388031, 44.166084>,  <37.145382, 33.525681, 44.168404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769821, 33.388031, 44.166084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185671, -0.492259, -0.850416,
		0.289796, -0.799537, 0.526079,
		-0.938906, -0.344125, -0.005796,
		36.488148, 33.284794, 44.164345>
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
