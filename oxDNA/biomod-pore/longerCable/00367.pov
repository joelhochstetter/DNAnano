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
	<24.314701, 35.220890, 35.154964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403704, 34.866123, 34.993042>,  <24.457106, 34.653263, 34.895889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403704, 34.866123, 34.993042>,  <24.314701, 35.220890, 35.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403704, 34.866123, 34.993042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754307, -0.419668, 0.504876,
		-0.617667, 0.193007, -0.762388,
		0.222505, -0.886920, -0.404802,
		24.470455, 34.600048, 34.871601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303478, 35.911343, 35.290882>,  <24.314701, 35.220890, 35.154964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303478, 35.911343, 35.290882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626024, 35.946487, 35.524822>,  <24.819551, 35.967575, 35.665188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626024, 35.946487, 35.524822>,  <24.303478, 35.911343, 35.290882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626024, 35.946487, 35.524822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465917, 0.514716, -0.719714,
		-0.364271, 0.852846, 0.374112,
		0.806367, 0.087866, 0.584852,
		24.867935, 35.972847, 35.700279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.428825, 36.557335, 35.397610>,  <24.303478, 35.911343, 35.290882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.428825, 36.557335, 35.397610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785351, 36.377571, 35.421581>,  <24.999266, 36.269714, 35.435966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785351, 36.377571, 35.421581>,  <24.428825, 36.557335, 35.397610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785351, 36.377571, 35.421581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295694, 0.475999, -0.828245,
		0.343693, 0.755948, 0.557152,
		0.891314, -0.449409, 0.059931,
		25.052746, 36.242748, 35.439560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979696, 37.055660, 35.439472>,  <24.428825, 36.557335, 35.397610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979696, 37.055660, 35.439472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145826, 36.727642, 35.281975>,  <25.245504, 36.530830, 35.187477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145826, 36.727642, 35.281975>,  <24.979696, 37.055660, 35.439472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145826, 36.727642, 35.281975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348698, 0.543297, -0.763700,
		0.840188, 0.179883, 0.511592,
		0.415323, -0.820043, -0.393747,
		25.270424, 36.481628, 35.163849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624289, 37.165001, 35.242668>,  <24.979696, 37.055660, 35.439472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624289, 37.165001, 35.242668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558245, 36.858143, 34.994724>,  <25.518620, 36.674026, 34.845959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558245, 36.858143, 34.994724>,  <25.624289, 37.165001, 35.242668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558245, 36.858143, 34.994724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429938, 0.509647, -0.745260,
		0.887633, -0.389550, 0.245678,
		-0.165107, -0.767144, -0.619862,
		25.508713, 36.627998, 34.808765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256960, 37.036503, 34.860752>,  <25.624289, 37.165001, 35.242668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256960, 37.036503, 34.860752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949512, 36.889236, 34.651493>,  <25.765045, 36.800877, 34.525940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949512, 36.889236, 34.651493>,  <26.256960, 37.036503, 34.860752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949512, 36.889236, 34.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320037, 0.486783, -0.812785,
		0.553897, -0.792147, -0.256323,
		-0.768618, -0.368166, -0.523144,
		25.718927, 36.778786, 34.494549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476082, 36.499207, 34.222618>,  <26.256960, 37.036503, 34.860752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476082, 36.499207, 34.222618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136112, 36.701401, 34.163136>,  <25.932131, 36.822716, 34.127445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136112, 36.701401, 34.163136>,  <26.476082, 36.499207, 34.222618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136112, 36.701401, 34.163136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416267, 0.471132, -0.777661,
		-0.323033, -0.722856, -0.610843,
		-0.849925, 0.505484, -0.148710,
		25.881134, 36.853046, 34.118523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236010, 36.326385, 33.502186>,  <26.476082, 36.499207, 34.222618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236010, 36.326385, 33.502186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110353, 36.681400, 33.637005>,  <26.034960, 36.894409, 33.717896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110353, 36.681400, 33.637005>,  <26.236010, 36.326385, 33.502186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110353, 36.681400, 33.637005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345710, 0.437586, -0.830062,
		-0.884195, -0.144234, -0.444292,
		-0.314139, 0.887533, 0.337048,
		26.016111, 36.947659, 33.738121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980318, 36.664879, 32.880081>,  <26.236010, 36.326385, 33.502186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980318, 36.664879, 32.880081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045664, 36.944118, 33.158928>,  <26.084871, 37.111664, 33.326237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045664, 36.944118, 33.158928>,  <25.980318, 36.664879, 32.880081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045664, 36.944118, 33.158928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564437, 0.513404, -0.646396,
		-0.809150, 0.499076, -0.310161,
		0.163363, 0.698098, 0.697117,
		26.094673, 37.153549, 33.368065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933971, 37.153839, 32.412277>,  <25.980318, 36.664879, 32.880081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933971, 37.153839, 32.412277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083458, 37.280670, 32.760941>,  <26.173149, 37.356770, 32.970139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083458, 37.280670, 32.760941>,  <25.933971, 37.153839, 32.412277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083458, 37.280670, 32.760941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655700, 0.574368, -0.490059,
		-0.656045, 0.754692, 0.006739,
		0.373714, 0.317082, 0.871663,
		26.195572, 37.375793, 33.022438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995951, 37.817463, 32.321075>,  <25.933971, 37.153839, 32.412277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995951, 37.817463, 32.321075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246771, 37.740364, 32.622978>,  <26.397263, 37.694107, 32.804119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246771, 37.740364, 32.622978>,  <25.995951, 37.817463, 32.321075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246771, 37.740364, 32.622978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722124, 0.507193, -0.470417,
		-0.292136, 0.840003, 0.457222,
		0.627051, -0.192745, 0.754755,
		26.434887, 37.682541, 32.849403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415226, 38.267757, 32.213200>,  <25.995951, 37.817463, 32.321075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415226, 38.267757, 32.213200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621651, 38.129272, 32.526585>,  <26.745506, 38.046181, 32.714615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621651, 38.129272, 32.526585>,  <26.415226, 38.267757, 32.213200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621651, 38.129272, 32.526585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746334, 0.630586, -0.212948,
		-0.420316, 0.694620, 0.583814,
		0.516063, -0.346215, 0.783463,
		26.776470, 38.025410, 32.761623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111713, 38.537571, 32.174965>,  <26.415226, 38.267757, 32.213200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111713, 38.537571, 32.174965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484632, 38.393051, 32.168201>,  <27.708384, 38.306339, 32.164143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484632, 38.393051, 32.168201>,  <27.111713, 38.537571, 32.174965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484632, 38.393051, 32.168201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253530, -0.686120, 0.681881,
		-0.257966, -0.631428, -0.731267,
		0.932296, -0.361300, -0.016910,
		27.764320, 38.284660, 32.163128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071972, 37.863071, 31.973904>,  <27.111713, 38.537571, 32.174965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071972, 37.863071, 31.973904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378994, 37.905891, 32.226696>,  <27.563208, 37.931583, 32.378372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378994, 37.905891, 32.226696>,  <27.071972, 37.863071, 31.973904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378994, 37.905891, 32.226696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468540, -0.579125, 0.667147,
		0.437411, -0.808180, -0.394356,
		0.767556, 0.107046, 0.631980,
		27.609261, 37.938004, 32.416290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338495, 37.184540, 32.220570>,  <27.071972, 37.863071, 31.973904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338495, 37.184540, 32.220570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424019, 37.478729, 32.477745>,  <27.475334, 37.655243, 32.632050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424019, 37.478729, 32.477745>,  <27.338495, 37.184540, 32.220570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424019, 37.478729, 32.477745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657584, -0.378349, 0.651487,
		0.722404, -0.562079, 0.402740,
		0.213811, 0.735472, 0.642936,
		27.488163, 37.699371, 32.670624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486990, 36.902863, 32.960865>,  <27.338495, 37.184540, 32.220570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486990, 36.902863, 32.960865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343582, 37.275040, 32.991188>,  <27.257538, 37.498344, 33.009380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343582, 37.275040, 32.991188>,  <27.486990, 36.902863, 32.960865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343582, 37.275040, 32.991188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766009, -0.339626, 0.545788,
		0.533568, 0.137610, 0.834487,
		-0.358519, 0.930440, 0.075803,
		27.236027, 37.554173, 33.013927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304441, 37.150444, 33.665291>,  <27.486990, 36.902863, 32.960865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304441, 37.150444, 33.665291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060307, 37.365273, 33.432381>,  <26.913826, 37.494167, 33.292633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060307, 37.365273, 33.432381>,  <27.304441, 37.150444, 33.665291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060307, 37.365273, 33.432381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770032, -0.229799, 0.595184,
		0.185848, 0.811634, 0.553814,
		-0.610337, 0.537068, -0.582277,
		26.877205, 37.526394, 33.257698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943409, 37.548389, 34.124672>,  <27.304441, 37.150444, 33.665291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943409, 37.548389, 34.124672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710424, 37.529022, 33.800106>,  <26.570633, 37.517403, 33.605366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710424, 37.529022, 33.800106>,  <26.943409, 37.548389, 34.124672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710424, 37.529022, 33.800106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804419, -0.109117, 0.583955,
		-0.116814, 0.992849, 0.024606,
		-0.582464, -0.048421, -0.811413,
		26.535685, 37.514496, 33.556683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362726, 38.052063, 34.247612>,  <26.943409, 37.548389, 34.124672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362726, 38.052063, 34.247612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283142, 37.774658, 33.970642>,  <26.235392, 37.608215, 33.804459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283142, 37.774658, 33.970642>,  <26.362726, 38.052063, 34.247612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283142, 37.774658, 33.970642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878262, -0.187313, 0.439965,
		-0.434822, 0.695669, -0.571817,
		-0.198961, -0.693512, -0.692428,
		26.223454, 37.566605, 33.762913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620523, 38.102440, 34.252140>,  <26.362726, 38.052063, 34.247612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620523, 38.102440, 34.252140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725510, 37.741627, 34.115059>,  <25.788502, 37.525139, 34.032810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725510, 37.741627, 34.115059>,  <25.620523, 38.102440, 34.252140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725510, 37.741627, 34.115059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760943, -0.411877, 0.501322,
		-0.593362, 0.129199, -0.794500,
		0.262466, -0.902034, -0.342705,
		25.804249, 37.471016, 34.012249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068270, 37.843910, 33.730923>,  <25.620523, 38.102440, 34.252140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068270, 37.843910, 33.730923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346739, 37.560520, 33.684620>,  <25.513821, 37.390484, 33.656837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346739, 37.560520, 33.684620>,  <25.068270, 37.843910, 33.730923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346739, 37.560520, 33.684620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561653, -0.637976, 0.526814,
		-0.447088, -0.301737, -0.842061,
		0.696174, -0.708478, -0.115760,
		25.555592, 37.347977, 33.649891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706938, 37.230343, 33.690990>,  <25.068270, 37.843910, 33.730923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706938, 37.230343, 33.690990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067064, 37.105797, 33.812637>,  <25.283140, 37.031071, 33.885624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067064, 37.105797, 33.812637>,  <24.706938, 37.230343, 33.690990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067064, 37.105797, 33.812637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433680, -0.582704, 0.687298,
		-0.036788, -0.750674, -0.659648,
		0.900316, -0.311360, 0.304115,
		25.337158, 37.012390, 33.903873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535133, 36.577095, 33.913177>,  <24.706938, 37.230343, 33.690990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535133, 36.577095, 33.913177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883234, 36.662289, 34.090851>,  <25.092094, 36.713406, 34.197456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883234, 36.662289, 34.090851>,  <24.535133, 36.577095, 33.913177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883234, 36.662289, 34.090851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270828, -0.546338, 0.792570,
		0.411477, -0.810034, -0.417770,
		0.870252, 0.212981, 0.444185,
		25.144310, 36.726181, 34.224106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682867, 36.033085, 34.308323>,  <24.535133, 36.577095, 33.913177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682867, 36.033085, 34.308323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882311, 36.332409, 34.483326>,  <25.001978, 36.512005, 34.588329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882311, 36.332409, 34.483326>,  <24.682867, 36.033085, 34.308323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882311, 36.332409, 34.483326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269217, -0.346081, 0.898749,
		0.823961, -0.565910, 0.028900,
		0.498609, 0.748314, 0.437509,
		25.031895, 36.556904, 34.614578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236597, 35.588428, 34.150482>,  <24.682867, 36.033085, 34.308323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236597, 35.588428, 34.150482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331093, 35.917290, 34.357655>,  <25.387791, 36.114605, 34.481956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331093, 35.917290, 34.357655>,  <25.236597, 35.588428, 34.150482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331093, 35.917290, 34.357655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022483, -0.528252, 0.848790,
		0.971434, -0.212164, -0.106310,
		0.236241, 0.822153, 0.517932,
		25.401966, 36.163937, 34.513035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747898, 35.366444, 34.664455>,  <25.236597, 35.588428, 34.150482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747898, 35.366444, 34.664455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589153, 35.711487, 34.789940>,  <25.493906, 35.918510, 34.865231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589153, 35.711487, 34.789940>,  <25.747898, 35.366444, 34.664455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589153, 35.711487, 34.789940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161132, -0.401945, 0.901375,
		0.903624, 0.307172, 0.298510,
		-0.396862, 0.862604, 0.313712,
		25.470095, 35.970268, 34.884052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194607, 35.478226, 35.247208>,  <25.747898, 35.366444, 34.664455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194607, 35.478226, 35.247208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865410, 35.693924, 35.318645>,  <25.667891, 35.823341, 35.361507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865410, 35.693924, 35.318645>,  <26.194607, 35.478226, 35.247208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865410, 35.693924, 35.318645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030921, -0.356456, 0.933800,
		0.567209, 0.762989, 0.310035,
		-0.822994, 0.539246, 0.178593,
		25.618511, 35.855698, 35.372223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324368, 35.978092, 35.934662>,  <26.194607, 35.478226, 35.247208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324368, 35.978092, 35.934662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966969, 35.828285, 35.835548>,  <25.752529, 35.738400, 35.776081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966969, 35.828285, 35.835548>,  <26.324368, 35.978092, 35.934662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966969, 35.828285, 35.835548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100551, -0.370911, 0.923209,
		-0.437663, 0.849801, 0.293750,
		-0.893499, -0.374517, -0.247783,
		25.698919, 35.715931, 35.761215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102053, 35.874466, 36.669949>,  <26.324368, 35.978092, 35.934662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102053, 35.874466, 36.669949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969973, 36.025261, 36.323803>,  <25.890724, 36.115738, 36.116116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969973, 36.025261, 36.323803>,  <26.102053, 35.874466, 36.669949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969973, 36.025261, 36.323803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878666, -0.212168, -0.427705,
		-0.344840, -0.901592, -0.261184,
		-0.330200, 0.376983, -0.865362,
		25.870913, 36.138355, 36.064194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104000, 35.108044, 36.830643>,  <26.102053, 35.874466, 36.669949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104000, 35.108044, 36.830643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476547, 35.150841, 36.691441>,  <26.700075, 35.176521, 36.607922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476547, 35.150841, 36.691441>,  <26.104000, 35.108044, 36.830643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476547, 35.150841, 36.691441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256871, -0.870493, 0.419832,
		-0.258013, -0.480410, -0.838233,
		0.931368, 0.106996, -0.348002,
		26.755959, 35.182941, 36.587040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228188, 34.531986, 36.472397>,  <26.104000, 35.108044, 36.830643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228188, 34.531986, 36.472397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582720, 34.695171, 36.560017>,  <26.795439, 34.793083, 36.612591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582720, 34.695171, 36.560017>,  <26.228188, 34.531986, 36.472397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582720, 34.695171, 36.560017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279110, -0.848153, 0.450261,
		0.369480, -0.337940, -0.865610,
		0.886330, 0.407963, 0.219053,
		26.848619, 34.817562, 36.625732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654581, 34.040531, 36.363384>,  <26.228188, 34.531986, 36.472397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654581, 34.040531, 36.363384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892008, 34.266453, 36.592705>,  <27.034464, 34.402004, 36.730297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892008, 34.266453, 36.592705>,  <26.654581, 34.040531, 36.363384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892008, 34.266453, 36.592705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282224, -0.813211, 0.508958,
		0.753677, -0.140300, -0.642096,
		0.593566, 0.564805, 0.573302,
		27.070078, 34.435894, 36.764694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279221, 33.655270, 36.363194>,  <26.654581, 34.040531, 36.363384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279221, 33.655270, 36.363194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268005, 33.895004, 36.683197>,  <27.261276, 34.038845, 36.875198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268005, 33.895004, 36.683197>,  <27.279221, 33.655270, 36.363194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268005, 33.895004, 36.683197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360059, -0.740542, 0.567411,
		0.932508, 0.303958, -0.195034,
		-0.028038, 0.599339, 0.800004,
		27.259594, 34.074806, 36.923199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745277, 33.237762, 36.829033>,  <27.279221, 33.655270, 36.363194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745277, 33.237762, 36.829033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552956, 33.515194, 37.043610>,  <27.437563, 33.681652, 37.172356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552956, 33.515194, 37.043610>,  <27.745277, 33.237762, 36.829033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552956, 33.515194, 37.043610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083806, -0.572649, 0.815506,
		0.872813, 0.437056, 0.217206,
		-0.480805, 0.693581, 0.536444,
		27.408714, 33.723267, 37.204544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134212, 33.399326, 37.400627>,  <27.745277, 33.237762, 36.829033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134212, 33.399326, 37.400627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748808, 33.451878, 37.493908>,  <27.517565, 33.483410, 37.549877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748808, 33.451878, 37.493908>,  <28.134212, 33.399326, 37.400627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748808, 33.451878, 37.493908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132240, -0.523852, 0.841482,
		0.232718, 0.841617, 0.487364,
		-0.963512, 0.131379, 0.233205,
		27.459755, 33.491291, 37.563869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137066, 33.824368, 38.019890>,  <28.134212, 33.399326, 37.400627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137066, 33.824368, 38.019890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804087, 33.613483, 37.951672>,  <27.604300, 33.486954, 37.910740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804087, 33.613483, 37.951672>,  <28.137066, 33.824368, 38.019890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804087, 33.613483, 37.951672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043870, -0.244111, 0.968754,
		-0.552367, 0.813918, 0.180081,
		-0.832446, -0.527208, -0.170546,
		27.554354, 33.455322, 37.900509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890259, 33.755539, 38.720154>,  <28.137066, 33.824368, 38.019890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890259, 33.755539, 38.720154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588242, 33.618587, 38.496479>,  <27.407032, 33.536419, 38.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588242, 33.618587, 38.496479>,  <27.890259, 33.755539, 38.720154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588242, 33.618587, 38.496479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344021, -0.519165, 0.782379,
		-0.558178, 0.783101, 0.274207,
		-0.755041, -0.342374, -0.559190,
		27.361729, 33.515877, 38.328724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397724, 33.775059, 39.247986>,  <27.890259, 33.755539, 38.720154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397724, 33.775059, 39.247986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259178, 33.537361, 38.957634>,  <27.176050, 33.394741, 38.783424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259178, 33.537361, 38.957634>,  <27.397724, 33.775059, 39.247986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259178, 33.537361, 38.957634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118740, -0.739780, 0.662288,
		-0.930555, 0.315584, 0.185672,
		-0.346364, -0.594249, -0.725879,
		27.155270, 33.359085, 38.739872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789709, 33.421303, 39.588047>,  <27.397724, 33.775059, 39.247986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789709, 33.421303, 39.588047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938650, 33.204029, 39.287033>,  <27.028015, 33.073666, 39.106426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938650, 33.204029, 39.287033>,  <26.789709, 33.421303, 39.588047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938650, 33.204029, 39.287033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132135, -0.833604, 0.536326,
		-0.918637, -0.100267, -0.382169,
		0.372353, -0.543186, -0.752530,
		27.050356, 33.041073, 39.061275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284353, 32.947266, 39.472153>,  <26.789709, 33.421303, 39.588047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284353, 32.947266, 39.472153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646572, 32.806602, 39.377228>,  <26.863903, 32.722202, 39.320274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646572, 32.806602, 39.377228>,  <26.284353, 32.947266, 39.472153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646572, 32.806602, 39.377228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239147, -0.885159, 0.399128,
		-0.350415, -0.304677, -0.885653,
		0.905548, -0.351662, -0.237310,
		26.918236, 32.701103, 39.306034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305895, 32.325348, 39.116154>,  <26.284353, 32.947266, 39.472153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305895, 32.325348, 39.116154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661861, 32.325539, 39.298603>,  <26.875441, 32.325653, 39.408073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661861, 32.325539, 39.298603>,  <26.305895, 32.325348, 39.116154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661861, 32.325539, 39.298603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153438, -0.941409, 0.300341,
		0.429542, -0.337265, -0.837703,
		0.889916, 0.000474, 0.456124,
		26.928837, 32.325680, 39.435440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795736, 31.771524, 38.851929>,  <26.305895, 32.325348, 39.116154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795736, 31.771524, 38.851929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806725, 31.879568, 39.236904>,  <26.813318, 31.944395, 39.467888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806725, 31.879568, 39.236904>,  <26.795736, 31.771524, 38.851929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806725, 31.879568, 39.236904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369302, -0.891944, 0.260869,
		0.928903, -0.362597, 0.075249,
		0.027473, 0.270111, 0.962437,
		26.814966, 31.960602, 39.525635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242876, 32.178226, 38.303082>,  <26.795736, 31.771524, 38.851929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242876, 32.178226, 38.303082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994432, 32.449314, 38.460522>,  <26.845367, 32.611965, 38.554985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994432, 32.449314, 38.460522>,  <27.242876, 32.178226, 38.303082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994432, 32.449314, 38.460522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099095, 0.566101, -0.818358,
		-0.777435, -0.469284, -0.418768,
		-0.621107, 0.677718, 0.393603,
		26.808100, 32.652630, 38.578602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804274, 32.545067, 37.768776>,  <27.242876, 32.178226, 38.303082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804274, 32.545067, 37.768776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876551, 32.804104, 38.064877>,  <26.919916, 32.959526, 38.242538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876551, 32.804104, 38.064877>,  <26.804274, 32.545067, 37.768776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876551, 32.804104, 38.064877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286336, 0.685402, -0.669504,
		-0.940937, 0.332934, -0.061584,
		0.180691, 0.647595, 0.740251,
		26.930758, 32.998383, 38.286953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295282, 33.170387, 37.704411>,  <26.804274, 32.545067, 37.768776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295282, 33.170387, 37.704411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648581, 33.256660, 37.870956>,  <26.860559, 33.308422, 37.970882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648581, 33.256660, 37.870956>,  <26.295282, 33.170387, 37.704411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648581, 33.256660, 37.870956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099074, 0.782061, -0.615277,
		-0.458326, 0.584691, 0.669383,
		0.883245, 0.215679, 0.416366,
		26.913553, 33.321365, 37.995865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281593, 33.811550, 37.889523>,  <26.295282, 33.170387, 37.704411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281593, 33.811550, 37.889523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666010, 33.730362, 37.814472>,  <26.896660, 33.681648, 37.769440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666010, 33.730362, 37.814472>,  <26.281593, 33.811550, 37.889523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666010, 33.730362, 37.814472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079609, 0.853303, -0.515302,
		0.264696, 0.480289, 0.836217,
		0.961040, -0.202969, -0.187630,
		26.954323, 33.669472, 37.758183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720619, 34.374828, 38.081398>,  <26.281593, 33.811550, 37.889523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720619, 34.374828, 38.081398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911133, 34.168682, 37.796429>,  <27.025440, 34.044994, 37.625446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911133, 34.168682, 37.796429>,  <26.720619, 34.374828, 38.081398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911133, 34.168682, 37.796429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211174, 0.853557, -0.476284,
		0.853557, 0.076401, 0.515368,
		0.476284, -0.515368, -0.712425,
		27.054018, 34.014072, 37.582703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236145, 34.874313, 37.967030>,  <26.720619, 34.374828, 38.081398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236145, 34.874313, 37.967030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223330, 34.620560, 37.658089>,  <27.215639, 34.468307, 37.472725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223330, 34.620560, 37.658089>,  <27.236145, 34.874313, 37.967030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223330, 34.620560, 37.658089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045441, 0.771025, -0.635181,
		0.998453, -0.055447, 0.004124,
		-0.032040, -0.634386, -0.772352,
		27.213718, 34.430244, 37.426384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732208, 35.237938, 37.490372>,  <27.236145, 34.874313, 37.967030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732208, 35.237938, 37.490372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537828, 34.974842, 37.260159>,  <27.421200, 34.816986, 37.122032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537828, 34.974842, 37.260159>,  <27.732208, 35.237938, 37.490372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537828, 34.974842, 37.260159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015380, 0.651972, -0.758087,
		0.873851, -0.377245, -0.306711,
		-0.485951, -0.657737, -0.575528,
		27.392044, 34.777519, 37.087502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989929, 35.412361, 36.830273>,  <27.732208, 35.237938, 37.490372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989929, 35.412361, 36.830273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644243, 35.218212, 36.777283>,  <27.436832, 35.101723, 36.745487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644243, 35.218212, 36.777283>,  <27.989929, 35.412361, 36.830273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644243, 35.218212, 36.777283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178057, 0.541320, -0.821747,
		0.470558, -0.686580, -0.554241,
		-0.864217, -0.485367, -0.132472,
		27.384979, 35.072601, 36.737541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919497, 35.455830, 36.111923>,  <27.989929, 35.412361, 36.830273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919497, 35.455830, 36.111923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553381, 35.366539, 36.246040>,  <27.333712, 35.312965, 36.326511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553381, 35.366539, 36.246040>,  <27.919497, 35.455830, 36.111923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553381, 35.366539, 36.246040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399094, 0.389938, -0.829863,
		0.054501, -0.893376, -0.445992,
		-0.915289, -0.223221, 0.335290,
		27.278795, 35.299572, 36.346626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602184, 34.967636, 35.610855>,  <27.919497, 35.455830, 36.111923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602184, 34.967636, 35.610855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327103, 35.229580, 35.736221>,  <27.162054, 35.386745, 35.811440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327103, 35.229580, 35.736221>,  <27.602184, 34.967636, 35.610855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327103, 35.229580, 35.736221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044845, 0.392558, -0.918633,
		-0.724607, -0.645801, -0.240596,
		-0.687702, 0.654858, 0.313411,
		27.120792, 35.426037, 35.830246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657454, 34.942013, 34.938980>,  <27.602184, 34.967636, 35.610855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657454, 34.942013, 34.938980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766638, 34.610386, 35.134182>,  <27.832148, 34.411411, 35.251305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766638, 34.610386, 35.134182>,  <27.657454, 34.942013, 34.938980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766638, 34.610386, 35.134182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419377, 0.353984, 0.835953,
		-0.865804, -0.432839, -0.251067,
		0.272959, -0.829063, 0.488004,
		27.848526, 34.361668, 35.280582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000561, 35.532284, 34.546085>,  <27.657454, 34.942013, 34.938980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000561, 35.532284, 34.546085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132196, 35.814255, 34.797413>,  <28.211178, 35.983437, 34.948208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132196, 35.814255, 34.797413>,  <28.000561, 35.532284, 34.546085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132196, 35.814255, 34.797413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681582, -0.637838, 0.358621,
		0.653565, 0.310232, -0.690369,
		0.329088, 0.704925, 0.628317,
		28.230923, 36.025734, 34.985909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757431, 35.599846, 34.492222>,  <28.000561, 35.532284, 34.546085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757431, 35.599846, 34.492222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676531, 35.757767, 34.850716>,  <28.627991, 35.852520, 35.065811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676531, 35.757767, 34.850716>,  <28.757431, 35.599846, 34.492222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676531, 35.757767, 34.850716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663563, -0.617809, 0.421895,
		0.720263, 0.680033, -0.137023,
		-0.202249, 0.394799, 0.896231,
		28.615856, 35.876205, 35.119583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282022, 36.075142, 34.764091>,  <28.757431, 35.599846, 34.492222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282022, 36.075142, 34.764091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094538, 35.863457, 35.047005>,  <28.982046, 35.736446, 35.216751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094538, 35.863457, 35.047005>,  <29.282022, 36.075142, 34.764091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094538, 35.863457, 35.047005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874410, -0.164333, 0.456510,
		-0.125359, 0.832426, 0.539770,
		-0.468713, -0.529208, 0.707281,
		28.953924, 35.704693, 35.259190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385029, 36.375324, 35.413765>,  <29.282022, 36.075142, 34.764091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385029, 36.375324, 35.413765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318535, 35.981281, 35.431309>,  <29.278639, 35.744854, 35.441833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318535, 35.981281, 35.431309>,  <29.385029, 36.375324, 35.413765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318535, 35.981281, 35.431309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919764, -0.138867, 0.367084,
		-0.355528, 0.101359, 0.929153,
		-0.166236, -0.985110, 0.043855,
		29.268663, 35.685749, 35.444466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462952, 35.898670, 36.148388>,  <29.385029, 36.375324, 35.413765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462952, 35.898670, 36.148388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544096, 35.656921, 35.840210>,  <29.592783, 35.511871, 35.655304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544096, 35.656921, 35.840210>,  <29.462952, 35.898670, 36.148388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544096, 35.656921, 35.840210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911356, -0.171252, 0.374302,
		-0.358157, -0.778080, 0.516057,
		0.202862, -0.604371, -0.770444,
		29.604954, 35.475609, 35.609077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927467, 35.442513, 36.487083>,  <29.462952, 35.898670, 36.148388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927467, 35.442513, 36.487083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934301, 35.429035, 36.087368>,  <29.938402, 35.420948, 35.847538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934301, 35.429035, 36.087368>,  <29.927467, 35.442513, 36.487083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934301, 35.429035, 36.087368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980331, -0.195974, 0.023368,
		-0.196622, -0.980030, 0.029687,
		0.017084, -0.033698, -0.999286,
		29.939426, 35.418926, 35.787582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087978, 34.752338, 36.281956>,  <29.927467, 35.442513, 36.487083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087978, 34.752338, 36.281956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233606, 35.040012, 36.045238>,  <30.320984, 35.212616, 35.903206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233606, 35.040012, 36.045238>,  <30.087978, 34.752338, 36.281956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233606, 35.040012, 36.045238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930973, -0.299610, 0.208625,
		-0.027268, -0.626901, -0.778621,
		0.364070, 0.719186, -0.591797,
		30.342827, 35.255768, 35.867699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513191, 34.541660, 35.700348>,  <30.087978, 34.752338, 36.281956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513191, 34.541660, 35.700348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677683, 34.880581, 35.834789>,  <30.776379, 35.083935, 35.915455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677683, 34.880581, 35.834789>,  <30.513191, 34.541660, 35.700348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677683, 34.880581, 35.834789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820520, -0.504693, 0.268388,
		0.397036, 0.165410, -0.902775,
		0.411230, 0.847304, 0.336103,
		30.801052, 35.134773, 35.935619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275364, 34.626976, 35.390228>,  <30.513191, 34.541660, 35.700348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275364, 34.626976, 35.390228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280613, 34.832542, 35.733326>,  <31.283762, 34.955883, 35.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280613, 34.832542, 35.733326>,  <31.275364, 34.626976, 35.390228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280613, 34.832542, 35.733326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820624, -0.495661, 0.284423,
		0.571318, 0.700151, -0.428235,
		0.013120, 0.513915, 0.857741,
		31.284550, 34.986717, 35.990646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665291, 35.004395, 34.813709>,  <31.275364, 34.626976, 35.390228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665291, 35.004395, 34.813709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854637, 34.894676, 35.148537>,  <31.968245, 34.828846, 35.349434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854637, 34.894676, 35.148537>,  <31.665291, 35.004395, 34.813709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854637, 34.894676, 35.148537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646960, 0.753173, -0.119052,
		-0.597802, 0.597906, 0.533986,
		0.473366, -0.274298, 0.837070,
		31.996647, 34.812386, 35.399658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218063, 34.798237, 34.290073>,  <31.665291, 35.004395, 34.813709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218063, 34.798237, 34.290073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253145, 34.414650, 34.397919>,  <31.274195, 34.184498, 34.462624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253145, 34.414650, 34.397919>,  <31.218063, 34.798237, 34.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253145, 34.414650, 34.397919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338395, -0.225875, -0.913493,
		0.936908, 0.171351, 0.304700,
		0.087704, -0.958968, 0.269609,
		31.279457, 34.126961, 34.478802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910477, 34.546978, 34.066486>,  <31.218063, 34.798237, 34.290073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910477, 34.546978, 34.066486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636204, 34.258091, 34.102787>,  <31.471640, 34.084759, 34.124565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636204, 34.258091, 34.102787>,  <31.910477, 34.546978, 34.066486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636204, 34.258091, 34.102787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235210, -0.337822, -0.911347,
		0.688852, -0.603549, 0.401512,
		-0.685682, -0.722222, 0.090748,
		31.430500, 34.041424, 34.130013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211124, 33.802048, 33.883198>,  <31.910477, 34.546978, 34.066486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211124, 33.802048, 33.883198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845863, 33.910385, 33.761345>,  <31.626707, 33.975388, 33.688232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845863, 33.910385, 33.761345>,  <32.211124, 33.802048, 33.883198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845863, 33.910385, 33.761345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157902, -0.453961, -0.876919,
		-0.375798, -0.848861, 0.371768,
		-0.913150, 0.270842, -0.304635,
		31.571918, 33.991638, 33.669952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957335, 33.188698, 33.747322>,  <32.211124, 33.802048, 33.883198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957335, 33.188698, 33.747322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752943, 33.460667, 33.536945>,  <31.630308, 33.623848, 33.410721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752943, 33.460667, 33.536945>,  <31.957335, 33.188698, 33.747322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752943, 33.460667, 33.536945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254119, -0.465014, -0.848048,
		-0.821173, -0.566985, 0.064831,
		-0.510978, 0.679919, -0.525938,
		31.599649, 33.664642, 33.379166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388044, 32.892841, 33.327690>,  <31.957335, 33.188698, 33.747322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388044, 32.892841, 33.327690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534729, 33.220978, 33.152164>,  <31.622740, 33.417862, 33.046848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534729, 33.220978, 33.152164>,  <31.388044, 32.892841, 33.327690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534729, 33.220978, 33.152164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234166, -0.537879, -0.809847,
		-0.900384, 0.194223, -0.389342,
		0.366709, 0.820344, -0.438817,
		31.644741, 33.467079, 33.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085566, 32.891911, 32.640404>,  <31.388044, 32.892841, 33.327690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085566, 32.891911, 32.640404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418858, 33.108501, 32.595619>,  <31.618832, 33.238457, 32.568748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418858, 33.108501, 32.595619>,  <31.085566, 32.891911, 32.640404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418858, 33.108501, 32.595619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226028, -0.518352, -0.824756,
		-0.504620, 0.661905, -0.554294,
		0.833229, 0.541474, -0.111962,
		31.668827, 33.270943, 32.562031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140020, 33.050755, 31.938637>,  <31.085566, 32.891911, 32.640404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140020, 33.050755, 31.938637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501137, 33.158615, 32.072655>,  <31.717808, 33.223331, 32.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501137, 33.158615, 32.072655>,  <31.140020, 33.050755, 31.938637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501137, 33.158615, 32.072655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411763, -0.317024, -0.854369,
		-0.124164, 0.909277, -0.397239,
		0.902793, 0.269650, 0.335043,
		31.771975, 33.239510, 32.173168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343727, 33.491798, 31.410376>,  <31.140020, 33.050755, 31.938637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343727, 33.491798, 31.410376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642099, 33.327713, 31.620256>,  <31.821123, 33.229259, 31.746185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642099, 33.327713, 31.620256>,  <31.343727, 33.491798, 31.410376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642099, 33.327713, 31.620256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461095, -0.250418, -0.851283,
		0.480604, 0.876934, 0.002354,
		0.745930, -0.410216, 0.524702,
		31.865879, 33.204647, 31.777666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902536, 33.800991, 31.081718>,  <31.343727, 33.491798, 31.410376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902536, 33.800991, 31.081718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013264, 33.465347, 31.269020>,  <32.079700, 33.263962, 31.381401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013264, 33.465347, 31.269020>,  <31.902536, 33.800991, 31.081718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013264, 33.465347, 31.269020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562490, -0.253584, -0.786956,
		0.779086, 0.481233, 0.401796,
		0.276820, -0.839113, 0.468252,
		32.096310, 33.213612, 31.409496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575230, 33.706501, 30.828985>,  <31.902536, 33.800991, 31.081718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575230, 33.706501, 30.828985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465469, 33.343391, 30.955891>,  <32.399612, 33.125526, 31.032034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465469, 33.343391, 30.955891>,  <32.575230, 33.706501, 30.828985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465469, 33.343391, 30.955891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445740, -0.412413, -0.794501,
		0.852069, -0.076592, 0.517795,
		-0.274398, -0.907772, 0.317264,
		32.383148, 33.071060, 31.051069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198097, 33.260757, 30.713024>,  <32.575230, 33.706501, 30.828985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198097, 33.260757, 30.713024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900845, 32.996048, 30.752644>,  <32.722492, 32.837223, 30.776415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900845, 32.996048, 30.752644>,  <33.198097, 33.260757, 30.713024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900845, 32.996048, 30.752644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341895, -0.502761, -0.793939,
		0.575201, -0.556141, 0.599875,
		-0.743136, -0.661769, 0.099046,
		32.677902, 32.797516, 30.782358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467602, 32.681683, 30.773401>,  <33.198097, 33.260757, 30.713024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467602, 32.681683, 30.773401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102482, 32.603252, 30.630096>,  <32.883411, 32.556194, 30.544113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102482, 32.603252, 30.630096>,  <33.467602, 32.681683, 30.773401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102482, 32.603252, 30.630096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403068, -0.291128, -0.867629,
		0.065823, -0.936375, 0.344774,
		-0.912800, -0.196077, -0.358260,
		32.828644, 32.544430, 30.522617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538414, 32.118057, 30.281637>,  <33.467602, 32.681683, 30.773401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538414, 32.118057, 30.281637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175133, 32.256893, 30.188084>,  <32.957165, 32.340195, 30.131952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175133, 32.256893, 30.188084>,  <33.538414, 32.118057, 30.281637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175133, 32.256893, 30.188084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174067, -0.194954, -0.965243,
		-0.380619, -0.917346, 0.116642,
		-0.908202, 0.347087, -0.233883,
		32.902672, 32.361019, 30.117918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262222, 31.669397, 29.787291>,  <33.538414, 32.118057, 30.281637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262222, 31.669397, 29.787291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085892, 32.024048, 29.731348>,  <32.980091, 32.236839, 29.697783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085892, 32.024048, 29.731348>,  <33.262222, 31.669397, 29.787291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085892, 32.024048, 29.731348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300115, -0.001252, -0.953902,
		-0.845931, -0.462482, -0.265539,
		-0.440830, 0.886627, -0.139857,
		32.953644, 32.290035, 29.689390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052036, 31.573566, 29.132662>,  <33.262222, 31.669397, 29.787291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052036, 31.573566, 29.132662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961090, 31.961430, 29.168587>,  <32.906521, 32.194149, 29.190142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961090, 31.961430, 29.168587>,  <33.052036, 31.573566, 29.132662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961090, 31.961430, 29.168587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212311, 0.139366, -0.967213,
		-0.950384, -0.200842, -0.237556,
		-0.227364, 0.969660, 0.089811,
		32.892879, 32.252327, 29.195530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468513, 31.705996, 28.677834>,  <33.052036, 31.573566, 29.132662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468513, 31.705996, 28.677834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680904, 32.037189, 28.749956>,  <32.808338, 32.235905, 28.793230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680904, 32.037189, 28.749956>,  <32.468513, 31.705996, 28.677834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680904, 32.037189, 28.749956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089755, 0.156632, -0.983570,
		-0.842622, 0.538433, 0.008852,
		0.530973, 0.827983, 0.180309,
		32.840195, 32.285583, 28.804049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297115, 32.143036, 28.106922>,  <32.468513, 31.705996, 28.677834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297115, 32.143036, 28.106922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636402, 32.289715, 28.259792>,  <32.839973, 32.377724, 28.351515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636402, 32.289715, 28.259792>,  <32.297115, 32.143036, 28.106922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636402, 32.289715, 28.259792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343314, 0.168794, -0.923928,
		-0.403311, 0.914900, 0.017282,
		0.848219, 0.366697, 0.382175,
		32.890869, 32.399723, 28.374445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398060, 32.877102, 27.864847>,  <32.297115, 32.143036, 28.106922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398060, 32.877102, 27.864847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765137, 32.759930, 27.972198>,  <32.985382, 32.689625, 28.036610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765137, 32.759930, 27.972198>,  <32.398060, 32.877102, 27.864847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765137, 32.759930, 27.972198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383464, 0.476468, -0.791160,
		0.103884, 0.828956, 0.549582,
		0.917695, -0.292934, 0.268377,
		33.040443, 32.672050, 28.052711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819046, 33.431549, 27.805540>,  <32.398060, 32.877102, 27.864847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819046, 33.431549, 27.805540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093758, 33.140823, 27.802269>,  <33.258587, 32.966389, 27.800306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093758, 33.140823, 27.802269>,  <32.819046, 33.431549, 27.805540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093758, 33.140823, 27.802269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419354, 0.405395, -0.812279,
		0.593694, 0.554429, 0.583212,
		0.686783, -0.726817, -0.008179,
		33.299793, 32.922779, 27.799816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503819, 33.784210, 27.802271>,  <32.819046, 33.431549, 27.805540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503819, 33.784210, 27.802271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538410, 33.417889, 27.645390>,  <33.559166, 33.198097, 27.551260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538410, 33.417889, 27.645390>,  <33.503819, 33.784210, 27.802271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538410, 33.417889, 27.645390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581544, 0.366048, -0.726509,
		0.808906, -0.165257, 0.564235,
		0.086476, -0.915805, -0.392203,
		33.564354, 33.143147, 27.527729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254326, 33.809113, 27.569269>,  <33.503819, 33.784210, 27.802271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254326, 33.809113, 27.569269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104313, 33.492657, 27.376001>,  <34.014305, 33.302784, 27.260040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104313, 33.492657, 27.376001>,  <34.254326, 33.809113, 27.569269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104313, 33.492657, 27.376001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233445, 0.423817, -0.875147,
		0.897136, -0.441004, 0.025741,
		-0.375034, -0.791135, -0.483172,
		33.991802, 33.255318, 27.231050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778934, 33.512260, 27.156858>,  <34.254326, 33.809113, 27.569269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778934, 33.512260, 27.156858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433430, 33.401665, 26.988348>,  <34.226128, 33.335308, 26.887241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433430, 33.401665, 26.988348>,  <34.778934, 33.512260, 27.156858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433430, 33.401665, 26.988348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246012, 0.498238, -0.831406,
		0.439767, -0.821775, -0.362340,
		-0.863761, -0.276485, -0.421275,
		34.174301, 33.318718, 26.861965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908615, 33.517612, 26.429892>,  <34.778934, 33.512260, 27.156858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908615, 33.517612, 26.429892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515583, 33.444805, 26.414858>,  <34.279766, 33.401119, 26.405838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515583, 33.444805, 26.414858>,  <34.908615, 33.517612, 26.429892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515583, 33.444805, 26.414858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013545, 0.131550, -0.991217,
		0.185365, -0.974456, -0.126792,
		-0.982576, -0.182020, -0.037584,
		34.220810, 33.390202, 26.403584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753319, 33.054573, 25.847330>,  <34.908615, 33.517612, 26.429892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753319, 33.054573, 25.847330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407627, 33.236679, 25.932970>,  <34.200211, 33.345943, 25.984354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407627, 33.236679, 25.932970>,  <34.753319, 33.054573, 25.847330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407627, 33.236679, 25.932970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155348, 0.163283, -0.974272,
		-0.478512, -0.875255, -0.070389,
		-0.864230, 0.455266, 0.214102,
		34.148357, 33.373260, 25.997200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318871, 32.743431, 25.321060>,  <34.753319, 33.054573, 25.847330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318871, 32.743431, 25.321060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176540, 33.089157, 25.463238>,  <34.091141, 33.296593, 25.548544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176540, 33.089157, 25.463238>,  <34.318871, 32.743431, 25.321060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176540, 33.089157, 25.463238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188902, 0.305968, -0.933113,
		-0.915261, -0.399171, 0.054399,
		-0.355827, 0.864318, 0.355445,
		34.069794, 33.348454, 25.569872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753601, 32.792179, 24.896688>,  <34.318871, 32.743431, 25.321060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753601, 32.792179, 24.896688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838947, 33.166351, 25.009438>,  <33.890156, 33.390854, 25.077087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838947, 33.166351, 25.009438>,  <33.753601, 32.792179, 24.896688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838947, 33.166351, 25.009438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224598, 0.327753, -0.917679,
		-0.950805, 0.132498, 0.280027,
		0.213370, 0.935426, 0.281871,
		33.902958, 33.446980, 25.093998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192802, 33.051716, 24.608294>,  <33.753601, 32.792179, 24.896688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192802, 33.051716, 24.608294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471966, 33.328384, 24.682604>,  <33.639465, 33.494385, 24.727190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471966, 33.328384, 24.682604>,  <33.192802, 33.051716, 24.608294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471966, 33.328384, 24.682604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073375, 0.327090, -0.942140,
		-0.712415, 0.643900, 0.279031,
		0.697912, 0.691669, 0.185778,
		33.681339, 33.535885, 24.738337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983692, 33.645603, 24.407972>,  <33.192802, 33.051716, 24.608294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983692, 33.645603, 24.407972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380291, 33.693630, 24.387920>,  <33.618252, 33.722446, 24.375889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380291, 33.693630, 24.387920>,  <32.983692, 33.645603, 24.407972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380291, 33.693630, 24.387920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085505, 0.310861, -0.946602,
		-0.098068, 0.942842, 0.318484,
		0.991500, 0.120063, -0.050132,
		33.677742, 33.729649, 24.372881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101429, 34.042053, 23.773190>,  <32.983692, 33.645603, 24.407972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101429, 34.042053, 23.773190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483540, 33.969070, 23.866272>,  <33.712807, 33.925282, 23.922121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483540, 33.969070, 23.866272>,  <33.101429, 34.042053, 23.773190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483540, 33.969070, 23.866272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278058, 0.286427, -0.916866,
		0.100637, 0.940568, 0.324352,
		0.955278, -0.182459, 0.232707,
		33.770123, 33.914333, 23.936085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501923, 34.593285, 23.538052>,  <33.101429, 34.042053, 23.773190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501923, 34.593285, 23.538052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768005, 34.296047, 23.567207>,  <33.927654, 34.117702, 23.584702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768005, 34.296047, 23.567207>,  <33.501923, 34.593285, 23.538052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768005, 34.296047, 23.567207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289570, 0.166765, -0.942517,
		0.688224, 0.648073, 0.326111,
		0.665204, -0.743095, 0.072891,
		33.967567, 34.073120, 23.589075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264938, 34.807907, 23.320684>,  <33.501923, 34.593285, 23.538052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264938, 34.807907, 23.320684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266754, 34.410583, 23.274515>,  <34.267841, 34.172192, 23.246813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266754, 34.410583, 23.274515>,  <34.264938, 34.807907, 23.320684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266754, 34.410583, 23.274515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388941, 0.108087, -0.914900,
		0.921251, -0.040743, 0.386827,
		0.004535, -0.993306, -0.115422,
		34.268116, 34.112591, 23.239889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011963, 34.534885, 23.124670>,  <34.264938, 34.807907, 23.320684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011963, 34.534885, 23.124670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721367, 34.296234, 22.988285>,  <34.547009, 34.153042, 22.906454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721367, 34.296234, 22.988285>,  <35.011963, 34.534885, 23.124670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721367, 34.296234, 22.988285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307839, 0.161041, -0.937710,
		0.614372, -0.786194, 0.066671,
		-0.726486, -0.596627, -0.340960,
		34.503422, 34.117245, 22.885998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305569, 34.040791, 22.695738>,  <35.011963, 34.534885, 23.124670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305569, 34.040791, 22.695738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924286, 34.056328, 22.575811>,  <34.695515, 34.065651, 22.503855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924286, 34.056328, 22.575811>,  <35.305569, 34.040791, 22.695738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924286, 34.056328, 22.575811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295668, 0.326675, -0.897699,
		0.063075, -0.944338, -0.322873,
		-0.953206, 0.038841, -0.299816,
		34.638325, 34.067982, 22.485867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279507, 33.577419, 22.107908>,  <35.305569, 34.040791, 22.695738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279507, 33.577419, 22.107908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987698, 33.850925, 22.101400>,  <34.812614, 34.015030, 22.097496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987698, 33.850925, 22.101400>,  <35.279507, 33.577419, 22.107908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987698, 33.850925, 22.101400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342984, 0.345144, -0.873635,
		-0.591747, -0.642914, -0.486310,
		-0.729519, 0.683767, -0.016271,
		34.768841, 34.056057, 22.096519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196453, 33.628487, 21.436029>,  <35.279507, 33.577419, 22.107908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196453, 33.628487, 21.436029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998436, 33.953350, 21.559532>,  <34.879627, 34.148270, 21.633633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998436, 33.953350, 21.559532>,  <35.196453, 33.628487, 21.436029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998436, 33.953350, 21.559532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189400, 0.447674, -0.873908,
		-0.847977, -0.374139, -0.375440,
		-0.495038, 0.812162, 0.308755,
		34.849926, 34.196999, 21.652159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853935, 33.745205, 20.841787>,  <35.196453, 33.628487, 21.436029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853935, 33.745205, 20.841787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845860, 34.087029, 21.049372>,  <34.841015, 34.292122, 21.173923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845860, 34.087029, 21.049372>,  <34.853935, 33.745205, 20.841787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845860, 34.087029, 21.049372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229633, 0.509155, -0.829476,
		-0.973068, 0.102427, -0.206513,
		-0.020186, 0.854559, 0.518963,
		34.839806, 34.343395, 21.205061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463966, 34.206383, 20.401127>,  <34.853935, 33.745205, 20.841787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463966, 34.206383, 20.401127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662708, 34.449459, 20.648947>,  <34.781956, 34.595306, 20.797638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662708, 34.449459, 20.648947>,  <34.463966, 34.206383, 20.401127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662708, 34.449459, 20.648947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267231, 0.572079, -0.775444,
		-0.825664, 0.550847, 0.121847,
		0.496857, 0.607695, 0.619549,
		34.811764, 34.631767, 20.834812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316711, 34.832714, 20.156197>,  <34.463966, 34.206383, 20.401127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316711, 34.832714, 20.156197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661938, 34.906570, 20.344252>,  <34.869072, 34.950886, 20.457085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661938, 34.906570, 20.344252>,  <34.316711, 34.832714, 20.156197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661938, 34.906570, 20.344252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336379, 0.484233, -0.807693,
		-0.376792, 0.855234, 0.355813,
		0.863063, 0.184644, 0.470138,
		34.920856, 34.961964, 20.485292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468765, 35.609356, 19.993786>,  <34.316711, 34.832714, 20.156197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468765, 35.609356, 19.993786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809483, 35.441429, 20.119139>,  <35.013912, 35.340672, 20.194349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809483, 35.441429, 20.119139>,  <34.468765, 35.609356, 19.993786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809483, 35.441429, 20.119139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466094, 0.334180, -0.819195,
		0.239186, 0.843847, 0.480325,
		0.851790, -0.419816, 0.313381,
		35.065022, 35.315483, 20.213154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003994, 36.174538, 20.086351>,  <34.468765, 35.609356, 19.993786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003994, 36.174538, 20.086351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193474, 35.826351, 20.032831>,  <35.307159, 35.617439, 20.000719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193474, 35.826351, 20.032831>,  <35.003994, 36.174538, 20.086351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193474, 35.826351, 20.032831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528452, 0.402477, -0.747496,
		0.704521, 0.283379, 0.650651,
		0.473697, -0.870465, -0.133802,
		35.335583, 35.565212, 19.992691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652210, 36.393700, 20.155283>,  <35.003994, 36.174538, 20.086351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652210, 36.393700, 20.155283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651089, 36.045475, 19.958460>,  <35.650414, 35.836540, 19.840366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651089, 36.045475, 19.958460>,  <35.652210, 36.393700, 20.155283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651089, 36.045475, 19.958460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542741, 0.411953, -0.731934,
		0.839895, -0.269113, 0.471332,
		-0.002806, -0.870559, -0.492057,
		35.650246, 35.784306, 19.810843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230988, 36.453304, 19.853365>,  <35.652210, 36.393700, 20.155283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230988, 36.453304, 19.853365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043720, 36.167004, 19.646090>,  <35.931362, 35.995224, 19.521725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043720, 36.167004, 19.646090>,  <36.230988, 36.453304, 19.853365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043720, 36.167004, 19.646090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484511, 0.282485, -0.827920,
		0.738967, -0.638671, 0.214541,
		-0.468164, -0.715752, -0.518191,
		35.903271, 35.952278, 19.490633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700253, 36.071705, 19.529144>,  <36.230988, 36.453304, 19.853365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700253, 36.071705, 19.529144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371624, 36.024632, 19.306015>,  <36.174446, 35.996387, 19.172138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371624, 36.024632, 19.306015>,  <36.700253, 36.071705, 19.529144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371624, 36.024632, 19.306015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520920, 0.242605, -0.818404,
		0.231624, -0.962963, -0.138028,
		-0.821579, -0.117661, -0.557820,
		36.125153, 35.989326, 19.138668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929565, 35.696335, 18.983948>,  <36.700253, 36.071705, 19.529144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929565, 35.696335, 18.983948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588642, 35.846455, 18.838221>,  <36.384090, 35.936527, 18.750784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588642, 35.846455, 18.838221>,  <36.929565, 35.696335, 18.983948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588642, 35.846455, 18.838221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455203, 0.189168, -0.870061,
		-0.257613, -0.907397, -0.332064,
		-0.852306, 0.375295, -0.364317,
		36.332951, 35.959042, 18.728926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883854, 35.421947, 18.235151>,  <36.929565, 35.696335, 18.983948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883854, 35.421947, 18.235151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634727, 35.733822, 18.261053>,  <36.485252, 35.920944, 18.276594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634727, 35.733822, 18.261053>,  <36.883854, 35.421947, 18.235151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634727, 35.733822, 18.261053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447408, 0.422845, -0.788054,
		-0.641813, -0.461842, -0.612191,
		-0.622818, 0.779682, 0.064755,
		36.447884, 35.967728, 18.280479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552399, 35.405254, 17.636965>,  <36.883854, 35.421947, 18.235151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552399, 35.405254, 17.636965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531647, 35.784767, 17.761620>,  <36.519196, 36.012474, 17.836412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531647, 35.784767, 17.761620>,  <36.552399, 35.405254, 17.636965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531647, 35.784767, 17.761620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525507, 0.291292, -0.799369,
		-0.849206, 0.122300, -0.513704,
		-0.051875, 0.948784, 0.311637,
		36.516083, 36.069401, 17.855110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454758, 35.739361, 16.960178>,  <36.552399, 35.405254, 17.636965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454758, 35.739361, 16.960178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530533, 36.040794, 17.211962>,  <36.576000, 36.221657, 17.363031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530533, 36.040794, 17.211962>,  <36.454758, 35.739361, 16.960178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530533, 36.040794, 17.211962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429561, 0.512860, -0.743271,
		-0.882944, 0.411198, -0.226555,
		0.189441, 0.753586, 0.629461,
		36.587364, 36.266869, 17.400801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170273, 36.444878, 16.658010>,  <36.454758, 35.739361, 16.960178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170273, 36.444878, 16.658010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480053, 36.503796, 16.904110>,  <36.665920, 36.539146, 17.051769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480053, 36.503796, 16.904110>,  <36.170273, 36.444878, 16.658010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480053, 36.503796, 16.904110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355820, 0.702698, -0.616123,
		-0.523088, 0.696074, 0.491792,
		0.774449, 0.147297, 0.615250,
		36.712387, 36.547985, 17.088686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219761, 37.223728, 16.819658>,  <36.170273, 36.444878, 16.658010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219761, 37.223728, 16.819658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584274, 37.069309, 16.876957>,  <36.802982, 36.976658, 16.911337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584274, 37.069309, 16.876957>,  <36.219761, 37.223728, 16.819658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584274, 37.069309, 16.876957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381237, 0.659545, -0.647811,
		0.155610, 0.644953, 0.748212,
		0.911287, -0.386051, 0.143248,
		36.857662, 36.953495, 16.919931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741371, 37.709965, 17.118425>,  <36.219761, 37.223728, 16.819658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741371, 37.709965, 17.118425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932442, 37.421410, 16.917856>,  <37.047085, 37.248276, 16.797514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932442, 37.421410, 16.917856>,  <36.741371, 37.709965, 17.118425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932442, 37.421410, 16.917856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369081, 0.682723, -0.630610,
		0.797247, 0.116162, 0.592372,
		0.477678, -0.721385, -0.501425,
		37.075745, 37.204994, 16.767429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595860, 37.882412, 17.135050>,  <36.741371, 37.709965, 17.118425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595860, 37.882412, 17.135050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484573, 37.652512, 16.827217>,  <37.417801, 37.514572, 16.642517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484573, 37.652512, 16.827217>,  <37.595860, 37.882412, 17.135050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484573, 37.652512, 16.827217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657833, 0.469799, -0.588681,
		0.699893, -0.670039, 0.247382,
		-0.278219, -0.574750, -0.769583,
		37.401108, 37.480087, 16.596342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534714, 38.347977, 17.728056>,  <37.595860, 37.882412, 17.135050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534714, 38.347977, 17.728056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658554, 38.483620, 18.083393>,  <37.732857, 38.565006, 18.296595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658554, 38.483620, 18.083393>,  <37.534714, 38.347977, 17.728056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658554, 38.483620, 18.083393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617470, 0.638764, -0.459033,
		-0.723103, 0.690642, -0.011627,
		0.309601, 0.339107, 0.888343,
		37.751434, 38.585350, 18.349895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986893, 37.924164, 18.117933>,  <37.534714, 38.347977, 17.728056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986893, 37.924164, 18.117933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921745, 37.534027, 18.177517>,  <37.882656, 37.299946, 18.213266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921745, 37.534027, 18.177517>,  <37.986893, 37.924164, 18.117933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921745, 37.534027, 18.177517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897603, -0.083790, 0.432767,
		-0.409613, 0.204187, 0.889114,
		-0.162865, -0.975339, 0.148957,
		37.872887, 37.241425, 18.222204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646248, 37.781372, 17.853411>,  <37.986893, 37.924164, 18.117933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646248, 37.781372, 17.853411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450344, 37.587780, 17.563335>,  <38.332802, 37.471626, 17.389290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450344, 37.587780, 17.563335>,  <38.646248, 37.781372, 17.853411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450344, 37.587780, 17.563335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869756, -0.213530, -0.444892,
		0.060469, -0.848628, 0.525522,
		-0.489762, -0.483978, -0.725188,
		38.303417, 37.442585, 17.345779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072964, 38.038933, 18.528618>,  <38.646248, 37.781372, 17.853411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072964, 38.038933, 18.528618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261002, 37.954990, 18.871540>,  <39.373825, 37.904625, 19.077293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261002, 37.954990, 18.871540>,  <39.072964, 38.038933, 18.528618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261002, 37.954990, 18.871540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133715, 0.977045, 0.165844,
		-0.872427, 0.036671, 0.487367,
		0.470098, -0.209855, 0.857303,
		39.402031, 37.892033, 19.128731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603069, 38.513577, 18.384323>,  <39.072964, 38.038933, 18.528618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603069, 38.513577, 18.384323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389950, 38.846333, 18.446394>,  <38.262077, 39.045986, 18.483637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389950, 38.846333, 18.446394>,  <38.603069, 38.513577, 18.384323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389950, 38.846333, 18.446394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644053, -0.517570, 0.563309,
		0.548927, 0.200189, 0.811544,
		-0.532799, 0.831893, 0.155175,
		38.230110, 39.095901, 18.492947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579739, 38.994854, 19.057503>,  <38.603069, 38.513577, 18.384323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579739, 38.994854, 19.057503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250046, 38.941658, 18.837337>,  <38.052231, 38.909740, 18.705238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250046, 38.941658, 18.837337>,  <38.579739, 38.994854, 19.057503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250046, 38.941658, 18.837337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457008, -0.417702, 0.785283,
		-0.334343, 0.898799, 0.283506,
		-0.824233, -0.132989, -0.550413,
		38.002777, 38.901760, 18.672213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030140, 39.404640, 19.380398>,  <38.579739, 38.994854, 19.057503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030140, 39.404640, 19.380398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883560, 39.096378, 19.171858>,  <37.795612, 38.911419, 19.046734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883560, 39.096378, 19.171858>,  <38.030140, 39.404640, 19.380398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883560, 39.096378, 19.171858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397269, -0.377093, 0.836647,
		-0.841365, 0.513702, -0.167974,
		-0.366446, -0.770656, -0.521351,
		37.773628, 38.865181, 19.015453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420261, 39.345848, 19.688469>,  <38.030140, 39.404640, 19.380398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420261, 39.345848, 19.688469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474037, 39.007675, 19.481716>,  <37.506302, 38.804771, 19.357664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474037, 39.007675, 19.481716>,  <37.420261, 39.345848, 19.688469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474037, 39.007675, 19.481716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396042, -0.523986, 0.754049,
		-0.908338, 0.103334, -0.405271,
		0.134438, -0.845435, -0.516880,
		37.514370, 38.754044, 19.326653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804661, 38.948437, 19.841011>,  <37.420261, 39.345848, 19.688469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804661, 38.948437, 19.841011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068287, 38.672340, 19.721542>,  <37.226463, 38.506683, 19.649860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068287, 38.672340, 19.721542>,  <36.804661, 38.948437, 19.841011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068287, 38.672340, 19.721542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320565, -0.617061, 0.718661,
		-0.680347, -0.377899, -0.627949,
		0.659064, -0.690237, -0.298675,
		37.266006, 38.465271, 19.631941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408340, 38.374310, 19.781425>,  <36.804661, 38.948437, 19.841011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408340, 38.374310, 19.781425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775024, 38.215206, 19.796572>,  <36.995033, 38.119743, 19.805660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775024, 38.215206, 19.796572>,  <36.408340, 38.374310, 19.781425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775024, 38.215206, 19.796572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298735, -0.619363, 0.726049,
		-0.265342, -0.676885, -0.686600,
		0.916706, -0.397763, 0.037867,
		37.050037, 38.095879, 19.807932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403568, 37.539234, 19.686077>,  <36.408340, 38.374310, 19.781425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403568, 37.539234, 19.686077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730289, 37.677647, 19.870728>,  <36.926323, 37.760696, 19.981518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730289, 37.677647, 19.870728>,  <36.403568, 37.539234, 19.686077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730289, 37.677647, 19.870728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228008, -0.541390, 0.809265,
		0.529953, -0.766262, -0.363308,
		0.816800, 0.346035, 0.461625,
		36.975330, 37.781456, 20.009214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840553, 36.924015, 19.829014>,  <36.403568, 37.539234, 19.686077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840553, 36.924015, 19.829014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947262, 37.198978, 20.099213>,  <37.011288, 37.363956, 20.261332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947262, 37.198978, 20.099213>,  <36.840553, 36.924015, 19.829014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947262, 37.198978, 20.099213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152275, -0.662032, 0.733844,
		0.951655, -0.298628, -0.071935,
		0.266770, 0.687412, 0.675499,
		37.027294, 37.405201, 20.301863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215546, 36.504368, 20.337589>,  <36.840553, 36.924015, 19.829014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215546, 36.504368, 20.337589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156048, 36.854420, 20.521776>,  <37.120350, 37.064449, 20.632288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156048, 36.854420, 20.521776>,  <37.215546, 36.504368, 20.337589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156048, 36.854420, 20.521776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008400, -0.464514, 0.885526,
		0.988840, 0.135583, 0.061742,
		-0.148742, 0.875125, 0.460469,
		37.111423, 37.116959, 20.659916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654011, 36.456585, 20.924206>,  <37.215546, 36.504368, 20.337589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654011, 36.456585, 20.924206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387394, 36.740131, 21.016483>,  <37.227425, 36.910259, 21.071850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387394, 36.740131, 21.016483>,  <37.654011, 36.456585, 20.924206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387394, 36.740131, 21.016483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049662, -0.266553, 0.962540,
		0.743809, 0.653033, 0.142466,
		-0.666545, 0.708871, 0.230696,
		37.187431, 36.952793, 21.085691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769737, 36.647903, 21.624018>,  <37.654011, 36.456585, 20.924206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769737, 36.647903, 21.624018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409122, 36.809864, 21.562977>,  <37.192753, 36.907040, 21.526352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409122, 36.809864, 21.562977>,  <37.769737, 36.647903, 21.624018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409122, 36.809864, 21.562977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267222, -0.243606, 0.932335,
		0.340329, 0.881312, 0.327818,
		-0.901537, 0.404901, -0.152600,
		37.138660, 36.931335, 21.517197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589588, 37.083828, 22.243231>,  <37.769737, 36.647903, 21.624018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589588, 37.083828, 22.243231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254398, 36.970200, 22.056856>,  <37.053284, 36.902023, 21.945032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254398, 36.970200, 22.056856>,  <37.589588, 37.083828, 22.243231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254398, 36.970200, 22.056856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442499, -0.145954, 0.884812,
		-0.319357, 0.947628, -0.003397,
		-0.837977, -0.284074, -0.465936,
		37.003006, 36.884975, 21.917076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137695, 37.449703, 22.618746>,  <37.589588, 37.083828, 22.243231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137695, 37.449703, 22.618746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932072, 37.152718, 22.446936>,  <36.808697, 36.974525, 22.343849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932072, 37.152718, 22.446936>,  <37.137695, 37.449703, 22.618746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932072, 37.152718, 22.446936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482138, -0.164048, 0.860599,
		-0.709424, 0.649491, -0.273638,
		-0.514062, -0.742461, -0.429525,
		36.777855, 36.929977, 22.318079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490772, 37.475708, 22.835398>,  <37.137695, 37.449703, 22.618746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490772, 37.475708, 22.835398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471928, 37.102234, 22.693401>,  <36.460621, 36.878151, 22.608204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471928, 37.102234, 22.693401>,  <36.490772, 37.475708, 22.835398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471928, 37.102234, 22.693401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354288, -0.316659, 0.879890,
		-0.933949, 0.167226, -0.315873,
		-0.047116, -0.933682, -0.354990,
		36.457794, 36.822128, 22.586905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914288, 37.234764, 22.785225>,  <36.490772, 37.475708, 22.835398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914288, 37.234764, 22.785225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063168, 36.863625, 22.775736>,  <36.152496, 36.640942, 22.770042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063168, 36.863625, 22.775736>,  <35.914288, 37.234764, 22.785225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063168, 36.863625, 22.775736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562837, -0.245959, 0.789125,
		-0.738023, -0.280363, -0.613774,
		0.372204, -0.927847, -0.023724,
		36.174828, 36.585270, 22.768618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337036, 36.819160, 22.765154>,  <35.914288, 37.234764, 22.785225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337036, 36.819160, 22.765154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634842, 36.602039, 22.920618>,  <35.813526, 36.471767, 23.013897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634842, 36.602039, 22.920618>,  <35.337036, 36.819160, 22.765154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634842, 36.602039, 22.920618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589621, -0.261587, 0.764146,
		-0.313114, -0.798082, -0.514806,
		0.744517, -0.542806, 0.388659,
		35.858196, 36.439198, 23.037216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991882, 36.247051, 23.141388>,  <35.337036, 36.819160, 22.765154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991882, 36.247051, 23.141388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353836, 36.251610, 23.311588>,  <35.571011, 36.254345, 23.413708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353836, 36.251610, 23.311588>,  <34.991882, 36.247051, 23.141388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353836, 36.251610, 23.311588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401833, -0.306848, 0.862772,
		0.140395, -0.951690, -0.273083,
		0.904886, 0.011395, 0.425500,
		35.625301, 36.255028, 23.439238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068222, 35.652035, 23.604052>,  <34.991882, 36.247051, 23.141388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068222, 35.652035, 23.604052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345676, 35.911186, 23.729994>,  <35.512150, 36.066677, 23.805559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345676, 35.911186, 23.729994>,  <35.068222, 35.652035, 23.604052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345676, 35.911186, 23.729994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211066, -0.235112, 0.948775,
		0.688713, -0.724556, -0.026337,
		0.693632, 0.647875, 0.314854,
		35.553764, 36.105549, 23.824450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430878, 35.299496, 24.132423>,  <35.068222, 35.652035, 23.604052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430878, 35.299496, 24.132423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474518, 35.692345, 24.193792>,  <35.500702, 35.928055, 24.230614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474518, 35.692345, 24.193792>,  <35.430878, 35.299496, 24.132423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474518, 35.692345, 24.193792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318862, -0.111610, 0.941207,
		0.941501, -0.151611, 0.300983,
		0.109105, 0.982119, 0.153424,
		35.507248, 35.986980, 24.239819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717072, 35.250309, 24.814947>,  <35.430878, 35.299496, 24.132423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717072, 35.250309, 24.814947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588081, 35.622593, 24.745907>,  <35.510689, 35.845963, 24.704483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588081, 35.622593, 24.745907>,  <35.717072, 35.250309, 24.814947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588081, 35.622593, 24.745907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247205, 0.093210, 0.964469,
		0.913730, 0.353681, 0.200018,
		-0.322471, 0.930710, -0.172601,
		35.491341, 35.901806, 24.694126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958805, 35.611645, 25.419989>,  <35.717072, 35.250309, 24.814947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958805, 35.611645, 25.419989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675552, 35.839077, 25.252533>,  <35.505600, 35.975536, 25.152060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675552, 35.839077, 25.252533>,  <35.958805, 35.611645, 25.419989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675552, 35.839077, 25.252533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327784, 0.260420, 0.908151,
		0.625382, 0.780316, 0.001960,
		-0.708135, 0.568585, -0.418637,
		35.463112, 36.009651, 25.126942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984936, 36.230019, 25.742466>,  <35.958805, 35.611645, 25.419989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984936, 36.230019, 25.742466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621376, 36.188435, 25.580923>,  <35.403240, 36.163483, 25.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621376, 36.188435, 25.580923>,  <35.984936, 36.230019, 25.742466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621376, 36.188435, 25.580923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416854, 0.198965, 0.886930,
		-0.011856, 0.974476, -0.224177,
		-0.908896, -0.103964, -0.403856,
		35.348709, 36.157246, 25.459766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669018, 36.777390, 25.900164>,  <35.984936, 36.230019, 25.742466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669018, 36.777390, 25.900164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393261, 36.490765, 25.857708>,  <35.227806, 36.318790, 25.832235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393261, 36.490765, 25.857708>,  <35.669018, 36.777390, 25.900164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393261, 36.490765, 25.857708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367421, 0.219625, 0.903752,
		-0.624287, 0.662041, -0.414690,
		-0.689397, -0.716566, -0.106139,
		35.186443, 36.275795, 25.825867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071163, 37.041870, 26.248833>,  <35.669018, 36.777390, 25.900164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071163, 37.041870, 26.248833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939739, 36.669750, 26.183605>,  <34.860886, 36.446480, 26.144468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939739, 36.669750, 26.183605>,  <35.071163, 37.041870, 26.248833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939739, 36.669750, 26.183605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513794, 0.031179, 0.857347,
		-0.792504, 0.365475, -0.488226,
		-0.328561, -0.930299, -0.163070,
		34.841171, 36.390659, 26.134684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495098, 37.070507, 26.461981>,  <35.071163, 37.041870, 26.248833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495098, 37.070507, 26.461981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535824, 36.673058, 26.442574>,  <34.560257, 36.434589, 26.430929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535824, 36.673058, 26.442574>,  <34.495098, 37.070507, 26.461981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535824, 36.673058, 26.442574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594835, -0.099897, 0.797616,
		-0.797374, -0.052345, -0.601210,
		0.101810, -0.993620, -0.048518,
		34.566368, 36.374973, 26.428019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859062, 36.711697, 26.445259>,  <34.495098, 37.070507, 26.461981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859062, 36.711697, 26.445259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115013, 36.454971, 26.614317>,  <34.268585, 36.300938, 26.715752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115013, 36.454971, 26.614317>,  <33.859062, 36.711697, 26.445259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115013, 36.454971, 26.614317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618594, -0.103867, 0.778815,
		-0.455954, -0.759796, -0.463483,
		0.639881, -0.641812, 0.422646,
		34.306976, 36.262428, 26.741110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396969, 36.303070, 26.688387>,  <33.859062, 36.711697, 26.445259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396969, 36.303070, 26.688387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734222, 36.217327, 26.885641>,  <33.936573, 36.165882, 27.003994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734222, 36.217327, 26.885641>,  <33.396969, 36.303070, 26.688387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734222, 36.217327, 26.885641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528867, -0.164973, 0.832516,
		-0.097098, -0.962724, -0.252457,
		0.843132, -0.214352, 0.493135,
		33.987164, 36.153019, 27.033581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142975, 35.792309, 27.196005>,  <33.396969, 36.303070, 26.688387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142975, 35.792309, 27.196005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500809, 35.899830, 27.338814>,  <33.715508, 35.964344, 27.424500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500809, 35.899830, 27.338814>,  <33.142975, 35.792309, 27.196005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500809, 35.899830, 27.338814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336349, -0.121052, 0.933925,
		0.294263, -0.955557, -0.017879,
		0.894583, 0.268806, 0.357022,
		33.769184, 35.980473, 27.445921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309231, 35.296879, 27.693686>,  <33.142975, 35.792309, 27.196005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309231, 35.296879, 27.693686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511810, 35.631676, 27.776583>,  <33.633358, 35.832554, 27.826321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511810, 35.631676, 27.776583>,  <33.309231, 35.296879, 27.693686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511810, 35.631676, 27.776583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313878, -0.044908, 0.948401,
		0.803115, -0.545362, 0.239972,
		0.506445, 0.836996, 0.207243,
		33.663742, 35.882774, 27.838757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836807, 35.153835, 28.276358>,  <33.309231, 35.296879, 27.693686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836807, 35.153835, 28.276358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759369, 35.546268, 28.276760>,  <33.712906, 35.781727, 28.277002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759369, 35.546268, 28.276760>,  <33.836807, 35.153835, 28.276358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759369, 35.546268, 28.276760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137175, -0.028085, 0.990149,
		0.971444, 0.191552, 0.140017,
		-0.193597, 0.981081, 0.001007,
		33.701290, 35.840591, 28.277061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186653, 35.519871, 28.894960>,  <33.836807, 35.153835, 28.276358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186653, 35.519871, 28.894960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915436, 35.803699, 28.818254>,  <33.752705, 35.973995, 28.772230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915436, 35.803699, 28.818254>,  <34.186653, 35.519871, 28.894960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915436, 35.803699, 28.818254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264589, 0.007786, 0.964330,
		0.685752, 0.704592, 0.182465,
		-0.678039, 0.709570, -0.191766,
		33.712025, 36.016571, 28.760725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276665, 36.060917, 29.432632>,  <34.186653, 35.519871, 28.894960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276665, 36.060917, 29.432632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902908, 36.122967, 29.304358>,  <33.678654, 36.160198, 29.227392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902908, 36.122967, 29.304358>,  <34.276665, 36.060917, 29.432632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902908, 36.122967, 29.304358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339048, -0.110987, 0.934199,
		0.109326, 0.981640, 0.156300,
		-0.934395, 0.155126, -0.320689,
		33.622589, 36.169506, 29.208151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057507, 36.632801, 29.755518>,  <34.276665, 36.060917, 29.432632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057507, 36.632801, 29.755518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715073, 36.454006, 29.651737>,  <33.509613, 36.346729, 29.589468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715073, 36.454006, 29.651737>,  <34.057507, 36.632801, 29.755518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715073, 36.454006, 29.651737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312597, 0.048049, 0.948670,
		-0.411575, 0.893250, -0.180861,
		-0.856089, -0.446985, -0.259452,
		33.458244, 36.319912, 29.573902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587219, 36.903172, 30.194176>,  <34.057507, 36.632801, 29.755518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587219, 36.903172, 30.194176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426411, 36.565411, 30.052549>,  <33.329926, 36.362755, 29.967573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426411, 36.565411, 30.052549>,  <33.587219, 36.903172, 30.194176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426411, 36.565411, 30.052549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447434, -0.156209, 0.880569,
		-0.798863, 0.512430, -0.315014,
		-0.402022, -0.844402, -0.354068,
		33.305805, 36.312092, 29.946329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930912, 36.943317, 30.438908>,  <33.587219, 36.903172, 30.194176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930912, 36.943317, 30.438908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010155, 36.564499, 30.337828>,  <33.057701, 36.337208, 30.277180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010155, 36.564499, 30.337828>,  <32.930912, 36.943317, 30.438908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010155, 36.564499, 30.337828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325367, -0.306729, 0.894457,
		-0.924602, -0.094982, -0.368904,
		0.198111, -0.947046, -0.252698,
		33.069588, 36.280384, 30.262018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373730, 36.714642, 30.717342>,  <32.930912, 36.943317, 30.438908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373730, 36.714642, 30.717342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630802, 36.410969, 30.676142>,  <32.785046, 36.228764, 30.651421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630802, 36.410969, 30.676142>,  <32.373730, 36.714642, 30.717342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630802, 36.410969, 30.676142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199048, -0.295283, 0.934445,
		-0.739828, -0.580046, -0.340885,
		0.642678, -0.759181, -0.103002,
		32.823605, 36.183216, 30.645241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007141, 36.069057, 30.971621>,  <32.373730, 36.714642, 30.717342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007141, 36.069057, 30.971621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396011, 35.975380, 30.969198>,  <32.629333, 35.919174, 30.967745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396011, 35.975380, 30.969198>,  <32.007141, 36.069057, 30.971621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396011, 35.975380, 30.969198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106542, -0.464986, 0.878884,
		-0.208644, -0.853780, -0.476998,
		0.972171, -0.234194, -0.006054,
		32.687664, 35.905121, 30.967382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014038, 35.397118, 30.996321>,  <32.007141, 36.069057, 30.971621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014038, 35.397118, 30.996321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382271, 35.497776, 31.115786>,  <32.603210, 35.558170, 31.187464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382271, 35.497776, 31.115786>,  <32.014038, 35.397118, 30.996321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382271, 35.497776, 31.115786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182443, -0.399049, 0.898596,
		0.345312, -0.881721, -0.321446,
		0.920583, 0.251650, 0.298660,
		32.658447, 35.573273, 31.205383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281235, 34.754745, 31.279505>,  <32.014038, 35.397118, 30.996321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281235, 34.754745, 31.279505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521168, 35.035805, 31.432600>,  <32.665127, 35.204441, 31.524456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521168, 35.035805, 31.432600>,  <32.281235, 34.754745, 31.279505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521168, 35.035805, 31.432600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119058, -0.394640, 0.911090,
		0.791218, -0.592069, -0.153062,
		0.599833, 0.702648, 0.382737,
		32.701118, 35.246597, 31.547421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837013, 34.424767, 31.539566>,  <32.281235, 34.754745, 31.279505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837013, 34.424767, 31.539566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811493, 34.763187, 31.751272>,  <32.796181, 34.966240, 31.878296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811493, 34.763187, 31.751272>,  <32.837013, 34.424767, 31.539566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811493, 34.763187, 31.751272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176267, -0.531559, 0.828477,
		0.982272, -0.040434, 0.183046,
		-0.063802, 0.846056, 0.529263,
		32.792351, 35.017006, 31.910051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298347, 34.335663, 32.062405>,  <32.837013, 34.424767, 31.539566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298347, 34.335663, 32.062405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054066, 34.627392, 32.185776>,  <32.907497, 34.802429, 32.259800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054066, 34.627392, 32.185776>,  <33.298347, 34.335663, 32.062405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054066, 34.627392, 32.185776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014730, -0.399899, 0.916441,
		0.791718, 0.555135, 0.254964,
		-0.610709, 0.729319, 0.308430,
		32.870853, 34.846188, 32.278305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936073, 34.072083, 31.599052>,  <33.298347, 34.335663, 32.062405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936073, 34.072083, 31.599052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198555, 33.946377, 31.873465>,  <34.356045, 33.870953, 32.038113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198555, 33.946377, 31.873465>,  <33.936073, 34.072083, 31.599052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198555, 33.946377, 31.873465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727822, 0.503576, -0.465496,
		-0.199179, 0.804766, 0.559177,
		0.656204, -0.314264, 0.686028,
		34.395416, 33.852097, 32.079273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343323, 34.643032, 31.795864>,  <33.936073, 34.072083, 31.599052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343323, 34.643032, 31.795864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570667, 34.321072, 31.864094>,  <34.707073, 34.127895, 31.905031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570667, 34.321072, 31.864094>,  <34.343323, 34.643032, 31.795864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570667, 34.321072, 31.864094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758017, 0.431628, -0.488987,
		0.319963, 0.407219, 0.855451,
		0.568361, -0.804904, 0.170573,
		34.741177, 34.079601, 31.915266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913677, 34.981812, 31.848942>,  <34.343323, 34.643032, 31.795864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913677, 34.981812, 31.848942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993248, 34.595646, 31.781523>,  <35.040993, 34.363949, 31.741072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993248, 34.595646, 31.781523>,  <34.913677, 34.981812, 31.848942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993248, 34.595646, 31.781523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800200, 0.259298, -0.540782,
		0.565780, -0.027293, 0.824104,
		0.198929, -0.965412, -0.168546,
		35.052925, 34.306023, 31.730959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540031, 34.904007, 32.061752>,  <34.913677, 34.981812, 31.848942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540031, 34.904007, 32.061752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489868, 34.618008, 31.786638>,  <35.459770, 34.446407, 31.621569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489868, 34.618008, 31.786638>,  <35.540031, 34.904007, 32.061752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489868, 34.618008, 31.786638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875412, 0.246456, -0.415828,
		0.466825, -0.654248, 0.595007,
		-0.125412, -0.714996, -0.687789,
		35.452244, 34.403507, 31.580301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221546, 34.846878, 31.845085>,  <35.540031, 34.904007, 32.061752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221546, 34.846878, 31.845085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021404, 34.606804, 31.595470>,  <35.901318, 34.462761, 31.445702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021404, 34.606804, 31.595470>,  <36.221546, 34.846878, 31.845085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021404, 34.606804, 31.595470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659026, 0.203446, -0.724081,
		0.561538, -0.773558, 0.293739,
		-0.500359, -0.600181, -0.624038,
		35.871296, 34.426750, 31.408258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746571, 34.387787, 31.577940>,  <36.221546, 34.846878, 31.845085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746571, 34.387787, 31.577940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455105, 34.427784, 31.306927>,  <36.280224, 34.451782, 31.144320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455105, 34.427784, 31.306927>,  <36.746571, 34.387787, 31.577940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455105, 34.427784, 31.306927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684869, 0.105333, -0.721013,
		-0.000726, -0.989397, -0.145231,
		-0.728666, 0.099988, -0.677531,
		36.236504, 34.457779, 31.103668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021027, 34.247540, 30.926268>,  <36.746571, 34.387787, 31.577940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021027, 34.247540, 30.926268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670002, 34.356823, 30.768665>,  <36.459385, 34.422394, 30.674105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670002, 34.356823, 30.768665>,  <37.021027, 34.247540, 30.926268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670002, 34.356823, 30.768665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461915, 0.261493, -0.847500,
		-0.128513, -0.925732, -0.355675,
		-0.877564, 0.273207, -0.394004,
		36.406734, 34.438786, 30.650463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913002, 33.874840, 30.283245>,  <37.021027, 34.247540, 30.926268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913002, 33.874840, 30.283245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714909, 34.221966, 30.267090>,  <36.596050, 34.430241, 30.257397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714909, 34.221966, 30.267090>,  <36.913002, 33.874840, 30.283245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714909, 34.221966, 30.267090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409313, 0.192071, -0.891948,
		-0.766292, -0.458258, -0.450330,
		-0.495237, 0.867818, -0.040389,
		36.566338, 34.482311, 30.254972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507576, 33.806671, 29.712494>,  <36.913002, 33.874840, 30.283245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507576, 33.806671, 29.712494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537071, 34.197124, 29.794197>,  <36.554768, 34.431396, 29.843220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537071, 34.197124, 29.794197>,  <36.507576, 33.806671, 29.712494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537071, 34.197124, 29.794197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339498, 0.168013, -0.925480,
		-0.937712, 0.137593, -0.319006,
		0.073742, 0.976135, 0.204260,
		36.559193, 34.489964, 29.855474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185036, 34.136242, 29.131567>,  <36.507576, 33.806671, 29.712494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185036, 34.136242, 29.131567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428665, 34.408703, 29.294073>,  <36.574844, 34.572182, 29.391577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428665, 34.408703, 29.294073>,  <36.185036, 34.136242, 29.131567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428665, 34.408703, 29.294073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437437, 0.138773, -0.888476,
		-0.661570, 0.718866, -0.213440,
		0.609076, 0.681156, 0.406267,
		36.611389, 34.613049, 29.415953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167877, 34.612019, 28.678034>,  <36.185036, 34.136242, 29.131567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167877, 34.612019, 28.678034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480782, 34.724457, 28.900404>,  <36.668526, 34.791920, 29.033825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480782, 34.724457, 28.900404>,  <36.167877, 34.612019, 28.678034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480782, 34.724457, 28.900404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455084, 0.351541, -0.818119,
		-0.425397, 0.892976, 0.147077,
		0.782264, 0.281093, 0.555923,
		36.715462, 34.808784, 29.067181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204460, 35.290924, 28.510586>,  <36.167877, 34.612019, 28.678034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204460, 35.290924, 28.510586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562500, 35.178833, 28.649302>,  <36.777325, 35.111580, 28.732531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562500, 35.178833, 28.649302>,  <36.204460, 35.290924, 28.510586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562500, 35.178833, 28.649302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435305, 0.381033, -0.815674,
		0.096433, 0.881072, 0.463047,
		0.895104, -0.280224, 0.346791,
		36.831032, 35.094765, 28.753338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609287, 35.890518, 28.608976>,  <36.204460, 35.290924, 28.510586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609287, 35.890518, 28.608976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835136, 35.568550, 28.535976>,  <36.970646, 35.375370, 28.492176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835136, 35.568550, 28.535976>,  <36.609287, 35.890518, 28.608976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835136, 35.568550, 28.535976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359012, 0.438626, -0.823843,
		0.743174, 0.399645, 0.536635,
		0.564627, -0.804917, -0.182498,
		37.004524, 35.327076, 28.481228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102650, 36.225197, 28.272970>,  <36.609287, 35.890518, 28.608976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102650, 36.225197, 28.272970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162788, 35.834908, 28.209278>,  <37.198872, 35.600735, 28.171062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162788, 35.834908, 28.209278>,  <37.102650, 36.225197, 28.272970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162788, 35.834908, 28.209278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414418, 0.208430, -0.885898,
		0.897582, 0.067205, 0.435695,
		0.150349, -0.975725, -0.159232,
		37.207893, 35.542191, 28.161509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805058, 36.224689, 27.850897>,  <37.102650, 36.225197, 28.272970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805058, 36.224689, 27.850897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635239, 35.869175, 27.781828>,  <37.533348, 35.655865, 27.740387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635239, 35.869175, 27.781828>,  <37.805058, 36.224689, 27.850897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635239, 35.869175, 27.781828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404086, -0.015335, -0.914593,
		0.810229, -0.458065, 0.365657,
		-0.424551, -0.888786, -0.172673,
		37.507874, 35.602539, 27.730026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389603, 35.709167, 27.591305>,  <37.805058, 36.224689, 27.850897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389603, 35.709167, 27.591305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021770, 35.611877, 27.467875>,  <37.801071, 35.553505, 27.393816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021770, 35.611877, 27.467875>,  <38.389603, 35.709167, 27.591305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021770, 35.611877, 27.467875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340496, -0.101414, -0.934761,
		0.196060, -0.964654, 0.176074,
		-0.919578, -0.243221, -0.308577,
		37.745895, 35.538910, 27.375301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492046, 35.206417, 27.088066>,  <38.389603, 35.709167, 27.591305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492046, 35.206417, 27.088066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115746, 35.320053, 27.014019>,  <37.889965, 35.388233, 26.969591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115746, 35.320053, 27.014019>,  <38.492046, 35.206417, 27.088066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115746, 35.320053, 27.014019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171694, -0.071684, -0.982539,
		-0.292402, -0.956113, 0.018660,
		-0.940756, 0.284092, -0.185119,
		37.833519, 35.405281, 26.958483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240730, 34.741188, 26.620153>,  <38.492046, 35.206417, 27.088066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240730, 34.741188, 26.620153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029888, 35.076931, 26.567015>,  <37.903385, 35.278378, 26.535131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029888, 35.076931, 26.567015>,  <38.240730, 34.741188, 26.620153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029888, 35.076931, 26.567015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147862, -0.063357, -0.986977,
		-0.836840, -0.539880, -0.090713,
		-0.527102, 0.839354, -0.132848,
		37.871758, 35.328735, 26.527161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706722, 34.516872, 26.193880>,  <38.240730, 34.741188, 26.620153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706722, 34.516872, 26.193880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729557, 34.915867, 26.177044>,  <37.743259, 35.155262, 26.166943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729557, 34.915867, 26.177044>,  <37.706722, 34.516872, 26.193880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729557, 34.915867, 26.177044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051731, -0.045058, -0.997644,
		-0.997028, 0.054775, -0.054173,
		0.057087, 0.997482, -0.042090,
		37.746685, 35.215111, 26.164417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197742, 34.631348, 25.667259>,  <37.706722, 34.516872, 26.193880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197742, 34.631348, 25.667259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452374, 34.938671, 25.694004>,  <37.605152, 35.123066, 25.710051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452374, 34.938671, 25.694004>,  <37.197742, 34.631348, 25.667259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452374, 34.938671, 25.694004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016975, 0.072717, -0.997208,
		-0.771029, 0.635932, 0.033248,
		0.636574, 0.768312, 0.066862,
		37.643345, 35.169167, 25.714062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024761, 35.082790, 25.152037>,  <37.197742, 34.631348, 25.667259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024761, 35.082790, 25.152037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398121, 35.196072, 25.240192>,  <37.622135, 35.264042, 25.293085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398121, 35.196072, 25.240192>,  <37.024761, 35.082790, 25.152037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398121, 35.196072, 25.240192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212254, 0.059495, -0.975402,
		-0.289348, 0.957213, -0.004579,
		0.933395, 0.283202, 0.220387,
		37.678139, 35.281033, 25.306309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136635, 35.799171, 24.825596>,  <37.024761, 35.082790, 25.152037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136635, 35.799171, 24.825596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461514, 35.572769, 24.882133>,  <37.656441, 35.436928, 24.916056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461514, 35.572769, 24.882133>,  <37.136635, 35.799171, 24.825596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461514, 35.572769, 24.882133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282621, 0.169792, -0.944085,
		0.510356, 0.806728, 0.297869,
		0.812196, -0.566003, 0.141344,
		37.705173, 35.402969, 24.924536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638325, 36.139725, 24.490164>,  <37.136635, 35.799171, 24.825596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638325, 36.139725, 24.490164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806026, 35.777363, 24.514021>,  <37.906647, 35.559944, 24.528336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806026, 35.777363, 24.514021>,  <37.638325, 36.139725, 24.490164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806026, 35.777363, 24.514021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349348, 0.100347, -0.931604,
		0.837961, 0.411418, 0.358548,
		0.419259, -0.905906, 0.059641,
		37.931805, 35.505592, 24.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271954, 36.253975, 24.313560>,  <37.638325, 36.139725, 24.490164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271954, 36.253975, 24.313560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236893, 35.858845, 24.262159>,  <38.215858, 35.621765, 24.231318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236893, 35.858845, 24.262159>,  <38.271954, 36.253975, 24.313560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236893, 35.858845, 24.262159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536788, 0.061834, -0.841449,
		0.839153, -0.142731, 0.524834,
		-0.087648, -0.987828, -0.128504,
		38.210598, 35.562496, 24.223608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961124, 35.987030, 24.013525>,  <38.271954, 36.253975, 24.313560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961124, 35.987030, 24.013525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662071, 35.734196, 23.932022>,  <38.482639, 35.582497, 23.883120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662071, 35.734196, 23.932022>,  <38.961124, 35.987030, 24.013525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662071, 35.734196, 23.932022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391556, -0.171729, -0.903987,
		0.536404, -0.755633, 0.375886,
		-0.747633, -0.632083, -0.203757,
		38.437782, 35.544571, 23.870895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275295, 35.505566, 23.641306>,  <38.961124, 35.987030, 24.013525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275295, 35.505566, 23.641306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886864, 35.489891, 23.547096>,  <38.653805, 35.480488, 23.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886864, 35.489891, 23.547096>,  <39.275295, 35.505566, 23.641306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886864, 35.489891, 23.547096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228683, -0.436244, -0.870285,
		-0.068646, -0.898975, 0.432587,
		-0.971078, -0.039184, -0.235526,
		38.595539, 35.478134, 23.476439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123207, 34.860023, 23.341419>,  <39.275295, 35.505566, 23.641306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123207, 34.860023, 23.341419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812477, 35.085659, 23.229452>,  <38.626041, 35.221039, 23.162271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812477, 35.085659, 23.229452>,  <39.123207, 34.860023, 23.341419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812477, 35.085659, 23.229452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164160, -0.247739, -0.954818,
		-0.607946, -0.787675, 0.099849,
		-0.776822, 0.564087, -0.279916,
		38.579430, 35.254887, 23.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751759, 34.448597, 22.979816>,  <39.123207, 34.860023, 23.341419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751759, 34.448597, 22.979816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645222, 34.816925, 22.865862>,  <38.581299, 35.037922, 22.797489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645222, 34.816925, 22.865862>,  <38.751759, 34.448597, 22.979816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645222, 34.816925, 22.865862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114032, -0.263382, -0.957928,
		-0.957109, -0.287624, -0.034852,
		-0.266344, 0.920816, -0.284884,
		38.565319, 35.093170, 22.780397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163830, 34.444557, 22.366400>,  <38.751759, 34.448597, 22.979816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163830, 34.444557, 22.366400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333939, 34.806381, 22.354372>,  <38.436005, 35.023476, 22.347155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333939, 34.806381, 22.354372>,  <38.163830, 34.444557, 22.366400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333939, 34.806381, 22.354372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009120, -0.028941, -0.999540,
		-0.905018, 0.425353, -0.004058,
		0.425275, 0.904565, -0.030072,
		38.461521, 35.077751, 22.345350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866264, 34.617645, 21.774855>,  <38.163830, 34.444557, 22.366400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866264, 34.617645, 21.774855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158680, 34.878811, 21.854141>,  <38.334129, 35.035511, 21.901712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158680, 34.878811, 21.854141>,  <37.866264, 34.617645, 21.774855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158680, 34.878811, 21.854141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131959, 0.149730, -0.979882,
		-0.669453, 0.742489, 0.023301,
		0.731040, 0.652910, 0.198215,
		38.377991, 35.074684, 21.913607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720188, 35.137218, 21.294632>,  <37.866264, 34.617645, 21.774855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720188, 35.137218, 21.294632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111835, 35.175217, 21.366518>,  <38.346825, 35.198017, 21.409651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111835, 35.175217, 21.366518>,  <37.720188, 35.137218, 21.294632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111835, 35.175217, 21.366518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165797, 0.138340, -0.976409,
		-0.117620, 0.985818, 0.119701,
		0.979121, 0.094999, 0.179717,
		38.405571, 35.203716, 21.420433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033535, 35.710972, 20.930561>,  <37.720188, 35.137218, 21.294632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033535, 35.710972, 20.930561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341537, 35.463959, 20.994734>,  <38.526340, 35.315750, 21.033237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341537, 35.463959, 20.994734>,  <38.033535, 35.710972, 20.930561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341537, 35.463959, 20.994734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315371, 0.149794, -0.937072,
		0.554644, 0.772147, 0.310095,
		0.770008, -0.617536, 0.160430,
		38.572540, 35.278698, 21.042862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425884, 35.914825, 20.448734>,  <38.033535, 35.710972, 20.930561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425884, 35.914825, 20.448734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620399, 35.574707, 20.529245>,  <38.737110, 35.370636, 20.577551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620399, 35.574707, 20.529245>,  <38.425884, 35.914825, 20.448734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620399, 35.574707, 20.529245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185589, -0.124583, -0.974698,
		0.853860, 0.511342, 0.097223,
		0.486292, -0.850299, 0.201276,
		38.766289, 35.319618, 20.589628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117523, 35.921955, 20.119495>,  <38.425884, 35.914825, 20.448734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117523, 35.921955, 20.119495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977932, 35.553215, 20.186924>,  <38.894176, 35.331970, 20.227381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977932, 35.553215, 20.186924>,  <39.117523, 35.921955, 20.119495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977932, 35.553215, 20.186924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095444, -0.213908, -0.972180,
		0.932259, -0.323177, 0.162633,
		-0.348975, -0.921846, 0.168572,
		38.873238, 35.276661, 20.237495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564342, 35.517780, 19.782642>,  <39.117523, 35.921955, 20.119495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564342, 35.517780, 19.782642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246082, 35.278767, 19.822435>,  <39.055126, 35.135357, 19.846312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246082, 35.278767, 19.822435>,  <39.564342, 35.517780, 19.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246082, 35.278767, 19.822435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008061, -0.174658, -0.984596,
		0.605704, -0.782591, 0.143783,
		-0.795649, -0.597533, 0.099482,
		39.007389, 35.099506, 19.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644588, 35.049610, 19.260818>,  <39.564342, 35.517780, 19.782642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644588, 35.049610, 19.260818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261600, 34.959423, 19.332830>,  <39.031807, 34.905312, 19.376038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261600, 34.959423, 19.332830>,  <39.644588, 35.049610, 19.260818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261600, 34.959423, 19.332830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112046, -0.284432, -0.952126,
		0.265880, -0.931806, 0.247074,
		-0.957472, -0.225467, 0.180030,
		38.974358, 34.891785, 19.386839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602989, 34.303268, 19.042934>,  <39.644588, 35.049610, 19.260818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602989, 34.303268, 19.042934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226883, 34.439445, 19.042269>,  <39.001221, 34.521152, 19.041868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226883, 34.439445, 19.042269>,  <39.602989, 34.303268, 19.042934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226883, 34.439445, 19.042269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163934, -0.457045, -0.874206,
		-0.298375, -0.821712, 0.485553,
		-0.940264, 0.340440, -0.001665,
		38.944805, 34.541576, 19.041769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155025, 33.749744, 18.668736>,  <39.602989, 34.303268, 19.042934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155025, 33.749744, 18.668736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926247, 34.077702, 18.658529>,  <38.788979, 34.274475, 18.652405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926247, 34.077702, 18.658529>,  <39.155025, 33.749744, 18.668736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926247, 34.077702, 18.658529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199778, -0.169395, -0.965087,
		-0.795594, -0.546878, 0.260682,
		-0.571944, 0.819896, -0.025515,
		38.754662, 34.323669, 18.650875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731285, 33.258202, 18.799767>,  <39.155025, 33.749744, 18.668736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731285, 33.258202, 18.799767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916523, 32.906284, 18.842682>,  <40.027668, 32.695133, 18.868431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916523, 32.906284, 18.842682>,  <39.731285, 33.258202, 18.799767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916523, 32.906284, 18.842682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124282, 0.055395, 0.990700,
		-0.877551, -0.472124, -0.083688,
		0.463097, -0.879790, 0.107289,
		40.055450, 32.642349, 18.874868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460342, 33.040989, 19.458305>,  <39.731285, 33.258202, 18.799767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460342, 33.040989, 19.458305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772087, 32.793785, 19.417002>,  <39.959133, 32.645462, 19.392220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772087, 32.793785, 19.417002>,  <39.460342, 33.040989, 19.458305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772087, 32.793785, 19.417002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016374, -0.184832, 0.982634,
		-0.626366, -0.764132, -0.154169,
		0.779357, -0.618013, -0.103261,
		40.005894, 32.608383, 19.386024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233154, 32.436058, 19.706429>,  <39.460342, 33.040989, 19.458305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233154, 32.436058, 19.706429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630280, 32.473812, 19.735876>,  <39.868553, 32.496464, 19.753544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630280, 32.473812, 19.735876>,  <39.233154, 32.436058, 19.706429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630280, 32.473812, 19.735876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051835, -0.215363, 0.975157,
		0.107892, -0.971962, -0.208922,
		0.992810, 0.094382, 0.073618,
		39.928123, 32.502125, 19.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471451, 31.771164, 19.967119>,  <39.233154, 32.436058, 19.706429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471451, 31.771164, 19.967119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786266, 32.008842, 20.033445>,  <39.975155, 32.151451, 20.073240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786266, 32.008842, 20.033445>,  <39.471451, 31.771164, 19.967119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786266, 32.008842, 20.033445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113990, -0.404237, 0.907523,
		0.606277, -0.695357, -0.385884,
		0.787042, 0.594198, 0.165816,
		40.022377, 32.187103, 20.083191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910690, 31.353498, 20.344152>,  <39.471451, 31.771164, 19.967119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910690, 31.353498, 20.344152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074856, 31.707798, 20.430874>,  <40.173355, 31.920378, 20.482906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074856, 31.707798, 20.430874>,  <39.910690, 31.353498, 20.344152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074856, 31.707798, 20.430874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095102, -0.278027, 0.955854,
		0.906926, -0.371680, -0.198344,
		0.410416, 0.885751, 0.216803,
		40.197979, 31.973524, 20.495914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562782, 31.324013, 20.814100>,  <39.910690, 31.353498, 20.344152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562782, 31.324013, 20.814100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435989, 31.699051, 20.871286>,  <40.359913, 31.924074, 20.905598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435989, 31.699051, 20.871286>,  <40.562782, 31.324013, 20.814100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435989, 31.699051, 20.871286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150452, -0.099120, 0.983636,
		0.936422, 0.333304, -0.109643,
		-0.316982, 0.937595, 0.142965,
		40.340897, 31.980330, 20.914175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118771, 31.647480, 21.278280>,  <40.562782, 31.324013, 20.814100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118771, 31.647480, 21.278280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778698, 31.857281, 21.296572>,  <40.574654, 31.983162, 21.307547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778698, 31.857281, 21.296572>,  <41.118771, 31.647480, 21.278280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778698, 31.857281, 21.296572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018690, -0.056732, 0.998214,
		0.526161, 0.849516, 0.038429,
		-0.850179, 0.524504, 0.045727,
		40.523643, 32.014633, 21.310289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232628, 32.166065, 21.870342>,  <41.118771, 31.647480, 21.278280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232628, 32.166065, 21.870342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839779, 32.147999, 21.797247>,  <40.604069, 32.137157, 21.753389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839779, 32.147999, 21.797247>,  <41.232628, 32.166065, 21.870342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839779, 32.147999, 21.797247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188060, 0.192921, 0.963024,
		-0.008246, 0.980174, -0.197967,
		-0.982123, -0.045170, -0.182740,
		40.545143, 32.134449, 21.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939278, 32.790020, 22.174715>,  <41.232628, 32.166065, 21.870342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939278, 32.790020, 22.174715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662830, 32.503460, 22.136515>,  <40.496960, 32.331524, 22.113594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662830, 32.503460, 22.136515>,  <40.939278, 32.790020, 22.174715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662830, 32.503460, 22.136515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329127, 0.194331, 0.924073,
		-0.643449, 0.670078, -0.370093,
		-0.691122, -0.716401, -0.095499,
		40.455494, 32.288540, 22.107864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288364, 33.078354, 22.424578>,  <40.939278, 32.790020, 22.174715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288364, 33.078354, 22.424578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216709, 32.685699, 22.450806>,  <40.173717, 32.450108, 22.466543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216709, 32.685699, 22.450806>,  <40.288364, 33.078354, 22.424578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216709, 32.685699, 22.450806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460344, 0.142537, 0.876223,
		-0.869478, 0.126782, -0.477424,
		-0.179140, -0.981636, 0.065570,
		40.162968, 32.391209, 22.470476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621670, 33.104424, 22.671772>,  <40.288364, 33.078354, 22.424578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621670, 33.104424, 22.671772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792023, 32.753948, 22.762035>,  <39.894234, 32.543663, 22.816195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792023, 32.753948, 22.762035>,  <39.621670, 33.104424, 22.671772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792023, 32.753948, 22.762035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429482, 0.023749, 0.902763,
		-0.796347, -0.481388, -0.366192,
		0.425882, -0.876186, 0.225660,
		39.919788, 32.491093, 22.829733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064548, 32.715809, 22.928225>,  <39.621670, 33.104424, 22.671772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064548, 32.715809, 22.928225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383308, 32.510941, 23.056368>,  <39.574566, 32.388020, 23.133253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383308, 32.510941, 23.056368>,  <39.064548, 32.715809, 22.928225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383308, 32.510941, 23.056368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344231, 0.050805, 0.937509,
		-0.496438, -0.857381, -0.135817,
		0.796903, -0.512168, 0.320359,
		39.622379, 32.357288, 23.152475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850933, 32.255985, 23.436478>,  <39.064548, 32.715809, 22.928225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850933, 32.255985, 23.436478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232597, 32.356850, 23.500961>,  <39.461597, 32.417370, 23.539652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232597, 32.356850, 23.500961>,  <38.850933, 32.255985, 23.436478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232597, 32.356850, 23.500961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242497, 0.335673, 0.910230,
		0.175413, -0.907600, 0.381436,
		0.954162, 0.252163, 0.161209,
		39.518845, 32.432499, 23.549324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055309, 31.877024, 23.975508>,  <38.850933, 32.255985, 23.436478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055309, 31.877024, 23.975508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353004, 32.144188, 23.974348>,  <39.531620, 32.304485, 23.973652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353004, 32.144188, 23.974348>,  <39.055309, 31.877024, 23.975508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353004, 32.144188, 23.974348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004641, 0.009513, 0.999944,
		0.667902, -0.744180, 0.010180,
		0.744235, 0.667912, -0.002900,
		39.576275, 32.344563, 23.973478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489761, 31.639511, 24.490728>,  <39.055309, 31.877024, 23.975508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489761, 31.639511, 24.490728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527634, 32.033245, 24.431236>,  <39.550358, 32.269485, 24.395542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527634, 32.033245, 24.431236>,  <39.489761, 31.639511, 24.490728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527634, 32.033245, 24.431236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004830, 0.149852, 0.988697,
		0.995496, -0.092896, 0.018943,
		0.094685, 0.984334, -0.148728,
		39.556038, 32.328545, 24.386618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990307, 31.741816, 25.076059>,  <39.489761, 31.639511, 24.490728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990307, 31.741816, 25.076059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842781, 32.093002, 24.953979>,  <39.754265, 32.303715, 24.880732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842781, 32.093002, 24.953979>,  <39.990307, 31.741816, 25.076059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842781, 32.093002, 24.953979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058360, 0.305828, 0.950297,
		0.927668, 0.368297, -0.061556,
		-0.368816, 0.877967, -0.305201,
		39.732136, 32.356392, 24.862419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308151, 32.234150, 25.473358>,  <39.990307, 31.741816, 25.076059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308151, 32.234150, 25.473358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996094, 32.440144, 25.331278>,  <39.808861, 32.563740, 25.246031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996094, 32.440144, 25.331278>,  <40.308151, 32.234150, 25.473358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996094, 32.440144, 25.331278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172769, 0.368339, 0.913497,
		0.601270, 0.774028, -0.198384,
		-0.780145, 0.514983, -0.355199,
		39.762051, 32.594639, 25.224718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389568, 32.948597, 25.648056>,  <40.308151, 32.234150, 25.473358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389568, 32.948597, 25.648056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998188, 32.914867, 25.572672>,  <39.763359, 32.894630, 25.527441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998188, 32.914867, 25.572672>,  <40.389568, 32.948597, 25.648056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998188, 32.914867, 25.572672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200817, 0.176695, 0.963562,
		-0.047950, 0.980647, -0.189821,
		-0.978454, -0.084322, -0.188458,
		39.704651, 32.889572, 25.516134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071964, 33.621212, 26.027407>,  <40.389568, 32.948597, 25.648056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071964, 33.621212, 26.027407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761929, 33.383499, 25.941555>,  <39.575905, 33.240871, 25.890043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761929, 33.383499, 25.941555>,  <40.071964, 33.621212, 26.027407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761929, 33.383499, 25.941555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378495, 0.164699, 0.910832,
		-0.505940, 0.787214, -0.352589,
		-0.775091, -0.594280, -0.214629,
		39.529400, 33.205215, 25.877167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539371, 33.977654, 26.138435>,  <40.071964, 33.621212, 26.027407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539371, 33.977654, 26.138435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423717, 33.600304, 26.203478>,  <39.354324, 33.373894, 26.242504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423717, 33.600304, 26.203478>,  <39.539371, 33.977654, 26.138435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423717, 33.600304, 26.203478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250400, 0.238477, 0.938312,
		-0.923960, 0.230579, -0.305173,
		-0.289132, -0.943378, 0.162606,
		39.336979, 33.317291, 26.252260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810875, 34.042274, 26.389055>,  <39.539371, 33.977654, 26.138435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810875, 34.042274, 26.389055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955757, 33.685951, 26.498787>,  <39.042686, 33.472157, 26.564627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955757, 33.685951, 26.498787>,  <38.810875, 34.042274, 26.389055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955757, 33.685951, 26.498787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335158, 0.150158, 0.930119,
		-0.869755, -0.428842, -0.244175,
		0.362209, -0.890813, 0.274330,
		39.064419, 33.418709, 26.581085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289742, 33.669113, 26.801497>,  <38.810875, 34.042274, 26.389055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289742, 33.669113, 26.801497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616333, 33.464424, 26.908451>,  <38.812290, 33.341610, 26.972624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616333, 33.464424, 26.908451>,  <38.289742, 33.669113, 26.801497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616333, 33.464424, 26.908451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372541, -0.113119, 0.921096,
		-0.441100, -0.851671, -0.282998,
		0.816483, -0.511724, 0.267385,
		38.861279, 33.310905, 26.988667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992004, 33.227535, 27.235270>,  <38.289742, 33.669113, 26.801497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992004, 33.227535, 27.235270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381451, 33.221592, 27.326351>,  <38.615120, 33.218025, 27.381001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381451, 33.221592, 27.326351>,  <37.992004, 33.227535, 27.235270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381451, 33.221592, 27.326351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227217, 0.028934, 0.973414,
		-0.021056, -0.999471, 0.024793,
		0.973616, -0.014863, 0.227706,
		38.673534, 33.217136, 27.394663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982395, 32.724049, 27.783724>,  <37.992004, 33.227535, 27.235270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982395, 32.724049, 27.783724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323383, 32.931824, 27.807302>,  <38.527977, 33.056488, 27.821449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323383, 32.931824, 27.807302>,  <37.982395, 32.724049, 27.783724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323383, 32.931824, 27.807302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234147, 0.278566, 0.931438,
		0.467406, -0.807826, 0.359095,
		0.852471, 0.519441, 0.058946,
		38.579124, 33.087654, 27.824986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427105, 32.443607, 28.398764>,  <37.982395, 32.724049, 27.783724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427105, 32.443607, 28.398764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583149, 32.804199, 28.323765>,  <38.676777, 33.020554, 28.278765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583149, 32.804199, 28.323765>,  <38.427105, 32.443607, 28.398764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583149, 32.804199, 28.323765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154639, 0.264884, 0.951800,
		0.907689, -0.342315, 0.242737,
		0.390113, 0.901475, -0.187497,
		38.700184, 33.074642, 28.267515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056442, 32.422188, 28.861206>,  <38.427105, 32.443607, 28.398764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056442, 32.422188, 28.861206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938755, 32.794327, 28.773666>,  <38.868141, 33.017609, 28.721142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938755, 32.794327, 28.773666>,  <39.056442, 32.422188, 28.861206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938755, 32.794327, 28.773666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050449, 0.243783, 0.968517,
		0.954405, 0.273918, -0.118662,
		-0.294222, 0.930343, -0.218849,
		38.850487, 33.073429, 28.708012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536152, 32.810089, 29.086340>,  <39.056442, 32.422188, 28.861206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536152, 32.810089, 29.086340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203300, 33.031460, 29.071987>,  <39.003590, 33.164280, 29.063375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203300, 33.031460, 29.071987>,  <39.536152, 32.810089, 29.086340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203300, 33.031460, 29.071987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075585, 0.177272, 0.981255,
		0.549411, 0.813816, -0.189343,
		-0.832126, 0.553424, -0.035883,
		38.953663, 33.197487, 29.061222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683323, 33.199139, 29.641396>,  <39.536152, 32.810089, 29.086340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683323, 33.199139, 29.641396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303280, 33.314663, 29.594276>,  <39.075253, 33.383976, 29.566006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303280, 33.314663, 29.594276>,  <39.683323, 33.199139, 29.641396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303280, 33.314663, 29.594276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110717, 0.040794, 0.993014,
		0.291598, 0.956517, -0.006783,
		-0.950112, 0.288810, -0.117798,
		39.018246, 33.401306, 29.558937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507744, 33.859653, 30.094440>,  <39.683323, 33.199139, 29.641396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507744, 33.859653, 30.094440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191208, 33.623352, 30.031471>,  <39.001286, 33.481571, 29.993689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191208, 33.623352, 30.031471>,  <39.507744, 33.859653, 30.094440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191208, 33.623352, 30.031471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128801, -0.090619, 0.987521,
		-0.597650, 0.801745, -0.004379,
		-0.791343, -0.590757, -0.157425,
		38.953804, 33.446125, 29.984243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122696, 33.997803, 30.708809>,  <39.507744, 33.859653, 30.094440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122696, 33.997803, 30.708809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920761, 33.681423, 30.570507>,  <38.799599, 33.491596, 30.487526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920761, 33.681423, 30.570507>,  <39.122696, 33.997803, 30.708809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920761, 33.681423, 30.570507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262440, -0.240952, 0.934381,
		-0.822354, 0.562449, -0.085934,
		-0.504835, -0.790945, -0.345757,
		38.769310, 33.444141, 30.466780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605270, 33.992054, 31.178480>,  <39.122696, 33.997803, 30.708809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605270, 33.992054, 31.178480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595955, 33.612545, 31.052439>,  <38.590366, 33.384838, 30.976814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595955, 33.612545, 31.052439>,  <38.605270, 33.992054, 31.178480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595955, 33.612545, 31.052439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469636, -0.267864, 0.841244,
		-0.882553, 0.167575, -0.439339,
		-0.023288, -0.948772, -0.315103,
		38.588970, 33.327915, 30.957909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993488, 33.711174, 31.511547>,  <38.605270, 33.992054, 31.178480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993488, 33.711174, 31.511547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223373, 33.402065, 31.403822>,  <38.361305, 33.216599, 31.339186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223373, 33.402065, 31.403822>,  <37.993488, 33.711174, 31.511547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223373, 33.402065, 31.403822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208696, -0.456608, 0.864844,
		-0.791299, -0.440829, -0.423692,
		0.574710, -0.772773, -0.269314,
		38.395786, 33.170235, 31.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483585, 33.084717, 31.519201>,  <37.993488, 33.711174, 31.511547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483585, 33.084717, 31.519201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851879, 32.931770, 31.550314>,  <38.072853, 32.840004, 31.568981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851879, 32.931770, 31.550314>,  <37.483585, 33.084717, 31.519201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851879, 32.931770, 31.550314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227086, -0.362986, 0.903700,
		-0.317302, -0.849731, -0.421042,
		0.920734, -0.382359, 0.077786,
		38.128098, 32.817062, 31.573648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458611, 32.392086, 31.841175>,  <37.483585, 33.084717, 31.519201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458611, 32.392086, 31.841175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837673, 32.495537, 31.916080>,  <38.065109, 32.557606, 31.961023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837673, 32.495537, 31.916080>,  <37.458611, 32.392086, 31.841175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837673, 32.495537, 31.916080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015976, -0.547330, 0.836765,
		0.318905, -0.795953, -0.514546,
		0.947652, 0.258629, 0.187262,
		38.121967, 32.573124, 31.972260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942139, 31.738935, 31.995619>,  <37.458611, 32.392086, 31.841175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942139, 31.738935, 31.995619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159870, 32.033066, 32.157116>,  <38.290508, 32.209545, 32.254013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159870, 32.033066, 32.157116>,  <37.942139, 31.738935, 31.995619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159870, 32.033066, 32.157116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270454, -0.609420, 0.745293,
		0.794080, -0.296489, -0.530595,
		0.544326, 0.735324, 0.403742,
		38.323170, 32.253662, 32.278240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692574, 31.594543, 32.046993>,  <37.942139, 31.738935, 31.995619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692574, 31.594543, 32.046993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638294, 31.879345, 32.322571>,  <38.605728, 32.050224, 32.487915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638294, 31.879345, 32.322571>,  <38.692574, 31.594543, 32.046993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638294, 31.879345, 32.322571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283283, -0.638459, 0.715626,
		0.949388, 0.292273, -0.115061,
		-0.135697, 0.712002, 0.688941,
		38.597584, 32.092945, 32.529255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120911, 31.447939, 32.496723>,  <38.692574, 31.594543, 32.046993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120911, 31.447939, 32.496723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905499, 31.713331, 32.704483>,  <38.776249, 31.872566, 32.829140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905499, 31.713331, 32.704483>,  <39.120911, 31.447939, 32.496723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905499, 31.713331, 32.704483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147816, -0.532474, 0.833440,
		0.829537, 0.525611, 0.188682,
		-0.538534, 0.663479, 0.519401,
		38.743938, 31.912374, 32.860302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567997, 31.613222, 32.996796>,  <39.120911, 31.447939, 32.496723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567997, 31.613222, 32.996796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190029, 31.675467, 33.111969>,  <38.963249, 31.712814, 33.181072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190029, 31.675467, 33.111969>,  <39.567997, 31.613222, 32.996796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190029, 31.675467, 33.111969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099409, -0.701725, 0.705478,
		0.311831, 0.695246, 0.647607,
		-0.944923, 0.155612, 0.287933,
		38.906551, 31.722151, 33.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587021, 31.682310, 33.747887>,  <39.567997, 31.613222, 32.996796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587021, 31.682310, 33.747887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207920, 31.583733, 33.666859>,  <38.980461, 31.524586, 33.618244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207920, 31.583733, 33.666859>,  <39.587021, 31.682310, 33.747887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207920, 31.583733, 33.666859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022006, -0.582968, 0.812197,
		-0.318250, 0.774218, 0.547086,
		-0.947752, -0.246442, -0.202567,
		38.923595, 31.509800, 33.606087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263672, 31.622076, 34.376461>,  <39.587021, 31.682310, 33.747887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263672, 31.622076, 34.376461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030323, 31.411055, 34.129440>,  <38.890312, 31.284441, 33.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030323, 31.411055, 34.129440>,  <39.263672, 31.622076, 34.376461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030323, 31.411055, 34.129440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218042, -0.630699, 0.744766,
		-0.782391, 0.569126, 0.252902,
		-0.583371, -0.527555, -0.617547,
		38.855312, 31.252789, 33.944176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487514, 32.099030, 34.923660>,  <39.263672, 31.622076, 34.376461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487514, 32.099030, 34.923660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807106, 32.034813, 35.155472>,  <39.998863, 31.996283, 35.294559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807106, 32.034813, 35.155472>,  <39.487514, 32.099030, 34.923660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807106, 32.034813, 35.155472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512949, -0.684929, 0.517452,
		0.313864, -0.710703, -0.629596,
		0.798983, -0.160541, 0.579529,
		40.046803, 31.986650, 35.329330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786736, 31.274885, 34.768604>,  <39.487514, 32.099030, 34.923660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786736, 31.274885, 34.768604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896297, 31.414423, 35.127110>,  <39.962036, 31.498146, 35.342213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896297, 31.414423, 35.127110>,  <39.786736, 31.274885, 34.768604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896297, 31.414423, 35.127110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328051, -0.842125, 0.428028,
		0.904079, -0.411258, -0.116224,
		0.273906, 0.348844, 0.896261,
		39.978470, 31.519075, 35.395988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185474, 30.688234, 35.132759>,  <39.786736, 31.274885, 34.768604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185474, 30.688234, 35.132759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067501, 30.929964, 35.428814>,  <39.996716, 31.075001, 35.606449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067501, 30.929964, 35.428814>,  <40.185474, 30.688234, 35.132759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067501, 30.929964, 35.428814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305224, -0.793599, 0.526344,
		0.905456, -0.070670, 0.418515,
		-0.294936, 0.604323, 0.740140,
		39.979019, 31.111261, 35.650856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640717, 30.654259, 35.782215>,  <40.185474, 30.688234, 35.132759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640717, 30.654259, 35.782215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252998, 30.736938, 35.835491>,  <40.020367, 30.786547, 35.867455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252998, 30.736938, 35.835491>,  <40.640717, 30.654259, 35.782215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252998, 30.736938, 35.835491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094273, -0.812638, 0.575093,
		0.227104, 0.544880, 0.807174,
		-0.969297, 0.206700, 0.133186,
		39.962208, 30.798948, 35.875446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478127, 30.333361, 36.361134>,  <40.640717, 30.654259, 35.782215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478127, 30.333361, 36.361134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100029, 30.407328, 36.253571>,  <39.873169, 30.451708, 36.189034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100029, 30.407328, 36.253571>,  <40.478127, 30.333361, 36.361134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100029, 30.407328, 36.253571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307841, -0.778781, 0.546566,
		-0.108348, 0.599421, 0.793067,
		-0.945248, 0.184919, -0.268906,
		39.816456, 30.462803, 36.172897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106319, 30.138588, 36.911327>,  <40.478127, 30.333361, 36.361134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106319, 30.138588, 36.911327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818939, 30.152172, 36.633427>,  <39.646511, 30.160322, 36.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818939, 30.152172, 36.633427>,  <40.106319, 30.138588, 36.911327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818939, 30.152172, 36.633427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468382, -0.762048, 0.447103,
		-0.514250, 0.646629, 0.563398,
		-0.718446, 0.033962, -0.694753,
		39.603405, 30.162361, 36.424999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438965, 30.160378, 37.293419>,  <40.106319, 30.138588, 36.911327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438965, 30.160378, 37.293419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369339, 30.020000, 36.925388>,  <39.327564, 29.935774, 36.704571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369339, 30.020000, 36.925388>,  <39.438965, 30.160378, 37.293419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369339, 30.020000, 36.925388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522291, -0.759188, 0.388389,
		-0.834813, 0.548153, -0.051143,
		-0.174069, -0.350943, -0.920075,
		39.317120, 29.914717, 36.649364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779953, 29.997608, 37.240814>,  <39.438965, 30.160378, 37.293419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779953, 29.997608, 37.240814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912941, 29.794735, 36.922764>,  <38.992733, 29.673012, 36.731934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912941, 29.794735, 36.922764>,  <38.779953, 29.997608, 37.240814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912941, 29.794735, 36.922764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616021, -0.755175, 0.224117,
		-0.714129, 0.415303, -0.563510,
		0.332473, -0.507182, -0.795128,
		39.012684, 29.642580, 36.684227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273945, 29.740135, 36.862080>,  <38.779953, 29.997608, 37.240814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273945, 29.740135, 36.862080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599895, 29.509186, 36.841610>,  <38.795464, 29.370617, 36.829327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599895, 29.509186, 36.841610>,  <38.273945, 29.740135, 36.862080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599895, 29.509186, 36.841610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491281, -0.734820, 0.467634,
		-0.307607, -0.355920, -0.882439,
		0.814875, -0.577373, -0.051179,
		38.844357, 29.335974, 36.826256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143646, 29.054991, 36.507256>,  <38.273945, 29.740135, 36.862080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143646, 29.054991, 36.507256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467216, 29.013538, 36.738735>,  <38.661358, 28.988667, 36.877625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467216, 29.013538, 36.738735>,  <38.143646, 29.054991, 36.507256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467216, 29.013538, 36.738735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486222, -0.671274, 0.559445,
		0.330492, -0.733929, -0.593400,
		0.808927, -0.103632, 0.578703,
		38.709896, 28.982449, 36.912346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433285, 28.339676, 36.438251>,  <38.143646, 29.054991, 36.507256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433285, 28.339676, 36.438251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514248, 28.506142, 36.792843>,  <38.562824, 28.606020, 37.005596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514248, 28.506142, 36.792843>,  <38.433285, 28.339676, 36.438251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514248, 28.506142, 36.792843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521401, -0.720449, 0.457268,
		0.828959, -0.554763, 0.071166,
		0.202404, 0.416162, 0.886477,
		38.574970, 28.630991, 37.058784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721462, 27.798046, 36.937805>,  <38.433285, 28.339676, 36.438251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721462, 27.798046, 36.937805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782661, 28.109308, 37.181465>,  <38.819382, 28.296066, 37.327660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782661, 28.109308, 37.181465>,  <38.721462, 27.798046, 36.937805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782661, 28.109308, 37.181465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509392, -0.466108, 0.723369,
		0.846824, -0.420973, 0.325072,
		0.153000, 0.778156, 0.609151,
		38.828560, 28.342754, 37.364212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653831, 27.621284, 37.622372>,  <38.721462, 27.798046, 36.937805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653831, 27.621284, 37.622372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671227, 28.013302, 37.699963>,  <38.681664, 28.248512, 37.746517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671227, 28.013302, 37.699963>,  <38.653831, 27.621284, 37.622372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671227, 28.013302, 37.699963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379169, -0.163442, 0.910779,
		0.924305, -0.113156, 0.364494,
		0.043486, 0.980042, 0.193976,
		38.684273, 28.307314, 37.758156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095081, 27.657373, 38.245842>,  <38.653831, 27.621284, 37.622372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095081, 27.657373, 38.245842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909634, 28.011290, 38.227047>,  <38.798367, 28.223639, 38.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909634, 28.011290, 38.227047>,  <39.095081, 27.657373, 38.245842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909634, 28.011290, 38.227047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217858, -0.062430, 0.973982,
		0.858835, 0.461791, 0.221702,
		-0.463617, 0.884789, -0.046988,
		38.770550, 28.276726, 38.212952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208851, 27.912563, 38.902267>,  <39.095081, 27.657373, 38.245842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208851, 27.912563, 38.902267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902512, 28.117620, 38.747002>,  <38.718708, 28.240654, 38.653843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902512, 28.117620, 38.747002>,  <39.208851, 27.912563, 38.902267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902512, 28.117620, 38.747002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289093, 0.264706, 0.919976,
		0.574367, 0.816780, -0.054524,
		-0.765851, 0.512642, -0.388163,
		38.672756, 28.271414, 38.630554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246494, 28.545040, 39.287193>,  <39.208851, 27.912563, 38.902267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246494, 28.545040, 39.287193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880054, 28.466463, 39.147385>,  <38.660191, 28.419317, 39.063499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880054, 28.466463, 39.147385>,  <39.246494, 28.545040, 39.287193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880054, 28.466463, 39.147385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392053, 0.256346, 0.883505,
		-0.083960, 0.946413, -0.311856,
		-0.916103, -0.196443, -0.349521,
		38.605225, 28.407530, 39.042530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759838, 29.021917, 39.667961>,  <39.246494, 28.545040, 39.287193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759838, 29.021917, 39.667961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547714, 28.712196, 39.529842>,  <38.420441, 28.526363, 39.446972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547714, 28.712196, 39.529842>,  <38.759838, 29.021917, 39.667961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547714, 28.712196, 39.529842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504134, -0.039458, 0.862724,
		-0.681634, 0.631584, -0.369428,
		-0.530306, -0.774303, -0.345299,
		38.388622, 28.479906, 39.426254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127213, 29.228649, 39.697727>,  <38.759838, 29.021917, 39.667961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127213, 29.228649, 39.697727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096928, 28.830063, 39.683159>,  <38.078758, 28.590912, 39.674419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096928, 28.830063, 39.683159>,  <38.127213, 29.228649, 39.697727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096928, 28.830063, 39.683159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601941, 0.016559, 0.798369,
		-0.794943, 0.082369, -0.601067,
		-0.075714, -0.996464, -0.036418,
		38.074215, 28.531124, 39.672234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409500, 28.957476, 39.842125>,  <38.127213, 29.228649, 39.697727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409500, 28.957476, 39.842125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625252, 28.625431, 39.898674>,  <37.754704, 28.426205, 39.932602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625252, 28.625431, 39.898674>,  <37.409500, 28.957476, 39.842125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625252, 28.625431, 39.898674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548573, -0.219026, 0.806905,
		-0.638859, -0.512777, -0.573515,
		0.539377, -0.830113, 0.141369,
		37.787064, 28.376398, 39.941086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995449, 28.521046, 40.175930>,  <37.409500, 28.957476, 39.842125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995449, 28.521046, 40.175930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344040, 28.353878, 40.278599>,  <37.553192, 28.253578, 40.340199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344040, 28.353878, 40.278599>,  <36.995449, 28.521046, 40.175930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344040, 28.353878, 40.278599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418965, -0.362312, 0.832585,
		-0.254958, -0.833111, -0.490838,
		0.871473, -0.417918, 0.256670,
		37.605480, 28.228502, 40.355598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784332, 28.155664, 40.788162>,  <36.995449, 28.521046, 40.175930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784332, 28.155664, 40.788162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181808, 28.116100, 40.809338>,  <37.420292, 28.092361, 40.822044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181808, 28.116100, 40.809338>,  <36.784332, 28.155664, 40.788162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181808, 28.116100, 40.809338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085920, -0.367545, 0.926028,
		-0.072133, -0.924731, -0.373723,
		0.993687, -0.098907, 0.052941,
		37.479916, 28.086428, 40.825218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862709, 27.625622, 41.313103>,  <36.784332, 28.155664, 40.788162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862709, 27.625622, 41.313103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631916, 27.349512, 41.138462>,  <36.493443, 27.183846, 41.033680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631916, 27.349512, 41.138462>,  <36.862709, 27.625622, 41.313103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631916, 27.349512, 41.138462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816427, -0.472193, -0.332386,
		0.023279, -0.548230, 0.836004,
		-0.576979, -0.690274, -0.436597,
		36.458820, 27.142429, 41.007484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137295, 28.286800, 41.561516>,  <36.862709, 27.625622, 41.313103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137295, 28.286800, 41.561516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401958, 27.991982, 41.506428>,  <37.560757, 27.815090, 41.473373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401958, 27.991982, 41.506428>,  <37.137295, 28.286800, 41.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401958, 27.991982, 41.506428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177455, 0.332387, -0.926298,
		0.728500, 0.588458, 0.350721,
		0.661663, -0.737046, -0.137719,
		37.600456, 27.770868, 41.465111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712646, 28.533463, 41.129822>,  <37.137295, 28.286800, 41.561516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712646, 28.533463, 41.129822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783337, 28.139856, 41.121033>,  <37.825752, 27.903692, 41.115761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783337, 28.139856, 41.121033>,  <37.712646, 28.533463, 41.129822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783337, 28.139856, 41.121033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169507, 0.052417, -0.984134,
		0.969554, 0.170200, 0.176061,
		0.176728, -0.984014, -0.021971,
		37.836353, 27.844652, 41.114441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461933, 28.419506, 41.008171>,  <37.712646, 28.533463, 41.129822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461933, 28.419506, 41.008171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206749, 28.144243, 40.869930>,  <38.053638, 27.979086, 40.786983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206749, 28.144243, 40.869930>,  <38.461933, 28.419506, 41.008171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206749, 28.144243, 40.869930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273745, 0.216821, -0.937044,
		0.719767, -0.692409, 0.050055,
		-0.637965, -0.688156, -0.345604,
		38.015358, 27.937796, 40.766251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793739, 27.837318, 40.574780>,  <38.461933, 28.419506, 41.008171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793739, 27.837318, 40.574780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412987, 27.882820, 40.460945>,  <38.184536, 27.910122, 40.392643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412987, 27.882820, 40.460945>,  <38.793739, 27.837318, 40.574780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412987, 27.882820, 40.460945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298367, 0.131687, -0.945323,
		-0.070059, -0.984743, -0.159291,
		-0.951876, 0.113755, -0.284589,
		38.127422, 27.916946, 40.375568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644211, 27.439693, 39.997524>,  <38.793739, 27.837318, 40.574780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644211, 27.439693, 39.997524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354759, 27.715448, 39.984234>,  <38.181087, 27.880901, 39.976261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354759, 27.715448, 39.984234>,  <38.644211, 27.439693, 39.997524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354759, 27.715448, 39.984234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093105, 0.049804, -0.994410,
		-0.683880, -0.722678, -0.100226,
		-0.723630, 0.689388, -0.033225,
		38.137669, 27.922264, 39.974266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172520, 27.257595, 39.498314>,  <38.644211, 27.439693, 39.997524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172520, 27.257595, 39.498314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088326, 27.645374, 39.548695>,  <38.037811, 27.878042, 39.578922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088326, 27.645374, 39.548695>,  <38.172520, 27.257595, 39.498314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088326, 27.645374, 39.548695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118191, 0.153128, -0.981113,
		-0.970427, -0.191621, -0.146811,
		-0.210482, 0.969450, 0.125951,
		38.025181, 27.936209, 39.586479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694447, 27.492037, 39.047710>,  <38.172520, 27.257595, 39.498314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694447, 27.492037, 39.047710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892246, 27.825802, 39.145054>,  <38.010925, 28.026060, 39.203461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892246, 27.825802, 39.145054>,  <37.694447, 27.492037, 39.047710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892246, 27.825802, 39.145054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108771, 0.218382, -0.969782,
		-0.862344, 0.506029, 0.017230,
		0.494501, 0.834412, 0.243362,
		38.040596, 28.076126, 39.218063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453293, 28.099239, 38.632942>,  <37.694447, 27.492037, 39.047710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453293, 28.099239, 38.632942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812298, 28.220852, 38.760712>,  <38.027702, 28.293819, 38.837372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812298, 28.220852, 38.760712>,  <37.453293, 28.099239, 38.632942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812298, 28.220852, 38.760712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143476, 0.483606, -0.863446,
		-0.416990, 0.820786, 0.390423,
		0.897516, 0.304032, 0.319422,
		38.081551, 28.312061, 38.856537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544838, 28.800489, 38.371872>,  <37.453293, 28.099239, 38.632942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544838, 28.800489, 38.371872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911510, 28.654617, 38.437233>,  <38.131516, 28.567093, 38.476452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911510, 28.654617, 38.437233>,  <37.544838, 28.800489, 38.371872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911510, 28.654617, 38.437233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305924, 0.377326, -0.874091,
		0.257107, 0.851254, 0.457453,
		0.916682, -0.364681, 0.163406,
		38.186516, 28.545214, 38.486256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030701, 29.384567, 38.073128>,  <37.544838, 28.800489, 38.371872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030701, 29.384567, 38.073128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247345, 29.050949, 38.115143>,  <38.377331, 28.850779, 38.140350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247345, 29.050949, 38.115143>,  <38.030701, 29.384567, 38.073128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247345, 29.050949, 38.115143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553340, 0.259654, -0.791451,
		0.632832, 0.486777, 0.602140,
		0.541608, -0.834044, 0.105036,
		38.409828, 28.800735, 38.146652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375042, 29.612305, 38.712769>,  <38.030701, 29.384567, 38.073128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375042, 29.612305, 38.712769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118263, 29.858255, 38.529541>,  <37.964195, 30.005825, 38.419605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118263, 29.858255, 38.529541>,  <38.375042, 29.612305, 38.712769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118263, 29.858255, 38.529541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157579, 0.690468, 0.705991,
		0.750380, 0.381028, -0.540137,
		-0.641949, 0.614875, -0.458071,
		37.925678, 30.042719, 38.392120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735893, 29.548742, 38.020878>,  <38.375042, 29.612305, 38.712769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735893, 29.548742, 38.020878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719597, 29.156906, 37.942142>,  <38.709820, 28.921804, 37.894901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719597, 29.156906, 37.942142>,  <38.735893, 29.548742, 38.020878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719597, 29.156906, 37.942142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427043, 0.161033, -0.889776,
		0.903313, -0.120309, 0.411766,
		-0.040740, -0.979589, -0.196841,
		38.707375, 28.863029, 37.883091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452362, 29.345564, 37.972500>,  <38.735893, 29.548742, 38.020878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452362, 29.345564, 37.972500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195065, 29.111570, 37.774902>,  <39.040688, 28.971174, 37.656342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195065, 29.111570, 37.774902>,  <39.452362, 29.345564, 37.972500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195065, 29.111570, 37.774902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490849, 0.180106, -0.852426,
		0.587627, -0.790794, 0.171287,
		-0.643244, -0.584984, -0.493995,
		39.002090, 28.936075, 37.626705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745399, 28.785643, 37.656429>,  <39.452362, 29.345564, 37.972500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745399, 28.785643, 37.656429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418304, 28.853582, 37.436443>,  <39.222050, 28.894346, 37.304451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418304, 28.853582, 37.436443>,  <39.745399, 28.785643, 37.656429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418304, 28.853582, 37.436443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574337, 0.177662, -0.799107,
		-0.038021, -0.969323, -0.242832,
		-0.817735, 0.169851, -0.549963,
		39.172985, 28.904537, 37.271454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894772, 28.452940, 36.928108>,  <39.745399, 28.785643, 37.656429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894772, 28.452940, 36.928108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599323, 28.719660, 36.888489>,  <39.422054, 28.879692, 36.864719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599323, 28.719660, 36.888489>,  <39.894772, 28.452940, 36.928108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599323, 28.719660, 36.888489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291232, 0.183133, -0.938960,
		-0.607961, -0.722384, -0.329460,
		-0.738625, 0.666801, -0.099044,
		39.377735, 28.919701, 36.858776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651165, 28.465355, 36.280666>,  <39.894772, 28.452940, 36.928108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651165, 28.465355, 36.280666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580807, 28.836748, 36.411499>,  <39.538589, 29.059584, 36.489998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580807, 28.836748, 36.411499>,  <39.651165, 28.465355, 36.280666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580807, 28.836748, 36.411499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201150, 0.359151, -0.911345,
		-0.963638, -0.094514, -0.249939,
		-0.175900, 0.928481, 0.327080,
		39.528038, 29.115292, 36.509624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467232, 29.023781, 35.708607>,  <39.651165, 28.465355, 36.280666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467232, 29.023781, 35.708607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258850, 29.222317, 35.986382>,  <39.133820, 29.341438, 36.153046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258850, 29.222317, 35.986382>,  <39.467232, 29.023781, 35.708607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258850, 29.222317, 35.986382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380135, 0.863336, -0.331887,
		-0.764266, 0.091083, -0.638437,
		-0.520956, 0.496342, 0.694442,
		39.102562, 29.371220, 36.194714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996498, 29.532269, 35.411140>,  <39.467232, 29.023781, 35.708607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996498, 29.532269, 35.411140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118809, 29.639549, 35.776558>,  <39.192196, 29.703918, 35.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118809, 29.639549, 35.776558>,  <38.996498, 29.532269, 35.411140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118809, 29.639549, 35.776558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322491, 0.873611, -0.364421,
		-0.895824, 0.406042, 0.180636,
		0.305776, 0.268204, 0.913547,
		39.210541, 29.720011, 36.050621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648270, 30.177553, 35.578720>,  <38.996498, 29.532269, 35.411140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648270, 30.177553, 35.578720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961124, 30.160637, 35.827385>,  <39.148838, 30.150488, 35.976585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961124, 30.160637, 35.827385>,  <38.648270, 30.177553, 35.578720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961124, 30.160637, 35.827385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193636, 0.964793, -0.177989,
		-0.592250, 0.259589, 0.762793,
		0.782142, -0.042290, 0.621664,
		39.195766, 30.147949, 36.013885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621895, 30.849619, 35.858448>,  <38.648270, 30.177553, 35.578720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621895, 30.849619, 35.858448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983158, 30.739700, 35.990383>,  <39.199917, 30.673750, 36.069546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983158, 30.739700, 35.990383>,  <38.621895, 30.849619, 35.858448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983158, 30.739700, 35.990383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347511, 0.919075, -0.185844,
		-0.252079, 0.282469, 0.925563,
		0.903157, -0.274796, 0.329840,
		39.254105, 30.657261, 36.089336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887905, 31.327969, 36.412750>,  <38.621895, 30.849619, 35.858448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887905, 31.327969, 36.412750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218662, 31.173084, 36.249619>,  <39.417114, 31.080154, 36.151741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218662, 31.173084, 36.249619>,  <38.887905, 31.327969, 36.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218662, 31.173084, 36.249619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351164, 0.921956, -0.163344,
		0.439245, -0.008145, 0.898331,
		0.826891, -0.387209, -0.407825,
		39.466728, 31.056921, 36.127270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530476, 31.752335, 36.688114>,  <38.887905, 31.327969, 36.412750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530476, 31.752335, 36.688114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629395, 31.583082, 36.339447>,  <39.688747, 31.481531, 36.130245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629395, 31.583082, 36.339447>,  <39.530476, 31.752335, 36.688114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629395, 31.583082, 36.339447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519717, 0.817177, -0.249232,
		0.817764, -0.391387, 0.421992,
		0.247296, -0.423129, -0.871669,
		39.703583, 31.456144, 36.077946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131504, 32.127361, 36.567677>,  <39.530476, 31.752335, 36.688114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131504, 32.127361, 36.567677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084877, 31.938686, 36.218063>,  <40.056900, 31.825481, 36.008297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084877, 31.938686, 36.218063>,  <40.131504, 32.127361, 36.567677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084877, 31.938686, 36.218063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574983, 0.685507, -0.446627,
		0.809820, -0.554612, 0.191306,
		-0.116563, -0.471684, -0.874029,
		40.049908, 31.797180, 35.955856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762154, 31.935799, 36.398701>,  <40.131504, 32.127361, 36.567677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762154, 31.935799, 36.398701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544167, 31.970282, 36.065098>,  <40.413372, 31.990973, 35.864937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544167, 31.970282, 36.065098>,  <40.762154, 31.935799, 36.398701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544167, 31.970282, 36.065098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734368, 0.529088, -0.425170,
		0.404612, -0.844176, -0.351646,
		-0.544971, 0.086208, -0.834012,
		40.380676, 31.996143, 35.814896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233330, 31.928988, 35.869152>,  <40.762154, 31.935799, 36.398701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233330, 31.928988, 35.869152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910614, 32.120544, 35.730732>,  <40.716984, 32.235477, 35.647678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910614, 32.120544, 35.730732>,  <41.233330, 31.928988, 35.869152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910614, 32.120544, 35.730732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580460, 0.751727, -0.313007,
		0.110238, -0.453399, -0.884464,
		-0.806792, 0.478891, -0.346049,
		40.668575, 32.264210, 35.626919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556168, 32.282242, 35.395847>,  <41.233330, 31.928988, 35.869152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556168, 32.282242, 35.395847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203827, 32.470966, 35.411324>,  <40.992424, 32.584202, 35.420609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203827, 32.470966, 35.411324>,  <41.556168, 32.282242, 35.395847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203827, 32.470966, 35.411324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400799, 0.786761, -0.469432,
		-0.251925, -0.397992, -0.882120,
		-0.880849, 0.471814, 0.038690,
		40.939571, 32.612511, 35.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426842, 32.526348, 34.735466>,  <41.556168, 32.282242, 35.395847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426842, 32.526348, 34.735466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260223, 32.727154, 35.038643>,  <41.160252, 32.847637, 35.220551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260223, 32.727154, 35.038643>,  <41.426842, 32.526348, 34.735466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260223, 32.727154, 35.038643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506157, 0.820607, -0.265350,
		-0.755181, 0.273108, -0.595914,
		-0.416542, 0.502013, 0.757942,
		41.135262, 32.877758, 35.266026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028992, 33.124115, 34.500923>,  <41.426842, 32.526348, 34.735466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028992, 33.124115, 34.500923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159489, 33.188622, 34.873493>,  <41.237785, 33.227325, 35.097034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159489, 33.188622, 34.873493>,  <41.028992, 33.124115, 34.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159489, 33.188622, 34.873493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402882, 0.867645, -0.291338,
		-0.855134, 0.470302, 0.218088,
		0.326240, 0.161269, 0.931429,
		41.257362, 33.237003, 35.152924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682201, 33.612152, 34.936146>,  <41.028992, 33.124115, 34.500923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682201, 33.612152, 34.936146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070484, 33.599686, 35.031441>,  <41.303455, 33.592205, 35.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070484, 33.599686, 35.031441>,  <40.682201, 33.612152, 34.936146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070484, 33.599686, 35.031441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145355, 0.865704, -0.478988,
		-0.191314, 0.499586, 0.844875,
		0.970706, -0.031170, 0.238238,
		41.361694, 33.590336, 35.102913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827091, 34.306168, 35.117352>,  <40.682201, 33.612152, 34.936146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827091, 34.306168, 35.117352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164909, 34.153717, 34.966896>,  <41.367599, 34.062248, 34.876621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164909, 34.153717, 34.966896>,  <40.827091, 34.306168, 35.117352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164909, 34.153717, 34.966896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097444, 0.800098, -0.591903,
		0.526538, 0.463238, 0.712860,
		0.844549, -0.381123, -0.376142,
		41.418274, 34.039379, 34.854053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969898, 34.494373, 35.962749>,  <40.827091, 34.306168, 35.117352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969898, 34.494373, 35.962749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798519, 34.763489, 36.204010>,  <40.695690, 34.924957, 36.348766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798519, 34.763489, 36.204010>,  <40.969898, 34.494373, 35.962749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798519, 34.763489, 36.204010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875234, 0.143165, 0.462028,
		0.224494, 0.725855, -0.650182,
		-0.428449, 0.672784, 0.603153,
		40.669983, 34.965324, 36.384956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497238, 35.006546, 35.968731>,  <40.969898, 34.494373, 35.962749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497238, 35.006546, 35.968731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273373, 34.972294, 36.298447>,  <41.139053, 34.951744, 36.496277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273373, 34.972294, 36.298447>,  <41.497238, 35.006546, 35.968731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273373, 34.972294, 36.298447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826486, 0.015341, 0.562748,
		-0.060835, 0.996209, 0.062188,
		-0.559660, -0.085632, 0.824286,
		41.105476, 34.946606, 36.545731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521973, 35.666668, 36.442669>,  <41.497238, 35.006546, 35.968731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521973, 35.666668, 36.442669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483006, 35.317829, 36.634483>,  <41.459625, 35.108528, 36.749573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483006, 35.317829, 36.634483>,  <41.521973, 35.666668, 36.442669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483006, 35.317829, 36.634483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848609, 0.178947, 0.497836,
		-0.519973, 0.455442, 0.722634,
		-0.097422, -0.872095, 0.479540,
		41.453777, 35.056202, 36.778347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015408, 35.696934, 35.943729>,  <41.521973, 35.666668, 36.442669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015408, 35.696934, 35.943729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618633, 35.709110, 35.894512>,  <41.380569, 35.716415, 35.864983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618633, 35.709110, 35.894512>,  <42.015408, 35.696934, 35.943729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618633, 35.709110, 35.894512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125696, 0.110825, -0.985859,
		-0.016378, -0.993373, -0.113758,
		-0.991934, 0.030445, -0.123048,
		41.321053, 35.718243, 35.857597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640373, 35.257977, 35.846889>,  <42.015408, 35.696934, 35.943729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640373, 35.257977, 35.846889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751583, 34.905216, 35.999180>,  <42.818310, 34.693562, 36.090553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751583, 34.905216, 35.999180>,  <42.640373, 35.257977, 35.846889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751583, 34.905216, 35.999180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931509, 0.150772, -0.330997,
		0.234505, 0.446673, 0.863418,
		0.278026, -0.881902, 0.380723,
		42.834991, 34.640644, 36.113396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254738, 35.186703, 36.297478>,  <42.640373, 35.257977, 35.846889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254738, 35.186703, 36.297478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233410, 34.835545, 36.107128>,  <43.220615, 34.624851, 35.992920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233410, 34.835545, 36.107128>,  <43.254738, 35.186703, 36.297478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233410, 34.835545, 36.107128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974452, 0.058379, -0.216876,
		0.218175, -0.475279, 0.852355,
		-0.053317, -0.877896, -0.475873,
		43.217415, 34.572174, 35.964367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753029, 34.739975, 36.449539>,  <43.254738, 35.186703, 36.297478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753029, 34.739975, 36.449539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657795, 34.575394, 36.097626>,  <43.600655, 34.476643, 35.886478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657795, 34.575394, 36.097626>,  <43.753029, 34.739975, 36.449539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657795, 34.575394, 36.097626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903694, 0.238067, -0.355895,
		0.355883, -0.879788, 0.315152,
		-0.238085, -0.411458, -0.879783,
		43.586369, 34.451958, 35.833691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298119, 34.172352, 36.173626>,  <43.753029, 34.739975, 36.449539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298119, 34.172352, 36.173626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098164, 34.366482, 35.886692>,  <43.978191, 34.482960, 35.714531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098164, 34.366482, 35.886692>,  <44.298119, 34.172352, 36.173626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098164, 34.366482, 35.886692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866008, 0.291470, -0.406296,
		0.011898, -0.824323, -0.565995,
		-0.499890, 0.485322, -0.717338,
		43.948196, 34.512077, 35.671490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018345, 34.231342, 35.899220>,  <44.298119, 34.172352, 36.173626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018345, 34.231342, 35.899220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198105, 33.875618, 35.933098>,  <45.305962, 33.662186, 35.953426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198105, 33.875618, 35.933098>,  <45.018345, 34.231342, 35.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198105, 33.875618, 35.933098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839472, 0.452824, 0.300394,
		-0.305496, -0.063893, 0.950047,
		0.449398, -0.889307, 0.084699,
		45.332924, 33.608826, 35.958508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458614, 34.225906, 36.457069>,  <45.018345, 34.231342, 35.899220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458614, 34.225906, 36.457069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603558, 33.945511, 36.211369>,  <45.690525, 33.777275, 36.063950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603558, 33.945511, 36.211369>,  <45.458614, 34.225906, 36.457069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603558, 33.945511, 36.211369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904168, 0.424341, 0.049129,
		0.226215, -0.573191, 0.787578,
		0.362362, -0.700990, -0.614253,
		45.712265, 33.735214, 36.027092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096725, 33.867844, 36.780067>,  <45.458614, 34.225906, 36.457069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096725, 33.867844, 36.780067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085033, 33.875870, 36.380318>,  <46.078018, 33.880684, 36.140469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085033, 33.875870, 36.380318>,  <46.096725, 33.867844, 36.780067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085033, 33.875870, 36.380318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889353, 0.456911, -0.016835,
		0.456286, -0.889286, -0.031199,
		-0.029227, 0.020065, -0.999372,
		46.076267, 33.881889, 36.080505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579998, 33.445076, 36.368309>,  <46.096725, 33.867844, 36.780067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579998, 33.445076, 36.368309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518681, 33.761070, 36.130848>,  <46.481892, 33.950668, 35.988373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518681, 33.761070, 36.130848>,  <46.579998, 33.445076, 36.368309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518681, 33.761070, 36.130848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932717, 0.314103, 0.177137,
		0.326403, -0.526554, -0.784985,
		-0.153294, 0.789987, -0.593650,
		46.472691, 33.998066, 35.952751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981682, 33.381912, 35.831356>,  <46.579998, 33.445076, 36.368309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981682, 33.381912, 35.831356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892570, 33.757862, 35.934891>,  <46.839104, 33.983433, 35.997013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892570, 33.757862, 35.934891>,  <46.981682, 33.381912, 35.831356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892570, 33.757862, 35.934891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973626, 0.227915, 0.010386,
		-0.049232, 0.254327, -0.965864,
		-0.222776, 0.939879, 0.258840,
		46.825737, 34.039825, 36.012543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.250294, 34.029488, 35.309788>,  <46.981682, 33.381912, 35.831356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.250294, 34.029488, 35.309788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277317, 34.086765, 35.704742>,  <47.293530, 34.121132, 35.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277317, 34.086765, 35.704742>,  <47.250294, 34.029488, 35.309788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.277317, 34.086765, 35.704742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975052, 0.200261, -0.095755,
		-0.211447, 0.969221, -0.126096,
		0.067556, 0.143197, 0.987386,
		47.297585, 34.129723, 36.000957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.540344, 34.613895, 35.041054>,  <47.250294, 34.029488, 35.309788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.540344, 34.613895, 35.041054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.737370, 34.943878, 34.930183>,  <47.855583, 35.141869, 34.863663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.737370, 34.943878, 34.930183>,  <47.540344, 34.613895, 35.041054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.737370, 34.943878, 34.930183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870173, 0.461946, -0.171480,
		-0.013423, 0.325657, 0.945393,
		0.492564, 0.824957, -0.277177,
		47.885139, 35.191364, 34.847031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.433781, 30.710123, 24.482611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112576, 30.948484, 24.485779>,  <35.919853, 31.091501, 24.487679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112576, 30.948484, 24.485779>,  <36.433781, 30.710123, 24.482611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112576, 30.948484, 24.485779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099355, -0.146965, 0.984139,
		0.587616, 0.789494, 0.177222,
		-0.803017, 0.595904, 0.007919,
		35.871670, 31.127256, 24.488155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553467, 31.161100, 24.985579>,  <36.433781, 30.710123, 24.482611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553467, 31.161100, 24.985579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155834, 31.160351, 24.942122>,  <35.917255, 31.159901, 24.916048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155834, 31.160351, 24.942122>,  <36.553467, 31.161100, 24.985579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155834, 31.160351, 24.942122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108291, -0.065075, 0.991987,
		-0.008931, 0.997879, 0.064486,
		-0.994079, -0.001876, -0.108642,
		35.857609, 31.159788, 24.909529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361698, 31.776602, 25.342598>,  <36.553467, 31.161100, 24.985579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361698, 31.776602, 25.342598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071377, 31.502890, 25.314390>,  <35.897186, 31.338661, 25.297466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071377, 31.502890, 25.314390>,  <36.361698, 31.776602, 25.342598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071377, 31.502890, 25.314390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163825, 0.072375, 0.983831,
		-0.668114, 0.725617, -0.164632,
		-0.725800, -0.684282, -0.070520,
		35.853638, 31.297606, 25.293234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925076, 32.124336, 25.796803>,  <36.361698, 31.776602, 25.342598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925076, 32.124336, 25.796803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809837, 31.742498, 25.766457>,  <35.740696, 31.513395, 25.748249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809837, 31.742498, 25.766457>,  <35.925076, 32.124336, 25.796803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809837, 31.742498, 25.766457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275278, 0.006675, 0.961341,
		-0.917183, 0.297840, -0.264702,
		-0.288092, -0.954593, -0.075867,
		35.723412, 31.456121, 25.743696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284298, 32.029110, 26.199377>,  <35.925076, 32.124336, 25.796803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284298, 32.029110, 26.199377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403721, 31.649384, 26.160053>,  <35.475376, 31.421547, 26.136459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403721, 31.649384, 26.160053>,  <35.284298, 32.029110, 26.199377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403721, 31.649384, 26.160053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291869, -0.188889, 0.937621,
		-0.908668, -0.251239, -0.333469,
		0.298556, -0.949316, -0.098309,
		35.493286, 31.364590, 26.130560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709805, 31.619516, 26.380102>,  <35.284298, 32.029110, 26.199377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709805, 31.619516, 26.380102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036716, 31.391413, 26.413244>,  <35.232864, 31.254551, 26.433128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036716, 31.391413, 26.413244>,  <34.709805, 31.619516, 26.380102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036716, 31.391413, 26.413244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305881, -0.307466, 0.901056,
		-0.488360, -0.761755, -0.425716,
		0.817277, -0.570258, 0.082853,
		35.281898, 31.220335, 26.438101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532963, 31.007086, 26.585260>,  <34.709805, 31.619516, 26.380102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532963, 31.007086, 26.585260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913895, 31.039455, 26.702913>,  <35.142456, 31.058878, 26.773504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913895, 31.039455, 26.702913>,  <34.532963, 31.007086, 26.585260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913895, 31.039455, 26.702913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277225, -0.172797, 0.945139,
		0.127310, -0.981627, -0.142126,
		0.952333, 0.080925, 0.294130,
		35.199596, 31.063732, 26.791153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527790, 30.526487, 27.108765>,  <34.532963, 31.007086, 26.585260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527790, 30.526487, 27.108765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864098, 30.737543, 27.157276>,  <35.065880, 30.864178, 27.186382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864098, 30.737543, 27.157276>,  <34.527790, 30.526487, 27.108765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864098, 30.737543, 27.157276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139464, -0.005371, 0.990213,
		0.523128, -0.849450, 0.069071,
		0.840766, 0.527641, 0.121277,
		35.116329, 30.895836, 27.193659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947041, 30.163960, 27.633238>,  <34.527790, 30.526487, 27.108765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947041, 30.163960, 27.633238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046364, 30.551432, 27.633398>,  <35.105957, 30.783915, 27.633493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046364, 30.551432, 27.633398>,  <34.947041, 30.163960, 27.633238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046364, 30.551432, 27.633398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157962, 0.040084, 0.986631,
		0.955716, -0.245047, 0.162968,
		0.248304, 0.968682, 0.000399,
		35.120853, 30.842037, 27.633518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537380, 30.260864, 28.096666>,  <34.947041, 30.163960, 27.633238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537380, 30.260864, 28.096666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340664, 30.607239, 28.060230>,  <35.222633, 30.815063, 28.038368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340664, 30.607239, 28.060230>,  <35.537380, 30.260864, 28.096666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340664, 30.607239, 28.060230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098147, 0.048817, 0.993974,
		0.865165, 0.497765, 0.060982,
		-0.491789, 0.865937, -0.091089,
		35.193127, 30.867020, 28.032904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910507, 30.646883, 28.492754>,  <35.537380, 30.260864, 28.096666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910507, 30.646883, 28.492754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558571, 30.832628, 28.452267>,  <35.347408, 30.944077, 28.427975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558571, 30.832628, 28.452267>,  <35.910507, 30.646883, 28.492754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558571, 30.832628, 28.452267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026104, 0.165431, 0.985876,
		0.474550, 0.870057, -0.133431,
		-0.879841, 0.464364, -0.101218,
		35.294617, 30.971937, 28.421902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080658, 31.242079, 28.867546>,  <35.910507, 30.646883, 28.492754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080658, 31.242079, 28.867546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681385, 31.219404, 28.875765>,  <35.441822, 31.205799, 28.880697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681385, 31.219404, 28.875765>,  <36.080658, 31.242079, 28.867546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681385, 31.219404, 28.875765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002378, 0.303527, 0.952820,
		-0.060247, 0.951135, -0.302840,
		-0.998181, -0.056684, 0.020548,
		35.381931, 31.202398, 28.881929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851273, 31.855547, 29.286747>,  <36.080658, 31.242079, 28.867546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851273, 31.855547, 29.286747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561466, 31.579897, 29.281267>,  <35.387585, 31.414507, 29.277979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561466, 31.579897, 29.281267>,  <35.851273, 31.855547, 29.286747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561466, 31.579897, 29.281267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046382, 0.028915, 0.998505,
		-0.687699, 0.724065, -0.052912,
		-0.724513, -0.689125, -0.013699,
		35.344112, 31.373159, 29.277157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251709, 32.086353, 29.744602>,  <35.851273, 31.855547, 29.286747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251709, 32.086353, 29.744602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.209549, 31.690004, 29.710976>,  <35.184254, 31.452196, 29.690800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.209549, 31.690004, 29.710976>,  <35.251709, 32.086353, 29.744602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209549, 31.690004, 29.710976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134480, -0.069559, 0.988472,
		-0.985295, 0.115493, -0.125921,
		-0.105403, -0.990870, -0.084068,
		35.177929, 31.392744, 29.685755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789719, 32.014946, 30.286018>,  <35.251709, 32.086353, 29.744602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789719, 32.014946, 30.286018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935974, 31.654922, 30.191185>,  <35.023727, 31.438910, 30.134285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935974, 31.654922, 30.191185>,  <34.789719, 32.014946, 30.286018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935974, 31.654922, 30.191185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004459, -0.256413, 0.966557,
		-0.930746, -0.352354, -0.097768,
		0.365639, -0.900055, -0.237084,
		35.045666, 31.384907, 30.120060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452904, 31.500023, 30.762701>,  <34.789719, 32.014946, 30.286018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452904, 31.500023, 30.762701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796993, 31.336819, 30.640366>,  <35.003448, 31.238895, 30.566965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796993, 31.336819, 30.640366>,  <34.452904, 31.500023, 30.762701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796993, 31.336819, 30.640366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248603, -0.188089, 0.950168,
		-0.445203, -0.893392, -0.060367,
		0.860227, -0.408011, -0.305838,
		35.055061, 31.214417, 30.548615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495842, 30.905769, 31.082451>,  <34.452904, 31.500023, 30.762701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495842, 30.905769, 31.082451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875313, 30.975239, 30.976740>,  <35.102997, 31.016920, 30.913313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875313, 30.975239, 30.976740>,  <34.495842, 30.905769, 31.082451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875313, 30.975239, 30.976740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310639, -0.355254, 0.881645,
		0.059233, -0.918494, -0.390972,
		0.948681, 0.173674, -0.264277,
		35.159916, 31.027342, 30.897457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863617, 30.242413, 31.192728>,  <34.495842, 30.905769, 31.082451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863617, 30.242413, 31.192728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157200, 30.512619, 31.164494>,  <35.333351, 30.674744, 31.147552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157200, 30.512619, 31.164494>,  <34.863617, 30.242413, 31.192728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157200, 30.512619, 31.164494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388084, -0.331810, 0.859821,
		0.557403, -0.658466, -0.505692,
		0.733956, 0.675519, -0.070588,
		35.377388, 30.715275, 31.143316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494759, 29.919132, 31.424156>,  <34.863617, 30.242413, 31.192728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494759, 29.919132, 31.424156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555557, 30.311785, 31.470284>,  <35.592037, 30.547377, 31.497959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555557, 30.311785, 31.470284>,  <35.494759, 29.919132, 31.424156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555557, 30.311785, 31.470284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339414, -0.161417, 0.926684,
		0.928275, -0.101715, -0.357714,
		0.151999, 0.981631, 0.115316,
		35.601158, 30.606274, 31.504879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186832, 30.003712, 31.640295>,  <35.494759, 29.919132, 31.424156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186832, 30.003712, 31.640295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968143, 30.318382, 31.755001>,  <35.836929, 30.507185, 31.823824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968143, 30.318382, 31.755001>,  <36.186832, 30.003712, 31.640295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968143, 30.318382, 31.755001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310814, -0.127339, 0.941902,
		0.777489, 0.604089, -0.174891,
		-0.546722, 0.786677, 0.286764,
		35.804127, 30.554386, 31.841030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612255, 30.165211, 32.221581>,  <36.186832, 30.003712, 31.640295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612255, 30.165211, 32.221581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277569, 30.380436, 32.262379>,  <36.076759, 30.509571, 32.286858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277569, 30.380436, 32.262379>,  <36.612255, 30.165211, 32.221581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277569, 30.380436, 32.262379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121305, 0.000482, 0.992615,
		0.534039, 0.842906, -0.065673,
		-0.836712, 0.538061, 0.101992,
		36.026554, 30.541855, 32.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778053, 30.702499, 32.672764>,  <36.612255, 30.165211, 32.221581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778053, 30.702499, 32.672764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.387005, 30.620182, 32.690243>,  <36.152378, 30.570791, 32.700729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.387005, 30.620182, 32.690243>,  <36.778053, 30.702499, 32.672764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387005, 30.620182, 32.690243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061698, -0.081873, 0.994731,
		-0.201131, 0.975165, 0.092737,
		-0.977619, -0.205794, 0.043699,
		36.093719, 30.558443, 32.703354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380749, 30.471262, 32.560997>,  <36.778053, 30.702499, 32.672764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380749, 30.471262, 32.560997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704243, 30.236588, 32.544262>,  <37.898338, 30.095783, 32.534222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704243, 30.236588, 32.544262>,  <37.380749, 30.471262, 32.560997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704243, 30.236588, 32.544262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067166, 0.162785, -0.984373,
		0.584329, 0.793284, 0.171055,
		0.808733, -0.586686, -0.041838,
		37.946861, 30.060581, 32.531712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950996, 30.740812, 32.088829>,  <37.380749, 30.471262, 32.560997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950996, 30.740812, 32.088829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047836, 30.352739, 32.093456>,  <38.105942, 30.119896, 32.096233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047836, 30.352739, 32.093456>,  <37.950996, 30.740812, 32.088829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047836, 30.352739, 32.093456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373314, 0.082136, -0.924062,
		0.895558, 0.228036, 0.382068,
		0.242101, -0.970182, 0.011571,
		38.120468, 30.061686, 32.096928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683025, 30.686457, 31.715145>,  <37.950996, 30.740812, 32.088829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683025, 30.686457, 31.715145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504253, 30.328634, 31.717211>,  <38.396992, 30.113941, 31.718451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504253, 30.328634, 31.717211>,  <38.683025, 30.686457, 31.715145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504253, 30.328634, 31.717211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288839, -0.149766, -0.945591,
		0.846658, -0.421117, 0.325317,
		-0.446926, -0.894556, 0.005165,
		38.370174, 30.060268, 31.718760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166733, 30.160788, 31.427694>,  <38.683025, 30.686457, 31.715145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166733, 30.160788, 31.427694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791439, 30.024433, 31.404001>,  <38.566261, 29.942619, 31.389786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791439, 30.024433, 31.404001>,  <39.166733, 30.160788, 31.427694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791439, 30.024433, 31.404001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162148, -0.281974, -0.945621,
		0.305649, -0.896820, 0.319832,
		-0.938236, -0.340889, -0.059233,
		38.509968, 29.922167, 31.386230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175777, 29.592634, 31.032890>,  <39.166733, 30.160788, 31.427694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175777, 29.592634, 31.032890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785686, 29.680355, 31.021259>,  <38.551632, 29.732988, 31.014280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785686, 29.680355, 31.021259>,  <39.175777, 29.592634, 31.032890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785686, 29.680355, 31.021259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048455, -0.340009, -0.939173,
		-0.215850, -0.914495, 0.342211,
		-0.975223, 0.219303, -0.029079,
		38.493118, 29.746145, 31.012535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777077, 29.038067, 30.928295>,  <39.175777, 29.592634, 31.032890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777077, 29.038067, 30.928295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539539, 29.329292, 30.791315>,  <38.397018, 29.504028, 30.709127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539539, 29.329292, 30.791315>,  <38.777077, 29.038067, 30.928295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539539, 29.329292, 30.791315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099972, -0.489095, -0.866483,
		-0.798345, -0.480320, 0.363232,
		-0.593844, 0.728065, -0.342448,
		38.361385, 29.547712, 30.688581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272339, 28.782242, 30.498867>,  <38.777077, 29.038067, 30.928295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272339, 28.782242, 30.498867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262070, 29.163778, 30.379181>,  <38.255909, 29.392700, 30.307369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262070, 29.163778, 30.379181>,  <38.272339, 28.782242, 30.498867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262070, 29.163778, 30.379181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090066, -0.300304, -0.949582,
		-0.995605, 0.002569, 0.093618,
		-0.025674, 0.953840, -0.299215,
		38.254368, 29.449930, 30.289417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946850, 28.754721, 29.901670>,  <38.272339, 28.782242, 30.498867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946850, 28.754721, 29.901670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.098846, 29.123405, 29.870546>,  <38.190044, 29.344616, 29.851871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.098846, 29.123405, 29.870546>,  <37.946850, 28.754721, 29.901670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098846, 29.123405, 29.870546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138426, -0.026507, -0.990018,
		-0.914574, 0.386967, 0.117517,
		0.379989, 0.921713, -0.077809,
		38.212845, 29.399920, 29.847204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438633, 29.201309, 29.484646>,  <37.946850, 28.754721, 29.901670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438633, 29.201309, 29.484646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802876, 29.366056, 29.471001>,  <38.021420, 29.464905, 29.462814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802876, 29.366056, 29.471001>,  <37.438633, 29.201309, 29.484646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802876, 29.366056, 29.471001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062602, 0.055878, -0.996473,
		-0.408508, 0.909529, 0.076667,
		0.910606, 0.411866, -0.034111,
		38.076057, 29.489616, 29.460768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387333, 29.672598, 28.886869>,  <37.438633, 29.201309, 29.484646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387333, 29.672598, 28.886869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782104, 29.624163, 28.929413>,  <38.018967, 29.595100, 28.954939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782104, 29.624163, 28.929413>,  <37.387333, 29.672598, 28.886869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782104, 29.624163, 28.929413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129106, 0.198995, -0.971459,
		0.096469, 0.972491, 0.212027,
		0.986927, -0.121090, 0.106358,
		38.078182, 29.587835, 28.961321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770077, 30.279127, 28.548765>,  <37.387333, 29.672598, 28.886869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770077, 30.279127, 28.548765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005932, 29.957033, 28.573824>,  <38.147446, 29.763777, 28.588860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005932, 29.957033, 28.573824>,  <37.770077, 30.279127, 28.548765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005932, 29.957033, 28.573824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269763, 0.123236, -0.955008,
		0.761285, 0.580008, 0.289887,
		0.589637, -0.805235, 0.062647,
		38.182823, 29.715462, 28.592619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281715, 30.488640, 28.122536>,  <37.770077, 30.279127, 28.548765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281715, 30.488640, 28.122536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318729, 30.091024, 28.145601>,  <38.340939, 29.852455, 28.159441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318729, 30.091024, 28.145601>,  <38.281715, 30.488640, 28.122536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318729, 30.091024, 28.145601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115232, -0.046833, -0.992234,
		0.989020, 0.098458, 0.110211,
		0.092532, -0.994039, 0.057664,
		38.346489, 29.792812, 28.162901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933540, 30.373281, 27.740593>,  <38.281715, 30.488640, 28.122536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933540, 30.373281, 27.740593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715134, 30.038326, 27.750809>,  <38.584091, 29.837353, 27.756937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715134, 30.038326, 27.750809>,  <38.933540, 30.373281, 27.740593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715134, 30.038326, 27.750809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044228, -0.059251, -0.997263,
		0.836609, -0.543389, 0.069388,
		-0.546012, -0.837387, 0.025537,
		38.551331, 29.787109, 27.758471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269154, 29.907961, 27.327997>,  <38.933540, 30.373281, 27.740593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269154, 29.907961, 27.327997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890850, 29.780989, 27.355642>,  <38.663868, 29.704805, 27.372229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890850, 29.780989, 27.355642>,  <39.269154, 29.907961, 27.327997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890850, 29.780989, 27.355642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046280, -0.078921, -0.995806,
		0.321553, -0.944992, 0.059950,
		-0.945760, -0.317430, 0.069112,
		38.607121, 29.685760, 27.376375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274342, 29.438280, 26.755680>,  <39.269154, 29.907961, 27.327997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274342, 29.438280, 26.755680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889690, 29.487371, 26.853828>,  <38.658901, 29.516827, 26.912718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889690, 29.487371, 26.853828>,  <39.274342, 29.438280, 26.755680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889690, 29.487371, 26.853828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265315, -0.188343, -0.945587,
		-0.069835, -0.974405, 0.213677,
		-0.961630, 0.122726, 0.245371,
		38.601200, 29.524189, 26.927441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036308, 28.928959, 26.487177>,  <39.274342, 29.438280, 26.755680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036308, 28.928959, 26.487177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729904, 29.180834, 26.538912>,  <38.546062, 29.331959, 26.569954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729904, 29.180834, 26.538912>,  <39.036308, 28.928959, 26.487177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729904, 29.180834, 26.538912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235086, -0.087139, -0.968061,
		-0.598304, -0.771947, 0.214779,
		-0.766007, 0.629687, 0.129338,
		38.500103, 29.369740, 26.577713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539677, 28.652399, 26.061398>,  <39.036308, 28.928959, 26.487177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539677, 28.652399, 26.061398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448345, 29.037628, 26.118469>,  <38.393547, 29.268764, 26.152712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448345, 29.037628, 26.118469>,  <38.539677, 28.652399, 26.061398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448345, 29.037628, 26.118469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379453, 0.046929, -0.924020,
		-0.896594, -0.265123, 0.354725,
		-0.228332, 0.963072, 0.142678,
		38.379845, 29.326550, 26.161272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870502, 28.725826, 25.653509>,  <38.539677, 28.652399, 26.061398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870502, 28.725826, 25.653509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031460, 29.090364, 25.688223>,  <38.128036, 29.309088, 25.709051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031460, 29.090364, 25.688223>,  <37.870502, 28.725826, 25.653509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031460, 29.090364, 25.688223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186047, 0.174227, -0.966970,
		-0.896362, 0.372959, 0.239661,
		0.402396, 0.911343, 0.086783,
		38.152180, 29.363768, 25.714258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.330696, 29.142679, 25.376205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680038, 29.336800, 25.392887>,  <37.889645, 29.453272, 25.402897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680038, 29.336800, 25.392887>,  <37.330696, 29.142679, 25.376205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680038, 29.336800, 25.392887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052625, 0.179132, -0.982417,
		-0.484237, 0.855801, 0.181984,
		0.873353, 0.485300, 0.041705,
		37.942043, 29.482389, 25.405399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114758, 29.809416, 25.198647>,  <37.330696, 29.142679, 25.376205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114758, 29.809416, 25.198647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509739, 29.796484, 25.136829>,  <37.746727, 29.788725, 25.099739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509739, 29.796484, 25.136829>,  <37.114758, 29.809416, 25.198647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509739, 29.796484, 25.136829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129317, 0.395967, -0.909114,
		0.090584, 0.917696, 0.386820,
		0.987457, -0.032329, -0.154542,
		37.805977, 29.786785, 25.090467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321335, 30.511660, 24.893843>,  <37.114758, 29.809416, 25.198647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321335, 30.511660, 24.893843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608624, 30.257799, 24.779737>,  <37.780998, 30.105482, 24.711275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608624, 30.257799, 24.779737>,  <37.321335, 30.511660, 24.893843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608624, 30.257799, 24.779737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086749, 0.488443, -0.868273,
		0.690387, 0.598865, 0.405865,
		0.718220, -0.634653, -0.285263,
		37.824089, 30.067404, 24.694159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801308, 30.966133, 24.719095>,  <37.321335, 30.511660, 24.893843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801308, 30.966133, 24.719095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855335, 30.615673, 24.534004>,  <37.887753, 30.405397, 24.422949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855335, 30.615673, 24.534004>,  <37.801308, 30.966133, 24.719095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855335, 30.615673, 24.534004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095350, 0.453347, -0.886219,
		0.986238, 0.163822, -0.022307,
		0.135069, -0.876150, -0.462729,
		37.895855, 30.352829, 24.395185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355206, 31.063328, 24.256071>,  <37.801308, 30.966133, 24.719095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355206, 31.063328, 24.256071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179821, 30.743555, 24.091801>,  <38.074589, 30.551691, 23.993238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179821, 30.743555, 24.091801>,  <38.355206, 31.063328, 24.256071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179821, 30.743555, 24.091801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113953, 0.502702, -0.856916,
		0.891495, -0.328931, -0.311515,
		-0.438465, -0.799434, -0.410674,
		38.048283, 30.503725, 23.968599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731987, 30.988705, 23.638746>,  <38.355206, 31.063328, 24.256071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731987, 30.988705, 23.638746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397198, 30.777298, 23.581982>,  <38.196323, 30.650454, 23.547924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397198, 30.777298, 23.581982>,  <38.731987, 30.988705, 23.638746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397198, 30.777298, 23.581982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110080, 0.416622, -0.902391,
		0.536054, -0.739658, -0.406882,
		-0.836976, -0.528519, -0.141910,
		38.146103, 30.618742, 23.539408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702419, 30.699146, 23.015205>,  <38.731987, 30.988705, 23.638746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702419, 30.699146, 23.015205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312275, 30.650887, 23.089077>,  <38.078186, 30.621931, 23.133400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312275, 30.650887, 23.089077>,  <38.702419, 30.699146, 23.015205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312275, 30.650887, 23.089077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216850, 0.370757, -0.903059,
		0.040481, -0.920860, -0.387786,
		-0.975365, -0.120648, 0.184680,
		38.019665, 30.614693, 23.144482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439301, 30.307281, 22.427376>,  <38.702419, 30.699146, 23.015205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439301, 30.307281, 22.427376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145447, 30.515800, 22.601072>,  <37.969135, 30.640913, 22.705290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145447, 30.515800, 22.601072>,  <38.439301, 30.307281, 22.427376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145447, 30.515800, 22.601072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345410, 0.263515, -0.900695,
		-0.583961, -0.811669, -0.013524,
		-0.734630, 0.521299, 0.434241,
		37.925056, 30.672190, 22.731344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853168, 29.923914, 22.459873>,  <38.439301, 30.307281, 22.427376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853168, 29.923914, 22.459873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727680, 30.303307, 22.442142>,  <37.652386, 30.530941, 22.431505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727680, 30.303307, 22.442142>,  <37.853168, 29.923914, 22.459873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727680, 30.303307, 22.442142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326028, -0.151447, -0.933151,
		-0.891787, -0.278300, 0.356743,
		-0.313723, 0.948479, -0.044325,
		37.633564, 30.587851, 22.428844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184597, 29.935537, 22.087049>,  <37.853168, 29.923914, 22.459873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184597, 29.935537, 22.087049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354794, 30.294491, 22.040285>,  <37.456909, 30.509863, 22.012226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354794, 30.294491, 22.040285>,  <37.184597, 29.935537, 22.087049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354794, 30.294491, 22.040285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118411, -0.072869, -0.990287,
		-0.897184, 0.435197, 0.075255,
		0.425487, 0.897381, -0.116909,
		37.482441, 30.563705, 22.005213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861492, 30.079569, 21.405062>,  <37.184597, 29.935537, 22.087049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861492, 30.079569, 21.405062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148415, 30.356663, 21.434948>,  <37.320568, 30.522919, 21.452879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148415, 30.356663, 21.434948>,  <36.861492, 30.079569, 21.405062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148415, 30.356663, 21.434948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015538, 0.091303, -0.995702,
		-0.696581, 0.715388, 0.054729,
		0.717310, 0.692736, 0.074716,
		37.363609, 30.564484, 21.457363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707558, 30.538340, 20.929497>,  <36.861492, 30.079569, 21.405062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707558, 30.538340, 20.929497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091717, 30.622932, 21.002056>,  <37.322212, 30.673689, 21.045591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091717, 30.622932, 21.002056>,  <36.707558, 30.538340, 20.929497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091717, 30.622932, 21.002056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117141, 0.284230, -0.951573,
		-0.252799, 0.935141, 0.248201,
		0.960401, 0.211482, 0.181396,
		37.379837, 30.686377, 21.056475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917542, 31.309961, 20.572166>,  <36.707558, 30.538340, 20.929497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917542, 31.309961, 20.572166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225815, 31.062962, 20.635080>,  <37.410778, 30.914761, 20.672829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225815, 31.062962, 20.635080>,  <36.917542, 31.309961, 20.572166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225815, 31.062962, 20.635080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267242, 0.089141, -0.959498,
		0.578470, 0.781503, 0.233721,
		0.770684, -0.617500, 0.157285,
		37.457020, 30.877712, 20.682266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460026, 31.577169, 20.282082>,  <36.917542, 31.309961, 20.572166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460026, 31.577169, 20.282082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584099, 31.198862, 20.320671>,  <37.658543, 30.971878, 20.343824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584099, 31.198862, 20.320671>,  <37.460026, 31.577169, 20.282082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584099, 31.198862, 20.320671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243409, -0.019086, -0.969736,
		0.918988, 0.324276, 0.224289,
		0.310181, -0.945770, 0.096472,
		37.677155, 30.915131, 20.349613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097286, 31.602678, 20.028162>,  <37.460026, 31.577169, 20.282082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097286, 31.602678, 20.028162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985142, 31.220291, 19.993465>,  <37.917854, 30.990860, 19.972649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985142, 31.220291, 19.993465>,  <38.097286, 31.602678, 20.028162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985142, 31.220291, 19.993465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180015, 0.036398, -0.982990,
		0.942863, -0.291210, 0.161883,
		-0.280364, -0.955967, -0.086740,
		37.901031, 30.933500, 19.967443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688042, 31.260759, 19.724434>,  <38.097286, 31.602678, 20.028162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688042, 31.260759, 19.724434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384560, 31.007517, 19.663063>,  <38.202469, 30.855572, 19.626240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384560, 31.007517, 19.663063>,  <38.688042, 31.260759, 19.724434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384560, 31.007517, 19.663063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263703, -0.083125, -0.961016,
		0.595672, -0.769588, 0.230020,
		-0.758707, -0.633107, -0.153427,
		38.156948, 30.817585, 19.617035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016033, 30.759169, 19.315075>,  <38.688042, 31.260759, 19.724434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016033, 30.759169, 19.315075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.626221, 30.694723, 19.252689>,  <38.392334, 30.656055, 19.215258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.626221, 30.694723, 19.252689>,  <39.016033, 30.759169, 19.315075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626221, 30.694723, 19.252689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169920, -0.076722, -0.982467,
		0.146324, -0.983949, 0.102145,
		-0.974534, -0.161115, -0.155966,
		38.333862, 30.646389, 19.205900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009296, 30.126528, 18.851255>,  <39.016033, 30.759169, 19.315075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009296, 30.126528, 18.851255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677406, 30.345011, 18.805275>,  <38.478271, 30.476101, 18.777687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677406, 30.345011, 18.805275>,  <39.009296, 30.126528, 18.851255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677406, 30.345011, 18.805275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103799, -0.051357, -0.993272,
		-0.548437, -0.836073, -0.014084,
		-0.829724, 0.546209, -0.114950,
		38.428490, 30.508873, 18.770790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788048, 29.883101, 18.228394>,  <39.009296, 30.126528, 18.851255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788048, 29.883101, 18.228394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.555836, 30.206923, 18.263281>,  <38.416508, 30.401217, 18.284214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.555836, 30.206923, 18.263281>,  <38.788048, 29.883101, 18.228394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555836, 30.206923, 18.263281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181640, 0.233176, -0.955320,
		-0.793724, -0.538745, -0.282412,
		-0.580525, 0.809557, 0.087220,
		38.381680, 30.449789, 18.289446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368717, 29.882010, 17.708023>,  <38.788048, 29.883101, 18.228394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368717, 29.882010, 17.708023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357716, 30.269617, 17.806204>,  <38.351112, 30.502182, 17.865112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357716, 30.269617, 17.806204>,  <38.368717, 29.882010, 17.708023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357716, 30.269617, 17.806204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199440, 0.245930, -0.948547,
		-0.979524, 0.022862, -0.200026,
		-0.027507, 0.969018, 0.245454,
		38.349464, 30.560322, 17.879841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212112, 30.106714, 17.119534>,  <38.368717, 29.882010, 17.708023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212112, 30.106714, 17.119534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309803, 30.456264, 17.287674>,  <38.368420, 30.665995, 17.388557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309803, 30.456264, 17.287674>,  <38.212112, 30.106714, 17.119534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309803, 30.456264, 17.287674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392134, 0.307452, -0.867008,
		-0.886895, 0.376583, -0.267588,
		0.244230, 0.873875, 0.420349,
		38.383072, 30.718428, 17.413778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811153, 30.739033, 16.912903>,  <38.212112, 30.106714, 17.119534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811153, 30.739033, 16.912903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167282, 30.881304, 17.026617>,  <38.380959, 30.966667, 17.094845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167282, 30.881304, 17.026617>,  <37.811153, 30.739033, 16.912903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167282, 30.881304, 17.026617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126515, 0.406523, -0.904839,
		-0.437398, 0.841566, 0.316938,
		0.890324, 0.355677, 0.284283,
		38.434380, 30.988007, 17.111902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844715, 31.429136, 16.753479>,  <37.811153, 30.739033, 16.912903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844715, 31.429136, 16.753479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212368, 31.271719, 16.760561>,  <38.432961, 31.177269, 16.764811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212368, 31.271719, 16.760561>,  <37.844715, 31.429136, 16.753479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212368, 31.271719, 16.760561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212794, 0.458164, -0.863020,
		0.331526, 0.796999, 0.504859,
		0.919135, -0.393545, 0.017703,
		38.488110, 31.153656, 16.765871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094738, 31.698013, 16.878786>,  <37.844715, 31.429136, 16.753479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094738, 31.698013, 16.878786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986908, 32.066498, 16.766575>,  <36.922211, 32.287590, 16.699247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986908, 32.066498, 16.766575>,  <37.094738, 31.698013, 16.878786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986908, 32.066498, 16.766575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001651, 0.290871, 0.956761,
		0.962978, 0.258381, -0.076890,
		-0.269574, 0.921213, -0.280529,
		36.906036, 32.342861, 16.682417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455547, 32.165237, 17.275843>,  <37.094738, 31.698013, 16.878786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455547, 32.165237, 17.275843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145287, 32.373684, 17.133402>,  <36.959129, 32.498753, 17.047937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145287, 32.373684, 17.133402>,  <37.455547, 32.165237, 17.275843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145287, 32.373684, 17.133402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170365, 0.370395, 0.913117,
		0.607736, 0.768927, -0.198517,
		-0.775650, 0.521114, -0.356101,
		36.912590, 32.530018, 17.026571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466515, 32.940483, 17.472055>,  <37.455547, 32.165237, 17.275843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466515, 32.940483, 17.472055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079758, 32.857502, 17.412619>,  <36.847702, 32.807713, 17.376957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079758, 32.857502, 17.412619>,  <37.466515, 32.940483, 17.472055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079758, 32.857502, 17.412619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200119, 0.255129, 0.945971,
		-0.158337, 0.944389, -0.288199,
		-0.966893, -0.207456, -0.148594,
		36.789688, 32.795265, 17.368040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206745, 33.524445, 17.661848>,  <37.466515, 32.940483, 17.472055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206745, 33.524445, 17.661848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926804, 33.238876, 17.671055>,  <36.758839, 33.067535, 17.676579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926804, 33.238876, 17.671055>,  <37.206745, 33.524445, 17.661848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926804, 33.238876, 17.671055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425261, 0.442342, 0.789612,
		-0.573899, 0.542822, -0.613175,
		-0.699852, -0.713917, 0.023018,
		36.716846, 33.024700, 17.677959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595272, 33.942886, 17.877836>,  <37.206745, 33.524445, 17.661848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595272, 33.942886, 17.877836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542362, 33.554409, 17.957125>,  <36.510616, 33.321323, 18.004698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542362, 33.554409, 17.957125>,  <36.595272, 33.942886, 17.877836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542362, 33.554409, 17.957125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425636, 0.236255, 0.873509,
		-0.895175, 0.031170, -0.444624,
		-0.132272, -0.971191, 0.198223,
		36.502682, 33.263050, 18.016592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015285, 33.814758, 18.192739>,  <36.595272, 33.942886, 17.877836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015285, 33.814758, 18.192739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186008, 33.474503, 18.315538>,  <36.288445, 33.270348, 18.389217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186008, 33.474503, 18.315538>,  <36.015285, 33.814758, 18.192739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186008, 33.474503, 18.315538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347808, 0.158956, 0.923993,
		-0.834783, -0.501146, -0.228014,
		0.426811, -0.850639, 0.306997,
		36.314053, 33.219311, 18.407637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570683, 33.513111, 18.803408>,  <36.015285, 33.814758, 18.192739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570683, 33.513111, 18.803408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918945, 33.318295, 18.830999>,  <36.127903, 33.201405, 18.847553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918945, 33.318295, 18.830999>,  <35.570683, 33.513111, 18.803408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918945, 33.318295, 18.830999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105951, -0.048743, 0.993176,
		-0.480352, -0.872020, -0.094040,
		0.870653, -0.487038, 0.068977,
		36.180141, 33.172184, 18.851692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499168, 32.850266, 19.302271>,  <35.570683, 33.513111, 18.803408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499168, 32.850266, 19.302271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884953, 32.955715, 19.309460>,  <36.116421, 33.018986, 19.313774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884953, 32.955715, 19.309460>,  <35.499168, 32.850266, 19.302271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884953, 32.955715, 19.309460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052261, -0.256989, 0.965000,
		0.259018, -0.929763, -0.261632,
		0.964458, 0.263626, 0.017974,
		36.174290, 33.034801, 19.314852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874493, 32.329285, 19.507849>,  <35.499168, 32.850266, 19.302271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874493, 32.329285, 19.507849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121166, 32.628872, 19.604803>,  <36.269169, 32.808624, 19.662975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121166, 32.628872, 19.604803>,  <35.874493, 32.329285, 19.507849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121166, 32.628872, 19.604803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077230, -0.363978, 0.928200,
		0.783416, -0.553683, -0.282302,
		0.616680, 0.748969, 0.242385,
		36.306171, 32.853561, 19.677519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345467, 32.093578, 20.062340>,  <35.874493, 32.329285, 19.507849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345467, 32.093578, 20.062340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380749, 32.491234, 20.087332>,  <36.401920, 32.729828, 20.102327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380749, 32.491234, 20.087332>,  <36.345467, 32.093578, 20.062340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380749, 32.491234, 20.087332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079559, -0.069553, 0.994401,
		0.992920, -0.082743, -0.085228,
		0.088208, 0.994141, 0.062478,
		36.407211, 32.789474, 20.106075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989731, 32.227299, 20.450947>,  <36.345467, 32.093578, 20.062340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989731, 32.227299, 20.450947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758095, 32.552013, 20.481056>,  <36.619114, 32.746841, 20.499121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758095, 32.552013, 20.481056>,  <36.989731, 32.227299, 20.450947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758095, 32.552013, 20.481056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087880, -0.029635, 0.995690,
		0.810516, 0.583205, -0.054179,
		-0.579086, 0.811784, 0.075272,
		36.584370, 32.795547, 20.503637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217350, 32.502419, 21.060829>,  <36.989731, 32.227299, 20.450947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217350, 32.502419, 21.060829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864689, 32.683250, 21.006687>,  <36.653091, 32.791748, 20.974203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864689, 32.683250, 21.006687>,  <37.217350, 32.502419, 21.060829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864689, 32.683250, 21.006687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241423, -0.185646, 0.952497,
		0.405475, 0.872446, 0.272817,
		-0.881649, 0.452078, -0.135354,
		36.600193, 32.818874, 20.966082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181633, 32.839443, 21.711674>,  <37.217350, 32.502419, 21.060829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181633, 32.839443, 21.711674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820271, 32.833374, 21.540264>,  <36.603455, 32.829731, 21.437418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820271, 32.833374, 21.540264>,  <37.181633, 32.839443, 21.711674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820271, 32.833374, 21.540264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413862, -0.230586, 0.880652,
		-0.112175, 0.972934, 0.202032,
		-0.903402, -0.015174, -0.428526,
		36.549252, 32.828823, 21.411707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806068, 33.292439, 22.186249>,  <37.181633, 32.839443, 21.711674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806068, 33.292439, 22.186249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532761, 33.074955, 21.991302>,  <36.368778, 32.944466, 21.874334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532761, 33.074955, 21.991302>,  <36.806068, 33.292439, 22.186249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532761, 33.074955, 21.991302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510495, -0.121509, 0.851252,
		-0.522055, 0.830429, -0.194539,
		-0.683267, -0.543712, -0.487364,
		36.327782, 32.911842, 21.845093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254349, 33.493439, 22.460810>,  <36.806068, 33.292439, 22.186249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254349, 33.493439, 22.460810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163696, 33.136673, 22.304283>,  <36.109303, 32.922615, 22.210367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163696, 33.136673, 22.304283>,  <36.254349, 33.493439, 22.460810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163696, 33.136673, 22.304283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531484, -0.223433, 0.817069,
		-0.816187, 0.393155, -0.423399,
		-0.226634, -0.891912, -0.391319,
		36.095707, 32.869099, 22.186888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652370, 33.253696, 22.864780>,  <36.254349, 33.493439, 22.460810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652370, 33.253696, 22.864780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.748856, 32.900021, 22.704767>,  <35.806747, 32.687817, 22.608759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.748856, 32.900021, 22.704767>,  <35.652370, 33.253696, 22.864780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748856, 32.900021, 22.704767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469155, -0.467079, 0.749487,
		-0.849534, 0.006889, -0.527489,
		0.241216, -0.884189, -0.400032,
		35.821220, 32.634766, 22.584757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097897, 32.806713, 23.008253>,  <35.652370, 33.253696, 22.864780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097897, 32.806713, 23.008253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422741, 32.588890, 22.924404>,  <35.617645, 32.458199, 22.874094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422741, 32.588890, 22.924404>,  <35.097897, 32.806713, 23.008253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422741, 32.588890, 22.924404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232436, -0.631414, 0.739790,
		-0.535213, -0.552066, -0.639350,
		0.812108, -0.544554, -0.209621,
		35.666374, 32.425522, 22.861517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840576, 32.108006, 23.102339>,  <35.097897, 32.806713, 23.008253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840576, 32.108006, 23.102339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239433, 32.086800, 23.123886>,  <35.478748, 32.074078, 23.136814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239433, 32.086800, 23.123886>,  <34.840576, 32.108006, 23.102339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239433, 32.086800, 23.123886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075468, -0.660238, 0.747255,
		-0.004046, -0.749183, -0.662350,
		0.997140, -0.053010, 0.053868,
		35.538574, 32.070896, 23.140047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016270, 31.385569, 23.006292>,  <34.840576, 32.108006, 23.102339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016270, 31.385569, 23.006292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334312, 31.548798, 23.185753>,  <35.525139, 31.646734, 23.293428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334312, 31.548798, 23.185753>,  <35.016270, 31.385569, 23.006292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334312, 31.548798, 23.185753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079087, -0.663685, 0.743819,
		0.601295, -0.626896, -0.495425,
		0.795104, 0.408073, 0.448649,
		35.572845, 31.671219, 23.320347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378132, 30.816486, 23.255684>,  <35.016270, 31.385569, 23.006292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378132, 30.816486, 23.255684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506012, 31.127741, 23.471941>,  <35.582741, 31.314493, 23.601696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506012, 31.127741, 23.471941>,  <35.378132, 30.816486, 23.255684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506012, 31.127741, 23.471941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216657, -0.495439, 0.841190,
		0.922417, -0.386060, 0.010198,
		0.319697, 0.778137, 0.540644,
		35.601921, 31.361181, 23.634134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940742, 30.587521, 23.773241>,  <35.378132, 30.816486, 23.255684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940742, 30.587521, 23.773241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768009, 30.923735, 23.904097>,  <35.664368, 31.125463, 23.982611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768009, 30.923735, 23.904097>,  <35.940742, 30.587521, 23.773241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768009, 30.923735, 23.904097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287219, -0.471970, 0.833517,
		0.854999, 0.265982, 0.445231,
		-0.431836, 0.840535, 0.327138,
		35.638458, 31.175896, 24.002237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.637550, 28.531712, 28.164017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560310, 28.923891, 28.179146>,  <38.513966, 29.159199, 28.188223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560310, 28.923891, 28.179146>,  <38.637550, 28.531712, 28.164017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560310, 28.923891, 28.179146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202335, 0.002071, 0.979314,
		0.960091, 0.196755, -0.198779,
		-0.193097, 0.980450, 0.037822,
		38.502380, 29.218027, 28.190493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144413, 28.835855, 28.634418>,  <38.637550, 28.531712, 28.164017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144413, 28.835855, 28.634418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832870, 29.086008, 28.615290>,  <38.645947, 29.236099, 28.603811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832870, 29.086008, 28.615290>,  <39.144413, 28.835855, 28.634418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832870, 29.086008, 28.615290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010268, 0.063525, 0.997927,
		0.627124, 0.777729, -0.043055,
		-0.778852, 0.625382, -0.047824,
		38.599216, 29.273623, 28.600943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359123, 29.451466, 29.065672>,  <39.144413, 28.835855, 28.634418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359123, 29.451466, 29.065672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964321, 29.505083, 29.030241>,  <38.727440, 29.537254, 29.008982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964321, 29.505083, 29.030241>,  <39.359123, 29.451466, 29.065672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964321, 29.505083, 29.030241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026401, 0.408501, 0.912376,
		0.158481, 0.902862, -0.399656,
		-0.987009, 0.134043, -0.088577,
		38.668217, 29.545296, 29.003668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160976, 30.141571, 29.314901>,  <39.359123, 29.451466, 29.065672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160976, 30.141571, 29.314901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812675, 29.950539, 29.361725>,  <38.603695, 29.835918, 29.389820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812675, 29.950539, 29.361725>,  <39.160976, 30.141571, 29.314901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812675, 29.950539, 29.361725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094521, 0.396191, 0.913290,
		-0.482549, 0.784186, -0.390126,
		-0.870754, -0.477582, 0.117060,
		38.551449, 29.807264, 29.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743107, 30.602476, 29.779011>,  <39.160976, 30.141571, 29.314901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743107, 30.602476, 29.779011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.559570, 30.247372, 29.793661>,  <38.449448, 30.034309, 29.802452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.559570, 30.247372, 29.793661>,  <38.743107, 30.602476, 29.779011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559570, 30.247372, 29.793661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215105, 0.150983, 0.964849,
		-0.862087, 0.434834, -0.260240,
		-0.458841, -0.887763, 0.036626,
		38.421917, 29.981043, 29.804649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071285, 30.729816, 30.060177>,  <38.743107, 30.602476, 29.779011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071285, 30.729816, 30.060177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145721, 30.342020, 30.123999>,  <38.190384, 30.109343, 30.162292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145721, 30.342020, 30.123999>,  <38.071285, 30.729816, 30.060177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145721, 30.342020, 30.123999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296790, 0.099341, 0.949762,
		-0.936636, -0.224095, -0.269249,
		0.186089, -0.969491, 0.159555,
		38.201550, 30.051172, 30.171865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560688, 30.518347, 30.559168>,  <38.071285, 30.729816, 30.060177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560688, 30.518347, 30.559168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798153, 30.197104, 30.579493>,  <37.940632, 30.004358, 30.591688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798153, 30.197104, 30.579493>,  <37.560688, 30.518347, 30.559168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798153, 30.197104, 30.579493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305498, -0.166509, 0.937521,
		-0.744470, -0.572095, -0.344198,
		0.593663, -0.803108, 0.050813,
		37.976254, 29.956171, 30.594736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178631, 29.908062, 30.957584>,  <37.560688, 30.518347, 30.559168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178631, 29.908062, 30.957584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577026, 29.877327, 30.975948>,  <37.816063, 29.858887, 30.986967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577026, 29.877327, 30.975948>,  <37.178631, 29.908062, 30.957584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577026, 29.877327, 30.975948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061006, -0.207432, 0.976345,
		-0.065493, -0.975227, -0.211287,
		0.995986, -0.076834, 0.045910,
		37.875824, 29.854277, 30.989721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278584, 29.360834, 31.417738>,  <37.178631, 29.908062, 30.957584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278584, 29.360834, 31.417738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640240, 29.531408, 31.407286>,  <37.857235, 29.633753, 31.401014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640240, 29.531408, 31.407286>,  <37.278584, 29.360834, 31.417738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640240, 29.531408, 31.407286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072018, -0.091833, 0.993167,
		0.421122, -0.899844, -0.113741,
		0.904140, 0.426436, -0.026132,
		37.911484, 29.659338, 31.399446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696938, 28.911442, 31.824404>,  <37.278584, 29.360834, 31.417738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696938, 28.911442, 31.824404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887260, 29.259512, 31.773174>,  <38.001453, 29.468355, 31.742437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887260, 29.259512, 31.773174>,  <37.696938, 28.911442, 31.824404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887260, 29.259512, 31.773174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242057, 0.010439, 0.970206,
		0.845588, -0.492628, -0.205666,
		0.475804, 0.870177, -0.128071,
		38.030003, 29.520565, 31.734753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466339, 28.857531, 31.975088>,  <37.696938, 28.911442, 31.824404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466339, 28.857531, 31.975088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.335758, 29.230459, 32.037319>,  <38.257408, 29.454216, 32.074657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.335758, 29.230459, 32.037319>,  <38.466339, 28.857531, 31.975088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335758, 29.230459, 32.037319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278789, -0.062299, 0.958330,
		0.903163, 0.356225, -0.239583,
		-0.326455, 0.932321, 0.155578,
		38.237823, 29.510155, 32.083992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883194, 29.077309, 32.650551>,  <38.466339, 28.857531, 31.975088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883194, 29.077309, 32.650551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614044, 29.371700, 32.620689>,  <38.452553, 29.548336, 32.602772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614044, 29.371700, 32.620689>,  <38.883194, 29.077309, 32.650551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614044, 29.371700, 32.620689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003633, 0.097625, 0.995216,
		0.739748, 0.669926, -0.063016,
		-0.672874, 0.735981, -0.074652,
		38.412182, 29.592495, 32.598293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063408, 29.705126, 33.126621>,  <38.883194, 29.077309, 32.650551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063408, 29.705126, 33.126621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.678631, 29.626995, 33.050182>,  <38.447765, 29.580116, 33.004318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.678631, 29.626995, 33.050182>,  <39.063408, 29.705126, 33.126621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678631, 29.626995, 33.050182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213758, 0.102232, 0.971523,
		-0.170229, 0.975395, -0.140094,
		-0.961940, -0.195328, -0.191096,
		38.390049, 29.568398, 32.992855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383915, 30.217854, 33.350887>,  <39.063408, 29.705126, 33.126621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383915, 30.217854, 33.350887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433350, 30.471426, 33.656269>,  <38.463009, 30.623569, 33.839497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433350, 30.471426, 33.656269>,  <38.383915, 30.217854, 33.350887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433350, 30.471426, 33.656269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216526, 0.768038, -0.602688,
		-0.968423, -0.090825, 0.232179,
		0.123583, 0.633930, 0.763452,
		38.470425, 30.661606, 33.885303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849846, 30.742777, 33.337681>,  <38.383915, 30.217854, 33.350887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849846, 30.742777, 33.337681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139664, 30.928524, 33.541405>,  <38.313553, 31.039972, 33.663639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139664, 30.928524, 33.541405>,  <37.849846, 30.742777, 33.337681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139664, 30.928524, 33.541405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117795, 0.811515, -0.572334,
		-0.679086, 0.354688, 0.642681,
		0.724546, 0.464369, 0.509308,
		38.357029, 31.067835, 33.694199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625366, 31.429764, 33.396179>,  <37.849846, 30.742777, 33.337681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625366, 31.429764, 33.396179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018616, 31.445913, 33.467556>,  <38.254566, 31.455603, 33.510384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018616, 31.445913, 33.467556>,  <37.625366, 31.429764, 33.396179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018616, 31.445913, 33.467556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044024, 0.894487, -0.444922,
		-0.177582, 0.445268, 0.877611,
		0.983121, 0.040374, 0.178447,
		38.313553, 31.458025, 33.521091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736595, 32.118885, 33.623249>,  <37.625366, 31.429764, 33.396179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736595, 32.118885, 33.623249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099361, 32.006500, 33.497673>,  <38.317020, 31.939068, 33.422329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099361, 32.006500, 33.497673>,  <37.736595, 32.118885, 33.623249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099361, 32.006500, 33.497673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039089, 0.798057, -0.601312,
		0.419489, 0.533070, 0.734756,
		0.906918, -0.280965, -0.313939,
		38.371437, 31.922211, 33.403492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132332, 32.697617, 33.603012>,  <37.736595, 32.118885, 33.623249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132332, 32.697617, 33.603012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339863, 32.457043, 33.360001>,  <38.464382, 32.312698, 33.214195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339863, 32.457043, 33.360001>,  <38.132332, 32.697617, 33.603012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339863, 32.457043, 33.360001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127213, 0.757064, -0.640837,
		0.845360, 0.255199, 0.469297,
		0.518829, -0.601438, -0.607527,
		38.495510, 32.276611, 33.177742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458336, 33.194923, 33.247070>,  <38.132332, 32.697617, 33.603012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458336, 33.194923, 33.247070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501801, 32.851151, 33.047241>,  <38.527878, 32.644886, 32.927341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501801, 32.851151, 33.047241>,  <38.458336, 33.194923, 33.247070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501801, 32.851151, 33.047241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231865, 0.510600, -0.827965,
		0.966660, -0.025869, 0.254753,
		0.108658, -0.859429, -0.499575,
		38.534397, 32.593323, 32.897369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968777, 33.258923, 32.809021>,  <38.458336, 33.194923, 33.247070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968777, 33.258923, 32.809021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780258, 32.946819, 32.644547>,  <38.667149, 32.759556, 32.545864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780258, 32.946819, 32.644547>,  <38.968777, 33.258923, 32.809021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780258, 32.946819, 32.644547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120941, 0.404628, -0.906449,
		0.873643, -0.476935, -0.096334,
		-0.471297, -0.780262, -0.411182,
		38.638870, 32.712742, 32.521191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361355, 32.943485, 32.156914>,  <38.968777, 33.258923, 32.809021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361355, 32.943485, 32.156914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.978615, 32.834145, 32.117481>,  <38.748970, 32.768539, 32.093822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.978615, 32.834145, 32.117481>,  <39.361355, 32.943485, 32.156914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978615, 32.834145, 32.117481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085977, 0.057731, -0.994623,
		0.277577, -0.960179, -0.031738,
		-0.956849, -0.273356, -0.098578,
		38.691559, 32.752140, 32.087910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403233, 32.442608, 31.723009>,  <39.361355, 32.943485, 32.156914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403233, 32.442608, 31.723009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026783, 32.573662, 31.689671>,  <38.800915, 32.652294, 31.669668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026783, 32.573662, 31.689671>,  <39.403233, 32.442608, 31.723009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026783, 32.573662, 31.689671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101848, 0.039695, -0.994008,
		-0.322367, -0.943969, -0.070727,
		-0.941120, 0.327639, -0.083345,
		38.744446, 32.671955, 31.664667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135086, 32.171070, 31.073143>,  <39.403233, 32.442608, 31.723009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135086, 32.171070, 31.073143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883919, 32.475800, 31.136806>,  <38.733219, 32.658638, 31.175005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883919, 32.475800, 31.136806>,  <39.135086, 32.171070, 31.073143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883919, 32.475800, 31.136806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024683, 0.223892, -0.974301,
		-0.777884, -0.607857, -0.159391,
		-0.627923, 0.761828, 0.159158,
		38.695541, 32.704350, 31.184553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600372, 32.138935, 30.497761>,  <39.135086, 32.171070, 31.073143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600372, 32.138935, 30.497761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563396, 32.510094, 30.642239>,  <38.541210, 32.732788, 30.728926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563396, 32.510094, 30.642239>,  <38.600372, 32.138935, 30.497761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563396, 32.510094, 30.642239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023769, 0.364700, -0.930822,
		-0.995435, -0.077457, -0.055767,
		-0.092436, 0.927898, 0.361194,
		38.535664, 32.788464, 30.750597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261433, 32.382702, 29.898563>,  <38.600372, 32.138935, 30.497761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261433, 32.382702, 29.898563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375080, 32.712402, 30.094475>,  <38.443268, 32.910225, 30.212021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375080, 32.712402, 30.094475>,  <38.261433, 32.382702, 29.898563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375080, 32.712402, 30.094475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000232, 0.510888, -0.859647,
		-0.958788, 0.244131, 0.145346,
		0.284122, 0.824253, 0.489777,
		38.460316, 32.959679, 30.241407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808277, 32.917999, 29.804014>,  <38.261433, 32.382702, 29.898563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808277, 32.917999, 29.804014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163338, 33.093586, 29.859718>,  <38.376373, 33.198936, 29.893141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163338, 33.093586, 29.859718>,  <37.808277, 32.917999, 29.804014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163338, 33.093586, 29.859718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040059, 0.374846, -0.926221,
		-0.458778, 0.816579, 0.350316,
		0.887648, 0.438963, 0.139259,
		38.429630, 33.225273, 29.901497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724621, 33.457870, 29.399878>,  <37.808277, 32.917999, 29.804014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724621, 33.457870, 29.399878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.122463, 33.427601, 29.428257>,  <38.361168, 33.409439, 29.445286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.122463, 33.427601, 29.428257>,  <37.724621, 33.457870, 29.399878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122463, 33.427601, 29.428257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076693, 0.075887, -0.994163,
		0.069845, 0.994241, 0.081281,
		0.994605, -0.075671, 0.070951,
		38.420845, 33.404900, 29.449543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950485, 34.033684, 28.921171>,  <37.724621, 33.457870, 29.399878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950485, 34.033684, 28.921171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.239571, 33.759499, 28.956570>,  <38.413021, 33.594990, 28.977808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.239571, 33.759499, 28.956570>,  <37.950485, 34.033684, 28.921171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239571, 33.759499, 28.956570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080970, -0.043190, -0.995780,
		0.686389, 0.726829, 0.024288,
		0.722713, -0.685459, 0.088497,
		38.456383, 33.553860, 28.983118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988815, 34.710117, 29.179737>,  <37.950485, 34.033684, 28.921171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988815, 34.710117, 29.179737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635513, 34.848877, 29.053547>,  <37.423534, 34.932133, 28.977833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635513, 34.848877, 29.053547>,  <37.988815, 34.710117, 29.179737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635513, 34.848877, 29.053547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344617, -0.024014, 0.938436,
		0.317970, 0.937594, 0.140759,
		-0.883252, 0.346903, -0.315475,
		37.370537, 34.952950, 28.958904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821857, 35.186325, 29.644127>,  <37.988815, 34.710117, 29.179737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821857, 35.186325, 29.644127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470356, 35.091751, 29.478285>,  <37.259457, 35.035007, 29.378780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470356, 35.091751, 29.478285>,  <37.821857, 35.186325, 29.644127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470356, 35.091751, 29.478285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385106, -0.161908, 0.908559,
		-0.281939, 0.958064, 0.051226,
		-0.878751, -0.236431, -0.414604,
		37.206730, 35.020821, 29.353903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387989, 35.499561, 30.013763>,  <37.821857, 35.186325, 29.644127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387989, 35.499561, 30.013763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131046, 35.249565, 29.836327>,  <36.976883, 35.099567, 29.729864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131046, 35.249565, 29.836327>,  <37.387989, 35.499561, 30.013763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131046, 35.249565, 29.836327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514212, -0.077728, 0.854134,
		-0.568303, 0.776755, -0.271447,
		-0.642353, -0.624988, -0.443590,
		36.938339, 35.062069, 29.703249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664036, 35.703304, 30.178701>,  <37.387989, 35.499561, 30.013763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664036, 35.703304, 30.178701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.613228, 35.326405, 30.054749>,  <36.582741, 35.100266, 29.980377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.613228, 35.326405, 30.054749>,  <36.664036, 35.703304, 30.178701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613228, 35.326405, 30.054749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573906, -0.184994, 0.797752,
		-0.809010, 0.279177, -0.517265,
		-0.127023, -0.942251, -0.309884,
		36.575123, 35.043728, 29.961784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003120, 35.652718, 30.248997>,  <36.664036, 35.703304, 30.178701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003120, 35.652718, 30.248997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.131382, 35.274536, 30.226034>,  <36.208340, 35.047626, 30.212257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.131382, 35.274536, 30.226034>,  <36.003120, 35.652718, 30.248997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131382, 35.274536, 30.226034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684746, -0.273254, 0.675615,
		-0.654450, -0.177330, -0.735017,
		0.320653, -0.945456, -0.057405,
		36.227577, 34.990898, 30.208813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402164, 35.234547, 30.473715>,  <36.003120, 35.652718, 30.248997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402164, 35.234547, 30.473715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705421, 34.974110, 30.488184>,  <35.887375, 34.817848, 30.496866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705421, 34.974110, 30.488184>,  <35.402164, 35.234547, 30.473715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705421, 34.974110, 30.488184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492678, -0.535580, 0.685873,
		-0.427191, -0.537809, -0.726821,
		0.758140, -0.651088, 0.036172,
		35.932865, 34.778782, 30.499035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340942, 34.562294, 30.226439>,  <35.402164, 35.234547, 30.473715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340942, 34.562294, 30.226439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614113, 34.538406, 30.517654>,  <35.778015, 34.524075, 30.692385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614113, 34.538406, 30.517654>,  <35.340942, 34.562294, 30.226439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614113, 34.538406, 30.517654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627591, -0.557991, 0.542934,
		0.373816, -0.827696, -0.418547,
		0.682929, -0.059719, 0.728040,
		35.818993, 34.520489, 30.736067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289669, 33.862907, 30.410046>,  <35.340942, 34.562294, 30.226439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289669, 33.862907, 30.410046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.472809, 34.016819, 30.730625>,  <35.582691, 34.109165, 30.922974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.472809, 34.016819, 30.730625>,  <35.289669, 33.862907, 30.410046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472809, 34.016819, 30.730625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707617, -0.388012, 0.590529,
		0.538195, -0.837492, 0.094625,
		0.457847, 0.384778, 0.801449,
		35.610165, 34.132252, 30.971060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287331, 33.330170, 30.826239>,  <35.289669, 33.862907, 30.410046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287331, 33.330170, 30.826239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.324757, 33.660141, 31.049215>,  <35.347214, 33.858124, 31.183002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.324757, 33.660141, 31.049215>,  <35.287331, 33.330170, 30.826239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324757, 33.660141, 31.049215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556767, -0.420813, 0.716190,
		0.825382, -0.377378, 0.419917,
		0.093568, 0.824926, 0.557443,
		35.352825, 33.907619, 31.216448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440971, 33.052212, 31.456001>,  <35.287331, 33.330170, 30.826239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440971, 33.052212, 31.456001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.309231, 33.421825, 31.533653>,  <35.230186, 33.643593, 31.580244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.309231, 33.421825, 31.533653>,  <35.440971, 33.052212, 31.456001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309231, 33.421825, 31.533653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518085, -0.348739, 0.781005,
		0.789377, 0.156649, 0.593586,
		-0.329350, 0.924035, 0.194130,
		35.210426, 33.699036, 31.591892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513783, 33.067715, 32.101608>,  <35.440971, 33.052212, 31.456001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513783, 33.067715, 32.101608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.270241, 33.380924, 32.050747>,  <35.124115, 33.568851, 32.020229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.270241, 33.380924, 32.050747>,  <35.513783, 33.067715, 32.101608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270241, 33.380924, 32.050747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582415, -0.332407, 0.741821,
		0.538600, 0.525714, 0.658434,
		-0.608854, 0.783026, -0.127150,
		35.087585, 33.615833, 32.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362667, 33.210239, 32.731686>,  <35.513783, 33.067715, 32.101608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362667, 33.210239, 32.731686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.070560, 33.345757, 32.494392>,  <34.895298, 33.427067, 32.352016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.070560, 33.345757, 32.494392>,  <35.362667, 33.210239, 32.731686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070560, 33.345757, 32.494392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680315, -0.439834, 0.586274,
		-0.062300, 0.831724, 0.551683,
		-0.730267, 0.338793, -0.593236,
		34.851479, 33.447395, 32.316422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.885098, 35.689167, 25.708307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525803, 35.582661, 25.568434>,  <38.310226, 35.518757, 25.484509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525803, 35.582661, 25.568434>,  <38.885098, 35.689167, 25.708307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525803, 35.582661, 25.568434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392185, 0.126390, 0.911162,
		-0.198414, 0.955578, -0.217953,
		-0.898233, -0.266265, -0.349686,
		38.256332, 35.502781, 25.463528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413261, 36.220047, 25.806501>,  <38.885098, 35.689167, 25.708307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413261, 36.220047, 25.806501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167774, 35.905159, 25.782366>,  <38.020481, 35.716228, 25.767885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167774, 35.905159, 25.782366>,  <38.413261, 36.220047, 25.806501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167774, 35.905159, 25.782366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319996, 0.178148, 0.930519,
		-0.721772, 0.590383, -0.361238,
		-0.613717, -0.787217, -0.060338,
		37.983658, 35.668995, 25.764265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815884, 36.457207, 26.040476>,  <38.413261, 36.220047, 25.806501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815884, 36.457207, 26.040476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806763, 36.062023, 26.101698>,  <37.801292, 35.824913, 26.138432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806763, 36.062023, 26.101698>,  <37.815884, 36.457207, 26.040476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806763, 36.062023, 26.101698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152703, 0.154742, 0.976082,
		-0.988009, -0.001119, -0.154392,
		-0.022799, -0.987955, 0.153057,
		37.799923, 35.765636, 26.147615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124714, 36.352760, 26.419395>,  <37.815884, 36.457207, 26.040476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124714, 36.352760, 26.419395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334526, 36.014442, 26.458370>,  <37.460411, 35.811451, 26.481756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334526, 36.014442, 26.458370>,  <37.124714, 36.352760, 26.419395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334526, 36.014442, 26.458370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472732, -0.194145, 0.859554,
		-0.708093, -0.496921, -0.501671,
		0.524527, -0.845799, 0.097438,
		37.491886, 35.760704, 26.487602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625099, 35.789814, 26.698875>,  <37.124714, 36.352760, 26.419395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625099, 35.789814, 26.698875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995647, 35.664120, 26.781914>,  <37.217976, 35.588703, 26.831738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995647, 35.664120, 26.781914>,  <36.625099, 35.789814, 26.698875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995647, 35.664120, 26.781914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261903, -0.141394, 0.954680,
		-0.270643, -0.938756, -0.213283,
		0.926369, -0.314237, 0.207595,
		37.273560, 35.569851, 26.844193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556587, 35.082115, 27.066893>,  <36.625099, 35.789814, 26.698875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556587, 35.082115, 27.066893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919373, 35.225346, 27.155617>,  <37.137043, 35.311283, 27.208851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919373, 35.225346, 27.155617>,  <36.556587, 35.082115, 27.066893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919373, 35.225346, 27.155617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149817, -0.217926, 0.964398,
		0.393663, -0.907906, -0.144006,
		0.906965, 0.358073, 0.221809,
		37.191463, 35.332767, 27.222158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850956, 34.527641, 27.400049>,  <36.556587, 35.082115, 27.066893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850956, 34.527641, 27.400049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051693, 34.857258, 27.505209>,  <37.172134, 35.055027, 27.568306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051693, 34.857258, 27.505209>,  <36.850956, 34.527641, 27.400049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051693, 34.857258, 27.505209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078997, -0.259011, 0.962638,
		0.861346, -0.503858, -0.064885,
		0.501839, 0.824039, 0.262901,
		37.202244, 35.104469, 27.584080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428921, 34.286659, 27.808125>,  <36.850956, 34.527641, 27.400049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428921, 34.286659, 27.808125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370358, 34.669407, 27.908491>,  <37.335220, 34.899055, 27.968712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370358, 34.669407, 27.908491>,  <37.428921, 34.286659, 27.808125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370358, 34.669407, 27.908491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014942, -0.255762, 0.966625,
		0.989112, 0.137771, 0.051743,
		-0.146407, 0.956873, 0.250918,
		37.326435, 34.956470, 27.983767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858952, 34.422451, 28.286699>,  <37.428921, 34.286659, 27.808125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858952, 34.422451, 28.286699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566151, 34.691719, 28.328672>,  <37.390469, 34.853279, 28.353857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566151, 34.691719, 28.328672>,  <37.858952, 34.422451, 28.286699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566151, 34.691719, 28.328672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121939, -0.280983, 0.951935,
		0.670299, 0.684025, 0.287767,
		-0.732005, 0.673170, 0.104933,
		37.346550, 34.893669, 28.360153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466797, 34.268940, 28.485485>,  <37.858952, 34.422451, 28.286699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466797, 34.268940, 28.485485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603268, 33.896214, 28.534986>,  <38.685150, 33.672577, 28.564688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603268, 33.896214, 28.534986>,  <38.466797, 34.268940, 28.485485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603268, 33.896214, 28.534986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283492, -0.023523, -0.958686,
		0.896231, 0.362166, 0.256137,
		0.341179, -0.931817, 0.123753,
		38.705620, 33.616669, 28.572113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121597, 34.295826, 28.119902>,  <38.466797, 34.268940, 28.485485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121597, 34.295826, 28.119902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003357, 33.915009, 28.151474>,  <38.932415, 33.686516, 28.170418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003357, 33.915009, 28.151474>,  <39.121597, 34.295826, 28.119902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003357, 33.915009, 28.151474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280872, -0.165585, -0.945353,
		0.913090, -0.257274, 0.316350,
		-0.295597, -0.952046, 0.078933,
		38.914677, 33.629395, 28.175154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672852, 33.898148, 27.848597>,  <39.121597, 34.295826, 28.119902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672852, 33.898148, 27.848597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356606, 33.653255, 27.844538>,  <39.166859, 33.506321, 27.842102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356606, 33.653255, 27.844538>,  <39.672852, 33.898148, 27.848597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356606, 33.653255, 27.844538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302674, -0.376353, -0.875641,
		0.532270, -0.695369, 0.482857,
		-0.790618, -0.612226, -0.010149,
		39.119419, 33.469589, 27.841494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913952, 33.223782, 27.764917>,  <39.672852, 33.898148, 27.848597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913952, 33.223782, 27.764917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528938, 33.214119, 27.656885>,  <39.297932, 33.208321, 27.592066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528938, 33.214119, 27.656885>,  <39.913952, 33.223782, 27.764917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528938, 33.214119, 27.656885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268164, -0.232448, -0.934910,
		-0.040194, -0.972309, 0.230218,
		-0.962534, -0.024158, -0.270081,
		39.240177, 33.206871, 27.575861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855770, 32.617172, 27.438686>,  <39.913952, 33.223782, 27.764917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855770, 32.617172, 27.438686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560181, 32.848866, 27.301048>,  <39.382828, 32.987885, 27.218466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560181, 32.848866, 27.301048>,  <39.855770, 32.617172, 27.438686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560181, 32.848866, 27.301048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231665, -0.261131, -0.937092,
		-0.632654, -0.772200, 0.058779,
		-0.738973, 0.579238, -0.344097,
		39.338490, 33.022636, 27.197819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671211, 32.257694, 26.819279>,  <39.855770, 32.617172, 27.438686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671211, 32.257694, 26.819279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461445, 32.595173, 26.773382>,  <39.335583, 32.797661, 26.745844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461445, 32.595173, 26.773382>,  <39.671211, 32.257694, 26.819279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461445, 32.595173, 26.773382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058702, -0.170263, -0.983649,
		-0.849434, -0.509109, 0.138816,
		-0.524420, 0.843693, -0.114742,
		39.304119, 32.848282, 26.738960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097157, 32.062008, 26.370848>,  <39.671211, 32.257694, 26.819279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097157, 32.062008, 26.370848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163311, 32.455292, 26.339991>,  <39.203003, 32.691261, 26.321476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163311, 32.455292, 26.339991>,  <39.097157, 32.062008, 26.370848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163311, 32.455292, 26.339991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005335, -0.077326, -0.996992,
		-0.986214, 0.165302, -0.007544,
		0.165388, 0.983207, -0.077142,
		39.212929, 32.750256, 26.316849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590908, 32.344994, 25.864225>,  <39.097157, 32.062008, 26.370848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590908, 32.344994, 25.864225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881004, 32.619080, 25.837343>,  <39.055061, 32.783531, 25.821215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881004, 32.619080, 25.837343>,  <38.590908, 32.344994, 25.864225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881004, 32.619080, 25.837343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019827, -0.076784, -0.996850,
		-0.688213, 0.724286, -0.042101,
		0.725237, 0.685211, -0.067204,
		39.098576, 32.824642, 25.817183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413052, 32.811211, 25.321815>,  <38.590908, 32.344994, 25.864225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413052, 32.811211, 25.321815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809570, 32.826977, 25.372068>,  <39.047482, 32.836437, 25.402220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809570, 32.826977, 25.372068>,  <38.413052, 32.811211, 25.321815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809570, 32.826977, 25.372068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128021, -0.065445, -0.989610,
		-0.030786, 0.997077, -0.069922,
		0.991293, 0.039417, 0.125632,
		39.106956, 32.838802, 25.409758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672916, 33.201447, 24.783319>,  <38.413052, 32.811211, 25.321815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672916, 33.201447, 24.783319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995903, 33.002369, 24.910002>,  <39.189693, 32.882923, 24.986012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995903, 33.002369, 24.910002>,  <38.672916, 33.201447, 24.783319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995903, 33.002369, 24.910002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265313, -0.173125, -0.948492,
		0.526890, 0.849898, -0.007747,
		0.807462, -0.497696, 0.316707,
		39.238140, 32.853062, 25.005014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232468, 33.499592, 24.452389>,  <38.672916, 33.201447, 24.783319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232468, 33.499592, 24.452389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386673, 33.149246, 24.568491>,  <39.479195, 32.939041, 24.638153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386673, 33.149246, 24.568491>,  <39.232468, 33.499592, 24.452389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386673, 33.149246, 24.568491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477720, -0.079666, -0.874893,
		0.789408, 0.475941, 0.387705,
		0.385511, -0.875861, 0.290255,
		39.502327, 32.886486, 24.655567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818298, 33.538261, 24.116085>,  <39.232468, 33.499592, 24.452389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818298, 33.538261, 24.116085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769321, 33.154861, 24.219069>,  <39.739937, 32.924820, 24.280859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769321, 33.154861, 24.219069>,  <39.818298, 33.538261, 24.116085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769321, 33.154861, 24.219069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348078, -0.284405, -0.893283,
		0.929435, -0.019757, 0.368455,
		-0.122439, -0.958500, 0.257459,
		39.732590, 32.867310, 24.296307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503860, 33.227180, 23.980227>,  <39.818298, 33.538261, 24.116085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503860, 33.227180, 23.980227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219402, 32.945976, 23.977591>,  <40.048725, 32.777252, 23.976009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219402, 32.945976, 23.977591>,  <40.503860, 33.227180, 23.980227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219402, 32.945976, 23.977591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235388, -0.229259, -0.944475,
		0.662464, -0.673214, 0.328517,
		-0.711149, -0.703010, -0.006591,
		40.006058, 32.735073, 23.975613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763889, 32.585171, 23.782087>,  <40.503860, 33.227180, 23.980227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763889, 32.585171, 23.782087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375549, 32.519108, 23.712612>,  <40.142544, 32.479469, 23.670927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375549, 32.519108, 23.712612>,  <40.763889, 32.585171, 23.782087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375549, 32.519108, 23.712612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224522, -0.373121, -0.900206,
		0.083873, -0.912964, 0.399328,
		-0.970853, -0.165160, -0.173686,
		40.084293, 32.469559, 23.660507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.661343, 33.110695, 22.571928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.921028, 33.395580, 22.678707>,  <34.076839, 33.566513, 22.742775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.921028, 33.395580, 22.678707>,  <33.661343, 33.110695, 22.571928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921028, 33.395580, 22.678707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252277, -0.129469, 0.958955,
		0.717546, -0.689916, 0.095622,
		0.649218, 0.712217, 0.266950,
		34.115795, 33.609245, 22.758793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223217, 32.832546, 23.035408>,  <33.661343, 33.110695, 22.571928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223217, 32.832546, 23.035408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238869, 33.226234, 23.104429>,  <34.248260, 33.462448, 23.145842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238869, 33.226234, 23.104429>,  <34.223217, 32.832546, 23.035408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238869, 33.226234, 23.104429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066314, -0.169745, 0.983254,
		0.997032, -0.049912, 0.058626,
		0.039125, 0.984223, 0.172551,
		34.250607, 33.521500, 23.156195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578598, 32.888103, 23.631636>,  <34.223217, 32.832546, 23.035408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578598, 32.888103, 23.631636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.412994, 33.251991, 23.618982>,  <34.313633, 33.470325, 23.611389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.412994, 33.251991, 23.618982>,  <34.578598, 32.888103, 23.631636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412994, 33.251991, 23.618982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003548, 0.036365, 0.999332,
		0.910265, 0.413623, -0.018283,
		-0.414012, 0.909722, -0.031634,
		34.288792, 33.524906, 23.609491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898808, 33.243065, 24.138971>,  <34.578598, 32.888103, 23.631636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898808, 33.243065, 24.138971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568893, 33.462406, 24.083784>,  <34.370945, 33.594009, 24.050671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568893, 33.462406, 24.083784>,  <34.898808, 33.243065, 24.138971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568893, 33.462406, 24.083784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023389, 0.210708, 0.977269,
		0.564959, 0.809266, -0.160964,
		-0.824787, 0.548352, -0.137969,
		34.321457, 33.626911, 24.042393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968697, 33.882645, 24.504374>,  <34.898808, 33.243065, 24.138971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968697, 33.882645, 24.504374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574104, 33.843849, 24.451530>,  <34.337349, 33.820572, 24.419825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574104, 33.843849, 24.451530>,  <34.968697, 33.882645, 24.504374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574104, 33.843849, 24.451530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146958, 0.166677, 0.974999,
		-0.072547, 0.981229, -0.178677,
		-0.986479, -0.096992, -0.132107,
		34.278160, 33.814751, 24.411898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662399, 34.348442, 24.985838>,  <34.968697, 33.882645, 24.504374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662399, 34.348442, 24.985838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356537, 34.098728, 24.921875>,  <34.173019, 33.948898, 24.883497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356537, 34.098728, 24.921875>,  <34.662399, 34.348442, 24.985838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356537, 34.098728, 24.921875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248779, 0.057059, 0.966878,
		-0.594483, 0.779111, -0.198939,
		-0.764656, -0.624284, -0.159906,
		34.127140, 33.911442, 24.873903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104385, 34.680550, 25.393854>,  <34.662399, 34.348442, 24.985838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104385, 34.680550, 25.393854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053177, 34.291214, 25.317717>,  <34.022453, 34.057613, 25.272034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053177, 34.291214, 25.317717>,  <34.104385, 34.680550, 25.393854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053177, 34.291214, 25.317717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009176, -0.190753, 0.981595,
		-0.991730, 0.127408, 0.015489,
		-0.128018, -0.973335, -0.190345,
		34.014771, 33.999214, 25.260612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644905, 34.538975, 25.887543>,  <34.104385, 34.680550, 25.393854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644905, 34.538975, 25.887543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.773144, 34.172886, 25.789907>,  <33.850086, 33.953232, 25.731327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.773144, 34.172886, 25.789907>,  <33.644905, 34.538975, 25.887543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773144, 34.172886, 25.789907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094324, -0.287255, 0.953198,
		-0.942508, -0.282569, -0.178421,
		0.320596, -0.915226, -0.244088,
		33.869324, 33.898319, 25.716681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193123, 34.143631, 26.268673>,  <33.644905, 34.538975, 25.887543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193123, 34.143631, 26.268673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.505745, 33.910866, 26.178736>,  <33.693317, 33.771206, 26.124773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.505745, 33.910866, 26.178736>,  <33.193123, 34.143631, 26.268673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505745, 33.910866, 26.178736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098438, -0.470936, 0.876658,
		-0.616026, -0.663020, -0.425343,
		0.781551, -0.581914, -0.224843,
		33.740211, 33.736294, 26.111282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934280, 33.543083, 26.421242>,  <33.193123, 34.143631, 26.268673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934280, 33.543083, 26.421242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.331272, 33.494835, 26.412880>,  <33.569466, 33.465885, 26.407864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.331272, 33.494835, 26.412880>,  <32.934280, 33.543083, 26.421242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331272, 33.494835, 26.412880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052907, -0.576629, 0.815292,
		-0.110392, -0.808054, -0.578673,
		0.992479, -0.120618, -0.020904,
		33.629017, 33.458649, 26.406609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081448, 32.855633, 26.350897>,  <32.934280, 33.543083, 26.421242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081448, 32.855633, 26.350897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401966, 33.024231, 26.520729>,  <33.594276, 33.125389, 26.622629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401966, 33.024231, 26.520729>,  <33.081448, 32.855633, 26.350897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401966, 33.024231, 26.520729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185176, -0.500095, 0.845940,
		0.568893, -0.756468, -0.322672,
		0.801293, 0.421498, 0.424580,
		33.642353, 33.150681, 26.648104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421906, 32.250599, 26.591652>,  <33.081448, 32.855633, 26.350897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421906, 32.250599, 26.591652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.575432, 32.555450, 26.800209>,  <33.667549, 32.738361, 26.925343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.575432, 32.555450, 26.800209>,  <33.421906, 32.250599, 26.591652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575432, 32.555450, 26.800209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241076, -0.462354, 0.853294,
		0.891385, -0.453202, 0.006272,
		0.383815, 0.762126, 0.521392,
		33.690575, 32.784088, 26.956627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895752, 32.003300, 27.064955>,  <33.421906, 32.250599, 26.591652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895752, 32.003300, 27.064955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799831, 32.363152, 27.210920>,  <33.742279, 32.579063, 27.298500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799831, 32.363152, 27.210920>,  <33.895752, 32.003300, 27.064955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799831, 32.363152, 27.210920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180692, -0.410672, 0.893700,
		0.953858, 0.148376, 0.261036,
		-0.239804, 0.899629, 0.364913,
		33.727890, 32.633041, 27.320395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107483, 31.952955, 27.737915>,  <33.895752, 32.003300, 27.064955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107483, 31.952955, 27.737915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847549, 32.256973, 27.740829>,  <33.691589, 32.439384, 27.742579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847549, 32.256973, 27.740829>,  <34.107483, 31.952955, 27.737915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847549, 32.256973, 27.740829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282830, -0.250693, 0.925830,
		0.705497, 0.599573, 0.377871,
		-0.649832, 0.760043, 0.007287,
		33.652599, 32.484985, 27.743015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826820, 32.075909, 27.966972>,  <34.107483, 31.952955, 27.737915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826820, 32.075909, 27.966972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.944672, 31.694260, 27.988333>,  <35.015381, 31.465271, 28.001148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.944672, 31.694260, 27.988333>,  <34.826820, 32.075909, 27.966972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944672, 31.694260, 27.988333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192528, 0.004531, -0.981281,
		0.936017, 0.299392, 0.185029,
		0.294626, -0.954119, 0.053400,
		35.033058, 31.408024, 28.004353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398605, 32.089619, 27.608498>,  <34.826820, 32.075909, 27.966972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398605, 32.089619, 27.608498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336353, 31.694746, 27.622622>,  <35.299004, 31.457821, 27.631096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336353, 31.694746, 27.622622>,  <35.398605, 32.089619, 27.608498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336353, 31.694746, 27.622622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392628, -0.094617, -0.914817,
		0.906434, -0.128509, 0.402322,
		-0.155628, -0.987184, 0.035308,
		35.289665, 31.398590, 27.633213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071720, 31.711626, 27.456676>,  <35.398605, 32.089619, 27.608498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071720, 31.711626, 27.456676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760265, 31.477453, 27.366348>,  <35.573391, 31.336950, 27.312151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760265, 31.477453, 27.366348>,  <36.071720, 31.711626, 27.456676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760265, 31.477453, 27.366348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370863, -0.139075, -0.918215,
		0.506145, -0.798705, 0.325404,
		-0.778638, -0.585430, -0.225818,
		35.526672, 31.301825, 27.298603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418835, 31.125582, 27.054007>,  <36.071720, 31.711626, 27.456676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418835, 31.125582, 27.054007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027130, 31.095652, 26.978703>,  <35.792107, 31.077694, 26.933519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027130, 31.095652, 26.978703>,  <36.418835, 31.125582, 27.054007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027130, 31.095652, 26.978703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199233, -0.187359, -0.961875,
		0.036702, -0.979437, 0.198382,
		-0.979265, -0.074827, -0.188260,
		35.733349, 31.073204, 26.922224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407875, 30.579414, 26.479345>,  <36.418835, 31.125582, 27.054007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407875, 30.579414, 26.479345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050285, 30.758532, 26.486120>,  <35.835732, 30.866001, 26.490185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050285, 30.758532, 26.486120>,  <36.407875, 30.579414, 26.479345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050285, 30.758532, 26.486120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011749, 0.014363, -0.999828,
		-0.447959, -0.894022, -0.007579,
		-0.893977, 0.447793, 0.016938,
		35.782093, 30.892870, 26.491201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869221, 30.156364, 26.049112>,  <36.407875, 30.579414, 26.479345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869221, 30.156364, 26.049112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774868, 30.544054, 26.077301>,  <35.718254, 30.776667, 26.094213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774868, 30.544054, 26.077301>,  <35.869221, 30.156364, 26.049112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774868, 30.544054, 26.077301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068281, 0.088868, -0.993700,
		-0.969379, -0.229588, -0.087142,
		-0.235886, 0.969222, 0.070471,
		35.704102, 30.834820, 26.098442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343464, 30.183311, 25.641815>,  <35.869221, 30.156364, 26.049112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343464, 30.183311, 25.641815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.464951, 30.563976, 25.660116>,  <35.537842, 30.792376, 25.671097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.464951, 30.563976, 25.660116>,  <35.343464, 30.183311, 25.641815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464951, 30.563976, 25.660116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163906, 0.099491, -0.981446,
		-0.938559, 0.290580, 0.186200,
		0.303713, 0.951664, 0.045751,
		35.556065, 30.849476, 25.673841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836483, 30.497931, 25.203085>,  <35.343464, 30.183311, 25.641815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836483, 30.497931, 25.203085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131565, 30.765680, 25.238255>,  <35.308613, 30.926331, 25.259356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131565, 30.765680, 25.238255>,  <34.836483, 30.497931, 25.203085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131565, 30.765680, 25.238255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074459, 0.210105, -0.974839,
		-0.671004, 0.712598, 0.204836,
		0.737705, 0.669373, 0.087922,
		35.352879, 30.966492, 25.264631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590221, 31.110239, 24.791689>,  <34.836483, 30.497931, 25.203085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590221, 31.110239, 24.791689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.988178, 31.130629, 24.826523>,  <35.226952, 31.142862, 24.847424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.988178, 31.130629, 24.826523>,  <34.590221, 31.110239, 24.791689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988178, 31.130629, 24.826523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072074, 0.245011, -0.966838,
		-0.070621, 0.968179, 0.240087,
		0.994896, 0.050975, 0.087083,
		35.286648, 31.145922, 24.852648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727348, 31.798706, 24.536398>,  <34.590221, 31.110239, 24.791689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727348, 31.798706, 24.536398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079491, 31.609013, 24.539852>,  <35.290775, 31.495195, 24.541925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079491, 31.609013, 24.539852>,  <34.727348, 31.798706, 24.536398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079491, 31.609013, 24.539852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185197, 0.326916, -0.926730,
		0.436665, 0.817451, 0.375629,
		0.880356, -0.474235, 0.008637,
		35.343597, 31.466742, 24.542442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286003, 32.297340, 24.465788>,  <34.727348, 31.798706, 24.536398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286003, 32.297340, 24.465788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420586, 31.944975, 24.332651>,  <35.501335, 31.733555, 24.252769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420586, 31.944975, 24.332651>,  <35.286003, 32.297340, 24.465788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420586, 31.944975, 24.332651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239024, 0.421762, -0.874634,
		0.910858, 0.214721, 0.352466,
		0.336459, -0.880915, -0.332842,
		35.521523, 31.680700, 24.232798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013252, 32.431522, 24.128580>,  <35.286003, 32.297340, 24.465788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013252, 32.431522, 24.128580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899002, 32.073025, 23.992832>,  <35.830452, 31.857927, 23.911383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899002, 32.073025, 23.992832>,  <36.013252, 32.431522, 24.128580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899002, 32.073025, 23.992832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340595, 0.236072, -0.910090,
		0.895777, -0.375529, 0.237828,
		-0.285621, -0.896241, -0.339372,
		35.813316, 31.804153, 23.891020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621120, 32.147568, 23.873341>,  <36.013252, 32.431522, 24.128580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621120, 32.147568, 23.873341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303493, 31.991020, 23.687313>,  <36.112919, 31.897091, 23.575697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303493, 31.991020, 23.687313>,  <36.621120, 32.147568, 23.873341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303493, 31.991020, 23.687313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263067, 0.468477, -0.843401,
		0.547958, -0.792059, -0.269044,
		-0.794064, -0.391371, -0.465071,
		36.065273, 31.873610, 23.547792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833710, 31.964397, 23.263052>,  <36.621120, 32.147568, 23.873341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833710, 31.964397, 23.263052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438759, 31.993311, 23.206682>,  <36.201790, 32.010658, 23.172859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438759, 31.993311, 23.206682>,  <36.833710, 31.964397, 23.263052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438759, 31.993311, 23.206682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157493, 0.353891, -0.921931,
		-0.016768, -0.932489, -0.360808,
		-0.987378, 0.072284, -0.140927,
		36.142544, 32.014996, 23.164404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898026, 31.249674, 23.338152>,  <36.833710, 31.964397, 23.263052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898026, 31.249674, 23.338152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189625, 31.064898, 23.136095>,  <37.364586, 30.954031, 23.014860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189625, 31.064898, 23.136095>,  <36.898026, 31.249674, 23.338152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189625, 31.064898, 23.136095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236748, -0.522262, 0.819264,
		-0.642268, -0.716835, -0.271366,
		0.729001, -0.461942, -0.505141,
		37.408325, 30.926315, 22.984552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765865, 30.605879, 23.400465>,  <36.898026, 31.249674, 23.338152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765865, 30.605879, 23.400465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158844, 30.604452, 23.325861>,  <37.394630, 30.603596, 23.281097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158844, 30.604452, 23.325861>,  <36.765865, 30.605879, 23.400465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158844, 30.604452, 23.325861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132196, -0.692124, 0.709570,
		-0.131619, -0.721770, -0.679503,
		0.982446, -0.003565, -0.186512,
		37.453579, 30.603382, 23.269907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072803, 29.903448, 23.340870>,  <36.765865, 30.605879, 23.400465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072803, 29.903448, 23.340870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392700, 30.130043, 23.420380>,  <37.584637, 30.265999, 23.468086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392700, 30.130043, 23.420380>,  <37.072803, 29.903448, 23.340870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392700, 30.130043, 23.420380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263953, -0.629167, 0.731079,
		0.539208, -0.532206, -0.652695,
		0.799739, 0.566485, 0.198775,
		37.632622, 30.299988, 23.480013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511822, 29.403763, 23.616842>,  <37.072803, 29.903448, 23.340870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511822, 29.403763, 23.616842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653721, 29.765680, 23.711079>,  <37.738861, 29.982830, 23.767620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653721, 29.765680, 23.711079>,  <37.511822, 29.403763, 23.616842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653721, 29.765680, 23.711079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361711, -0.365172, 0.857796,
		0.862161, -0.219082, -0.456816,
		0.354744, 0.904794, 0.235593,
		37.760143, 30.037119, 23.781757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179214, 29.227617, 23.800375>,  <37.511822, 29.403763, 23.616842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179214, 29.227617, 23.800375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080475, 29.577406, 23.967403>,  <38.021229, 29.787279, 24.067621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080475, 29.577406, 23.967403>,  <38.179214, 29.227617, 23.800375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080475, 29.577406, 23.967403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333818, -0.327796, 0.883807,
		0.909741, 0.357562, -0.210997,
		-0.246852, 0.874470, 0.417571,
		38.006420, 29.839746, 24.092674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796349, 29.341629, 24.232689>,  <38.179214, 29.227617, 23.800375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796349, 29.341629, 24.232689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510174, 29.576706, 24.383829>,  <38.338470, 29.717752, 24.474514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510174, 29.576706, 24.383829>,  <38.796349, 29.341629, 24.232689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510174, 29.576706, 24.383829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336713, -0.183847, 0.923485,
		0.612191, 0.787921, -0.066352,
		-0.715434, 0.587691, 0.377853,
		38.295544, 29.753014, 24.497185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101570, 29.724237, 24.731932>,  <38.796349, 29.341629, 24.232689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101570, 29.724237, 24.731932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.716759, 29.731216, 24.840887>,  <38.485870, 29.735405, 24.906261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.716759, 29.731216, 24.840887>,  <39.101570, 29.724237, 24.731932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716759, 29.731216, 24.840887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270059, -0.083955, 0.959177,
		0.039605, 0.996317, 0.076054,
		-0.962029, 0.017449, 0.272389,
		38.428150, 29.736450, 24.922604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080429, 30.176476, 25.323004>,  <39.101570, 29.724237, 24.731932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080429, 30.176476, 25.323004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.735943, 29.975266, 25.352058>,  <38.529251, 29.854540, 25.369492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.735943, 29.975266, 25.352058>,  <39.080429, 30.176476, 25.323004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735943, 29.975266, 25.352058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181720, -0.171299, 0.968315,
		-0.474643, 0.847127, 0.238934,
		-0.861215, -0.503023, 0.072635,
		38.477577, 29.824358, 25.373848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675922, 30.515184, 25.891476>,  <39.080429, 30.176476, 25.323004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675922, 30.515184, 25.891476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509785, 30.158432, 25.819876>,  <38.410103, 29.944380, 25.776917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509785, 30.158432, 25.819876>,  <38.675922, 30.515184, 25.891476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509785, 30.158432, 25.819876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041032, -0.178205, 0.983138,
		-0.908740, 0.415681, 0.037420,
		-0.415340, -0.891881, -0.178998,
		38.385181, 29.890867, 25.766176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964230, 30.565197, 26.167326>,  <38.675922, 30.515184, 25.891476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964230, 30.565197, 26.167326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108418, 30.192146, 26.173807>,  <38.194931, 29.968315, 26.177696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108418, 30.192146, 26.173807>,  <37.964230, 30.565197, 26.167326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108418, 30.192146, 26.173807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242534, -0.076939, 0.967087,
		-0.900687, -0.352538, -0.253929,
		0.360472, -0.932629, 0.016204,
		38.216560, 29.912357, 26.178669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616104, 30.271814, 26.738565>,  <37.964230, 30.565197, 26.167326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616104, 30.271814, 26.738565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905460, 30.001381, 26.682545>,  <38.079075, 29.839121, 26.648933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905460, 30.001381, 26.682545>,  <37.616104, 30.271814, 26.738565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905460, 30.001381, 26.682545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117671, -0.079151, 0.989893,
		-0.680334, -0.732563, 0.022297,
		0.723394, -0.676082, -0.140051,
		38.122478, 29.798557, 26.640530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288586, 29.758614, 27.125256>,  <37.616104, 30.271814, 26.738565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288586, 29.758614, 27.125256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669292, 29.657175, 27.056171>,  <37.897717, 29.596312, 27.014721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669292, 29.657175, 27.056171>,  <37.288586, 29.758614, 27.125256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669292, 29.657175, 27.056171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106199, -0.255832, 0.960871,
		-0.287866, -0.932864, -0.216559,
		0.951764, -0.253604, -0.172714,
		37.954823, 29.581097, 27.004358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443523, 29.098053, 27.372549>,  <37.288586, 29.758614, 27.125256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443523, 29.098053, 27.372549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788029, 29.301165, 27.380413>,  <37.994732, 29.423031, 27.385132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788029, 29.301165, 27.380413>,  <37.443523, 29.098053, 27.372549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788029, 29.301165, 27.380413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139027, -0.272671, 0.952009,
		0.488772, -0.817197, -0.305436,
		0.861262, 0.507780, 0.019662,
		38.046406, 29.453499, 27.386311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931377, 28.673906, 27.763271>,  <37.443523, 29.098053, 27.372549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931377, 28.673906, 27.763271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120872, 29.025759, 27.780342>,  <38.234570, 29.236870, 27.790585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120872, 29.025759, 27.780342>,  <37.931377, 28.673906, 27.763271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120872, 29.025759, 27.780342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146674, -0.126590, 0.981051,
		0.868365, -0.458503, -0.188989,
		0.473739, 0.879631, 0.042676,
		38.262993, 29.289648, 27.793144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.665070, 31.729572, 23.595230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.347546, 31.934834, 23.464664>,  <40.157032, 32.057991, 23.386326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.347546, 31.934834, 23.464664>,  <40.665070, 31.729572, 23.595230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347546, 31.934834, 23.464664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130749, -0.380166, -0.915630,
		-0.593951, -0.769510, 0.234684,
		-0.793805, 0.513155, -0.326412,
		40.109406, 32.088779, 23.366741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338799, 31.277332, 23.117331>,  <40.665070, 31.729572, 23.595230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338799, 31.277332, 23.117331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.216705, 31.643095, 23.010977>,  <40.143448, 31.862553, 22.947165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.216705, 31.643095, 23.010977>,  <40.338799, 31.277332, 23.117331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216705, 31.643095, 23.010977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018174, -0.273564, -0.961682,
		-0.952104, -0.298369, 0.066883,
		-0.305233, 0.914406, -0.265884,
		40.125137, 31.917418, 22.931211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916054, 31.125685, 22.482456>,  <40.338799, 31.277332, 23.117331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916054, 31.125685, 22.482456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.015713, 31.513067, 22.484236>,  <40.075508, 31.745497, 22.485304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.015713, 31.513067, 22.484236>,  <39.916054, 31.125685, 22.482456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015713, 31.513067, 22.484236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109487, -0.023604, -0.993708,
		-0.962256, 0.248070, -0.111914,
		0.249150, 0.968455, 0.004447,
		40.090458, 31.803604, 22.485569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491444, 31.370296, 21.987698>,  <39.916054, 31.125685, 22.482456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491444, 31.370296, 21.987698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768810, 31.653040, 22.043598>,  <39.935230, 31.822685, 22.077139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768810, 31.653040, 22.043598>,  <39.491444, 31.370296, 21.987698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768810, 31.653040, 22.043598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028667, 0.166738, -0.985584,
		-0.719970, 0.687423, 0.095355,
		0.693413, 0.706857, 0.139753,
		39.976833, 31.865097, 22.085524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269604, 32.016880, 21.604790>,  <39.491444, 31.370296, 21.987698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269604, 32.016880, 21.604790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664093, 32.074192, 21.637857>,  <39.900787, 32.108578, 21.657698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664093, 32.074192, 21.637857>,  <39.269604, 32.016880, 21.604790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664093, 32.074192, 21.637857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057171, 0.173735, -0.983132,
		-0.155223, 0.974314, 0.163150,
		0.986224, 0.143277, 0.082670,
		39.959961, 32.117176, 21.662659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349182, 32.705650, 21.333094>,  <39.269604, 32.016880, 21.604790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349182, 32.705650, 21.333094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.687679, 32.492542, 21.330797>,  <39.890778, 32.364677, 21.329420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.687679, 32.492542, 21.330797>,  <39.349182, 32.705650, 21.333094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687679, 32.492542, 21.330797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067391, 0.117716, -0.990758,
		0.528523, 0.838032, 0.135520,
		0.846240, -0.532771, -0.005740,
		39.941551, 32.332710, 21.329075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975021, 33.201847, 21.181692>,  <39.349182, 32.705650, 21.333094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975021, 33.201847, 21.181692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.061279, 32.822197, 21.089895>,  <40.113033, 32.594406, 21.034817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.061279, 32.822197, 21.089895>,  <39.975021, 33.201847, 21.181692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061279, 32.822197, 21.089895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147524, 0.263990, -0.953177,
		0.965264, 0.171689, 0.196945,
		0.215642, -0.949122, -0.229492,
		40.125973, 32.537460, 21.021048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352825, 33.258492, 20.653334>,  <39.975021, 33.201847, 21.181692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352825, 33.258492, 20.653334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.292942, 32.864349, 20.620684>,  <40.257011, 32.627865, 20.601093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.292942, 32.864349, 20.620684>,  <40.352825, 33.258492, 20.653334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292942, 32.864349, 20.620684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289927, 0.035178, -0.956402,
		0.945267, -0.166848, 0.280415,
		-0.149709, -0.985355, -0.081626,
		40.248028, 32.568745, 20.596195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970840, 33.065514, 20.271780>,  <40.352825, 33.258492, 20.653334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970840, 33.065514, 20.271780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.683872, 32.789986, 20.230120>,  <40.511692, 32.624668, 20.205124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.683872, 32.789986, 20.230120>,  <40.970840, 33.065514, 20.271780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683872, 32.789986, 20.230120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181204, -0.040153, -0.982626,
		0.672666, -0.723823, 0.153622,
		-0.717416, -0.688816, -0.104150,
		40.468647, 32.583340, 20.198875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227680, 32.575039, 19.737650>,  <40.970840, 33.065514, 20.271780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227680, 32.575039, 19.737650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.828571, 32.552181, 19.751410>,  <40.589108, 32.538467, 19.759666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.828571, 32.552181, 19.751410>,  <41.227680, 32.575039, 19.737650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828571, 32.552181, 19.751410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022994, -0.189464, -0.981618,
		0.062612, -0.980223, 0.187728,
		-0.997773, -0.057145, 0.034402,
		40.529240, 32.535038, 19.761730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164036, 32.078751, 19.312220>,  <41.227680, 32.575039, 19.737650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164036, 32.078751, 19.312220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.797443, 32.237877, 19.329235>,  <40.577488, 32.333351, 19.339443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.797443, 32.237877, 19.329235>,  <41.164036, 32.078751, 19.312220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797443, 32.237877, 19.329235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146828, -0.235536, -0.960710,
		-0.372165, -0.886717, 0.274274,
		-0.916480, 0.397814, 0.042536,
		40.522499, 32.357220, 19.341997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771572, 31.596172, 18.986969>,  <41.164036, 32.078751, 19.312220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771572, 31.596172, 18.986969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.594505, 31.953915, 18.961136>,  <40.488266, 32.168560, 18.945635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.594505, 31.953915, 18.961136>,  <40.771572, 31.596172, 18.986969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594505, 31.953915, 18.961136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181080, -0.159703, -0.970415,
		-0.878211, -0.417877, 0.232645,
		-0.442668, 0.894356, -0.064584,
		40.461704, 32.222221, 18.941761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168022, 31.472599, 18.554377>,  <40.771572, 31.596172, 18.986969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168022, 31.472599, 18.554377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261322, 31.858822, 18.508266>,  <40.317303, 32.090557, 18.480600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261322, 31.858822, 18.508266>,  <40.168022, 31.472599, 18.554377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261322, 31.858822, 18.508266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297538, -0.041992, -0.953786,
		-0.925778, 0.256772, 0.277496,
		0.233253, 0.965559, -0.115275,
		40.331299, 32.148491, 18.473684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297840, 31.410961, 17.761171>,  <40.168022, 31.472599, 18.554377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297840, 31.410961, 17.761171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332012, 31.762285, 17.949329>,  <40.352516, 31.973080, 18.062223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332012, 31.762285, 17.949329>,  <40.297840, 31.410961, 17.761171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332012, 31.762285, 17.949329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212493, 0.477321, -0.852650,
		-0.973421, -0.027110, 0.227415,
		0.085434, 0.878311, 0.470395,
		40.357643, 32.025780, 18.090448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528309, 31.381422, 17.619904>,  <40.297840, 31.410961, 17.761171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528309, 31.381422, 17.619904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184723, 31.265018, 17.451384>,  <38.978573, 31.195177, 17.350271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184723, 31.265018, 17.451384>,  <39.528309, 31.381422, 17.619904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184723, 31.265018, 17.451384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353879, -0.257274, 0.899211,
		-0.370067, 0.921480, 0.118008,
		-0.858965, -0.291007, -0.421300,
		38.927032, 31.177715, 17.324993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922405, 31.747509, 17.947681>,  <39.528309, 31.381422, 17.619904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922405, 31.747509, 17.947681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.797134, 31.409731, 17.773863>,  <38.721973, 31.207064, 17.669571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.797134, 31.409731, 17.773863>,  <38.922405, 31.747509, 17.947681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797134, 31.409731, 17.773863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463805, -0.263292, 0.845909,
		-0.828737, 0.466464, -0.309202,
		-0.313176, -0.844446, -0.434548,
		38.703182, 31.156397, 17.643499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200581, 31.827198, 18.105679>,  <38.922405, 31.747509, 17.947681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200581, 31.827198, 18.105679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255661, 31.435720, 18.044752>,  <38.288708, 31.200834, 18.008196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255661, 31.435720, 18.044752>,  <38.200581, 31.827198, 18.105679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255661, 31.435720, 18.044752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451772, -0.198912, 0.869676,
		-0.881443, -0.050939, -0.469535,
		0.137697, -0.978693, -0.152316,
		38.296970, 31.142113, 17.999058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581799, 31.488432, 18.253981>,  <38.200581, 31.827198, 18.105679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581799, 31.488432, 18.253981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836426, 31.183563, 18.301098>,  <37.989204, 31.000643, 18.329369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836426, 31.183563, 18.301098>,  <37.581799, 31.488432, 18.253981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836426, 31.183563, 18.301098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423987, -0.218270, 0.878973,
		-0.644215, -0.609472, -0.462094,
		0.636571, -0.762170, 0.117795,
		38.027397, 30.954912, 18.336437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215721, 31.041632, 18.645472>,  <37.581799, 31.488432, 18.253981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215721, 31.041632, 18.645472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581619, 30.883503, 18.678844>,  <37.801159, 30.788626, 18.698868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581619, 30.883503, 18.678844>,  <37.215721, 31.041632, 18.645472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581619, 30.883503, 18.678844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174302, -0.199825, 0.964204,
		-0.364500, -0.896543, -0.251695,
		0.914745, -0.395323, 0.083433,
		37.856045, 30.764906, 18.703875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078064, 30.501356, 18.975092>,  <37.215721, 31.041632, 18.645472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078064, 30.501356, 18.975092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467064, 30.558434, 19.048721>,  <37.700462, 30.592680, 19.092899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467064, 30.558434, 19.048721>,  <37.078064, 30.501356, 18.975092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467064, 30.558434, 19.048721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164431, -0.139064, 0.976537,
		0.164943, -0.979949, -0.111777,
		0.972500, 0.142693, 0.184072,
		37.758816, 30.601240, 19.103943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243496, 29.907806, 19.456293>,  <37.078064, 30.501356, 18.975092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243496, 29.907806, 19.456293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500484, 30.211205, 19.499954>,  <37.654678, 30.393244, 19.526152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500484, 30.211205, 19.499954>,  <37.243496, 29.907806, 19.456293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500484, 30.211205, 19.499954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112904, -0.047194, 0.992484,
		0.757948, -0.649966, 0.055317,
		0.642470, 0.758497, 0.109154,
		37.693226, 30.438753, 19.532700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628738, 29.650675, 19.931749>,  <37.243496, 29.907806, 19.456293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628738, 29.650675, 19.931749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704659, 30.043270, 19.921518>,  <37.750210, 30.278828, 19.915380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704659, 30.043270, 19.921518>,  <37.628738, 29.650675, 19.931749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704659, 30.043270, 19.921518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018425, 0.029606, 0.999392,
		0.981649, -0.189217, 0.023703,
		0.189804, 0.981489, -0.025576,
		37.761600, 30.337717, 19.913845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122013, 29.716087, 20.441914>,  <37.628738, 29.650675, 19.931749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122013, 29.716087, 20.441914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998299, 30.095102, 20.409622>,  <37.924068, 30.322512, 20.390247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998299, 30.095102, 20.409622>,  <38.122013, 29.716087, 20.441914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998299, 30.095102, 20.409622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119899, 0.045358, 0.991750,
		0.943381, 0.316413, 0.099580,
		-0.309285, 0.947537, -0.080727,
		37.905514, 30.379364, 20.385405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508350, 30.112936, 20.981419>,  <38.122013, 29.716087, 20.441914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508350, 30.112936, 20.981419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.196331, 30.341455, 20.879330>,  <38.009117, 30.478567, 20.818077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.196331, 30.341455, 20.879330>,  <38.508350, 30.112936, 20.981419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196331, 30.341455, 20.879330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143328, 0.233902, 0.961638,
		0.609078, 0.786708, -0.100573,
		-0.780052, 0.571298, -0.255221,
		37.962315, 30.512844, 20.802763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610897, 30.839540, 21.269016>,  <38.508350, 30.112936, 20.981419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610897, 30.839540, 21.269016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220982, 30.790953, 21.194157>,  <37.987030, 30.761801, 21.149240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220982, 30.790953, 21.194157>,  <38.610897, 30.839540, 21.269016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220982, 30.790953, 21.194157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215888, 0.301796, 0.928607,
		-0.056315, 0.945603, -0.320413,
		-0.974793, -0.121468, -0.187148,
		37.928543, 30.754513, 21.138012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301319, 31.444725, 21.400576>,  <38.610897, 30.839540, 21.269016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301319, 31.444725, 21.400576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006008, 31.177191, 21.435455>,  <37.828823, 31.016670, 21.456383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006008, 31.177191, 21.435455>,  <38.301319, 31.444725, 21.400576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006008, 31.177191, 21.435455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192584, 0.332922, 0.923079,
		-0.646419, 0.664696, -0.374596,
		-0.738278, -0.668836, 0.087197,
		37.784523, 30.976540, 21.461615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906124, 31.797363, 21.954336>,  <38.301319, 31.444725, 21.400576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906124, 31.797363, 21.954336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760445, 31.424835, 21.953861>,  <37.673038, 31.201319, 21.953575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760445, 31.424835, 21.953861>,  <37.906124, 31.797363, 21.954336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760445, 31.424835, 21.953861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040030, -0.016930, 0.999055,
		-0.930461, 0.363807, 0.043447,
		-0.364198, -0.931321, -0.001190,
		37.651184, 31.145439, 21.953505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386574, 31.833540, 22.461336>,  <37.906124, 31.797363, 21.954336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386574, 31.833540, 22.461336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449726, 31.438803, 22.447386>,  <37.487617, 31.201962, 22.439014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449726, 31.438803, 22.447386>,  <37.386574, 31.833540, 22.461336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449726, 31.438803, 22.447386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092619, -0.020366, 0.995494,
		-0.983105, -0.160400, 0.088185,
		0.157881, -0.986842, -0.034878,
		37.497089, 31.142750, 22.436922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621620, 31.543222, 22.596754>,  <37.386574, 31.833540, 22.461336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621620, 31.543222, 22.596754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343605, 31.822176, 22.666695>,  <36.176796, 31.989548, 22.708660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343605, 31.822176, 22.666695>,  <36.621620, 31.543222, 22.596754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343605, 31.822176, 22.666695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152510, 0.380671, -0.912047,
		-0.702610, -0.607242, -0.370940,
		-0.695040, 0.697385, 0.174853,
		36.135094, 32.031391, 22.719151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307335, 31.595617, 22.002312>,  <36.621620, 31.543222, 22.596754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307335, 31.595617, 22.002312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134048, 31.909182, 22.180216>,  <36.030079, 32.097321, 22.286959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134048, 31.909182, 22.180216>,  <36.307335, 31.595617, 22.002312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134048, 31.909182, 22.180216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019505, 0.501509, -0.864932,
		-0.901081, -0.366024, -0.232550,
		-0.433212, 0.783910, 0.444761,
		36.004086, 32.144356, 22.313644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765846, 31.731985, 21.626562>,  <36.307335, 31.595617, 22.002312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765846, 31.731985, 21.626562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873371, 32.074066, 21.803814>,  <35.937885, 32.279316, 21.910166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873371, 32.074066, 21.803814>,  <35.765846, 31.731985, 21.626562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873371, 32.074066, 21.803814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223824, 0.392009, -0.892318,
		-0.936825, 0.339052, -0.086037,
		0.268816, 0.855203, 0.443132,
		35.954018, 32.330627, 21.936754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545738, 32.224560, 21.119144>,  <35.765846, 31.731985, 21.626562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545738, 32.224560, 21.119144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793247, 32.423595, 21.362301>,  <35.941753, 32.543015, 21.508194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793247, 32.423595, 21.362301>,  <35.545738, 32.224560, 21.119144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793247, 32.423595, 21.362301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354450, 0.513733, -0.781309,
		-0.701061, 0.698918, 0.141514,
		0.618772, 0.497585, 0.607890,
		35.978878, 32.572872, 21.544668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323742, 32.911858, 21.088579>,  <35.545738, 32.224560, 21.119144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323742, 32.911858, 21.088579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715927, 32.890663, 21.164358>,  <35.951237, 32.877949, 21.209826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715927, 32.890663, 21.164358>,  <35.323742, 32.911858, 21.088579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715927, 32.890663, 21.164358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192274, 0.461614, -0.865993,
		-0.041569, 0.885497, 0.462781,
		0.980460, -0.052983, 0.189447,
		36.010067, 32.874767, 21.221191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547436, 33.541225, 20.793468>,  <35.323742, 32.911858, 21.088579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547436, 33.541225, 20.793468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883945, 33.335461, 20.859962>,  <36.085854, 33.212002, 20.899858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883945, 33.335461, 20.859962>,  <35.547436, 33.541225, 20.793468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883945, 33.335461, 20.859962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339769, 0.263949, -0.902711,
		0.420487, 0.815912, 0.396835,
		0.841277, -0.514411, 0.166234,
		36.136330, 33.181137, 20.909832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031643, 33.957256, 20.617802>,  <35.547436, 33.541225, 20.793468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031643, 33.957256, 20.617802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193291, 33.592426, 20.590063>,  <36.290279, 33.373528, 20.573420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193291, 33.592426, 20.590063>,  <36.031643, 33.957256, 20.617802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193291, 33.592426, 20.590063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334635, 0.217977, -0.916791,
		0.851295, 0.347292, 0.393301,
		0.404124, -0.912072, -0.069347,
		36.314529, 33.318806, 20.569260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074890, 34.646194, 20.596277>,  <36.031643, 33.957256, 20.617802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074890, 34.646194, 20.596277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787254, 34.906815, 20.499620>,  <35.614674, 35.063187, 20.441628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787254, 34.906815, 20.499620>,  <36.074890, 34.646194, 20.596277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787254, 34.906815, 20.499620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419321, -0.129543, 0.898548,
		0.554148, 0.747461, 0.366362,
		-0.719090, 0.651552, -0.241640,
		35.571526, 35.102280, 20.427128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038406, 35.221470, 21.026438>,  <36.074890, 34.646194, 20.596277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038406, 35.221470, 21.026438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673477, 35.144634, 20.881790>,  <35.454521, 35.098534, 20.795002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673477, 35.144634, 20.881790>,  <36.038406, 35.221470, 21.026438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673477, 35.144634, 20.881790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337936, -0.145481, 0.929857,
		-0.231224, 0.970535, 0.067812,
		-0.912324, -0.192089, -0.361617,
		35.399780, 35.087009, 20.773306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553322, 35.464809, 21.485407>,  <36.038406, 35.221470, 21.026438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553322, 35.464809, 21.485407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301098, 35.220848, 21.293402>,  <35.149761, 35.074471, 21.178198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301098, 35.220848, 21.293402>,  <35.553322, 35.464809, 21.485407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301098, 35.220848, 21.293402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362576, -0.315353, 0.876978,
		-0.686242, 0.727031, -0.022285,
		-0.630563, -0.609900, -0.480013,
		35.111927, 35.037880, 21.149399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966167, 35.519733, 21.817869>,  <35.553322, 35.464809, 21.485407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966167, 35.519733, 21.817869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910954, 35.155247, 21.662624>,  <34.877827, 34.936554, 21.569477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910954, 35.155247, 21.662624>,  <34.966167, 35.519733, 21.817869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910954, 35.155247, 21.662624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433659, -0.296699, 0.850829,
		-0.890442, 0.285751, -0.354203,
		-0.138033, -0.911217, -0.388112,
		34.869545, 34.881882, 21.546190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249088, 35.290627, 22.008331>,  <34.966167, 35.519733, 21.817869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249088, 35.290627, 22.008331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450825, 34.958214, 21.914499>,  <34.571865, 34.758766, 21.858200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450825, 34.958214, 21.914499>,  <34.249088, 35.290627, 22.008331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450825, 34.958214, 21.914499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441215, -0.481526, 0.757273,
		-0.742275, -0.278421, -0.609515,
		0.504338, -0.831032, -0.234582,
		34.602127, 34.708904, 21.844126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734283, 34.879898, 22.080769>,  <34.249088, 35.290627, 22.008331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734283, 34.879898, 22.080769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046673, 34.630306, 22.069904>,  <34.234104, 34.480553, 22.063387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046673, 34.630306, 22.069904>,  <33.734283, 34.879898, 22.080769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046673, 34.630306, 22.069904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397023, -0.529542, 0.749639,
		-0.482137, -0.574664, -0.661290,
		0.780971, -0.623976, -0.027157,
		34.280964, 34.443111, 22.061756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395672, 34.305302, 22.267948>,  <33.734283, 34.879898, 22.080769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395672, 34.305302, 22.267948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784679, 34.226925, 22.318245>,  <34.018085, 34.179901, 22.348423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784679, 34.226925, 22.318245>,  <33.395672, 34.305302, 22.267948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784679, 34.226925, 22.318245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204997, -0.464676, 0.861424,
		-0.110356, -0.863530, -0.492074,
		0.972521, -0.195937, 0.125742,
		34.076435, 34.168144, 22.355967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.172668, 35.483974, 18.557652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.328678, 35.118275, 18.601524>,  <38.422283, 34.898853, 18.627848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.328678, 35.118275, 18.601524>,  <38.172668, 35.483974, 18.557652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328678, 35.118275, 18.601524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045664, 0.099764, 0.993963,
		-0.919671, -0.392679, -0.002837,
		0.390026, -0.914248, 0.109681,
		38.445686, 34.844002, 18.634428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717926, 35.193729, 19.016012>,  <38.172668, 35.483974, 18.557652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717926, 35.193729, 19.016012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.064861, 34.994957, 19.027229>,  <38.273022, 34.875694, 19.033960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.064861, 34.994957, 19.027229>,  <37.717926, 35.193729, 19.016012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064861, 34.994957, 19.027229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097106, 0.224211, 0.969691,
		-0.488162, -0.838322, 0.242721,
		0.867334, -0.496936, 0.028045,
		38.325062, 34.845875, 19.035643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712326, 34.638290, 19.639284>,  <37.717926, 35.193729, 19.016012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712326, 34.638290, 19.639284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.099323, 34.703835, 19.562227>,  <38.331520, 34.743160, 19.515993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.099323, 34.703835, 19.562227>,  <37.712326, 34.638290, 19.639284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099323, 34.703835, 19.562227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175998, 0.110799, 0.978135,
		0.181622, -0.980242, 0.078358,
		0.967491, 0.163860, -0.192644,
		38.389572, 34.752991, 19.504435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216419, 34.102314, 19.981091>,  <37.712326, 34.638290, 19.639284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216419, 34.102314, 19.981091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419426, 34.444328, 19.938503>,  <38.541229, 34.649536, 19.912951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419426, 34.444328, 19.938503>,  <38.216419, 34.102314, 19.981091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419426, 34.444328, 19.938503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251575, -0.028865, 0.967407,
		0.824095, -0.517765, -0.229756,
		0.507521, 0.855036, -0.106469,
		38.571682, 34.700840, 19.906563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907845, 34.011467, 20.250902>,  <38.216419, 34.102314, 19.981091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907845, 34.011467, 20.250902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.844608, 34.406433, 20.252613>,  <38.806667, 34.643414, 20.253639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.844608, 34.406433, 20.252613>,  <38.907845, 34.011467, 20.250902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844608, 34.406433, 20.252613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217132, 0.030537, 0.975665,
		0.963255, 0.155176, -0.219227,
		-0.158094, 0.987415, 0.004279,
		38.797180, 34.702656, 20.253897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383366, 34.221695, 20.667109>,  <38.907845, 34.011467, 20.250902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383366, 34.221695, 20.667109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160393, 34.553715, 20.660284>,  <39.026608, 34.752926, 20.656189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160393, 34.553715, 20.660284>,  <39.383366, 34.221695, 20.667109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160393, 34.553715, 20.660284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093966, 0.083497, 0.992068,
		0.824885, 0.551411, -0.124540,
		-0.557436, 0.830045, -0.017061,
		38.993160, 34.802727, 20.655165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594437, 34.557175, 21.322609>,  <39.383366, 34.221695, 20.667109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594437, 34.557175, 21.322609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281708, 34.782887, 21.216522>,  <39.094070, 34.918312, 21.152870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281708, 34.782887, 21.216522>,  <39.594437, 34.557175, 21.322609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281708, 34.782887, 21.216522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256718, 0.096311, 0.961676,
		0.568195, 0.819949, 0.069562,
		-0.781825, 0.564277, -0.265219,
		39.047161, 34.952171, 21.136957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605984, 35.139507, 21.775393>,  <39.594437, 34.557175, 21.322609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605984, 35.139507, 21.775393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.224552, 35.160954, 21.656864>,  <38.995693, 35.173820, 21.585747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.224552, 35.160954, 21.656864>,  <39.605984, 35.139507, 21.775393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224552, 35.160954, 21.656864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281390, 0.191768, 0.940236,
		0.107239, 0.979974, -0.167779,
		-0.953582, 0.053618, -0.296320,
		38.938477, 35.177040, 21.567968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477100, 35.806545, 22.056330>,  <39.605984, 35.139507, 21.775393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477100, 35.806545, 22.056330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132881, 35.611744, 21.996620>,  <38.926350, 35.494862, 21.960794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132881, 35.611744, 21.996620>,  <39.477100, 35.806545, 22.056330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132881, 35.611744, 21.996620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279348, 0.206170, 0.937794,
		-0.425936, 0.848716, -0.313463,
		-0.860548, -0.487006, -0.149272,
		38.874718, 35.465641, 21.951839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803711, 36.292637, 22.210289>,  <39.477100, 35.806545, 22.056330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803711, 36.292637, 22.210289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729420, 35.902466, 22.257702>,  <38.684845, 35.668365, 22.286150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729420, 35.902466, 22.257702>,  <38.803711, 36.292637, 22.210289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729420, 35.902466, 22.257702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287757, 0.169339, 0.942613,
		-0.939521, 0.140965, -0.312137,
		-0.185732, -0.975425, 0.118534,
		38.673698, 35.609837, 22.293262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103359, 36.277267, 22.437605>,  <38.803711, 36.292637, 22.210289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103359, 36.277267, 22.437605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263115, 35.929882, 22.555084>,  <38.358967, 35.721451, 22.625572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263115, 35.929882, 22.555084>,  <38.103359, 36.277267, 22.437605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263115, 35.929882, 22.555084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433220, 0.103554, 0.895320,
		-0.807968, -0.484815, -0.334878,
		0.399386, -0.868465, 0.293700,
		38.382931, 35.669342, 22.643194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525711, 35.878777, 22.733557>,  <38.103359, 36.277267, 22.437605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525711, 35.878777, 22.733557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845718, 35.677296, 22.863939>,  <38.037724, 35.556408, 22.942169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845718, 35.677296, 22.863939>,  <37.525711, 35.878777, 22.733557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845718, 35.677296, 22.863939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447959, -0.140072, 0.883013,
		-0.399121, -0.852444, -0.337701,
		0.800022, -0.503706, 0.325954,
		38.085724, 35.526184, 22.961725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821903, 35.514820, 22.717560>,  <37.525711, 35.878777, 22.733557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821903, 35.514820, 22.717560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617985, 35.855244, 22.767838>,  <36.495632, 36.059498, 22.798004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617985, 35.855244, 22.767838>,  <36.821903, 35.514820, 22.717560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617985, 35.855244, 22.767838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322268, 0.324392, -0.889333,
		-0.797653, -0.412872, -0.439644,
		-0.509798, 0.851062, 0.125696,
		36.465046, 36.110561, 22.805546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466240, 35.587952, 22.103550>,  <36.821903, 35.514820, 22.717560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466240, 35.587952, 22.103550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.466000, 35.957542, 22.256527>,  <36.465855, 36.179298, 22.348312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.466000, 35.957542, 22.256527>,  <36.466240, 35.587952, 22.103550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466000, 35.957542, 22.256527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274646, 0.367888, -0.888385,
		-0.961545, 0.104502, -0.253988,
		-0.000601, 0.923979, 0.382442,
		36.465820, 36.234737, 22.371260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040051, 35.979794, 21.698473>,  <36.466240, 35.587952, 22.103550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040051, 35.979794, 21.698473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.278263, 36.245422, 21.879290>,  <36.421192, 36.404800, 21.987780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.278263, 36.245422, 21.879290>,  <36.040051, 35.979794, 21.698473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278263, 36.245422, 21.879290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151581, 0.459711, -0.875036,
		-0.788900, 0.589635, 0.173112,
		0.595533, 0.664076, 0.452044,
		36.456924, 36.444645, 22.014902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799438, 36.594597, 21.527182>,  <36.040051, 35.979794, 21.698473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799438, 36.594597, 21.527182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178856, 36.667496, 21.630754>,  <36.406506, 36.711235, 21.692898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178856, 36.667496, 21.630754>,  <35.799438, 36.594597, 21.527182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178856, 36.667496, 21.630754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112474, 0.570497, -0.813562,
		-0.295988, 0.800825, 0.520645,
		0.948547, 0.182246, 0.258932,
		36.463421, 36.722168, 21.708433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922749, 37.234207, 21.269909>,  <35.799438, 36.594597, 21.527182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922749, 37.234207, 21.269909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.295403, 37.124435, 21.365202>,  <36.518993, 37.058575, 21.422377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.295403, 37.124435, 21.365202>,  <35.922749, 37.234207, 21.269909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295403, 37.124435, 21.365202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352039, 0.518836, -0.779024,
		0.090182, 0.809629, 0.579972,
		0.931631, -0.274426, 0.238231,
		36.574890, 37.042107, 21.436672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341648, 37.889603, 21.385490>,  <35.922749, 37.234207, 21.269909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341648, 37.889603, 21.385490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.561855, 37.577267, 21.267357>,  <36.693981, 37.389866, 21.196476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.561855, 37.577267, 21.267357>,  <36.341648, 37.889603, 21.385490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561855, 37.577267, 21.267357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424257, 0.566361, -0.706570,
		0.718984, 0.263680, 0.643067,
		0.550517, -0.780838, -0.295336,
		36.727009, 37.343014, 21.178757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901947, 38.240219, 21.333347>,  <36.341648, 37.889603, 21.385490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901947, 38.240219, 21.333347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962547, 37.906509, 21.121298>,  <36.998909, 37.706284, 20.994068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962547, 37.906509, 21.121298>,  <36.901947, 38.240219, 21.333347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962547, 37.906509, 21.121298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390636, 0.543193, -0.743199,
		0.907992, -0.094489, 0.408193,
		0.151504, -0.834274, -0.530126,
		37.007999, 37.656227, 20.962259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599983, 38.321262, 21.060007>,  <36.901947, 38.240219, 21.333347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599983, 38.321262, 21.060007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411179, 38.048897, 20.836023>,  <37.297897, 37.885475, 20.701633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411179, 38.048897, 20.836023>,  <37.599983, 38.321262, 21.060007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411179, 38.048897, 20.836023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413564, 0.389919, -0.822756,
		0.778569, -0.619930, 0.097557,
		-0.472012, -0.680918, -0.559960,
		37.269573, 37.844620, 20.668036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117535, 38.074306, 20.650583>,  <37.599983, 38.321262, 21.060007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117535, 38.074306, 20.650583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765587, 38.028919, 20.465998>,  <37.554417, 38.001686, 20.355247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765587, 38.028919, 20.465998>,  <38.117535, 38.074306, 20.650583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765587, 38.028919, 20.465998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369371, 0.447657, -0.814352,
		0.298978, -0.886978, -0.351971,
		-0.879874, -0.113465, -0.461463,
		37.501625, 37.994881, 20.327559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280708, 37.808346, 20.005400>,  <38.117535, 38.074306, 20.650583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280708, 37.808346, 20.005400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890427, 37.876400, 19.950190>,  <37.656258, 37.917233, 19.917065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890427, 37.876400, 19.950190>,  <38.280708, 37.808346, 20.005400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890427, 37.876400, 19.950190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199688, 0.431491, -0.879738,
		-0.090119, -0.885928, -0.454983,
		-0.975706, 0.170136, -0.138024,
		37.597713, 37.927441, 19.908783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116985, 37.548798, 19.387619>,  <38.280708, 37.808346, 20.005400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116985, 37.548798, 19.387619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875557, 37.858807, 19.462509>,  <37.730701, 38.044811, 19.507442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875557, 37.858807, 19.462509>,  <38.116985, 37.548798, 19.387619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875557, 37.858807, 19.462509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091103, 0.300318, -0.949479,
		-0.792089, -0.556018, -0.251869,
		-0.603568, 0.775018, 0.187224,
		37.694485, 38.091312, 19.518677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610928, 37.545288, 18.867434>,  <38.116985, 37.548798, 19.387619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610928, 37.545288, 18.867434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.598999, 37.921329, 19.003271>,  <37.591843, 38.146954, 19.084774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.598999, 37.921329, 19.003271>,  <37.610928, 37.545288, 18.867434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598999, 37.921329, 19.003271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017402, 0.339205, -0.940552,
		-0.999404, -0.033962, 0.006243,
		-0.029825, 0.940099, 0.339593,
		37.590050, 38.203358, 19.105148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185223, 37.877434, 18.400610>,  <37.610928, 37.545288, 18.867434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185223, 37.877434, 18.400610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397602, 38.171814, 18.568642>,  <37.525028, 38.348442, 18.669460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397602, 38.171814, 18.568642>,  <37.185223, 37.877434, 18.400610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397602, 38.171814, 18.568642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274289, 0.319783, -0.906920,
		-0.801786, 0.596750, -0.032076,
		0.530947, 0.735954, 0.420079,
		37.556885, 38.392601, 18.694666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821999, 37.234276, 18.206623>,  <37.185223, 37.877434, 18.400610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821999, 37.234276, 18.206623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723244, 36.934135, 17.961340>,  <36.663990, 36.754051, 17.814169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723244, 36.934135, 17.961340>,  <36.821999, 37.234276, 18.206623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723244, 36.934135, 17.961340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586286, -0.388181, 0.711044,
		-0.771566, 0.535065, -0.344080,
		-0.246889, -0.750347, -0.613209,
		36.649178, 36.709030, 17.777378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041134, 37.210903, 18.241110>,  <36.821999, 37.234276, 18.206623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041134, 37.210903, 18.241110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.184650, 36.858444, 18.117916>,  <36.270760, 36.646969, 18.044001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.184650, 36.858444, 18.117916>,  <36.041134, 37.210903, 18.241110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184650, 36.858444, 18.117916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571462, -0.468249, 0.673924,
		-0.738037, -0.065797, -0.671544,
		0.358792, -0.881144, -0.307984,
		36.292290, 36.594101, 18.025520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508141, 36.808891, 18.258463>,  <36.041134, 37.210903, 18.241110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508141, 36.808891, 18.258463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817272, 36.555214, 18.267656>,  <36.002750, 36.403008, 18.273172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817272, 36.555214, 18.267656>,  <35.508141, 36.808891, 18.258463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817272, 36.555214, 18.267656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376542, -0.429105, 0.821027,
		-0.510827, -0.643171, -0.570427,
		0.772833, -0.634193, 0.022983,
		36.049122, 36.364956, 18.274551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157787, 36.255348, 18.327581>,  <35.508141, 36.808891, 18.258463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157787, 36.255348, 18.327581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532711, 36.165569, 18.434217>,  <35.757668, 36.111702, 18.498199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532711, 36.165569, 18.434217>,  <35.157787, 36.255348, 18.327581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532711, 36.165569, 18.434217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345798, -0.504127, 0.791378,
		-0.043224, -0.833955, -0.550137,
		0.937313, -0.224443, 0.266590,
		35.813904, 36.098236, 18.514194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144947, 35.552425, 18.463060>,  <35.157787, 36.255348, 18.327581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144947, 35.552425, 18.463060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463284, 35.670448, 18.674559>,  <35.654285, 35.741261, 18.801458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463284, 35.670448, 18.674559>,  <35.144947, 35.552425, 18.463060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463284, 35.670448, 18.674559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386555, -0.424552, 0.818737,
		0.466054, -0.855978, -0.223822,
		0.795845, 0.295056, 0.528746,
		35.702038, 35.758965, 18.833183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478237, 34.969128, 18.764191>,  <35.144947, 35.552425, 18.463060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478237, 34.969128, 18.764191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.592766, 35.274441, 18.995852>,  <35.661484, 35.457630, 19.134848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.592766, 35.274441, 18.995852>,  <35.478237, 34.969128, 18.764191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592766, 35.274441, 18.995852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281523, -0.510756, 0.812326,
		0.915841, -0.395631, 0.068641,
		0.286322, 0.763285, 0.579151,
		35.678661, 35.503426, 19.169598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704269, 34.517075, 19.224831>,  <35.478237, 34.969128, 18.764191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704269, 34.517075, 19.224831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.692596, 34.886963, 19.376637>,  <35.685593, 35.108898, 19.467720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.692596, 34.886963, 19.376637>,  <35.704269, 34.517075, 19.224831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692596, 34.886963, 19.376637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053948, -0.380581, 0.923172,
		0.998117, 0.006470, 0.060995,
		-0.029186, 0.924725, 0.379516,
		35.683842, 35.164379, 19.490492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121807, 34.510742, 19.829441>,  <35.704269, 34.517075, 19.224831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121807, 34.510742, 19.829441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.866230, 34.815033, 19.875116>,  <35.712883, 34.997608, 19.902521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.866230, 34.815033, 19.875116>,  <36.121807, 34.510742, 19.829441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866230, 34.815033, 19.875116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127322, -0.250979, 0.959583,
		0.758641, 0.598583, 0.257219,
		-0.638947, 0.760728, 0.114190,
		35.674545, 35.043251, 19.909374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625912, 34.098000, 20.197653>,  <36.121807, 34.510742, 19.829441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625912, 34.098000, 20.197653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.548267, 33.706158, 20.176924>,  <36.501678, 33.471050, 20.164486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.548267, 33.706158, 20.176924>,  <36.625912, 34.098000, 20.197653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548267, 33.706158, 20.176924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140863, 0.024443, -0.989727,
		0.970813, -0.199419, 0.133245,
		-0.194114, -0.979609, -0.051821,
		36.490032, 33.412273, 20.161377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149147, 33.792290, 19.910378>,  <36.625912, 34.098000, 20.197653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149147, 33.792290, 19.910378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.876503, 33.507999, 19.840786>,  <36.712917, 33.337425, 19.799032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.876503, 33.507999, 19.840786>,  <37.149147, 33.792290, 19.910378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876503, 33.507999, 19.840786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081014, 0.163002, -0.983294,
		0.727216, -0.684318, -0.053525,
		-0.681611, -0.710731, -0.173977,
		36.672020, 33.294781, 19.788593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393013, 33.342133, 19.322948>,  <37.149147, 33.792290, 19.910378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393013, 33.342133, 19.322948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.000813, 33.263641, 19.318851>,  <36.765491, 33.216549, 19.316393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.000813, 33.263641, 19.318851>,  <37.393013, 33.342133, 19.322948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000813, 33.263641, 19.318851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034936, -0.122790, -0.991818,
		0.193363, -0.972840, 0.127251,
		-0.980505, -0.196227, -0.010244,
		36.706661, 33.204773, 19.315779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386696, 32.775887, 19.031965>,  <37.393013, 33.342133, 19.322948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386696, 32.775887, 19.031965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.013805, 32.909454, 18.976179>,  <36.790070, 32.989597, 18.942707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.013805, 32.909454, 18.976179>,  <37.386696, 32.775887, 19.031965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013805, 32.909454, 18.976179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006306, -0.370348, -0.928872,
		-0.361797, -0.866807, 0.343146,
		-0.932235, 0.333899, -0.139457,
		36.734138, 33.009632, 18.934340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948402, 32.178154, 18.726082>,  <37.386696, 32.775887, 19.031965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948402, 32.178154, 18.726082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783077, 32.526546, 18.619833>,  <36.683880, 32.735584, 18.556084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783077, 32.526546, 18.619833>,  <36.948402, 32.178154, 18.726082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783077, 32.526546, 18.619833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208148, -0.374349, -0.903624,
		-0.886479, -0.318192, 0.336018,
		-0.413315, 0.870986, -0.265622,
		36.659084, 32.787842, 18.540146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332111, 32.054153, 18.394283>,  <36.948402, 32.178154, 18.726082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332111, 32.054153, 18.394283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404701, 32.428848, 18.274555>,  <36.448257, 32.653664, 18.202719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404701, 32.428848, 18.274555>,  <36.332111, 32.054153, 18.394283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404701, 32.428848, 18.274555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175534, -0.268631, -0.947114,
		-0.967602, 0.224421, 0.115678,
		0.181477, 0.936735, -0.299321,
		36.459145, 32.709869, 18.184759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760532, 32.190674, 17.903379>,  <36.332111, 32.054153, 18.394283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760532, 32.190674, 17.903379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050507, 32.453884, 17.821917>,  <36.224491, 32.611809, 17.773039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050507, 32.453884, 17.821917>,  <35.760532, 32.190674, 17.903379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050507, 32.453884, 17.821917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168275, -0.117526, -0.978709,
		-0.667947, 0.743770, 0.025529,
		0.724935, 0.658022, -0.203659,
		36.267986, 32.651291, 17.760818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532482, 32.466908, 17.244799>,  <35.760532, 32.190674, 17.903379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532482, 32.466908, 17.244799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.923046, 32.544636, 17.282444>,  <36.157387, 32.591274, 17.305031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.923046, 32.544636, 17.282444>,  <35.532482, 32.466908, 17.244799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923046, 32.544636, 17.282444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099379, -0.017505, -0.994896,
		-0.191681, 0.980782, -0.036404,
		0.976413, 0.194320, 0.094113,
		36.215969, 32.602932, 17.310678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666878, 32.839821, 16.662504>,  <35.532482, 32.466908, 17.244799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666878, 32.839821, 16.662504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037811, 32.758877, 16.788427>,  <36.260372, 32.710308, 16.863981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037811, 32.758877, 16.788427>,  <35.666878, 32.839821, 16.662504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037811, 32.758877, 16.788427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299304, -0.103944, -0.948479,
		0.224660, 0.973778, -0.035822,
		0.927332, -0.202364, 0.314808,
		36.316010, 32.698166, 16.882870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.951382, 30.450676, 32.619152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292278, 30.644156, 32.698872>,  <35.496815, 30.760244, 32.746704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292278, 30.644156, 32.698872>,  <34.951382, 30.450676, 32.619152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292278, 30.644156, 32.698872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039044, 0.321094, -0.946242,
		-0.521693, 0.814206, 0.254763,
		0.852239, 0.483701, 0.199302,
		35.547951, 30.789267, 32.758663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910381, 31.140705, 32.541576>,  <34.951382, 30.450676, 32.619152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910381, 31.140705, 32.541576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271572, 30.994032, 32.451973>,  <35.488285, 30.906029, 32.398212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271572, 30.994032, 32.451973>,  <34.910381, 31.140705, 32.541576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271572, 30.994032, 32.451973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135014, 0.252798, -0.958053,
		0.407930, 0.895342, 0.178763,
		0.902975, -0.366683, -0.224007,
		35.542465, 30.884027, 32.384769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199436, 31.629139, 32.128586>,  <34.910381, 31.140705, 32.541576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199436, 31.629139, 32.128586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408199, 31.296957, 32.050652>,  <35.533459, 31.097649, 32.003891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408199, 31.296957, 32.050652>,  <35.199436, 31.629139, 32.128586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408199, 31.296957, 32.050652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110977, 0.292573, -0.949781,
		0.845751, 0.474077, 0.244858,
		0.521909, -0.830453, -0.194832,
		35.564774, 31.047821, 31.992203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778419, 31.877056, 31.636831>,  <35.199436, 31.629139, 32.128586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778419, 31.877056, 31.636831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721497, 31.482235, 31.607246>,  <35.687344, 31.245342, 31.589497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721497, 31.482235, 31.607246>,  <35.778419, 31.877056, 31.636831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721497, 31.482235, 31.607246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033093, 0.069935, -0.997003,
		0.989269, -0.144331, 0.022712,
		-0.142310, -0.987055, -0.073961,
		35.678802, 31.186119, 31.585058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205429, 31.758263, 31.066875>,  <35.778419, 31.877056, 31.636831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205429, 31.758263, 31.066875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953941, 31.448971, 31.099945>,  <35.803051, 31.263395, 31.119787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953941, 31.448971, 31.099945>,  <36.205429, 31.758263, 31.066875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953941, 31.448971, 31.099945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103749, -0.021957, -0.994361,
		0.770684, -0.633747, -0.066417,
		-0.628715, -0.773229, 0.082673,
		35.765327, 31.217003, 31.124746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370266, 31.147873, 30.532583>,  <36.205429, 31.758263, 31.066875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370266, 31.147873, 30.532583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986324, 31.123590, 30.642120>,  <35.755959, 31.109020, 30.707842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986324, 31.123590, 30.642120>,  <36.370266, 31.147873, 30.532583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986324, 31.123590, 30.642120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262618, -0.148419, -0.953417,
		0.098522, -0.987059, 0.126519,
		-0.959857, -0.060706, 0.273843,
		35.698368, 31.105379, 30.724274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154022, 30.566477, 30.042677>,  <36.370266, 31.147873, 30.532583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154022, 30.566477, 30.042677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830975, 30.746696, 30.194868>,  <35.637146, 30.854828, 30.286182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830975, 30.746696, 30.194868>,  <36.154022, 30.566477, 30.042677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830975, 30.746696, 30.194868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400390, 0.054745, -0.914708,
		-0.432952, -0.891071, 0.136183,
		-0.807614, 0.450550, 0.380477,
		35.588692, 30.881861, 30.309011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566738, 30.233740, 29.831799>,  <36.154022, 30.566477, 30.042677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566738, 30.233740, 29.831799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430962, 30.600679, 29.914986>,  <35.349495, 30.820843, 29.964897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430962, 30.600679, 29.914986>,  <35.566738, 30.233740, 29.831799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430962, 30.600679, 29.914986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524492, -0.001055, -0.851415,
		-0.780824, -0.398085, 0.481499,
		-0.339443, 0.917348, 0.207968,
		35.329128, 30.875883, 29.977377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933468, 30.145058, 29.630104>,  <35.566738, 30.233740, 29.831799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933468, 30.145058, 29.630104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991760, 30.540596, 29.642437>,  <35.026737, 30.777918, 29.649837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991760, 30.540596, 29.642437>,  <34.933468, 30.145058, 29.630104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991760, 30.540596, 29.642437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162523, 0.054671, -0.985189,
		-0.975883, 0.138562, 0.168677,
		0.145732, 0.988844, 0.030833,
		35.035480, 30.837250, 29.651688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432079, 30.434645, 29.189240>,  <34.933468, 30.145058, 29.630104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432079, 30.434645, 29.189240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699459, 30.731155, 29.213543>,  <34.859886, 30.909061, 29.228125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699459, 30.731155, 29.213543>,  <34.432079, 30.434645, 29.189240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699459, 30.731155, 29.213543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200626, 0.258369, -0.944984,
		-0.716191, 0.619481, 0.321424,
		0.668446, 0.741275, 0.060757,
		34.899994, 30.953539, 29.231770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097561, 31.105927, 28.874706>,  <34.432079, 30.434645, 29.189240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097561, 31.105927, 28.874706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495262, 31.148066, 28.867014>,  <34.733883, 31.173349, 28.862398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495262, 31.148066, 28.867014>,  <34.097561, 31.105927, 28.874706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495262, 31.148066, 28.867014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033089, 0.131418, -0.990775,
		-0.101851, 0.985713, 0.134148,
		0.994249, 0.105350, -0.019232,
		34.793537, 31.179670, 28.861244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144989, 31.581989, 28.367167>,  <34.097561, 31.105927, 28.874706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144989, 31.581989, 28.367167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501854, 31.405966, 28.407936>,  <34.715973, 31.300352, 28.432398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501854, 31.405966, 28.407936>,  <34.144989, 31.581989, 28.367167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501854, 31.405966, 28.407936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116177, 0.005494, -0.993213,
		0.436512, 0.897952, 0.056026,
		0.892166, -0.440058, 0.101924,
		34.769505, 31.273949, 28.438513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170013, 32.289906, 28.540617>,  <34.144989, 31.581989, 28.367167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170013, 32.289906, 28.540617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826317, 32.401718, 28.369236>,  <33.620098, 32.468807, 28.266407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826317, 32.401718, 28.369236>,  <34.170013, 32.289906, 28.540617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826317, 32.401718, 28.369236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404280, 0.142168, 0.903519,
		0.313475, 0.949553, -0.009146,
		-0.859238, 0.279533, -0.428451,
		33.568546, 32.485577, 28.240700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013500, 32.987732, 28.759193>,  <34.170013, 32.289906, 28.540617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013500, 32.987732, 28.759193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669426, 32.811886, 28.655800>,  <33.462982, 32.706379, 28.593763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669426, 32.811886, 28.655800>,  <34.013500, 32.987732, 28.759193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669426, 32.811886, 28.655800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326129, 0.084533, 0.941538,
		-0.392063, 0.894200, -0.216085,
		-0.860190, -0.439614, -0.258482,
		33.411369, 32.680000, 28.578255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567493, 33.398605, 29.086662>,  <34.013500, 32.987732, 28.759193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567493, 33.398605, 29.086662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364887, 33.062935, 29.007441>,  <33.243324, 32.861534, 28.959908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364887, 33.062935, 29.007441>,  <33.567493, 33.398605, 29.086662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364887, 33.062935, 29.007441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384536, 0.014264, 0.923000,
		-0.771734, 0.543673, -0.329918,
		-0.506516, -0.839176, -0.198053,
		33.212933, 32.811184, 28.948025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934124, 33.522820, 29.400518>,  <33.567493, 33.398605, 29.086662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934124, 33.522820, 29.400518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884193, 33.130730, 29.339096>,  <32.854233, 32.895477, 29.302242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884193, 33.130730, 29.339096>,  <32.934124, 33.522820, 29.400518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884193, 33.130730, 29.339096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271210, -0.115159, 0.955606,
		-0.954391, 0.160934, -0.251471,
		-0.124830, -0.980224, -0.153554,
		32.846745, 32.836662, 29.293030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234062, 33.402042, 29.506248>,  <32.934124, 33.522820, 29.400518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234062, 33.402042, 29.506248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457287, 33.073914, 29.556274>,  <32.591221, 32.877037, 29.586290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457287, 33.073914, 29.556274>,  <32.234062, 33.402042, 29.506248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457287, 33.073914, 29.556274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343672, -0.091304, 0.934641,
		-0.755285, -0.564570, -0.332875,
		0.558063, -0.820320, 0.125067,
		32.624706, 32.827816, 29.593794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773746, 32.906174, 29.871447>,  <32.234062, 33.402042, 29.506248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773746, 32.906174, 29.871447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125385, 32.726879, 29.936285>,  <32.336369, 32.619305, 29.975187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125385, 32.726879, 29.936285>,  <31.773746, 32.906174, 29.871447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125385, 32.726879, 29.936285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274080, -0.197139, 0.941284,
		-0.389959, -0.871908, -0.296156,
		0.879097, -0.448233, 0.162096,
		32.389114, 32.592411, 29.984915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613857, 32.240887, 30.247696>,  <31.773746, 32.906174, 29.871447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613857, 32.240887, 30.247696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992884, 32.336033, 30.333055>,  <32.220299, 32.393120, 30.384272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992884, 32.336033, 30.333055>,  <31.613857, 32.240887, 30.247696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992884, 32.336033, 30.333055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204439, -0.062019, 0.976913,
		0.245606, -0.969317, -0.010139,
		0.947566, 0.237863, 0.213398,
		32.277153, 32.407391, 30.397076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740665, 31.935396, 30.914347>,  <31.613857, 32.240887, 30.247696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740665, 31.935396, 30.914347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033508, 32.203789, 30.867348>,  <32.209213, 32.364822, 30.839149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033508, 32.203789, 30.867348>,  <31.740665, 31.935396, 30.914347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033508, 32.203789, 30.867348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145872, 0.322912, 0.935120,
		0.665388, -0.667468, 0.334284,
		0.732107, 0.670980, -0.117497,
		32.253139, 32.405083, 30.832098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228157, 31.821211, 31.444210>,  <31.740665, 31.935396, 30.914347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228157, 31.821211, 31.444210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249672, 32.207714, 31.343449>,  <32.262581, 32.439617, 31.282991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249672, 32.207714, 31.343449>,  <32.228157, 31.821211, 31.444210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249672, 32.207714, 31.343449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095622, 0.256092, 0.961911,
		0.993963, -0.027650, 0.106170,
		0.053787, 0.966257, -0.251902,
		32.265808, 32.497593, 31.267878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672592, 32.182598, 31.938177>,  <32.228157, 31.821211, 31.444210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672592, 32.182598, 31.938177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.461479, 32.489407, 31.792229>,  <32.334812, 32.673492, 31.704660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.461479, 32.489407, 31.792229>,  <32.672592, 32.182598, 31.938177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461479, 32.489407, 31.792229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032445, 0.447463, 0.893714,
		0.848762, 0.459845, -0.261047,
		-0.527779, 0.767020, -0.364870,
		32.303146, 32.719513, 31.682768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027576, 32.709568, 32.214912>,  <32.672592, 32.182598, 31.938177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027576, 32.709568, 32.214912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670975, 32.846569, 32.096310>,  <32.457016, 32.928768, 32.025146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670975, 32.846569, 32.096310>,  <33.027576, 32.709568, 32.214912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670975, 32.846569, 32.096310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087481, 0.512044, 0.854493,
		0.444491, 0.787721, -0.426526,
		-0.891501, 0.342501, -0.296510,
		32.403522, 32.949318, 32.007359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997787, 33.365356, 32.529385>,  <33.027576, 32.709568, 32.214912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997787, 33.365356, 32.529385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621422, 33.293945, 32.414280>,  <32.395603, 33.251099, 32.345215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621422, 33.293945, 32.414280>,  <32.997787, 33.365356, 32.529385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621422, 33.293945, 32.414280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335019, 0.614740, 0.714043,
		0.049423, 0.768259, -0.638228,
		-0.940914, -0.178528, -0.287763,
		32.339146, 33.240387, 32.327950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766171, 33.961521, 32.443161>,  <32.997787, 33.365356, 32.529385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766171, 33.961521, 32.443161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423634, 33.756287, 32.466541>,  <32.218109, 33.633144, 32.480568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423634, 33.756287, 32.466541>,  <32.766171, 33.961521, 32.443161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423634, 33.756287, 32.466541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329340, 0.629806, 0.703477,
		-0.397756, 0.583169, -0.708311,
		-0.856344, -0.513087, 0.058448,
		32.166729, 33.602360, 32.484077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255615, 34.473820, 32.436756>,  <32.766171, 33.961521, 32.443161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255615, 34.473820, 32.436756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106709, 34.151958, 32.621777>,  <32.017365, 33.958843, 32.732788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106709, 34.151958, 32.621777>,  <32.255615, 34.473820, 32.436756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106709, 34.151958, 32.621777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341200, 0.582121, 0.738050,
		-0.863133, 0.116930, -0.491251,
		-0.372268, -0.804650, 0.462552,
		31.995028, 33.910564, 32.760544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517292, 34.534740, 32.631927>,  <32.255615, 34.473820, 32.436756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517292, 34.534740, 32.631927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662695, 34.274303, 32.898441>,  <31.749937, 34.118042, 33.058350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662695, 34.274303, 32.898441>,  <31.517292, 34.534740, 32.631927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662695, 34.274303, 32.898441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479313, 0.482570, 0.733066,
		-0.798824, -0.585836, -0.136659,
		0.363509, -0.651093, 0.666287,
		31.771748, 34.078976, 33.098328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800749, 35.193558, 32.728348>,  <31.517292, 34.534740, 32.631927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800749, 35.193558, 32.728348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191814, 35.110390, 32.740627>,  <32.426453, 35.060490, 32.747993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191814, 35.110390, 32.740627>,  <31.800749, 35.193558, 32.728348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191814, 35.110390, 32.740627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131180, 0.489553, -0.862049,
		0.164215, 0.846820, 0.505894,
		0.977663, -0.207924, 0.030694,
		32.485115, 35.048012, 32.749836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020912, 35.794003, 32.455158>,  <31.800749, 35.193558, 32.728348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020912, 35.794003, 32.455158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307991, 35.515980, 32.438137>,  <32.480236, 35.349167, 32.427925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307991, 35.515980, 32.438137>,  <32.020912, 35.794003, 32.455158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307991, 35.515980, 32.438137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407487, 0.468740, -0.783733,
		0.564687, 0.545140, 0.619638,
		0.717693, -0.695058, -0.042554,
		32.523300, 35.307461, 32.425369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634743, 36.167435, 32.480377>,  <32.020912, 35.794003, 32.455158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634743, 36.167435, 32.480377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702099, 35.816906, 32.299843>,  <32.742512, 35.606586, 32.191525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702099, 35.816906, 32.299843>,  <32.634743, 36.167435, 32.480377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702099, 35.816906, 32.299843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386535, 0.479903, -0.787581,
		0.906771, -0.041833, 0.419542,
		0.168393, -0.876323, -0.451332,
		32.752617, 35.554008, 32.164444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339951, 36.232338, 32.192844>,  <32.634743, 36.167435, 32.480377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339951, 36.232338, 32.192844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145954, 35.940838, 31.999470>,  <33.029556, 35.765938, 31.883444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145954, 35.940838, 31.999470>,  <33.339951, 36.232338, 32.192844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145954, 35.940838, 31.999470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320699, 0.366085, -0.873576,
		0.813594, -0.578715, 0.056160,
		-0.484992, -0.728746, -0.483437,
		33.000458, 35.722214, 31.854439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805359, 35.890198, 31.723850>,  <33.339951, 36.232338, 32.192844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805359, 35.890198, 31.723850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442375, 35.811832, 31.575184>,  <33.224586, 35.764812, 31.485985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442375, 35.811832, 31.575184>,  <33.805359, 35.890198, 31.723850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442375, 35.811832, 31.575184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322569, 0.241924, -0.915107,
		0.269195, -0.950311, -0.156341,
		-0.907459, -0.195911, -0.371666,
		33.170135, 35.753059, 31.463684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938824, 35.707088, 31.015654>,  <33.805359, 35.890198, 31.723850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938824, 35.707088, 31.015654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540745, 35.741913, 30.997757>,  <33.301899, 35.762810, 30.987019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540745, 35.741913, 30.997757>,  <33.938824, 35.707088, 31.015654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540745, 35.741913, 30.997757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049994, 0.059107, -0.996999,
		-0.084161, -0.994447, -0.063176,
		-0.995197, 0.087067, -0.044742,
		33.242184, 35.768032, 30.984335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675739, 35.237579, 30.575148>,  <33.938824, 35.707088, 31.015654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675739, 35.237579, 30.575148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412720, 35.538445, 30.592510>,  <33.254910, 35.718964, 30.602928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412720, 35.538445, 30.592510>,  <33.675739, 35.237579, 30.575148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412720, 35.538445, 30.592510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026229, 0.034725, -0.999052,
		-0.752957, -0.658063, -0.003105,
		-0.657547, 0.752162, 0.043407,
		33.215454, 35.764091, 30.605532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035038, 35.019428, 30.127638>,  <33.675739, 35.237579, 30.575148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035038, 35.019428, 30.127638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091122, 35.413410, 30.168058>,  <33.124771, 35.649799, 30.192310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091122, 35.413410, 30.168058>,  <33.035038, 35.019428, 30.127638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091122, 35.413410, 30.168058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131976, 0.082557, -0.987809,
		-0.981286, 0.151840, -0.118414,
		0.140213, 0.984951, 0.101052,
		33.133186, 35.708897, 30.198374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624546, 35.251217, 29.617598>,  <33.035038, 35.019428, 30.127638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624546, 35.251217, 29.617598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847168, 35.567341, 29.720097>,  <32.980740, 35.757015, 29.781595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847168, 35.567341, 29.720097>,  <32.624546, 35.251217, 29.617598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847168, 35.567341, 29.720097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095185, 0.245742, -0.964651,
		-0.825343, 0.561267, 0.061542,
		0.556550, 0.790310, 0.256246,
		33.014133, 35.804436, 29.796970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478512, 35.663544, 29.076748>,  <32.624546, 35.251217, 29.617598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478512, 35.663544, 29.076748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775597, 35.868965, 29.248627>,  <32.953850, 35.992218, 29.351753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775597, 35.868965, 29.248627>,  <32.478512, 35.663544, 29.076748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775597, 35.868965, 29.248627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182308, 0.462387, -0.867734,
		-0.644312, 0.722816, 0.249797,
		0.742715, 0.513552, 0.429697,
		32.998409, 36.023029, 29.377535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430576, 36.346821, 28.808628>,  <32.478512, 35.663544, 29.076748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430576, 36.346821, 28.808628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808601, 36.292465, 28.927553>,  <33.035416, 36.259850, 28.998909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808601, 36.292465, 28.927553>,  <32.430576, 36.346821, 28.808628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808601, 36.292465, 28.927553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322637, 0.241374, -0.915229,
		0.052609, 0.960870, 0.271957,
		0.945060, -0.135893, 0.297314,
		33.092121, 36.251698, 29.016747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860214, 36.899757, 28.408018>,  <32.430576, 36.346821, 28.808628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860214, 36.899757, 28.408018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115494, 36.612736, 28.519602>,  <33.268661, 36.440521, 28.586552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115494, 36.612736, 28.519602>,  <32.860214, 36.899757, 28.408018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115494, 36.612736, 28.519602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485471, 0.093866, -0.869199,
		0.597513, 0.690147, 0.408258,
		0.638197, -0.717555, 0.278961,
		33.306953, 36.397469, 28.603291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466728, 37.128498, 28.219172>,  <32.860214, 36.899757, 28.408018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466728, 37.128498, 28.219172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548454, 36.737061, 28.229046>,  <33.597488, 36.502197, 28.234970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548454, 36.737061, 28.229046>,  <33.466728, 37.128498, 28.219172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548454, 36.737061, 28.229046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499930, 0.082628, -0.862115,
		0.841622, 0.188482, 0.506110,
		0.204312, -0.978594, 0.024686,
		33.609749, 36.443481, 28.236452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275951, 36.966850, 28.165890>,  <33.466728, 37.128498, 28.219172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275951, 36.966850, 28.165890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079632, 36.634098, 28.062284>,  <33.961842, 36.434444, 28.000122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079632, 36.634098, 28.062284>,  <34.275951, 36.966850, 28.165890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079632, 36.634098, 28.062284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613469, -0.118851, -0.780724,
		0.618688, -0.542073, 0.568667,
		-0.490796, -0.831884, -0.259012,
		33.932392, 36.384533, 27.984581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807747, 36.473507, 27.964373>,  <34.275951, 36.966850, 28.165890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807747, 36.473507, 27.964373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.493652, 36.285065, 27.803644>,  <34.305195, 36.171997, 27.707207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.493652, 36.285065, 27.803644>,  <34.807747, 36.473507, 27.964373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493652, 36.285065, 27.803644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490004, -0.076056, -0.868396,
		0.378549, -0.878789, 0.290568,
		-0.785237, -0.471110, -0.401819,
		34.258080, 36.143730, 27.683098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060001, 35.812572, 27.635593>,  <34.807747, 36.473507, 27.964373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060001, 35.812572, 27.635593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712425, 35.901840, 27.458899>,  <34.503880, 35.955399, 27.352880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712425, 35.901840, 27.458899>,  <35.060001, 35.812572, 27.635593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712425, 35.901840, 27.458899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410857, -0.172338, -0.895263,
		-0.275922, -0.959425, 0.058061,
		-0.868944, 0.223168, -0.441738,
		34.451740, 35.968792, 27.326378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032543, 35.295155, 27.187096>,  <35.060001, 35.812572, 27.635593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032543, 35.295155, 27.187096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805241, 35.590328, 27.041471>,  <34.668858, 35.767433, 26.954098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805241, 35.590328, 27.041471>,  <35.032543, 35.295155, 27.187096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805241, 35.590328, 27.041471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402733, -0.136399, -0.905097,
		-0.717559, -0.660946, -0.219680,
		-0.568256, 0.737934, -0.364059,
		34.634766, 35.811707, 26.932253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854675, 35.098598, 26.500731>,  <35.032543, 35.295155, 27.187096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854675, 35.098598, 26.500731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759781, 35.486767, 26.482809>,  <34.702843, 35.719666, 26.472057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759781, 35.486767, 26.482809>,  <34.854675, 35.098598, 26.500731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759781, 35.486767, 26.482809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199141, 0.003442, -0.979965,
		-0.950821, -0.241409, -0.194067,
		-0.237240, 0.970417, -0.044801,
		34.688610, 35.777893, 26.469368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539577, 35.110817, 25.883196>,  <34.854675, 35.098598, 26.500731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539577, 35.110817, 25.883196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616169, 35.495628, 25.961010>,  <34.662125, 35.726513, 26.007698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616169, 35.495628, 25.961010>,  <34.539577, 35.110817, 25.883196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616169, 35.495628, 25.961010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407350, 0.102433, -0.907510,
		-0.892973, 0.253017, -0.372266,
		0.191483, 0.962024, 0.194536,
		34.673615, 35.784237, 26.019371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339287, 35.428249, 25.401436>,  <34.539577, 35.110817, 25.883196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339287, 35.428249, 25.401436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604313, 35.690590, 25.546135>,  <34.763329, 35.847996, 25.632954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604313, 35.690590, 25.546135>,  <34.339287, 35.428249, 25.401436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604313, 35.690590, 25.546135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337332, 0.169922, -0.925923,
		-0.668738, 0.735516, -0.108656,
		0.662568, 0.655853, 0.361746,
		34.803082, 35.887344, 25.654659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169731, 36.106445, 24.961388>,  <34.339287, 35.428249, 25.401436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169731, 36.106445, 24.961388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536865, 36.164215, 25.109293>,  <34.757145, 36.198875, 25.198036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536865, 36.164215, 25.109293>,  <34.169731, 36.106445, 24.961388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536865, 36.164215, 25.109293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348733, 0.151656, -0.924871,
		-0.189651, 0.977825, 0.088829,
		0.917833, 0.144425, 0.369762,
		34.812214, 36.207542, 25.220221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422508, 36.741295, 24.635199>,  <34.169731, 36.106445, 24.961388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422508, 36.741295, 24.635199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738411, 36.536797, 24.770790>,  <34.927952, 36.414097, 24.852144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738411, 36.536797, 24.770790>,  <34.422508, 36.741295, 24.635199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738411, 36.536797, 24.770790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458397, 0.124671, -0.879960,
		0.407615, 0.850344, 0.332815,
		0.789760, -0.511246, 0.338977,
		34.975338, 36.383423, 24.872484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065727, 37.141239, 24.622644>,  <34.422508, 36.741295, 24.635199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065727, 37.141239, 24.622644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202835, 36.765770, 24.637655>,  <35.285099, 36.540489, 24.646662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202835, 36.765770, 24.637655>,  <35.065727, 37.141239, 24.622644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202835, 36.765770, 24.637655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568289, 0.175380, -0.803921,
		0.748036, 0.296884, 0.593551,
		0.342768, -0.938670, 0.037525,
		35.305664, 36.484169, 24.648912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815704, 37.203964, 24.487795>,  <35.065727, 37.141239, 24.622644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815704, 37.203964, 24.487795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712368, 36.824001, 24.417433>,  <35.650368, 36.596024, 24.375216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712368, 36.824001, 24.417433>,  <35.815704, 37.203964, 24.487795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712368, 36.824001, 24.417433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622112, -0.024276, -0.782552,
		0.739078, -0.311599, 0.597218,
		-0.258341, -0.949904, -0.175907,
		35.634865, 36.539032, 24.364660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445484, 36.901325, 24.274725>,  <35.815704, 37.203964, 24.487795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445484, 36.901325, 24.274725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162495, 36.656731, 24.132986>,  <35.992699, 36.509975, 24.047943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162495, 36.656731, 24.132986>,  <36.445484, 36.901325, 24.274725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162495, 36.656731, 24.132986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561512, -0.181879, -0.807232,
		0.429160, -0.770070, 0.472031,
		-0.707478, -0.611483, -0.354349,
		35.950253, 36.473286, 24.026682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814766, 36.325565, 23.946791>,  <36.445484, 36.901325, 24.274725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814766, 36.325565, 23.946791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448723, 36.314850, 23.785864>,  <36.229095, 36.308422, 23.689308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448723, 36.314850, 23.785864>,  <36.814766, 36.325565, 23.946791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448723, 36.314850, 23.785864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400065, -0.184622, -0.897698,
		-0.050228, -0.982444, 0.179667,
		-0.915109, -0.026789, -0.402315,
		36.174191, 36.306812, 23.665169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867588, 35.717365, 23.454784>,  <36.814766, 36.325565, 23.946791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867588, 35.717365, 23.454784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545963, 35.922123, 23.333828>,  <36.352989, 36.044979, 23.261253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545963, 35.922123, 23.333828>,  <36.867588, 35.717365, 23.454784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545963, 35.922123, 23.333828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466807, 0.228574, -0.854310,
		-0.368198, -0.828080, -0.422744,
		-0.804066, 0.511896, -0.302393,
		36.304745, 36.075691, 23.243111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371506, 35.143425, 23.157625>,  <36.867588, 35.717365, 23.454784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371506, 35.143425, 23.157625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733749, 35.271923, 23.268389>,  <37.951096, 35.349022, 23.334846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733749, 35.271923, 23.268389>,  <37.371506, 35.143425, 23.157625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733749, 35.271923, 23.268389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225399, -0.188526, 0.955852,
		0.359265, -0.928042, -0.098323,
		0.905607, 0.321242, 0.276911,
		38.005432, 35.368294, 23.351461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580074, 34.636196, 23.638231>,  <37.371506, 35.143425, 23.157625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580074, 34.636196, 23.638231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858654, 34.908920, 23.727758>,  <38.025803, 35.072556, 23.781475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858654, 34.908920, 23.727758>,  <37.580074, 34.636196, 23.638231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858654, 34.908920, 23.727758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077582, -0.238525, 0.968033,
		0.713404, -0.691546, -0.113223,
		0.696445, 0.681814, 0.223815,
		38.067589, 35.113464, 23.794903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963173, 34.274513, 24.136454>,  <37.580074, 34.636196, 23.638231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963173, 34.274513, 24.136454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077839, 34.657345, 24.153559>,  <38.146637, 34.887043, 24.163822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077839, 34.657345, 24.153559>,  <37.963173, 34.274513, 24.136454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077839, 34.657345, 24.153559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035149, -0.055113, 0.997861,
		0.957386, -0.284548, -0.049439,
		0.286665, 0.957076, 0.042763,
		38.163837, 34.944469, 24.166388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495602, 34.312679, 24.648239>,  <37.963173, 34.274513, 24.136454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495602, 34.312679, 24.648239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.314201, 34.668541, 24.626858>,  <38.205360, 34.882057, 24.614029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.314201, 34.668541, 24.626858>,  <38.495602, 34.312679, 24.648239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314201, 34.668541, 24.626858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109353, 0.003982, 0.993995,
		0.884521, 0.456625, 0.095480,
		-0.453503, 0.889650, -0.053455,
		38.178150, 34.935436, 24.610821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837048, 34.774326, 25.194307>,  <38.495602, 34.312679, 24.648239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837048, 34.774326, 25.194307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491291, 34.960556, 25.118345>,  <38.283836, 35.072292, 25.072767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491291, 34.960556, 25.118345>,  <38.837048, 34.774326, 25.194307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491291, 34.960556, 25.118345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018299, 0.348305, 0.937203,
		0.502483, 0.813587, -0.292553,
		-0.864393, 0.465575, -0.189905,
		38.231972, 35.100227, 25.061373>
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
