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
	<24.563467, 34.999416, 34.717453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301554, 35.037193, 35.017410>,  <24.144405, 35.059860, 35.197384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301554, 35.037193, 35.017410>,  <24.563467, 34.999416, 34.717453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301554, 35.037193, 35.017410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340182, -0.849163, 0.403978,
		0.674935, 0.519618, 0.523890,
		-0.654782, 0.094441, 0.749894,
		24.105120, 35.065525, 35.242378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901199, 35.199013, 35.322674>,  <24.563467, 34.999416, 34.717453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901199, 35.199013, 35.322674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566933, 34.984261, 35.369022>,  <24.366373, 34.855412, 35.396832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566933, 34.984261, 35.369022>,  <24.901199, 35.199013, 35.322674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566933, 34.984261, 35.369022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543372, -0.777380, 0.316902,
		-0.080061, 0.327785, 0.941354,
		-0.835666, -0.536877, 0.115872,
		24.316233, 34.823196, 35.403786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922407, 34.899025, 35.940670>,  <24.901199, 35.199013, 35.322674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922407, 34.899025, 35.940670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673935, 34.659443, 35.738529>,  <24.524851, 34.515694, 35.617245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673935, 34.659443, 35.738529>,  <24.922407, 34.899025, 35.940670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673935, 34.659443, 35.738529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369541, -0.792540, 0.485097,
		-0.691067, 0.114583, 0.713650,
		-0.621181, -0.598958, -0.505356,
		24.487581, 34.479755, 35.586922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594980, 34.485550, 36.388710>,  <24.922407, 34.899025, 35.940670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594980, 34.485550, 36.388710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623144, 34.281281, 36.045956>,  <24.640041, 34.158718, 35.840302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623144, 34.281281, 36.045956>,  <24.594980, 34.485550, 36.388710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623144, 34.281281, 36.045956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187195, -0.836993, 0.514200,
		-0.979796, -0.196608, 0.036665,
		0.070407, -0.510675, -0.856886,
		24.644266, 34.128078, 35.788891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241602, 34.076569, 36.280338>,  <24.594980, 34.485550, 36.388710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241602, 34.076569, 36.280338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638180, 34.037949, 36.315483>,  <25.876125, 34.014778, 36.336571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638180, 34.037949, 36.315483>,  <25.241602, 34.076569, 36.280338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638180, 34.037949, 36.315483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048180, 0.896161, 0.441105,
		-0.121323, -0.433097, 0.893145,
		0.991443, -0.096548, 0.087858,
		25.935614, 34.008984, 36.341839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345181, 34.256348, 36.951378>,  <25.241602, 34.076569, 36.280338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345181, 34.256348, 36.951378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714243, 34.314785, 36.808628>,  <25.935680, 34.349846, 36.722977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714243, 34.314785, 36.808628>,  <25.345181, 34.256348, 36.951378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714243, 34.314785, 36.808628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127013, 0.758685, 0.638956,
		0.364103, -0.634866, 0.681451,
		0.922657, 0.146092, -0.356876,
		25.991039, 34.358612, 36.701565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868946, 34.304825, 37.560848>,  <25.345181, 34.256348, 36.951378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868946, 34.304825, 37.560848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023142, 34.490887, 37.242096>,  <26.115660, 34.602524, 37.050842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023142, 34.490887, 37.242096>,  <25.868946, 34.304825, 37.560848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023142, 34.490887, 37.242096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192374, 0.804138, 0.562454,
		0.902435, -0.370121, 0.220504,
		0.385491, 0.465159, -0.796884,
		26.138790, 34.630436, 37.003033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414433, 34.650352, 37.774521>,  <25.868946, 34.304825, 37.560848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414433, 34.650352, 37.774521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351805, 34.829746, 37.422535>,  <26.314228, 34.937382, 37.211342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351805, 34.829746, 37.422535>,  <26.414433, 34.650352, 37.774521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351805, 34.829746, 37.422535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223209, 0.883975, 0.410812,
		0.962114, -0.132095, -0.238512,
		-0.156572, 0.448486, -0.879969,
		26.304832, 34.964291, 37.158543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930199, 35.159351, 37.702354>,  <26.414433, 34.650352, 37.774521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930199, 35.159351, 37.702354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675936, 35.303528, 37.429291>,  <26.523378, 35.390034, 37.265453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675936, 35.303528, 37.429291>,  <26.930199, 35.159351, 37.702354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675936, 35.303528, 37.429291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087176, 0.912166, 0.400441,
		0.767034, 0.195032, -0.611246,
		-0.635657, 0.360438, -0.682660,
		26.485239, 35.411659, 37.224491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255795, 35.688126, 37.456535>,  <26.930199, 35.159351, 37.702354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255795, 35.688126, 37.456535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875011, 35.743610, 37.347328>,  <26.646542, 35.776901, 37.281803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875011, 35.743610, 37.347328>,  <27.255795, 35.688126, 37.456535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875011, 35.743610, 37.347328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092452, 0.980110, 0.175602,
		0.291942, 0.141925, -0.945847,
		-0.951957, 0.138711, -0.273014,
		26.589424, 35.785225, 37.265423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296179, 36.386509, 37.017647>,  <27.255795, 35.688126, 37.456535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296179, 36.386509, 37.017647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922894, 36.334206, 37.151520>,  <26.698923, 36.302826, 37.231846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922894, 36.334206, 37.151520>,  <27.296179, 36.386509, 37.017647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922894, 36.334206, 37.151520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010250, 0.921373, 0.388545,
		-0.359175, 0.366026, -0.858498,
		-0.933214, -0.130756, 0.334686,
		26.642929, 36.294979, 37.251926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067005, 37.025208, 37.093647>,  <27.296179, 36.386509, 37.017647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067005, 37.025208, 37.093647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775183, 36.842964, 37.297672>,  <26.600088, 36.733620, 37.420090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775183, 36.842964, 37.297672>,  <27.067005, 37.025208, 37.093647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775183, 36.842964, 37.297672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207500, 0.858100, 0.469690,
		-0.651682, 0.236827, -0.720572,
		-0.729558, -0.455607, 0.510066,
		26.556314, 36.706284, 37.450691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425838, 37.428501, 36.959713>,  <27.067005, 37.025208, 37.093647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425838, 37.428501, 36.959713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402960, 37.214153, 37.296658>,  <26.389233, 37.085545, 37.498825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402960, 37.214153, 37.296658>,  <26.425838, 37.428501, 36.959713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402960, 37.214153, 37.296658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414136, 0.780461, 0.468372,
		-0.908416, -0.322062, -0.266564,
		-0.057198, -0.535870, 0.842360,
		26.385799, 37.053391, 37.549366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805140, 37.722366, 37.294937>,  <26.425838, 37.428501, 36.959713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805140, 37.722366, 37.294937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021400, 37.547367, 37.582352>,  <26.151157, 37.442368, 37.754799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021400, 37.547367, 37.582352>,  <25.805140, 37.722366, 37.294937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021400, 37.547367, 37.582352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254042, 0.729346, 0.635230,
		-0.801971, -0.525976, 0.283180,
		0.540652, -0.437496, 0.718535,
		26.183596, 37.416119, 37.797913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377968, 37.498043, 37.807774>,  <25.805140, 37.722366, 37.294937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377968, 37.498043, 37.807774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736986, 37.554920, 37.974720>,  <25.952396, 37.589046, 38.074886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736986, 37.554920, 37.974720>,  <25.377968, 37.498043, 37.807774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736986, 37.554920, 37.974720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426452, 0.520478, 0.739758,
		-0.112039, -0.841952, 0.527792,
		0.897544, 0.142196, 0.417365,
		26.006250, 37.597580, 38.099930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185757, 37.600636, 38.487591>,  <25.377968, 37.498043, 37.807774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185757, 37.600636, 38.487591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570959, 37.708305, 38.492687>,  <25.802080, 37.772907, 38.495747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570959, 37.708305, 38.492687>,  <25.185757, 37.600636, 38.487591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570959, 37.708305, 38.492687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170943, 0.573641, 0.801071,
		0.208320, -0.773615, 0.598434,
		0.963006, 0.269177, 0.012743,
		25.859861, 37.789059, 38.496510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367550, 37.495277, 39.194393>,  <25.185757, 37.600636, 38.487591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367550, 37.495277, 39.194393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620201, 37.739891, 39.003784>,  <25.771791, 37.886658, 38.889420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620201, 37.739891, 39.003784>,  <25.367550, 37.495277, 39.194393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620201, 37.739891, 39.003784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199929, 0.722344, 0.662003,
		0.749048, -0.322870, 0.578517,
		0.631629, 0.611534, -0.476520,
		25.809690, 37.923351, 38.860828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635479, 37.834980, 39.715332>,  <25.367550, 37.495277, 39.194393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635479, 37.834980, 39.715332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701160, 38.068214, 39.397076>,  <25.740570, 38.208157, 39.206123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701160, 38.068214, 39.397076>,  <25.635479, 37.834980, 39.715332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701160, 38.068214, 39.397076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326571, 0.793237, 0.513932,
		0.930800, 0.175444, 0.320672,
		0.164203, 0.583090, -0.795640,
		25.750422, 38.243141, 39.158382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010895, 38.368050, 40.076363>,  <25.635479, 37.834980, 39.715332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010895, 38.368050, 40.076363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876934, 38.523083, 39.732822>,  <25.796558, 38.616100, 39.526699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876934, 38.523083, 39.732822>,  <26.010895, 38.368050, 40.076363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876934, 38.523083, 39.732822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078802, 0.896771, 0.435422,
		0.938952, 0.213502, -0.269787,
		-0.334901, 0.387580, -0.858850,
		25.776464, 38.639359, 39.475166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356857, 39.079708, 39.979782>,  <26.010895, 38.368050, 40.076363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356857, 39.079708, 39.979782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053028, 39.075508, 39.719646>,  <25.870731, 39.072987, 39.563564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053028, 39.075508, 39.719646>,  <26.356857, 39.079708, 39.979782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053028, 39.075508, 39.719646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223634, 0.943127, 0.245966,
		0.610768, 0.332266, -0.718723,
		-0.759573, -0.010503, -0.650337,
		25.825157, 39.072357, 39.524544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466150, 39.677044, 39.559879>,  <26.356857, 39.079708, 39.979782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466150, 39.677044, 39.559879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079319, 39.576302, 39.574459>,  <25.847219, 39.515854, 39.583206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079319, 39.576302, 39.574459>,  <26.466150, 39.677044, 39.559879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079319, 39.576302, 39.574459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227766, 0.920518, 0.317441,
		-0.113505, 0.298687, -0.947577,
		-0.967077, -0.251858, 0.036453,
		25.789196, 39.500744, 39.585396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184418, 40.274841, 39.510433>,  <26.466150, 39.677044, 39.559879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184418, 40.274841, 39.510433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882061, 40.040916, 39.628155>,  <25.700647, 39.900562, 39.698788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882061, 40.040916, 39.628155>,  <26.184418, 40.274841, 39.510433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882061, 40.040916, 39.628155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399863, 0.768342, 0.499761,
		-0.518395, 0.260083, -0.814631,
		-0.755894, -0.584814, 0.294307,
		25.655293, 39.865471, 39.716446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613468, 40.668064, 39.258610>,  <26.184418, 40.274841, 39.510433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613468, 40.668064, 39.258610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485130, 40.411884, 39.537720>,  <25.408129, 40.258175, 39.705185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485130, 40.411884, 39.537720>,  <25.613468, 40.668064, 39.258610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485130, 40.411884, 39.537720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485401, 0.743801, 0.459506,
		-0.813293, -0.191270, -0.549518,
		-0.320842, -0.640450, 0.697770,
		25.388878, 40.219749, 39.747051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989134, 40.836788, 39.450447>,  <25.613468, 40.668064, 39.258610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989134, 40.836788, 39.450447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059092, 40.597946, 39.763596>,  <25.101067, 40.454643, 39.951485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059092, 40.597946, 39.763596>,  <24.989134, 40.836788, 39.450447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059092, 40.597946, 39.763596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558372, 0.594744, 0.578361,
		-0.810946, -0.538282, -0.229388,
		0.174894, -0.597103, 0.782867,
		25.111559, 40.418816, 39.998455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.453142, 40.500423, 39.977024>,  <24.989134, 40.836788, 39.450447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.453142, 40.500423, 39.977024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788952, 40.635559, 40.147232>,  <24.990437, 40.716640, 40.249359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788952, 40.635559, 40.147232>,  <24.453142, 40.500423, 39.977024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788952, 40.635559, 40.147232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543324, 0.524200, 0.655754,
		-0.001523, -0.781717, 0.623631,
		0.839522, 0.337835, 0.425524,
		25.040808, 40.736908, 40.274891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427921, 40.358932, 40.728100>,  <24.453142, 40.500423, 39.977024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427921, 40.358932, 40.728100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.640211, 40.681309, 40.623188>,  <24.767586, 40.874733, 40.560242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.640211, 40.681309, 40.623188>,  <24.427921, 40.358932, 40.728100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.640211, 40.681309, 40.623188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653793, 0.586231, 0.478422,
		0.539337, -0.082433, 0.838045,
		0.530726, 0.805939, -0.262282,
		24.799429, 40.923092, 40.544502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801022, 40.808056, 41.351646>,  <24.427921, 40.358932, 40.728100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801022, 40.808056, 41.351646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.680918, 40.998539, 41.021053>,  <24.608856, 41.112831, 40.822697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.680918, 40.998539, 41.021053>,  <24.801022, 40.808056, 41.351646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.680918, 40.998539, 41.021053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659606, 0.522238, 0.540543,
		0.689032, 0.707453, 0.157305,
		-0.300258, 0.476211, -0.826479,
		24.590839, 41.141403, 40.773109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078941, 41.402126, 40.949772>,  <24.801022, 40.808056, 41.351646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078941, 41.402126, 40.949772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059885, 41.551888, 41.320190>,  <25.048452, 41.641743, 41.542442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059885, 41.551888, 41.320190>,  <25.078941, 41.402126, 40.949772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059885, 41.551888, 41.320190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895485, 0.426747, -0.126468,
		-0.442535, 0.823232, -0.355601,
		-0.047639, 0.374402, 0.926042,
		25.045593, 41.664207, 41.598003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409554, 41.941238, 40.827114>,  <25.078941, 41.402126, 40.949772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409554, 41.941238, 40.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434633, 41.863991, 41.218781>,  <25.449680, 41.817642, 41.453781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434633, 41.863991, 41.218781>,  <25.409554, 41.941238, 40.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434633, 41.863991, 41.218781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987794, 0.152181, -0.033237,
		-0.142592, 0.969302, 0.200305,
		0.062699, -0.193121, 0.979170,
		25.453444, 41.806053, 41.512531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892323, 42.460312, 41.112259>,  <25.409554, 41.941238, 40.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892323, 42.460312, 41.112259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873522, 42.121464, 41.323986>,  <25.862242, 41.918156, 41.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873522, 42.121464, 41.323986>,  <25.892323, 42.460312, 41.112259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873522, 42.121464, 41.323986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973158, -0.158347, -0.167004,
		0.225288, 0.507261, 0.831824,
		-0.047002, -0.847120, 0.529319,
		25.859421, 41.867329, 41.482780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500502, 42.438622, 41.572067>,  <25.892323, 42.460312, 41.112259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500502, 42.438622, 41.572067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390219, 42.056629, 41.528248>,  <26.324049, 41.827435, 41.501957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390219, 42.056629, 41.528248>,  <26.500502, 42.438622, 41.572067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390219, 42.056629, 41.528248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940882, -0.244778, -0.234147,
		0.196791, -0.167628, 0.966009,
		-0.275708, -0.954979, -0.109548,
		26.307507, 41.770134, 41.495384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833883, 41.927017, 42.060951>,  <26.500502, 42.438622, 41.572067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833883, 41.927017, 42.060951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748343, 41.782646, 41.697853>,  <26.697018, 41.696022, 41.479996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748343, 41.782646, 41.697853>,  <26.833883, 41.927017, 42.060951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748343, 41.782646, 41.697853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976776, -0.066428, -0.203704,
		0.013223, -0.930224, 0.366754,
		-0.213853, -0.360930, -0.907742,
		26.684187, 41.674366, 41.425529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026548, 41.281269, 41.996429>,  <26.833883, 41.927017, 42.060951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026548, 41.281269, 41.996429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034634, 41.447647, 41.632763>,  <27.039486, 41.547474, 41.414562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034634, 41.447647, 41.632763>,  <27.026548, 41.281269, 41.996429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034634, 41.447647, 41.632763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994776, -0.099371, -0.023344,
		-0.100055, -0.903946, -0.415778,
		0.020215, 0.415941, -0.909167,
		27.040697, 41.572430, 41.360012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435087, 40.861397, 41.539650>,  <27.026548, 41.281269, 41.996429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435087, 40.861397, 41.539650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427973, 41.228741, 41.381508>,  <27.423704, 41.449146, 41.286621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427973, 41.228741, 41.381508>,  <27.435087, 40.861397, 41.539650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427973, 41.228741, 41.381508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989663, -0.040108, -0.137691,
		-0.142306, -0.393718, -0.908149,
		-0.017787, 0.918356, -0.395356,
		27.422636, 41.504246, 41.262901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058992, 40.889297, 41.151600>,  <27.435087, 40.861397, 41.539650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058992, 40.889297, 41.151600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838470, 40.555706, 41.142250>,  <27.706158, 40.355553, 41.136639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838470, 40.555706, 41.142250>,  <28.058992, 40.889297, 41.151600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838470, 40.555706, 41.142250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803154, -0.522926, -0.285467,
		0.225850, -0.176151, 0.958104,
		-0.551303, -0.833978, -0.023373,
		27.673080, 40.305511, 41.135239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492941, 40.330372, 41.432468>,  <28.058992, 40.889297, 41.151600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492941, 40.330372, 41.432468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215778, 40.203251, 41.173584>,  <28.049480, 40.126976, 41.018253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215778, 40.203251, 41.173584>,  <28.492941, 40.330372, 41.432468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215778, 40.203251, 41.173584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679133, -0.589181, -0.437773,
		-0.242198, -0.742877, 0.624078,
		-0.692906, -0.317804, -0.647211,
		28.007906, 40.107910, 40.979420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579824, 39.597935, 41.424183>,  <28.492941, 40.330372, 41.432468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579824, 39.597935, 41.424183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410988, 39.726212, 41.085011>,  <28.309685, 39.803177, 40.881508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410988, 39.726212, 41.085011>,  <28.579824, 39.597935, 41.424183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410988, 39.726212, 41.085011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555531, -0.647643, -0.521482,
		-0.716396, -0.691167, 0.095210,
		-0.422093, 0.320695, -0.847934,
		28.284359, 39.822418, 40.830631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167929, 39.010918, 40.994686>,  <28.579824, 39.597935, 41.424183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167929, 39.010918, 40.994686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246634, 39.308887, 40.739697>,  <28.293858, 39.487667, 40.586704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246634, 39.308887, 40.739697>,  <28.167929, 39.010918, 40.994686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246634, 39.308887, 40.739697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401378, -0.654406, -0.640818,
		-0.894528, -0.129779, -0.427759,
		0.196763, 0.744923, -0.637475,
		28.305662, 39.532364, 40.548454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343418, 38.615551, 40.539505>,  <28.167929, 39.010918, 40.994686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343418, 38.615551, 40.539505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433033, 38.965672, 40.368088>,  <28.486803, 39.175743, 40.265236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433033, 38.965672, 40.368088>,  <28.343418, 38.615551, 40.539505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433033, 38.965672, 40.368088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529698, -0.478467, -0.700349,
		-0.818063, -0.070095, -0.570842,
		0.224038, 0.875303, -0.428545,
		28.500244, 39.228264, 40.239525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097469, 38.654308, 39.866928>,  <28.343418, 38.615551, 40.539505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097469, 38.654308, 39.866928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389435, 38.927723, 39.867840>,  <28.564613, 39.091770, 39.868385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389435, 38.927723, 39.867840>,  <28.097469, 38.654308, 39.866928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389435, 38.927723, 39.867840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450914, -0.478994, -0.753154,
		-0.513717, 0.550764, -0.657840,
		0.729912, 0.683538, 0.002280,
		28.608408, 39.132786, 39.868523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127550, 38.996899, 39.123882>,  <28.097469, 38.654308, 39.866928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127550, 38.996899, 39.123882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475439, 39.011173, 39.320782>,  <28.684172, 39.019737, 39.438923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475439, 39.011173, 39.320782>,  <28.127550, 38.996899, 39.123882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475439, 39.011173, 39.320782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435082, -0.526295, -0.730559,
		0.232997, 0.849552, -0.473258,
		0.869722, 0.035688, 0.492251,
		28.736355, 39.021881, 39.468456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681717, 39.149296, 38.640419>,  <28.127550, 38.996899, 39.123882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681717, 39.149296, 38.640419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886654, 39.001431, 38.950478>,  <29.009617, 38.912712, 39.136513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886654, 39.001431, 38.950478>,  <28.681717, 39.149296, 38.640419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886654, 39.001431, 38.950478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499282, -0.606177, -0.619085,
		0.698730, 0.704201, -0.126005,
		0.512342, -0.369662, 0.775149,
		29.040356, 38.890533, 39.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322760, 39.032158, 38.424320>,  <28.681717, 39.149296, 38.640419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322760, 39.032158, 38.424320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278177, 38.783985, 38.734840>,  <29.251429, 38.635082, 38.921150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278177, 38.783985, 38.734840>,  <29.322760, 39.032158, 38.424320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278177, 38.783985, 38.734840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402889, -0.742298, -0.535420,
		0.908437, 0.253086, 0.332700,
		-0.111455, -0.620436, 0.776297,
		29.244741, 38.597855, 38.967728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947077, 38.641262, 38.361462>,  <29.322760, 39.032158, 38.424320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947077, 38.641262, 38.361462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672419, 38.433971, 38.565407>,  <29.507624, 38.309597, 38.687775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672419, 38.433971, 38.565407>,  <29.947077, 38.641262, 38.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672419, 38.433971, 38.565407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313828, -0.843910, -0.435118,
		0.655768, -0.138762, 0.742100,
		-0.686644, -0.518229, 0.509862,
		29.466425, 38.278503, 38.718365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276735, 38.008171, 38.492706>,  <29.947077, 38.641262, 38.361462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276735, 38.008171, 38.492706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892078, 37.924561, 38.563763>,  <29.661285, 37.874393, 38.606396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892078, 37.924561, 38.563763>,  <30.276735, 38.008171, 38.492706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892078, 37.924561, 38.563763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113467, -0.892684, -0.436166,
		0.249745, -0.399278, 0.882159,
		-0.961641, -0.209026, 0.177639,
		29.603586, 37.861855, 38.617054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252438, 37.276798, 38.627171>,  <30.276735, 38.008171, 38.492706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252438, 37.276798, 38.627171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861931, 37.343658, 38.572083>,  <29.627626, 37.383774, 38.539032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861931, 37.343658, 38.572083>,  <30.252438, 37.276798, 38.627171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861931, 37.343658, 38.572083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112963, -0.935528, -0.334705,
		-0.184785, -0.311204, 0.932205,
		-0.976265, 0.167153, -0.137718,
		29.569052, 37.393803, 38.530766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806938, 36.742229, 39.094601>,  <30.252438, 37.276798, 38.627171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806938, 36.742229, 39.094601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597744, 36.869171, 38.778179>,  <29.472227, 36.945335, 38.588326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597744, 36.869171, 38.778179>,  <29.806938, 36.742229, 39.094601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597744, 36.869171, 38.778179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024377, -0.933288, -0.358301,
		-0.851992, -0.168103, 0.495833,
		-0.522987, 0.317357, -0.791056,
		29.440847, 36.964378, 38.540863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151697, 36.219067, 38.981571>,  <29.806938, 36.742229, 39.094601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151697, 36.219067, 38.981571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211294, 36.406811, 38.633434>,  <29.247051, 36.519459, 38.424553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211294, 36.406811, 38.633434>,  <29.151697, 36.219067, 38.981571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211294, 36.406811, 38.633434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142361, -0.860818, -0.488596,
		-0.978537, 0.196699, -0.061436,
		0.148992, 0.469363, -0.870345,
		29.255991, 36.547619, 38.372330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611042, 36.019783, 38.639519>,  <29.151697, 36.219067, 38.981571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611042, 36.019783, 38.639519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858002, 36.153820, 38.354836>,  <29.006178, 36.234241, 38.184025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858002, 36.153820, 38.354836>,  <28.611042, 36.019783, 38.639519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858002, 36.153820, 38.354836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228689, -0.789201, -0.569967,
		-0.752675, 0.514657, -0.410620,
		0.617399, 0.335096, -0.711708,
		29.043222, 36.254349, 38.141323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294024, 36.146317, 37.973751>,  <28.611042, 36.019783, 38.639519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294024, 36.146317, 37.973751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679604, 36.066723, 37.903088>,  <28.910952, 36.018967, 37.860687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679604, 36.066723, 37.903088>,  <28.294024, 36.146317, 37.973751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679604, 36.066723, 37.903088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265997, -0.738169, -0.619962,
		-0.007044, 0.644603, -0.764485,
		0.963948, -0.198984, -0.176661,
		28.968788, 36.007027, 37.850090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237154, 35.876400, 37.389034>,  <28.294024, 36.146317, 37.973751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237154, 35.876400, 37.389034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624826, 35.803322, 37.455132>,  <28.857430, 35.759476, 37.494789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624826, 35.803322, 37.455132>,  <28.237154, 35.876400, 37.389034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624826, 35.803322, 37.455132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021421, -0.730761, -0.682297,
		0.245411, 0.657730, -0.712154,
		0.969182, -0.182699, 0.165248,
		28.915581, 35.748512, 37.504707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657804, 35.750572, 36.706409>,  <28.237154, 35.876400, 37.389034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657804, 35.750572, 36.706409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855730, 35.560421, 36.997387>,  <28.974485, 35.446331, 37.171974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855730, 35.560421, 36.997387>,  <28.657804, 35.750572, 36.706409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855730, 35.560421, 36.997387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019905, -0.843083, -0.537415,
		0.868771, 0.251441, -0.426632,
		0.494814, -0.475382, 0.727441,
		29.004175, 35.417805, 37.215618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102346, 35.427654, 36.357868>,  <28.657804, 35.750572, 36.706409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102346, 35.427654, 36.357868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094915, 35.218452, 36.698719>,  <29.090456, 35.092930, 36.903229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094915, 35.218452, 36.698719>,  <29.102346, 35.427654, 36.357868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094915, 35.218452, 36.698719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057801, -0.850288, -0.523134,
		0.998155, -0.058972, -0.014434,
		-0.018577, -0.523003, 0.852128,
		29.089342, 35.061550, 36.954357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496532, 34.843117, 36.212933>,  <29.102346, 35.427654, 36.357868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496532, 34.843117, 36.212933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313356, 34.729897, 36.550022>,  <29.203451, 34.661964, 36.752274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313356, 34.729897, 36.550022>,  <29.496532, 34.843117, 36.212933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313356, 34.729897, 36.550022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055883, -0.955249, -0.290475,
		0.887225, -0.085926, 0.453264,
		-0.457939, -0.283047, 0.842719,
		29.175974, 34.644981, 36.802837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779753, 34.236477, 36.370289>,  <29.496532, 34.843117, 36.212933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779753, 34.236477, 36.370289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456694, 34.221569, 36.605682>,  <29.262857, 34.212624, 36.746918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456694, 34.221569, 36.605682>,  <29.779753, 34.236477, 36.370289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456694, 34.221569, 36.605682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164036, -0.944405, -0.284940,
		0.566389, -0.326665, 0.756633,
		-0.807648, -0.037271, 0.588485,
		29.214399, 34.210388, 36.782227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823692, 33.712723, 36.912193>,  <29.779753, 34.236477, 36.370289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823692, 33.712723, 36.912193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433493, 33.751972, 36.833427>,  <29.199373, 33.775520, 36.786167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433493, 33.751972, 36.833427>,  <29.823692, 33.712723, 36.912193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433493, 33.751972, 36.833427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058026, -0.978089, -0.199939,
		-0.212217, -0.183614, 0.959818,
		-0.975498, 0.098125, -0.196912,
		29.140842, 33.781410, 36.774353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812265, 33.036392, 36.977058>,  <29.823692, 33.712723, 36.912193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812265, 33.036392, 36.977058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808458, 32.669441, 36.817894>,  <29.806173, 32.449272, 36.722397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808458, 32.669441, 36.817894>,  <29.812265, 33.036392, 36.977058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808458, 32.669441, 36.817894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598033, -0.324143, 0.732999,
		-0.801415, -0.230985, 0.551707,
		-0.009520, -0.917375, -0.397909,
		29.805603, 32.394230, 36.698521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745644, 32.516312, 37.453587>,  <29.812265, 33.036392, 36.977058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745644, 32.516312, 37.453587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969400, 32.287941, 37.213211>,  <30.103655, 32.150921, 37.068985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969400, 32.287941, 37.213211>,  <29.745644, 32.516312, 37.453587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969400, 32.287941, 37.213211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467373, -0.381504, 0.797507,
		-0.684576, -0.726981, 0.053424,
		0.559391, -0.570923, -0.600940,
		30.137218, 32.116665, 37.032928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820509, 31.802877, 37.700333>,  <29.745644, 32.516312, 37.453587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820509, 31.802877, 37.700333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119434, 31.863214, 37.441483>,  <30.298790, 31.899418, 37.286171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119434, 31.863214, 37.441483>,  <29.820509, 31.802877, 37.700333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119434, 31.863214, 37.441483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658898, -0.294107, 0.692354,
		-0.085887, -0.943794, -0.319181,
		0.747313, 0.150844, -0.647124,
		30.343628, 31.908468, 37.247345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286974, 31.134115, 37.480633>,  <29.820509, 31.802877, 37.700333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286974, 31.134115, 37.480633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456085, 31.495985, 37.501865>,  <30.557552, 31.713108, 37.514603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456085, 31.495985, 37.501865>,  <30.286974, 31.134115, 37.480633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456085, 31.495985, 37.501865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580556, -0.315352, 0.750672,
		0.695854, -0.286554, -0.658540,
		0.422780, 0.904677, 0.053079,
		30.582920, 31.767387, 37.517788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076981, 31.199568, 37.561493>,  <30.286974, 31.134115, 37.480633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076981, 31.199568, 37.561493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905453, 31.502151, 37.759033>,  <30.802536, 31.683702, 37.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905453, 31.502151, 37.759033>,  <31.076981, 31.199568, 37.561493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905453, 31.502151, 37.759033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619433, -0.151710, 0.770251,
		0.657584, 0.636203, -0.403520,
		-0.428818, 0.756459, 0.493848,
		30.776808, 31.729090, 37.907188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644670, 31.641973, 37.852016>,  <31.076981, 31.199568, 37.561493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644670, 31.641973, 37.852016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317617, 31.731186, 38.064331>,  <31.121386, 31.784714, 38.191719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317617, 31.731186, 38.064331>,  <31.644670, 31.641973, 37.852016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317617, 31.731186, 38.064331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554717, 0.058295, 0.829994,
		0.154173, 0.973067, -0.171383,
		-0.817631, 0.223032, 0.530789,
		31.072329, 31.798096, 38.223568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816568, 32.244354, 38.275017>,  <31.644670, 31.641973, 37.852016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816568, 32.244354, 38.275017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513733, 32.023151, 38.414154>,  <31.332031, 31.890429, 38.497635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513733, 32.023151, 38.414154>,  <31.816568, 32.244354, 38.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513733, 32.023151, 38.414154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380949, 0.058859, 0.922721,
		-0.530748, 0.831093, 0.166108,
		-0.757090, -0.553011, 0.347843,
		31.286606, 31.857248, 38.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376146, 32.564510, 38.806595>,  <31.816568, 32.244354, 38.275017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376146, 32.564510, 38.806595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402891, 32.178299, 38.907227>,  <31.418938, 31.946573, 38.967606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402891, 32.178299, 38.907227>,  <31.376146, 32.564510, 38.806595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402891, 32.178299, 38.907227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174936, 0.259583, 0.949744,
		-0.982307, -0.019491, 0.186262,
		0.066862, -0.965524, 0.251580,
		31.422951, 31.888641, 38.982700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034349, 32.456486, 39.359165>,  <31.376146, 32.564510, 38.806595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034349, 32.456486, 39.359165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350632, 32.211792, 39.368675>,  <31.540401, 32.064976, 39.374382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350632, 32.211792, 39.368675>,  <31.034349, 32.456486, 39.359165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350632, 32.211792, 39.368675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312091, 0.436201, 0.843995,
		-0.526674, -0.659930, 0.535824,
		0.790705, -0.611736, 0.023777,
		31.587843, 32.028271, 39.375809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089087, 32.046040, 40.080223>,  <31.034349, 32.456486, 39.359165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089087, 32.046040, 40.080223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446476, 32.121059, 39.916992>,  <31.660910, 32.166073, 39.819054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446476, 32.121059, 39.916992>,  <31.089087, 32.046040, 40.080223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446476, 32.121059, 39.916992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325962, 0.354266, 0.876496,
		0.308953, -0.916145, 0.255394,
		0.893475, 0.187547, -0.408080,
		31.714518, 32.177326, 39.794567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741074, 31.874058, 40.559044>,  <31.089087, 32.046040, 40.080223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741074, 31.874058, 40.559044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922159, 32.109631, 40.291252>,  <32.030811, 32.250973, 40.130577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922159, 32.109631, 40.291252>,  <31.741074, 31.874058, 40.559044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922159, 32.109631, 40.291252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503792, 0.450555, 0.737017,
		0.735691, -0.670940, -0.092725,
		0.452716, 0.588931, -0.669484,
		32.057976, 32.286308, 40.090408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366837, 31.782597, 40.671989>,  <31.741074, 31.874058, 40.559044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366837, 31.782597, 40.671989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376099, 32.132854, 40.479031>,  <32.381657, 32.343010, 40.363255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376099, 32.132854, 40.479031>,  <32.366837, 31.782597, 40.671989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376099, 32.132854, 40.479031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740553, 0.309128, 0.596675,
		0.671598, -0.371057, -0.641305,
		0.023155, 0.875647, -0.482397,
		32.383045, 32.395550, 40.334312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039459, 31.934097, 40.461903>,  <32.366837, 31.782597, 40.671989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039459, 31.934097, 40.461903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851192, 32.283966, 40.508251>,  <32.738232, 32.493889, 40.536060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851192, 32.283966, 40.508251>,  <33.039459, 31.934097, 40.461903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851192, 32.283966, 40.508251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716946, 0.302590, 0.628035,
		0.514263, 0.378667, -0.769510,
		-0.470663, 0.874672, 0.115873,
		32.709995, 32.546368, 40.543015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543392, 32.520737, 40.534237>,  <33.039459, 31.934097, 40.461903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543392, 32.520737, 40.534237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203014, 32.682316, 40.668530>,  <32.998787, 32.779263, 40.749107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203014, 32.682316, 40.668530>,  <33.543392, 32.520737, 40.534237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203014, 32.682316, 40.668530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499896, 0.426622, 0.753722,
		0.161232, 0.809210, -0.564963,
		-0.850945, 0.403947, 0.335736,
		32.947731, 32.803501, 40.769249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729568, 33.205635, 40.721836>,  <33.543392, 32.520737, 40.534237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729568, 33.205635, 40.721836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368305, 33.166718, 40.889091>,  <33.151546, 33.143368, 40.989445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368305, 33.166718, 40.889091>,  <33.729568, 33.205635, 40.721836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368305, 33.166718, 40.889091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294437, 0.568428, 0.768243,
		-0.312426, 0.816960, -0.484734,
		-0.903159, -0.097296, 0.418135,
		33.097359, 33.137527, 41.014530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506199, 33.800961, 40.823235>,  <33.729568, 33.205635, 40.721836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506199, 33.800961, 40.823235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311630, 33.564541, 41.080624>,  <33.194889, 33.422688, 41.235058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311630, 33.564541, 41.080624>,  <33.506199, 33.800961, 40.823235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311630, 33.564541, 41.080624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284815, 0.588979, 0.756297,
		-0.825999, 0.551150, -0.118153,
		-0.486422, -0.591048, 0.643471,
		33.165703, 33.387226, 41.273666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057659, 34.171658, 41.249207>,  <33.506199, 33.800961, 40.823235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057659, 34.171658, 41.249207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079433, 33.854805, 41.492371>,  <33.092499, 33.664692, 41.638271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079433, 33.854805, 41.492371>,  <33.057659, 34.171658, 41.249207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079433, 33.854805, 41.492371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144653, 0.608651, 0.780141,
		-0.987984, 0.045467, 0.147719,
		0.054439, -0.792135, 0.607914,
		33.095764, 33.617165, 41.674744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779774, 34.496777, 41.821400>,  <33.057659, 34.171658, 41.249207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779774, 34.496777, 41.821400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956173, 34.163769, 41.955521>,  <33.062012, 33.963963, 42.035992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956173, 34.163769, 41.955521>,  <32.779774, 34.496777, 41.821400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956173, 34.163769, 41.955521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047135, 0.394560, 0.917660,
		-0.896270, -0.388881, 0.213241,
		0.440998, -0.832523, 0.335303,
		33.088470, 33.914013, 42.056110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504795, 34.246647, 42.425827>,  <32.779774, 34.496777, 41.821400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504795, 34.246647, 42.425827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855499, 34.057747, 42.462189>,  <33.065922, 33.944405, 42.484005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855499, 34.057747, 42.462189>,  <32.504795, 34.246647, 42.425827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855499, 34.057747, 42.462189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116693, 0.392271, 0.912418,
		-0.466549, -0.789368, 0.399037,
		0.876764, -0.472252, 0.090900,
		33.118530, 33.916073, 42.489460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398396, 33.979332, 43.093586>,  <32.504795, 34.246647, 42.425827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398396, 33.979332, 43.093586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786804, 34.000687, 43.000404>,  <33.019848, 34.013500, 42.944496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786804, 34.000687, 43.000404>,  <32.398396, 33.979332, 43.093586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786804, 34.000687, 43.000404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213514, 0.244111, 0.945950,
		0.107365, -0.968277, 0.225639,
		0.971023, 0.053385, -0.232950,
		33.078110, 34.016701, 42.930519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700565, 33.574970, 43.626499>,  <32.398396, 33.979332, 43.093586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700565, 33.574970, 43.626499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010967, 33.766674, 43.462486>,  <33.197208, 33.881695, 43.364079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010967, 33.766674, 43.462486>,  <32.700565, 33.574970, 43.626499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010967, 33.766674, 43.462486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304395, 0.284802, 0.908973,
		0.552409, -0.830181, 0.075125,
		0.776007, 0.479257, -0.410030,
		33.243771, 33.910450, 43.339478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285000, 33.227192, 43.838032>,  <32.700565, 33.574970, 43.626499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285000, 33.227192, 43.838032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403183, 33.595879, 43.737522>,  <33.474094, 33.817093, 43.677216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403183, 33.595879, 43.737522>,  <33.285000, 33.227192, 43.838032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403183, 33.595879, 43.737522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142916, 0.217414, 0.965560,
		0.944605, -0.321194, -0.067491,
		0.295459, 0.921718, -0.251274,
		33.491821, 33.872395, 43.662140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988331, 33.379353, 43.997711>,  <33.285000, 33.227192, 43.838032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988331, 33.379353, 43.997711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886982, 33.765072, 43.966919>,  <33.826172, 33.996506, 43.948444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886982, 33.765072, 43.966919>,  <33.988331, 33.379353, 43.997711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886982, 33.765072, 43.966919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353720, 0.166417, 0.920428,
		0.900380, 0.205981, -0.383258,
		-0.253372, 0.964301, -0.076979,
		33.810970, 34.054363, 43.943825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537548, 33.783157, 44.292828>,  <33.988331, 33.379353, 43.997711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537548, 33.783157, 44.292828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205872, 34.005749, 44.313892>,  <34.006866, 34.139305, 44.326530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205872, 34.005749, 44.313892>,  <34.537548, 33.783157, 44.292828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205872, 34.005749, 44.313892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330817, 0.412619, 0.848708,
		0.450562, 0.721160, -0.526233,
		-0.829189, 0.556482, 0.052662,
		33.957115, 34.172695, 44.329689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747234, 34.390884, 44.477772>,  <34.537548, 33.783157, 44.292828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747234, 34.390884, 44.477772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358097, 34.376488, 44.569229>,  <34.124615, 34.367851, 44.624104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358097, 34.376488, 44.569229>,  <34.747234, 34.390884, 44.477772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358097, 34.376488, 44.569229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188521, 0.449892, 0.872959,
		-0.134283, 0.892357, -0.430890,
		-0.972845, -0.035992, 0.228641,
		34.066242, 34.365692, 44.637821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620014, 35.088676, 44.697468>,  <34.747234, 34.390884, 44.477772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620014, 35.088676, 44.697468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351902, 34.837524, 44.855701>,  <34.191032, 34.686832, 44.950642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351902, 34.837524, 44.855701>,  <34.620014, 35.088676, 44.697468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351902, 34.837524, 44.855701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134446, 0.421497, 0.896808,
		-0.729826, 0.654300, -0.198107,
		-0.670283, -0.627879, 0.395588,
		34.150818, 34.649162, 44.974377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353180, 35.469551, 45.292213>,  <34.620014, 35.088676, 44.697468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353180, 35.469551, 45.292213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204166, 35.108711, 45.379330>,  <34.114758, 34.892208, 45.431599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204166, 35.108711, 45.379330>,  <34.353180, 35.469551, 45.292213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204166, 35.108711, 45.379330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030663, 0.246519, 0.968653,
		-0.927512, 0.354179, -0.119498,
		-0.372535, -0.902101, 0.217789,
		34.092407, 34.838081, 45.444668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831059, 35.584652, 45.818222>,  <34.353180, 35.469551, 45.292213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831059, 35.584652, 45.818222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938717, 35.200039, 45.840176>,  <34.003311, 34.969269, 45.853348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938717, 35.200039, 45.840176>,  <33.831059, 35.584652, 45.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938717, 35.200039, 45.840176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005412, 0.055474, 0.998446,
		-0.963084, -0.269024, 0.009727,
		0.269145, -0.961535, 0.054882,
		34.019459, 34.911579, 45.856640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435482, 35.357384, 46.291500>,  <33.831059, 35.584652, 45.818222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435482, 35.357384, 46.291500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702740, 35.059921, 46.301025>,  <33.863094, 34.881443, 46.306740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702740, 35.059921, 46.301025>,  <33.435482, 35.357384, 46.291500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702740, 35.059921, 46.301025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069280, 0.094045, 0.993154,
		-0.740802, -0.661918, 0.114356,
		0.668141, -0.743653, 0.023811,
		33.903183, 34.836826, 46.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234921, 34.849464, 46.869289>,  <33.435482, 35.357384, 46.291500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234921, 34.849464, 46.869289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625095, 34.815136, 46.788139>,  <33.859200, 34.794540, 46.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625095, 34.815136, 46.788139>,  <33.234921, 34.849464, 46.869289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625095, 34.815136, 46.788139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204733, 0.013339, 0.978727,
		-0.081292, -0.996221, 0.030582,
		0.975436, -0.085824, -0.202875,
		33.917725, 34.789391, 46.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486015, 34.468727, 47.460522>,  <33.234921, 34.849464, 46.869289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486015, 34.468727, 47.460522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810760, 34.621513, 47.283894>,  <34.005608, 34.713184, 47.177917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810760, 34.621513, 47.283894>,  <33.486015, 34.468727, 47.460522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810760, 34.621513, 47.283894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492079, -0.040612, 0.869603,
		0.314222, -0.923286, -0.220927,
		0.811864, 0.381962, -0.441568,
		34.054321, 34.736103, 47.151424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043877, 34.065701, 47.647224>,  <33.486015, 34.468727, 47.460522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043877, 34.065701, 47.647224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211742, 34.409142, 47.529453>,  <34.312462, 34.615208, 47.458790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211742, 34.409142, 47.529453>,  <34.043877, 34.065701, 47.647224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211742, 34.409142, 47.529453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609973, -0.026557, 0.791977,
		0.672174, -0.511954, -0.534869,
		0.419660, 0.858602, -0.294427,
		34.337639, 34.666721, 47.441124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835728, 33.939404, 47.756416>,  <34.043877, 34.065701, 47.647224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835728, 33.939404, 47.756416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737034, 34.326904, 47.766628>,  <34.677818, 34.559402, 47.772755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737034, 34.326904, 47.766628>,  <34.835728, 33.939404, 47.756416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737034, 34.326904, 47.766628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628455, 0.139897, 0.765162,
		0.737677, 0.204834, -0.643332,
		-0.246731, 0.968748, 0.025530,
		34.663013, 34.617527, 47.774288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479492, 34.218380, 47.790691>,  <34.835728, 33.939404, 47.756416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479492, 34.218380, 47.790691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203224, 34.482891, 47.907780>,  <35.037464, 34.641598, 47.978035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203224, 34.482891, 47.907780>,  <35.479492, 34.218380, 47.790691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203224, 34.482891, 47.907780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439134, 0.061894, 0.896287,
		0.574579, 0.747581, -0.333138,
		-0.690666, 0.661280, 0.292725,
		34.996025, 34.681274, 47.995598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882141, 34.772659, 48.022419>,  <35.479492, 34.218380, 47.790691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882141, 34.772659, 48.022419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527790, 34.822392, 48.201202>,  <35.315182, 34.852230, 48.308472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527790, 34.822392, 48.201202>,  <35.882141, 34.772659, 48.022419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527790, 34.822392, 48.201202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460419, 0.353871, 0.814119,
		-0.056942, 0.926993, -0.370731,
		-0.885874, 0.124334, 0.446955,
		35.262028, 34.859692, 48.335289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856285, 35.359474, 48.274509>,  <35.882141, 34.772659, 48.022419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856285, 35.359474, 48.274509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570705, 35.203060, 48.506844>,  <35.399357, 35.109211, 48.646244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570705, 35.203060, 48.506844>,  <35.856285, 35.359474, 48.274509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570705, 35.203060, 48.506844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412865, 0.434893, 0.800256,
		-0.565531, 0.811148, -0.149045,
		-0.713945, -0.391034, 0.580840,
		35.356522, 35.085751, 48.681095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818577, 35.855038, 48.830212>,  <35.856285, 35.359474, 48.274509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818577, 35.855038, 48.830212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602375, 35.557171, 48.986839>,  <35.472652, 35.378448, 49.080814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602375, 35.557171, 48.986839>,  <35.818577, 35.855038, 48.830212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602375, 35.557171, 48.986839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049120, 0.436681, 0.898274,
		-0.839906, 0.504755, -0.199450,
		-0.540504, -0.744669, 0.391565,
		35.440224, 35.333771, 49.104309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281689, 36.187881, 49.360416>,  <35.818577, 35.855038, 48.830212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281689, 36.187881, 49.360416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350414, 35.805191, 49.454361>,  <35.391651, 35.575577, 49.510727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350414, 35.805191, 49.454361>,  <35.281689, 36.187881, 49.360416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350414, 35.805191, 49.454361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159794, 0.262317, 0.951660,
		-0.972083, -0.125980, 0.197949,
		0.171816, -0.956723, 0.234863,
		35.401958, 35.518173, 49.524818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946899, 36.016998, 50.082958>,  <35.281689, 36.187881, 49.360416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946899, 36.016998, 50.082958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248730, 35.768589, 49.998150>,  <35.429829, 35.619545, 49.947266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248730, 35.768589, 49.998150>,  <34.946899, 36.016998, 50.082958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248730, 35.768589, 49.998150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402697, 0.183113, 0.896830,
		-0.518128, -0.762103, 0.388256,
		0.754572, -0.621022, -0.212021,
		35.475101, 35.582283, 49.934544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032902, 35.593895, 50.742455>,  <34.946899, 36.016998, 50.082958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032902, 35.593895, 50.742455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370338, 35.534550, 50.536022>,  <35.572800, 35.498943, 50.412163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370338, 35.534550, 50.536022>,  <35.032902, 35.593895, 50.742455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370338, 35.534550, 50.536022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534072, 0.131849, 0.835094,
		-0.055855, -0.980103, 0.190465,
		0.843592, -0.148367, -0.516082,
		35.623417, 35.490040, 50.381199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491833, 35.193535, 51.248547>,  <35.032902, 35.593895, 50.742455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491833, 35.193535, 51.248547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720047, 35.378063, 50.976757>,  <35.856976, 35.488781, 50.813683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720047, 35.378063, 50.976757>,  <35.491833, 35.193535, 51.248547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720047, 35.378063, 50.976757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695103, 0.169396, 0.698668,
		0.437406, -0.870915, -0.224016,
		0.570533, 0.461316, -0.679470,
		35.891209, 35.516457, 50.772915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051647, 34.768448, 51.163311>,  <35.491833, 35.193535, 51.248547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051647, 34.768448, 51.163311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145576, 35.139511, 51.047169>,  <36.201935, 35.362148, 50.977482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145576, 35.139511, 51.047169>,  <36.051647, 34.768448, 51.163311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145576, 35.139511, 51.047169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754648, 0.014295, 0.655974,
		0.612671, -0.373153, -0.696700,
		0.234819, 0.927660, -0.290357,
		36.216022, 35.417809, 50.960060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651123, 34.843544, 51.269581>,  <36.051647, 34.768448, 51.163311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651123, 34.843544, 51.269581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618229, 35.226871, 51.160133>,  <36.598492, 35.456867, 51.094463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618229, 35.226871, 51.160133>,  <36.651123, 34.843544, 51.269581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618229, 35.226871, 51.160133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746993, 0.241008, 0.619610,
		0.659727, -0.153439, -0.735675,
		-0.082231, 0.958317, -0.273618,
		36.593559, 35.514366, 51.078049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337479, 35.020184, 50.921680>,  <36.651123, 34.843544, 51.269581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337479, 35.020184, 50.921680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125378, 35.304607, 51.106388>,  <36.998119, 35.475262, 51.217213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125378, 35.304607, 51.106388>,  <37.337479, 35.020184, 50.921680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125378, 35.304607, 51.106388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797807, 0.234133, 0.555595,
		0.286947, 0.663005, -0.691437,
		-0.530251, 0.711060, 0.461767,
		36.966301, 35.517925, 51.244919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872421, 35.534397, 50.888805>,  <37.337479, 35.020184, 50.921680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872421, 35.534397, 50.888805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600323, 35.690380, 51.137062>,  <37.437061, 35.783970, 51.286015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600323, 35.690380, 51.137062>,  <37.872421, 35.534397, 50.888805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600323, 35.690380, 51.137062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731927, 0.315992, 0.603682,
		0.039293, 0.864917, -0.500374,
		-0.680249, 0.389957, 0.620640,
		37.396248, 35.807365, 51.323254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242680, 36.181095, 51.081161>,  <37.872421, 35.534397, 50.888805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242680, 36.181095, 51.081161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963001, 36.106819, 51.357319>,  <37.795193, 36.062252, 51.523014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963001, 36.106819, 51.357319>,  <38.242680, 36.181095, 51.081161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963001, 36.106819, 51.357319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664387, 0.187863, 0.723393,
		-0.264028, 0.964482, -0.007982,
		-0.699199, -0.185693, 0.690390,
		37.753242, 36.051113, 51.564434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219982, 36.746639, 51.450924>,  <38.242680, 36.181095, 51.081161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219982, 36.746639, 51.450924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059765, 36.463692, 51.683887>,  <37.963634, 36.293922, 51.823666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059765, 36.463692, 51.683887>,  <38.219982, 36.746639, 51.450924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059765, 36.463692, 51.683887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632709, 0.246233, 0.734199,
		-0.662755, 0.662573, 0.348930,
		-0.400543, -0.707366, 0.582408,
		37.939602, 36.251484, 51.858608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936802, 37.122887, 52.035580>,  <38.219982, 36.746639, 51.450924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936802, 37.122887, 52.035580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989754, 36.742657, 52.147926>,  <38.021526, 36.514519, 52.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989754, 36.742657, 52.147926>,  <37.936802, 37.122887, 52.035580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989754, 36.742657, 52.147926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696264, 0.290854, 0.656216,
		-0.705472, 0.108684, 0.700355,
		0.132381, -0.950574, 0.280862,
		38.029469, 36.457485, 52.232185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113331, 37.186569, 52.692669>,  <37.936802, 37.122887, 52.035580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113331, 37.186569, 52.692669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217197, 36.804184, 52.637962>,  <38.279518, 36.574753, 52.605141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217197, 36.804184, 52.637962>,  <38.113331, 37.186569, 52.692669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217197, 36.804184, 52.637962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677061, 0.079238, 0.731649,
		-0.688594, -0.282582, 0.667822,
		0.259668, -0.955965, -0.136762,
		38.295097, 36.517395, 52.596935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894367, 36.631878, 53.244728>,  <38.113331, 37.186569, 52.692669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894367, 36.631878, 53.244728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254032, 36.568470, 53.081570>,  <38.469830, 36.530426, 52.983673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254032, 36.568470, 53.081570>,  <37.894367, 36.631878, 53.244728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254032, 36.568470, 53.081570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433933, 0.202269, 0.877946,
		-0.056667, -0.966415, 0.250660,
		0.899161, -0.158520, -0.407898,
		38.523781, 36.520912, 52.959202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256744, 36.113205, 53.634567>,  <37.894367, 36.631878, 53.244728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256744, 36.113205, 53.634567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490402, 36.409908, 53.502769>,  <38.630600, 36.587929, 53.423691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490402, 36.409908, 53.502769>,  <38.256744, 36.113205, 53.634567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490402, 36.409908, 53.502769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351236, 0.134957, 0.926509,
		0.731712, -0.656950, -0.181697,
		0.584149, 0.741757, -0.329495,
		38.665646, 36.632435, 53.403919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024971, 35.890007, 53.683617>,  <38.256744, 36.113205, 53.634567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024971, 35.890007, 53.683617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904579, 36.266724, 53.743546>,  <38.832344, 36.492752, 53.779503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904579, 36.266724, 53.743546>,  <39.024971, 35.890007, 53.683617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904579, 36.266724, 53.743546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269001, -0.066877, 0.960815,
		0.914905, 0.329486, -0.233214,
		-0.300978, 0.941789, 0.149819,
		38.814285, 36.549259, 53.788490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588112, 36.104965, 54.099487>,  <39.024971, 35.890007, 53.683617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588112, 36.104965, 54.099487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271496, 36.343018, 54.155037>,  <39.081528, 36.485851, 54.188366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271496, 36.343018, 54.155037>,  <39.588112, 36.104965, 54.099487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271496, 36.343018, 54.155037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196247, 0.032322, 0.980021,
		0.578755, 0.802976, -0.142378,
		-0.791536, 0.595134, 0.138875,
		39.034035, 36.521557, 54.196701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255173, 36.218369, 54.424824>,  <39.588112, 36.104965, 54.099487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255173, 36.218369, 54.424824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453548, 36.529354, 54.270115>,  <40.572575, 36.715946, 54.177288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453548, 36.529354, 54.270115>,  <40.255173, 36.218369, 54.424824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453548, 36.529354, 54.270115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263612, -0.289593, -0.920133,
		-0.827375, 0.558293, 0.061327,
		0.495944, 0.777461, -0.386775,
		40.602333, 36.762592, 54.154083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858532, 36.792480, 53.974403>,  <40.255173, 36.218369, 54.424824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858532, 36.792480, 53.974403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234123, 36.670795, 53.910187>,  <40.459476, 36.597786, 53.871658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234123, 36.670795, 53.910187>,  <39.858532, 36.792480, 53.974403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234123, 36.670795, 53.910187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302021, -0.505770, -0.808072,
		0.164629, 0.807249, -0.566785,
		0.938979, -0.304213, -0.160542,
		40.515816, 36.579533, 53.862022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031147, 37.087624, 53.383438>,  <39.858532, 36.792480, 53.974403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031147, 37.087624, 53.383438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209991, 36.744442, 53.484634>,  <40.317299, 36.538532, 53.545353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209991, 36.744442, 53.484634>,  <40.031147, 37.087624, 53.383438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209991, 36.744442, 53.484634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528614, -0.481598, -0.699021,
		0.721569, 0.178806, -0.668855,
		0.447108, -0.857958, 0.252987,
		40.344124, 36.487053, 53.560532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112988, 36.753677, 52.776325>,  <40.031147, 37.087624, 53.383438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112988, 36.753677, 52.776325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094265, 36.469612, 53.057316>,  <40.083031, 36.299171, 53.225910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094265, 36.469612, 53.057316>,  <40.112988, 36.753677, 52.776325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094265, 36.469612, 53.057316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464537, -0.607102, -0.644695,
		0.884316, -0.356500, -0.301485,
		-0.046802, -0.710165, 0.702478,
		40.080223, 36.256561, 53.268059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568604, 36.141129, 52.648365>,  <40.112988, 36.753677, 52.776325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568604, 36.141129, 52.648365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236546, 36.017277, 52.833836>,  <40.037312, 35.942966, 52.945118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236546, 36.017277, 52.833836>,  <40.568604, 36.141129, 52.648365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236546, 36.017277, 52.833836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091752, -0.744423, -0.661374,
		0.549953, -0.591577, 0.589567,
		-0.830141, -0.309631, 0.463676,
		39.987503, 35.924389, 52.972939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559090, 35.457054, 52.901749>,  <40.568604, 36.141129, 52.648365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559090, 35.457054, 52.901749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165981, 35.485806, 52.833637>,  <39.930115, 35.503056, 52.792770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165981, 35.485806, 52.833637>,  <40.559090, 35.457054, 52.901749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165981, 35.485806, 52.833637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066230, -0.723133, -0.687527,
		-0.172554, -0.686959, 0.705913,
		-0.982771, 0.071883, -0.170277,
		39.871151, 35.507370, 52.782555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208672, 34.797272, 53.074177>,  <40.559090, 35.457054, 52.901749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208672, 34.797272, 53.074177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996891, 34.992424, 52.796570>,  <39.869823, 35.109516, 52.630005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996891, 34.992424, 52.796570>,  <40.208672, 34.797272, 53.074177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996891, 34.992424, 52.796570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048520, -0.834159, -0.549386,
		-0.846953, -0.257199, 0.465317,
		-0.529449, 0.487881, -0.694014,
		39.838058, 35.138790, 52.588364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636532, 34.399975, 52.873997>,  <40.208672, 34.797272, 53.074177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636532, 34.399975, 52.873997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684692, 34.646652, 52.562820>,  <39.713589, 34.794659, 52.376114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684692, 34.646652, 52.562820>,  <39.636532, 34.399975, 52.873997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684692, 34.646652, 52.562820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191551, -0.754484, -0.627743,
		-0.974070, 0.224594, 0.027290,
		0.120398, 0.616694, -0.777941,
		39.720810, 34.831661, 52.329437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012188, 34.251717, 52.536007>,  <39.636532, 34.399975, 52.873997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012188, 34.251717, 52.536007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280415, 34.421455, 52.292606>,  <39.441349, 34.523300, 52.146564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280415, 34.421455, 52.292606>,  <39.012188, 34.251717, 52.536007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280415, 34.421455, 52.292606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185039, -0.698646, -0.691125,
		-0.718405, 0.576040, -0.389965,
		0.670563, 0.424348, -0.608501,
		39.481583, 34.548759, 52.110058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742172, 34.290352, 51.859730>,  <39.012188, 34.251717, 52.536007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742172, 34.290352, 51.859730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135021, 34.333614, 51.798103>,  <39.370731, 34.359573, 51.761127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135021, 34.333614, 51.798103>,  <38.742172, 34.290352, 51.859730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135021, 34.333614, 51.798103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072685, -0.537076, -0.840396,
		-0.173637, 0.836572, -0.519614,
		0.982124, 0.108156, -0.154063,
		39.429657, 34.366062, 51.751884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712662, 34.393810, 51.196735>,  <38.742172, 34.290352, 51.859730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712662, 34.393810, 51.196735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090176, 34.284000, 51.270401>,  <39.316685, 34.218117, 51.314598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090176, 34.284000, 51.270401>,  <38.712662, 34.393810, 51.196735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090176, 34.284000, 51.270401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039230, -0.460153, -0.886972,
		0.328234, 0.844333, -0.423515,
		0.943781, -0.274520, 0.184161,
		39.373310, 34.201645, 51.325649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039024, 34.484921, 50.630398>,  <38.712662, 34.393810, 51.196735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039024, 34.484921, 50.630398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279316, 34.234440, 50.829193>,  <39.423492, 34.084152, 50.948471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279316, 34.234440, 50.829193>,  <39.039024, 34.484921, 50.630398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279316, 34.234440, 50.829193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009183, -0.616215, -0.787524,
		0.799397, 0.477656, -0.364431,
		0.600734, -0.626198, 0.496987,
		39.459538, 34.046581, 50.978291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481655, 34.396854, 50.115227>,  <39.039024, 34.484921, 50.630398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481655, 34.396854, 50.115227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523022, 34.105759, 50.386429>,  <39.547840, 33.931099, 50.549152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523022, 34.105759, 50.386429>,  <39.481655, 34.396854, 50.115227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523022, 34.105759, 50.386429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026001, -0.679453, -0.733258,
		0.994298, 0.093461, -0.051345,
		0.103418, -0.727742, 0.678009,
		39.554047, 33.887436, 50.589832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907505, 33.995930, 49.802139>,  <39.481655, 34.396854, 50.115227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907505, 33.995930, 49.802139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735386, 33.768299, 50.082424>,  <39.632114, 33.631721, 50.250595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735386, 33.768299, 50.082424>,  <39.907505, 33.995930, 49.802139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735386, 33.768299, 50.082424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023391, -0.768961, -0.638868,
		0.902382, -0.291296, 0.317573,
		-0.430301, -0.569075, 0.700711,
		39.606297, 33.597576, 50.292637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357735, 33.495064, 50.021503>,  <39.907505, 33.995930, 49.802139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357735, 33.495064, 50.021503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994305, 33.347900, 50.100624>,  <39.776245, 33.259602, 50.148098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994305, 33.347900, 50.100624>,  <40.357735, 33.495064, 50.021503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994305, 33.347900, 50.100624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163947, -0.749629, -0.641231,
		0.384196, -0.550179, 0.741415,
		-0.908578, -0.367911, 0.197804,
		39.721729, 33.237526, 50.159966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412182, 32.859829, 49.739048>,  <40.357735, 33.495064, 50.021503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412182, 32.859829, 49.739048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026016, 32.917984, 49.825619>,  <39.794319, 32.952877, 49.877563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026016, 32.917984, 49.825619>,  <40.412182, 32.859829, 49.739048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026016, 32.917984, 49.825619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256470, -0.678971, -0.687911,
		0.046933, -0.719625, 0.692775,
		-0.965412, 0.145390, 0.216429,
		39.736393, 32.961601, 49.890549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105946, 32.178211, 50.021965>,  <40.412182, 32.859829, 49.739048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105946, 32.178211, 50.021965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833172, 32.415562, 49.850906>,  <39.669510, 32.557972, 49.748272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833172, 32.415562, 49.850906>,  <40.105946, 32.178211, 50.021965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833172, 32.415562, 49.850906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165763, -0.694845, -0.699795,
		-0.712386, -0.406323, 0.572195,
		-0.681930, 0.593373, -0.427645,
		39.628593, 32.593575, 49.722614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757511, 31.708893, 49.641674>,  <40.105946, 32.178211, 50.021965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757511, 31.708893, 49.641674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645233, 32.050301, 49.466076>,  <39.577866, 32.255146, 49.360718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645233, 32.050301, 49.466076>,  <39.757511, 31.708893, 49.641674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645233, 32.050301, 49.466076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249319, -0.506518, -0.825397,
		-0.926851, -0.122232, 0.354974,
		-0.280691, 0.853522, -0.438992,
		39.561028, 32.306358, 49.334377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131863, 31.544537, 49.368393>,  <39.757511, 31.708893, 49.641674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131863, 31.544537, 49.368393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233078, 31.890774, 49.195549>,  <39.293808, 32.098515, 49.091843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233078, 31.890774, 49.195549>,  <39.131863, 31.544537, 49.368393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233078, 31.890774, 49.195549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365457, -0.328035, -0.871111,
		-0.895775, 0.378343, 0.233331,
		0.253038, 0.865592, -0.432113,
		39.308990, 32.150452, 49.065914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557224, 31.754240, 48.989777>,  <39.131863, 31.544537, 49.368393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557224, 31.754240, 48.989777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853199, 31.929716, 48.785797>,  <39.030785, 32.035000, 48.663410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853199, 31.929716, 48.785797>,  <38.557224, 31.754240, 48.989777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853199, 31.929716, 48.785797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398248, -0.325260, -0.857674,
		-0.542116, 0.837710, -0.065966,
		0.739938, 0.438688, -0.509945,
		39.075180, 32.061321, 48.632812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322060, 31.990541, 48.407310>,  <38.557224, 31.754240, 48.989777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322060, 31.990541, 48.407310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707844, 32.009052, 48.303249>,  <38.939312, 32.020161, 48.240814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707844, 32.009052, 48.303249>,  <38.322060, 31.990541, 48.407310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707844, 32.009052, 48.303249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, -0.277769, -0.930767,
		-0.115337, 0.959532, -0.256894,
		0.964459, 0.046279, -0.260150,
		38.997181, 32.022938, 48.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316105, 32.371574, 47.800407>,  <38.322060, 31.990541, 48.407310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316105, 32.371574, 47.800407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676056, 32.198463, 47.778770>,  <38.892025, 32.094597, 47.765789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676056, 32.198463, 47.778770>,  <38.316105, 32.371574, 47.800407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676056, 32.198463, 47.778770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129070, -0.145769, -0.980863,
		0.416611, 0.889637, -0.187033,
		0.899876, -0.432779, -0.054096,
		38.946018, 32.068630, 47.762543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609955, 32.613827, 47.201698>,  <38.316105, 32.371574, 47.800407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609955, 32.613827, 47.201698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800461, 32.271858, 47.283947>,  <38.914764, 32.066677, 47.333298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800461, 32.271858, 47.283947>,  <38.609955, 32.613827, 47.201698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800461, 32.271858, 47.283947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244097, -0.353202, -0.903142,
		0.844744, 0.379939, -0.376901,
		0.476261, -0.854923, 0.205623,
		38.943340, 32.015381, 47.345634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995926, 32.483425, 46.623508>,  <38.609955, 32.613827, 47.201698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995926, 32.483425, 46.623508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998451, 32.122032, 46.794937>,  <38.999966, 31.905195, 46.897797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998451, 32.122032, 46.794937>,  <38.995926, 32.483425, 46.623508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998451, 32.122032, 46.794937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056226, -0.428227, -0.901921,
		0.998398, -0.018405, -0.053501,
		0.006311, -0.903484, 0.428575,
		39.000343, 31.850986, 46.923512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433174, 32.087879, 46.228241>,  <38.995926, 32.483425, 46.623508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433174, 32.087879, 46.228241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194614, 31.828768, 46.417847>,  <39.051479, 31.673302, 46.531612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194614, 31.828768, 46.417847>,  <39.433174, 32.087879, 46.228241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194614, 31.828768, 46.417847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090880, -0.532247, -0.841697,
		0.797527, -0.545065, 0.258561,
		-0.596398, -0.647778, 0.474017,
		39.015694, 31.634434, 46.560051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596729, 31.471376, 45.845608>,  <39.433174, 32.087879, 46.228241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596729, 31.471376, 45.845608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262859, 31.392076, 46.051140>,  <39.062538, 31.344498, 46.174458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262859, 31.392076, 46.051140>,  <39.596729, 31.471376, 45.845608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262859, 31.392076, 46.051140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310628, -0.600953, -0.736455,
		0.454787, -0.774308, 0.440017,
		-0.834673, -0.198248, 0.513828,
		39.012459, 31.332602, 46.205288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444756, 30.699673, 45.716850>,  <39.596729, 31.471376, 45.845608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444756, 30.699673, 45.716850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102890, 30.879345, 45.820988>,  <38.897770, 30.987148, 45.883469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102890, 30.879345, 45.820988>,  <39.444756, 30.699673, 45.716850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102890, 30.879345, 45.820988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405317, -0.263915, -0.875253,
		-0.324445, -0.853569, 0.407622,
		-0.854666, 0.449187, 0.260340,
		38.846489, 31.014099, 45.899090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941090, 30.196556, 45.698845>,  <39.444756, 30.699673, 45.716850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941090, 30.196556, 45.698845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716625, 30.527582, 45.692738>,  <38.581947, 30.726198, 45.689072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716625, 30.527582, 45.692738>,  <38.941090, 30.196556, 45.698845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716625, 30.527582, 45.692738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589143, -0.412314, -0.694916,
		-0.581383, -0.380965, 0.718929,
		-0.561163, 0.827564, -0.015270,
		38.548275, 30.775852, 45.688156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317490, 29.897280, 45.662716>,  <38.941090, 30.196556, 45.698845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317490, 29.897280, 45.662716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255547, 30.271999, 45.537224>,  <38.218380, 30.496830, 45.461929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255547, 30.271999, 45.537224>,  <38.317490, 29.897280, 45.662716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255547, 30.271999, 45.537224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435930, -0.349771, -0.829232,
		-0.886558, 0.008353, 0.462543,
		-0.154857, 0.936798, -0.313733,
		38.209091, 30.553040, 45.443104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625153, 29.883900, 45.394245>,  <38.317490, 29.897280, 45.662716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625153, 29.883900, 45.394245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808437, 30.205729, 45.243141>,  <37.918407, 30.398827, 45.152477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808437, 30.205729, 45.243141>,  <37.625153, 29.883900, 45.394245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808437, 30.205729, 45.243141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428279, -0.172565, -0.887017,
		-0.778859, 0.568227, 0.265511,
		0.458209, 0.804574, -0.377763,
		37.945900, 30.447102, 45.129814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081848, 30.361162, 45.076878>,  <37.625153, 29.883900, 45.394245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081848, 30.361162, 45.076878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433826, 30.435413, 44.901955>,  <37.645016, 30.479963, 44.797001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433826, 30.435413, 44.901955>,  <37.081848, 30.361162, 45.076878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433826, 30.435413, 44.901955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409405, -0.170655, -0.896250,
		-0.240997, 0.967687, -0.074170,
		0.879947, 0.185628, -0.437304,
		37.697811, 30.491102, 44.770763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983913, 30.951347, 44.551880>,  <37.081848, 30.361162, 45.076878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983913, 30.951347, 44.551880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318920, 30.757328, 44.451248>,  <37.519924, 30.640917, 44.390869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318920, 30.757328, 44.451248>,  <36.983913, 30.951347, 44.551880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318920, 30.757328, 44.451248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369410, -0.163377, -0.914792,
		0.402617, 0.859090, -0.316013,
		0.837518, -0.485049, -0.251578,
		37.570175, 30.611813, 44.375774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125515, 31.130497, 43.786537>,  <36.983913, 30.951347, 44.551880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125515, 31.130497, 43.786537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359718, 30.813065, 43.852764>,  <37.500240, 30.622604, 43.892502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359718, 30.813065, 43.852764>,  <37.125515, 31.130497, 43.786537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359718, 30.813065, 43.852764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301128, -0.402526, -0.864462,
		0.752666, 0.456289, -0.474650,
		0.585504, -0.793582, 0.165567,
		37.535370, 30.574989, 43.902435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625248, 31.025282, 43.274902>,  <37.125515, 31.130497, 43.786537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625248, 31.025282, 43.274902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537849, 30.664309, 43.423428>,  <37.485409, 30.447725, 43.512543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537849, 30.664309, 43.423428>,  <37.625248, 31.025282, 43.274902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537849, 30.664309, 43.423428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201676, -0.330536, -0.921994,
		0.954770, -0.276339, -0.109778,
		-0.218497, -0.902431, 0.371317,
		37.472301, 30.393579, 43.534824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772232, 30.542742, 42.780334>,  <37.625248, 31.025282, 43.274902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772232, 30.542742, 42.780334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536873, 30.316299, 43.011265>,  <37.395657, 30.180435, 43.149822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536873, 30.316299, 43.011265>,  <37.772232, 30.542742, 42.780334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536873, 30.316299, 43.011265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480909, -0.328977, -0.812712,
		0.650009, -0.755843, -0.078674,
		-0.588401, -0.566105, 0.577330,
		37.360352, 30.146467, 43.184464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677891, 29.885988, 42.418941>,  <37.772232, 30.542742, 42.780334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677891, 29.885988, 42.418941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375885, 29.911493, 42.679985>,  <37.194683, 29.926796, 42.836609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375885, 29.911493, 42.679985>,  <37.677891, 29.885988, 42.418941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375885, 29.911493, 42.679985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638319, -0.299181, -0.709253,
		0.150025, -0.952064, 0.266584,
		-0.755011, 0.063760, 0.652604,
		37.149380, 29.930622, 42.875767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250668, 29.270369, 42.228657>,  <37.677891, 29.885988, 42.418941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250668, 29.270369, 42.228657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027412, 29.536972, 42.426342>,  <36.893459, 29.696934, 42.544952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027412, 29.536972, 42.426342>,  <37.250668, 29.270369, 42.228657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027412, 29.536972, 42.426342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739358, -0.129163, -0.660807,
		-0.376600, -0.734222, 0.564880,
		-0.558141, 0.666509, 0.494210,
		36.859970, 29.736925, 42.574604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594376, 29.181879, 41.943626>,  <37.250668, 29.270369, 42.228657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594376, 29.181879, 41.943626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507713, 29.496853, 42.174454>,  <36.455715, 29.685837, 42.312950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507713, 29.496853, 42.174454>,  <36.594376, 29.181879, 41.943626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507713, 29.496853, 42.174454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779557, 0.216283, -0.587804,
		-0.587666, -0.577210, 0.566989,
		-0.216656, 0.787433, 0.577070,
		36.442715, 29.733082, 42.347576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815666, 29.112534, 42.104641>,  <36.594376, 29.181879, 41.943626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815666, 29.112534, 42.104641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938206, 29.489779, 42.156319>,  <36.011730, 29.716125, 42.187325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938206, 29.489779, 42.156319>,  <35.815666, 29.112534, 42.104641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938206, 29.489779, 42.156319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768891, 0.325175, -0.550516,
		-0.561208, 0.069314, 0.824767,
		0.306353, 0.943110, 0.129196,
		36.030113, 29.772711, 42.195076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171154, 29.475788, 42.221493>,  <35.815666, 29.112534, 42.104641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171154, 29.475788, 42.221493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434479, 29.750820, 42.098946>,  <35.592472, 29.915838, 42.025417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434479, 29.750820, 42.098946>,  <35.171154, 29.475788, 42.221493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434479, 29.750820, 42.098946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737502, 0.507640, -0.445414,
		-0.150730, 0.519171, 0.841274,
		0.658310, 0.687578, -0.306373,
		35.631973, 29.957094, 42.007034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878922, 30.142118, 42.425236>,  <35.171154, 29.475788, 42.221493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878922, 30.142118, 42.425236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141548, 30.214422, 42.132320>,  <35.299122, 30.257805, 41.956570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141548, 30.214422, 42.132320>,  <34.878922, 30.142118, 42.425236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141548, 30.214422, 42.132320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695748, 0.520088, -0.495422,
		0.291303, 0.834766, 0.467235,
		0.656565, 0.180760, -0.732290,
		35.338516, 30.268650, 41.912632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628464, 30.776220, 42.212940>,  <34.878922, 30.142118, 42.425236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628464, 30.776220, 42.212940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852448, 30.607315, 41.927807>,  <34.986839, 30.505972, 41.756725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852448, 30.607315, 41.927807>,  <34.628464, 30.776220, 42.212940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852448, 30.607315, 41.927807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687903, 0.242573, -0.684067,
		0.461773, 0.873413, -0.154647,
		0.559960, -0.422265, -0.712837,
		35.020435, 30.480635, 41.713955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727791, 31.332865, 41.717438>,  <34.628464, 30.776220, 42.212940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727791, 31.332865, 41.717438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815662, 30.988358, 41.534153>,  <34.868385, 30.781652, 41.424183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815662, 30.988358, 41.534153>,  <34.727791, 31.332865, 41.717438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815662, 30.988358, 41.534153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474828, 0.315904, -0.821428,
		0.852220, 0.398023, -0.339556,
		0.219680, -0.861268, -0.458212,
		34.881565, 30.729977, 41.396690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827721, 31.658928, 41.044952>,  <34.727791, 31.332865, 41.717438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827721, 31.658928, 41.044952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740368, 31.271343, 40.998611>,  <34.687958, 31.038792, 40.970806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740368, 31.271343, 40.998611>,  <34.827721, 31.658928, 41.044952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740368, 31.271343, 40.998611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494550, 0.212230, -0.842840,
		0.841267, -0.126767, -0.525547,
		-0.218382, -0.968962, -0.115849,
		34.674854, 30.980654, 40.963856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022362, 31.541245, 40.356201>,  <34.827721, 31.658928, 41.044952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022362, 31.541245, 40.356201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785782, 31.235668, 40.459412>,  <34.643833, 31.052322, 40.521339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785782, 31.235668, 40.459412>,  <35.022362, 31.541245, 40.356201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785782, 31.235668, 40.459412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558354, 0.157151, -0.814582,
		0.581743, -0.625858, -0.519497,
		-0.591452, -0.763941, 0.258028,
		34.608345, 31.006487, 40.536819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704002, 31.695000, 39.938995>,  <35.022362, 31.541245, 40.356201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704002, 31.695000, 39.938995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933559, 31.726719, 39.612965>,  <36.071293, 31.745750, 39.417347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933559, 31.726719, 39.612965>,  <35.704002, 31.695000, 39.938995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933559, 31.726719, 39.612965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803362, -0.247653, 0.541551,
		-0.158913, -0.965598, -0.205831,
		0.573895, 0.079297, -0.815081,
		36.105728, 31.750507, 39.368439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173019, 31.063330, 40.011730>,  <35.704002, 31.695000, 39.938995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173019, 31.063330, 40.011730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316170, 31.350330, 39.772694>,  <36.402061, 31.522530, 39.629272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316170, 31.350330, 39.772694>,  <36.173019, 31.063330, 40.011730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316170, 31.350330, 39.772694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903563, -0.104636, 0.415481,
		0.235578, -0.688655, -0.685753,
		0.357878, 0.717500, -0.597593,
		36.423534, 31.565580, 39.593414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971924, 30.882250, 39.836189>,  <36.173019, 31.063330, 40.011730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971924, 30.882250, 39.836189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943783, 31.268204, 39.734959>,  <36.926899, 31.499777, 39.674221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943783, 31.268204, 39.734959>,  <36.971924, 30.882250, 39.836189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943783, 31.268204, 39.734959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956290, 0.137423, 0.258117,
		0.283831, -0.223852, -0.932379,
		-0.070351, 0.964886, -0.253072,
		36.922676, 31.557669, 39.659039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700565, 31.011539, 39.603569>,  <36.971924, 30.882250, 39.836189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700565, 31.011539, 39.603569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548046, 31.380205, 39.632275>,  <37.456535, 31.601404, 39.649498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548046, 31.380205, 39.632275>,  <37.700565, 31.011539, 39.603569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548046, 31.380205, 39.632275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872286, 0.332988, 0.358100,
		0.306152, 0.199139, -0.930921,
		-0.381297, 0.921663, 0.071762,
		37.433659, 31.656704, 39.653805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189129, 31.382105, 39.335667>,  <37.700565, 31.011539, 39.603569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189129, 31.382105, 39.335667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974575, 31.627728, 39.567261>,  <37.845844, 31.775101, 39.706219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974575, 31.627728, 39.567261>,  <38.189129, 31.382105, 39.335667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974575, 31.627728, 39.567261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838833, 0.312272, 0.445921,
		0.093019, 0.724859, -0.682589,
		-0.536383, 0.614057, 0.578989,
		37.813660, 31.811945, 39.740959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678585, 32.000839, 39.387852>,  <38.189129, 31.382105, 39.335667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678585, 32.000839, 39.387852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404209, 32.035870, 39.676800>,  <38.239582, 32.056889, 39.850170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404209, 32.035870, 39.676800>,  <38.678585, 32.000839, 39.387852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404209, 32.035870, 39.676800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715178, 0.264215, 0.647078,
		-0.134190, 0.960479, -0.243871,
		-0.685940, 0.087580, 0.722369,
		38.198429, 32.062145, 39.893509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785824, 32.619175, 39.764076>,  <38.678585, 32.000839, 39.387852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785824, 32.619175, 39.764076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550270, 32.412014, 40.012264>,  <38.408936, 32.287716, 40.161179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550270, 32.412014, 40.012264>,  <38.785824, 32.619175, 39.764076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550270, 32.412014, 40.012264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556318, 0.297146, 0.776025,
		-0.586276, 0.802173, 0.113133,
		-0.588889, -0.517903, 0.620473,
		38.373604, 32.256641, 40.198406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688541, 33.059532, 40.235043>,  <38.785824, 32.619175, 39.764076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688541, 33.059532, 40.235043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623566, 32.691704, 40.378151>,  <38.584579, 32.471004, 40.464016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623566, 32.691704, 40.378151>,  <38.688541, 33.059532, 40.235043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623566, 32.691704, 40.378151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615088, 0.189148, 0.765434,
		-0.771545, 0.344393, 0.534895,
		-0.162436, -0.919574, 0.357768,
		38.574837, 32.415833, 40.485481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762150, 33.117245, 40.919052>,  <38.688541, 33.059532, 40.235043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762150, 33.117245, 40.919052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795013, 32.721230, 40.873314>,  <38.814732, 32.483620, 40.845871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795013, 32.721230, 40.873314>,  <38.762150, 33.117245, 40.919052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795013, 32.721230, 40.873314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430822, -0.068183, 0.899857,
		-0.898689, -0.123192, 0.420929,
		0.082154, -0.990038, -0.114349,
		38.819660, 32.424217, 40.839008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611511, 32.822861, 41.573898>,  <38.762150, 33.117245, 40.919052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611511, 32.822861, 41.573898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833843, 32.555882, 41.375679>,  <38.967243, 32.395695, 41.256748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833843, 32.555882, 41.375679>,  <38.611511, 32.822861, 41.573898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833843, 32.555882, 41.375679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617940, -0.067008, 0.783365,
		-0.556062, -0.741634, 0.375198,
		0.555829, -0.667449, -0.495546,
		39.000591, 32.355648, 41.227016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728111, 32.255779, 42.020863>,  <38.611511, 32.822861, 41.573898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728111, 32.255779, 42.020863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030975, 32.269817, 41.759949>,  <39.212692, 32.278240, 41.603401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030975, 32.269817, 41.759949>,  <38.728111, 32.255779, 42.020863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030975, 32.269817, 41.759949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652509, 0.006235, 0.757755,
		0.030662, -0.999364, -0.018180,
		0.757160, 0.035097, -0.652286,
		39.258125, 32.280346, 41.564262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184776, 31.849850, 42.250072>,  <38.728111, 32.255779, 42.020863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184776, 31.849850, 42.250072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409752, 32.057766, 41.992863>,  <39.544739, 32.182514, 41.838535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409752, 32.057766, 41.992863>,  <39.184776, 31.849850, 42.250072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409752, 32.057766, 41.992863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745033, 0.018685, 0.666766,
		0.358594, -0.854089, -0.376752,
		0.562438, 0.519791, -0.643025,
		39.578484, 32.213703, 41.799953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827087, 31.415104, 42.281094>,  <39.184776, 31.849850, 42.250072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827087, 31.415104, 42.281094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934643, 31.769611, 42.130241>,  <39.999176, 31.982315, 42.039730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934643, 31.769611, 42.130241>,  <39.827087, 31.415104, 42.281094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934643, 31.769611, 42.130241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754540, 0.049533, 0.654382,
		0.598638, -0.460519, -0.655405,
		0.268891, 0.886267, -0.377132,
		40.015308, 32.035492, 42.017101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548820, 31.390734, 42.185440>,  <39.827087, 31.415104, 42.281094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548820, 31.390734, 42.185440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488930, 31.784029, 42.227055>,  <40.452995, 32.020008, 42.252026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488930, 31.784029, 42.227055>,  <40.548820, 31.390734, 42.185440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488930, 31.784029, 42.227055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682854, 0.026732, 0.730066,
		0.715047, 0.180355, -0.675411,
		-0.149726, 0.983238, 0.104041,
		40.444012, 32.079002, 42.258266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195934, 31.618053, 42.371330>,  <40.548820, 31.390734, 42.185440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195934, 31.618053, 42.371330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957848, 31.924961, 42.466843>,  <40.814995, 32.109104, 42.524151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957848, 31.924961, 42.466843>,  <41.195934, 31.618053, 42.371330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957848, 31.924961, 42.466843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562315, 0.185435, 0.805863,
		0.574036, 0.613932, -0.541821,
		-0.595218, 0.767268, 0.238777,
		40.779282, 32.155140, 42.538475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713604, 32.105328, 42.617058>,  <41.195934, 31.618053, 42.371330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713604, 32.105328, 42.617058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352959, 32.210438, 42.754490>,  <41.136574, 32.273502, 42.836948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352959, 32.210438, 42.754490>,  <41.713604, 32.105328, 42.617058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352959, 32.210438, 42.754490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404675, 0.231893, 0.884570,
		0.152766, 0.936577, -0.315415,
		-0.901610, 0.262773, 0.343583,
		41.082474, 32.289268, 42.857567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780499, 32.766140, 42.976326>,  <41.713604, 32.105328, 42.617058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780499, 32.766140, 42.976326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444267, 32.584976, 43.095184>,  <41.242527, 32.476276, 43.166500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444267, 32.584976, 43.095184>,  <41.780499, 32.766140, 42.976326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444267, 32.584976, 43.095184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299148, 0.069191, 0.951695,
		-0.451596, 0.888865, 0.077328,
		-0.840578, -0.452914, 0.297149,
		41.192093, 32.449100, 43.184330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527710, 33.160828, 43.501511>,  <41.780499, 32.766140, 42.976326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527710, 33.160828, 43.501511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359440, 32.801945, 43.555244>,  <41.258476, 32.586613, 43.587486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359440, 32.801945, 43.555244>,  <41.527710, 33.160828, 43.501511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359440, 32.801945, 43.555244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151748, 0.076399, 0.985462,
		-0.894430, 0.434944, 0.104011,
		-0.420674, -0.897211, 0.134336,
		41.233238, 32.532780, 43.595547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122349, 33.302551, 44.072468>,  <41.527710, 33.160828, 43.501511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122349, 33.302551, 44.072468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119762, 32.902580, 44.068501>,  <41.118210, 32.662598, 44.066120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119762, 32.902580, 44.068501>,  <41.122349, 33.302551, 44.072468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119762, 32.902580, 44.068501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019948, -0.009789, 0.999753,
		-0.999780, 0.006666, -0.019883,
		-0.006469, -0.999930, -0.009920,
		41.117821, 32.602600, 44.065525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508759, 33.063572, 44.473244>,  <41.122349, 33.302551, 44.072468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508759, 33.063572, 44.473244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764595, 32.757271, 44.446285>,  <40.918098, 32.573490, 44.430111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764595, 32.757271, 44.446285>,  <40.508759, 33.063572, 44.473244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764595, 32.757271, 44.446285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011604, -0.078048, 0.996882,
		-0.768629, -0.638377, -0.041033,
		0.639590, -0.765756, -0.067398,
		40.956470, 32.527542, 44.426067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232468, 32.478043, 44.893261>,  <40.508759, 33.063572, 44.473244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232468, 32.478043, 44.893261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617069, 32.381947, 44.839916>,  <40.847832, 32.324287, 44.807911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617069, 32.381947, 44.839916>,  <40.232468, 32.478043, 44.893261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617069, 32.381947, 44.839916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097878, -0.154038, 0.983205,
		-0.256752, -0.958412, -0.124595,
		0.961508, -0.240245, -0.133357,
		40.905521, 32.309872, 44.799908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318417, 31.877247, 45.250618>,  <40.232468, 32.478043, 44.893261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318417, 31.877247, 45.250618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687302, 32.028461, 45.218086>,  <40.908634, 32.119190, 45.198566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687302, 32.028461, 45.218086>,  <40.318417, 31.877247, 45.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687302, 32.028461, 45.218086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147581, -0.149687, 0.977657,
		0.357416, -0.913609, -0.193834,
		0.922211, 0.378036, -0.081330,
		40.963966, 32.141872, 45.193687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744488, 31.348969, 45.691753>,  <40.318417, 31.877247, 45.250618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744488, 31.348969, 45.691753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919029, 31.707170, 45.656727>,  <41.023754, 31.922091, 45.635712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919029, 31.707170, 45.656727>,  <40.744488, 31.348969, 45.691753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919029, 31.707170, 45.656727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224455, -0.014090, 0.974382,
		0.871329, -0.444831, -0.207149,
		0.436354, 0.895503, -0.087568,
		41.049934, 31.975822, 45.630455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198486, 31.386276, 46.241287>,  <40.744488, 31.348969, 45.691753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198486, 31.386276, 46.241287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214382, 31.773495, 46.142246>,  <41.223919, 32.005825, 46.082821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214382, 31.773495, 46.142246>,  <41.198486, 31.386276, 46.241287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214382, 31.773495, 46.142246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288251, 0.226155, 0.930465,
		0.956730, -0.108349, -0.270052,
		0.039741, 0.968047, -0.247601,
		41.226303, 32.063908, 46.067966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873066, 31.563915, 46.403328>,  <41.198486, 31.386276, 46.241287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873066, 31.563915, 46.403328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721771, 31.933601, 46.424381>,  <41.630997, 32.155411, 46.437012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721771, 31.933601, 46.424381>,  <41.873066, 31.563915, 46.403328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721771, 31.933601, 46.424381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238912, 0.042526, 0.970110,
		0.894350, 0.379502, -0.236890,
		-0.378232, 0.924213, 0.052634,
		41.608303, 32.210865, 46.440170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179970, 31.989855, 46.937954>,  <41.873066, 31.563915, 46.403328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179970, 31.989855, 46.937954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863182, 32.227333, 46.880951>,  <41.673107, 32.369820, 46.846748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863182, 32.227333, 46.880951>,  <42.179970, 31.989855, 46.937954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863182, 32.227333, 46.880951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225738, 0.501587, 0.835136,
		0.567295, 0.629235, -0.531262,
		-0.791971, 0.593695, -0.142506,
		41.625591, 32.405441, 46.838200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349892, 32.736305, 47.036205>,  <42.179970, 31.989855, 46.937954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349892, 32.736305, 47.036205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957237, 32.736687, 47.112503>,  <41.721645, 32.736916, 47.158283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957237, 32.736687, 47.112503>,  <42.349892, 32.736305, 47.036205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957237, 32.736687, 47.112503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148763, 0.629711, 0.762453,
		-0.119388, 0.776829, -0.618290,
		-0.981639, 0.000951, 0.190743,
		41.662746, 32.736973, 47.169727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151386, 33.442863, 47.157154>,  <42.349892, 32.736305, 47.036205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151386, 33.442863, 47.157154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875511, 33.215252, 47.336281>,  <41.709988, 33.078686, 47.443756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875511, 33.215252, 47.336281>,  <42.151386, 33.442863, 47.157154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875511, 33.215252, 47.336281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058537, 0.572598, 0.817743,
		-0.721738, 0.590200, -0.361604,
		-0.689687, -0.569029, 0.447814,
		41.668606, 33.044544, 47.470627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677425, 33.820641, 47.371750>,  <42.151386, 33.442863, 47.157154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677425, 33.820641, 47.371750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686096, 33.496254, 47.605625>,  <41.691299, 33.301620, 47.745953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686096, 33.496254, 47.605625>,  <41.677425, 33.820641, 47.371750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686096, 33.496254, 47.605625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100832, 0.583621, 0.805742,
		-0.994667, 0.041490, 0.094422,
		0.021677, -0.810966, 0.584692,
		41.692600, 33.252964, 47.781033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047752, 33.843113, 47.886517>,  <41.677425, 33.820641, 47.371750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047752, 33.843113, 47.886517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340607, 33.610397, 48.028217>,  <41.516319, 33.470768, 48.113239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340607, 33.610397, 48.028217>,  <41.047752, 33.843113, 47.886517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340607, 33.610397, 48.028217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002387, 0.517878, 0.855451,
		-0.681155, -0.627152, 0.377768,
		0.732135, -0.581793, 0.354252,
		41.560246, 33.435860, 48.134495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036572, 33.950787, 48.636860>,  <41.047752, 33.843113, 47.886517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036572, 33.950787, 48.636860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369881, 33.730152, 48.621887>,  <41.569866, 33.597771, 48.612904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369881, 33.730152, 48.621887>,  <41.036572, 33.950787, 48.636860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369881, 33.730152, 48.621887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315889, 0.419463, 0.851038,
		-0.453724, -0.720972, 0.523769,
		0.833276, -0.551589, -0.037427,
		41.619865, 33.564674, 48.610661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998150, 33.447712, 49.187119>,  <41.036572, 33.950787, 48.636860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998150, 33.447712, 49.187119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381145, 33.519260, 49.096592>,  <41.610943, 33.562187, 49.042274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381145, 33.519260, 49.096592>,  <40.998150, 33.447712, 49.187119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381145, 33.519260, 49.096592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179582, 0.244372, 0.952907,
		0.225744, -0.953043, 0.201864,
		0.957491, 0.178862, -0.226315,
		41.668392, 33.572922, 49.028698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506535, 33.055611, 49.595970>,  <40.998150, 33.447712, 49.187119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506535, 33.055611, 49.595970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743713, 33.357841, 49.484596>,  <41.886021, 33.539181, 49.417770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743713, 33.357841, 49.484596>,  <41.506535, 33.055611, 49.595970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743713, 33.357841, 49.484596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175096, 0.216528, 0.960446,
		0.785977, -0.618244, -0.003909,
		0.592943, 0.755573, -0.278438,
		41.921597, 33.584515, 49.401066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070679, 33.052433, 50.061218>,  <41.506535, 33.055611, 49.595970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070679, 33.052433, 50.061218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071915, 33.413490, 49.889069>,  <42.072659, 33.630127, 49.785778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071915, 33.413490, 49.889069>,  <42.070679, 33.052433, 50.061218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071915, 33.413490, 49.889069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155706, 0.424693, 0.891848,
		0.987799, -0.069771, -0.139233,
		0.003094, 0.902645, -0.430375,
		42.072842, 33.684284, 49.759956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743488, 33.357010, 50.181789>,  <42.070679, 33.052433, 50.061218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743488, 33.357010, 50.181789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472321, 33.646763, 50.131691>,  <42.309620, 33.820614, 50.101631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472321, 33.646763, 50.131691>,  <42.743488, 33.357010, 50.181789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472321, 33.646763, 50.131691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235544, 0.375432, 0.896420,
		0.696377, 0.578201, -0.425138,
		-0.677921, 0.724386, -0.125250,
		42.268944, 33.864079, 50.094116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864822, 33.698956, 50.826248>,  <42.743488, 33.357010, 50.181789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864822, 33.698956, 50.826248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577595, 33.898808, 50.632442>,  <42.405258, 34.018719, 50.516159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577595, 33.898808, 50.632442>,  <42.864822, 33.698956, 50.826248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577595, 33.898808, 50.632442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117918, 0.598757, 0.792203,
		0.685914, 0.625986, -0.371030,
		-0.718065, 0.499632, -0.484511,
		42.362175, 34.048698, 50.487091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949265, 34.362576, 51.024017>,  <42.864822, 33.698956, 50.826248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949265, 34.362576, 51.024017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574200, 34.320015, 50.891674>,  <42.349159, 34.294479, 50.812267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574200, 34.320015, 50.891674>,  <42.949265, 34.362576, 51.024017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574200, 34.320015, 50.891674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340550, 0.471298, 0.813575,
		0.069370, 0.875533, -0.478153,
		-0.937664, -0.106397, -0.330857,
		42.292900, 34.288097, 50.792416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642391, 35.007965, 51.182926>,  <42.949265, 34.362576, 51.024017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642391, 35.007965, 51.182926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326618, 34.764759, 51.149189>,  <42.137154, 34.618835, 51.128948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326618, 34.764759, 51.149189>,  <42.642391, 35.007965, 51.182926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326618, 34.764759, 51.149189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401307, 0.407245, 0.820429,
		-0.464483, 0.681523, -0.565493,
		-0.789435, -0.608012, -0.084341,
		42.089787, 34.582355, 51.123886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107403, 35.417683, 51.338287>,  <42.642391, 35.007965, 51.182926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107403, 35.417683, 51.338287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001152, 35.039402, 51.413208>,  <41.937401, 34.812431, 51.458160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001152, 35.039402, 51.413208>,  <42.107403, 35.417683, 51.338287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001152, 35.039402, 51.413208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392662, 0.283566, 0.874875,
		-0.880486, 0.158847, -0.446667,
		-0.265631, -0.945705, 0.187303,
		41.921463, 34.755692, 51.469398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546082, 35.934895, 51.391914>,  <42.107403, 35.417683, 51.338287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546082, 35.934895, 51.391914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622749, 36.326969, 51.411873>,  <41.668751, 36.562214, 51.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622749, 36.326969, 51.411873>,  <41.546082, 35.934895, 51.391914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622749, 36.326969, 51.411873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411281, 0.126370, -0.902707,
		-0.891130, 0.152500, 0.427354,
		0.191667, 0.980191, 0.049892,
		41.680248, 36.621025, 51.426842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051239, 36.266953, 51.103416>,  <41.546082, 35.934895, 51.391914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051239, 36.266953, 51.103416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308838, 36.572956, 51.105682>,  <41.463398, 36.756557, 51.107044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308838, 36.572956, 51.105682>,  <41.051239, 36.266953, 51.103416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308838, 36.572956, 51.105682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332119, 0.286244, -0.898755,
		-0.689176, 0.576913, 0.438414,
		0.643997, 0.765007, 0.005669,
		41.502037, 36.802460, 51.107384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695698, 36.929268, 50.944935>,  <41.051239, 36.266953, 51.103416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695698, 36.929268, 50.944935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072781, 36.950535, 50.813194>,  <41.299030, 36.963295, 50.734150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072781, 36.950535, 50.813194>,  <40.695698, 36.929268, 50.944935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072781, 36.950535, 50.813194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332843, 0.216935, -0.917690,
		0.022652, 0.974737, 0.222205,
		0.942710, 0.053172, -0.329348,
		41.355595, 36.966488, 50.714390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674896, 37.478558, 50.424736>,  <40.695698, 36.929268, 50.944935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674896, 37.478558, 50.424736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026165, 37.298916, 50.358875>,  <41.236927, 37.191132, 50.319359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026165, 37.298916, 50.358875>,  <40.674896, 37.478558, 50.424736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026165, 37.298916, 50.358875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142159, 0.083629, -0.986305,
		0.456728, 0.889555, 0.009596,
		0.878174, -0.449109, -0.164654,
		41.289616, 37.164185, 50.309479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007626, 37.933544, 50.048080>,  <40.674896, 37.478558, 50.424736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007626, 37.933544, 50.048080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198479, 37.587734, 49.984909>,  <41.312992, 37.380249, 49.947006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198479, 37.587734, 49.984909>,  <41.007626, 37.933544, 50.048080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198479, 37.587734, 49.984909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150317, 0.096773, -0.983890,
		0.865881, 0.493185, -0.083779,
		0.477132, -0.864525, -0.157928,
		41.341618, 37.328377, 49.937531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413597, 38.029949, 49.425438>,  <41.007626, 37.933544, 50.048080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413597, 38.029949, 49.425438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399597, 37.631943, 49.462799>,  <41.391197, 37.393139, 49.485218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399597, 37.631943, 49.462799>,  <41.413597, 38.029949, 49.425438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399597, 37.631943, 49.462799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058130, -0.091278, -0.994127,
		0.997695, -0.040228, -0.054645,
		-0.035003, -0.995013, 0.093406,
		41.389095, 37.333439, 49.490822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911007, 37.720615, 48.964787>,  <41.413597, 38.029949, 49.425438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911007, 37.720615, 48.964787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665440, 37.416576, 49.049969>,  <41.518097, 37.234154, 49.101078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665440, 37.416576, 49.049969>,  <41.911007, 37.720615, 48.964787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665440, 37.416576, 49.049969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038795, -0.240399, -0.969899,
		0.788414, -0.603702, 0.118098,
		-0.613920, -0.760100, 0.212954,
		41.481262, 37.188545, 49.113853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150425, 37.194202, 48.522179>,  <41.911007, 37.720615, 48.964787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150425, 37.194202, 48.522179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784275, 37.072525, 48.627678>,  <41.564587, 36.999519, 48.690975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784275, 37.072525, 48.627678>,  <42.150425, 37.194202, 48.522179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784275, 37.072525, 48.627678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112154, -0.436498, -0.892688,
		0.386676, -0.846720, 0.365441,
		-0.915371, -0.304196, 0.263747,
		41.509663, 36.981266, 48.706802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166985, 36.510071, 48.224323>,  <42.150425, 37.194202, 48.522179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166985, 36.510071, 48.224323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798450, 36.643101, 48.304855>,  <41.577328, 36.722919, 48.353172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798450, 36.643101, 48.304855>,  <42.166985, 36.510071, 48.224323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798450, 36.643101, 48.304855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310499, -0.317873, -0.895850,
		-0.233939, -0.887892, 0.396132,
		-0.921338, 0.332572, 0.201327,
		41.522049, 36.742874, 48.365253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619968, 36.003498, 48.284122>,  <42.166985, 36.510071, 48.224323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619968, 36.003498, 48.284122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428650, 36.332119, 48.160000>,  <41.313858, 36.529289, 48.085526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428650, 36.332119, 48.160000>,  <41.619968, 36.003498, 48.284122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428650, 36.332119, 48.160000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268212, -0.473114, -0.839182,
		-0.836239, -0.318149, 0.446637,
		-0.478295, 0.821550, -0.310305,
		41.285160, 36.578583, 48.066910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040344, 35.681530, 47.964321>,  <41.619968, 36.003498, 48.284122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040344, 35.681530, 47.964321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048935, 36.060108, 47.835457>,  <41.054089, 36.287254, 47.758141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048935, 36.060108, 47.835457>,  <41.040344, 35.681530, 47.964321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048935, 36.060108, 47.835457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358531, -0.293506, -0.886177,
		-0.933271, 0.134537, 0.333025,
		0.021479, 0.946443, -0.322156,
		41.055378, 36.344040, 47.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399258, 35.874184, 47.562523>,  <41.040344, 35.681530, 47.964321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399258, 35.874184, 47.562523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643963, 36.170151, 47.450615>,  <40.790787, 36.347729, 47.383472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643963, 36.170151, 47.450615>,  <40.399258, 35.874184, 47.562523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643963, 36.170151, 47.450615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332418, -0.080459, -0.939694,
		-0.717802, 0.667873, 0.196738,
		0.611767, 0.739914, -0.279767,
		40.827492, 36.392124, 47.366684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997276, 36.326061, 47.297363>,  <40.399258, 35.874184, 47.562523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997276, 36.326061, 47.297363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355240, 36.421680, 47.146633>,  <40.570019, 36.479053, 47.056194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355240, 36.421680, 47.146633>,  <39.997276, 36.326061, 47.297363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355240, 36.421680, 47.146633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378500, -0.040718, -0.924705,
		-0.236395, 0.970153, 0.054042,
		0.894905, 0.239051, -0.376828,
		40.623711, 36.493397, 47.033585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956310, 36.840260, 46.725349>,  <39.997276, 36.326061, 47.297363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956310, 36.840260, 46.725349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301876, 36.664471, 46.626953>,  <40.509216, 36.558998, 46.567917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301876, 36.664471, 46.626953>,  <39.956310, 36.840260, 46.725349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301876, 36.664471, 46.626953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275907, -0.004372, -0.961174,
		0.421332, 0.898247, -0.125030,
		0.863918, -0.439470, -0.245991,
		40.561050, 36.532631, 46.553158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945435, 36.879963, 46.073769>,  <39.956310, 36.840260, 46.725349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945435, 36.879963, 46.073769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241226, 36.616241, 46.128159>,  <40.418701, 36.458008, 46.160793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241226, 36.616241, 46.128159>,  <39.945435, 36.879963, 46.073769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241226, 36.616241, 46.128159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028252, -0.232208, -0.972256,
		0.672585, 0.715123, -0.190340,
		0.739481, -0.659302, 0.135976,
		40.463070, 36.418449, 46.168953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379906, 37.037651, 45.583374>,  <39.945435, 36.879963, 46.073769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379906, 37.037651, 45.583374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450417, 36.660896, 45.697754>,  <40.492725, 36.434841, 45.766380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450417, 36.660896, 45.697754>,  <40.379906, 37.037651, 45.583374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450417, 36.660896, 45.697754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131066, -0.265451, -0.955174,
		0.975575, 0.205856, 0.076656,
		0.176280, -0.941891, 0.285948,
		40.503300, 36.378330, 45.783539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059364, 36.815945, 45.319309>,  <40.379906, 37.037651, 45.583374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059364, 36.815945, 45.319309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854183, 36.482670, 45.401943>,  <40.731075, 36.282703, 45.451523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854183, 36.482670, 45.401943>,  <41.059364, 36.815945, 45.319309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854183, 36.482670, 45.401943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202331, -0.351227, -0.914167,
		0.834231, -0.427127, 0.348743,
		-0.512953, -0.833188, 0.206584,
		40.700298, 36.232712, 45.463917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310017, 36.296391, 44.912289>,  <41.059364, 36.815945, 45.319309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310017, 36.296391, 44.912289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988205, 36.076347, 45.001842>,  <40.795120, 35.944321, 45.055573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988205, 36.076347, 45.001842>,  <41.310017, 36.296391, 44.912289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988205, 36.076347, 45.001842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171980, -0.576585, -0.798732,
		0.568474, -0.604096, 0.558484,
		-0.804525, -0.550107, 0.223881,
		40.746849, 35.911316, 45.069008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476128, 35.590481, 44.708309>,  <41.310017, 36.296391, 44.912289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476128, 35.590481, 44.708309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077133, 35.582684, 44.735550>,  <40.837734, 35.578007, 44.751896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077133, 35.582684, 44.735550>,  <41.476128, 35.590481, 44.708309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077133, 35.582684, 44.735550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046020, -0.552610, -0.832168,
		0.053856, -0.833212, 0.550325,
		-0.997488, -0.019491, 0.068105,
		40.777885, 35.576836, 44.755981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253933, 34.903702, 44.558128>,  <41.476128, 35.590481, 44.708309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253933, 34.903702, 44.558128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930561, 35.121048, 44.467617>,  <40.736538, 35.251457, 44.413311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930561, 35.121048, 44.467617>,  <41.253933, 34.903702, 44.558128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930561, 35.121048, 44.467617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131569, -0.541522, -0.830328,
		-0.573707, -0.641486, 0.509270,
		-0.808424, 0.543369, -0.226275,
		40.688034, 35.284058, 44.399734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876770, 34.438305, 44.169518>,  <41.253933, 34.903702, 44.558128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876770, 34.438305, 44.169518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688332, 34.782692, 44.092781>,  <40.575268, 34.989323, 44.046738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688332, 34.782692, 44.092781>,  <40.876770, 34.438305, 44.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688332, 34.782692, 44.092781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321325, -0.370050, -0.871673,
		-0.821472, -0.349000, 0.450980,
		-0.471099, 0.860965, -0.191844,
		40.547001, 35.040981, 44.035229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150684, 34.320637, 44.036659>,  <40.876770, 34.438305, 44.169518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150684, 34.320637, 44.036659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265381, 34.645359, 43.833191>,  <40.334198, 34.840195, 43.711109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265381, 34.645359, 43.833191>,  <40.150684, 34.320637, 44.036659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265381, 34.645359, 43.833191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425094, -0.368017, -0.826957,
		-0.858532, 0.453354, 0.239570,
		0.286738, 0.811809, -0.508673,
		40.351402, 34.888901, 43.680588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639431, 34.221233, 43.465389>,  <40.150684, 34.320637, 44.036659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639431, 34.221233, 43.465389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905083, 34.499088, 43.354820>,  <40.064476, 34.665802, 43.288479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905083, 34.499088, 43.354820>,  <39.639431, 34.221233, 43.465389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905083, 34.499088, 43.354820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283904, -0.107710, -0.952784,
		-0.691611, 0.711253, 0.125676,
		0.664133, 0.694635, -0.276421,
		40.104324, 34.707478, 43.271893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297325, 34.755444, 43.010647>,  <39.639431, 34.221233, 43.465389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297325, 34.755444, 43.010647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688229, 34.744282, 42.926571>,  <39.922771, 34.737583, 42.876125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688229, 34.744282, 42.926571>,  <39.297325, 34.755444, 43.010647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688229, 34.744282, 42.926571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207343, 0.081537, -0.974864,
		0.044340, 0.996280, 0.073897,
		0.977263, -0.027903, -0.210187,
		39.981407, 34.735912, 42.863514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412312, 35.330967, 42.610462>,  <39.297325, 34.755444, 43.010647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412312, 35.330967, 42.610462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727608, 35.089725, 42.561558>,  <39.916786, 34.944981, 42.532215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727608, 35.089725, 42.561558>,  <39.412312, 35.330967, 42.610462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727608, 35.089725, 42.561558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057175, 0.126035, -0.990377,
		0.612708, 0.787644, 0.064863,
		0.788239, -0.603103, -0.122257,
		39.964081, 34.908794, 42.524879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858711, 35.691227, 42.209965>,  <39.412312, 35.330967, 42.610462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858711, 35.691227, 42.209965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987732, 35.313164, 42.189442>,  <40.065144, 35.086327, 42.177128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987732, 35.313164, 42.189442>,  <39.858711, 35.691227, 42.209965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987732, 35.313164, 42.189442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019577, 0.060859, -0.997954,
		0.946349, 0.320888, 0.038134,
		0.322553, -0.945160, -0.051312,
		40.084499, 35.029617, 42.174049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446918, 35.698204, 41.866425>,  <39.858711, 35.691227, 42.209965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446918, 35.698204, 41.866425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384415, 35.309639, 41.794945>,  <40.346912, 35.076500, 41.752056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384415, 35.309639, 41.794945>,  <40.446918, 35.698204, 41.866425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384415, 35.309639, 41.794945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034110, 0.175506, -0.983887,
		0.987127, -0.159836, 0.005711,
		-0.156258, -0.971416, -0.178699,
		40.337536, 35.018215, 41.741337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883011, 35.602039, 41.393749>,  <40.446918, 35.698204, 41.866425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883011, 35.602039, 41.393749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621632, 35.299805, 41.375443>,  <40.464806, 35.118465, 41.364456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621632, 35.299805, 41.375443>,  <40.883011, 35.602039, 41.393749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621632, 35.299805, 41.375443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066234, 0.003163, -0.997799,
		0.754067, -0.655042, 0.047979,
		-0.653449, -0.755585, -0.045771,
		40.425598, 35.073128, 41.361710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079227, 35.176201, 40.829227>,  <40.883011, 35.602039, 41.393749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079227, 35.176201, 40.829227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697964, 35.062794, 40.871376>,  <40.469204, 34.994751, 40.896667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697964, 35.062794, 40.871376>,  <41.079227, 35.176201, 40.829227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697964, 35.062794, 40.871376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098475, -0.038525, -0.994394,
		0.285985, -0.958194, 0.008801,
		-0.953161, -0.283515, 0.105376,
		40.412014, 34.977737, 40.902988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080441, 34.594418, 40.446636>,  <41.079227, 35.176201, 40.829227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080441, 34.594418, 40.446636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700134, 34.715683, 40.472343>,  <40.471951, 34.788441, 40.487770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700134, 34.715683, 40.472343>,  <41.080441, 34.594418, 40.446636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700134, 34.715683, 40.472343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111029, -0.139605, -0.983963,
		-0.289330, -0.942657, 0.166392,
		-0.950768, 0.303164, 0.064270,
		40.414902, 34.806633, 40.491623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577560, 34.145782, 40.164669>,  <41.080441, 34.594418, 40.446636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577560, 34.145782, 40.164669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370499, 34.486820, 40.136040>,  <40.246262, 34.691444, 40.118862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370499, 34.486820, 40.136040>,  <40.577560, 34.145782, 40.164669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370499, 34.486820, 40.136040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180075, -0.190347, -0.965060,
		-0.836428, -0.486675, 0.252064,
		-0.517650, 0.852593, -0.071573,
		40.215202, 34.742599, 40.114567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939667, 34.051167, 39.694271>,  <40.577560, 34.145782, 40.164669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939667, 34.051167, 39.694271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998859, 34.446758, 39.692661>,  <40.034374, 34.684113, 39.691696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998859, 34.446758, 39.692661>,  <39.939667, 34.051167, 39.694271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998859, 34.446758, 39.692661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384906, 0.053844, -0.921384,
		-0.911015, 0.137897, 0.388633,
		0.147981, 0.988982, -0.004025,
		40.043255, 34.743454, 39.691452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347713, 34.286091, 39.435013>,  <39.939667, 34.051167, 39.694271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347713, 34.286091, 39.435013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589592, 34.603584, 39.408688>,  <39.734718, 34.794083, 39.392891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589592, 34.603584, 39.408688>,  <39.347713, 34.286091, 39.435013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589592, 34.603584, 39.408688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210654, 0.079698, -0.974307,
		-0.768097, 0.603019, 0.215396,
		0.604692, 0.793736, -0.065812,
		39.771000, 34.841705, 39.388943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933918, 34.870045, 39.207893>,  <39.347713, 34.286091, 39.435013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933918, 34.870045, 39.207893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310345, 34.951851, 39.100147>,  <39.536201, 35.000935, 39.035500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310345, 34.951851, 39.100147>,  <38.933918, 34.870045, 39.207893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310345, 34.951851, 39.100147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327398, 0.351099, -0.877234,
		-0.084832, 0.913731, 0.397366,
		0.941071, 0.204514, -0.269369,
		39.592667, 35.013206, 39.019337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921993, 35.494450, 38.804691>,  <38.933918, 34.870045, 39.207893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921993, 35.494450, 38.804691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285572, 35.360191, 38.705769>,  <39.503719, 35.279636, 38.646416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285572, 35.360191, 38.705769>,  <38.921993, 35.494450, 38.804691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285572, 35.360191, 38.705769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162886, 0.260132, -0.951735,
		0.383780, 0.905357, 0.181773,
		0.908945, -0.335649, -0.247303,
		39.558254, 35.259495, 38.631577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274384, 36.054501, 38.422226>,  <38.921993, 35.494450, 38.804691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274384, 36.054501, 38.422226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463779, 35.712986, 38.335640>,  <39.577415, 35.508076, 38.283688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463779, 35.712986, 38.335640>,  <39.274384, 36.054501, 38.422226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463779, 35.712986, 38.335640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124790, 0.178260, -0.976038,
		0.871917, 0.489153, -0.022141,
		0.473486, -0.853787, -0.216469,
		39.605824, 35.456848, 38.270699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780209, 36.206825, 37.935326>,  <39.274384, 36.054501, 38.422226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780209, 36.206825, 37.935326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689579, 35.819336, 37.894848>,  <39.635201, 35.586842, 37.870560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689579, 35.819336, 37.894848>,  <39.780209, 36.206825, 37.935326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689579, 35.819336, 37.894848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381195, 0.183804, -0.906039,
		0.896300, -0.166713, -0.410918,
		-0.226577, -0.968722, -0.101194,
		39.621605, 35.528721, 37.864491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691158, 36.134312, 37.202606>,  <39.780209, 36.206825, 37.935326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691158, 36.134312, 37.202606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562855, 35.769863, 37.306114>,  <39.485870, 35.551193, 37.368217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562855, 35.769863, 37.306114>,  <39.691158, 36.134312, 37.202606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562855, 35.769863, 37.306114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497318, -0.070500, -0.864699,
		0.806093, -0.406053, -0.430505,
		-0.320763, -0.911126, 0.258767,
		39.466625, 35.496525, 37.383743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058132, 35.564365, 36.776207>,  <39.691158, 36.134312, 37.202606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058132, 35.564365, 36.776207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704880, 35.426914, 36.903957>,  <39.492928, 35.344444, 36.980606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704880, 35.426914, 36.903957>,  <40.058132, 35.564365, 36.776207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704880, 35.426914, 36.903957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191989, -0.356433, -0.914383,
		0.428044, -0.868835, 0.248804,
		-0.883130, -0.343629, 0.319376,
		39.439941, 35.323826, 36.999771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931671, 34.898949, 36.478416>,  <40.058132, 35.564365, 36.776207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931671, 34.898949, 36.478416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570660, 35.045197, 36.569435>,  <39.354053, 35.132946, 36.624046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570660, 35.045197, 36.569435>,  <39.931671, 34.898949, 36.478416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570660, 35.045197, 36.569435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287315, -0.117639, -0.950585,
		-0.320781, -0.923302, 0.211219,
		-0.902524, 0.365616, 0.227542,
		39.299904, 35.154881, 36.637699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664558, 34.863869, 35.724178>,  <39.931671, 34.898949, 36.478416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664558, 34.863869, 35.724178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452599, 35.136372, 35.926205>,  <39.325420, 35.299873, 36.047421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452599, 35.136372, 35.926205>,  <39.664558, 34.863869, 35.724178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452599, 35.136372, 35.926205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445443, 0.283200, -0.849340,
		-0.721654, -0.675046, 0.153393,
		-0.529902, 0.681257, 0.505067,
		39.293629, 35.340748, 36.077724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624252, 35.568123, 35.808025>,  <39.664558, 34.863869, 35.724178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624252, 35.568123, 35.808025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597439, 35.674240, 35.423290>,  <39.581352, 35.737911, 35.192451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597439, 35.674240, 35.423290>,  <39.624252, 35.568123, 35.808025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597439, 35.674240, 35.423290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754554, 0.644204, 0.125095,
		0.652805, -0.717372, -0.243358,
		-0.067033, 0.265289, -0.961836,
		39.577328, 35.753826, 35.134739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327423, 35.507107, 35.561600>,  <39.624252, 35.568123, 35.808025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327423, 35.507107, 35.561600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117573, 35.768852, 35.343765>,  <39.991661, 35.925900, 35.213066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117573, 35.768852, 35.343765>,  <40.327423, 35.507107, 35.561600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117573, 35.768852, 35.343765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627520, 0.729520, 0.272064,
		0.575316, -0.199006, -0.793353,
		-0.524624, 0.654367, -0.544585,
		39.960186, 35.965164, 35.180389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052544, 35.392551, 35.418518>,  <40.327423, 35.507107, 35.561600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052544, 35.392551, 35.418518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799911, 35.357502, 35.110382>,  <40.648331, 35.336472, 34.925499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799911, 35.357502, 35.110382>,  <41.052544, 35.392551, 35.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799911, 35.357502, 35.110382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318070, -0.876847, 0.360514,
		-0.707063, 0.472717, 0.525929,
		-0.631580, -0.087624, -0.770343,
		40.610439, 35.331215, 34.879280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430923, 35.959270, 35.220531>,  <41.052544, 35.392551, 35.418518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430923, 35.959270, 35.220531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636452, 36.244705, 35.030041>,  <41.759769, 36.415966, 34.915749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636452, 36.244705, 35.030041>,  <41.430923, 35.959270, 35.220531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636452, 36.244705, 35.030041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291472, -0.376881, -0.879207,
		-0.806868, 0.590558, 0.014341,
		0.513818, 0.713584, -0.476224,
		41.790596, 36.458782, 34.887173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037289, 36.163067, 34.566536>,  <41.430923, 35.959270, 35.220531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037289, 36.163067, 34.566536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429245, 36.240234, 34.546185>,  <41.664421, 36.286537, 34.533974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429245, 36.240234, 34.546185>,  <41.037289, 36.163067, 34.566536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429245, 36.240234, 34.546185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024809, -0.370859, -0.928358,
		-0.197969, 0.908430, -0.368188,
		0.979894, 0.192920, -0.050881,
		41.723213, 36.298111, 34.530922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237667, 36.536594, 33.960117>,  <41.037289, 36.163067, 34.566536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237667, 36.536594, 33.960117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535782, 36.293659, 34.070160>,  <41.714649, 36.147896, 34.136185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535782, 36.293659, 34.070160>,  <41.237667, 36.536594, 33.960117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535782, 36.293659, 34.070160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057952, -0.352044, -0.934188,
		0.664221, 0.712181, -0.227177,
		0.745287, -0.607342, 0.275107,
		41.759369, 36.111458, 34.152691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753860, 36.726589, 33.511349>,  <41.237667, 36.536594, 33.960117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753860, 36.726589, 33.511349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142506, 36.645767, 33.462128>,  <42.375694, 36.597275, 33.432594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142506, 36.645767, 33.462128>,  <41.753860, 36.726589, 33.511349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142506, 36.645767, 33.462128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236479, 0.814370, 0.529981,
		-0.006874, -0.544036, 0.839034,
		0.971612, -0.202056, -0.123055,
		42.433990, 36.585152, 33.425213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088093, 36.888569, 34.111210>,  <41.753860, 36.726589, 33.511349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088093, 36.888569, 34.111210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401688, 36.894478, 33.862968>,  <42.589844, 36.898022, 33.714024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401688, 36.894478, 33.862968>,  <42.088093, 36.888569, 34.111210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401688, 36.894478, 33.862968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314342, 0.852627, 0.417392,
		0.535308, -0.522311, 0.663805,
		0.783986, 0.014772, -0.620602,
		42.636883, 36.898911, 33.676788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656319, 37.225918, 34.464340>,  <42.088093, 36.888569, 34.111210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656319, 37.225918, 34.464340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787334, 37.272518, 34.089291>,  <42.865944, 37.300476, 33.864262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787334, 37.272518, 34.089291>,  <42.656319, 37.225918, 34.464340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787334, 37.272518, 34.089291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358444, 0.902863, 0.237395,
		0.874204, -0.413843, 0.253969,
		0.327543, 0.116498, -0.937626,
		42.885597, 37.307468, 33.808002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304707, 37.498539, 34.501091>,  <42.656319, 37.225918, 34.464340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304707, 37.498539, 34.501091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179131, 37.588245, 34.132061>,  <43.103786, 37.642071, 33.910641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179131, 37.588245, 34.132061>,  <43.304707, 37.498539, 34.501091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179131, 37.588245, 34.132061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309763, 0.942725, 0.123759,
		0.897491, -0.246928, -0.365426,
		-0.313937, 0.224268, -0.922576,
		43.084949, 37.655525, 33.855289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847366, 37.924072, 34.310009>,  <43.304707, 37.498539, 34.501091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847366, 37.924072, 34.310009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560604, 37.997925, 34.041100>,  <43.388546, 38.042236, 33.879753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560604, 37.997925, 34.041100>,  <43.847366, 37.924072, 34.310009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560604, 37.997925, 34.041100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215984, 0.975671, 0.037636,
		0.662867, -0.118219, -0.739345,
		-0.716909, 0.184634, -0.672274,
		43.345531, 38.053314, 33.839417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049187, 38.382488, 33.805180>,  <43.847366, 37.924072, 34.310009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049187, 38.382488, 33.805180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653595, 38.441589, 33.809052>,  <43.416241, 38.477051, 33.811375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653595, 38.441589, 33.809052>,  <44.049187, 38.382488, 33.805180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653595, 38.441589, 33.809052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148063, 0.987340, 0.056891,
		-0.001150, 0.057697, -0.998333,
		-0.988977, 0.147751, 0.009679,
		43.356903, 38.485916, 33.811954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979153, 38.988941, 33.376865>,  <44.049187, 38.382488, 33.805180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979153, 38.988941, 33.376865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657654, 38.947147, 33.611156>,  <43.464756, 38.922070, 33.751732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657654, 38.947147, 33.611156>,  <43.979153, 38.988941, 33.376865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657654, 38.947147, 33.611156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090083, 0.951738, 0.293394,
		-0.588117, 0.288578, -0.755540,
		-0.803743, -0.104489, 0.585729,
		43.416531, 38.915802, 33.786877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477215, 39.555145, 33.185898>,  <43.979153, 38.988941, 33.376865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477215, 39.555145, 33.185898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377808, 39.435936, 33.554554>,  <43.318161, 39.364410, 33.775749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377808, 39.435936, 33.554554>,  <43.477215, 39.555145, 33.185898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377808, 39.435936, 33.554554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022601, 0.953017, 0.302073,
		-0.968363, 0.054242, -0.243580,
		-0.248521, -0.298022, 0.921640,
		43.303253, 39.346531, 33.831047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997677, 40.055225, 33.295166>,  <43.477215, 39.555145, 33.185898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997677, 40.055225, 33.295166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081532, 39.877953, 33.643795>,  <43.131844, 39.771587, 33.852974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081532, 39.877953, 33.643795>,  <42.997677, 40.055225, 33.295166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081532, 39.877953, 33.643795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016375, 0.892848, 0.450059,
		-0.977643, -0.080076, 0.194428,
		0.209634, -0.443181, 0.871576,
		43.144421, 39.744999, 33.905270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495560, 40.455505, 33.794388>,  <42.997677, 40.055225, 33.295166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495560, 40.455505, 33.794388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753193, 40.272591, 34.039680>,  <42.907772, 40.162842, 34.186855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753193, 40.272591, 34.039680>,  <42.495560, 40.455505, 33.794388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753193, 40.272591, 34.039680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105671, 0.847153, 0.520735,
		-0.757623, -0.270595, 0.593958,
		0.644082, -0.457285, 0.613228,
		42.946419, 40.135406, 34.223648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267910, 40.573532, 34.454094>,  <42.495560, 40.455505, 33.794388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267910, 40.573532, 34.454094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661339, 40.510727, 34.489731>,  <42.897396, 40.473045, 34.511112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661339, 40.510727, 34.489731>,  <42.267910, 40.573532, 34.454094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661339, 40.510727, 34.489731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071269, 0.791148, 0.607459,
		-0.165866, -0.591128, 0.789339,
		0.983570, -0.157012, 0.089095,
		42.956409, 40.463623, 34.516460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456539, 40.529579, 35.130337>,  <42.267910, 40.573532, 34.454094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456539, 40.529579, 35.130337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792141, 40.634502, 34.939648>,  <42.993504, 40.697456, 34.825233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792141, 40.634502, 34.939648>,  <42.456539, 40.529579, 35.130337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792141, 40.634502, 34.939648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080327, 0.806824, 0.585306,
		0.538159, -0.529369, 0.655861,
		0.839007, 0.262305, -0.476722,
		43.043842, 40.713192, 34.796631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752796, 40.902767, 35.666759>,  <42.456539, 40.529579, 35.130337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752796, 40.902767, 35.666759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989239, 40.993629, 35.357182>,  <43.131104, 41.048149, 35.171436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989239, 40.993629, 35.357182>,  <42.752796, 40.902767, 35.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989239, 40.993629, 35.357182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376828, 0.770597, 0.513985,
		0.713153, -0.595466, 0.369910,
		0.591112, 0.227158, -0.773942,
		43.166573, 41.061779, 35.125000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540565, 41.069736, 35.958790>,  <42.752796, 40.902767, 35.666759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540565, 41.069736, 35.958790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501270, 41.232819, 35.595665>,  <43.477695, 41.330669, 35.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501270, 41.232819, 35.595665>,  <43.540565, 41.069736, 35.958790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501270, 41.232819, 35.595665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265350, 0.889930, 0.370964,
		0.959135, -0.204446, -0.195606,
		-0.098234, 0.407708, -0.907813,
		43.471802, 41.355129, 35.323322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033577, 41.549221, 35.926178>,  <43.540565, 41.069736, 35.958790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033577, 41.549221, 35.926178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816048, 41.667629, 35.612072>,  <43.685532, 41.738674, 35.423611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816048, 41.667629, 35.612072>,  <44.033577, 41.549221, 35.926178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816048, 41.667629, 35.612072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389437, 0.917886, 0.076314,
		0.743370, -0.264308, -0.614444,
		-0.543820, 0.296016, -0.785261,
		43.652901, 41.756435, 35.376495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545483, 41.960262, 35.404873>,  <44.033577, 41.549221, 35.926178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545483, 41.960262, 35.404873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170422, 42.083057, 35.339684>,  <43.945385, 42.156734, 35.300571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170422, 42.083057, 35.339684>,  <44.545483, 41.960262, 35.404873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170422, 42.083057, 35.339684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301584, 0.951701, 0.057550,
		0.172770, 0.004812, -0.984950,
		-0.937655, 0.306988, -0.162974,
		43.889126, 42.175156, 35.290791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530697, 42.539616, 34.903770>,  <44.545483, 41.960262, 35.404873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530697, 42.539616, 34.903770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196392, 42.577080, 35.120190>,  <43.995808, 42.599560, 35.250042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196392, 42.577080, 35.120190>,  <44.530697, 42.539616, 34.903770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196392, 42.577080, 35.120190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054056, 0.994593, -0.088672,
		-0.546423, -0.044862, -0.836307,
		-0.835763, 0.093659, 0.541044,
		43.945663, 42.605179, 35.282501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123951, 43.076313, 34.534657>,  <44.530697, 42.539616, 34.903770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123951, 43.076313, 34.534657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957134, 43.042595, 34.896645>,  <43.857044, 43.022366, 35.113838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957134, 43.042595, 34.896645>,  <44.123951, 43.076313, 34.534657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957134, 43.042595, 34.896645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229151, 0.973276, -0.014946,
		-0.879526, -0.213608, -0.425212,
		-0.417041, -0.084292, 0.904970,
		43.832024, 43.017307, 35.168137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418179, 43.386120, 34.512836>,  <44.123951, 43.076313, 34.534657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418179, 43.386120, 34.512836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548328, 43.386486, 34.891071>,  <43.626419, 43.386703, 35.118011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548328, 43.386486, 34.891071>,  <43.418179, 43.386120, 34.512836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548328, 43.386486, 34.891071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138071, 0.989327, 0.046557,
		-0.935449, -0.145706, 0.322031,
		0.325378, 0.000912, 0.945584,
		43.645943, 43.386761, 35.174747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997322, 43.874519, 34.830582>,  <43.418179, 43.386120, 34.512836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997322, 43.874519, 34.830582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312767, 43.823677, 35.071228>,  <43.502033, 43.793171, 35.215614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312767, 43.823677, 35.071228>,  <42.997322, 43.874519, 34.830582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312767, 43.823677, 35.071228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094139, 0.991824, 0.086155,
		-0.607647, -0.011307, 0.794127,
		0.788608, -0.127110, 0.601615,
		43.549351, 43.785545, 35.251713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950706, 44.257027, 35.447174>,  <42.997322, 43.874519, 34.830582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950706, 44.257027, 35.447174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346081, 44.205502, 35.415169>,  <43.583305, 44.174587, 35.395966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346081, 44.205502, 35.415169>,  <42.950706, 44.257027, 35.447174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346081, 44.205502, 35.415169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130297, 0.991382, 0.013600,
		0.077568, -0.023868, 0.996701,
		0.988436, -0.128812, -0.080009,
		43.642612, 44.166859, 35.391167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394794, 44.540752, 35.930626>,  <42.950706, 44.257027, 35.447174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394794, 44.540752, 35.930626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579140, 44.575390, 35.577332>,  <43.689747, 44.596172, 35.365356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579140, 44.575390, 35.577332>,  <43.394794, 44.540752, 35.930626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579140, 44.575390, 35.577332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138731, 0.975963, 0.168078,
		0.876561, -0.199993, 0.437771,
		0.460863, 0.086598, -0.883236,
		43.717400, 44.601368, 35.312359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819603, 45.126358, 35.621994>,  <43.394794, 44.540752, 35.930626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819603, 45.126358, 35.621994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495792, 45.294582, 35.785851>,  <43.301506, 45.395515, 35.884163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495792, 45.294582, 35.785851>,  <43.819603, 45.126358, 35.621994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495792, 45.294582, 35.785851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118836, 0.565923, -0.815849,
		-0.574936, -0.709128, -0.408150,
		-0.809523, 0.420558, 0.409639,
		43.252937, 45.420750, 35.908741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834263, 45.126667, 36.365891>,  <43.819603, 45.126358, 35.621994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834263, 45.126667, 36.365891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825718, 44.729244, 36.410412>,  <43.820591, 44.490791, 36.437122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825718, 44.729244, 36.410412>,  <43.834263, 45.126667, 36.365891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825718, 44.729244, 36.410412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763227, 0.055701, 0.643725,
		-0.645778, 0.098701, 0.757119,
		-0.021364, -0.993557, 0.111301,
		43.819309, 44.431175, 36.443802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639664, 44.929626, 37.188175>,  <43.834263, 45.126667, 36.365891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639664, 44.929626, 37.188175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883030, 44.698635, 36.970421>,  <44.029049, 44.560040, 36.839767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883030, 44.698635, 36.970421>,  <43.639664, 44.929626, 37.188175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883030, 44.698635, 36.970421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762898, 0.236572, 0.601681,
		-0.218671, -0.781380, 0.584489,
		0.608416, -0.577476, -0.544382,
		44.065556, 44.525391, 36.807106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867504, 44.344635, 37.499584>,  <43.639664, 44.929626, 37.188175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867504, 44.344635, 37.499584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146908, 44.465832, 37.240265>,  <44.314548, 44.538548, 37.084675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146908, 44.465832, 37.240265>,  <43.867504, 44.344635, 37.499584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146908, 44.465832, 37.240265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494900, 0.449824, 0.743460,
		0.516880, -0.840152, 0.164255,
		0.698506, 0.302989, -0.648296,
		44.356461, 44.556728, 37.045776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595837, 44.183533, 37.645817>,  <43.867504, 44.344635, 37.499584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595837, 44.183533, 37.645817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675400, 44.488716, 37.399784>,  <44.723137, 44.671825, 37.252163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675400, 44.488716, 37.399784>,  <44.595837, 44.183533, 37.645817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675400, 44.488716, 37.399784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560013, 0.426570, 0.710228,
		0.804252, -0.485722, -0.342421,
		0.198906, 0.762963, -0.615081,
		44.735073, 44.717606, 37.215260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314022, 44.269844, 37.770031>,  <44.595837, 44.183533, 37.645817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314022, 44.269844, 37.770031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193275, 44.621384, 37.622246>,  <45.120827, 44.832306, 37.533577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193275, 44.621384, 37.622246>,  <45.314022, 44.269844, 37.770031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193275, 44.621384, 37.622246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716756, 0.464743, 0.519880,
		0.628599, -0.107877, -0.770211,
		-0.301867, 0.878849, -0.369459,
		45.102715, 44.885040, 37.511410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844597, 43.955517, 38.310028>,  <45.314022, 44.269844, 37.770031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844597, 43.955517, 38.310028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767742, 43.894520, 38.697807>,  <45.721630, 43.857922, 38.930473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767742, 43.894520, 38.697807>,  <45.844597, 43.955517, 38.310028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767742, 43.894520, 38.697807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310509, -0.927657, -0.207454,
		0.930951, -0.340881, 0.130883,
		-0.192132, -0.152489, 0.969450,
		45.710102, 43.848774, 38.988644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193470, 43.367901, 38.474457>,  <45.844597, 43.955517, 38.310028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193470, 43.367901, 38.474457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882301, 43.393333, 38.724510>,  <45.695599, 43.408592, 38.874542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882301, 43.393333, 38.724510>,  <46.193470, 43.367901, 38.474457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882301, 43.393333, 38.724510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247800, -0.945282, -0.212218,
		0.577432, -0.319998, 0.751115,
		-0.777925, 0.063585, 0.625132,
		45.648922, 43.412407, 38.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264637, 42.821564, 39.056244>,  <46.193470, 43.367901, 38.474457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264637, 42.821564, 39.056244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885529, 42.930912, 38.990528>,  <45.658062, 42.996521, 38.951099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885529, 42.930912, 38.990528>,  <46.264637, 42.821564, 39.056244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885529, 42.930912, 38.990528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246518, -0.954729, -0.166499,
		-0.202369, -0.117303, 0.972259,
		-0.947774, 0.273373, -0.164290,
		45.601196, 43.012924, 38.941242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849869, 42.340687, 39.263309>,  <46.264637, 42.821564, 39.056244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849869, 42.340687, 39.263309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581589, 42.536316, 39.040249>,  <45.420620, 42.653694, 38.906414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581589, 42.536316, 39.040249>,  <45.849869, 42.340687, 39.263309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581589, 42.536316, 39.040249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320072, -0.869056, -0.377220,
		-0.669116, -0.074513, 0.739413,
		-0.670699, 0.489070, -0.557650,
		45.380379, 42.683037, 38.872955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193855, 41.924042, 39.367203>,  <45.849869, 42.340687, 39.263309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193855, 41.924042, 39.367203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164154, 42.125443, 39.022884>,  <45.146332, 42.246284, 38.816292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164154, 42.125443, 39.022884>,  <45.193855, 41.924042, 39.367203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164154, 42.125443, 39.022884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313748, -0.831142, -0.459092,
		-0.946598, 0.235983, 0.219690,
		-0.074256, 0.503503, -0.860796,
		45.141876, 42.276493, 38.764645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595013, 41.756172, 39.072567>,  <45.193855, 41.924042, 39.367203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595013, 41.756172, 39.072567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762611, 41.902355, 38.740089>,  <44.863171, 41.990067, 38.540604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762611, 41.902355, 38.740089>,  <44.595013, 41.756172, 39.072567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762611, 41.902355, 38.740089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334027, -0.789191, -0.515367,
		-0.844317, 0.493577, -0.208593,
		0.418993, 0.365457, -0.831195,
		44.888309, 42.011993, 38.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173332, 41.623035, 38.594963>,  <44.595013, 41.756172, 39.072567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173332, 41.623035, 38.594963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489555, 41.687637, 38.358681>,  <44.679291, 41.726398, 38.216911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489555, 41.687637, 38.358681>,  <44.173332, 41.623035, 38.594963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489555, 41.687637, 38.358681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174032, -0.865573, -0.469570,
		-0.587136, 0.474024, -0.656180,
		0.790560, 0.161505, -0.590704,
		44.726723, 41.736088, 38.181469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982506, 41.403381, 37.982468>,  <44.173332, 41.623035, 38.594963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982506, 41.403381, 37.982468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382236, 41.388771, 37.981655>,  <44.622074, 41.380005, 37.981167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382236, 41.388771, 37.981655>,  <43.982506, 41.403381, 37.982468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382236, 41.388771, 37.981655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035492, -0.954590, -0.295800,
		0.008868, 0.295674, -0.955248,
		0.999331, -0.036527, -0.002029,
		44.682037, 41.377811, 37.981045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252438, 41.187080, 37.208370>,  <43.982506, 41.403381, 37.982468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252438, 41.187080, 37.208370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557137, 41.095028, 37.450623>,  <44.739956, 41.039799, 37.595974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557137, 41.095028, 37.450623>,  <44.252438, 41.187080, 37.208370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557137, 41.095028, 37.450623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169944, -0.831084, -0.529545,
		0.625194, 0.506301, -0.593963,
		0.761743, -0.230127, 0.605632,
		44.785660, 41.025990, 37.632313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834518, 41.038616, 36.698864>,  <44.252438, 41.187080, 37.208370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834518, 41.038616, 36.698864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896057, 40.868889, 37.055805>,  <44.932980, 40.767052, 37.269970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896057, 40.868889, 37.055805>,  <44.834518, 41.038616, 36.698864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896057, 40.868889, 37.055805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114612, -0.889343, -0.442644,
		0.981425, 0.170373, -0.088189,
		0.153845, -0.424315, 0.892350,
		44.942211, 40.741596, 37.323509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386707, 40.636013, 36.516022>,  <44.834518, 41.038616, 36.698864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386707, 40.636013, 36.516022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269203, 40.473183, 36.861969>,  <45.198700, 40.375484, 37.069538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269203, 40.473183, 36.861969>,  <45.386707, 40.636013, 36.516022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269203, 40.473183, 36.861969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014029, -0.902852, -0.429723,
		0.955775, -0.138370, 0.259514,
		-0.293763, -0.407078, 0.864865,
		45.181076, 40.351059, 37.121429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.927113, 40.141556, 36.664421>,  <45.386707, 40.636013, 36.516022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.927113, 40.141556, 36.664421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582378, 40.057922, 36.849258>,  <45.375538, 40.007744, 36.960159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582378, 40.057922, 36.849258>,  <45.927113, 40.141556, 36.664421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582378, 40.057922, 36.849258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024003, -0.893245, -0.448929,
		0.506622, -0.397994, 0.764810,
		-0.861834, -0.209080, 0.462090,
		45.323830, 39.995197, 36.987885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991138, 39.538895, 37.046303>,  <45.927113, 40.141556, 36.664421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991138, 39.538895, 37.046303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607262, 39.598709, 36.951107>,  <45.376938, 39.634598, 36.893990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607262, 39.598709, 36.951107>,  <45.991138, 39.538895, 37.046303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607262, 39.598709, 36.951107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048579, -0.922233, -0.383572,
		-0.276839, -0.356548, 0.892319,
		-0.959687, 0.149535, -0.237989,
		45.319355, 39.643570, 36.879711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665207, 39.024033, 37.312160>,  <45.991138, 39.538895, 37.046303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665207, 39.024033, 37.312160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414860, 39.154194, 37.028641>,  <45.264652, 39.232292, 36.858528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414860, 39.154194, 37.028641>,  <45.665207, 39.024033, 37.312160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414860, 39.154194, 37.028641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056650, -0.925371, -0.374805,
		-0.777869, -0.194425, 0.597594,
		-0.625867, 0.325403, -0.708804,
		45.227100, 39.251816, 36.815998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253609, 38.455372, 37.183685>,  <45.665207, 39.024033, 37.312160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253609, 38.455372, 37.183685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148827, 38.672523, 36.864521>,  <45.085957, 38.802814, 36.673023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148827, 38.672523, 36.864521>,  <45.253609, 38.455372, 37.183685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148827, 38.672523, 36.864521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139987, -0.839414, -0.525154,
		-0.954873, -0.025871, 0.295887,
		-0.261958, 0.542876, -0.797912,
		45.070240, 38.835388, 36.625149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564198, 38.273911, 37.010349>,  <45.253609, 38.455372, 37.183685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564198, 38.273911, 37.010349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721909, 38.400425, 36.665211>,  <44.816536, 38.476334, 36.458126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721909, 38.400425, 36.665211>,  <44.564198, 38.273911, 37.010349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721909, 38.400425, 36.665211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310099, -0.838052, -0.448895,
		-0.865092, 0.444557, -0.232345,
		0.394277, 0.316286, -0.862849,
		44.840191, 38.495312, 36.406357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348343, 37.770641, 36.501858>,  <44.564198, 38.273911, 37.010349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348343, 37.770641, 36.501858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593201, 37.969734, 36.256077>,  <44.740116, 38.089191, 36.108608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593201, 37.969734, 36.256077>,  <44.348343, 37.770641, 36.501858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593201, 37.969734, 36.256077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152664, -0.688038, -0.709434,
		-0.775872, 0.528077, -0.345191,
		0.612141, 0.497732, -0.614448,
		44.776844, 38.119053, 36.071743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051720, 37.796837, 35.756264>,  <44.348343, 37.770641, 36.501858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051720, 37.796837, 35.756264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451000, 37.820843, 35.756687>,  <44.690567, 37.835247, 35.756943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451000, 37.820843, 35.756687>,  <44.051720, 37.796837, 35.756264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451000, 37.820843, 35.756687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038538, -0.627200, -0.777904,
		-0.046025, 0.776542, -0.628382,
		0.998197, 0.060019, 0.001060,
		44.750458, 37.838848, 35.757004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260353, 37.938206, 35.012451>,  <44.051720, 37.796837, 35.756264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260353, 37.938206, 35.012451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579872, 37.787350, 35.199936>,  <44.771584, 37.696835, 35.312428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579872, 37.787350, 35.199936>,  <44.260353, 37.938206, 35.012451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579872, 37.787350, 35.199936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159070, -0.618976, -0.769133,
		0.580195, 0.688936, -0.434442,
		0.798793, -0.377141, 0.468716,
		44.819511, 37.674206, 35.340549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764107, 37.855503, 34.509670>,  <44.260353, 37.938206, 35.012451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764107, 37.855503, 34.509670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874893, 37.611263, 34.806442>,  <44.941364, 37.464718, 34.984505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874893, 37.611263, 34.806442>,  <44.764107, 37.855503, 34.509670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874893, 37.611263, 34.806442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289449, -0.683254, -0.670361,
		0.916248, 0.400417, -0.012501,
		0.276965, -0.610598, 0.741930,
		44.957981, 37.428085, 35.029022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342358, 37.680149, 34.215645>,  <44.764107, 37.855503, 34.509670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342358, 37.680149, 34.215645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290009, 37.407810, 34.503902>,  <45.258598, 37.244408, 34.676857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290009, 37.407810, 34.503902>,  <45.342358, 37.680149, 34.215645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290009, 37.407810, 34.503902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282941, -0.722310, -0.631041,
		0.950167, 0.121313, 0.287169,
		-0.130871, -0.680846, 0.720639,
		45.250748, 37.203556, 34.720093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858475, 37.145130, 34.103447>,  <45.342358, 37.680149, 34.215645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858475, 37.145130, 34.103447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563770, 36.981808, 34.319031>,  <45.386948, 36.883816, 34.448380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563770, 36.981808, 34.319031>,  <45.858475, 37.145130, 34.103447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563770, 36.981808, 34.319031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002596, -0.798791, -0.601603,
		0.676150, -0.441837, 0.589577,
		-0.736760, -0.408304, 0.538956,
		45.342743, 36.859318, 34.480717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126266, 36.691898, 34.433701>,  <45.858475, 37.145130, 34.103447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126266, 36.691898, 34.433701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748501, 36.572937, 34.377640>,  <45.521843, 36.501560, 34.344002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748501, 36.572937, 34.377640>,  <46.126266, 36.691898, 34.433701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748501, 36.572937, 34.377640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326234, -0.794857, -0.511639,
		0.040757, -0.528920, 0.847692,
		-0.944410, -0.297399, -0.140156,
		45.465179, 36.483719, 34.335594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153400, 36.080177, 34.536087>,  <46.126266, 36.691898, 34.433701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153400, 36.080177, 34.536087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798996, 36.087193, 34.350758>,  <45.586353, 36.091400, 34.239559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798996, 36.087193, 34.350758>,  <46.153400, 36.080177, 34.536087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798996, 36.087193, 34.350758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281428, -0.773813, -0.567461,
		-0.368479, -0.633171, 0.680674,
		-0.886014, 0.017537, -0.463327,
		45.533192, 36.092453, 34.211758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898003, 35.361309, 34.605167>,  <46.153400, 36.080177, 34.536087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898003, 35.361309, 34.605167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917450, 35.149784, 34.266228>,  <45.929119, 35.022869, 34.062866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917450, 35.149784, 34.266228>,  <45.898003, 35.361309, 34.605167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917450, 35.149784, 34.266228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815593, 0.510740, -0.271944,
		0.576580, -0.677866, 0.456128,
		0.048621, -0.528813, -0.847345,
		45.932037, 34.991138, 34.012024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619465, 35.176620, 34.522243>,  <45.898003, 35.361309, 34.605167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619465, 35.176620, 34.522243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452354, 35.120316, 34.163212>,  <46.352089, 35.086533, 33.947792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452354, 35.120316, 34.163212>,  <46.619465, 35.176620, 34.522243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452354, 35.120316, 34.163212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826372, 0.351703, -0.439789,
		0.377586, -0.925468, -0.030615,
		-0.417778, -0.140759, -0.897579,
		46.327023, 35.078087, 33.893940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119652, 34.813431, 34.247543>,  <46.619465, 35.176620, 34.522243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119652, 34.813431, 34.247543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886532, 35.024681, 34.000504>,  <46.746658, 35.151432, 33.852280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886532, 35.024681, 34.000504>,  <47.119652, 34.813431, 34.247543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886532, 35.024681, 34.000504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810290, 0.320216, -0.490808,
		-0.061443, -0.786476, -0.614557,
		-0.582799, 0.528126, -0.617598,
		46.711693, 35.183121, 33.815224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631355, 34.697124, 34.819298>,  <47.119652, 34.813431, 34.247543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631355, 34.697124, 34.819298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507610, 35.077282, 34.832226>,  <47.433365, 35.305378, 34.839981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507610, 35.077282, 34.832226>,  <47.631355, 34.697124, 34.819298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507610, 35.077282, 34.832226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253830, 0.049775, 0.965967,
		0.916441, 0.307038, -0.256637,
		-0.309363, 0.950395, 0.032319,
		47.414803, 35.362400, 34.841923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.646084, 38.380119, 45.500988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423874, 38.091949, 45.667061>,  <35.290546, 37.919048, 45.766705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423874, 38.091949, 45.667061>,  <35.646084, 38.380119, 45.500988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423874, 38.091949, 45.667061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332253, -0.265397, -0.905082,
		0.762233, -0.640742, -0.091929,
		-0.555527, -0.720426, 0.415183,
		35.257217, 37.875820, 45.791615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824959, 37.790771, 45.232780>,  <35.646084, 38.380119, 45.500988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824959, 37.790771, 45.232780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464947, 37.669273, 45.357803>,  <35.248940, 37.596375, 45.432816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464947, 37.669273, 45.357803>,  <35.824959, 37.790771, 45.232780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464947, 37.669273, 45.357803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206953, -0.333288, -0.919831,
		0.383568, -0.892556, 0.237106,
		-0.900026, -0.303748, 0.312556,
		35.194939, 37.578148, 45.451569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762428, 37.223022, 44.927872>,  <35.824959, 37.790771, 45.232780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762428, 37.223022, 44.927872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387402, 37.299961, 45.043781>,  <35.162384, 37.346127, 45.113327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387402, 37.299961, 45.043781>,  <35.762428, 37.223022, 44.927872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387402, 37.299961, 45.043781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344131, -0.392249, -0.853062,
		-0.050421, -0.899524, 0.433953,
		-0.937567, 0.192349, 0.289777,
		35.106133, 37.357666, 45.130714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388718, 36.617401, 44.928955>,  <35.762428, 37.223022, 44.927872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388718, 36.617401, 44.928955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096214, 36.885036, 44.875916>,  <34.920712, 37.045616, 44.844093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096214, 36.885036, 44.875916>,  <35.388718, 36.617401, 44.928955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096214, 36.885036, 44.875916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363309, -0.546592, -0.754482,
		-0.577297, -0.503543, 0.642785,
		-0.731256, 0.669090, -0.132604,
		34.876835, 37.085762, 44.836136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719223, 36.170151, 44.896343>,  <35.388718, 36.617401, 44.928955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719223, 36.170151, 44.896343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669533, 36.530380, 44.729717>,  <34.639717, 36.746517, 44.629742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669533, 36.530380, 44.729717>,  <34.719223, 36.170151, 44.896343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669533, 36.530380, 44.729717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506472, -0.418560, -0.753853,
		-0.853261, 0.117330, 0.508114,
		-0.124226, 0.900578, -0.416565,
		34.632263, 36.800552, 44.604748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157993, 36.001339, 44.484688>,  <34.719223, 36.170151, 44.896343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157993, 36.001339, 44.484688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278988, 36.358776, 44.352032>,  <34.351585, 36.573238, 44.272438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278988, 36.358776, 44.352032>,  <34.157993, 36.001339, 44.484688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278988, 36.358776, 44.352032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340291, -0.223763, -0.913309,
		-0.890338, 0.389121, 0.236396,
		0.302491, 0.893597, -0.331639,
		34.369736, 36.626854, 44.252541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537769, 36.329433, 44.139336>,  <34.157993, 36.001339, 44.484688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537769, 36.329433, 44.139336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878811, 36.480549, 43.994926>,  <34.083435, 36.571217, 43.908279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878811, 36.480549, 43.994926>,  <33.537769, 36.329433, 44.139336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878811, 36.480549, 43.994926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276408, -0.260264, -0.925128,
		-0.443463, 0.888560, -0.117479,
		0.852607, 0.377788, -0.361023,
		34.134594, 36.593884, 43.886620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363701, 36.620865, 43.468922>,  <33.537769, 36.329433, 44.139336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363701, 36.620865, 43.468922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.761368, 36.577942, 43.464558>,  <33.999969, 36.552189, 43.461941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.761368, 36.577942, 43.464558>,  <33.363701, 36.620865, 43.468922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761368, 36.577942, 43.464558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032882, -0.205203, -0.978167,
		0.102727, 0.972819, -0.207535,
		0.994166, -0.107308, -0.010909,
		34.059616, 36.545750, 43.461285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640636, 37.109314, 42.959099>,  <33.363701, 36.620865, 43.468922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640636, 37.109314, 42.959099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.912155, 36.817547, 42.993004>,  <34.075066, 36.642487, 43.013348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.912155, 36.817547, 42.993004>,  <33.640636, 37.109314, 42.959099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912155, 36.817547, 42.993004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046629, -0.158005, -0.986337,
		0.732843, 0.665571, -0.141265,
		0.678798, -0.729417, 0.084758,
		34.115795, 36.598721, 43.018433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821514, 37.029247, 42.324570>,  <33.640636, 37.109314, 42.959099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821514, 37.029247, 42.324570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.011597, 36.716965, 42.486893>,  <34.125645, 36.529594, 42.584286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.011597, 36.716965, 42.486893>,  <33.821514, 37.029247, 42.324570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011597, 36.716965, 42.486893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190556, -0.358942, -0.913700,
		0.858992, 0.511525, -0.021803,
		0.475207, -0.780707, 0.405803,
		34.154160, 36.482754, 42.608635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461323, 37.033028, 41.996971>,  <33.821514, 37.029247, 42.324570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461323, 37.033028, 41.996971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.390858, 36.661598, 42.127644>,  <34.348579, 36.438740, 42.206047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.390858, 36.661598, 42.127644>,  <34.461323, 37.033028, 41.996971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390858, 36.661598, 42.127644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141853, -0.352359, -0.925052,
		0.974086, -0.116619, 0.193793,
		-0.176164, -0.928571, 0.326685,
		34.338009, 36.383026, 42.225651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997177, 36.683987, 41.729546>,  <34.461323, 37.033028, 41.996971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997177, 36.683987, 41.729546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699841, 36.428860, 41.810169>,  <34.521439, 36.275784, 41.858543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699841, 36.428860, 41.810169>,  <34.997177, 36.683987, 41.729546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699841, 36.428860, 41.810169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240351, -0.535884, -0.809358,
		0.624240, -0.553184, 0.551646,
		-0.743341, -0.637822, 0.201562,
		34.476837, 36.237514, 41.870636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257263, 36.052013, 41.717945>,  <34.997177, 36.683987, 41.729546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257263, 36.052013, 41.717945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868969, 36.016087, 41.628857>,  <34.635994, 35.994530, 41.575405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868969, 36.016087, 41.628857>,  <35.257263, 36.052013, 41.717945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868969, 36.016087, 41.628857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239646, -0.422154, -0.874274,
		-0.015497, -0.902064, 0.431325,
		-0.970737, -0.089817, -0.222718,
		34.577747, 35.989143, 41.562042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274235, 35.509312, 41.239525>,  <35.257263, 36.052013, 41.717945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274235, 35.509312, 41.239525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904762, 35.657848, 41.201736>,  <34.683079, 35.746971, 41.179066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904762, 35.657848, 41.201736>,  <35.274235, 35.509312, 41.239525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904762, 35.657848, 41.201736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021198, -0.196645, -0.980246,
		-0.382582, -0.907434, 0.173765,
		-0.923678, 0.371341, -0.094468,
		34.627659, 35.769249, 41.173397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921459, 34.925705, 40.987980>,  <35.274235, 35.509312, 41.239525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921459, 34.925705, 40.987980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708206, 35.250786, 40.893932>,  <34.580254, 35.445835, 40.837502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708206, 35.250786, 40.893932>,  <34.921459, 34.925705, 40.987980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708206, 35.250786, 40.893932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044241, -0.304313, -0.951544,
		-0.844874, -0.496898, 0.198194,
		-0.533133, 0.812703, -0.235123,
		34.548267, 35.494598, 40.823395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258705, 34.783268, 40.636150>,  <34.921459, 34.925705, 40.987980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258705, 34.783268, 40.636150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346165, 35.160809, 40.537086>,  <34.398640, 35.387333, 40.477650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346165, 35.160809, 40.537086>,  <34.258705, 34.783268, 40.636150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346165, 35.160809, 40.537086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004945, -0.252724, -0.967526,
		-0.975791, 0.212773, -0.050590,
		0.218649, 0.943853, -0.247658,
		34.411758, 35.443966, 40.462788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900970, 34.860138, 40.071243>,  <34.258705, 34.783268, 40.636150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900970, 34.860138, 40.071243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173565, 35.152439, 40.055363>,  <34.337124, 35.327820, 40.045834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173565, 35.152439, 40.055363>,  <33.900970, 34.860138, 40.071243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173565, 35.152439, 40.055363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133329, -0.177313, -0.975081,
		-0.719581, 0.659214, -0.218267,
		0.681488, 0.730751, -0.039698,
		34.378010, 35.371666, 40.043453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778374, 35.246769, 39.409546>,  <33.900970, 34.860138, 40.071243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778374, 35.246769, 39.409546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147907, 35.360886, 39.511639>,  <34.369625, 35.429356, 39.572895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147907, 35.360886, 39.511639>,  <33.778374, 35.246769, 39.409546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147907, 35.360886, 39.511639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303708, -0.140376, -0.942367,
		-0.233024, 0.948104, -0.216330,
		0.923830, 0.285296, 0.255235,
		34.425056, 35.446476, 39.588211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949051, 35.892071, 38.981701>,  <33.778374, 35.246769, 39.409546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949051, 35.892071, 38.981701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267536, 35.671024, 39.080219>,  <34.458626, 35.538395, 39.139332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267536, 35.671024, 39.080219>,  <33.949051, 35.892071, 38.981701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267536, 35.671024, 39.080219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275343, -0.031519, -0.960829,
		0.538736, 0.832838, 0.127064,
		0.796210, -0.552619, 0.246296,
		34.506401, 35.505238, 39.154106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394028, 36.056793, 38.486729>,  <33.949051, 35.892071, 38.981701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394028, 36.056793, 38.486729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570091, 35.730518, 38.636883>,  <34.675728, 35.534752, 38.726974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570091, 35.730518, 38.636883>,  <34.394028, 36.056793, 38.486729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570091, 35.730518, 38.636883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547775, -0.087332, -0.832055,
		0.711481, 0.571862, 0.408373,
		0.440157, -0.815688, 0.375387,
		34.702137, 35.485813, 38.749500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032520, 36.077694, 38.271038>,  <34.394028, 36.056793, 38.486729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032520, 36.077694, 38.271038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020012, 35.693130, 38.380379>,  <35.012505, 35.462395, 38.445984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020012, 35.693130, 38.380379>,  <35.032520, 36.077694, 38.271038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020012, 35.693130, 38.380379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614711, -0.234151, -0.753196,
		0.788132, 0.144479, 0.598309,
		-0.031274, -0.961405, 0.273355,
		35.010628, 35.404709, 38.462383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717976, 35.811275, 38.348309>,  <35.032520, 36.077694, 38.271038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717976, 35.811275, 38.348309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478203, 35.499577, 38.275150>,  <35.334339, 35.312557, 38.231255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478203, 35.499577, 38.275150>,  <35.717976, 35.811275, 38.348309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478203, 35.499577, 38.275150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653970, -0.345048, -0.673250,
		0.461519, -0.523180, 0.716438,
		-0.599437, -0.779246, -0.182898,
		35.298370, 35.265804, 38.220280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002773, 36.344288, 37.983833>,  <35.717976, 35.811275, 38.348309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002773, 36.344288, 37.983833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322189, 36.398453, 37.749229>,  <36.513840, 36.430950, 37.608467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322189, 36.398453, 37.749229>,  <36.002773, 36.344288, 37.983833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322189, 36.398453, 37.749229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528013, 0.310275, 0.790526,
		0.289028, -0.940953, 0.176267,
		0.798539, 0.135413, -0.586513,
		36.561752, 36.439075, 37.573277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502129, 35.868587, 38.304127>,  <36.002773, 36.344288, 37.983833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502129, 35.868587, 38.304127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698601, 36.142448, 38.088722>,  <36.816486, 36.306763, 37.959480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698601, 36.142448, 38.088722>,  <36.502129, 35.868587, 38.304127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698601, 36.142448, 38.088722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498249, 0.286269, 0.818412,
		0.714484, -0.670304, -0.200516,
		0.491183, 0.684648, -0.538513,
		36.845955, 36.347843, 37.927170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222286, 35.684223, 38.428112>,  <36.502129, 35.868587, 38.304127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222286, 35.684223, 38.428112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211502, 36.069687, 38.321804>,  <37.205032, 36.300964, 38.258018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211502, 36.069687, 38.321804>,  <37.222286, 35.684223, 38.428112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211502, 36.069687, 38.321804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518557, 0.240782, 0.820440,
		0.854618, -0.115697, -0.506204,
		-0.026963, 0.963659, -0.265772,
		37.203415, 36.358784, 38.242073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880203, 35.917961, 38.514137>,  <37.222286, 35.684223, 38.428112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880203, 35.917961, 38.514137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639191, 36.237095, 38.522198>,  <37.494583, 36.428577, 38.527035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639191, 36.237095, 38.522198>,  <37.880203, 35.917961, 38.514137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639191, 36.237095, 38.522198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490568, 0.350332, 0.797878,
		0.629519, 0.490635, -0.602481,
		-0.602535, 0.797838, 0.020149,
		37.458431, 36.476448, 38.528244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288849, 36.338535, 38.717937>,  <37.880203, 35.917961, 38.514137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288849, 36.338535, 38.717937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952656, 36.546669, 38.778400>,  <37.750942, 36.671547, 38.814678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952656, 36.546669, 38.778400>,  <38.288849, 36.338535, 38.717937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952656, 36.546669, 38.778400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433437, 0.478223, 0.763829,
		0.325156, 0.707501, -0.627468,
		-0.840480, 0.520331, 0.151160,
		37.700512, 36.702770, 38.823750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566864, 37.057041, 38.834724>,  <38.288849, 36.338535, 38.717937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566864, 37.057041, 38.834724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201832, 37.005665, 38.990005>,  <37.982811, 36.974838, 39.083176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201832, 37.005665, 38.990005>,  <38.566864, 37.057041, 38.834724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201832, 37.005665, 38.990005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204160, 0.679456, 0.704740,
		-0.354282, 0.722387, -0.593836,
		-0.912580, -0.128439, 0.388202,
		37.928059, 36.967133, 39.106464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320198, 37.761093, 39.003284>,  <38.566864, 37.057041, 38.834724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320198, 37.761093, 39.003284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075893, 37.532364, 39.222370>,  <37.929310, 37.395126, 39.353821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075893, 37.532364, 39.222370>,  <38.320198, 37.761093, 39.003284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075893, 37.532364, 39.222370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081843, 0.642427, 0.761964,
		-0.787577, 0.510202, -0.345567,
		-0.610757, -0.571823, 0.547717,
		37.892666, 37.360817, 39.386684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965202, 38.246960, 39.310638>,  <38.320198, 37.761093, 39.003284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965202, 38.246960, 39.310638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918697, 37.920937, 39.537678>,  <37.890793, 37.725323, 39.673901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918697, 37.920937, 39.537678>,  <37.965202, 38.246960, 39.310638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918697, 37.920937, 39.537678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017271, 0.569730, 0.821650,
		-0.993068, 0.105331, -0.052163,
		-0.116264, -0.815054, 0.567600,
		37.883820, 37.676422, 39.707958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437531, 38.297642, 39.789368>,  <37.965202, 38.246960, 39.310638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437531, 38.297642, 39.789368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662025, 38.019009, 39.968155>,  <37.796722, 37.851830, 40.075428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662025, 38.019009, 39.968155>,  <37.437531, 38.297642, 39.789368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662025, 38.019009, 39.968155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005146, 0.542965, 0.839739,
		-0.827637, -0.468995, 0.308319,
		0.561240, -0.696586, 0.446965,
		37.830399, 37.810032, 40.102245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059288, 38.270733, 40.374355>,  <37.437531, 38.297642, 39.789368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059288, 38.270733, 40.374355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405323, 38.078991, 40.433472>,  <37.612946, 37.963947, 40.468941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405323, 38.078991, 40.433472>,  <37.059288, 38.270733, 40.374355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405323, 38.078991, 40.433472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045378, 0.368206, 0.928636,
		-0.499560, -0.796647, 0.340284,
		0.865090, -0.479351, 0.147791,
		37.664848, 37.935184, 40.477810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893120, 37.857727, 40.965702>,  <37.059288, 38.270733, 40.374355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893120, 37.857727, 40.965702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287991, 37.913437, 40.934483>,  <37.524914, 37.946861, 40.915749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287991, 37.913437, 40.934483>,  <36.893120, 37.857727, 40.965702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287991, 37.913437, 40.934483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024573, 0.350522, 0.936232,
		0.157749, -0.926142, 0.342604,
		0.987174, 0.139271, -0.078052,
		37.584141, 37.955219, 40.911068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176247, 37.413677, 41.496948>,  <36.893120, 37.857727, 40.965702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176247, 37.413677, 41.496948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453426, 37.690426, 41.415821>,  <37.619736, 37.856476, 41.367146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453426, 37.690426, 41.415821>,  <37.176247, 37.413677, 41.496948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453426, 37.690426, 41.415821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095101, 0.191136, 0.976946,
		0.714685, -0.696263, 0.066651,
		0.692951, 0.691870, -0.202817,
		37.661312, 37.897987, 41.354977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702358, 37.328472, 42.041908>,  <37.176247, 37.413677, 41.496948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702358, 37.328472, 42.041908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745720, 37.695599, 41.889141>,  <37.771736, 37.915874, 41.797482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745720, 37.695599, 41.889141>,  <37.702358, 37.328472, 42.041908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745720, 37.695599, 41.889141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214135, 0.353602, 0.910556,
		0.970771, -0.180488, -0.158205,
		0.108402, 0.917818, -0.381915,
		37.778240, 37.970943, 41.774567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429379, 37.507137, 42.256313>,  <37.702358, 37.328472, 42.041908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429379, 37.507137, 42.256313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197697, 37.823555, 42.177547>,  <38.058689, 38.013405, 42.130287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197697, 37.823555, 42.177547>,  <38.429379, 37.507137, 42.256313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197697, 37.823555, 42.177547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269828, 0.413986, 0.869372,
		0.769231, 0.450410, -0.453227,
		-0.579204, 0.791041, -0.196918,
		38.023937, 38.060867, 42.118473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774990, 38.056240, 42.638657>,  <38.429379, 37.507137, 42.256313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774990, 38.056240, 42.638657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416367, 38.208984, 42.548882>,  <38.201195, 38.300632, 42.495018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416367, 38.208984, 42.548882>,  <38.774990, 38.056240, 42.638657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416367, 38.208984, 42.548882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014743, 0.480697, 0.876763,
		0.442686, 0.789376, -0.425342,
		-0.896556, 0.381860, -0.224435,
		38.147400, 38.323544, 42.481552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717445, 38.906445, 42.726093>,  <38.774990, 38.056240, 42.638657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717445, 38.906445, 42.726093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360748, 38.731617, 42.773018>,  <38.146729, 38.626720, 42.801170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360748, 38.731617, 42.773018>,  <38.717445, 38.906445, 42.726093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360748, 38.731617, 42.773018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102176, 0.446993, 0.888683,
		-0.440848, 0.780495, -0.443262,
		-0.891747, -0.437065, 0.117308,
		38.093224, 38.600498, 42.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470150, 39.358883, 43.183434>,  <38.717445, 38.906445, 42.726093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470150, 39.358883, 43.183434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215755, 39.052204, 43.218529>,  <38.063118, 38.868195, 43.239586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215755, 39.052204, 43.218529>,  <38.470150, 39.358883, 43.183434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215755, 39.052204, 43.218529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235483, 0.301082, 0.924066,
		-0.734897, 0.567029, -0.372028,
		-0.635982, -0.766700, 0.087738,
		38.024960, 38.822193, 43.244850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885567, 39.664352, 43.433479>,  <38.470150, 39.358883, 43.183434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885567, 39.664352, 43.433479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856373, 39.274048, 43.516006>,  <37.838856, 39.039864, 43.565521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856373, 39.274048, 43.516006>,  <37.885567, 39.664352, 43.433479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856373, 39.274048, 43.516006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133473, 0.214561, 0.967548,
		-0.988361, 0.043079, -0.145897,
		-0.072985, -0.975760, 0.206314,
		37.834476, 38.981319, 43.577900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.352753, 39.738796, 43.969135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504837, 39.370384, 44.002945>,  <37.596088, 39.149338, 44.023232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504837, 39.370384, 44.002945>,  <37.352753, 39.738796, 43.969135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504837, 39.370384, 44.002945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241015, -0.010436, 0.970465,
		-0.892946, -0.389351, -0.225950,
		0.380209, -0.921031, 0.084520,
		37.618900, 39.094074, 44.028301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850502, 39.345036, 44.235443>,  <37.352753, 39.738796, 43.969135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850502, 39.345036, 44.235443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201332, 39.177921, 44.330273>,  <37.411831, 39.077652, 44.387169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201332, 39.177921, 44.330273>,  <36.850502, 39.345036, 44.235443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201332, 39.177921, 44.330273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253391, 0.016890, 0.967216,
		-0.408090, -0.908390, -0.091049,
		0.877072, -0.417783, 0.237071,
		37.464455, 39.052586, 44.401394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652931, 38.960159, 44.872581>,  <36.850502, 39.345036, 44.235443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652931, 38.960159, 44.872581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052780, 38.949547, 44.869904>,  <37.292690, 38.943180, 44.868298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052780, 38.949547, 44.869904>,  <36.652931, 38.960159, 44.872581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052780, 38.949547, 44.869904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003246, -0.127821, 0.991792,
		-0.027166, -0.991442, -0.127687,
		0.999626, -0.026528, -0.006690,
		37.352669, 38.941589, 44.867897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856831, 38.356216, 45.272793>,  <36.652931, 38.960159, 44.872581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856831, 38.356216, 45.272793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122055, 38.655605, 45.277431>,  <37.281189, 38.835239, 45.280216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122055, 38.655605, 45.277431>,  <36.856831, 38.356216, 45.272793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122055, 38.655605, 45.277431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055110, -0.064259, 0.996410,
		0.746532, -0.660044, -0.083856,
		0.663064, 0.748473, 0.011597,
		37.320972, 38.880146, 45.280910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407532, 38.095676, 45.649467>,  <36.856831, 38.356216, 45.272793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407532, 38.095676, 45.649467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463062, 38.491592, 45.662373>,  <37.496380, 38.729141, 45.670116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463062, 38.491592, 45.662373>,  <37.407532, 38.095676, 45.649467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463062, 38.491592, 45.662373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197545, -0.059597, 0.978480,
		0.970414, -0.129464, -0.203802,
		0.138824, 0.989792, 0.032259,
		37.504711, 38.788528, 45.672050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849876, 37.943108, 46.065575>,  <37.407532, 38.095676, 45.649467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849876, 37.943108, 46.065575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781143, 38.337120, 46.071041>,  <37.739902, 38.573528, 46.074322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781143, 38.337120, 46.071041>,  <37.849876, 37.943108, 46.065575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781143, 38.337120, 46.071041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209787, 0.023038, 0.977476,
		0.962529, 0.170829, -0.210605,
		-0.171833, 0.985031, 0.013663,
		37.729595, 38.632629, 46.075142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406624, 38.162708, 46.387589>,  <37.849876, 37.943108, 46.065575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406624, 38.162708, 46.387589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158871, 38.471107, 46.446819>,  <38.010220, 38.656147, 46.482357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158871, 38.471107, 46.446819>,  <38.406624, 38.162708, 46.387589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158871, 38.471107, 46.446819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337089, 0.090829, 0.937081,
		0.709037, 0.630329, -0.316153,
		-0.619385, 0.770997, 0.148075,
		37.973057, 38.702408, 46.491241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772305, 38.603382, 46.764641>,  <38.406624, 38.162708, 46.387589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772305, 38.603382, 46.764641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402992, 38.747082, 46.819038>,  <38.181404, 38.833302, 46.851677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402992, 38.747082, 46.819038>,  <38.772305, 38.603382, 46.764641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402992, 38.747082, 46.819038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222502, 0.211565, 0.951700,
		0.313129, 0.908943, -0.275268,
		-0.923278, 0.359253, 0.135995,
		38.126007, 38.854858, 46.859837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745144, 39.372803, 47.015865>,  <38.772305, 38.603382, 46.764641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745144, 39.372803, 47.015865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407387, 39.187969, 47.124302>,  <38.204735, 39.077068, 47.189362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407387, 39.187969, 47.124302>,  <38.745144, 39.372803, 47.015865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407387, 39.187969, 47.124302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144123, 0.291432, 0.945672,
		-0.515980, 0.837586, -0.179486,
		-0.844389, -0.462080, 0.271088,
		38.154072, 39.049347, 47.205627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440475, 39.906136, 47.377823>,  <38.745144, 39.372803, 47.015865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440475, 39.906136, 47.377823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291679, 39.555908, 47.501110>,  <38.202400, 39.345772, 47.575081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291679, 39.555908, 47.501110>,  <38.440475, 39.906136, 47.377823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291679, 39.555908, 47.501110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126726, 0.281034, 0.951294,
		-0.919545, 0.392933, 0.006415,
		-0.371992, -0.875570, 0.308218,
		38.180080, 39.293236, 47.593575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115257, 40.145996, 47.890667>,  <38.440475, 39.906136, 47.377823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115257, 40.145996, 47.890667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184494, 39.755367, 47.941811>,  <38.226036, 39.520988, 47.972496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184494, 39.755367, 47.941811>,  <38.115257, 40.145996, 47.890667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184494, 39.755367, 47.941811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379479, 0.185926, 0.906327,
		-0.908865, -0.108355, 0.402770,
		0.173090, -0.976571, 0.127863,
		38.236420, 39.462395, 47.980171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887329, 40.004047, 48.567169>,  <38.115257, 40.145996, 47.890667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887329, 40.004047, 48.567169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085125, 39.662243, 48.503559>,  <38.203800, 39.457161, 48.465393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085125, 39.662243, 48.503559>,  <37.887329, 40.004047, 48.567169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085125, 39.662243, 48.503559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370898, 0.041980, 0.927724,
		-0.786077, -0.517730, 0.337696,
		0.494487, -0.854513, -0.159026,
		38.233471, 39.405888, 48.455853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732735, 39.561069, 49.197887>,  <37.887329, 40.004047, 48.567169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732735, 39.561069, 49.197887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073021, 39.439552, 49.026310>,  <38.277191, 39.366642, 48.923363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073021, 39.439552, 49.026310>,  <37.732735, 39.561069, 49.197887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073021, 39.439552, 49.026310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368243, -0.237859, 0.898788,
		-0.375074, -0.922569, -0.090481,
		0.850715, -0.303793, -0.428944,
		38.328236, 39.348415, 48.897625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928692, 38.796242, 49.466278>,  <37.732735, 39.561069, 49.197887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928692, 38.796242, 49.466278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240551, 39.014545, 49.343441>,  <38.427666, 39.145527, 49.269737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240551, 39.014545, 49.343441>,  <37.928692, 38.796242, 49.466278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240551, 39.014545, 49.343441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517654, -0.285695, 0.806482,
		0.352407, -0.787737, -0.505253,
		0.779643, 0.545756, -0.307094,
		38.474445, 39.178272, 49.251312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516941, 38.364761, 49.581631>,  <37.928692, 38.796242, 49.466278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516941, 38.364761, 49.581631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709286, 38.711121, 49.526501>,  <38.824692, 38.918934, 49.493423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709286, 38.711121, 49.526501>,  <38.516941, 38.364761, 49.581631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709286, 38.711121, 49.526501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472936, -0.123783, 0.872358,
		0.738311, -0.484667, -0.469036,
		0.480862, 0.865896, -0.137826,
		38.853546, 38.970890, 49.485153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195164, 38.190289, 49.688557>,  <38.516941, 38.364761, 49.581631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195164, 38.190289, 49.688557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157635, 38.587269, 49.720131>,  <39.135117, 38.825459, 49.739075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157635, 38.587269, 49.720131>,  <39.195164, 38.190289, 49.688557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157635, 38.587269, 49.720131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307361, -0.046537, 0.950454,
		0.946956, 0.113439, -0.300675,
		-0.093826, 0.992454, 0.078935,
		39.129486, 38.885006, 49.743813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802296, 38.343960, 49.730255>,  <39.195164, 38.190289, 49.688557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802296, 38.343960, 49.730255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632408, 38.663914, 49.899864>,  <39.530476, 38.855888, 50.001629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632408, 38.663914, 49.899864>,  <39.802296, 38.343960, 49.730255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632408, 38.663914, 49.899864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632428, -0.073003, 0.771171,
		0.647806, 0.595693, -0.474866,
		-0.424715, 0.799888, 0.424025,
		39.504993, 38.903881, 50.027073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324184, 38.809097, 49.968739>,  <39.802296, 38.343960, 49.730255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324184, 38.809097, 49.968739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007412, 38.916821, 50.187946>,  <39.817348, 38.981457, 50.319469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007412, 38.916821, 50.187946>,  <40.324184, 38.809097, 49.968739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007412, 38.916821, 50.187946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562173, -0.028767, 0.826519,
		0.238356, 0.962623, -0.128618,
		-0.791927, 0.269311, 0.548018,
		39.769833, 38.997612, 50.352352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606647, 39.404980, 50.405441>,  <40.324184, 38.809097, 49.968739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606647, 39.404980, 50.405441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276524, 39.275002, 50.590168>,  <40.078449, 39.197014, 50.701004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276524, 39.275002, 50.590168>,  <40.606647, 39.404980, 50.405441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276524, 39.275002, 50.590168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470847, 0.055446, 0.880471,
		-0.311709, 0.944107, 0.107238,
		-0.825312, -0.324943, 0.461813,
		40.028931, 39.177517, 50.728710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356804, 39.905567, 50.844536>,  <40.606647, 39.404980, 50.405441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356804, 39.905567, 50.844536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259251, 39.550640, 51.001095>,  <40.200718, 39.337685, 51.095032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259251, 39.550640, 51.001095>,  <40.356804, 39.905567, 50.844536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259251, 39.550640, 51.001095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479931, 0.240274, 0.843762,
		-0.842726, 0.393625, 0.367251,
		-0.243885, -0.887315, 0.391398,
		40.186085, 39.284447, 51.118515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177326, 40.063141, 51.489105>,  <40.356804, 39.905567, 50.844536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177326, 40.063141, 51.489105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.215481, 39.667904, 51.537392>,  <40.238373, 39.430763, 51.566364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.215481, 39.667904, 51.537392>,  <40.177326, 40.063141, 51.489105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215481, 39.667904, 51.537392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374692, 0.147994, 0.915262,
		-0.922229, -0.042072, 0.384347,
		0.095388, -0.988093, 0.120720,
		40.244099, 39.371475, 51.573608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792305, 39.852032, 52.102032>,  <40.177326, 40.063141, 51.489105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792305, 39.852032, 52.102032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104897, 39.618561, 52.013832>,  <40.292450, 39.478477, 51.960911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104897, 39.618561, 52.013832>,  <39.792305, 39.852032, 52.102032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104897, 39.618561, 52.013832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351362, 0.119641, 0.928564,
		-0.515597, -0.803126, 0.298577,
		0.781476, -0.583673, -0.220501,
		40.339340, 39.443459, 51.947681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904491, 39.403465, 52.700329>,  <39.792305, 39.852032, 52.102032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904491, 39.403465, 52.700329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234734, 39.476048, 52.486618>,  <40.432877, 39.519596, 52.358391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234734, 39.476048, 52.486618>,  <39.904491, 39.403465, 52.700329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234734, 39.476048, 52.486618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507891, 0.173537, 0.843760,
		0.245828, -0.967965, 0.051109,
		0.825600, 0.181463, -0.534281,
		40.482414, 39.530487, 52.326332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269772, 39.780724, 52.680920>,  <39.904491, 39.403465, 52.700329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269772, 39.780724, 52.680920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981445, 39.597595, 52.889084>,  <38.808449, 39.487720, 53.013981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981445, 39.597595, 52.889084>,  <39.269772, 39.780724, 52.680920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981445, 39.597595, 52.889084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637618, 0.143580, -0.756854,
		0.271783, -0.877374, -0.395410,
		-0.720817, -0.457821, 0.520407,
		38.765202, 39.460251, 53.045208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785183, 39.641399, 52.183372>,  <39.269772, 39.780724, 52.680920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785183, 39.641399, 52.183372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556946, 39.528587, 52.491886>,  <38.420002, 39.460899, 52.676994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556946, 39.528587, 52.491886>,  <38.785183, 39.641399, 52.183372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556946, 39.528587, 52.491886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795837, -0.041860, -0.604062,
		0.202653, -0.958490, -0.200570,
		-0.570591, -0.282035, 0.771285,
		38.385769, 39.443977, 52.723270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636143, 38.955616, 52.131828>,  <38.785183, 39.641399, 52.183372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636143, 38.955616, 52.131828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327938, 39.070759, 52.359322>,  <38.143017, 39.139843, 52.495815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327938, 39.070759, 52.359322>,  <38.636143, 38.955616, 52.131828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327938, 39.070759, 52.359322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637430, -0.348614, -0.687133,
		0.000471, -0.891968, 0.452099,
		-0.770509, 0.287857, 0.568731,
		38.096786, 39.157116, 52.529942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183743, 38.425533, 52.050648>,  <38.636143, 38.955616, 52.131828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183743, 38.425533, 52.050648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956581, 38.713791, 52.209728>,  <37.820286, 38.886745, 52.305176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956581, 38.713791, 52.209728>,  <38.183743, 38.425533, 52.050648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956581, 38.713791, 52.209728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740269, -0.235941, -0.629551,
		-0.359847, -0.651926, 0.667460,
		-0.567901, 0.720642, 0.397698,
		37.786209, 38.929981, 52.329037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574703, 38.071720, 52.181862>,  <38.183743, 38.425533, 52.050648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574703, 38.071720, 52.181862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487659, 38.461716, 52.163769>,  <37.435432, 38.695713, 52.152912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487659, 38.461716, 52.163769>,  <37.574703, 38.071720, 52.181862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487659, 38.461716, 52.163769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736017, -0.194356, -0.648464,
		-0.641036, -0.107818, 0.759901,
		-0.217607, 0.974988, -0.045233,
		37.422379, 38.754211, 52.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781590, 38.244938, 52.342258>,  <37.574703, 38.071720, 52.181862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781590, 38.244938, 52.342258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928207, 38.526627, 52.099041>,  <37.016178, 38.695641, 51.953110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928207, 38.526627, 52.099041>,  <36.781590, 38.244938, 52.342258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928207, 38.526627, 52.099041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838191, -0.033725, -0.544333,
		-0.403837, 0.709180, 0.577909,
		0.366540, 0.704220, -0.608048,
		37.038170, 38.737892, 51.916626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186405, 38.522526, 52.257496>,  <36.781590, 38.244938, 52.342258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186405, 38.522526, 52.257496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.447784, 38.636738, 51.977074>,  <36.604614, 38.705265, 51.808823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.447784, 38.636738, 51.977074>,  <36.186405, 38.522526, 52.257496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447784, 38.636738, 51.977074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658617, -0.242052, -0.712485,
		-0.373127, 0.927299, 0.029887,
		0.653452, 0.285531, -0.701051,
		36.643822, 38.722397, 51.766758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792095, 38.607784, 51.702961>,  <36.186405, 38.522526, 52.257496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792095, 38.607784, 51.702961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153217, 38.600548, 51.531094>,  <36.369892, 38.596207, 51.427971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153217, 38.600548, 51.531094>,  <35.792095, 38.607784, 51.702961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153217, 38.600548, 51.531094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419105, -0.261000, -0.869615,
		-0.096409, 0.965169, -0.243215,
		0.902805, -0.018094, -0.429670,
		36.424057, 38.595119, 51.402191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687191, 38.783569, 51.070366>,  <35.792095, 38.607784, 51.702961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687191, 38.783569, 51.070366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062309, 38.676098, 50.982414>,  <36.287380, 38.611614, 50.929642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062309, 38.676098, 50.982414>,  <35.687191, 38.783569, 51.070366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062309, 38.676098, 50.982414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284980, -0.233996, -0.929534,
		0.198294, 0.934376, -0.296009,
		0.937799, -0.268677, -0.219878,
		36.343647, 38.595493, 50.916451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993710, 39.117889, 50.407387>,  <35.687191, 38.783569, 51.070366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993710, 39.117889, 50.407387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215168, 38.788139, 50.454502>,  <36.348045, 38.590290, 50.482773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215168, 38.788139, 50.454502>,  <35.993710, 39.117889, 50.407387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215168, 38.788139, 50.454502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026651, -0.158919, -0.986932,
		0.832323, 0.543275, -0.109956,
		0.553649, -0.824377, 0.117793,
		36.381264, 38.540825, 50.489841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496490, 39.075680, 49.807674>,  <35.993710, 39.117889, 50.407387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496490, 39.075680, 49.807674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485920, 38.697262, 49.936863>,  <36.479576, 38.470211, 50.014374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485920, 38.697262, 49.936863>,  <36.496490, 39.075680, 49.807674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485920, 38.697262, 49.936863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130761, -0.317033, -0.939357,
		0.991062, -0.067054, -0.115328,
		-0.026425, -0.946041, 0.322967,
		36.477993, 38.413448, 50.033752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003296, 38.707623, 49.489765>,  <36.496490, 39.075680, 49.807674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003296, 38.707623, 49.489765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718735, 38.446873, 49.594814>,  <36.548000, 38.290424, 49.657845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718735, 38.446873, 49.594814>,  <37.003296, 38.707623, 49.489765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718735, 38.446873, 49.594814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014186, -0.360291, -0.932732,
		0.702644, -0.667271, 0.247064,
		-0.711400, -0.651874, 0.262623,
		36.505314, 38.251312, 49.673599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078522, 38.246834, 48.977055>,  <37.003296, 38.707623, 49.489765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078522, 38.246834, 48.977055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.715591, 38.183971, 49.133038>,  <36.497833, 38.146252, 49.226627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.715591, 38.183971, 49.133038>,  <37.078522, 38.246834, 48.977055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715591, 38.183971, 49.133038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320463, -0.341884, -0.883413,
		0.272157, -0.926508, 0.259835,
		-0.907322, -0.157159, 0.389957,
		36.443394, 38.136826, 49.250027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886986, 37.569885, 48.683105>,  <37.078522, 38.246834, 48.977055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886986, 37.569885, 48.683105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557667, 37.763271, 48.802063>,  <36.360077, 37.879303, 48.873436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557667, 37.763271, 48.802063>,  <36.886986, 37.569885, 48.683105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557667, 37.763271, 48.802063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466611, -0.278144, -0.839589,
		-0.323198, -0.829996, 0.454587,
		-0.823296, 0.483469, 0.297390,
		36.310677, 37.908310, 48.891281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343430, 37.163277, 48.555809>,  <36.886986, 37.569885, 48.683105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343430, 37.163277, 48.555809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153126, 37.514412, 48.577908>,  <36.038944, 37.725094, 48.591167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153126, 37.514412, 48.577908>,  <36.343430, 37.163277, 48.555809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153126, 37.514412, 48.577908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366661, -0.140842, -0.919632,
		-0.799507, -0.457781, 0.388876,
		-0.475760, 0.877838, 0.055246,
		36.010399, 37.777763, 48.594482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590431, 37.033951, 48.348309>,  <36.343430, 37.163277, 48.555809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590431, 37.033951, 48.348309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675064, 37.422081, 48.301495>,  <35.725845, 37.654961, 48.273407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675064, 37.422081, 48.301495>,  <35.590431, 37.033951, 48.348309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675064, 37.422081, 48.301495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308505, -0.047320, -0.950045,
		-0.927393, 0.237119, 0.289338,
		0.211582, 0.970327, -0.117036,
		35.738541, 37.713181, 48.266384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106380, 37.185883, 47.951786>,  <35.590431, 37.033951, 48.348309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106380, 37.185883, 47.951786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331692, 37.514427, 47.915829>,  <35.466881, 37.711555, 47.894253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331692, 37.514427, 47.915829>,  <35.106380, 37.185883, 47.951786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331692, 37.514427, 47.915829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430968, 0.199233, -0.880098,
		-0.704969, 0.534483, 0.466205,
		0.563281, 0.821362, -0.089892,
		35.500675, 37.760834, 47.888863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670948, 37.631969, 47.678612>,  <35.106380, 37.185883, 47.951786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670948, 37.631969, 47.678612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022507, 37.774300, 47.551533>,  <35.233440, 37.859699, 47.475285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022507, 37.774300, 47.551533>,  <34.670948, 37.631969, 47.678612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022507, 37.774300, 47.551533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367556, 0.080643, -0.926498,
		-0.304055, 0.931065, 0.201664,
		0.878893, 0.355830, -0.317698,
		35.286175, 37.881050, 47.456223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514496, 38.254745, 47.234959>,  <34.670948, 37.631969, 47.678612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514496, 38.254745, 47.234959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881462, 38.118591, 47.152500>,  <35.101643, 38.036900, 47.103024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881462, 38.118591, 47.152500>,  <34.514496, 38.254745, 47.234959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881462, 38.118591, 47.152500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182038, 0.101684, -0.978020,
		0.353863, 0.934773, 0.031323,
		0.917411, -0.340383, -0.206146,
		35.156685, 38.016476, 47.090656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739334, 38.588829, 46.725845>,  <34.514496, 38.254745, 47.234959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739334, 38.588829, 46.725845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970592, 38.265606, 46.680603>,  <35.109348, 38.071674, 46.653458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970592, 38.265606, 46.680603>,  <34.739334, 38.588829, 46.725845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970592, 38.265606, 46.680603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200221, -0.006118, -0.979732,
		0.790983, 0.589078, -0.165326,
		0.578149, -0.808053, -0.113107,
		35.144039, 38.023190, 46.646671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154129, 38.723526, 46.129238>,  <34.739334, 38.588829, 46.725845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154129, 38.723526, 46.129238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194122, 38.328262, 46.175793>,  <35.218117, 38.091103, 46.203724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194122, 38.328262, 46.175793>,  <35.154129, 38.723526, 46.129238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194122, 38.328262, 46.175793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072730, -0.123914, -0.989624,
		0.992328, 0.090477, -0.084258,
		0.099979, -0.988160, 0.116383,
		35.224117, 38.031815, 46.210709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.792717, 43.898529, 35.734699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416706, 44.012386, 35.659512>,  <44.191101, 44.080700, 35.614399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416706, 44.012386, 35.659512>,  <44.792717, 43.898529, 35.734699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416706, 44.012386, 35.659512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337280, -0.857927, 0.387561,
		-0.050952, 0.427717, 0.902476,
		-0.940024, 0.284640, -0.187973,
		44.134697, 44.097778, 35.603119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442921, 43.727249, 36.295254>,  <44.792717, 43.898529, 35.734699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442921, 43.727249, 36.295254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183933, 43.734074, 35.990494>,  <44.028542, 43.738167, 35.807636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183933, 43.734074, 35.990494>,  <44.442921, 43.727249, 36.295254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183933, 43.734074, 35.990494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166439, -0.978781, 0.119525,
		-0.743695, 0.204199, 0.636570,
		-0.647469, 0.017060, -0.761901,
		43.989693, 43.739193, 35.761925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924538, 43.323715, 36.464329>,  <44.442921, 43.727249, 36.295254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924538, 43.323715, 36.464329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855228, 43.349865, 36.071247>,  <43.813641, 43.365555, 35.835400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855228, 43.349865, 36.071247>,  <43.924538, 43.323715, 36.464329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855228, 43.349865, 36.071247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315086, -0.949033, -0.007581,
		-0.933111, 0.308321, 0.185043,
		-0.173275, 0.065378, -0.982701,
		43.803246, 43.369480, 35.776436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324547, 42.854820, 36.415527>,  <43.924538, 43.323715, 36.464329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324547, 42.854820, 36.415527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477348, 42.916286, 36.051010>,  <43.569027, 42.953167, 35.832298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477348, 42.916286, 36.051010>,  <43.324547, 42.854820, 36.415527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477348, 42.916286, 36.051010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029566, -0.983542, -0.178246,
		-0.923689, 0.095034, -0.371171,
		0.382002, 0.153670, -0.911296,
		43.591949, 42.962387, 35.777622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802464, 42.604786, 35.800365>,  <43.324547, 42.854820, 36.415527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802464, 42.604786, 35.800365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182114, 42.602203, 35.674435>,  <43.409904, 42.600655, 35.598877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182114, 42.602203, 35.674435>,  <42.802464, 42.604786, 35.800365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182114, 42.602203, 35.674435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174841, -0.842319, -0.509833,
		-0.261897, 0.538941, -0.800595,
		0.949126, -0.006453, -0.314830,
		43.466850, 42.600266, 35.579987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616913, 42.550285, 35.127453>,  <42.802464, 42.604786, 35.800365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616913, 42.550285, 35.127453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997993, 42.441669, 35.182045>,  <43.226643, 42.376499, 35.214798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997993, 42.441669, 35.182045>,  <42.616913, 42.550285, 35.127453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997993, 42.441669, 35.182045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186667, -0.877222, -0.442308,
		0.239825, 0.395912, -0.886418,
		0.952701, -0.271542, 0.136476,
		43.283802, 42.360207, 35.222988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873734, 42.263538, 34.515274>,  <42.616913, 42.550285, 35.127453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873734, 42.263538, 34.515274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147491, 42.096970, 34.754669>,  <43.311749, 41.997028, 34.898308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147491, 42.096970, 34.754669>,  <42.873734, 42.263538, 34.515274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147491, 42.096970, 34.754669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204907, -0.897626, -0.390232,
		0.699723, 0.144439, -0.699661,
		0.684399, -0.416420, 0.598493,
		43.352810, 41.972042, 34.934216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378426, 41.927418, 34.127842>,  <42.873734, 42.263538, 34.515274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378426, 41.927418, 34.127842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357567, 41.741806, 34.481556>,  <43.345051, 41.630440, 34.693783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357567, 41.741806, 34.481556>,  <43.378426, 41.927418, 34.127842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357567, 41.741806, 34.481556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111803, -0.882635, -0.456570,
		0.992361, 0.075058, 0.097904,
		-0.052145, -0.464028, 0.884284,
		43.341923, 41.602596, 34.746841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787243, 41.370403, 34.051918>,  <43.378426, 41.927418, 34.127842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787243, 41.370403, 34.051918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624504, 41.272415, 34.403934>,  <43.526859, 41.213623, 34.615143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624504, 41.272415, 34.403934>,  <43.787243, 41.370403, 34.051918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624504, 41.272415, 34.403934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132409, -0.969013, -0.208524,
		0.903849, 0.031688, 0.426676,
		-0.406847, -0.244970, 0.880037,
		43.502449, 41.198925, 34.667946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216759, 40.935268, 34.315166>,  <43.787243, 41.370403, 34.051918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216759, 40.935268, 34.315166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852230, 40.863014, 34.463146>,  <43.633514, 40.819660, 34.551933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852230, 40.863014, 34.463146>,  <44.216759, 40.935268, 34.315166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852230, 40.863014, 34.463146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005677, -0.904033, -0.427424,
		0.411655, -0.387421, 0.824891,
		-0.911322, -0.180634, 0.369951,
		43.578835, 40.808823, 34.574131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224834, 40.204090, 34.474377>,  <44.216759, 40.935268, 34.315166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224834, 40.204090, 34.474377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.834808, 40.279915, 34.520527>,  <43.600792, 40.325409, 34.548218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.834808, 40.279915, 34.520527>,  <44.224834, 40.204090, 34.474377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834808, 40.279915, 34.520527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216685, -0.925508, -0.310616,
		0.047900, -0.327871, 0.943507,
		-0.975066, 0.189566, 0.115377,
		43.542290, 40.336784, 34.555141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027050, 39.678722, 34.858490>,  <44.224834, 40.204090, 34.474377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027050, 39.678722, 34.858490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694347, 39.809284, 34.678875>,  <43.494724, 39.887623, 34.571106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694347, 39.809284, 34.678875>,  <44.027050, 39.678722, 34.858490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694347, 39.809284, 34.678875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154354, -0.912965, -0.377717,
		-0.533248, -0.244858, 0.809748,
		-0.831758, 0.326405, -0.449042,
		43.444820, 39.907207, 34.544163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425396, 39.381165, 35.129009>,  <44.027050, 39.678722, 34.858490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425396, 39.381165, 35.129009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356411, 39.473637, 34.746006>,  <43.315022, 39.529118, 34.516205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356411, 39.473637, 34.746006>,  <43.425396, 39.381165, 35.129009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356411, 39.473637, 34.746006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221003, -0.956368, -0.191095,
		-0.959904, 0.178656, 0.216022,
		-0.172457, 0.231175, -0.957506,
		43.304672, 39.542988, 34.458755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776573, 39.162716, 34.977085>,  <43.425396, 39.381165, 35.129009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776573, 39.162716, 34.977085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934353, 39.205475, 34.612015>,  <43.029022, 39.231129, 34.392971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934353, 39.205475, 34.612015>,  <42.776573, 39.162716, 34.977085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934353, 39.205475, 34.612015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172097, -0.967043, -0.187646,
		-0.902657, 0.231086, -0.363055,
		0.394452, 0.106899, -0.912677,
		43.052689, 39.237545, 34.338211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324299, 38.840576, 34.533642>,  <42.776573, 39.162716, 34.977085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324299, 38.840576, 34.533642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648727, 38.868984, 34.301395>,  <42.843384, 38.886028, 34.162048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648727, 38.868984, 34.301395>,  <42.324299, 38.840576, 34.533642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648727, 38.868984, 34.301395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162515, -0.926163, -0.340311,
		-0.561919, 0.370376, -0.739641,
		0.811071, 0.071024, -0.580620,
		42.892048, 38.890293, 34.127209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083897, 38.680279, 33.839504>,  <42.324299, 38.840576, 34.533642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083897, 38.680279, 33.839504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.477699, 38.610386, 33.833611>,  <42.713982, 38.568451, 33.830074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.477699, 38.610386, 33.833611>,  <42.083897, 38.680279, 33.839504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477699, 38.610386, 33.833611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159036, -0.854352, -0.494763,
		0.073865, 0.489439, -0.868903,
		0.984506, -0.174732, -0.014731,
		42.773052, 38.557964, 33.829189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318542, 38.416725, 33.132523>,  <42.083897, 38.680279, 33.839504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318542, 38.416725, 33.132523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643917, 38.306698, 33.337524>,  <42.839142, 38.240681, 33.460526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643917, 38.306698, 33.337524>,  <42.318542, 38.416725, 33.132523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643917, 38.306698, 33.337524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057886, -0.915022, -0.399230,
		0.578771, 0.295080, -0.760231,
		0.813433, -0.275070, 0.512507,
		42.887947, 38.224178, 33.491276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830162, 38.001213, 32.615353>,  <42.318542, 38.416725, 33.132523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830162, 38.001213, 32.615353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886513, 37.902935, 32.998974>,  <42.920322, 37.843967, 33.229149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886513, 37.902935, 32.998974>,  <42.830162, 38.001213, 32.615353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886513, 37.902935, 32.998974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106917, -0.959276, -0.261455,
		0.984237, 0.139372, -0.108869,
		0.140875, -0.245693, 0.959056,
		42.928776, 37.829227, 33.286690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310574, 37.450729, 32.574886>,  <42.830162, 38.001213, 32.615353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310574, 37.450729, 32.574886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.204594, 37.399281, 32.957146>,  <43.141006, 37.368412, 33.186501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.204594, 37.399281, 32.957146>,  <43.310574, 37.450729, 32.574886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204594, 37.399281, 32.957146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059615, -0.986983, -0.149368,
		0.962418, -0.096545, 0.253831,
		-0.264948, -0.128622, 0.955646,
		43.125111, 37.360695, 33.243839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646919, 36.930798, 32.923298>,  <43.310574, 37.450729, 32.574886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646919, 36.930798, 32.923298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311722, 36.928722, 33.141560>,  <43.110603, 36.927475, 33.272514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311722, 36.928722, 33.141560>,  <43.646919, 36.930798, 32.923298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311722, 36.928722, 33.141560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109474, -0.978025, -0.177433,
		0.534581, -0.208423, 0.819014,
		-0.837997, -0.005192, 0.545650,
		43.060322, 36.927166, 33.305256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784180, 36.381817, 33.388088>,  <43.646919, 36.930798, 32.923298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784180, 36.381817, 33.388088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387470, 36.431973, 33.377842>,  <43.149445, 36.462067, 33.371693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387470, 36.431973, 33.377842>,  <43.784180, 36.381817, 33.388088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387470, 36.431973, 33.377842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118926, -0.976925, -0.177410,
		-0.047272, -0.172904, 0.983804,
		-0.991777, 0.125386, -0.025619,
		43.089935, 36.469589, 33.370155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517029, 36.302029, 33.562088>,  <43.784180, 36.381817, 33.388088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517029, 36.302029, 33.562088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821896, 36.193764, 33.797321>,  <45.004814, 36.128803, 33.938461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821896, 36.193764, 33.797321>,  <44.517029, 36.302029, 33.562088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821896, 36.193764, 33.797321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209761, 0.756146, 0.619874,
		-0.612455, -0.595804, 0.519535,
		0.762167, -0.270667, 0.588082,
		45.050545, 36.112564, 33.973747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213711, 36.194992, 34.213795>,  <44.517029, 36.302029, 33.562088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213711, 36.194992, 34.213795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601315, 36.283989, 34.256710>,  <44.833878, 36.337387, 34.282459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601315, 36.283989, 34.256710>,  <44.213711, 36.194992, 34.213795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601315, 36.283989, 34.256710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219961, 0.579624, 0.784636,
		0.112393, -0.783921, 0.610603,
		0.969012, 0.222497, 0.107286,
		44.892017, 36.350739, 34.288895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344452, 36.288464, 34.988037>,  <44.213711, 36.194992, 34.213795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344452, 36.288464, 34.988037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664379, 36.467808, 34.828403>,  <44.856335, 36.575413, 34.732624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664379, 36.467808, 34.828403>,  <44.344452, 36.288464, 34.988037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664379, 36.467808, 34.828403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041118, 0.704233, 0.708778,
		0.598831, -0.550484, 0.581694,
		0.799819, 0.448356, -0.399082,
		44.904324, 36.602314, 34.708679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984509, 36.246338, 35.500389>,  <44.344452, 36.288464, 34.988037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984509, 36.246338, 35.500389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045555, 36.568352, 35.271088>,  <45.082184, 36.761562, 35.133507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045555, 36.568352, 35.271088>,  <44.984509, 36.246338, 35.500389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045555, 36.568352, 35.271088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136447, 0.557334, 0.819000,
		0.978821, -0.203211, -0.024787,
		0.152615, 0.805036, -0.573258,
		45.091339, 36.809864, 35.099110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468937, 36.639324, 35.942837>,  <44.984509, 36.246338, 35.500389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468937, 36.639324, 35.942837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339634, 36.878956, 35.649822>,  <45.262054, 37.022736, 35.474014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339634, 36.878956, 35.649822>,  <45.468937, 36.639324, 35.942837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339634, 36.878956, 35.649822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035407, 0.781213, 0.623260,
		0.945650, 0.175534, -0.273742,
		-0.323254, 0.599078, -0.732538,
		45.242657, 37.058678, 35.430061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881870, 37.269604, 35.997070>,  <45.468937, 36.639324, 35.942837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881870, 37.269604, 35.997070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572296, 37.398567, 35.779049>,  <45.386551, 37.475945, 35.648235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572296, 37.398567, 35.779049>,  <45.881870, 37.269604, 35.997070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572296, 37.398567, 35.779049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119559, 0.770829, 0.625722,
		0.621876, 0.549434, -0.558026,
		-0.773935, 0.322404, -0.545050,
		45.340115, 37.495289, 35.615536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008385, 38.022034, 35.795376>,  <45.881870, 37.269604, 35.997070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008385, 38.022034, 35.795376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614296, 37.955555, 35.778809>,  <45.377842, 37.915668, 35.768867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614296, 37.955555, 35.778809>,  <46.008385, 38.022034, 35.795376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614296, 37.955555, 35.778809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165399, 0.860285, 0.482238,
		-0.044513, 0.481963, -0.875060,
		-0.985222, -0.166200, -0.041422,
		45.318729, 37.905697, 35.766380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757183, 38.581707, 35.373276>,  <46.008385, 38.022034, 35.795376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757183, 38.581707, 35.373276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459362, 38.440968, 35.600201>,  <45.280670, 38.356525, 35.736355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459362, 38.440968, 35.600201>,  <45.757183, 38.581707, 35.373276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459362, 38.440968, 35.600201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068729, 0.885712, 0.459119,
		-0.664011, 0.302850, -0.683646,
		-0.744557, -0.351846, 0.567308,
		45.235996, 38.335415, 35.770393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210602, 39.095825, 35.318874>,  <45.757183, 38.581707, 35.373276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210602, 39.095825, 35.318874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.094696, 38.908516, 35.652763>,  <45.025150, 38.796131, 35.853096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.094696, 38.908516, 35.652763>,  <45.210602, 39.095825, 35.318874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094696, 38.908516, 35.652763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203921, 0.882318, 0.424183,
		-0.935121, -0.047303, -0.351156,
		-0.289766, -0.468270, 0.834721,
		45.007767, 38.768036, 35.903179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643326, 39.556934, 35.593685>,  <45.210602, 39.095825, 35.318874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643326, 39.556934, 35.593685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762688, 39.347416, 35.912830>,  <44.834305, 39.221703, 36.104317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762688, 39.347416, 35.912830>,  <44.643326, 39.556934, 35.593685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762688, 39.347416, 35.912830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217948, 0.776468, 0.591266,
		-0.929221, -0.350332, 0.117543,
		0.298408, -0.523799, 0.797864,
		44.852211, 39.190277, 36.152191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350925, 39.943825, 36.155079>,  <44.643326, 39.556934, 35.593685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350925, 39.943825, 36.155079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.617046, 39.712479, 36.343910>,  <44.776718, 39.573669, 36.457211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.617046, 39.712479, 36.343910>,  <44.350925, 39.943825, 36.155079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617046, 39.712479, 36.343910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053511, 0.667646, 0.742553,
		-0.744653, -0.468762, 0.475137,
		0.665304, -0.578369, 0.472080,
		44.816639, 39.538967, 36.485535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046070, 39.701244, 36.847126>,  <44.350925, 39.943825, 36.155079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046070, 39.701244, 36.847126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.445908, 39.709663, 36.839451>,  <44.685810, 39.714714, 36.834846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.445908, 39.709663, 36.839451>,  <44.046070, 39.701244, 36.847126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445908, 39.709663, 36.839451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001462, 0.710753, 0.703440,
		0.028447, -0.703127, 0.710495,
		0.999594, 0.021050, -0.019191,
		44.745785, 39.715977, 36.833694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177601, 39.582584, 37.467445>,  <44.046070, 39.701244, 36.847126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177601, 39.582584, 37.467445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521282, 39.730705, 37.326225>,  <44.727489, 39.819576, 37.241493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521282, 39.730705, 37.326225>,  <44.177601, 39.582584, 37.467445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521282, 39.730705, 37.326225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015799, 0.708922, 0.705110,
		0.511389, -0.600255, 0.614959,
		0.859204, 0.370301, -0.353052,
		44.779045, 39.841797, 37.220310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585602, 39.800674, 38.112270>,  <44.177601, 39.582584, 37.467445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585602, 39.800674, 38.112270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767231, 39.986393, 37.808102>,  <44.876209, 40.097824, 37.625599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767231, 39.986393, 37.808102>,  <44.585602, 39.800674, 38.112270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767231, 39.986393, 37.808102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049869, 0.838901, 0.541995,
		0.889570, -0.284024, 0.357764,
		0.454068, 0.464301, -0.760425,
		44.903450, 40.125683, 37.579975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145027, 40.097904, 38.402592>,  <44.585602, 39.800674, 38.112270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145027, 40.097904, 38.402592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122311, 40.310375, 38.064449>,  <45.108681, 40.437859, 37.861565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122311, 40.310375, 38.064449>,  <45.145027, 40.097904, 38.402592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122311, 40.310375, 38.064449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225668, 0.831636, 0.507401,
		0.972548, -0.161955, -0.167097,
		-0.056788, 0.531180, -0.845354,
		45.105274, 40.469730, 37.810844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712547, 40.659702, 38.405567>,  <45.145027, 40.097904, 38.402592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712547, 40.659702, 38.405567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419273, 40.775017, 38.159210>,  <45.243309, 40.844204, 38.011395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419273, 40.775017, 38.159210>,  <45.712547, 40.659702, 38.405567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419273, 40.775017, 38.159210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177401, 0.955418, 0.236020,
		0.656479, 0.063786, -0.751642,
		-0.733187, 0.288284, -0.615896,
		45.199318, 40.861504, 37.974442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954853, 41.304970, 38.139400>,  <45.712547, 40.659702, 38.405567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954853, 41.304970, 38.139400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557854, 41.331390, 38.098255>,  <45.319653, 41.347244, 38.073566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557854, 41.331390, 38.098255>,  <45.954853, 41.304970, 38.139400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557854, 41.331390, 38.098255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042812, 0.975977, 0.213623,
		0.114503, 0.207617, -0.971485,
		-0.992500, 0.066052, -0.102864,
		45.260105, 41.351208, 38.067394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790775, 41.772942, 37.522301>,  <45.954853, 41.304970, 38.139400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790775, 41.772942, 37.522301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473053, 41.772854, 37.765308>,  <45.282421, 41.772800, 37.911114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473053, 41.772854, 37.765308>,  <45.790775, 41.772942, 37.522301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473053, 41.772854, 37.765308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184797, 0.952527, 0.241956,
		-0.578730, 0.304455, -0.756557,
		-0.794305, -0.000218, 0.607519,
		45.234760, 41.772789, 37.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498898, 42.399532, 37.457821>,  <45.790775, 41.772942, 37.522301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498898, 42.399532, 37.457821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318985, 42.282238, 37.795273>,  <45.211037, 42.211861, 37.997746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318985, 42.282238, 37.795273>,  <45.498898, 42.399532, 37.457821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318985, 42.282238, 37.795273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098981, 0.922383, 0.373380,
		-0.887636, 0.251444, -0.385848,
		-0.449783, -0.293234, 0.843628,
		45.184052, 42.194267, 38.048363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951210, 42.895721, 37.686211>,  <45.498898, 42.399532, 37.457821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951210, 42.895721, 37.686211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005959, 42.705036, 38.033546>,  <45.038807, 42.590626, 38.241947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005959, 42.705036, 38.033546>,  <44.951210, 42.895721, 37.686211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005959, 42.705036, 38.033546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007044, 0.876096, 0.482085,
		-0.990563, -0.072103, 0.116558,
		0.136876, -0.476715, 0.868336,
		45.047020, 42.562023, 38.294048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510754, 43.314281, 38.216534>,  <44.951210, 42.895721, 37.686211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510754, 43.314281, 38.216534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804024, 43.114590, 38.401237>,  <44.979988, 42.994774, 38.512058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804024, 43.114590, 38.401237>,  <44.510754, 43.314281, 38.216534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804024, 43.114590, 38.401237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233495, 0.822549, 0.518550,
		-0.638694, -0.272371, 0.719641,
		0.733178, -0.499227, 0.461760,
		45.023975, 42.964821, 38.539764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.593525, 38.788788, 41.151104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294510, 38.528503, 41.204426>,  <38.115101, 38.372334, 41.236420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294510, 38.528503, 41.204426>,  <38.593525, 38.788788, 41.151104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294510, 38.528503, 41.204426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228725, -0.440592, -0.868081,
		0.623599, -0.618431, 0.478191,
		-0.747535, -0.650709, 0.133302,
		38.070248, 38.333290, 41.244415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866329, 38.110645, 40.985844>,  <38.593525, 38.788788, 41.151104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866329, 38.110645, 40.985844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469707, 38.069386, 40.954414>,  <38.231735, 38.044628, 40.935558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469707, 38.069386, 40.954414>,  <38.866329, 38.110645, 40.985844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469707, 38.069386, 40.954414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126753, -0.643271, -0.755074,
		0.027347, -0.758658, 0.650915,
		-0.991557, -0.103154, -0.078571,
		38.172241, 38.038441, 40.930843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763901, 37.364288, 40.840755>,  <38.866329, 38.110645, 40.985844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763901, 37.364288, 40.840755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419312, 37.539658, 40.738266>,  <38.212559, 37.644878, 40.676773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419312, 37.539658, 40.738266>,  <38.763901, 37.364288, 40.840755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419312, 37.539658, 40.738266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135372, -0.684586, -0.716252,
		-0.489433, -0.582343, 0.649101,
		-0.861470, 0.438428, -0.256226,
		38.160870, 37.671185, 40.661400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431965, 36.780792, 40.610027>,  <38.763901, 37.364288, 40.840755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431965, 36.780792, 40.610027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228798, 37.088974, 40.455929>,  <38.106895, 37.273884, 40.363472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228798, 37.088974, 40.455929>,  <38.431965, 36.780792, 40.610027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228798, 37.088974, 40.455929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450548, -0.618789, -0.643511,
		-0.734182, -0.153282, 0.661424,
		-0.507920, 0.770458, -0.385242,
		38.076420, 37.320110, 40.340355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839680, 36.527302, 40.321800>,  <38.431965, 36.780792, 40.610027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839680, 36.527302, 40.321800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844784, 36.887527, 40.147987>,  <37.847847, 37.103664, 40.043697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844784, 36.887527, 40.147987>,  <37.839680, 36.527302, 40.321800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844784, 36.887527, 40.147987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352403, -0.402638, -0.844804,
		-0.935761, 0.163911, 0.312225,
		0.012759, 0.900564, -0.434535,
		37.848610, 37.157696, 40.017628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186131, 36.620785, 40.102448>,  <37.839680, 36.527302, 40.321800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186131, 36.620785, 40.102448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416679, 36.850960, 39.870358>,  <37.555008, 36.989067, 39.731102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416679, 36.850960, 39.870358>,  <37.186131, 36.620785, 40.102448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416679, 36.850960, 39.870358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376481, -0.443206, -0.813530,
		-0.725299, 0.687340, -0.038808,
		0.576371, 0.575441, -0.580227,
		37.589592, 37.023594, 39.696289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741192, 36.821461, 39.687290>,  <37.186131, 36.620785, 40.102448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741192, 36.821461, 39.687290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091694, 36.870251, 39.500828>,  <37.301994, 36.899525, 39.388950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091694, 36.870251, 39.500828>,  <36.741192, 36.821461, 39.687290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091694, 36.870251, 39.500828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410391, -0.318043, -0.854651,
		-0.252504, 0.940197, -0.228628,
		0.876254, 0.121976, -0.466156,
		37.354568, 36.906845, 39.360981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596035, 37.248852, 39.041763>,  <36.741192, 36.821461, 39.687290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596035, 37.248852, 39.041763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945564, 37.068928, 38.967899>,  <37.155281, 36.960976, 38.923580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945564, 37.068928, 38.967899>,  <36.596035, 37.248852, 39.041763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945564, 37.068928, 38.967899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285045, -0.166212, -0.943993,
		0.393922, 0.877523, -0.273456,
		0.873828, -0.449807, -0.184659,
		37.207714, 36.933987, 38.912502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761913, 37.522659, 38.413162>,  <36.596035, 37.248852, 39.041763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761913, 37.522659, 38.413162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977924, 37.188953, 38.457642>,  <37.107533, 36.988728, 38.484329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977924, 37.188953, 38.457642>,  <36.761913, 37.522659, 38.413162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977924, 37.188953, 38.457642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138704, -0.218529, -0.965922,
		0.830139, 0.506202, -0.233728,
		0.540028, -0.834269, 0.111198,
		37.139935, 36.938671, 38.491001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046310, 37.560116, 37.731461>,  <36.761913, 37.522659, 38.413162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046310, 37.560116, 37.731461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137447, 37.202541, 37.885849>,  <37.192127, 36.987999, 37.978481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137447, 37.202541, 37.885849>,  <37.046310, 37.560116, 37.731461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137447, 37.202541, 37.885849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145951, -0.423271, -0.894170,
		0.962698, 0.147396, -0.226908,
		0.227841, -0.893933, 0.385969,
		37.205799, 36.934361, 38.001640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531681, 37.230232, 37.313911>,  <37.046310, 37.560116, 37.731461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531681, 37.230232, 37.313911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337414, 36.936817, 37.504093>,  <37.220856, 36.760769, 37.618202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337414, 36.936817, 37.504093>,  <37.531681, 37.230232, 37.313911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337414, 36.936817, 37.504093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120721, -0.482408, -0.867588,
		0.865770, -0.478753, 0.145734,
		-0.485664, -0.733538, 0.475450,
		37.191715, 36.716755, 37.646729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806728, 36.617741, 37.032211>,  <37.531681, 37.230232, 37.313911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806728, 36.617741, 37.032211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446785, 36.524845, 37.179901>,  <37.230820, 36.469109, 37.268513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446785, 36.524845, 37.179901>,  <37.806728, 36.617741, 37.032211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446785, 36.524845, 37.179901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151516, -0.627337, -0.763866,
		0.409027, -0.743312, 0.529324,
		-0.899855, -0.232241, 0.369222,
		37.176826, 36.455173, 37.290668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570580, 35.841610, 36.979313>,  <37.806728, 36.617741, 37.032211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570580, 35.841610, 36.979313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227627, 36.047371, 36.986061>,  <37.021854, 36.170826, 36.990108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227627, 36.047371, 36.986061>,  <37.570580, 35.841610, 36.979313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227627, 36.047371, 36.986061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341991, -0.544910, -0.765581,
		-0.384620, -0.662169, 0.643117,
		-0.857385, 0.514398, 0.016872,
		36.970413, 36.201691, 36.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163799, 35.809757, 36.529915>,  <37.570580, 35.841610, 36.979313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163799, 35.809757, 36.529915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372540, 35.475681, 36.460472>,  <38.497784, 35.275238, 36.418808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372540, 35.475681, 36.460472>,  <38.163799, 35.809757, 36.529915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372540, 35.475681, 36.460472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049699, -0.173401, 0.983597,
		-0.851589, -0.521917, -0.048982,
		0.521849, -0.835185, -0.173605,
		38.529095, 35.225124, 36.408390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999405, 35.176304, 36.981293>,  <38.163799, 35.809757, 36.529915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999405, 35.176304, 36.981293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384911, 35.173275, 36.874630>,  <38.616215, 35.171459, 36.810631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384911, 35.173275, 36.874630>,  <37.999405, 35.176304, 36.981293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384911, 35.173275, 36.874630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259140, -0.210729, 0.942571,
		-0.063327, -0.977515, -0.201131,
		0.963761, -0.007570, -0.266658,
		38.674038, 35.171005, 36.794632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331886, 34.853020, 37.562424>,  <37.999405, 35.176304, 36.981293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331886, 34.853020, 37.562424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646683, 35.017143, 37.378120>,  <38.835560, 35.115616, 37.267540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646683, 35.017143, 37.378120>,  <38.331886, 34.853020, 37.562424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646683, 35.017143, 37.378120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527397, -0.059867, 0.847507,
		0.320152, -0.909981, -0.263508,
		0.786991, 0.410305, -0.460755,
		38.882778, 35.140236, 37.239895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813454, 34.510185, 37.958591>,  <38.331886, 34.853020, 37.562424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813454, 34.510185, 37.958591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025417, 34.791031, 37.768333>,  <39.152596, 34.959538, 37.654179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025417, 34.791031, 37.768333>,  <38.813454, 34.510185, 37.958591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025417, 34.791031, 37.768333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648060, 0.026518, 0.761127,
		0.547009, -0.711574, -0.440958,
		0.529905, 0.702111, -0.475648,
		39.184387, 35.001663, 37.625637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475082, 34.186565, 37.759094>,  <38.813454, 34.510185, 37.958591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475082, 34.186565, 37.759094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500065, 34.584846, 37.786453>,  <39.515053, 34.823814, 37.802868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500065, 34.584846, 37.786453>,  <39.475082, 34.186565, 37.759094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500065, 34.584846, 37.786453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613078, -0.092357, 0.784606,
		0.787550, -0.007069, -0.616211,
		0.062457, 0.995701, 0.068402,
		39.518803, 34.883556, 37.806973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104973, 34.320538, 37.841667>,  <39.475082, 34.186565, 37.759094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104973, 34.320538, 37.841667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952820, 34.668491, 37.967270>,  <39.861526, 34.877266, 38.042633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952820, 34.668491, 37.967270>,  <40.104973, 34.320538, 37.841667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952820, 34.668491, 37.967270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593942, -0.030481, 0.803930,
		0.708901, 0.492305, -0.505069,
		-0.380384, 0.869889, 0.314009,
		39.838703, 34.929459, 38.061474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672939, 34.644787, 38.374676>,  <40.104973, 34.320538, 37.841667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672939, 34.644787, 38.374676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336060, 34.842312, 38.461254>,  <40.133930, 34.960827, 38.513203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336060, 34.842312, 38.461254>,  <40.672939, 34.644787, 38.374676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336060, 34.842312, 38.461254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249122, 0.000376, 0.968472,
		0.478159, 0.869570, -0.123336,
		-0.842201, 0.493809, 0.216449,
		40.083401, 34.990456, 38.526188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831116, 35.305462, 38.768719>,  <40.672939, 34.644787, 38.374676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831116, 35.305462, 38.768719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446732, 35.222263, 38.841698>,  <40.216099, 35.172344, 38.885487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446732, 35.222263, 38.841698>,  <40.831116, 35.305462, 38.768719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446732, 35.222263, 38.841698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168350, 0.083726, 0.982165,
		-0.219564, 0.974539, -0.045441,
		-0.960963, -0.207998, 0.182447,
		40.158443, 35.159863, 38.896431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642628, 35.780834, 39.296253>,  <40.831116, 35.305462, 38.768719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642628, 35.780834, 39.296253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359528, 35.499481, 39.322617>,  <40.189667, 35.330669, 39.338436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359528, 35.499481, 39.322617>,  <40.642628, 35.780834, 39.296253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359528, 35.499481, 39.322617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069481, 0.023544, 0.997306,
		-0.703040, 0.710420, 0.032208,
		-0.707748, -0.703384, 0.065913,
		40.147202, 35.288467, 39.342392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248344, 36.013416, 39.885731>,  <40.642628, 35.780834, 39.296253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248344, 36.013416, 39.885731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198944, 35.623249, 39.812733>,  <40.169304, 35.389149, 39.768932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198944, 35.623249, 39.812733>,  <40.248344, 36.013416, 39.885731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198944, 35.623249, 39.812733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031453, -0.179964, 0.983170,
		-0.991846, 0.127165, -0.008454,
		-0.123504, -0.975419, -0.182496,
		40.161892, 35.330624, 39.757984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617203, 35.901245, 40.225754>,  <40.248344, 36.013416, 39.885731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617203, 35.901245, 40.225754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783772, 35.540543, 40.179405>,  <39.883713, 35.324120, 40.151596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783772, 35.540543, 40.179405>,  <39.617203, 35.901245, 40.225754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783772, 35.540543, 40.179405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153591, -0.195387, 0.968625,
		-0.896103, -0.385562, -0.219865,
		0.416424, -0.901757, -0.115868,
		39.908699, 35.270016, 40.144646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293804, 35.481182, 40.735008>,  <39.617203, 35.901245, 40.225754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293804, 35.481182, 40.735008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618118, 35.262226, 40.652073>,  <39.812706, 35.130852, 40.602310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618118, 35.262226, 40.652073>,  <39.293804, 35.481182, 40.735008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618118, 35.262226, 40.652073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010266, -0.340863, 0.940057,
		-0.585251, -0.764314, -0.270748,
		0.810787, -0.547390, -0.207337,
		39.861355, 35.098011, 40.589870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170216, 34.742352, 41.004395>,  <39.293804, 35.481182, 40.735008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170216, 34.742352, 41.004395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560307, 34.828918, 40.986103>,  <39.794361, 34.880859, 40.975128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560307, 34.828918, 40.986103>,  <39.170216, 34.742352, 41.004395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560307, 34.828918, 40.986103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121833, -0.352986, 0.927663,
		0.184622, -0.910255, -0.370609,
		0.975229, 0.216419, -0.045730,
		39.852875, 34.893845, 40.972385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527420, 34.129913, 41.133217>,  <39.170216, 34.742352, 41.004395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527420, 34.129913, 41.133217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805561, 34.407112, 41.209366>,  <39.972446, 34.573433, 41.255054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805561, 34.407112, 41.209366>,  <39.527420, 34.129913, 41.133217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805561, 34.407112, 41.209366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088818, -0.345731, 0.934121,
		0.713163, -0.632631, -0.301955,
		0.695349, 0.692999, 0.190374,
		40.014168, 34.615013, 41.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966751, 33.835442, 41.466858>,  <39.527420, 34.129913, 41.133217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966751, 33.835442, 41.466858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075272, 34.209297, 41.558815>,  <40.140385, 34.433609, 41.613991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075272, 34.209297, 41.558815>,  <39.966751, 33.835442, 41.466858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075272, 34.209297, 41.558815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175433, -0.282872, 0.942977,
		0.946371, -0.215499, -0.240709,
		0.271301, 0.934635, 0.229896,
		40.156662, 34.489689, 41.627785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348522, 33.209297, 41.545071>,  <39.966751, 33.835442, 41.466858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348522, 33.209297, 41.545071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249481, 32.856449, 41.705353>,  <40.190056, 32.644741, 41.801521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249481, 32.856449, 41.705353>,  <40.348522, 33.209297, 41.545071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249481, 32.856449, 41.705353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506786, -0.234577, -0.829543,
		0.825750, -0.408466, -0.388963,
		-0.247598, -0.882117, 0.400706,
		40.175201, 32.591816, 41.825565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416729, 32.689114, 40.966091>,  <40.348522, 33.209297, 41.545071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416729, 32.689114, 40.966091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183853, 32.503143, 41.232895>,  <40.044128, 32.391563, 41.392979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183853, 32.503143, 41.232895>,  <40.416729, 32.689114, 40.966091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183853, 32.503143, 41.232895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725939, -0.072210, -0.683958,
		0.366152, -0.882402, -0.295466,
		-0.582190, -0.464923, 0.667009,
		40.009197, 32.363667, 41.432999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115955, 32.053185, 40.607353>,  <40.416729, 32.689114, 40.966091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115955, 32.053185, 40.607353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859455, 32.130817, 40.904305>,  <39.705555, 32.177399, 41.082478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859455, 32.130817, 40.904305>,  <40.115955, 32.053185, 40.607353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859455, 32.130817, 40.904305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756358, -0.322906, -0.568906,
		0.129305, -0.926317, 0.353859,
		-0.641251, 0.194082, 0.742380,
		39.667080, 32.189041, 41.127018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779251, 31.407299, 40.757435>,  <40.115955, 32.053185, 40.607353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779251, 31.407299, 40.757435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549389, 31.712667, 40.875393>,  <39.411472, 31.895889, 40.946167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549389, 31.712667, 40.875393>,  <39.779251, 31.407299, 40.757435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549389, 31.712667, 40.875393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693141, -0.262424, -0.671333,
		-0.435123, -0.590187, 0.679962,
		-0.574651, 0.763422, 0.294896,
		39.376995, 31.941694, 40.963863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088032, 31.180611, 40.661209>,  <39.779251, 31.407299, 40.757435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088032, 31.180611, 40.661209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018486, 31.571941, 40.706200>,  <38.976761, 31.806740, 40.733192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018486, 31.571941, 40.706200>,  <39.088032, 31.180611, 40.661209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018486, 31.571941, 40.706200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699551, -0.042310, -0.713329,
		-0.693110, -0.202703, 0.691745,
		-0.173862, 0.978326, 0.112475,
		38.966328, 31.865438, 40.739941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392200, 31.138363, 40.929012>,  <39.088032, 31.180611, 40.661209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392200, 31.138363, 40.929012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436092, 31.514997, 40.801659>,  <38.462429, 31.740978, 40.725246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436092, 31.514997, 40.801659>,  <38.392200, 31.138363, 40.929012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436092, 31.514997, 40.801659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845375, -0.080064, -0.528139,
		-0.522781, 0.327112, 0.787209,
		0.109733, 0.941588, -0.318388,
		38.469013, 31.797474, 40.706142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746181, 31.433792, 40.966976>,  <38.392200, 31.138363, 40.929012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746181, 31.433792, 40.966976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941151, 31.671541, 40.711121>,  <38.058132, 31.814192, 40.557606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941151, 31.671541, 40.711121>,  <37.746181, 31.433792, 40.966976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941151, 31.671541, 40.711121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786952, -0.018360, -0.616741,
		-0.378319, 0.803978, 0.458796,
		0.487422, 0.594375, -0.639639,
		38.087376, 31.849854, 40.519230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329605, 31.960369, 40.900772>,  <37.746181, 31.433792, 40.966976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329605, 31.960369, 40.900772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580601, 32.010639, 40.593407>,  <37.731197, 32.040802, 40.408989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580601, 32.010639, 40.593407>,  <37.329605, 31.960369, 40.900772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580601, 32.010639, 40.593407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777485, 0.154442, -0.609643,
		0.042058, 0.979976, 0.194623,
		0.627493, 0.125676, -0.768413,
		37.768848, 32.048344, 40.362885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119545, 32.534538, 40.590885>,  <37.329605, 31.960369, 40.900772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119545, 32.534538, 40.590885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321621, 32.302399, 40.335392>,  <37.442867, 32.163113, 40.182095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321621, 32.302399, 40.335392>,  <37.119545, 32.534538, 40.590885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321621, 32.302399, 40.335392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788715, -0.010052, -0.614677,
		0.350309, 0.814304, -0.462810,
		0.505186, -0.580352, -0.638732,
		37.473175, 32.128292, 40.143772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994347, 32.817253, 39.950005>,  <37.119545, 32.534538, 40.590885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994347, 32.817253, 39.950005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108753, 32.443214, 39.866302>,  <37.177399, 32.218792, 39.816082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108753, 32.443214, 39.866302>,  <36.994347, 32.817253, 39.950005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108753, 32.443214, 39.866302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811516, -0.120255, -0.571822,
		0.509544, 0.333368, -0.793241,
		0.286018, -0.935096, -0.209258,
		37.194557, 32.162685, 39.803524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871391, 32.700050, 39.150692>,  <36.994347, 32.817253, 39.950005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871391, 32.700050, 39.150692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880692, 32.368023, 39.373562>,  <36.886272, 32.168808, 39.507286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880692, 32.368023, 39.373562>,  <36.871391, 32.700050, 39.150692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880692, 32.368023, 39.373562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909488, -0.248963, -0.332941,
		0.415080, -0.499003, -0.760726,
		0.023254, -0.830068, 0.557177,
		36.887669, 32.119003, 39.540714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870739, 32.013844, 38.796249>,  <36.871391, 32.700050, 39.150692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870739, 32.013844, 38.796249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662476, 32.032852, 39.137226>,  <36.537518, 32.044258, 39.341812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662476, 32.032852, 39.137226>,  <36.870739, 32.013844, 38.796249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662476, 32.032852, 39.137226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847851, -0.146084, -0.509714,
		0.100305, -0.988130, 0.116352,
		-0.520661, 0.047523, 0.852440,
		36.506279, 32.047108, 39.392960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.183167, 32.616123, 45.183071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.815884, 32.458160, 45.170818>,  <41.595512, 32.363384, 45.163467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.815884, 32.458160, 45.170818>,  <42.183167, 32.616123, 45.183071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815884, 32.458160, 45.170818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099573, -0.155278, -0.982840,
		0.383375, -0.905503, 0.181901,
		-0.918209, -0.394909, -0.030634,
		41.540421, 32.339687, 45.161629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206135, 32.076561, 44.706722>,  <42.183167, 32.616123, 45.183071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206135, 32.076561, 44.706722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.814491, 32.154850, 44.728771>,  <41.579506, 32.201824, 44.742001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.814491, 32.154850, 44.728771>,  <42.206135, 32.076561, 44.706722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814491, 32.154850, 44.728771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097562, -0.214363, -0.971869,
		-0.178397, -0.956944, 0.228980,
		-0.979109, 0.195719, 0.055120,
		41.520760, 32.213566, 44.745308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762875, 31.501303, 44.324078>,  <42.206135, 32.076561, 44.706722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762875, 31.501303, 44.324078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540527, 31.831253, 44.365250>,  <41.407120, 32.029224, 44.389954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540527, 31.831253, 44.365250>,  <41.762875, 31.501303, 44.324078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540527, 31.831253, 44.365250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326728, -0.102941, -0.939496,
		-0.764372, -0.555862, 0.326731,
		-0.555864, 0.824876, 0.102930,
		41.373768, 32.078716, 44.396130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293633, 31.324631, 43.845284>,  <41.762875, 31.501303, 44.324078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293633, 31.324631, 43.845284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220997, 31.710638, 43.920933>,  <41.177418, 31.942242, 43.966320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220997, 31.710638, 43.920933>,  <41.293633, 31.324631, 43.845284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220997, 31.710638, 43.920933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426578, 0.095980, -0.899343,
		-0.886035, -0.243982, 0.394227,
		-0.181586, 0.965018, 0.189119,
		41.166523, 32.000145, 43.977669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557671, 31.429438, 43.694344>,  <41.293633, 31.324631, 43.845284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557671, 31.429438, 43.694344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754791, 31.777231, 43.680820>,  <40.873066, 31.985907, 43.672707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754791, 31.777231, 43.680820>,  <40.557671, 31.429438, 43.694344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754791, 31.777231, 43.680820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394192, 0.188445, -0.899501,
		-0.775729, 0.456606, 0.435609,
		0.492806, 0.869482, -0.033808,
		40.902634, 32.038074, 43.670677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084961, 31.922092, 43.677856>,  <40.557671, 31.429438, 43.694344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084961, 31.922092, 43.677856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416477, 32.077152, 43.516441>,  <40.615387, 32.170189, 43.419594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416477, 32.077152, 43.516441>,  <40.084961, 31.922092, 43.677856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416477, 32.077152, 43.516441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491027, 0.157999, -0.856696,
		-0.268339, 0.908166, 0.321293,
		0.828786, 0.387649, -0.403537,
		40.665112, 32.193447, 43.395382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861240, 32.392448, 43.266750>,  <40.084961, 31.922092, 43.677856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861240, 32.392448, 43.266750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243332, 32.424633, 43.152866>,  <40.472588, 32.443943, 43.084534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243332, 32.424633, 43.152866>,  <39.861240, 32.392448, 43.266750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243332, 32.424633, 43.152866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295411, 0.206229, -0.932846,
		-0.016340, 0.975190, 0.220765,
		0.955230, 0.080459, -0.284712,
		40.529900, 32.448772, 43.067451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932072, 33.025330, 42.915565>,  <39.861240, 32.392448, 43.266750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932072, 33.025330, 42.915565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202953, 32.763535, 42.781082>,  <40.365482, 32.606457, 42.700394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202953, 32.763535, 42.781082>,  <39.932072, 33.025330, 42.915565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202953, 32.763535, 42.781082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403531, 0.051724, -0.913503,
		0.615270, 0.754298, -0.229080,
		0.677204, -0.654492, -0.336207,
		40.406116, 32.567188, 42.680222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124043, 33.301094, 42.284588>,  <39.932072, 33.025330, 42.915565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124043, 33.301094, 42.284588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.214577, 32.911625, 42.273701>,  <40.268898, 32.677944, 42.267166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.214577, 32.911625, 42.273701>,  <40.124043, 33.301094, 42.284588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214577, 32.911625, 42.273701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461022, -0.082466, -0.883549,
		0.858040, 0.212526, -0.467548,
		0.226333, -0.973669, -0.027220,
		40.282478, 32.619526, 42.265533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627975, 33.862812, 42.038818>,  <40.124043, 33.301094, 42.284588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627975, 33.862812, 42.038818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.444588, 34.215809, 42.080799>,  <40.334553, 34.427605, 42.105988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.444588, 34.215809, 42.080799>,  <40.627975, 33.862812, 42.038818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444588, 34.215809, 42.080799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247941, 0.013610, 0.968679,
		0.853421, 0.470134, -0.225046,
		-0.458472, 0.882490, 0.104950,
		40.307045, 34.480556, 42.112286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129154, 34.318008, 42.306713>,  <40.627975, 33.862812, 42.038818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129154, 34.318008, 42.306713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781273, 34.510620, 42.350075>,  <40.572544, 34.626186, 42.376091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781273, 34.510620, 42.350075>,  <41.129154, 34.318008, 42.306713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781273, 34.510620, 42.350075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268529, 0.277326, 0.922487,
		0.414145, 0.831395, -0.370496,
		-0.869699, 0.481532, 0.108400,
		40.520363, 34.655079, 42.382595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295807, 34.953476, 42.627953>,  <41.129154, 34.318008, 42.306713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295807, 34.953476, 42.627953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903854, 34.902386, 42.689293>,  <40.668682, 34.871731, 42.726097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903854, 34.902386, 42.689293>,  <41.295807, 34.953476, 42.627953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903854, 34.902386, 42.689293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065025, 0.522139, 0.850378,
		-0.188686, 0.843242, -0.503330,
		-0.979883, -0.127725, 0.153352,
		40.609890, 34.864067, 42.735298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942673, 35.578178, 42.760376>,  <41.295807, 34.953476, 42.627953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942673, 35.578178, 42.760376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.717255, 35.301762, 42.941429>,  <40.582005, 35.135910, 43.050060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.717255, 35.301762, 42.941429>,  <40.942673, 35.578178, 42.760376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717255, 35.301762, 42.941429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003500, 0.545918, 0.837831,
		-0.826077, 0.473741, -0.305231,
		-0.563546, -0.691045, 0.452629,
		40.548191, 35.094448, 43.077217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474846, 35.954018, 43.021500>,  <40.942673, 35.578178, 42.760376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474846, 35.954018, 43.021500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.442379, 35.625671, 43.247631>,  <40.422897, 35.428665, 43.383308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.442379, 35.625671, 43.247631>,  <40.474846, 35.954018, 43.021500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442379, 35.625671, 43.247631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167804, 0.570358, 0.804073,
		-0.982473, -0.029600, -0.184038,
		-0.081167, -0.820862, 0.565329,
		40.418030, 35.379414, 43.417229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135727, 36.218185, 43.602570>,  <40.474846, 35.954018, 43.021500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135727, 36.218185, 43.602570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.236271, 35.856941, 43.741829>,  <40.296597, 35.640194, 43.825386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.236271, 35.856941, 43.741829>,  <40.135727, 36.218185, 43.602570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236271, 35.856941, 43.741829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148397, 0.319490, 0.935898,
		-0.956449, -0.286916, -0.053710,
		0.251364, -0.903109, 0.348153,
		40.311680, 35.586010, 43.846275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677532, 36.047703, 44.144772>,  <40.135727, 36.218185, 43.602570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677532, 36.047703, 44.144772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.997700, 35.820454, 44.221256>,  <40.189800, 35.684105, 44.267147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.997700, 35.820454, 44.221256>,  <39.677532, 36.047703, 44.144772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997700, 35.820454, 44.221256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048178, 0.256974, 0.965217,
		-0.597501, -0.781790, 0.178315,
		0.800419, -0.568127, 0.191208,
		40.237827, 35.650017, 44.278618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508148, 35.598278, 44.701672>,  <39.677532, 36.047703, 44.144772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508148, 35.598278, 44.701672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904491, 35.651337, 44.691826>,  <40.142296, 35.683174, 44.685917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904491, 35.651337, 44.691826>,  <39.508148, 35.598278, 44.701672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904491, 35.651337, 44.691826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000502, 0.178834, 0.983879,
		0.134906, -0.974897, 0.177132,
		0.990858, 0.132642, -0.024615,
		40.201748, 35.691132, 44.684441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597439, 35.443260, 45.358444>,  <39.508148, 35.598278, 44.701672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597439, 35.443260, 45.358444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944435, 35.593685, 45.228188>,  <40.152634, 35.683941, 45.150032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944435, 35.593685, 45.228188>,  <39.597439, 35.443260, 45.358444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944435, 35.593685, 45.228188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170583, 0.390044, 0.904858,
		0.467299, -0.840501, 0.274207,
		0.867486, 0.376064, -0.325642,
		40.204681, 35.706505, 45.130493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074509, 35.142197, 45.781189>,  <39.597439, 35.443260, 45.358444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074509, 35.142197, 45.781189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267719, 35.475231, 45.672752>,  <40.383648, 35.675053, 45.607689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267719, 35.475231, 45.672752>,  <40.074509, 35.142197, 45.781189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267719, 35.475231, 45.672752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312864, 0.125053, 0.941530,
		0.817802, -0.539600, -0.200081,
		0.483028, 0.832583, -0.271090,
		40.412628, 35.725006, 45.591427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832115, 35.067604, 45.950264>,  <40.074509, 35.142197, 45.781189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832115, 35.067604, 45.950264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.719128, 35.451099, 45.937397>,  <40.651337, 35.681198, 45.929676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.719128, 35.451099, 45.937397>,  <40.832115, 35.067604, 45.950264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719128, 35.451099, 45.937397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398011, 0.147644, 0.905422,
		0.872811, 0.242950, -0.423292,
		-0.282468, 0.958737, -0.032169,
		40.634388, 35.738720, 45.927746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400040, 35.423717, 46.297523>,  <40.832115, 35.067604, 45.950264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400040, 35.423717, 46.297523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134682, 35.721561, 46.267933>,  <40.975468, 35.900269, 46.250179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134682, 35.721561, 46.267933>,  <41.400040, 35.423717, 46.297523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134682, 35.721561, 46.267933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323701, 0.374711, 0.868798,
		0.674632, 0.552407, -0.489610,
		-0.663392, 0.744606, -0.073978,
		40.935665, 35.944942, 46.245739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763908, 36.117970, 46.469589>,  <41.400040, 35.423717, 46.297523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763908, 36.117970, 46.469589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.380833, 36.231159, 46.490559>,  <41.150986, 36.299072, 46.503139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.380833, 36.231159, 46.490559>,  <41.763908, 36.117970, 46.469589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380833, 36.231159, 46.490559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198366, 0.517073, 0.832638,
		0.208510, 0.807811, -0.551330,
		-0.957692, 0.282978, 0.052428,
		41.093525, 36.316051, 46.506287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774704, 36.824123, 46.501850>,  <41.763908, 36.117970, 46.469589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774704, 36.824123, 46.501850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.427361, 36.712292, 46.665699>,  <41.218956, 36.645191, 46.764008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.427361, 36.712292, 46.665699>,  <41.774704, 36.824123, 46.501850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427361, 36.712292, 46.665699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241773, 0.482503, 0.841865,
		-0.433012, 0.830076, -0.351390,
		-0.868358, -0.279581, 0.409620,
		41.166855, 36.628418, 46.788586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.070709, 35.165909, 48.803123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435368, 35.066223, 48.672409>,  <34.654163, 35.006413, 48.593979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435368, 35.066223, 48.672409>,  <34.070709, 35.165909, 48.803123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435368, 35.066223, 48.672409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283177, 0.195356, -0.938960,
		0.297839, 0.948541, 0.107526,
		0.911648, -0.249210, -0.326790,
		34.708862, 34.991459, 48.574371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283066, 35.715919, 48.219757>,  <34.070709, 35.165909, 48.803123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283066, 35.715919, 48.219757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489834, 35.380806, 48.149441>,  <34.613895, 35.179737, 48.107250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489834, 35.380806, 48.149441>,  <34.283066, 35.715919, 48.219757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489834, 35.380806, 48.149441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298211, 0.016249, -0.954362,
		0.802408, 0.545755, -0.241438,
		0.516924, -0.837787, -0.175789,
		34.644913, 35.129471, 48.096703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514233, 35.906876, 47.575783>,  <34.283066, 35.715919, 48.219757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514233, 35.906876, 47.575783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.548313, 35.514584, 47.646099>,  <34.568764, 35.279209, 47.688290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.548313, 35.514584, 47.646099>,  <34.514233, 35.906876, 47.575783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548313, 35.514584, 47.646099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182152, -0.188794, -0.964975,
		0.979572, 0.050199, -0.194729,
		0.085205, -0.980733, 0.175793,
		34.573875, 35.220364, 47.698837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846657, 35.740314, 47.009300>,  <34.514233, 35.906876, 47.575783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846657, 35.740314, 47.009300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699940, 35.394627, 47.147041>,  <34.611908, 35.187214, 47.229687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699940, 35.394627, 47.147041>,  <34.846657, 35.740314, 47.009300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699940, 35.394627, 47.147041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306786, -0.237084, -0.921777,
		0.878262, -0.443748, -0.178170,
		-0.366795, -0.864222, 0.344357,
		34.589901, 35.135361, 47.250347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196072, 35.202099, 46.603901>,  <34.846657, 35.740314, 47.009300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196072, 35.202099, 46.603901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858898, 35.044998, 46.750984>,  <34.656593, 34.950737, 46.839233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858898, 35.044998, 46.750984>,  <35.196072, 35.202099, 46.603901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858898, 35.044998, 46.750984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269794, -0.282742, -0.920472,
		0.465480, -0.875103, 0.132371,
		-0.842935, -0.392748, 0.367709,
		34.606018, 34.927174, 46.861298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125938, 34.513893, 46.343601>,  <35.196072, 35.202099, 46.603901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125938, 34.513893, 46.343601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760395, 34.584579, 46.489826>,  <34.541069, 34.626991, 46.577560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760395, 34.584579, 46.489826>,  <35.125938, 34.513893, 46.343601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760395, 34.584579, 46.489826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406023, -0.405408, -0.819017,
		0.003470, -0.896892, 0.442235,
		-0.913856, 0.176716, 0.365566,
		34.486237, 34.637596, 46.599495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807129, 33.906090, 46.227715>,  <35.125938, 34.513893, 46.343601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807129, 33.906090, 46.227715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522377, 34.184338, 46.266369>,  <34.351524, 34.351288, 46.289562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522377, 34.184338, 46.266369>,  <34.807129, 33.906090, 46.227715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522377, 34.184338, 46.266369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277114, -0.151789, -0.948772,
		-0.645319, -0.702189, 0.300822,
		-0.711879, 0.695623, 0.096634,
		34.308815, 34.393024, 46.295361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306000, 33.706909, 45.857422>,  <34.807129, 33.906090, 46.227715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306000, 33.706909, 45.857422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222198, 34.097771, 45.871689>,  <34.171917, 34.332287, 45.880249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222198, 34.097771, 45.871689>,  <34.306000, 33.706909, 45.857422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222198, 34.097771, 45.871689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370673, -0.045609, -0.927643,
		-0.904825, -0.207569, 0.371761,
		-0.209505, 0.977156, 0.035672,
		34.159348, 34.390919, 45.882389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621864, 33.664028, 45.716179>,  <34.306000, 33.706909, 45.857422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621864, 33.664028, 45.716179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766781, 34.027355, 45.632565>,  <33.853733, 34.245354, 45.582394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766781, 34.027355, 45.632565>,  <33.621864, 33.664028, 45.716179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766781, 34.027355, 45.632565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372465, -0.064500, -0.925802,
		-0.854407, 0.413273, 0.314949,
		0.362295, 0.908320, -0.209039,
		33.875469, 34.299850, 45.569851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115471, 33.913548, 45.281250>,  <33.621864, 33.664028, 45.716179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115471, 33.913548, 45.281250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423820, 34.159401, 45.214344>,  <33.608829, 34.306915, 45.174202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423820, 34.159401, 45.214344>,  <33.115471, 33.913548, 45.281250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423820, 34.159401, 45.214344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311565, 0.134786, -0.940617,
		-0.555594, 0.777209, 0.295402,
		0.770871, 0.614638, -0.167265,
		33.655083, 34.343792, 45.164165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799450, 34.445843, 44.925415>,  <33.115471, 33.913548, 45.281250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799450, 34.445843, 44.925415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189312, 34.424274, 44.838570>,  <33.423229, 34.411331, 44.786461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189312, 34.424274, 44.838570>,  <32.799450, 34.445843, 44.925415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189312, 34.424274, 44.838570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213401, 0.067134, -0.974655,
		0.067134, 0.996286, 0.053925,
		0.974655, -0.053925, -0.217115,
		33.481709, 34.408096, 44.773434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815044, 34.790043, 44.317276>,  <32.799450, 34.445843, 44.925415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815044, 34.790043, 44.317276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169403, 34.604515, 44.314369>,  <33.382019, 34.493198, 44.312626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169403, 34.604515, 44.314369>,  <32.815044, 34.790043, 44.317276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169403, 34.604515, 44.314369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031134, -0.043812, -0.998555,
		0.462829, 0.884847, -0.053253,
		0.885901, -0.463818, -0.007271,
		33.435173, 34.465370, 44.312187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298382, 35.188824, 43.844471>,  <32.815044, 34.790043, 44.317276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298382, 35.188824, 43.844471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434868, 34.815853, 43.892052>,  <33.516762, 34.592072, 43.920601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434868, 34.815853, 43.892052>,  <33.298382, 35.188824, 43.844471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434868, 34.815853, 43.892052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033752, -0.138617, -0.989771,
		0.939378, 0.333714, -0.078770,
		0.341219, -0.932427, 0.118950,
		33.537235, 34.536125, 43.927738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865337, 35.106453, 43.279076>,  <33.298382, 35.188824, 43.844471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865337, 35.106453, 43.279076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728889, 34.749928, 43.398544>,  <33.647022, 34.536015, 43.470226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728889, 34.749928, 43.398544>,  <33.865337, 35.106453, 43.279076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728889, 34.749928, 43.398544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064107, -0.294936, -0.953364,
		0.937833, -0.344355, 0.043468,
		-0.341116, -0.891309, 0.298676,
		33.626556, 34.482536, 43.488148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515392, 35.300320, 42.945694>,  <33.865337, 35.106453, 43.279076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515392, 35.300320, 42.945694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406624, 35.672070, 42.845833>,  <34.341362, 35.895119, 42.785915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406624, 35.672070, 42.845833>,  <34.515392, 35.300320, 42.945694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406624, 35.672070, 42.845833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264143, 0.321552, 0.909303,
		0.925357, 0.181315, -0.332924,
		-0.271923, 0.929370, -0.249657,
		34.325047, 35.950882, 42.770935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040035, 35.666100, 43.219700>,  <34.515392, 35.300320, 42.945694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040035, 35.666100, 43.219700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749950, 35.933228, 43.152676>,  <34.575897, 36.093506, 43.112461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749950, 35.933228, 43.152676>,  <35.040035, 35.666100, 43.219700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749950, 35.933228, 43.152676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225566, 0.460379, 0.858587,
		0.650526, 0.584862, -0.484512,
		-0.725214, 0.667823, -0.167564,
		34.532387, 36.133575, 43.102406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364155, 36.337200, 43.422974>,  <35.040035, 35.666100, 43.219700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364155, 36.337200, 43.422974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969013, 36.399178, 43.427647>,  <34.731930, 36.436363, 43.430450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969013, 36.399178, 43.427647>,  <35.364155, 36.337200, 43.422974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969013, 36.399178, 43.427647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060239, 0.312565, 0.947984,
		0.143227, 0.937175, -0.318102,
		-0.987855, 0.154939, 0.011687,
		34.672657, 36.445660, 43.431152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315861, 37.058434, 43.452427>,  <35.364155, 36.337200, 43.422974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315861, 37.058434, 43.452427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950089, 36.946514, 43.569408>,  <34.730625, 36.879360, 43.639599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950089, 36.946514, 43.569408>,  <35.315861, 37.058434, 43.452427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950089, 36.946514, 43.569408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131781, 0.477370, 0.868764,
		-0.382689, 0.832964, -0.399650,
		-0.914430, -0.279800, 0.292453,
		34.675758, 36.862576, 43.657143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001038, 37.669964, 43.765079>,  <35.315861, 37.058434, 43.452427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001038, 37.669964, 43.765079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788513, 37.362827, 43.908253>,  <34.660999, 37.178543, 43.994156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788513, 37.362827, 43.908253>,  <35.001038, 37.669964, 43.765079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788513, 37.362827, 43.908253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002140, 0.421285, 0.906926,
		-0.847171, 0.482630, -0.222192,
		-0.531316, -0.767846, 0.357934,
		34.629120, 37.132473, 44.015633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372520, 37.998692, 44.073833>,  <35.001038, 37.669964, 43.765079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372520, 37.998692, 44.073833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.433247, 37.635235, 44.229431>,  <34.469681, 37.417160, 44.322792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.433247, 37.635235, 44.229431>,  <34.372520, 37.998692, 44.073833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433247, 37.635235, 44.229431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111321, 0.406772, 0.906722,
		-0.982120, -0.094349, 0.162905,
		0.151814, -0.908645, 0.388996,
		34.478790, 37.362640, 44.346130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012531, 38.042694, 44.740677>,  <34.372520, 37.998692, 44.073833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012531, 38.042694, 44.740677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266193, 37.736359, 44.783260>,  <34.418392, 37.552559, 44.808811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266193, 37.736359, 44.783260>,  <34.012531, 38.042694, 44.740677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266193, 37.736359, 44.783260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206855, 0.300710, 0.931013,
		-0.745020, -0.568386, 0.349115,
		0.634157, -0.765840, 0.106461,
		34.456440, 37.506607, 44.815197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909416, 37.761345, 45.418549>,  <34.012531, 38.042694, 44.740677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909416, 37.761345, 45.418549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269840, 37.612297, 45.329781>,  <34.486095, 37.522869, 45.276520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269840, 37.612297, 45.329781>,  <33.909416, 37.761345, 45.418549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269840, 37.612297, 45.329781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279415, 0.107404, 0.954144,
		-0.331699, -0.921747, 0.200893,
		0.901056, -0.372621, -0.221924,
		34.540157, 37.500511, 45.263203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080616, 37.186348, 46.007164>,  <33.909416, 37.761345, 45.418549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080616, 37.186348, 46.007164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423134, 37.292484, 45.829918>,  <34.628647, 37.356167, 45.723572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423134, 37.292484, 45.829918>,  <34.080616, 37.186348, 46.007164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423134, 37.292484, 45.829918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443806, 0.060820, 0.894057,
		0.264181, -0.962234, -0.065681,
		0.856297, 0.265343, -0.443113,
		34.680023, 37.372086, 45.696983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633293, 36.820164, 46.328793>,  <34.080616, 37.186348, 46.007164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633293, 36.820164, 46.328793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813316, 37.136383, 46.162666>,  <34.921329, 37.326115, 46.062992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813316, 37.136383, 46.162666>,  <34.633293, 36.820164, 46.328793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813316, 37.136383, 46.162666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484769, 0.174294, 0.857100,
		0.749962, -0.587078, -0.304788,
		0.450062, 0.790544, -0.415312,
		34.948334, 37.373547, 46.038074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337936, 36.724739, 46.356049>,  <34.633293, 36.820164, 46.328793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337936, 36.724739, 46.356049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272408, 37.118187, 46.325951>,  <35.233089, 37.354256, 46.307892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272408, 37.118187, 46.325951>,  <35.337936, 36.724739, 46.356049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272408, 37.118187, 46.325951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438200, 0.140901, 0.887765,
		0.883822, 0.112464, -0.454104,
		-0.163825, 0.983615, -0.075249,
		35.223259, 37.413273, 46.303375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919518, 37.024273, 46.574417>,  <35.337936, 36.724739, 46.356049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919518, 37.024273, 46.574417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667309, 37.334061, 46.594978>,  <35.515984, 37.519932, 46.607315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667309, 37.334061, 46.594978>,  <35.919518, 37.024273, 46.574417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667309, 37.334061, 46.594978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464893, 0.323796, 0.824033,
		0.621543, 0.543468, -0.564205,
		-0.630523, 0.774467, 0.051401,
		35.478153, 37.566402, 46.610397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380245, 37.667522, 46.738651>,  <35.919518, 37.024273, 46.574417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380245, 37.667522, 46.738651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007256, 37.773075, 46.837337>,  <35.783463, 37.836407, 46.896549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007256, 37.773075, 46.837337>,  <36.380245, 37.667522, 46.738651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007256, 37.773075, 46.837337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332834, 0.362074, 0.870703,
		0.140430, 0.894020, -0.425451,
		-0.932470, 0.263877, 0.246714,
		35.727516, 37.852238, 46.911350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433407, 38.337223, 47.088814>,  <36.380245, 37.667522, 46.738651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433407, 38.337223, 47.088814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077175, 38.204117, 47.212841>,  <35.863438, 38.124252, 47.287258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077175, 38.204117, 47.212841>,  <36.433407, 38.337223, 47.088814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077175, 38.204117, 47.212841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245068, 0.223229, 0.943457,
		-0.383168, 0.916206, -0.117251,
		-0.890575, -0.332768, 0.310067,
		35.810001, 38.104286, 47.305862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856606, 38.953766, 47.145039>,  <36.433407, 38.337223, 47.088814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856606, 38.953766, 47.145039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244129, 38.963295, 47.046371>,  <37.476643, 38.969013, 46.987171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244129, 38.963295, 47.046371>,  <36.856606, 38.953766, 47.145039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244129, 38.963295, 47.046371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247812, 0.088396, -0.964767,
		-0.001181, 0.995800, 0.091543,
		0.968807, 0.023825, -0.246667,
		37.534771, 38.970444, 46.972370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034798, 39.544113, 46.638382>,  <36.856606, 38.953766, 47.145039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034798, 39.544113, 46.638382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350979, 39.301407, 46.604881>,  <37.540688, 39.155781, 46.584782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350979, 39.301407, 46.604881>,  <37.034798, 39.544113, 46.638382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350979, 39.301407, 46.604881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049728, 0.072712, -0.996112,
		0.610501, 0.791545, 0.027302,
		0.790453, -0.606770, -0.083752,
		37.588116, 39.119377, 46.579754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457150, 39.896526, 46.152084>,  <37.034798, 39.544113, 46.638382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457150, 39.896526, 46.152084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580990, 39.517036, 46.126598>,  <37.655296, 39.289341, 46.111305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580990, 39.517036, 46.126598>,  <37.457150, 39.896526, 46.152084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580990, 39.517036, 46.126598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054397, 0.049225, -0.997305,
		0.949308, 0.312236, -0.036367,
		0.309604, -0.948729, -0.063714,
		37.673870, 39.232418, 46.107483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003334, 39.985340, 45.690392>,  <37.457150, 39.896526, 46.152084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003334, 39.985340, 45.690392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858734, 39.612404, 45.693443>,  <37.771976, 39.388641, 45.695274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858734, 39.612404, 45.693443>,  <38.003334, 39.985340, 45.690392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858734, 39.612404, 45.693443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128332, -0.057864, -0.990042,
		0.923499, -0.356917, 0.140567,
		-0.361497, -0.932342, 0.007634,
		37.750286, 39.332703, 45.695732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340847, 39.727165, 45.154610>,  <38.003334, 39.985340, 45.690392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340847, 39.727165, 45.154610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.035892, 39.472435, 45.200615>,  <37.852921, 39.319595, 45.228218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.035892, 39.472435, 45.200615>,  <38.340847, 39.727165, 45.154610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035892, 39.472435, 45.200615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068834, -0.256525, -0.964083,
		0.643456, -0.727083, 0.239405,
		-0.762382, -0.636824, 0.115015,
		37.807178, 39.281387, 45.235119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634083, 39.091965, 44.946518>,  <38.340847, 39.727165, 45.154610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634083, 39.091965, 44.946518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238304, 39.041195, 44.918537>,  <38.000839, 39.010731, 44.901749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238304, 39.041195, 44.918537>,  <38.634083, 39.091965, 44.946518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238304, 39.041195, 44.918537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113072, -0.374179, -0.920437,
		0.090657, -0.918629, 0.384580,
		-0.989442, -0.126929, -0.069949,
		37.941471, 39.003117, 44.897552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587261, 38.437462, 44.525143>,  <38.634083, 39.091965, 44.946518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587261, 38.437462, 44.525143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236202, 38.627380, 44.498894>,  <38.025566, 38.741333, 44.483143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236202, 38.627380, 44.498894>,  <38.587261, 38.437462, 44.525143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236202, 38.627380, 44.498894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097344, -0.310631, -0.945533,
		-0.469322, -0.823454, 0.318842,
		-0.877645, 0.474797, -0.065627,
		37.972908, 38.769817, 44.479206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168209, 37.921074, 44.295383>,  <38.587261, 38.437462, 44.525143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168209, 37.921074, 44.295383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006271, 38.276108, 44.207478>,  <37.909107, 38.489128, 44.154736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006271, 38.276108, 44.207478>,  <38.168209, 37.921074, 44.295383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006271, 38.276108, 44.207478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177270, -0.311964, -0.933410,
		-0.897038, -0.338929, 0.283639,
		-0.404845, 0.887584, -0.219762,
		37.884819, 38.542381, 44.141548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415184, 37.789551, 43.962475>,  <38.168209, 37.921074, 44.295383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415184, 37.789551, 43.962475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555038, 38.144520, 43.842312>,  <37.638950, 38.357502, 43.770214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555038, 38.144520, 43.842312>,  <37.415184, 37.789551, 43.962475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555038, 38.144520, 43.842312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215442, -0.235894, -0.947596,
		-0.911780, 0.396029, 0.108712,
		0.349632, 0.887420, -0.300405,
		37.659927, 38.410748, 43.752190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158310, 37.837547, 43.356617>,  <37.415184, 37.789551, 43.962475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158310, 37.837547, 43.356617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401417, 38.151207, 43.306450>,  <37.547283, 38.339401, 43.276348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401417, 38.151207, 43.306450>,  <37.158310, 37.837547, 43.356617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401417, 38.151207, 43.306450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070021, -0.210241, -0.975139,
		-0.791019, 0.583880, -0.182685,
		0.607772, 0.784145, -0.125421,
		37.583748, 38.386452, 43.268826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874664, 38.169876, 42.792763>,  <37.158310, 37.837547, 43.356617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874664, 38.169876, 42.792763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257393, 38.283855, 42.815712>,  <37.487030, 38.352242, 42.829483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257393, 38.283855, 42.815712>,  <36.874664, 38.169876, 42.792763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257393, 38.283855, 42.815712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099731, -0.136432, -0.985617,
		-0.273019, 0.948785, -0.158959,
		0.956825, 0.284946, 0.057374,
		37.544441, 38.369339, 42.832924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929893, 38.729156, 42.311050>,  <36.874664, 38.169876, 42.792763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929893, 38.729156, 42.311050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308754, 38.607651, 42.352283>,  <37.536072, 38.534748, 42.377026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308754, 38.607651, 42.352283>,  <36.929893, 38.729156, 42.311050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308754, 38.607651, 42.352283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091455, -0.052307, -0.994434,
		0.307466, 0.951310, -0.021762,
		0.947154, -0.303765, 0.103085,
		37.592899, 38.516521, 42.383209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371002, 39.107510, 41.894432>,  <36.929893, 38.729156, 42.311050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371002, 39.107510, 41.894432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601826, 38.785774, 41.951061>,  <37.740318, 38.592731, 41.985039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601826, 38.785774, 41.951061>,  <37.371002, 39.107510, 41.894432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601826, 38.785774, 41.951061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138704, -0.074304, -0.987542,
		0.804839, 0.589506, 0.068687,
		0.577058, -0.804339, 0.141570,
		37.774944, 38.544472, 41.993530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805637, 39.141918, 41.360424>,  <37.371002, 39.107510, 41.894432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805637, 39.141918, 41.360424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798988, 38.763893, 41.491013>,  <37.794998, 38.537079, 41.569366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798988, 38.763893, 41.491013>,  <37.805637, 39.141918, 41.360424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798988, 38.763893, 41.491013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001061, -0.326502, -0.945196,
		0.999861, -0.016060, 0.004425,
		-0.016624, -0.945060, 0.326474,
		37.794003, 38.480373, 41.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.501411, 40.313190, 41.100876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.260313, 40.353985, 40.784321>,  <25.115654, 40.378460, 40.594387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.260313, 40.353985, 40.784321>,  <25.501411, 40.313190, 41.100876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260313, 40.353985, 40.784321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265123, -0.909855, -0.319176,
		-0.752600, -0.402197, 0.521374,
		-0.602747, 0.101983, -0.791389,
		25.079489, 40.384579, 40.546906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280842, 39.563862, 40.997097>,  <25.501411, 40.313190, 41.100876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280842, 39.563862, 40.997097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.235237, 39.822609, 40.695484>,  <25.207874, 39.977859, 40.514519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.235237, 39.822609, 40.695484>,  <25.280842, 39.563862, 40.997097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235237, 39.822609, 40.695484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152624, -0.738563, -0.656681,
		-0.981686, -0.189951, -0.014524,
		-0.114010, 0.646872, -0.754028,
		25.201035, 40.016670, 40.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773857, 39.351048, 40.589333>,  <25.280842, 39.563862, 40.997097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773857, 39.351048, 40.589333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.960226, 39.606457, 40.344318>,  <25.072048, 39.759701, 40.197308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.960226, 39.606457, 40.344318>,  <24.773857, 39.351048, 40.589333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960226, 39.606457, 40.344318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044206, -0.708203, -0.704623,
		-0.883721, 0.301222, -0.358194,
		0.465922, 0.638525, -0.612538,
		25.100002, 39.798016, 40.160557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630207, 39.102577, 40.008209>,  <24.773857, 39.351048, 40.589333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630207, 39.102577, 40.008209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.946123, 39.332298, 39.922035>,  <25.135674, 39.470131, 39.870331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.946123, 39.332298, 39.922035>,  <24.630207, 39.102577, 40.008209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946123, 39.332298, 39.922035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174008, -0.546578, -0.819130,
		-0.588178, 0.609453, -0.531614,
		0.789790, 0.574299, -0.215435,
		25.183060, 39.504589, 39.857403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585459, 39.223377, 39.319115>,  <24.630207, 39.102577, 40.008209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585459, 39.223377, 39.319115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.966673, 39.286758, 39.422356>,  <25.195402, 39.324787, 39.484303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.966673, 39.286758, 39.422356>,  <24.585459, 39.223377, 39.319115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966673, 39.286758, 39.422356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301917, -0.564277, -0.768400,
		0.023889, 0.810238, -0.585614,
		0.953035, 0.158450, 0.258105,
		25.252583, 39.334293, 39.499786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823837, 39.263947, 38.734070>,  <24.585459, 39.223377, 39.319115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823837, 39.263947, 38.734070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.147093, 39.193943, 38.959026>,  <25.341045, 39.151939, 39.094002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.147093, 39.193943, 38.959026>,  <24.823837, 39.263947, 38.734070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147093, 39.193943, 38.959026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265265, -0.744375, -0.612813,
		0.525878, 0.644420, -0.555135,
		0.808138, -0.175007, 0.562393,
		25.389534, 39.141441, 39.127743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367813, 39.167618, 38.307255>,  <24.823837, 39.263947, 38.734070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367813, 39.167618, 38.307255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.505186, 39.004166, 38.645504>,  <25.587610, 38.906094, 38.848454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.505186, 39.004166, 38.645504>,  <25.367813, 39.167618, 38.307255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505186, 39.004166, 38.645504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342927, -0.783655, -0.517963,
		0.874332, 0.467871, -0.129001,
		0.343432, -0.408634, 0.845620,
		25.608215, 38.881577, 38.899189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975758, 39.066093, 38.168980>,  <25.367813, 39.167618, 38.307255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975758, 39.066093, 38.168980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.893259, 38.814457, 38.468765>,  <25.843760, 38.663475, 38.648636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.893259, 38.814457, 38.468765>,  <25.975758, 39.066093, 38.168980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893259, 38.814457, 38.468765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496563, -0.727272, -0.473815,
		0.843141, 0.274435, 0.462384,
		-0.206247, -0.629096, 0.749467,
		25.831385, 38.625729, 38.693604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584139, 38.795498, 38.341911>,  <25.975758, 39.066093, 38.168980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584139, 38.795498, 38.341911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321095, 38.527580, 38.479851>,  <26.163267, 38.366829, 38.562614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321095, 38.527580, 38.479851>,  <26.584139, 38.795498, 38.341911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321095, 38.527580, 38.479851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594563, -0.742544, -0.308421,
		0.462647, 0.002215, 0.886540,
		-0.657612, -0.669794, 0.344852,
		26.123812, 38.326641, 38.583305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050428, 38.274860, 38.534122>,  <26.584139, 38.795498, 38.341911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050428, 38.274860, 38.534122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688923, 38.106895, 38.500923>,  <26.472019, 38.006119, 38.481003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688923, 38.106895, 38.500923>,  <27.050428, 38.274860, 38.534122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688923, 38.106895, 38.500923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422687, -0.844990, -0.327608,
		0.067433, -0.331163, 0.941161,
		-0.903763, -0.419908, -0.082998,
		26.417793, 37.980923, 38.476025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170795, 37.542290, 38.712440>,  <27.050428, 38.274860, 38.534122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170795, 37.542290, 38.712440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817766, 37.555771, 38.524857>,  <26.605947, 37.563858, 38.412304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817766, 37.555771, 38.524857>,  <27.170795, 37.542290, 38.712440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817766, 37.555771, 38.524857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251257, -0.809252, -0.531018,
		-0.397407, -0.586493, 0.705757,
		-0.882574, 0.033704, -0.468964,
		26.552994, 37.565884, 38.384167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716635, 36.866558, 38.834698>,  <27.170795, 37.542290, 38.712440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716635, 36.866558, 38.834698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.555922, 37.015518, 38.500061>,  <26.459494, 37.104893, 38.299278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.555922, 37.015518, 38.500061>,  <26.716635, 36.866558, 38.834698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555922, 37.015518, 38.500061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124349, -0.882927, -0.452745,
		-0.907254, -0.285934, 0.308436,
		-0.401781, 0.372401, -0.836594,
		26.435387, 37.127239, 38.249084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234859, 36.394707, 38.698055>,  <26.716635, 36.866558, 38.834698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234859, 36.394707, 38.698055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.309559, 36.593601, 38.359142>,  <26.354378, 36.712936, 38.155796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.309559, 36.593601, 38.359142>,  <26.234859, 36.394707, 38.698055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309559, 36.593601, 38.359142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044735, -0.865863, -0.498278,
		-0.981389, 0.055149, -0.183941,
		0.186747, 0.497233, -0.847281,
		26.365583, 36.742771, 38.104958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740971, 36.118683, 38.387600>,  <26.234859, 36.394707, 38.698055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740971, 36.118683, 38.387600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978443, 36.289555, 38.114819>,  <26.120926, 36.392078, 37.951149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978443, 36.289555, 38.114819>,  <25.740971, 36.118683, 38.387600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978443, 36.289555, 38.114819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113812, -0.794366, -0.596683,
		-0.796611, 0.431854, -0.422982,
		0.593682, 0.427183, -0.681950,
		26.156548, 36.417709, 37.910233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356705, 36.013786, 37.680603>,  <25.740971, 36.118683, 38.387600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356705, 36.013786, 37.680603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.735725, 36.105312, 37.591351>,  <25.963139, 36.160229, 37.537800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.735725, 36.105312, 37.591351>,  <25.356705, 36.013786, 37.680603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735725, 36.105312, 37.591351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035715, -0.769595, -0.637533,
		-0.317601, 0.596126, -0.737403,
		0.947552, 0.228817, -0.223133,
		26.019991, 36.173958, 37.524410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348656, 35.728474, 37.093838>,  <25.356705, 36.013786, 37.680603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348656, 35.728474, 37.093838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.741734, 35.792271, 37.131512>,  <25.977581, 35.830551, 37.154118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.741734, 35.792271, 37.131512>,  <25.348656, 35.728474, 37.093838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741734, 35.792271, 37.131512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180145, -0.704587, -0.686371,
		-0.043109, 0.691461, -0.721126,
		0.982695, 0.159496, 0.094189,
		26.036543, 35.840118, 37.159767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526474, 35.743176, 36.424149>,  <25.348656, 35.728474, 37.093838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526474, 35.743176, 36.424149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838224, 35.645294, 36.654865>,  <26.025274, 35.586563, 36.793297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838224, 35.645294, 36.654865>,  <25.526474, 35.743176, 36.424149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838224, 35.645294, 36.654865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233536, -0.740785, -0.629840,
		0.581405, 0.625585, -0.520203,
		0.779377, -0.244706, 0.576793,
		26.072037, 35.571884, 36.827904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996244, 35.539295, 36.000252>,  <25.526474, 35.743176, 36.424149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996244, 35.539295, 36.000252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092848, 35.356606, 36.342731>,  <26.150810, 35.246994, 36.548222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092848, 35.356606, 36.342731>,  <25.996244, 35.539295, 36.000252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092848, 35.356606, 36.342731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201494, -0.839487, -0.504640,
		0.949249, 0.294395, -0.110719,
		0.241510, -0.456720, 0.856201,
		26.165300, 35.219589, 36.599590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606306, 35.068504, 35.880295>,  <25.996244, 35.539295, 36.000252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606306, 35.068504, 35.880295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.448427, 34.941837, 36.225300>,  <26.353699, 34.865837, 36.432304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.448427, 34.941837, 36.225300>,  <26.606306, 35.068504, 35.880295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448427, 34.941837, 36.225300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123050, -0.948492, -0.291927,
		0.910534, -0.009090, 0.413335,
		-0.394698, -0.316670, 0.862516,
		26.330017, 34.846836, 36.484055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112825, 34.658539, 36.121273>,  <26.606306, 35.068504, 35.880295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112825, 34.658539, 36.121273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764946, 34.570187, 36.297836>,  <26.556219, 34.517178, 36.403774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764946, 34.570187, 36.297836>,  <27.112825, 34.658539, 36.121273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764946, 34.570187, 36.297836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071503, -0.941231, -0.330107,
		0.488376, -0.255532, 0.834381,
		-0.869699, -0.220877, 0.441404,
		26.504036, 34.503922, 36.430256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237190, 34.030491, 36.351730>,  <27.112825, 34.658539, 36.121273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237190, 34.030491, 36.351730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837345, 34.031307, 36.362808>,  <26.597437, 34.031796, 36.369457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837345, 34.031307, 36.362808>,  <27.237190, 34.030491, 36.351730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837345, 34.031307, 36.362808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010977, -0.945138, -0.326486,
		0.025512, -0.326664, 0.944796,
		-0.999614, 0.002042, 0.027698,
		26.537460, 34.031921, 36.371117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878735, 34.119240, 36.814987>,  <27.237190, 34.030491, 36.351730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878735, 34.119240, 36.814987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.251062, 33.973743, 36.829231>,  <28.474459, 33.886444, 36.837776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.251062, 33.973743, 36.829231>,  <27.878735, 34.119240, 36.814987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251062, 33.973743, 36.829231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241810, 0.685977, 0.686268,
		-0.274049, -0.630181, 0.726477,
		0.930820, -0.363740, 0.035607,
		28.530308, 33.864620, 36.839912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106491, 33.999187, 37.491245>,  <27.878735, 34.119240, 36.814987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106491, 33.999187, 37.491245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440512, 34.071766, 37.283489>,  <28.640924, 34.115314, 37.158836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440512, 34.071766, 37.283489>,  <28.106491, 33.999187, 37.491245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440512, 34.071766, 37.283489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228451, 0.744464, 0.627362,
		0.500501, -0.642534, 0.580214,
		0.835050, 0.181445, -0.519393,
		28.691027, 34.126198, 37.127670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555464, 34.319553, 37.895451>,  <28.106491, 33.999187, 37.491245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555464, 34.319553, 37.895451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765987, 34.428528, 37.573265>,  <28.892302, 34.493912, 37.379951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765987, 34.428528, 37.573265>,  <28.555464, 34.319553, 37.895451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765987, 34.428528, 37.573265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353050, 0.791748, 0.498490,
		0.773532, -0.546730, 0.320522,
		0.526312, 0.272437, -0.805465,
		28.923880, 34.510262, 37.331623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198986, 34.510571, 38.170742>,  <28.555464, 34.319553, 37.895451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198986, 34.510571, 38.170742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183025, 34.676647, 37.807198>,  <29.173449, 34.776295, 37.589073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183025, 34.676647, 37.807198>,  <29.198986, 34.510571, 38.170742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183025, 34.676647, 37.807198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382891, 0.846503, 0.369901,
		0.922931, -0.333234, -0.192750,
		-0.039900, 0.415195, -0.908857,
		29.171055, 34.801205, 37.534542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805887, 34.860928, 38.073105>,  <29.198986, 34.510571, 38.170742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805887, 34.860928, 38.073105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554821, 35.037926, 37.816906>,  <29.404182, 35.144123, 37.663185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554821, 35.037926, 37.816906>,  <29.805887, 34.860928, 38.073105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554821, 35.037926, 37.816906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264928, 0.895053, 0.358739,
		0.732019, 0.055482, -0.679021,
		-0.627664, 0.442495, -0.640497,
		29.366522, 35.170673, 37.624756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115297, 35.495583, 37.866394>,  <29.805887, 34.860928, 38.073105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115297, 35.495583, 37.866394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749575, 35.589310, 37.734249>,  <29.530142, 35.645546, 37.654961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749575, 35.589310, 37.734249>,  <30.115297, 35.495583, 37.866394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749575, 35.589310, 37.734249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110377, 0.928944, 0.353385,
		0.389693, 0.286637, -0.875202,
		-0.914306, 0.234314, -0.330365,
		29.475283, 35.659603, 37.635139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213581, 36.141327, 37.668518>,  <30.115297, 35.495583, 37.866394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213581, 36.141327, 37.668518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817610, 36.091808, 37.696003>,  <29.580027, 36.062096, 37.712494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817610, 36.091808, 37.696003>,  <30.213581, 36.141327, 37.668518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817610, 36.091808, 37.696003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123095, 0.992291, 0.014371,
		-0.069960, 0.005768, -0.997533,
		-0.989926, -0.123797, 0.068711,
		29.520632, 36.054668, 37.716618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960661, 36.779922, 37.302341>,  <30.213581, 36.141327, 37.668518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960661, 36.779922, 37.302341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682865, 36.632740, 37.549660>,  <29.516188, 36.544430, 37.698051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682865, 36.632740, 37.549660>,  <29.960661, 36.779922, 37.302341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682865, 36.632740, 37.549660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038604, 0.877156, 0.478650,
		-0.718465, 0.308550, -0.623382,
		-0.694491, -0.367959, 0.618295,
		29.474518, 36.522354, 37.735149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521191, 37.259430, 37.299545>,  <29.960661, 36.779922, 37.302341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521191, 37.259430, 37.299545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435366, 37.036766, 37.620567>,  <29.383871, 36.903168, 37.813183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435366, 37.036766, 37.620567>,  <29.521191, 37.259430, 37.299545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435366, 37.036766, 37.620567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032469, 0.825305, 0.563753,
		-0.976171, 0.094901, -0.195152,
		-0.214561, -0.556656, 0.802557,
		29.370998, 36.869770, 37.861336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815647, 37.416828, 37.537502>,  <29.521191, 37.259430, 37.299545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815647, 37.416828, 37.537502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979177, 37.281979, 37.876728>,  <29.077295, 37.201069, 38.080265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979177, 37.281979, 37.876728>,  <28.815647, 37.416828, 37.537502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979177, 37.281979, 37.876728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170451, 0.884710, 0.433859,
		-0.896554, -0.321926, 0.304229,
		0.408825, -0.337122, 0.848063,
		29.101826, 37.180843, 38.131145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342215, 37.605698, 38.120487>,  <28.815647, 37.416828, 37.537502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342215, 37.605698, 38.120487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703619, 37.541080, 38.279270>,  <28.920462, 37.502312, 38.374538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703619, 37.541080, 38.279270>,  <28.342215, 37.605698, 38.120487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703619, 37.541080, 38.279270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117435, 0.797463, 0.591830,
		-0.412162, -0.581340, 0.701545,
		0.903511, -0.161544, 0.396953,
		28.974672, 37.492619, 38.398357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285572, 37.771721, 38.765953>,  <28.342215, 37.605698, 38.120487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285572, 37.771721, 38.765953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685347, 37.762348, 38.756302>,  <28.925211, 37.756725, 38.750511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685347, 37.762348, 38.756302>,  <28.285572, 37.771721, 38.765953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685347, 37.762348, 38.756302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033477, 0.623093, 0.781431,
		-0.003275, -0.781797, 0.623525,
		0.999434, -0.023433, -0.024131,
		28.985176, 37.755318, 38.749062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632906, 37.566948, 39.433796>,  <28.285572, 37.771721, 38.765953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632906, 37.566948, 39.433796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908188, 37.777660, 39.234249>,  <29.073357, 37.904087, 39.114521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908188, 37.777660, 39.234249>,  <28.632906, 37.566948, 39.433796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908188, 37.777660, 39.234249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103279, 0.609470, 0.786054,
		0.718125, -0.592491, 0.365036,
		0.688207, 0.526784, -0.498867,
		29.114651, 37.935696, 39.084587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161833, 37.770073, 39.954372>,  <28.632906, 37.566948, 39.433796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161833, 37.770073, 39.954372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.209570, 38.020542, 39.646175>,  <29.238213, 38.170822, 39.461258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.209570, 38.020542, 39.646175>,  <29.161833, 37.770073, 39.954372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209570, 38.020542, 39.646175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016304, 0.777175, 0.629074,
		0.992719, -0.062514, 0.102961,
		0.119345, 0.626172, -0.770497,
		29.245373, 38.208393, 39.415028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717882, 38.328651, 40.229538>,  <29.161833, 37.770073, 39.954372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717882, 38.328651, 40.229538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524578, 38.498978, 39.923561>,  <29.408596, 38.601173, 39.739975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524578, 38.498978, 39.923561>,  <29.717882, 38.328651, 40.229538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524578, 38.498978, 39.923561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282800, 0.750981, 0.596700,
		0.828544, 0.504687, -0.242498,
		-0.483259, 0.425814, -0.764947,
		29.379601, 38.626720, 39.694077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791170, 39.088863, 40.208736>,  <29.717882, 38.328651, 40.229538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791170, 39.088863, 40.208736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471041, 39.075359, 39.969292>,  <29.278963, 39.067257, 39.825623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471041, 39.075359, 39.969292>,  <29.791170, 39.088863, 40.208736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471041, 39.075359, 39.969292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365350, 0.819096, 0.442268,
		0.475395, 0.572662, -0.667876,
		-0.800324, -0.033756, -0.598616,
		29.230944, 39.065231, 39.789707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705072, 39.747520, 39.790180>,  <29.791170, 39.088863, 40.208736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705072, 39.747520, 39.790180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350016, 39.567680, 39.830067>,  <29.136982, 39.459774, 39.854000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350016, 39.567680, 39.830067>,  <29.705072, 39.747520, 39.790180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350016, 39.567680, 39.830067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398876, 0.858798, 0.321504,
		-0.230187, 0.245606, -0.941643,
		-0.887644, -0.449604, 0.099718,
		29.083723, 39.432800, 39.859982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224255, 40.274227, 39.714230>,  <29.705072, 39.747520, 39.790180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224255, 40.274227, 39.714230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979578, 39.997261, 39.867275>,  <28.832773, 39.831081, 39.959103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979578, 39.997261, 39.867275>,  <29.224255, 40.274227, 39.714230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979578, 39.997261, 39.867275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640156, 0.717398, 0.274848,
		-0.464796, -0.076811, -0.882080,
		-0.611691, -0.692417, 0.382615,
		28.796070, 39.789536, 39.982059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532959, 40.453747, 39.620003>,  <29.224255, 40.274227, 39.714230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532959, 40.453747, 39.620003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464054, 40.168266, 39.891579>,  <28.422710, 39.996979, 40.054523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464054, 40.168266, 39.891579>,  <28.532959, 40.453747, 39.620003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464054, 40.168266, 39.891579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771676, 0.526161, 0.357310,
		-0.612243, -0.462368, -0.641385,
		-0.172263, -0.713703, 0.678936,
		28.412374, 39.954155, 40.095261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845150, 40.320000, 39.679573>,  <28.532959, 40.453747, 39.620003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845150, 40.320000, 39.679573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977716, 40.153831, 40.018414>,  <28.057257, 40.054131, 40.221718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977716, 40.153831, 40.018414>,  <27.845150, 40.320000, 39.679573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977716, 40.153831, 40.018414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843885, 0.270999, 0.463053,
		-0.421928, -0.868322, -0.260757,
		0.331414, -0.415424, 0.847106,
		28.077141, 40.029205, 40.272545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230446, 39.957054, 39.749020>,  <27.845150, 40.320000, 39.679573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230446, 39.957054, 39.749020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399866, 39.981449, 40.110546>,  <27.501518, 39.996086, 40.327461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399866, 39.981449, 40.110546>,  <27.230446, 39.957054, 39.749020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399866, 39.981449, 40.110546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904402, -0.028344, 0.425739,
		0.051583, -0.997736, 0.043153,
		0.423552, 0.060989, 0.903817,
		27.526932, 39.999748, 40.381691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.740170, 37.139374, 47.157047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.398544, 36.932377, 47.178108>,  <41.193569, 36.808178, 47.190746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.398544, 36.932377, 47.178108>,  <41.740170, 37.139374, 47.157047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398544, 36.932377, 47.178108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114094, 0.285126, 0.951675,
		-0.507500, 0.806785, -0.302559,
		-0.854064, -0.517496, 0.052652,
		41.142326, 36.777126, 47.193905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113594, 37.582821, 47.315979>,  <41.740170, 37.139374, 47.157047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113594, 37.582821, 47.315979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057892, 37.208630, 47.445900>,  <41.024471, 36.984116, 47.523853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.057892, 37.208630, 47.445900>,  <41.113594, 37.582821, 47.315979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057892, 37.208630, 47.445900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036820, 0.332662, 0.942327,
		-0.989571, 0.119267, -0.080770,
		-0.139258, -0.935474, 0.324801,
		41.016113, 36.927986, 47.543339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539288, 37.624588, 47.896751>,  <41.113594, 37.582821, 47.315979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539288, 37.624588, 47.896751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757507, 37.293503, 47.949329>,  <40.888439, 37.094852, 47.980877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757507, 37.293503, 47.949329>,  <40.539288, 37.624588, 47.896751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757507, 37.293503, 47.949329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103185, 0.089311, 0.990644,
		-0.831706, -0.554004, -0.036684,
		0.545545, -0.827710, 0.131445,
		40.921169, 37.045189, 47.988762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358074, 37.348370, 48.485886>,  <40.539288, 37.624588, 47.896751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358074, 37.348370, 48.485886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.702011, 37.148842, 48.442333>,  <40.908371, 37.029125, 48.416203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.702011, 37.148842, 48.442333>,  <40.358074, 37.348370, 48.485886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702011, 37.148842, 48.442333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126301, 0.001187, 0.991991,
		-0.494695, -0.866705, 0.064023,
		0.859840, -0.498819, -0.108879,
		40.959965, 36.999195, 48.409668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328499, 36.816166, 49.020302>,  <40.358074, 37.348370, 48.485886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328499, 36.816166, 49.020302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.708302, 36.858810, 48.902267>,  <40.936184, 36.884399, 48.831448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.708302, 36.858810, 48.902267>,  <40.328499, 36.816166, 49.020302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708302, 36.858810, 48.902267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307605, -0.131005, 0.942453,
		0.061822, -0.985632, -0.157185,
		0.949504, 0.106615, -0.295086,
		40.993153, 36.890793, 48.813740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556721, 36.308258, 49.296261>,  <40.328499, 36.816166, 49.020302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556721, 36.308258, 49.296261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.855419, 36.568356, 49.240337>,  <41.034637, 36.724415, 49.206783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.855419, 36.568356, 49.240337>,  <40.556721, 36.308258, 49.296261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855419, 36.568356, 49.240337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238950, -0.066114, 0.968779,
		0.620703, -0.756840, -0.204747,
		0.746747, 0.650248, -0.139809,
		41.079445, 36.763432, 49.198395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141457, 36.003605, 49.555946>,  <40.556721, 36.308258, 49.296261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141457, 36.003605, 49.555946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.221081, 36.395592, 49.553452>,  <41.268856, 36.630783, 49.551956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.221081, 36.395592, 49.553452>,  <41.141457, 36.003605, 49.555946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221081, 36.395592, 49.553452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437084, -0.083087, 0.895575,
		0.877117, -0.180995, -0.444868,
		0.199057, 0.979968, -0.006233,
		41.280796, 36.689583, 49.551582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880074, 36.189320, 49.589977>,  <41.141457, 36.003605, 49.555946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880074, 36.189320, 49.589977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.691795, 36.518890, 49.716206>,  <41.578831, 36.716633, 49.791943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.691795, 36.518890, 49.716206>,  <41.880074, 36.189320, 49.589977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691795, 36.518890, 49.716206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546897, -0.008212, 0.837160,
		0.692354, 0.566630, -0.446740,
		-0.470691, 0.823931, 0.315573,
		41.550587, 36.766071, 49.810879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395908, 36.535542, 50.062775>,  <41.880074, 36.189320, 49.589977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395908, 36.535542, 50.062775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.055626, 36.722504, 50.158966>,  <41.851456, 36.834682, 50.216682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.055626, 36.722504, 50.158966>,  <42.395908, 36.535542, 50.062775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055626, 36.722504, 50.158966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320684, 0.099007, 0.941997,
		0.416489, 0.878480, -0.234116,
		-0.850705, 0.467409, 0.240480,
		41.800415, 36.862728, 50.231110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586483, 37.159637, 50.440964>,  <42.395908, 36.535542, 50.062775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586483, 37.159637, 50.440964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.205109, 37.077293, 50.529133>,  <41.976284, 37.027885, 50.582035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.205109, 37.077293, 50.529133>,  <42.586483, 37.159637, 50.440964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205109, 37.077293, 50.529133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194779, 0.137702, 0.971133,
		-0.230270, 0.968844, -0.091193,
		-0.953434, -0.205860, 0.220419,
		41.919079, 37.015537, 50.595257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479546, 37.564487, 50.950054>,  <42.586483, 37.159637, 50.440964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479546, 37.564487, 50.950054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152351, 37.342968, 51.012283>,  <41.956036, 37.210056, 51.049622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152351, 37.342968, 51.012283>,  <42.479546, 37.564487, 50.950054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152351, 37.342968, 51.012283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153674, 0.050247, 0.986843,
		-0.554329, 0.831134, 0.044003,
		-0.817988, -0.553798, 0.155577,
		41.906956, 37.176830, 51.058956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103973, 37.854038, 51.563931>,  <42.479546, 37.564487, 50.950054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103973, 37.854038, 51.563931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.975414, 37.478638, 51.513474>,  <41.898277, 37.253395, 51.483200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.975414, 37.478638, 51.513474>,  <42.103973, 37.854038, 51.563931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975414, 37.478638, 51.513474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128837, -0.175313, 0.976046,
		-0.938138, 0.297449, 0.177259,
		-0.321400, -0.938504, -0.126146,
		41.878994, 37.197086, 51.475628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948608, 38.521351, 51.802078>,  <42.103973, 37.854038, 51.563931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948608, 38.521351, 51.802078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.143532, 38.514629, 52.151306>,  <42.260487, 38.510597, 52.360844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.143532, 38.514629, 52.151306>,  <41.948608, 38.521351, 51.802078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143532, 38.514629, 52.151306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655464, 0.667649, -0.353006,
		-0.576969, 0.744287, 0.336368,
		0.487313, -0.016804, 0.873066,
		42.289726, 38.509586, 52.413227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394726, 38.987602, 51.801281>,  <41.948608, 38.521351, 51.802078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394726, 38.987602, 51.801281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.088181, 38.940357, 52.053864>,  <40.904255, 38.912010, 52.205414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.088181, 38.940357, 52.053864>,  <41.394726, 38.987602, 51.801281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088181, 38.940357, 52.053864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641014, 0.075925, -0.763765,
		0.042263, -0.990094, -0.133896,
		-0.766365, -0.118108, 0.631455,
		40.858273, 38.904922, 52.243301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982891, 38.270794, 51.803730>,  <41.394726, 38.987602, 51.801281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982891, 38.270794, 51.803730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.748684, 38.585014, 51.883801>,  <40.608158, 38.773548, 51.931843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.748684, 38.585014, 51.883801>,  <40.982891, 38.270794, 51.803730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748684, 38.585014, 51.883801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606028, -0.260158, -0.751697,
		-0.538422, -0.561445, 0.628396,
		-0.585519, 0.785555, 0.200177,
		40.573029, 38.820683, 51.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290844, 38.078506, 51.656132>,  <40.982891, 38.270794, 51.803730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290844, 38.078506, 51.656132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.296661, 38.478214, 51.642014>,  <40.300152, 38.718040, 51.633541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.296661, 38.478214, 51.642014>,  <40.290844, 38.078506, 51.656132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296661, 38.478214, 51.642014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722504, -0.013903, -0.691226,
		-0.691213, 0.035553, 0.721775,
		0.014541, 0.999271, -0.035297,
		40.301025, 38.777996, 51.631424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602718, 38.238567, 51.659229>,  <40.290844, 38.078506, 51.656132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602718, 38.238567, 51.659229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777485, 38.555679, 51.489239>,  <39.882343, 38.745949, 51.387245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777485, 38.555679, 51.489239>,  <39.602718, 38.238567, 51.659229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777485, 38.555679, 51.489239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763414, 0.076956, -0.641309,
		-0.475714, 0.604628, 0.638844,
		0.436916, 0.792782, -0.424972,
		39.908558, 38.793514, 51.361748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090294, 38.743786, 51.466488>,  <39.602718, 38.238567, 51.659229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090294, 38.743786, 51.466488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.381111, 38.890694, 51.234444>,  <39.555599, 38.978836, 51.095219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.381111, 38.890694, 51.234444>,  <39.090294, 38.743786, 51.466488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381111, 38.890694, 51.234444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667453, 0.179952, -0.722581,
		-0.160989, 0.912541, 0.375967,
		0.727041, 0.367268, -0.580108,
		39.599224, 39.000874, 51.060410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771442, 39.302845, 51.080502>,  <39.090294, 38.743786, 51.466488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771442, 39.302845, 51.080502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078350, 39.226913, 50.835464>,  <39.262493, 39.181355, 50.688442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078350, 39.226913, 50.835464>,  <38.771442, 39.302845, 51.080502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078350, 39.226913, 50.835464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582106, 0.194764, -0.789442,
		0.269169, 0.962305, 0.038936,
		0.767268, -0.189829, -0.612589,
		39.308529, 39.169964, 50.651688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824093, 39.912361, 50.551941>,  <38.771442, 39.302845, 51.080502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824093, 39.912361, 50.551941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035130, 39.612667, 50.391792>,  <39.161751, 39.432850, 50.295704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035130, 39.612667, 50.391792>,  <38.824093, 39.912361, 50.551941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035130, 39.612667, 50.391792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310639, 0.268506, -0.911816,
		0.790664, 0.605438, -0.091079,
		0.527592, -0.749233, -0.400370,
		39.193409, 39.387897, 50.271683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315559, 40.191551, 50.019981>,  <38.824093, 39.912361, 50.551941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315559, 40.191551, 50.019981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246056, 39.807625, 49.931828>,  <39.204353, 39.577271, 49.878937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246056, 39.807625, 49.931828>,  <39.315559, 40.191551, 50.019981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246056, 39.807625, 49.931828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221110, 0.256098, -0.941023,
		0.959646, -0.114779, -0.256722,
		-0.173755, -0.959812, -0.220384,
		39.193928, 39.519680, 49.865711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433357, 40.180653, 49.395439>,  <39.315559, 40.191551, 50.019981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433357, 40.180653, 49.395439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232685, 39.837898, 49.442890>,  <39.112282, 39.632248, 49.471359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232685, 39.837898, 49.442890>,  <39.433357, 40.180653, 49.395439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232685, 39.837898, 49.442890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209375, -0.012775, -0.977752,
		0.839334, -0.515353, -0.173001,
		-0.501677, -0.856883, 0.118624,
		39.082180, 39.580833, 49.478477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595531, 39.707951, 48.767162>,  <39.433357, 40.180653, 49.395439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595531, 39.707951, 48.767162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244797, 39.596699, 48.924030>,  <39.034355, 39.529949, 49.018150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244797, 39.596699, 48.924030>,  <39.595531, 39.707951, 48.767162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244797, 39.596699, 48.924030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374167, -0.117478, -0.919890,
		0.301921, -0.953332, -0.001058,
		-0.876837, -0.278130, 0.392174,
		38.981747, 39.513260, 49.041683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507565, 39.070850, 48.337337>,  <39.595531, 39.707951, 48.767162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507565, 39.070850, 48.337337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.155903, 39.152607, 48.509525>,  <38.944904, 39.201660, 48.612839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.155903, 39.152607, 48.509525>,  <39.507565, 39.070850, 48.337337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155903, 39.152607, 48.509525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475755, -0.324975, -0.817342,
		-0.027164, -0.923372, 0.382944,
		-0.879158, 0.204390, 0.430472,
		38.892155, 39.213924, 48.638668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113949, 38.535858, 48.191936>,  <39.507565, 39.070850, 48.337337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113949, 38.535858, 48.191936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825645, 38.800755, 48.273865>,  <38.652664, 38.959690, 48.323021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825645, 38.800755, 48.273865>,  <39.113949, 38.535858, 48.191936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825645, 38.800755, 48.273865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547962, -0.363335, -0.753475,
		-0.424563, -0.655304, 0.624758,
		-0.720752, 0.662242, 0.204823,
		38.609421, 38.999428, 48.335312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390549, 38.130234, 48.092545>,  <39.113949, 38.535858, 48.191936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390549, 38.130234, 48.092545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341141, 38.525986, 48.061901>,  <38.311497, 38.763435, 48.043514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341141, 38.525986, 48.061901>,  <38.390549, 38.130234, 48.092545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341141, 38.525986, 48.061901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500608, -0.128778, -0.856042,
		-0.856817, -0.067387, 0.511198,
		-0.123517, 0.989381, -0.076605,
		38.304085, 38.822800, 48.038921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659946, 38.222336, 47.941254>,  <38.390549, 38.130234, 48.092545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659946, 38.222336, 47.941254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814693, 38.577648, 47.842232>,  <37.907539, 38.790836, 47.782818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814693, 38.577648, 47.842232>,  <37.659946, 38.222336, 47.941254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814693, 38.577648, 47.842232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612899, 0.047109, -0.788755,
		-0.688978, 0.456869, 0.562654,
		0.386864, 0.888286, -0.247558,
		37.930752, 38.844135, 47.767963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111347, 38.471970, 47.654118>,  <37.659946, 38.222336, 47.941254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111347, 38.471970, 47.654118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421127, 38.676205, 47.504700>,  <37.606995, 38.798744, 47.415051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421127, 38.676205, 47.504700>,  <37.111347, 38.471970, 47.654118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421127, 38.676205, 47.504700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388315, -0.082497, -0.917827,
		-0.499444, 0.855861, 0.134378,
		0.774447, 0.510584, -0.373546,
		37.653461, 38.829380, 47.392635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333405, 38.725552, 47.712868>,  <37.111347, 38.471970, 47.654118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333405, 38.725552, 47.712868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057045, 38.439789, 47.757191>,  <35.891232, 38.268330, 47.783787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057045, 38.439789, 47.757191>,  <36.333405, 38.725552, 47.712868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057045, 38.439789, 47.757191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164957, -0.006547, 0.986279,
		-0.703882, 0.699697, 0.122370,
		-0.690897, -0.714410, 0.110812,
		35.849777, 38.225468, 47.790436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903877, 38.992851, 48.155334>,  <36.333405, 38.725552, 47.712868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903877, 38.992851, 48.155334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842506, 38.599129, 48.190228>,  <35.805683, 38.362896, 48.211163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842506, 38.599129, 48.190228>,  <35.903877, 38.992851, 48.155334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842506, 38.599129, 48.190228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064380, 0.078134, 0.994862,
		-0.986061, 0.158252, 0.051382,
		-0.153424, -0.984303, 0.087233,
		35.796478, 38.303837, 48.216396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390476, 38.879257, 48.639637>,  <35.903877, 38.992851, 48.155334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390476, 38.879257, 48.639637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564823, 38.519508, 48.653183>,  <35.669430, 38.303658, 48.661312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564823, 38.519508, 48.653183>,  <35.390476, 38.879257, 48.639637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564823, 38.519508, 48.653183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234289, 0.149718, 0.960569,
		-0.868982, -0.410744, 0.275970,
		0.435866, -0.899374, 0.033869,
		35.695583, 38.249695, 48.663345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185711, 38.487507, 49.262363>,  <35.390476, 38.879257, 48.639637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185711, 38.487507, 49.262363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532852, 38.321934, 49.152462>,  <35.741135, 38.222588, 49.086521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532852, 38.321934, 49.152462>,  <35.185711, 38.487507, 49.262363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532852, 38.321934, 49.152462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261388, -0.089882, 0.961040,
		-0.422505, -0.905857, 0.030194,
		0.867851, -0.413937, -0.274756,
		35.793209, 38.197754, 49.070034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300720, 37.827110, 49.698814>,  <35.185711, 38.487507, 49.262363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300720, 37.827110, 49.698814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657360, 37.955555, 49.571102>,  <35.871346, 38.032619, 49.494473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657360, 37.955555, 49.571102>,  <35.300720, 37.827110, 49.698814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657360, 37.955555, 49.571102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415637, -0.300483, 0.858462,
		0.179721, -0.898108, -0.401375,
		0.891598, 0.321109, -0.319284,
		35.924839, 38.051888, 49.475315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688965, 37.297947, 50.003536>,  <35.300720, 37.827110, 49.698814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688965, 37.297947, 50.003536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904240, 37.626369, 49.927402>,  <36.033405, 37.823421, 49.881721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904240, 37.626369, 49.927402>,  <35.688965, 37.297947, 50.003536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904240, 37.626369, 49.927402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385048, -0.038634, 0.922087,
		0.749728, -0.569545, -0.336937,
		0.538187, 0.821052, -0.190337,
		36.065697, 37.872684, 49.870300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304985, 37.174049, 50.405556>,  <35.688965, 37.297947, 50.003536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304985, 37.174049, 50.405556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370033, 37.556694, 50.308846>,  <36.409061, 37.786282, 50.250820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370033, 37.556694, 50.308846>,  <36.304985, 37.174049, 50.405556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370033, 37.556694, 50.308846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242676, 0.198730, 0.949534,
		0.956380, -0.213088, -0.199828,
		0.162622, 0.956609, -0.241772,
		36.418819, 37.843678, 50.236313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587231, 36.532669, 50.286255>,  <36.304985, 37.174049, 50.405556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587231, 36.532669, 50.286255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485725, 36.215851, 50.508343>,  <36.424824, 36.025761, 50.641598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485725, 36.215851, 50.508343>,  <36.587231, 36.532669, 50.286255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485725, 36.215851, 50.508343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480306, -0.395062, -0.783091,
		0.839590, -0.465395, -0.280172,
		-0.253761, -0.792044, 0.555222,
		36.409595, 35.978237, 50.674908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701862, 36.023460, 49.836910>,  <36.587231, 36.532669, 50.286255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701862, 36.023460, 49.836910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451553, 35.884567, 50.116291>,  <36.301369, 35.801231, 50.283920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451553, 35.884567, 50.116291>,  <36.701862, 36.023460, 49.836910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451553, 35.884567, 50.116291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341034, -0.683526, -0.645359,
		0.701500, -0.642045, 0.309314,
		-0.625774, -0.347233, 0.698453,
		36.263821, 35.780396, 50.325829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673653, 35.371422, 49.692139>,  <36.701862, 36.023460, 49.836910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673653, 35.371422, 49.692139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359283, 35.388966, 49.938843>,  <36.170662, 35.399490, 50.086868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359283, 35.388966, 49.938843>,  <36.673653, 35.371422, 49.692139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359283, 35.388966, 49.938843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491125, -0.650294, -0.579581,
		0.375658, -0.758416, 0.532622,
		-0.785924, 0.043859, 0.616765,
		36.123505, 35.402122, 50.123871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480179, 34.664837, 49.887043>,  <36.673653, 35.371422, 49.692139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480179, 34.664837, 49.887043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179203, 34.928051, 49.898510>,  <35.998615, 35.085979, 49.905388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179203, 34.928051, 49.898510>,  <36.480179, 34.664837, 49.887043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179203, 34.928051, 49.898510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526534, -0.574788, -0.626403,
		-0.395717, -0.486426, 0.778972,
		-0.752442, 0.658034, 0.028667,
		35.953472, 35.125462, 49.907108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793652, 34.335941, 49.795078>,  <36.480179, 34.664837, 49.887043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793652, 34.335941, 49.795078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632042, 34.691814, 49.710011>,  <35.535076, 34.905338, 49.658970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632042, 34.691814, 49.710011>,  <35.793652, 34.335941, 49.795078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632042, 34.691814, 49.710011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568462, -0.426344, -0.703621,
		-0.716669, -0.163387, 0.678005,
		-0.404026, 0.889682, -0.212668,
		35.510834, 34.958717, 49.646210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037155, 34.289761, 49.787178>,  <35.793652, 34.335941, 49.795078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037155, 34.289761, 49.787178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144798, 34.608818, 49.571270>,  <35.209385, 34.800251, 49.441727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144798, 34.608818, 49.571270>,  <35.037155, 34.289761, 49.787178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144798, 34.608818, 49.571270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577657, -0.314772, -0.753147,
		-0.770645, 0.514480, 0.376055,
		0.269107, 0.797640, -0.539770,
		35.225529, 34.848110, 49.409340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410400, 34.591549, 49.377014>,  <35.037155, 34.289761, 49.787178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410400, 34.591549, 49.377014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697803, 34.779659, 49.172047>,  <34.870247, 34.892525, 49.049065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697803, 34.779659, 49.172047>,  <34.410400, 34.591549, 49.377014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697803, 34.779659, 49.172047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567241, -0.030100, -0.823001,
		-0.402465, 0.882004, 0.245136,
		0.718512, 0.470281, -0.512423,
		34.913357, 34.920742, 49.018318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.534176, 33.479305, 51.724205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.638969, 33.859550, 51.657635>,  <41.701847, 34.087696, 51.617695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.638969, 33.859550, 51.657635>,  <41.534176, 33.479305, 51.724205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638969, 33.859550, 51.657635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197502, -0.221610, -0.954925,
		-0.944645, 0.217310, -0.245807,
		0.261988, 0.950613, -0.166424,
		41.717567, 34.144733, 51.607708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162090, 33.716129, 51.062748>,  <41.534176, 33.479305, 51.724205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162090, 33.716129, 51.062748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.471424, 33.966896, 51.100529>,  <41.657024, 34.117355, 51.123196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.471424, 33.966896, 51.100529>,  <41.162090, 33.716129, 51.062748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471424, 33.966896, 51.100529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154851, -0.042310, -0.987031,
		-0.614794, 0.777933, -0.129799,
		0.773336, 0.626921, 0.094452,
		41.703426, 34.154972, 51.128864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045177, 34.132156, 50.495472>,  <41.162090, 33.716129, 51.062748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045177, 34.132156, 50.495472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.434196, 34.155033, 50.585701>,  <41.667606, 34.168758, 50.639839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.434196, 34.155033, 50.585701>,  <41.045177, 34.132156, 50.495472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434196, 34.155033, 50.585701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228616, -0.053696, -0.972035,
		-0.043478, 0.996918, -0.065296,
		0.972545, 0.057190, 0.225577,
		41.725960, 34.172192, 50.653374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345856, 34.546566, 49.880833>,  <41.045177, 34.132156, 50.495472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345856, 34.546566, 49.880833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.670376, 34.396084, 50.059837>,  <41.865089, 34.305794, 50.167240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.670376, 34.396084, 50.059837>,  <41.345856, 34.546566, 49.880833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670376, 34.396084, 50.059837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457671, -0.067593, -0.886549,
		0.363769, 0.924069, 0.117338,
		0.811301, -0.376201, 0.447507,
		41.913765, 34.283222, 50.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978630, 35.042931, 49.668709>,  <41.345856, 34.546566, 49.880833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978630, 35.042931, 49.668709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.047691, 34.663166, 49.773643>,  <42.089127, 34.435307, 49.836605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.047691, 34.663166, 49.773643>,  <41.978630, 35.042931, 49.668709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047691, 34.663166, 49.773643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302143, -0.202446, -0.931517,
		0.937497, 0.240089, 0.251905,
		0.172650, -0.949407, 0.262334,
		42.099487, 34.378345, 49.852345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308338, 34.790371, 49.142551>,  <41.978630, 35.042931, 49.668709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308338, 34.790371, 49.142551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.281422, 34.444565, 49.341782>,  <42.265270, 34.237080, 49.461319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.281422, 34.444565, 49.341782>,  <42.308338, 34.790371, 49.142551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281422, 34.444565, 49.341782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071117, -0.502097, -0.861882,
		0.995195, -0.022579, 0.095270,
		-0.067295, -0.864516, 0.498079,
		42.261234, 34.185211, 49.491207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763836, 34.304256, 48.819431>,  <42.308338, 34.790371, 49.142551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763836, 34.304256, 48.819431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.498066, 34.086124, 49.023849>,  <42.338604, 33.955246, 49.146500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.498066, 34.086124, 49.023849>,  <42.763836, 34.304256, 48.819431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498066, 34.086124, 49.023849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010969, -0.690840, -0.722925,
		0.747279, -0.474720, 0.464990,
		-0.664420, -0.545326, 0.511043,
		42.298740, 33.922527, 49.177162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981052, 33.615459, 48.670330>,  <42.763836, 34.304256, 48.819431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981052, 33.615459, 48.670330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.593727, 33.600643, 48.769115>,  <42.361332, 33.591755, 48.828388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.593727, 33.600643, 48.769115>,  <42.981052, 33.615459, 48.670330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593727, 33.600643, 48.769115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188981, -0.537772, -0.821637,
		0.163243, -0.842276, 0.513734,
		-0.968317, -0.037041, 0.246962,
		42.303230, 33.589531, 48.843204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749065, 32.997475, 48.494705>,  <42.981052, 33.615459, 48.670330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749065, 32.997475, 48.494705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.386738, 33.157261, 48.551159>,  <42.169342, 33.253132, 48.585030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.386738, 33.157261, 48.551159>,  <42.749065, 32.997475, 48.494705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386738, 33.157261, 48.551159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391592, -0.662271, -0.638790,
		-0.161709, -0.633893, 0.756326,
		-0.905818, 0.399469, 0.141133,
		42.114994, 33.277103, 48.593498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302128, 32.422886, 48.482811>,  <42.749065, 32.997475, 48.494705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302128, 32.422886, 48.482811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.067204, 32.734138, 48.393749>,  <41.926250, 32.920891, 48.340313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.067204, 32.734138, 48.393749>,  <42.302128, 32.422886, 48.482811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067204, 32.734138, 48.393749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478826, -0.555844, -0.679532,
		-0.652530, -0.292480, 0.699042,
		-0.587307, 0.778135, -0.222658,
		41.891010, 32.967579, 48.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531170, 32.246098, 48.476456>,  <42.302128, 32.422886, 48.482811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531170, 32.246098, 48.476456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.570187, 32.564220, 48.237133>,  <41.593597, 32.755096, 48.093540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.570187, 32.564220, 48.237133>,  <41.531170, 32.246098, 48.476456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570187, 32.564220, 48.237133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536391, -0.464371, -0.704730,
		-0.838314, 0.389668, 0.381300,
		0.097546, 0.795310, -0.598303,
		41.599449, 32.802814, 48.057644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909882, 32.387241, 48.242615>,  <41.531170, 32.246098, 48.476456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909882, 32.387241, 48.242615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.150143, 32.560993, 47.974129>,  <41.294300, 32.665245, 47.813038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.150143, 32.560993, 47.974129>,  <40.909882, 32.387241, 48.242615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150143, 32.560993, 47.974129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474035, -0.482566, -0.736492,
		-0.643822, 0.760556, -0.083944,
		0.600652, 0.434378, -0.671218,
		41.330338, 32.691307, 47.772762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150303, 32.646648, 48.285374>,  <40.909882, 32.387241, 48.242615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150303, 32.646648, 48.285374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.807365, 32.460854, 48.374111>,  <39.601601, 32.349377, 48.427353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.807365, 32.460854, 48.374111>,  <40.150303, 32.646648, 48.285374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807365, 32.460854, 48.374111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079679, 0.545535, 0.834292,
		-0.508537, 0.697600, -0.504722,
		-0.857346, -0.464484, 0.221840,
		39.550163, 32.321507, 48.440662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594582, 33.185188, 48.322800>,  <40.150303, 32.646648, 48.285374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594582, 33.185188, 48.322800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.550850, 32.856167, 48.546032>,  <39.524609, 32.658752, 48.679970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.550850, 32.856167, 48.546032>,  <39.594582, 33.185188, 48.322800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550850, 32.856167, 48.546032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094544, 0.567504, 0.817924,
		-0.989499, 0.036663, -0.139814,
		-0.109333, -0.822554, 0.558078,
		39.518051, 32.609402, 48.713455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972523, 33.320644, 48.752743>,  <39.594582, 33.185188, 48.322800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972523, 33.320644, 48.752743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.161690, 33.023117, 48.941669>,  <39.275192, 32.844601, 49.055027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.161690, 33.023117, 48.941669>,  <38.972523, 33.320644, 48.752743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161690, 33.023117, 48.941669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224806, 0.416451, 0.880926,
		-0.851944, -0.522788, 0.029735,
		0.472921, -0.743815, 0.472319,
		39.303566, 32.799973, 49.083366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584431, 33.293148, 49.346863>,  <38.972523, 33.320644, 48.752743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584431, 33.293148, 49.346863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.905792, 33.074154, 49.440498>,  <39.098610, 32.942757, 49.496681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.905792, 33.074154, 49.440498>,  <38.584431, 33.293148, 49.346863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905792, 33.074154, 49.440498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008147, 0.403212, 0.915070,
		-0.595379, -0.733264, 0.328402,
		0.803404, -0.547489, 0.234090,
		39.146812, 32.909908, 49.510727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426647, 33.039402, 49.944958>,  <38.584431, 33.293148, 49.346863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426647, 33.039402, 49.944958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.825455, 33.009068, 49.950779>,  <39.064739, 32.990868, 49.954269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.825455, 33.009068, 49.950779>,  <38.426647, 33.039402, 49.944958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825455, 33.009068, 49.950779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004071, 0.239792, 0.970816,
		-0.077109, -0.967858, 0.239384,
		0.997014, -0.075833, 0.014550,
		39.124557, 32.986317, 49.955143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611954, 32.819752, 50.655224>,  <38.426647, 33.039402, 49.944958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611954, 32.819752, 50.655224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.959560, 32.934265, 50.493805>,  <39.168125, 33.002975, 50.396954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.959560, 32.934265, 50.493805>,  <38.611954, 32.819752, 50.655224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959560, 32.934265, 50.493805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216852, 0.512730, 0.830712,
		0.444733, -0.809412, 0.383489,
		0.869015, 0.286285, -0.403551,
		39.220264, 33.020149, 50.372738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989594, 32.868942, 51.268833>,  <38.611954, 32.819752, 50.655224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989594, 32.868942, 51.268833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.184963, 33.074001, 50.986378>,  <39.302185, 33.197037, 50.816906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.184963, 33.074001, 50.986378>,  <38.989594, 32.868942, 51.268833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184963, 33.074001, 50.986378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287962, 0.669205, 0.685013,
		0.823723, -0.537918, 0.179233,
		0.488425, 0.512649, -0.706139,
		39.331490, 33.227795, 50.774536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681034, 32.935825, 51.465755>,  <38.989594, 32.868942, 51.268833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681034, 32.935825, 51.465755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.637989, 33.240223, 51.209846>,  <39.612164, 33.422863, 51.056301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.637989, 33.240223, 51.209846>,  <39.681034, 32.935825, 51.465755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637989, 33.240223, 51.209846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327167, 0.634775, 0.700016,
		0.938819, -0.133982, -0.317282,
		-0.107613, 0.760992, -0.639773,
		39.605705, 33.468521, 51.017914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254158, 33.222782, 51.560799>,  <39.681034, 32.935825, 51.465755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254158, 33.222782, 51.560799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.013248, 33.486713, 51.381073>,  <39.868702, 33.645073, 51.273235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.013248, 33.486713, 51.381073>,  <40.254158, 33.222782, 51.560799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013248, 33.486713, 51.381073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233690, 0.683927, 0.691110,
		0.763315, 0.311239, -0.566110,
		-0.602278, 0.659829, -0.449319,
		39.832565, 33.684662, 51.246277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606388, 33.889214, 51.515858>,  <40.254158, 33.222782, 51.560799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606388, 33.889214, 51.515858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.219250, 33.979855, 51.472191>,  <39.986965, 34.034241, 51.445992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.219250, 33.979855, 51.472191>,  <40.606388, 33.889214, 51.515858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219250, 33.979855, 51.472191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105751, 0.760379, 0.640812,
		0.228219, 0.608666, -0.759896,
		-0.967850, 0.226605, -0.109166,
		39.928894, 34.047836, 51.439442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625141, 34.570427, 51.329784>,  <40.606388, 33.889214, 51.515858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625141, 34.570427, 51.329784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.256580, 34.504726, 51.470661>,  <40.035442, 34.465305, 51.555187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.256580, 34.504726, 51.470661>,  <40.625141, 34.570427, 51.329784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256580, 34.504726, 51.470661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064310, 0.829343, 0.555027,
		-0.383253, 0.534052, -0.753595,
		-0.921402, -0.164252, 0.352193,
		39.980160, 34.455452, 51.576321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300663, 35.172916, 51.275555>,  <40.625141, 34.570427, 51.329784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300663, 35.172916, 51.275555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.046803, 34.985500, 51.521381>,  <39.894485, 34.873051, 51.668877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.046803, 34.985500, 51.521381>,  <40.300663, 35.172916, 51.275555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046803, 34.985500, 51.521381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162534, 0.858385, 0.486578,
		-0.755514, 0.208919, -0.620928,
		-0.634650, -0.468538, 0.614566,
		39.856407, 34.844940, 51.705750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684147, 35.556110, 51.331696>,  <40.300663, 35.172916, 51.275555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684147, 35.556110, 51.331696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.687698, 35.336361, 51.665909>,  <39.689831, 35.204510, 51.866436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.687698, 35.336361, 51.665909>,  <39.684147, 35.556110, 51.331696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687698, 35.336361, 51.665909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156578, 0.824493, 0.543779,
		-0.987626, -0.135655, -0.078697,
		0.008881, -0.549372, 0.835531,
		39.690361, 35.171551, 51.916569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056583, 35.733040, 51.689411>,  <39.684147, 35.556110, 51.331696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056583, 35.733040, 51.689411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.295452, 35.569008, 51.965157>,  <39.438774, 35.470589, 52.130604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.295452, 35.569008, 51.965157>,  <39.056583, 35.733040, 51.689411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295452, 35.569008, 51.965157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205856, 0.752292, 0.625843,
		-0.775251, -0.515643, 0.364827,
		0.597168, -0.410084, 0.689363,
		39.474602, 35.445984, 52.171967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776340, 35.809746, 52.415459>,  <39.056583, 35.733040, 51.689411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776340, 35.809746, 52.415459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.174427, 35.775658, 52.434536>,  <39.413280, 35.755207, 52.445984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.174427, 35.775658, 52.434536>,  <38.776340, 35.809746, 52.415459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174427, 35.775658, 52.434536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046862, 0.845222, 0.532357,
		-0.085676, -0.527577, 0.845176,
		0.995220, -0.085216, 0.047692,
		39.472992, 35.750092, 52.448845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275913, 35.184444, 52.468224>,  <38.776340, 35.809746, 52.415459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275913, 35.184444, 52.468224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.176716, 35.570518, 52.434967>,  <38.117199, 35.802162, 52.415012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.176716, 35.570518, 52.434967>,  <38.275913, 35.184444, 52.468224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176716, 35.570518, 52.434967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698724, -0.237653, -0.674764,
		-0.671034, -0.109239, 0.733335,
		-0.247990, 0.965188, -0.083145,
		38.102318, 35.860073, 52.410023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512249, 35.308544, 52.597237>,  <38.275913, 35.184444, 52.468224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512249, 35.308544, 52.597237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658581, 35.598793, 52.364124>,  <37.746380, 35.772942, 52.224258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658581, 35.598793, 52.364124>,  <37.512249, 35.308544, 52.597237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658581, 35.598793, 52.364124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808851, -0.061849, -0.584752,
		-0.460357, 0.685303, 0.564297,
		0.365831, 0.725627, -0.582780,
		37.768330, 35.816483, 52.189289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936794, 35.701927, 52.547024>,  <37.512249, 35.308544, 52.597237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936794, 35.701927, 52.547024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.178673, 35.827358, 52.254169>,  <37.323799, 35.902615, 52.078457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.178673, 35.827358, 52.254169>,  <36.936794, 35.701927, 52.547024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178673, 35.827358, 52.254169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787543, 0.098242, -0.608379,
		-0.118846, 0.944468, 0.306360,
		0.604692, 0.313574, -0.732133,
		37.360081, 35.921432, 52.034531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598175, 36.243355, 52.212379>,  <36.936794, 35.701927, 52.547024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598175, 36.243355, 52.212379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.854324, 36.141506, 51.922527>,  <37.008015, 36.080399, 51.748615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.854324, 36.141506, 51.922527>,  <36.598175, 36.243355, 52.212379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854324, 36.141506, 51.922527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766362, -0.149078, -0.624872,
		0.051077, 0.955481, -0.290596,
		0.640375, -0.254618, -0.724631,
		37.046436, 36.065121, 51.705139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397373, 36.663361, 51.705681>,  <36.598175, 36.243355, 52.212379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397373, 36.663361, 51.705681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.583599, 36.340881, 51.559639>,  <36.695335, 36.147396, 51.472015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.583599, 36.340881, 51.559639>,  <36.397373, 36.663361, 51.705681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583599, 36.340881, 51.559639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707366, -0.091045, -0.700959,
		0.531867, 0.584605, -0.612661,
		0.465564, -0.806193, -0.365106,
		36.723267, 36.099022, 51.450108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564049, 36.797760, 50.953983>,  <36.397373, 36.663361, 51.705681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564049, 36.797760, 50.953983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.563866, 36.400890, 51.003914>,  <36.563755, 36.162766, 51.033871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.563866, 36.400890, 51.003914>,  <36.564049, 36.797760, 50.953983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563866, 36.400890, 51.003914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503468, -0.107619, -0.857285,
		0.864014, -0.063239, -0.499480,
		-0.000460, -0.992179, 0.124823,
		36.563728, 36.103237, 51.041363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019855, 37.390224, 50.641151>,  <36.564049, 36.797760, 50.953983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019855, 37.390224, 50.641151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.827232, 37.737316, 50.591927>,  <36.711658, 37.945572, 50.562389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.827232, 37.737316, 50.591927>,  <37.019855, 37.390224, 50.641151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827232, 37.737316, 50.591927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354263, 0.321164, 0.878266,
		0.801621, 0.379342, -0.462065,
		-0.481562, 0.867729, -0.123065,
		36.682762, 37.997635, 50.555008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430092, 37.889622, 50.935089>,  <37.019855, 37.390224, 50.641151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430092, 37.889622, 50.935089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095028, 38.106663, 50.910057>,  <36.893990, 38.236885, 50.895039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095028, 38.106663, 50.910057>,  <37.430092, 37.889622, 50.935089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095028, 38.106663, 50.910057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270311, 0.511385, 0.815731,
		0.474616, 0.666388, -0.575037,
		-0.837658, 0.542598, -0.062580,
		36.843731, 38.269444, 50.891285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611378, 38.520168, 50.849792>,  <37.430092, 37.889622, 50.935089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611378, 38.520168, 50.849792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.247684, 38.551952, 51.013245>,  <37.029469, 38.571022, 51.111317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.247684, 38.551952, 51.013245>,  <37.611378, 38.520168, 50.849792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247684, 38.551952, 51.013245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367298, 0.615133, 0.697642,
		-0.195928, 0.784409, -0.588485,
		-0.909233, 0.079462, 0.408633,
		36.974915, 38.575790, 51.135834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376213, 39.265728, 50.793644>,  <37.611378, 38.520168, 50.849792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376213, 39.265728, 50.793644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218445, 39.060452, 51.098557>,  <37.123783, 38.937286, 51.281506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218445, 39.060452, 51.098557>,  <37.376213, 39.265728, 50.793644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218445, 39.060452, 51.098557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381405, 0.663282, 0.643884,
		-0.836042, 0.544697, -0.065877,
		-0.394416, -0.513188, 0.762282,
		37.100121, 38.906494, 51.327240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519630, 39.770878, 51.325497>,  <37.376213, 39.265728, 50.793644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519630, 39.770878, 51.325497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.351158, 39.451469, 51.497532>,  <37.250076, 39.259827, 51.600754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.351158, 39.451469, 51.497532>,  <37.519630, 39.770878, 51.325497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351158, 39.451469, 51.497532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398961, 0.262742, 0.878520,
		-0.814516, 0.541603, 0.207916,
		-0.421181, -0.798519, 0.430086,
		37.224804, 39.211914, 51.626556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181679, 40.003395, 51.980595>,  <37.519630, 39.770878, 51.325497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181679, 40.003395, 51.980595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.260170, 39.615471, 52.038517>,  <37.307262, 39.382717, 52.073269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.260170, 39.615471, 52.038517>,  <37.181679, 40.003395, 51.980595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260170, 39.615471, 52.038517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572620, 0.233213, 0.785950,
		-0.795991, -0.071306, 0.601094,
		0.196226, -0.969808, 0.144804,
		37.319038, 39.324528, 52.081959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134956, 39.954460, 52.675259>,  <37.181679, 40.003395, 51.980595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134956, 39.954460, 52.675259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.322178, 39.611485, 52.589729>,  <37.434509, 39.405697, 52.538414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.322178, 39.611485, 52.589729>,  <37.134956, 39.954460, 52.675259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322178, 39.611485, 52.589729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578009, 0.114022, 0.808025,
		-0.668454, -0.501791, 0.548977,
		0.468055, -0.857441, -0.213821,
		37.462593, 39.354252, 52.525581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139294, 39.583244, 53.313118>,  <37.134956, 39.954460, 52.675259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139294, 39.583244, 53.313118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.422184, 39.452568, 53.062328>,  <37.591919, 39.374161, 52.911854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.422184, 39.452568, 53.062328>,  <37.139294, 39.583244, 53.313118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422184, 39.452568, 53.062328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672702, 0.038141, 0.738930,
		-0.217487, -0.944362, 0.246739,
		0.707228, -0.326690, -0.626979,
		37.634354, 39.354561, 52.874233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551846, 39.086445, 53.678055>,  <37.139294, 39.583244, 53.313118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551846, 39.086445, 53.678055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.788628, 39.222797, 53.385921>,  <37.930698, 39.304607, 53.210640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.788628, 39.222797, 53.385921>,  <37.551846, 39.086445, 53.678055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788628, 39.222797, 53.385921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759556, 0.067113, 0.646970,
		0.269555, -0.937708, -0.219190,
		0.591958, 0.340881, -0.730332,
		37.966213, 39.325062, 53.166821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.340309, 34.275757, 38.205769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633980, 34.546600, 38.185722>,  <34.810184, 34.709106, 38.173695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633980, 34.546600, 38.185722>,  <34.340309, 34.275757, 38.205769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633980, 34.546600, 38.185722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117432, 0.199335, 0.972870,
		0.668724, -0.708375, 0.225861,
		0.734178, 0.677105, -0.050115,
		34.854233, 34.749733, 38.170689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881794, 34.146805, 38.681057>,  <34.340309, 34.275757, 38.205769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881794, 34.146805, 38.681057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923943, 34.540710, 38.625729>,  <34.949230, 34.777054, 38.592533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923943, 34.540710, 38.625729>,  <34.881794, 34.146805, 38.681057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923943, 34.540710, 38.625729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192719, 0.156678, 0.968665,
		0.975580, -0.075412, 0.206292,
		0.105371, 0.984766, -0.138318,
		34.955555, 34.836140, 38.584232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241360, 34.415565, 39.280621>,  <34.881794, 34.146805, 38.681057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241360, 34.415565, 39.280621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069916, 34.738022, 39.117435>,  <34.967049, 34.931496, 39.019524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069916, 34.738022, 39.117435>,  <35.241360, 34.415565, 39.280621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069916, 34.738022, 39.117435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245130, 0.330845, 0.911292,
		0.869599, 0.490595, 0.055804,
		-0.428612, 0.806138, -0.407962,
		34.941334, 34.979862, 38.995049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608112, 35.001556, 39.604668>,  <35.241360, 34.415565, 39.280621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608112, 35.001556, 39.604668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276386, 35.165291, 39.452522>,  <35.077351, 35.263531, 39.361233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276386, 35.165291, 39.452522>,  <35.608112, 35.001556, 39.604668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276386, 35.165291, 39.452522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177583, 0.452346, 0.873983,
		0.529808, 0.792356, -0.302448,
		-0.829318, 0.409334, -0.380365,
		35.027592, 35.288090, 39.338413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656349, 35.671547, 39.832844>,  <35.608112, 35.001556, 39.604668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656349, 35.671547, 39.832844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272438, 35.595890, 39.749840>,  <35.042091, 35.550495, 39.700039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272438, 35.595890, 39.749840>,  <35.656349, 35.671547, 39.832844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272438, 35.595890, 39.749840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269164, 0.409515, 0.871693,
		-0.079893, 0.892482, -0.443951,
		-0.959775, -0.189138, -0.207507,
		34.984505, 35.539150, 39.687588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279461, 36.342548, 39.931282>,  <35.656349, 35.671547, 39.832844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279461, 36.342548, 39.931282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009369, 36.048145, 39.950729>,  <34.847313, 35.871506, 39.962399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009369, 36.048145, 39.950729>,  <35.279461, 36.342548, 39.931282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009369, 36.048145, 39.950729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371682, 0.396437, 0.839458,
		-0.637118, 0.548757, -0.541245,
		-0.675228, -0.736005, 0.048614,
		34.806801, 35.827343, 39.965313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721519, 36.643166, 40.133492>,  <35.279461, 36.342548, 39.931282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721519, 36.643166, 40.133492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619217, 36.265163, 40.215027>,  <34.557835, 36.038361, 40.263950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619217, 36.265163, 40.215027>,  <34.721519, 36.643166, 40.133492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619217, 36.265163, 40.215027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415747, 0.297876, 0.859316,
		-0.872779, 0.135028, -0.469067,
		-0.255756, -0.945007, 0.203842,
		34.542492, 35.981663, 40.276180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061203, 36.675701, 40.518013>,  <34.721519, 36.643166, 40.133492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061203, 36.675701, 40.518013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193874, 36.310459, 40.612869>,  <34.273479, 36.091316, 40.669781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193874, 36.310459, 40.612869>,  <34.061203, 36.675701, 40.518013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193874, 36.310459, 40.612869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444856, 0.070284, 0.892840,
		-0.831920, -0.401630, -0.382887,
		0.331680, -0.913101, 0.237138,
		34.293377, 36.036530, 40.684010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452446, 36.258305, 40.830158>,  <34.061203, 36.675701, 40.518013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452446, 36.258305, 40.830158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806850, 36.125072, 40.959175>,  <34.019493, 36.045132, 41.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806850, 36.125072, 40.959175>,  <33.452446, 36.258305, 40.830158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806850, 36.125072, 40.959175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373851, -0.101755, 0.921890,
		-0.274248, -0.937390, -0.214681,
		0.886016, -0.333085, 0.322537,
		34.072655, 36.025146, 41.055935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325504, 35.830597, 41.387096>,  <33.452446, 36.258305, 40.830158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325504, 35.830597, 41.387096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721794, 35.841335, 41.440392>,  <33.959568, 35.847778, 41.472366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721794, 35.841335, 41.440392>,  <33.325504, 35.830597, 41.387096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721794, 35.841335, 41.440392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133727, 0.017416, 0.990865,
		0.024325, -0.999487, 0.020851,
		0.990719, 0.026891, 0.133235,
		34.019009, 35.849388, 41.480362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501434, 35.335991, 41.975388>,  <33.325504, 35.830597, 41.387096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501434, 35.335991, 41.975388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813297, 35.585987, 41.959808>,  <34.000416, 35.735985, 41.950459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813297, 35.585987, 41.959808>,  <33.501434, 35.335991, 41.975388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813297, 35.585987, 41.959808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185563, 0.289993, 0.938866,
		0.598082, -0.724766, 0.342071,
		0.779656, 0.624995, -0.038950,
		34.047195, 35.773487, 41.948124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900215, 35.175747, 42.490501>,  <33.501434, 35.335991, 41.975388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900215, 35.175747, 42.490501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025375, 35.548290, 42.416031>,  <34.100471, 35.771816, 42.371349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025375, 35.548290, 42.416031>,  <33.900215, 35.175747, 42.490501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025375, 35.548290, 42.416031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000578, 0.195829, 0.980638,
		0.949787, -0.306946, 0.060736,
		0.312897, 0.931362, -0.186173,
		34.119244, 35.827698, 42.360180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263840, 34.584812, 42.886383>,  <33.900215, 35.175747, 42.490501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263840, 34.584812, 42.886383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941963, 34.384827, 43.014450>,  <33.748837, 34.264835, 43.091290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941963, 34.384827, 43.014450>,  <34.263840, 34.584812, 42.886383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941963, 34.384827, 43.014450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107592, -0.407552, -0.906821,
		0.583861, -0.764161, 0.274163,
		-0.804693, -0.499960, 0.320171,
		33.700554, 34.234840, 43.110500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387291, 33.891594, 42.687931>,  <34.263840, 34.584812, 42.886383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387291, 33.891594, 42.687931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993961, 33.925125, 42.752476>,  <33.757961, 33.945244, 42.791203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993961, 33.925125, 42.752476>,  <34.387291, 33.891594, 42.687931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993961, 33.925125, 42.752476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177222, -0.640492, -0.747236,
		0.040713, -0.763376, 0.644671,
		-0.983328, 0.083828, 0.161363,
		33.698963, 33.950275, 42.800884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206928, 33.230309, 42.489246>,  <34.387291, 33.891594, 42.687931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206928, 33.230309, 42.489246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869495, 33.443722, 42.513634>,  <33.667038, 33.571770, 42.528267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869495, 33.443722, 42.513634>,  <34.206928, 33.230309, 42.489246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869495, 33.443722, 42.513634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289325, -0.355915, -0.888603,
		-0.452398, -0.767248, 0.454606,
		-0.843579, 0.533531, 0.060969,
		33.616421, 33.603783, 42.531925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665176, 32.788197, 42.329601>,  <34.206928, 33.230309, 42.489246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665176, 32.788197, 42.329601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472549, 33.131172, 42.257053>,  <33.356972, 33.336956, 42.213524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472549, 33.131172, 42.257053>,  <33.665176, 32.788197, 42.329601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472549, 33.131172, 42.257053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448621, -0.418950, -0.789443,
		-0.752883, -0.298803, 0.586417,
		-0.481567, 0.857437, -0.181371,
		33.328079, 33.388405, 42.202641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024628, 32.521103, 42.257751>,  <33.665176, 32.788197, 42.329601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024628, 32.521103, 42.257751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043186, 32.886288, 42.095592>,  <33.054321, 33.105400, 41.998295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043186, 32.886288, 42.095592>,  <33.024628, 32.521103, 42.257751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043186, 32.886288, 42.095592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405376, -0.353710, -0.842947,
		-0.912972, 0.203450, 0.353682,
		0.046397, 0.912961, -0.405401,
		33.057106, 33.160175, 41.973972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369164, 32.713936, 42.079834>,  <33.024628, 32.521103, 42.257751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369164, 32.713936, 42.079834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603516, 32.924183, 41.833107>,  <32.744125, 33.050331, 41.685070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603516, 32.924183, 41.833107>,  <32.369164, 32.713936, 42.079834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603516, 32.924183, 41.833107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543495, -0.309741, -0.780175,
		-0.601130, 0.792328, 0.104201,
		0.585880, 0.525620, -0.616822,
		32.779278, 33.081867, 41.648060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952616, 32.920944, 41.602341>,  <32.369164, 32.713936, 42.079834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952616, 32.920944, 41.602341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302204, 32.995293, 41.422729>,  <32.511955, 33.039902, 41.314960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302204, 32.995293, 41.422729>,  <31.952616, 32.920944, 41.602341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302204, 32.995293, 41.422729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409899, -0.214430, -0.886568,
		-0.261070, 0.958891, -0.111218,
		0.873971, 0.185868, -0.449030,
		32.564396, 33.051052, 41.288021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896818, 33.488861, 41.129387>,  <31.952616, 32.920944, 41.602341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896818, 33.488861, 41.129387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209946, 33.265339, 41.019890>,  <32.397823, 33.131226, 40.954189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209946, 33.265339, 41.019890>,  <31.896818, 33.488861, 41.129387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209946, 33.265339, 41.019890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395457, -0.107111, -0.912218,
		0.480427, 0.822355, -0.304830,
		0.782818, -0.558801, -0.273747,
		32.444790, 33.097698, 40.937767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058987, 33.664272, 40.434219>,  <31.896818, 33.488861, 41.129387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058987, 33.664272, 40.434219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238400, 33.308605, 40.470455>,  <32.346046, 33.095207, 40.492199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238400, 33.308605, 40.470455>,  <32.058987, 33.664272, 40.434219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238400, 33.308605, 40.470455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341012, -0.263947, -0.902243,
		0.826154, 0.373791, -0.421604,
		0.448531, -0.889164, 0.090594,
		32.372959, 33.041855, 40.497635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372364, 33.588894, 39.830044>,  <32.058987, 33.664272, 40.434219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372364, 33.588894, 39.830044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346588, 33.220451, 39.983620>,  <32.331123, 32.999386, 40.075768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346588, 33.220451, 39.983620>,  <32.372364, 33.588894, 39.830044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346588, 33.220451, 39.983620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326655, -0.344078, -0.880288,
		0.942945, -0.182139, -0.278713,
		-0.064436, -0.921106, 0.383943,
		32.327259, 32.944118, 40.098804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484734, 33.141342, 39.215805>,  <32.372364, 33.588894, 39.830044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484734, 33.141342, 39.215805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355518, 32.872120, 39.481930>,  <32.277988, 32.710587, 39.641605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355518, 32.872120, 39.481930>,  <32.484734, 33.141342, 39.215805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355518, 32.872120, 39.481930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359009, -0.563305, -0.744177,
		0.875648, -0.479251, -0.059665,
		-0.323038, -0.673057, 0.665313,
		32.258606, 32.670204, 39.681522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674332, 32.559353, 38.990387>,  <32.484734, 33.141342, 39.215805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674332, 32.559353, 38.990387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401356, 32.434689, 39.254856>,  <32.237572, 32.359890, 39.413536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401356, 32.434689, 39.254856>,  <32.674332, 32.559353, 38.990387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401356, 32.434689, 39.254856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375501, -0.626575, -0.682937,
		0.627118, -0.714332, 0.310569,
		-0.682438, -0.311663, 0.661169,
		32.196625, 32.341190, 39.453205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787003, 31.897226, 39.104031>,  <32.674332, 32.559353, 38.990387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787003, 31.897226, 39.104031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407436, 31.974056, 39.204166>,  <32.179695, 32.020153, 39.264248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407436, 31.974056, 39.204166>,  <32.787003, 31.897226, 39.104031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407436, 31.974056, 39.204166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308182, -0.734443, -0.604663,
		0.067722, -0.650924, 0.756116,
		-0.948914, 0.192073, 0.250341,
		32.122761, 32.031677, 39.279270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165218, 31.582142, 39.722965>,  <32.787003, 31.897226, 39.104031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165218, 31.582142, 39.722965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045017, 31.425957, 40.071041>,  <32.972897, 31.332245, 40.279888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045017, 31.425957, 40.071041>,  <33.165218, 31.582142, 39.722965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045017, 31.425957, 40.071041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763620, -0.645151, -0.025789,
		0.571476, 0.656748, 0.492034,
		-0.300499, -0.390465, 0.870194,
		32.954868, 31.308817, 40.332100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678497, 31.617516, 40.216278>,  <33.165218, 31.582142, 39.722965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678497, 31.617516, 40.216278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424385, 31.311625, 40.259384>,  <33.271919, 31.128090, 40.285248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424385, 31.311625, 40.259384>,  <33.678497, 31.617516, 40.216278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424385, 31.311625, 40.259384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772138, -0.626217, 0.107961,
		-0.015076, 0.151795, 0.988297,
		-0.635276, -0.764729, 0.107766,
		33.233803, 31.082207, 40.291714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613209, 31.279285, 40.893612>,  <33.678497, 31.617516, 40.216278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613209, 31.279285, 40.893612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586784, 31.015011, 40.594513>,  <33.570930, 30.856447, 40.415054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586784, 31.015011, 40.594513>,  <33.613209, 31.279285, 40.893612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586784, 31.015011, 40.594513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772364, -0.508311, 0.380886,
		-0.631735, -0.552372, 0.543871,
		-0.066065, -0.660685, -0.747751,
		33.566963, 30.816805, 40.370186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427307, 30.577785, 41.030983>,  <33.613209, 31.279285, 40.893612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427307, 30.577785, 41.030983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697678, 30.656450, 40.746887>,  <33.859901, 30.703650, 40.576427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697678, 30.656450, 40.746887>,  <33.427307, 30.577785, 41.030983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697678, 30.656450, 40.746887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711740, -0.424186, 0.559904,
		-0.191164, -0.883963, -0.426691,
		0.675931, 0.196660, -0.710241,
		33.900455, 30.715448, 40.533813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755264, 30.041271, 40.970932>,  <33.427307, 30.577785, 41.030983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755264, 30.041271, 40.970932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995998, 30.322620, 40.819637>,  <34.140438, 30.491430, 40.728863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995998, 30.322620, 40.819637>,  <33.755264, 30.041271, 40.970932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995998, 30.322620, 40.819637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768914, -0.382363, 0.512416,
		0.215797, -0.599219, -0.770953,
		0.601833, 0.703374, -0.378235,
		34.176548, 30.533632, 40.706165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418983, 29.751671, 40.634907>,  <33.755264, 30.041271, 40.970932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418983, 29.751671, 40.634907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490353, 30.125797, 40.757118>,  <34.533173, 30.350273, 40.830444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490353, 30.125797, 40.757118>,  <34.418983, 29.751671, 40.634907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490353, 30.125797, 40.757118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801005, -0.318402, 0.506962,
		0.571451, 0.154278, -0.806004,
		0.178420, 0.935317, 0.305529,
		34.543880, 30.406393, 40.848778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129700, 29.651974, 40.702526>,  <34.418983, 29.751671, 40.634907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129700, 29.651974, 40.702526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042946, 29.982443, 40.910526>,  <34.990894, 30.180725, 41.035328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042946, 29.982443, 40.910526>,  <35.129700, 29.651974, 40.702526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042946, 29.982443, 40.910526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773199, -0.179792, 0.608143,
		0.595923, 0.533960, -0.599802,
		-0.216884, 0.826173, 0.519999,
		34.977882, 30.230295, 41.066525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735821, 30.035240, 40.750401>,  <35.129700, 29.651974, 40.702526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735821, 30.035240, 40.750401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517094, 30.177029, 41.053806>,  <35.385857, 30.262102, 41.235847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517094, 30.177029, 41.053806>,  <35.735821, 30.035240, 40.750401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517094, 30.177029, 41.053806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760825, -0.167780, 0.626894,
		0.349480, 0.919891, -0.177946,
		-0.546818, 0.354473, 0.758511,
		35.353050, 30.283371, 41.281361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169823, 30.626734, 41.017456>,  <35.735821, 30.035240, 40.750401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169823, 30.626734, 41.017456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914627, 30.519476, 41.306194>,  <35.761509, 30.455122, 41.479439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914627, 30.519476, 41.306194>,  <36.169823, 30.626734, 41.017456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914627, 30.519476, 41.306194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769579, -0.189408, 0.609814,
		-0.026795, 0.944576, 0.327199,
		-0.637989, -0.268145, 0.721850,
		35.723228, 30.439032, 41.522751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402401, 30.942945, 41.630482>,  <36.169823, 30.626734, 41.017456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402401, 30.942945, 41.630482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166195, 30.640078, 41.742184>,  <36.024471, 30.458357, 41.809204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166195, 30.640078, 41.742184>,  <36.402401, 30.942945, 41.630482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166195, 30.640078, 41.742184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656078, -0.248909, 0.712465,
		-0.469948, 0.603936, 0.643747,
		-0.590518, -0.757170, 0.279255,
		35.989040, 30.412928, 41.825958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302048, 31.023899, 42.351898>,  <36.402401, 30.942945, 41.630482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302048, 31.023899, 42.351898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219574, 30.637754, 42.287941>,  <36.170090, 30.406067, 42.249569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219574, 30.637754, 42.287941>,  <36.302048, 31.023899, 42.351898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219574, 30.637754, 42.287941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667405, -0.258236, 0.698487,
		-0.715582, 0.037308, 0.697532,
		-0.206187, -0.965361, -0.159889,
		36.157719, 30.348146, 42.239975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019859, 30.767683, 43.010662>,  <36.302048, 31.023899, 42.351898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019859, 30.767683, 43.010662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153851, 30.443542, 42.818363>,  <36.234245, 30.249058, 42.702984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153851, 30.443542, 42.818363>,  <36.019859, 30.767683, 43.010662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153851, 30.443542, 42.818363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510624, -0.272681, 0.815419,
		-0.791868, -0.518627, 0.322445,
		0.334974, -0.810353, -0.480751,
		36.254341, 30.200438, 42.674137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085625, 30.345459, 43.542770>,  <36.019859, 30.767683, 43.010662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085625, 30.345459, 43.542770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273357, 30.138569, 43.256496>,  <36.385998, 30.014435, 43.084732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273357, 30.138569, 43.256496>,  <36.085625, 30.345459, 43.542770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273357, 30.138569, 43.256496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609442, -0.396775, 0.686404,
		-0.638991, -0.758321, 0.128999,
		0.469331, -0.517223, -0.715688,
		36.414158, 29.983402, 43.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263077, 29.646254, 43.745556>,  <36.085625, 30.345459, 43.542770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263077, 29.646254, 43.745556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544430, 29.739462, 43.476944>,  <36.713242, 29.795387, 43.315777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544430, 29.739462, 43.476944>,  <36.263077, 29.646254, 43.745556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544430, 29.739462, 43.476944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707382, -0.136830, 0.693461,
		0.069704, -0.962798, -0.261079,
		0.703386, 0.233020, -0.671528,
		36.755447, 29.809368, 43.275486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801262, 29.224192, 43.906387>,  <36.263077, 29.646254, 43.745556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801262, 29.224192, 43.906387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979206, 29.512907, 43.694305>,  <37.085972, 29.686136, 43.567055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979206, 29.512907, 43.694305>,  <36.801262, 29.224192, 43.906387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979206, 29.512907, 43.694305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712198, 0.073843, 0.698084,
		0.543021, -0.688163, -0.481207,
		0.444862, 0.721789, -0.530207,
		37.112663, 29.729445, 43.535244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583900, 29.186333, 44.003368>,  <36.801262, 29.224192, 43.906387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583900, 29.186333, 44.003368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526981, 29.567965, 43.897926>,  <37.492828, 29.796944, 43.834660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526981, 29.567965, 43.897926>,  <37.583900, 29.186333, 44.003368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526981, 29.567965, 43.897926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679728, 0.287779, 0.674651,
		0.719529, -0.083178, -0.689463,
		-0.142296, 0.954078, -0.263604,
		37.484291, 29.854187, 43.818844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177845, 29.534267, 44.296196>,  <37.583900, 29.186333, 44.003368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177845, 29.534267, 44.296196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012924, 29.862415, 44.137703>,  <37.913971, 30.059305, 44.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012924, 29.862415, 44.137703>,  <38.177845, 29.534267, 44.296196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012924, 29.862415, 44.137703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383021, 0.550702, 0.741635,
		0.826621, 0.154012, -0.541274,
		-0.412301, 0.820371, -0.396232,
		37.889233, 30.108526, 44.018833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708031, 30.031790, 44.128284>,  <38.177845, 29.534267, 44.296196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708031, 30.031790, 44.128284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357067, 30.214508, 44.186920>,  <38.146488, 30.324139, 44.222103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357067, 30.214508, 44.186920>,  <38.708031, 30.031790, 44.128284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357067, 30.214508, 44.186920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418711, 0.580018, 0.698757,
		0.234162, 0.674476, -0.700179,
		-0.877411, 0.456795, 0.146592,
		38.093845, 30.351547, 44.230896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899540, 30.713543, 44.255768>,  <38.708031, 30.031790, 44.128284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899540, 30.713543, 44.255768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533142, 30.654499, 44.404987>,  <38.313305, 30.619072, 44.494518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533142, 30.654499, 44.404987>,  <38.899540, 30.713543, 44.255768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533142, 30.654499, 44.404987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232114, 0.563443, 0.792877,
		-0.327230, 0.812861, -0.481848,
		-0.915993, -0.147610, 0.373052,
		38.258343, 30.610216, 44.516903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653389, 31.363049, 44.569626>,  <38.899540, 30.713543, 44.255768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653389, 31.363049, 44.569626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418865, 31.085014, 44.736050>,  <38.278152, 30.918194, 44.835903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418865, 31.085014, 44.736050>,  <38.653389, 31.363049, 44.569626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418865, 31.085014, 44.736050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165711, 0.399826, 0.901487,
		-0.792959, 0.597494, -0.119239,
		-0.586307, -0.695083, 0.416057,
		38.242973, 30.876490, 44.860867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228432, 31.774414, 44.973316>,  <38.653389, 31.363049, 44.569626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228432, 31.774414, 44.973316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212334, 31.400320, 45.114006>,  <38.202675, 31.175863, 45.198421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212334, 31.400320, 45.114006>,  <38.228432, 31.774414, 44.973316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212334, 31.400320, 45.114006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104056, 0.346175, 0.932381,
		-0.993757, 0.074120, 0.083386,
		-0.040242, -0.935237, 0.351727,
		38.200260, 31.119749, 45.219524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815765, 31.811203, 45.595520>,  <38.228432, 31.774414, 44.973316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815765, 31.811203, 45.595520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025318, 31.472536, 45.632839>,  <38.151051, 31.269337, 45.655231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025318, 31.472536, 45.632839>,  <37.815765, 31.811203, 45.595520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025318, 31.472536, 45.632839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257106, 0.261599, 0.930303,
		-0.812063, -0.463380, 0.354730,
		0.523880, -0.846667, 0.093298,
		38.182484, 31.218536, 45.660828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618729, 31.458242, 46.200325>,  <37.815765, 31.811203, 45.595520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618729, 31.458242, 46.200325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981064, 31.301552, 46.135818>,  <38.198463, 31.207537, 46.097115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981064, 31.301552, 46.135818>,  <37.618729, 31.458242, 46.200325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981064, 31.301552, 46.135818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304471, 0.337355, 0.890780,
		-0.294540, -0.856003, 0.424859,
		0.905838, -0.391728, -0.161264,
		38.252815, 31.184034, 46.087440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834705, 31.184490, 46.755116>,  <37.618729, 31.458242, 46.200325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834705, 31.184490, 46.755116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200962, 31.188066, 46.594357>,  <38.420715, 31.190212, 46.497902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200962, 31.188066, 46.594357>,  <37.834705, 31.184490, 46.755116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200962, 31.188066, 46.594357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374394, 0.345121, 0.860651,
		0.146398, -0.938515, 0.312660,
		0.915641, 0.008940, -0.401899,
		38.475655, 31.190748, 46.473785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294231, 30.717321, 47.101974>,  <37.834705, 31.184490, 46.755116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294231, 30.717321, 47.101974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516876, 31.009682, 46.944000>,  <38.650463, 31.185097, 46.849216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516876, 31.009682, 46.944000>,  <38.294231, 30.717321, 47.101974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516876, 31.009682, 46.944000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266593, 0.293101, 0.918161,
		0.786839, -0.616343, -0.031710,
		0.556608, 0.730898, -0.394936,
		38.683857, 31.228951, 46.825520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856071, 30.747231, 47.504169>,  <38.294231, 30.717321, 47.101974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856071, 30.747231, 47.504169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912674, 31.083801, 47.295563>,  <38.946636, 31.285744, 47.170399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912674, 31.083801, 47.295563>,  <38.856071, 30.747231, 47.504169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912674, 31.083801, 47.295563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446767, 0.415831, 0.792138,
		0.883389, -0.345085, -0.317081,
		0.141503, 0.841428, -0.521513,
		38.955124, 31.336229, 47.139111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494659, 30.870869, 47.604694>,  <38.856071, 30.747231, 47.504169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494659, 30.870869, 47.604694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356941, 31.239397, 47.532440>,  <39.274311, 31.460514, 47.489086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356941, 31.239397, 47.532440>,  <39.494659, 30.870869, 47.604694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356941, 31.239397, 47.532440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477777, 0.337562, 0.811037,
		0.808200, 0.192935, -0.556407,
		-0.344299, 0.921319, -0.180638,
		39.253651, 31.515793, 47.478249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015339, 31.276760, 47.798138>,  <39.494659, 30.870869, 47.604694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015339, 31.276760, 47.798138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700409, 31.522514, 47.777569>,  <39.511452, 31.669966, 47.765228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700409, 31.522514, 47.777569>,  <40.015339, 31.276760, 47.798138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700409, 31.522514, 47.777569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223137, 0.361715, 0.905192,
		0.574737, 0.701209, -0.421881,
		-0.787329, 0.614385, -0.051425,
		39.464211, 31.706829, 47.762142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291836, 31.983408, 47.958088>,  <40.015339, 31.276760, 47.798138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291836, 31.983408, 47.958088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898056, 31.995934, 48.027229>,  <39.661789, 32.003448, 48.068714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898056, 31.995934, 48.027229>,  <40.291836, 31.983408, 47.958088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898056, 31.995934, 48.027229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146532, 0.689091, 0.709706,
		-0.096886, 0.723998, -0.682965,
		-0.984450, 0.031315, 0.172852,
		39.602722, 32.005329, 48.079086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503048, 32.479115, 47.550205>,  <40.291836, 31.983408, 47.958088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503048, 32.479115, 47.550205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873478, 32.571915, 47.431171>,  <41.095737, 32.627594, 47.359753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873478, 32.571915, 47.431171>,  <40.503048, 32.479115, 47.550205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873478, 32.571915, 47.431171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211635, -0.333573, -0.918662,
		-0.312396, 0.913732, -0.259814,
		0.926077, 0.232001, -0.297585,
		41.151302, 32.641514, 47.341896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398869, 32.642483, 46.835075>,  <40.503048, 32.479115, 47.550205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398869, 32.642483, 46.835075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796551, 32.604256, 46.815388>,  <41.035160, 32.581318, 46.803574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796551, 32.604256, 46.815388>,  <40.398869, 32.642483, 46.835075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796551, 32.604256, 46.815388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070876, -0.238508, -0.968551,
		0.080822, 0.966427, -0.243899,
		0.994205, -0.095567, -0.049220,
		41.094810, 32.575584, 46.800621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645985, 33.062305, 46.335590>,  <40.398869, 32.642483, 46.835075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645985, 33.062305, 46.335590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924549, 32.780495, 46.390217>,  <41.091686, 32.611408, 46.422993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924549, 32.780495, 46.390217>,  <40.645985, 33.062305, 46.335590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924549, 32.780495, 46.390217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012995, -0.202643, -0.979166,
		0.717524, 0.680129, -0.150279,
		0.696412, -0.704529, 0.136563,
		41.133472, 32.569138, 46.431187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137959, 33.310371, 45.850971>,  <40.645985, 33.062305, 46.335590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137959, 33.310371, 45.850971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185143, 32.921410, 45.931484>,  <41.213451, 32.688034, 45.979794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185143, 32.921410, 45.931484>,  <41.137959, 33.310371, 45.850971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185143, 32.921410, 45.931484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063228, -0.194933, -0.978776,
		0.991003, 0.128182, 0.038489,
		0.117959, -0.972404, 0.201284,
		41.220531, 32.629688, 45.991871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764858, 33.101467, 45.501087>,  <41.137959, 33.310371, 45.850971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764858, 33.101467, 45.501087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520870, 32.787201, 45.542404>,  <41.374477, 32.598640, 45.567196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520870, 32.787201, 45.542404>,  <41.764858, 33.101467, 45.501087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520870, 32.787201, 45.542404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085423, -0.194782, -0.977120,
		0.787806, -0.587191, 0.185925,
		-0.609971, -0.785663, 0.103291,
		41.337879, 32.551502, 45.573391>
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
