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
	<24.511444, 34.902611, 34.902618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169392, 34.904327, 35.109978>,  <23.964161, 34.905357, 35.234394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169392, 34.904327, 35.109978>,  <24.511444, 34.902611, 34.902618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.169392, 34.904327, 35.109978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377220, -0.691087, -0.616526,
		0.355610, -0.722759, 0.592589,
		-0.855130, 0.004294, 0.518396,
		23.912853, 34.905617, 35.265495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833387, 34.254665, 34.777954>,  <24.511444, 34.902611, 34.902618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833387, 34.254665, 34.777954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184837, 34.397896, 34.651592>,  <25.395708, 34.483833, 34.575775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184837, 34.397896, 34.651592>,  <24.833387, 34.254665, 34.777954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184837, 34.397896, 34.651592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140273, 0.438827, 0.887555,
		0.456452, -0.824138, 0.335332,
		0.878621, 0.358088, -0.315908,
		25.448425, 34.505322, 34.556820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506208, 33.997952, 35.139652>,  <24.833387, 34.254665, 34.777954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506208, 33.997952, 35.139652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588276, 34.356007, 34.981342>,  <25.637516, 34.570839, 34.886356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588276, 34.356007, 34.981342>,  <25.506208, 33.997952, 35.139652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588276, 34.356007, 34.981342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291825, 0.330038, 0.897727,
		0.934207, -0.299685, -0.193508,
		0.205170, 0.895133, -0.395779,
		25.649828, 34.624546, 34.862610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944983, 34.282639, 35.659134>,  <25.506208, 33.997952, 35.139652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944983, 34.282639, 35.659134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909739, 34.607853, 35.428932>,  <25.888592, 34.802982, 35.290810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909739, 34.607853, 35.428932>,  <25.944983, 34.282639, 35.659134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909739, 34.607853, 35.428932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233421, 0.578519, 0.781556,
		0.968376, -0.065473, -0.240753,
		-0.088109, 0.813036, -0.575507,
		25.883307, 34.851765, 35.256279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548765, 34.680851, 35.796455>,  <25.944983, 34.282639, 35.659134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548765, 34.680851, 35.796455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264408, 34.925774, 35.658054>,  <26.093794, 35.072727, 35.575012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264408, 34.925774, 35.658054>,  <26.548765, 34.680851, 35.796455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264408, 34.925774, 35.658054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265750, 0.689358, 0.673916,
		0.651162, 0.387130, -0.652777,
		-0.710891, 0.612304, -0.346004,
		26.051142, 35.109467, 35.554253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886429, 35.275959, 35.677147>,  <26.548765, 34.680851, 35.796455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886429, 35.275959, 35.677147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509958, 35.385799, 35.755920>,  <26.284077, 35.451706, 35.803185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509958, 35.385799, 35.755920>,  <26.886429, 35.275959, 35.677147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509958, 35.385799, 35.755920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337472, 0.733743, 0.589690,
		0.017429, 0.621462, -0.783251,
		-0.941174, 0.274603, 0.196938,
		26.227606, 35.468182, 35.815002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859013, 36.011860, 35.636490>,  <26.886429, 35.275959, 35.677147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859013, 36.011860, 35.636490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553846, 35.905647, 35.872269>,  <26.370747, 35.841919, 36.013737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553846, 35.905647, 35.872269>,  <26.859013, 36.011860, 35.636490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553846, 35.905647, 35.872269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266780, 0.701207, 0.661163,
		-0.588884, 0.661667, -0.464126,
		-0.762918, -0.265530, 0.589449,
		26.324970, 35.825989, 36.049103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367706, 36.496201, 35.767643>,  <26.859013, 36.011860, 35.636490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367706, 36.496201, 35.767643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306040, 36.283718, 36.100883>,  <26.269039, 36.156231, 36.300827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306040, 36.283718, 36.100883>,  <26.367706, 36.496201, 35.767643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306040, 36.283718, 36.100883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051122, 0.837762, 0.543638,
		-0.986721, 0.126401, -0.101999,
		-0.154167, -0.531204, 0.833099,
		26.259790, 36.124355, 36.350815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881784, 36.864536, 36.127884>,  <26.367706, 36.496201, 35.767643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881784, 36.864536, 36.127884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089142, 36.646656, 36.391571>,  <26.213556, 36.515926, 36.549782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089142, 36.646656, 36.391571>,  <25.881784, 36.864536, 36.127884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089142, 36.646656, 36.391571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261189, 0.834905, 0.484474,
		-0.814277, -0.078968, 0.575080,
		0.518395, -0.544700, 0.659218,
		26.244659, 36.483246, 36.589336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616001, 37.028168, 36.804493>,  <25.881784, 36.864536, 36.127884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616001, 37.028168, 36.804493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978008, 36.869503, 36.865948>,  <26.195211, 36.774303, 36.902821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978008, 36.869503, 36.865948>,  <25.616001, 37.028168, 36.804493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978008, 36.869503, 36.865948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280508, 0.828037, 0.485458,
		-0.319782, -0.396250, 0.860654,
		0.905017, -0.396661, 0.153640,
		26.249514, 36.750504, 36.912041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793566, 37.392212, 37.464035>,  <25.616001, 37.028168, 36.804493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793566, 37.392212, 37.464035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119596, 37.247215, 37.283260>,  <26.315216, 37.160217, 37.174797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119596, 37.247215, 37.283260>,  <25.793566, 37.392212, 37.464035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119596, 37.247215, 37.283260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536065, 0.767736, 0.351022,
		0.219728, -0.528379, 0.820083,
		0.815079, -0.362489, -0.451938,
		26.364120, 37.138470, 37.147678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196276, 37.584831, 37.930576>,  <25.793566, 37.392212, 37.464035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196276, 37.584831, 37.930576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403055, 37.515106, 37.595345>,  <26.527122, 37.473270, 37.394207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403055, 37.515106, 37.595345>,  <26.196276, 37.584831, 37.930576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403055, 37.515106, 37.595345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596475, 0.775584, 0.206606,
		0.613987, -0.606699, 0.504912,
		0.516949, -0.174314, -0.838080,
		26.558140, 37.462811, 37.343922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339907, 38.345009, 37.848385>,  <26.196276, 37.584831, 37.930576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339907, 38.345009, 37.848385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684221, 38.368092, 37.646111>,  <26.890810, 38.381943, 37.524746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684221, 38.368092, 37.646111>,  <26.339907, 38.345009, 37.848385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684221, 38.368092, 37.646111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035048, -0.997914, -0.054222,
		-0.507758, 0.028951, -0.861013,
		0.860787, 0.057708, -0.505684,
		26.942457, 38.385403, 37.494404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354765, 38.139740, 37.126060>,  <26.339907, 38.345009, 37.848385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354765, 38.139740, 37.126060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708672, 38.086174, 37.304611>,  <26.921015, 38.054035, 37.411743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708672, 38.086174, 37.304611>,  <26.354765, 38.139740, 37.126060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708672, 38.086174, 37.304611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058013, -0.982024, -0.179620,
		0.462410, 0.133026, -0.876631,
		0.884766, -0.133915, 0.446380,
		26.974102, 38.046001, 37.438526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741602, 37.720367, 36.679104>,  <26.354765, 38.139740, 37.126060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741602, 37.720367, 36.679104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876770, 37.644325, 37.047813>,  <26.957870, 37.598698, 37.269039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876770, 37.644325, 37.047813>,  <26.741602, 37.720367, 36.679104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876770, 37.644325, 37.047813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072798, -0.971173, -0.226986,
		0.938355, 0.143807, -0.314341,
		0.337921, -0.190110, 0.921774,
		26.978146, 37.587292, 37.324345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481190, 37.416279, 36.770115>,  <26.741602, 37.720367, 36.679104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481190, 37.416279, 36.770115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215826, 37.308308, 37.049263>,  <27.056608, 37.243526, 37.216751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215826, 37.308308, 37.049263>,  <27.481190, 37.416279, 36.770115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215826, 37.308308, 37.049263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063674, -0.908919, -0.412082,
		0.745541, -0.317816, 0.585800,
		-0.663411, -0.269924, 0.697873,
		27.016802, 37.227329, 37.258625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548603, 36.690578, 36.905495>,  <27.481190, 37.416279, 36.770115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548603, 36.690578, 36.905495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179356, 36.798134, 37.015442>,  <26.957808, 36.862667, 37.081409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179356, 36.798134, 37.015442>,  <27.548603, 36.690578, 36.905495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179356, 36.798134, 37.015442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359147, -0.858296, -0.366526,
		0.137363, -0.437065, 0.888879,
		-0.923117, 0.268891, 0.274869,
		26.902420, 36.878799, 37.097904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294933, 36.204895, 37.454773>,  <27.548603, 36.690578, 36.905495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294933, 36.204895, 37.454773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994900, 36.383461, 37.259594>,  <26.814880, 36.490601, 37.142487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994900, 36.383461, 37.259594>,  <27.294933, 36.204895, 37.454773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994900, 36.383461, 37.259594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339373, -0.893074, -0.295373,
		-0.567629, -0.055959, 0.821381,
		-0.750082, 0.446416, -0.487944,
		26.769875, 36.517387, 37.113213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719896, 35.772980, 37.569847>,  <27.294933, 36.204895, 37.454773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719896, 35.772980, 37.569847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590752, 35.990631, 37.260090>,  <26.513266, 36.121223, 37.074234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590752, 35.990631, 37.260090>,  <26.719896, 35.772980, 37.569847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590752, 35.990631, 37.260090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502882, -0.791782, -0.346686,
		-0.801792, 0.277497, 0.529269,
		-0.322861, 0.544130, -0.774392,
		26.493893, 36.153870, 37.027771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961779, 35.550121, 37.433369>,  <26.719896, 35.772980, 37.569847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961779, 35.550121, 37.433369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090538, 35.716476, 37.093151>,  <26.167793, 35.816288, 36.889023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090538, 35.716476, 37.093151>,  <25.961779, 35.550121, 37.433369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090538, 35.716476, 37.093151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301923, -0.806360, -0.508552,
		-0.897343, 0.420499, -0.133998,
		0.321896, 0.415888, -0.850541,
		26.187107, 35.841244, 36.837990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420925, 35.442371, 36.957539>,  <25.961779, 35.550121, 37.433369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420925, 35.442371, 36.957539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764301, 35.490612, 36.758125>,  <25.970327, 35.519558, 36.638477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764301, 35.490612, 36.758125>,  <25.420925, 35.442371, 36.957539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764301, 35.490612, 36.758125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228163, -0.780713, -0.581746,
		-0.459374, 0.613141, -0.642677,
		0.858439, 0.120604, -0.498536,
		26.021833, 35.526794, 36.608566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206993, 36.170055, 37.000679>,  <25.420925, 35.442371, 36.957539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206993, 36.170055, 37.000679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523714, 36.303726, 36.796177>,  <25.713747, 36.383926, 36.673477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523714, 36.303726, 36.796177>,  <25.206993, 36.170055, 37.000679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523714, 36.303726, 36.796177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156558, -0.920128, -0.358962,
		-0.590372, 0.204187, -0.780877,
		0.791802, 0.334174, -0.511251,
		25.761255, 36.403980, 36.642803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172180, 35.827801, 36.373360>,  <25.206993, 36.170055, 37.000679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172180, 35.827801, 36.373360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550831, 35.929607, 36.452469>,  <25.778021, 35.990692, 36.499935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550831, 35.929607, 36.452469>,  <25.172180, 35.827801, 36.373360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550831, 35.929607, 36.452469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314375, -0.864501, -0.392182,
		0.071158, 0.433426, -0.898376,
		0.946628, 0.254520, 0.197774,
		25.834820, 36.005962, 36.511803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889692, 35.429295, 35.801445>,  <25.172180, 35.827801, 36.373360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889692, 35.429295, 35.801445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272852, 35.537102, 35.761860>,  <25.502747, 35.601788, 35.738110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272852, 35.537102, 35.761860>,  <24.889692, 35.429295, 35.801445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272852, 35.537102, 35.761860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053511, -0.506227, -0.860738,
		-0.282081, 0.819203, -0.499336,
		0.957897, 0.269518, -0.098961,
		25.560221, 35.617958, 35.732170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092533, 35.907875, 35.234390>,  <24.889692, 35.429295, 35.801445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092533, 35.907875, 35.234390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405581, 35.672409, 35.315369>,  <25.593409, 35.531128, 35.363956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405581, 35.672409, 35.315369>,  <25.092533, 35.907875, 35.234390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405581, 35.672409, 35.315369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107481, -0.448107, -0.887496,
		0.613154, 0.672811, -0.413966,
		0.782618, -0.588665, 0.202444,
		25.640366, 35.495811, 35.376102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569462, 35.978546, 34.709545>,  <25.092533, 35.907875, 35.234390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569462, 35.978546, 34.709545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688074, 35.629669, 34.865162>,  <25.759241, 35.420345, 34.958530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688074, 35.629669, 34.865162>,  <25.569462, 35.978546, 34.709545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688074, 35.629669, 34.865162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068677, -0.425782, -0.902216,
		0.952550, 0.240818, -0.186158,
		0.296532, -0.872191, 0.389040,
		25.777033, 35.368011, 34.981873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019884, 35.711937, 34.270992>,  <25.569462, 35.978546, 34.709545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019884, 35.711937, 34.270992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879164, 35.390308, 34.462704>,  <25.794731, 35.197330, 34.577732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879164, 35.390308, 34.462704>,  <26.019884, 35.711937, 34.270992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879164, 35.390308, 34.462704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045623, -0.526132, -0.849178,
		0.934962, -0.276875, 0.221778,
		-0.351801, -0.804068, 0.479281,
		25.773623, 35.149090, 34.606487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541019, 35.335289, 34.709763>,  <26.019884, 35.711937, 34.270992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541019, 35.335289, 34.709763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865088, 35.446072, 34.503105>,  <27.059528, 35.512539, 34.379112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865088, 35.446072, 34.503105>,  <26.541019, 35.335289, 34.709763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865088, 35.446072, 34.503105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467986, -0.836335, 0.285541,
		-0.353003, -0.473118, -0.807185,
		0.810172, 0.276954, -0.516641,
		27.108139, 35.529160, 34.348114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716589, 34.791367, 34.309540>,  <26.541019, 35.335289, 34.709763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716589, 34.791367, 34.309540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040049, 35.000774, 34.416878>,  <27.234125, 35.126419, 34.481281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040049, 35.000774, 34.416878>,  <26.716589, 34.791367, 34.309540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040049, 35.000774, 34.416878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533552, -0.844806, 0.040319,
		0.247810, 0.110574, -0.962478,
		0.808649, 0.523523, 0.268348,
		27.282642, 35.157833, 34.497383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359661, 34.640198, 33.868481>,  <26.716589, 34.791367, 34.309540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359661, 34.640198, 33.868481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467144, 34.762924, 34.233700>,  <27.531633, 34.836559, 34.452831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467144, 34.762924, 34.233700>,  <27.359661, 34.640198, 33.868481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467144, 34.762924, 34.233700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666651, -0.743439, 0.053628,
		0.695250, 0.594274, -0.404309,
		0.268709, 0.306818, 0.913049,
		27.547756, 34.854969, 34.507614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984562, 34.486275, 33.849922>,  <27.359661, 34.640198, 33.868481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984562, 34.486275, 33.849922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929855, 34.545391, 34.241730>,  <27.897032, 34.580860, 34.476814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929855, 34.545391, 34.241730>,  <27.984562, 34.486275, 33.849922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929855, 34.545391, 34.241730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710050, -0.674866, 0.200961,
		0.690742, 0.722991, -0.012638,
		-0.136764, 0.147786, 0.979518,
		27.888826, 34.589725, 34.535583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691465, 34.514465, 34.124428>,  <27.984562, 34.486275, 33.849922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691465, 34.514465, 34.124428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441784, 34.454762, 34.431175>,  <28.291975, 34.418941, 34.615223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441784, 34.454762, 34.431175>,  <28.691465, 34.514465, 34.124428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441784, 34.454762, 34.431175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693374, -0.558145, 0.455748,
		0.360003, 0.816209, 0.451887,
		-0.624204, -0.149256, 0.766871,
		28.254522, 34.409985, 34.661236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090708, 34.760120, 34.758030>,  <28.691465, 34.514465, 34.124428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090708, 34.760120, 34.758030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824409, 34.469349, 34.825382>,  <28.664631, 34.294884, 34.865791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824409, 34.469349, 34.825382>,  <29.090708, 34.760120, 34.758030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824409, 34.469349, 34.825382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704448, -0.537902, 0.463049,
		-0.246034, 0.426887, 0.870192,
		-0.665747, -0.726931, 0.168377,
		28.624685, 34.251270, 34.875896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131817, 34.520439, 35.421444>,  <29.090708, 34.760120, 34.758030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131817, 34.520439, 35.421444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895960, 34.222679, 35.296104>,  <28.754446, 34.044022, 35.220901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895960, 34.222679, 35.296104>,  <29.131817, 34.520439, 35.421444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895960, 34.222679, 35.296104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656389, -0.667731, 0.351127,
		-0.470611, 0.001362, 0.882340,
		-0.589644, -0.744402, -0.313347,
		28.719067, 33.999359, 35.202099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172350, 34.364918, 36.090652>,  <29.131817, 34.520439, 35.421444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172350, 34.364918, 36.090652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308428, 34.347004, 36.466366>,  <29.390074, 34.336254, 36.691795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308428, 34.347004, 36.466366>,  <29.172350, 34.364918, 36.090652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308428, 34.347004, 36.466366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859076, -0.421033, 0.291066,
		0.382435, -0.905939, -0.181709,
		0.340194, -0.044788, 0.939288,
		29.410486, 34.333569, 36.748154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025930, 33.783737, 36.469128>,  <29.172350, 34.364918, 36.090652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025930, 33.783737, 36.469128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087332, 34.036400, 36.773090>,  <29.124172, 34.187996, 36.955467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087332, 34.036400, 36.773090>,  <29.025930, 33.783737, 36.469128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087332, 34.036400, 36.773090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935559, -0.154633, 0.317519,
		0.318068, -0.759674, 0.567212,
		0.153501, 0.631652, 0.759903,
		29.133383, 34.225895, 37.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747478, 33.215034, 36.268620>,  <29.025930, 33.783737, 36.469128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747478, 33.215034, 36.268620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715799, 33.225704, 35.870018>,  <28.696793, 33.232105, 35.630859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715799, 33.225704, 35.870018>,  <28.747478, 33.215034, 36.268620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715799, 33.225704, 35.870018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198995, -0.979099, -0.042021,
		-0.976795, -0.201627, 0.072235,
		-0.079198, 0.026672, -0.996502,
		28.692039, 33.233707, 35.571068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139824, 32.880642, 36.006546>,  <28.747478, 33.215034, 36.268620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139824, 32.880642, 36.006546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415785, 32.879116, 35.716988>,  <28.581362, 32.878201, 35.543255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415785, 32.879116, 35.716988>,  <28.139824, 32.880642, 36.006546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415785, 32.879116, 35.716988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113111, -0.987136, 0.113001,
		-0.715011, -0.159839, -0.680595,
		0.689902, -0.003814, -0.723893,
		28.622755, 32.877972, 35.499821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032316, 32.236774, 35.697685>,  <28.139824, 32.880642, 36.006546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032316, 32.236774, 35.697685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397760, 32.360394, 35.591999>,  <28.617027, 32.434566, 35.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397760, 32.360394, 35.591999>,  <28.032316, 32.236774, 35.697685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397760, 32.360394, 35.591999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326749, -0.944788, 0.024732,
		-0.241980, -0.108926, -0.964148,
		0.913609, 0.309050, -0.264211,
		28.671843, 32.453110, 35.512737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293953, 31.785206, 35.207714>,  <28.032316, 32.236774, 35.697685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293953, 31.785206, 35.207714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629364, 31.936962, 35.364140>,  <28.830610, 32.028015, 35.457996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629364, 31.936962, 35.364140>,  <28.293953, 31.785206, 35.207714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629364, 31.936962, 35.364140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427831, -0.902910, -0.041410,
		0.337388, 0.202034, -0.919430,
		0.838529, 0.379390, 0.391067,
		28.880922, 32.050777, 35.481461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854431, 31.898979, 34.809650>,  <28.293953, 31.785206, 35.207714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854431, 31.898979, 34.809650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182619, 31.953930, 35.031628>,  <29.379532, 31.986900, 35.164814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182619, 31.953930, 35.031628>,  <28.854431, 31.898979, 34.809650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182619, 31.953930, 35.031628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427444, -0.792010, -0.435904,
		0.379637, 0.594851, -0.708539,
		0.820468, 0.137375, 0.554942,
		29.428759, 31.995142, 35.198109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420170, 32.098236, 34.415009>,  <28.854431, 31.898979, 34.809650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420170, 32.098236, 34.415009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542082, 31.910835, 34.746696>,  <29.615229, 31.798395, 34.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542082, 31.910835, 34.746696>,  <29.420170, 32.098236, 34.415009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542082, 31.910835, 34.746696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672632, -0.510520, -0.535664,
		0.674296, 0.721023, 0.159534,
		0.304781, -0.468504, 0.829224,
		29.633516, 31.770285, 34.995464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127239, 32.178402, 34.673515>,  <29.420170, 32.098236, 34.415009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127239, 32.178402, 34.673515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991400, 31.815865, 34.774086>,  <29.909897, 31.598343, 34.834427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991400, 31.815865, 34.774086>,  <30.127239, 32.178402, 34.673515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991400, 31.815865, 34.774086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726442, -0.422541, -0.541979,
		0.597457, -0.001408, 0.801900,
		-0.339598, -0.906343, 0.251427,
		29.889521, 31.543962, 34.849514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817322, 32.893478, 34.919682>,  <30.127239, 32.178402, 34.673515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817322, 32.893478, 34.919682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481916, 32.776672, 35.103691>,  <29.280672, 32.706589, 35.214096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481916, 32.776672, 35.103691>,  <29.817322, 32.893478, 34.919682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481916, 32.776672, 35.103691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495494, 0.759864, -0.420824,
		-0.226668, -0.580805, -0.781849,
		-0.838515, -0.292014, 0.460022,
		29.230362, 32.689068, 35.241699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302996, 32.931042, 34.366558>,  <29.817322, 32.893478, 34.919682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302996, 32.931042, 34.366558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101532, 32.914986, 34.711746>,  <28.980654, 32.905350, 34.918858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101532, 32.914986, 34.711746>,  <29.302996, 32.931042, 34.366558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101532, 32.914986, 34.711746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647327, 0.679045, -0.346217,
		-0.572096, -0.732998, -0.367994,
		-0.503661, -0.040143, 0.862968,
		28.950434, 32.902943, 34.970638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560724, 33.167561, 34.188015>,  <29.302996, 32.931042, 34.366558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560724, 33.167561, 34.188015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601414, 33.198410, 34.584743>,  <28.625828, 33.216919, 34.822781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601414, 33.198410, 34.584743>,  <28.560724, 33.167561, 34.188015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601414, 33.198410, 34.584743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623607, 0.781731, 0.003175,
		-0.775091, -0.618828, 0.127614,
		0.101725, 0.077120, 0.991818,
		28.631931, 33.221546, 34.882290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956112, 33.168251, 34.539436>,  <28.560724, 33.167561, 34.188015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956112, 33.168251, 34.539436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198021, 33.388592, 34.769501>,  <28.343166, 33.520798, 34.907539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198021, 33.388592, 34.769501>,  <27.956112, 33.168251, 34.539436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198021, 33.388592, 34.769501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658422, 0.752128, -0.028024,
		-0.448032, -0.361752, 0.817559,
		0.604771, 0.550854, 0.575163,
		28.379452, 33.553848, 34.942051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590347, 33.360146, 35.113537>,  <27.956112, 33.168251, 34.539436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590347, 33.360146, 35.113537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873774, 33.634758, 35.048298>,  <28.043829, 33.799526, 35.009155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873774, 33.634758, 35.048298>,  <27.590347, 33.360146, 35.113537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873774, 33.634758, 35.048298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705636, 0.690384, -0.159523,
		0.003080, 0.228119, 0.973628,
		0.708568, 0.686536, -0.163095,
		28.086344, 33.840717, 34.999371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544294, 33.892250, 35.620014>,  <27.590347, 33.360146, 35.113537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544294, 33.892250, 35.620014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726633, 34.063267, 35.307755>,  <27.836037, 34.165878, 35.120399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726633, 34.063267, 35.307755>,  <27.544294, 33.892250, 35.620014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726633, 34.063267, 35.307755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637248, 0.769093, 0.049107,
		0.621385, 0.475080, 0.623042,
		0.455847, 0.427546, -0.780646,
		27.863388, 34.191532, 35.073563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285450, 34.475533, 35.704693>,  <27.544294, 33.892250, 35.620014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285450, 34.475533, 35.704693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491175, 34.495129, 35.362213>,  <27.614611, 34.506886, 35.156723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491175, 34.495129, 35.362213>,  <27.285450, 34.475533, 35.704693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491175, 34.495129, 35.362213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357660, 0.919653, -0.162227,
		0.779462, 0.389665, 0.490511,
		0.514314, 0.048986, -0.856202,
		27.645470, 34.509823, 35.105354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766747, 35.136215, 35.633797>,  <27.285450, 34.475533, 35.704693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766747, 35.136215, 35.633797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598982, 34.986404, 35.303020>,  <27.498323, 34.896519, 35.104557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598982, 34.986404, 35.303020>,  <27.766747, 35.136215, 35.633797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598982, 34.986404, 35.303020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530492, 0.840321, -0.111525,
		0.736661, 0.391909, -0.551124,
		-0.419414, -0.374523, -0.826936,
		27.473158, 34.874046, 35.054939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748404, 35.663738, 35.160622>,  <27.766747, 35.136215, 35.633797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748404, 35.663738, 35.160622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472673, 35.402805, 35.034576>,  <27.307236, 35.246246, 34.958950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472673, 35.402805, 35.034576>,  <27.748404, 35.663738, 35.160622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472673, 35.402805, 35.034576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682495, 0.730630, -0.019511,
		0.242957, 0.201612, -0.948854,
		-0.689327, -0.652329, -0.315111,
		27.265875, 35.207108, 34.940044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866364, 36.017250, 34.635944>,  <27.748404, 35.663738, 35.160622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866364, 36.017250, 34.635944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095190, 35.824852, 34.901691>,  <28.232487, 35.709412, 35.061138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095190, 35.824852, 34.901691>,  <27.866364, 36.017250, 34.635944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095190, 35.824852, 34.901691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794560, 0.525960, -0.303382,
		-0.203502, 0.701431, 0.683067,
		0.572068, -0.480999, 0.664363,
		28.266811, 35.680553, 35.101002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633734, 36.240337, 34.547367>,  <27.866364, 36.017250, 34.635944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633734, 36.240337, 34.547367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691080, 36.035912, 34.886368>,  <28.725489, 35.913258, 35.089767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691080, 36.035912, 34.886368>,  <28.633734, 36.240337, 34.547367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691080, 36.035912, 34.886368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969591, 0.244155, -0.016790,
		-0.198341, 0.824138, 0.530526,
		0.143367, -0.511063, 0.847502,
		28.734091, 35.882591, 35.140617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077116, 36.632710, 34.926479>,  <28.633734, 36.240337, 34.547367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077116, 36.632710, 34.926479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115156, 36.264011, 35.076862>,  <29.137981, 36.042793, 35.167091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115156, 36.264011, 35.076862>,  <29.077116, 36.632710, 34.926479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115156, 36.264011, 35.076862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991776, 0.120228, 0.043884,
		-0.085651, 0.368697, 0.925595,
		0.095102, -0.921742, 0.375962,
		29.143686, 35.987488, 35.189651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839581, 36.495346, 34.969139>,  <29.077116, 36.632710, 34.926479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839581, 36.495346, 34.969139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747950, 36.137199, 35.121891>,  <29.692970, 35.922310, 35.213543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747950, 36.137199, 35.121891>,  <29.839581, 36.495346, 34.969139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747950, 36.137199, 35.121891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913436, -0.333307, -0.233541,
		0.336390, 0.295324, 0.894218,
		-0.229079, -0.895371, 0.381881,
		29.679226, 35.868587, 35.236454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431515, 36.328114, 35.392113>,  <29.839581, 36.495346, 34.969139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431515, 36.328114, 35.392113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235630, 35.986992, 35.319550>,  <30.118099, 35.782318, 35.276012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235630, 35.986992, 35.319550>,  <30.431515, 36.328114, 35.392113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235630, 35.986992, 35.319550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848139, -0.417721, -0.325837,
		0.202097, -0.313425, 0.927858,
		-0.489712, -0.852804, -0.181408,
		30.088717, 35.731152, 35.265129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938051, 35.674297, 35.467319>,  <30.431515, 36.328114, 35.392113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938051, 35.674297, 35.467319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618608, 35.537395, 35.269291>,  <30.426943, 35.455254, 35.150475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618608, 35.537395, 35.269291>,  <30.938051, 35.674297, 35.467319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618608, 35.537395, 35.269291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601824, -0.445875, -0.662573,
		0.006028, -0.827079, 0.562053,
		-0.798606, -0.342251, -0.495068,
		30.379026, 35.434719, 35.120770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923088, 34.905663, 35.507782>,  <30.938051, 35.674297, 35.467319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923088, 34.905663, 35.507782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773876, 35.072529, 35.176285>,  <30.684349, 35.172649, 34.977386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773876, 35.072529, 35.176285>,  <30.923088, 34.905663, 35.507782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773876, 35.072529, 35.176285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730759, -0.418280, -0.539475,
		-0.571698, -0.806855, -0.148817,
		-0.373031, 0.417166, -0.828747,
		30.661966, 35.197678, 34.927662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911373, 34.370235, 34.999352>,  <30.923088, 34.905663, 35.507782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911373, 34.370235, 34.999352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974651, 34.751621, 34.896687>,  <31.012619, 34.980453, 34.835087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974651, 34.751621, 34.896687>,  <30.911373, 34.370235, 34.999352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974651, 34.751621, 34.896687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784814, -0.279155, -0.553298,
		-0.599200, -0.113901, -0.792456,
		0.158197, 0.953467, -0.256661,
		31.022110, 35.037663, 34.819687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074837, 34.355076, 34.310299>,  <30.911373, 34.370235, 34.999352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074837, 34.355076, 34.310299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183044, 34.719044, 34.436073>,  <31.247969, 34.937424, 34.511539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183044, 34.719044, 34.436073>,  <31.074837, 34.355076, 34.310299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183044, 34.719044, 34.436073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828234, -0.053469, -0.557825,
		-0.490761, 0.411333, -0.768088,
		0.270521, 0.909916, 0.314439,
		31.264200, 34.992020, 34.530403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177572, 34.927067, 33.788643>,  <31.074837, 34.355076, 34.310299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177572, 34.927067, 33.788643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409668, 34.965630, 34.112133>,  <31.548925, 34.988770, 34.306225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409668, 34.965630, 34.112133>,  <31.177572, 34.927067, 33.788643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409668, 34.965630, 34.112133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811541, 0.015366, -0.584093,
		-0.068740, 0.995223, -0.069326,
		0.580238, 0.096412, 0.808721,
		31.583738, 34.994553, 34.354748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581196, 35.538605, 33.801102>,  <31.177572, 34.927067, 33.788643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581196, 35.538605, 33.801102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788443, 35.284336, 34.030003>,  <31.912790, 35.131775, 34.167343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788443, 35.284336, 34.030003>,  <31.581196, 35.538605, 33.801102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788443, 35.284336, 34.030003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852433, 0.328951, -0.406386,
		0.070085, 0.698364, 0.712303,
		0.518118, -0.635672, 0.572254,
		31.943878, 35.093636, 34.201679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232372, 35.772198, 33.727051>,  <31.581196, 35.538605, 33.801102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232372, 35.772198, 33.727051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289600, 35.411194, 33.889538>,  <32.323936, 35.194592, 33.987030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289600, 35.411194, 33.889538>,  <32.232372, 35.772198, 33.727051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289600, 35.411194, 33.889538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956931, 0.021385, -0.289525,
		0.252612, 0.430142, 0.866698,
		0.143071, -0.902508, 0.406214,
		32.332523, 35.140442, 34.011402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854584, 35.777454, 34.121891>,  <32.232372, 35.772198, 33.727051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854584, 35.777454, 34.121891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784439, 35.401787, 34.003765>,  <32.742352, 35.176388, 33.932888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784439, 35.401787, 34.003765>,  <32.854584, 35.777454, 34.121891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784439, 35.401787, 34.003765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955138, -0.089584, -0.282286,
		0.238659, -0.331572, 0.912744,
		-0.175365, -0.939167, -0.295317,
		32.731831, 35.120037, 33.915169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473549, 35.786400, 33.568253>,  <32.854584, 35.777454, 34.121891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473549, 35.786400, 33.568253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704082, 35.737007, 33.891384>,  <33.842403, 35.707371, 34.085262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704082, 35.737007, 33.891384>,  <33.473549, 35.786400, 33.568253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704082, 35.737007, 33.891384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581848, 0.756129, -0.299537,
		-0.573838, 0.642668, 0.507630,
		0.576336, -0.123478, 0.807830,
		33.876984, 35.699963, 34.133732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515671, 36.437759, 33.905346>,  <33.473549, 35.786400, 33.568253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515671, 36.437759, 33.905346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852425, 36.226547, 33.949905>,  <34.054478, 36.099819, 33.976643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852425, 36.226547, 33.949905>,  <33.515671, 36.437759, 33.905346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852425, 36.226547, 33.949905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513077, 0.719199, -0.468514,
		0.167272, 0.451592, 0.876405,
		0.841886, -0.528032, 0.111400,
		34.104992, 36.068138, 33.983326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080086, 36.872707, 34.249249>,  <33.515671, 36.437759, 33.905346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080086, 36.872707, 34.249249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234741, 36.562119, 34.050213>,  <34.327534, 36.375763, 33.930790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234741, 36.562119, 34.050213>,  <34.080086, 36.872707, 34.249249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234741, 36.562119, 34.050213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634277, 0.615568, -0.467728,
		0.669479, -0.134766, 0.730504,
		0.386641, -0.776476, -0.497589,
		34.350735, 36.329174, 33.900936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482441, 37.070496, 34.953167>,  <34.080086, 36.872707, 34.249249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482441, 37.070496, 34.953167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778931, 37.338997, 34.953716>,  <34.956825, 37.500099, 34.954044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778931, 37.338997, 34.953716>,  <34.482441, 37.070496, 34.953167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778931, 37.338997, 34.953716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091769, 0.103359, -0.990402,
		-0.664953, 0.733986, 0.138213,
		0.741226, 0.671254, 0.001372,
		35.001297, 37.540375, 34.954128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301868, 37.527935, 34.450718>,  <34.482441, 37.070496, 34.953167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301868, 37.527935, 34.450718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696911, 37.558392, 34.505623>,  <34.933937, 37.576668, 34.538567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696911, 37.558392, 34.505623>,  <34.301868, 37.527935, 34.450718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696911, 37.558392, 34.505623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129435, 0.099678, -0.986565,
		-0.088804, 0.992102, 0.088586,
		0.987604, 0.076144, 0.137264,
		34.993191, 37.581234, 34.546803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592690, 38.107025, 34.031315>,  <34.301868, 37.527935, 34.450718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592690, 38.107025, 34.031315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911316, 37.869640, 34.077431>,  <35.102489, 37.727211, 34.105099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911316, 37.869640, 34.077431>,  <34.592690, 38.107025, 34.031315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911316, 37.869640, 34.077431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111102, -0.043748, -0.992846,
		0.594261, 0.803672, 0.031087,
		0.796562, -0.593463, 0.115287,
		35.150284, 37.691601, 34.112019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185638, 38.482853, 33.644577>,  <34.592690, 38.107025, 34.031315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185638, 38.482853, 33.644577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269260, 38.093380, 33.680878>,  <35.319435, 37.859695, 33.702660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269260, 38.093380, 33.680878>,  <35.185638, 38.482853, 33.644577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269260, 38.093380, 33.680878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103432, -0.114299, -0.988047,
		0.972418, 0.197170, -0.124605,
		0.209056, -0.973683, 0.090753,
		35.331978, 37.801273, 33.708103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673843, 38.338314, 33.225273>,  <35.185638, 38.482853, 33.644577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673843, 38.338314, 33.225273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522079, 37.969532, 33.256355>,  <35.431019, 37.748260, 33.275005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522079, 37.969532, 33.256355>,  <35.673843, 38.338314, 33.225273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522079, 37.969532, 33.256355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053192, -0.062113, -0.996651,
		0.923698, -0.382275, -0.025474,
		-0.379412, -0.921959, 0.077708,
		35.408257, 37.692944, 33.279667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981209, 37.825005, 32.580097>,  <35.673843, 38.338314, 33.225273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981209, 37.825005, 32.580097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654881, 37.639565, 32.718380>,  <35.459084, 37.528301, 32.801350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654881, 37.639565, 32.718380>,  <35.981209, 37.825005, 32.580097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654881, 37.639565, 32.718380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301625, -0.168932, -0.938341,
		0.493413, -0.869793, -0.002014,
		-0.815822, -0.463597, 0.345704,
		35.410133, 37.500484, 32.822090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932056, 37.173309, 32.220657>,  <35.981209, 37.825005, 32.580097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932056, 37.173309, 32.220657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567665, 37.260494, 32.360718>,  <35.349030, 37.312805, 32.444756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567665, 37.260494, 32.360718>,  <35.932056, 37.173309, 32.220657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567665, 37.260494, 32.360718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393966, -0.208553, -0.895152,
		-0.122082, -0.953414, 0.275857,
		-0.910981, 0.217960, 0.350152,
		35.294373, 37.325882, 32.465763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436966, 36.505825, 32.109913>,  <35.932056, 37.173309, 32.220657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436966, 36.505825, 32.109913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194965, 36.817261, 32.176582>,  <35.049767, 37.004124, 32.216583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194965, 36.817261, 32.176582>,  <35.436966, 36.505825, 32.109913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194965, 36.817261, 32.176582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265270, 0.000270, -0.964174,
		-0.750740, -0.627535, 0.206373,
		-0.604997, 0.778588, 0.166669,
		35.013466, 37.050838, 32.226582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808662, 36.341129, 31.766901>,  <35.436966, 36.505825, 32.109913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808662, 36.341129, 31.766901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796734, 36.737465, 31.819588>,  <34.789577, 36.975266, 31.851200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796734, 36.737465, 31.819588>,  <34.808662, 36.341129, 31.766901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796734, 36.737465, 31.819588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444772, 0.104857, -0.889484,
		-0.895147, -0.085111, 0.437570,
		-0.029823, 0.990838, 0.131718,
		34.787788, 37.034718, 31.859102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024292, 36.485714, 31.595957>,  <34.808662, 36.341129, 31.766901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024292, 36.485714, 31.595957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200512, 36.843609, 31.566700>,  <34.306244, 37.058346, 31.549147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200512, 36.843609, 31.566700>,  <34.024292, 36.485714, 31.595957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200512, 36.843609, 31.566700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383169, 0.113733, -0.916650,
		-0.811846, 0.431859, 0.392943,
		0.440554, 0.894742, -0.073142,
		34.332680, 37.112030, 31.544758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597034, 36.892948, 31.201887>,  <34.024292, 36.485714, 31.595957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597034, 36.892948, 31.201887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927742, 37.112919, 31.154509>,  <34.126167, 37.244900, 31.126081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927742, 37.112919, 31.154509>,  <33.597034, 36.892948, 31.201887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927742, 37.112919, 31.154509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370895, 0.374585, -0.849778,
		-0.422945, 0.746505, 0.513661,
		0.826773, 0.549924, -0.118447,
		34.175774, 37.277897, 31.118975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398613, 37.588604, 31.159964>,  <33.597034, 36.892948, 31.201887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398613, 37.588604, 31.159964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754059, 37.535057, 30.984491>,  <33.967327, 37.502930, 30.879208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754059, 37.535057, 30.984491>,  <33.398613, 37.588604, 31.159964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754059, 37.535057, 30.984491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368501, 0.361079, -0.856638,
		0.273071, 0.922877, 0.271532,
		0.888617, -0.133863, -0.438681,
		34.020645, 37.494900, 30.852886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414497, 38.134350, 30.750427>,  <33.398613, 37.588604, 31.159964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414497, 38.134350, 30.750427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709244, 37.914108, 30.593523>,  <33.886093, 37.781963, 30.499380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709244, 37.914108, 30.593523>,  <33.414497, 38.134350, 30.750427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709244, 37.914108, 30.593523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188193, 0.390233, -0.901278,
		0.649316, 0.737942, 0.183930,
		0.736866, -0.550600, -0.392260,
		33.930305, 37.748928, 30.475845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919350, 38.607620, 30.403921>,  <33.414497, 38.134350, 30.750427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919350, 38.607620, 30.403921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915684, 38.239693, 30.247028>,  <33.913486, 38.018936, 30.152893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915684, 38.239693, 30.247028>,  <33.919350, 38.607620, 30.403921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915684, 38.239693, 30.247028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272252, 0.379726, -0.884131,
		0.962183, 0.098686, -0.253902,
		-0.009162, -0.919820, -0.392233,
		33.912933, 37.963745, 30.129358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238937, 38.691689, 29.720451>,  <33.919350, 38.607620, 30.403921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238937, 38.691689, 29.720451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053688, 38.338943, 29.685053>,  <33.942539, 38.127296, 29.663815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053688, 38.338943, 29.685053>,  <34.238937, 38.691689, 29.720451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053688, 38.338943, 29.685053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307333, 0.253443, -0.917231,
		0.831304, -0.397590, -0.388401,
		-0.463119, -0.881867, -0.088495,
		33.914753, 38.074383, 29.658504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464256, 38.424847, 29.148319>,  <34.238937, 38.691689, 29.720451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464256, 38.424847, 29.148319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120579, 38.233540, 29.221041>,  <33.914371, 38.118755, 29.264673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120579, 38.233540, 29.221041>,  <34.464256, 38.424847, 29.148319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120579, 38.233540, 29.221041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342958, 0.274638, -0.898306,
		0.379699, -0.834168, -0.399992,
		-0.859191, -0.478266, 0.181805,
		33.862820, 38.090061, 29.275583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295673, 38.016376, 28.569241>,  <34.464256, 38.424847, 29.148319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295673, 38.016376, 28.569241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959396, 38.101677, 28.768343>,  <33.757629, 38.152859, 28.887804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959396, 38.101677, 28.768343>,  <34.295673, 38.016376, 28.569241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959396, 38.101677, 28.768343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421279, 0.319972, -0.848612,
		-0.340235, -0.923115, -0.179160,
		-0.840692, 0.213252, 0.497755,
		33.707188, 38.165653, 28.917669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811951, 37.760399, 28.228056>,  <34.295673, 38.016376, 28.569241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811951, 37.760399, 28.228056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603474, 38.025513, 28.443119>,  <33.478386, 38.184582, 28.572157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603474, 38.025513, 28.443119>,  <33.811951, 37.760399, 28.228056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603474, 38.025513, 28.443119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590907, 0.174307, -0.787684,
		-0.615784, -0.728239, 0.300798,
		-0.521191, 0.662786, 0.537657,
		33.447117, 38.224350, 28.604416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102932, 37.640488, 28.172724>,  <33.811951, 37.760399, 28.228056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102932, 37.640488, 28.172724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118866, 38.026077, 28.277925>,  <33.128426, 38.257431, 28.341045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118866, 38.026077, 28.277925>,  <33.102932, 37.640488, 28.172724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118866, 38.026077, 28.277925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534568, 0.242937, -0.809456,
		-0.844186, -0.108347, 0.524987,
		0.039837, 0.963972, 0.263002,
		33.130817, 38.315269, 28.356827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403797, 37.787876, 28.137632>,  <33.102932, 37.640488, 28.172724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403797, 37.787876, 28.137632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568516, 38.151485, 28.163246>,  <32.667347, 38.369652, 28.178614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568516, 38.151485, 28.163246>,  <32.403797, 37.787876, 28.137632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568516, 38.151485, 28.163246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662750, 0.346975, -0.663604,
		-0.625450, 0.230830, 0.745339,
		0.411794, 0.909024, 0.064033,
		32.692055, 38.424194, 28.182455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910482, 38.266010, 28.183538>,  <32.403797, 37.787876, 28.137632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910482, 38.266010, 28.183538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211189, 38.497128, 28.056419>,  <32.391613, 38.635799, 27.980148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211189, 38.497128, 28.056419>,  <31.910482, 38.266010, 28.183538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211189, 38.497128, 28.056419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595644, 0.388217, -0.703204,
		-0.282933, 0.717942, 0.636009,
		0.751769, 0.577795, -0.317799,
		32.436722, 38.670467, 27.961081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718191, 38.993378, 28.154718>,  <31.910482, 38.266010, 28.183538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718191, 38.993378, 28.154718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002831, 38.930222, 27.880873>,  <32.173615, 38.892326, 27.716566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002831, 38.930222, 27.880873>,  <31.718191, 38.993378, 28.154718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002831, 38.930222, 27.880873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572199, 0.435191, -0.695124,
		0.407693, 0.886385, 0.219335,
		0.711600, -0.157893, -0.684613,
		32.216309, 38.882854, 27.675489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675505, 39.582623, 27.751995>,  <31.718191, 38.993378, 28.154718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675505, 39.582623, 27.751995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880320, 39.359505, 27.490711>,  <32.003208, 39.225636, 27.333941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880320, 39.359505, 27.490711>,  <31.675505, 39.582623, 27.751995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880320, 39.359505, 27.490711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396272, 0.521304, -0.755785,
		0.762094, 0.645838, 0.045889,
		0.512037, -0.557795, -0.653210,
		32.033932, 39.192165, 27.294748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890715, 40.056908, 27.291891>,  <31.675505, 39.582623, 27.751995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890715, 40.056908, 27.291891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956354, 39.707024, 27.109480>,  <31.995737, 39.497093, 27.000034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956354, 39.707024, 27.109480>,  <31.890715, 40.056908, 27.291891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956354, 39.707024, 27.109480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567427, 0.294453, -0.768976,
		0.806907, 0.384949, -0.448013,
		0.164098, -0.874707, -0.456026,
		32.005585, 39.444611, 26.972672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150913, 40.198708, 26.687784>,  <31.890715, 40.056908, 27.291891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150913, 40.198708, 26.687784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001522, 39.829109, 26.654924>,  <31.911888, 39.607349, 26.635208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001522, 39.829109, 26.654924>,  <32.150913, 40.198708, 26.687784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001522, 39.829109, 26.654924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564121, 0.296530, -0.770608,
		0.736397, -0.241463, -0.631993,
		-0.373478, -0.923994, -0.082149,
		31.889479, 39.551910, 26.630280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185211, 39.995789, 25.985985>,  <32.150913, 40.198708, 26.687784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185211, 39.995789, 25.985985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915503, 39.736126, 26.126818>,  <31.753677, 39.580330, 26.211317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915503, 39.736126, 26.126818>,  <32.185211, 39.995789, 25.985985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915503, 39.736126, 26.126818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511017, 0.065955, -0.857036,
		0.533126, -0.757794, -0.376199,
		-0.674269, -0.649152, 0.352083,
		31.713223, 39.541382, 26.232443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240723, 39.449230, 25.527555>,  <32.185211, 39.995789, 25.985985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240723, 39.449230, 25.527555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877735, 39.443172, 25.695498>,  <31.659943, 39.439537, 25.796263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877735, 39.443172, 25.695498>,  <32.240723, 39.449230, 25.527555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877735, 39.443172, 25.695498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420015, 0.009680, -0.907466,
		0.009680, -0.999838, -0.015145,
		0.907466, 0.015145, -0.419853,
		31.605495, 39.438629, 25.821453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888824, 38.937706, 25.215857>,  <32.240723, 39.449230, 25.527555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888824, 38.937706, 25.215857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625587, 39.196064, 25.370638>,  <31.467646, 39.351078, 25.463507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625587, 39.196064, 25.370638>,  <31.888824, 38.937706, 25.215857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625587, 39.196064, 25.370638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544981, -0.054002, -0.836708,
		-0.519529, -0.761514, 0.387539,
		-0.658092, 0.645896, 0.386955,
		31.428160, 39.389832, 25.486725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202465, 38.632717, 25.008551>,  <31.888824, 38.937706, 25.215857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202465, 38.632717, 25.008551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155075, 39.018669, 25.102339>,  <31.126642, 39.250240, 25.158611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155075, 39.018669, 25.102339>,  <31.202465, 38.632717, 25.008551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155075, 39.018669, 25.102339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573556, 0.126260, -0.809378,
		-0.810554, -0.230373, 0.538452,
		-0.118473, 0.964877, 0.234472,
		31.119534, 39.308132, 25.172680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529377, 38.816135, 24.773249>,  <31.202465, 38.632717, 25.008551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529377, 38.816135, 24.773249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704100, 39.172985, 24.819410>,  <30.808933, 39.387093, 24.847107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704100, 39.172985, 24.819410>,  <30.529377, 38.816135, 24.773249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704100, 39.172985, 24.819410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546886, 0.365221, -0.753345,
		-0.714224, 0.265954, 0.647420,
		0.436806, 0.892122, 0.115403,
		30.835142, 39.440620, 24.854031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051821, 39.226143, 24.445007>,  <30.529377, 38.816135, 24.773249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051821, 39.226143, 24.445007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345591, 39.493530, 24.491957>,  <30.521852, 39.653961, 24.520126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345591, 39.493530, 24.491957>,  <30.051821, 39.226143, 24.445007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345591, 39.493530, 24.491957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300384, 0.475230, -0.826998,
		-0.608598, 0.572110, 0.549816,
		0.734423, 0.668466, 0.117372,
		30.565918, 39.694069, 24.527168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745806, 39.910496, 24.377775>,  <30.051821, 39.226143, 24.445007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745806, 39.910496, 24.377775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134003, 39.910934, 24.281321>,  <30.366920, 39.911198, 24.223448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134003, 39.910934, 24.281321>,  <29.745806, 39.910496, 24.377775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134003, 39.910934, 24.281321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219053, 0.422063, -0.879704,
		0.100812, 0.906566, 0.409848,
		0.970491, 0.001094, -0.241135,
		30.425150, 39.911263, 24.208981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816595, 40.476662, 24.016296>,  <29.745806, 39.910496, 24.377775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816595, 40.476662, 24.016296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152109, 40.288208, 23.907137>,  <30.353416, 40.175137, 23.841640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152109, 40.288208, 23.907137>,  <29.816595, 40.476662, 24.016296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152109, 40.288208, 23.907137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193686, 0.210240, -0.958272,
		0.508849, 0.856640, 0.085094,
		0.838784, -0.471135, -0.272899,
		30.403744, 40.146866, 23.825268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024120, 40.908363, 23.541416>,  <29.816595, 40.476662, 24.016296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024120, 40.908363, 23.541416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242680, 40.582096, 23.465389>,  <30.373816, 40.386333, 23.419773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242680, 40.582096, 23.465389>,  <30.024120, 40.908363, 23.541416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242680, 40.582096, 23.465389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156702, 0.123370, -0.979910,
		0.822734, 0.565208, -0.060408,
		0.546401, -0.815672, -0.190069,
		30.406599, 40.337395, 23.408369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451065, 41.084877, 23.055399>,  <30.024120, 40.908363, 23.541416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451065, 41.084877, 23.055399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436426, 40.686592, 23.021406>,  <30.427643, 40.447620, 23.001011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436426, 40.686592, 23.021406>,  <30.451065, 41.084877, 23.055399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436426, 40.686592, 23.021406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205404, 0.090719, -0.974464,
		0.977993, -0.018209, -0.207843,
		-0.036599, -0.995710, -0.084982,
		30.425446, 40.387878, 22.995911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831841, 40.852062, 22.389673>,  <30.451065, 41.084877, 23.055399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831841, 40.852062, 22.389673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572666, 40.578091, 22.522972>,  <30.417162, 40.413708, 22.602951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572666, 40.578091, 22.522972>,  <30.831841, 40.852062, 22.389673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572666, 40.578091, 22.522972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521145, 0.079558, -0.849752,
		0.555505, -0.724256, -0.408495,
		-0.647937, -0.684927, 0.333247,
		30.378284, 40.372612, 22.622946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778097, 40.459740, 21.859774>,  <30.831841, 40.852062, 22.389673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778097, 40.459740, 21.859774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446218, 40.440327, 22.082212>,  <30.247091, 40.428680, 22.215675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446218, 40.440327, 22.082212>,  <30.778097, 40.459740, 21.859774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446218, 40.440327, 22.082212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542500, 0.304805, -0.782808,
		-0.131510, -0.951178, -0.279225,
		-0.829698, -0.048532, 0.556098,
		30.197309, 40.425766, 22.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351681, 40.304592, 21.391926>,  <30.778097, 40.459740, 21.859774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351681, 40.304592, 21.391926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109013, 40.402340, 21.694510>,  <29.963411, 40.460987, 21.876060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109013, 40.402340, 21.694510>,  <30.351681, 40.304592, 21.391926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109013, 40.402340, 21.694510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537002, 0.575665, -0.616634,
		-0.586155, -0.780316, -0.218013,
		-0.606672, 0.244370, 0.756460,
		29.927011, 40.475651, 21.921448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680916, 40.240627, 21.069593>,  <30.351681, 40.304592, 21.391926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680916, 40.240627, 21.069593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666533, 40.473774, 21.394300>,  <29.657902, 40.613663, 21.589125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666533, 40.473774, 21.394300>,  <29.680916, 40.240627, 21.069593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666533, 40.473774, 21.394300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610755, 0.630125, -0.479500,
		-0.791002, -0.513035, 0.333333,
		-0.035959, 0.582870, 0.811769,
		29.655745, 40.648636, 21.637831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017303, 40.295742, 21.128294>,  <29.680916, 40.240627, 21.069593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017303, 40.295742, 21.128294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205851, 40.603298, 21.301094>,  <29.318979, 40.787830, 21.404774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205851, 40.603298, 21.301094>,  <29.017303, 40.295742, 21.128294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205851, 40.603298, 21.301094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580309, 0.639254, -0.504575,
		-0.664119, -0.012854, 0.747516,
		0.471367, 0.768889, 0.432000,
		29.347261, 40.833965, 21.430695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529171, 40.832302, 21.302092>,  <29.017303, 40.295742, 21.128294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529171, 40.832302, 21.302092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865679, 41.047886, 21.318987>,  <29.067583, 41.177238, 21.329124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865679, 41.047886, 21.318987>,  <28.529171, 40.832302, 21.302092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865679, 41.047886, 21.318987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379169, 0.643926, -0.664523,
		-0.385351, 0.543028, 0.746073,
		0.841270, 0.538962, 0.042238,
		29.118059, 41.209576, 21.331659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391136, 41.544868, 21.419895>,  <28.529171, 40.832302, 21.302092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391136, 41.544868, 21.419895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750156, 41.563282, 21.244493>,  <28.965569, 41.574329, 21.139252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750156, 41.563282, 21.244493>,  <28.391136, 41.544868, 21.419895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750156, 41.563282, 21.244493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299885, 0.792814, -0.530580,
		0.323227, 0.607723, 0.725395,
		0.897549, 0.046037, -0.438506,
		29.019421, 41.577095, 21.112942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668724, 42.257484, 21.351534>,  <28.391136, 41.544868, 21.419895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668724, 42.257484, 21.351534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815701, 42.028847, 21.058065>,  <28.903887, 41.891666, 20.881985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815701, 42.028847, 21.058065>,  <28.668724, 42.257484, 21.351534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815701, 42.028847, 21.058065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380971, 0.627132, -0.679386,
		0.848439, 0.529141, 0.012674,
		0.367440, -0.571590, -0.733671,
		28.925932, 41.857368, 20.837963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868984, 42.778587, 20.864878>,  <28.668724, 42.257484, 21.351534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868984, 42.778587, 20.864878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875650, 42.446072, 20.642643>,  <28.879650, 42.246563, 20.509302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875650, 42.446072, 20.642643>,  <28.868984, 42.778587, 20.864878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875650, 42.446072, 20.642643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327759, 0.520420, -0.788503,
		0.944614, 0.195240, -0.263789,
		0.016666, -0.831291, -0.555588,
		28.880650, 42.196686, 20.475967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369270, 42.694447, 20.289232>,  <28.868984, 42.778587, 20.864878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369270, 42.694447, 20.289232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043839, 42.486454, 20.185146>,  <28.848579, 42.361660, 20.122694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043839, 42.486454, 20.185146>,  <29.369270, 42.694447, 20.289232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043839, 42.486454, 20.185146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139882, 0.609412, -0.780417,
		0.564379, -0.598531, -0.568540,
		-0.813578, -0.519979, -0.260215,
		28.799765, 42.330460, 20.107082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767878, 42.064350, 20.248131>,  <29.369270, 42.694447, 20.289232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767878, 42.064350, 20.248131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845188, 42.455837, 20.275702>,  <29.891575, 42.690731, 20.292244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845188, 42.455837, 20.275702>,  <29.767878, 42.064350, 20.248131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845188, 42.455837, 20.275702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935909, -0.204995, 0.286448,
		0.294482, 0.009146, -0.955613,
		0.193276, 0.978720, 0.068927,
		29.903172, 42.749454, 20.296379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414124, 42.389603, 19.925060>,  <29.767878, 42.064350, 20.248131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414124, 42.389603, 19.925060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354908, 42.627796, 20.240904>,  <30.319378, 42.770714, 20.430410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354908, 42.627796, 20.240904>,  <30.414124, 42.389603, 19.925060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354908, 42.627796, 20.240904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971587, -0.061511, 0.228548,
		0.184666, 0.801008, -0.569460,
		-0.148041, 0.595485, 0.789608,
		30.310495, 42.806442, 20.477787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760283, 43.141644, 19.896881>,  <30.414124, 42.389603, 19.925060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760283, 43.141644, 19.896881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709738, 42.920975, 20.226654>,  <30.679411, 42.788574, 20.424519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709738, 42.920975, 20.226654>,  <30.760283, 43.141644, 19.896881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709738, 42.920975, 20.226654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991248, -0.038210, 0.126362,
		-0.038210, 0.833185, 0.551673,
		-0.126362, -0.551673, 0.824433,
		30.671829, 42.755474, 20.473984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457018, 42.854214, 19.283518>,  <30.760283, 43.141644, 19.896881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457018, 42.854214, 19.283518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404535, 42.605263, 18.974863>,  <30.373045, 42.455891, 18.789669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404535, 42.605263, 18.974863>,  <30.457018, 42.854214, 19.283518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404535, 42.605263, 18.974863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989248, -0.132917, -0.061003,
		-0.064597, -0.771345, 0.633130,
		-0.131208, -0.622382, -0.771638,
		30.365173, 42.418549, 18.743372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008183, 42.343731, 19.350088>,  <30.457018, 42.854214, 19.283518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008183, 42.343731, 19.350088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859718, 42.328857, 18.978958>,  <30.770639, 42.319935, 18.756281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859718, 42.328857, 18.978958>,  <31.008183, 42.343731, 19.350088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859718, 42.328857, 18.978958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852608, -0.409455, -0.324662,
		-0.367832, -0.911572, 0.183673,
		-0.371159, -0.037180, -0.927825,
		30.748371, 42.317703, 18.700611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799288, 42.198597, 19.170116>,  <31.008183, 42.343731, 19.350088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799288, 42.198597, 19.170116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588339, 42.537228, 19.141312>,  <31.461769, 42.740406, 19.124029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588339, 42.537228, 19.141312>,  <31.799288, 42.198597, 19.170116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588339, 42.537228, 19.141312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251080, -0.074314, 0.965109,
		0.811687, 0.527055, 0.251750,
		-0.527374, 0.846576, -0.072014,
		31.430126, 42.791199, 19.119707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138577, 42.688293, 19.543306>,  <31.799288, 42.198597, 19.170116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138577, 42.688293, 19.543306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750259, 42.779392, 19.513113>,  <31.517269, 42.834053, 19.494997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750259, 42.779392, 19.513113>,  <32.138577, 42.688293, 19.543306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750259, 42.779392, 19.513113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056865, 0.087244, 0.994563,
		0.233095, 0.969804, -0.071744,
		-0.970790, 0.227748, -0.075484,
		31.459023, 42.847717, 19.490467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813450, 43.390545, 19.606300>,  <32.138577, 42.688293, 19.543306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813450, 43.390545, 19.606300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620144, 43.062469, 19.728769>,  <31.504160, 42.865623, 19.802250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620144, 43.062469, 19.728769>,  <31.813450, 43.390545, 19.606300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620144, 43.062469, 19.728769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330526, 0.152908, 0.931328,
		-0.810682, 0.551278, 0.197199,
		-0.483267, -0.820190, 0.306171,
		31.475164, 42.816414, 19.820621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420378, 43.562061, 20.210911>,  <31.813450, 43.390545, 19.606300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420378, 43.562061, 20.210911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423710, 43.162750, 20.234144>,  <31.425709, 42.923164, 20.248085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423710, 43.162750, 20.234144>,  <31.420378, 43.562061, 20.210911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423710, 43.162750, 20.234144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384792, 0.056813, 0.921253,
		-0.922966, 0.014675, 0.384603,
		0.008331, -0.998277, 0.058083,
		31.426208, 42.863266, 20.251570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127979, 43.427567, 20.846947>,  <31.420378, 43.562061, 20.210911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127979, 43.427567, 20.846947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336483, 43.102169, 20.743790>,  <31.461586, 42.906929, 20.681894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336483, 43.102169, 20.743790>,  <31.127979, 43.427567, 20.846947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336483, 43.102169, 20.743790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408414, -0.027545, 0.912381,
		-0.749323, -0.580916, 0.317886,
		0.521260, -0.813497, -0.257895,
		31.492861, 42.858120, 20.666422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971741, 42.890285, 21.362967>,  <31.127979, 43.427567, 20.846947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971741, 42.890285, 21.362967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326891, 42.814972, 21.195051>,  <31.539982, 42.769783, 21.094301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326891, 42.814972, 21.195051>,  <30.971741, 42.890285, 21.362967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326891, 42.814972, 21.195051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377903, -0.221976, 0.898842,
		-0.262421, -0.956701, -0.125934,
		0.887876, -0.188284, -0.419791,
		31.593254, 42.758488, 21.069115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182457, 42.253464, 21.662203>,  <30.971741, 42.890285, 21.362967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182457, 42.253464, 21.662203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515633, 42.413033, 21.508801>,  <31.715538, 42.508774, 21.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515633, 42.413033, 21.508801>,  <31.182457, 42.253464, 21.662203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515633, 42.413033, 21.508801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504458, -0.262522, 0.822560,
		0.227455, -0.878605, -0.419902,
		0.832938, 0.398918, -0.383508,
		31.765514, 42.532707, 21.393747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702351, 41.794041, 21.783264>,  <31.182457, 42.253464, 21.662203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702351, 41.794041, 21.783264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890919, 42.144226, 21.740702>,  <32.004059, 42.354340, 21.715164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890919, 42.144226, 21.740702>,  <31.702351, 41.794041, 21.783264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890919, 42.144226, 21.740702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267912, -0.027213, 0.963059,
		0.840230, -0.482512, -0.247377,
		0.471420, 0.875466, -0.106405,
		32.032345, 42.406864, 21.708780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318363, 41.711166, 22.194138>,  <31.702351, 41.794041, 21.783264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318363, 41.711166, 22.194138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323257, 42.105701, 22.128435>,  <32.326195, 42.342422, 22.089014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323257, 42.105701, 22.128435>,  <32.318363, 41.711166, 22.194138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323257, 42.105701, 22.128435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287926, 0.153834, 0.945216,
		0.957574, -0.058856, -0.282112,
		0.012233, 0.986342, -0.164254,
		32.326927, 42.401604, 22.079159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944786, 41.905891, 22.463617>,  <32.318363, 41.711166, 22.194138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944786, 41.905891, 22.463617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678734, 42.203896, 22.443398>,  <32.519100, 42.382698, 22.431267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678734, 42.203896, 22.443398>,  <32.944786, 41.905891, 22.463617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678734, 42.203896, 22.443398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166333, 0.213812, 0.962610,
		0.727963, 0.631856, -0.266133,
		-0.665134, 0.745012, -0.050549,
		32.479195, 42.427399, 22.428232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328613, 42.476448, 22.696463>,  <32.944786, 41.905891, 22.463617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328613, 42.476448, 22.696463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940807, 42.562366, 22.743629>,  <32.708122, 42.613918, 22.771931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940807, 42.562366, 22.743629>,  <33.328613, 42.476448, 22.696463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940807, 42.562366, 22.743629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144406, 0.112070, 0.983152,
		0.197959, 0.970208, -0.139671,
		-0.969515, 0.214793, 0.117919,
		32.649952, 42.626804, 22.779005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333179, 42.922855, 23.237366>,  <33.328613, 42.476448, 22.696463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333179, 42.922855, 23.237366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950176, 42.811405, 23.207594>,  <32.720375, 42.744534, 23.189732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950176, 42.811405, 23.207594>,  <33.333179, 42.922855, 23.237366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950176, 42.811405, 23.207594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076979, -0.001790, 0.997031,
		-0.277932, 0.960398, -0.019735,
		-0.957511, -0.278626, -0.074428,
		32.662922, 42.727818, 23.185265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979008, 43.333282, 23.719667>,  <33.333179, 42.922855, 23.237366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979008, 43.333282, 23.719667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710789, 43.042542, 23.660273>,  <32.549858, 42.868095, 23.624636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710789, 43.042542, 23.660273>,  <32.979008, 43.333282, 23.719667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710789, 43.042542, 23.660273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003209, -0.197309, 0.980336,
		-0.741857, 0.657842, 0.129973,
		-0.670551, -0.726852, -0.148486,
		32.509624, 42.824486, 23.615726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346882, 43.481373, 24.203373>,  <32.979008, 43.333282, 23.719667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346882, 43.481373, 24.203373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382095, 43.093067, 24.114042>,  <32.403225, 42.860085, 24.060444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382095, 43.093067, 24.114042>,  <32.346882, 43.481373, 24.203373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382095, 43.093067, 24.114042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036527, -0.227191, 0.973165,
		-0.995448, -0.077513, -0.055459,
		0.088033, -0.970760, -0.223325,
		32.408504, 42.801838, 24.047045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898827, 43.205292, 24.752802>,  <32.346882, 43.481373, 24.203373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898827, 43.205292, 24.752802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154045, 42.937382, 24.600861>,  <32.307178, 42.776634, 24.509695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154045, 42.937382, 24.600861>,  <31.898827, 43.205292, 24.752802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154045, 42.937382, 24.600861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177089, -0.352453, 0.918921,
		-0.749356, -0.653584, -0.106272,
		0.638048, -0.669779, -0.379855,
		32.345459, 42.736446, 24.486904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680817, 42.525959, 24.969431>,  <31.898827, 43.205292, 24.752802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680817, 42.525959, 24.969431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069687, 42.500336, 24.879299>,  <32.303009, 42.484962, 24.825220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069687, 42.500336, 24.879299>,  <31.680817, 42.525959, 24.969431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069687, 42.500336, 24.879299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179961, -0.411562, 0.893438,
		-0.149969, -0.909128, -0.388582,
		0.972175, -0.064059, -0.225329,
		32.361340, 42.481117, 24.811701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770239, 41.920673, 25.205624>,  <31.680817, 42.525959, 24.969431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770239, 41.920673, 25.205624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154518, 42.023041, 25.162605>,  <32.385086, 42.084461, 25.136793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154518, 42.023041, 25.162605>,  <31.770239, 41.920673, 25.205624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154518, 42.023041, 25.162605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196231, -0.352040, 0.915184,
		0.196350, -0.900319, -0.388423,
		0.960698, 0.255917, -0.107548,
		32.442726, 42.099815, 25.130341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119812, 41.344929, 25.517801>,  <31.770239, 41.920673, 25.205624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119812, 41.344929, 25.517801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382755, 41.646114, 25.505636>,  <32.540520, 41.826824, 25.498337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382755, 41.646114, 25.505636>,  <32.119812, 41.344929, 25.517801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382755, 41.646114, 25.505636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291376, -0.216746, 0.931730,
		0.694968, -0.621342, -0.361876,
		0.657358, 0.752964, -0.030412,
		32.579964, 41.872005, 25.496513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669849, 41.173607, 25.922037>,  <32.119812, 41.344929, 25.517801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669849, 41.173607, 25.922037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754112, 41.564423, 25.934847>,  <32.804668, 41.798912, 25.942532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754112, 41.564423, 25.934847>,  <32.669849, 41.173607, 25.922037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754112, 41.564423, 25.934847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293420, -0.094442, 0.951307,
		0.932486, -0.191000, -0.306576,
		0.210653, 0.977036, 0.032022,
		32.817307, 41.857533, 25.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398388, 41.246574, 26.206984>,  <32.669849, 41.173607, 25.922037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398388, 41.246574, 26.206984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233028, 41.604580, 26.273964>,  <33.133812, 41.819386, 26.314152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233028, 41.604580, 26.273964>,  <33.398388, 41.246574, 26.206984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233028, 41.604580, 26.273964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322243, -0.028194, 0.946237,
		0.851621, 0.445137, -0.276758,
		-0.413402, 0.895019, 0.167453,
		33.109009, 41.873085, 26.324200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937447, 41.696724, 26.531946>,  <33.398388, 41.246574, 26.206984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937447, 41.696724, 26.531946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589676, 41.860561, 26.642454>,  <33.381012, 41.958866, 26.708759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589676, 41.860561, 26.642454>,  <33.937447, 41.696724, 26.531946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589676, 41.860561, 26.642454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286348, -0.037926, 0.957375,
		0.402616, 0.911478, -0.084313,
		-0.869428, 0.409597, 0.276269,
		33.328846, 41.983440, 26.725334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105038, 42.245018, 26.982065>,  <33.937447, 41.696724, 26.531946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105038, 42.245018, 26.982065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722324, 42.156933, 27.058027>,  <33.492695, 42.104080, 27.103605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722324, 42.156933, 27.058027>,  <34.105038, 42.245018, 26.982065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722324, 42.156933, 27.058027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221009, -0.126282, 0.967061,
		-0.188980, 0.967242, 0.169495,
		-0.956787, -0.220215, 0.189905,
		33.435287, 42.090870, 27.114998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859852, 42.671787, 27.531233>,  <34.105038, 42.245018, 26.982065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859852, 42.671787, 27.531233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590626, 42.376511, 27.549397>,  <33.429089, 42.199345, 27.560295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590626, 42.376511, 27.549397>,  <33.859852, 42.671787, 27.531233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590626, 42.376511, 27.549397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161611, -0.086885, 0.983022,
		-0.721710, 0.668977, 0.177778,
		-0.673065, -0.738188, 0.045408,
		33.388706, 42.155056, 27.563019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417267, 42.904556, 28.113819>,  <33.859852, 42.671787, 27.531233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417267, 42.904556, 28.113819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372112, 42.514244, 28.038872>,  <33.345020, 42.280056, 27.993904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372112, 42.514244, 28.038872>,  <33.417267, 42.904556, 28.113819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372112, 42.514244, 28.038872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143385, -0.202597, 0.968708,
		-0.983208, 0.082485, 0.162782,
		-0.112883, -0.975782, -0.187368,
		33.338249, 42.221508, 27.982662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665417, 42.657383, 28.279211>,  <33.417267, 42.904556, 28.113819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665417, 42.657383, 28.279211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947445, 42.379967, 28.338377>,  <33.116661, 42.213516, 28.373877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947445, 42.379967, 28.338377>,  <32.665417, 42.657383, 28.279211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947445, 42.379967, 28.338377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238751, -0.035754, 0.970422,
		-0.667738, -0.719531, -0.190793,
		0.705070, -0.693540, 0.147914,
		33.158966, 42.171906, 28.382751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458328, 42.369488, 28.874594>,  <32.665417, 42.657383, 28.279211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458328, 42.369488, 28.874594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808453, 42.183880, 28.820169>,  <33.018528, 42.072517, 28.787514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808453, 42.183880, 28.820169>,  <32.458328, 42.369488, 28.874594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808453, 42.183880, 28.820169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054531, -0.184865, 0.981250,
		-0.480470, -0.866322, -0.136511,
		0.875314, -0.464017, -0.136063,
		33.071049, 42.044674, 28.779350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387871, 41.791145, 29.245375>,  <32.458328, 42.369488, 28.874594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387871, 41.791145, 29.245375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784122, 41.814117, 29.195797>,  <33.021873, 41.827900, 29.166050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784122, 41.814117, 29.195797>,  <32.387871, 41.791145, 29.245375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784122, 41.814117, 29.195797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131203, -0.147454, 0.980328,
		0.038028, -0.987400, -0.153607,
		0.990626, 0.057434, -0.123943,
		33.081310, 41.831348, 29.158613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582005, 41.178215, 29.375530>,  <32.387871, 41.791145, 29.245375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582005, 41.178215, 29.375530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906452, 41.400429, 29.448704>,  <33.101120, 41.533756, 29.492609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906452, 41.400429, 29.448704>,  <32.582005, 41.178215, 29.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906452, 41.400429, 29.448704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069448, -0.402042, 0.912984,
		0.580741, -0.727836, -0.364685,
		0.811121, 0.555533, 0.182936,
		33.149788, 41.567089, 29.503584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943291, 40.726917, 29.805281>,  <32.582005, 41.178215, 29.375530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943291, 40.726917, 29.805281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103695, 41.087524, 29.870344>,  <33.199940, 41.303886, 29.909382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103695, 41.087524, 29.870344>,  <32.943291, 40.726917, 29.805281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103695, 41.087524, 29.870344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150110, -0.239829, 0.959140,
		0.903690, -0.360211, -0.231501,
		0.401013, 0.901516, 0.162660,
		33.223999, 41.357979, 29.919142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576351, 40.610706, 30.124784>,  <32.943291, 40.726917, 29.805281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576351, 40.610706, 30.124784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527710, 41.000298, 30.201296>,  <33.498528, 41.234051, 30.247204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527710, 41.000298, 30.201296>,  <33.576351, 40.610706, 30.124784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527710, 41.000298, 30.201296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432340, -0.121496, 0.893488,
		0.893474, 0.191345, -0.406314,
		-0.121599, 0.973974, 0.191279,
		33.491230, 41.292488, 30.258680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224354, 40.803162, 30.302862>,  <33.576351, 40.610706, 30.124784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224354, 40.803162, 30.302862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965664, 41.077827, 30.435667>,  <33.810448, 41.242626, 30.515350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965664, 41.077827, 30.435667>,  <34.224354, 40.803162, 30.302862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965664, 41.077827, 30.435667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443695, -0.015360, 0.896046,
		0.620386, 0.726809, -0.294737,
		-0.646727, 0.686668, 0.332011,
		33.771645, 41.283829, 30.535271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617622, 41.264328, 30.800810>,  <34.224354, 40.803162, 30.302862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617622, 41.264328, 30.800810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234653, 41.298370, 30.911156>,  <34.004871, 41.318794, 30.977364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234653, 41.298370, 30.911156>,  <34.617622, 41.264328, 30.800810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234653, 41.298370, 30.911156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269391, -0.080178, 0.959688,
		0.103790, 0.993141, 0.053838,
		-0.957422, 0.085103, 0.275865,
		33.947426, 41.323902, 30.993916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704815, 41.695095, 31.366554>,  <34.617622, 41.264328, 30.800810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704815, 41.695095, 31.366554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343678, 41.529736, 31.413853>,  <34.126995, 41.430519, 31.442232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343678, 41.529736, 31.413853>,  <34.704815, 41.695095, 31.366554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343678, 41.529736, 31.413853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126764, 0.006876, 0.991909,
		-0.410864, 0.910525, 0.046196,
		-0.902841, -0.413396, 0.118247,
		34.072826, 41.405716, 31.449327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449642, 42.072117, 31.912882>,  <34.704815, 41.695095, 31.366554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449642, 42.072117, 31.912882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242901, 41.730305, 31.892342>,  <34.118855, 41.525215, 31.880018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242901, 41.730305, 31.892342>,  <34.449642, 42.072117, 31.912882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242901, 41.730305, 31.892342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082463, -0.109400, 0.990571,
		-0.852092, 0.507747, 0.127011,
		-0.516855, -0.854532, -0.051348,
		34.087845, 41.473946, 31.876938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036446, 41.986610, 32.525070>,  <34.449642, 42.072117, 31.912882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036446, 41.986610, 32.525070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021545, 41.614834, 32.378239>,  <34.012604, 41.391769, 32.290138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021545, 41.614834, 32.378239>,  <34.036446, 41.986610, 32.525070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021545, 41.614834, 32.378239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057426, -0.368722, 0.927764,
		-0.997654, 0.013484, 0.067111,
		-0.037255, -0.929442, -0.367083,
		34.010368, 41.336002, 32.268112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577137, 41.547596, 33.013626>,  <34.036446, 41.986610, 32.525070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577137, 41.547596, 33.013626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799145, 41.280342, 32.815418>,  <33.932350, 41.119987, 32.696491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799145, 41.280342, 32.815418>,  <33.577137, 41.547596, 33.013626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799145, 41.280342, 32.815418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242043, -0.440206, 0.864658,
		-0.795842, -0.599843, -0.082607,
		0.555023, -0.668137, -0.495522,
		33.965652, 41.079903, 32.666763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320858, 40.845276, 33.242226>,  <33.577137, 41.547596, 33.013626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320858, 40.845276, 33.242226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697186, 40.798698, 33.114914>,  <33.922981, 40.770752, 33.038528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697186, 40.798698, 33.114914>,  <33.320858, 40.845276, 33.242226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697186, 40.798698, 33.114914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119116, -0.765597, 0.632197,
		-0.317285, -0.632695, -0.706418,
		0.940820, -0.116441, -0.318276,
		33.979431, 40.763767, 33.019432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434326, 40.112568, 33.342789>,  <33.320858, 40.845276, 33.242226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434326, 40.112568, 33.342789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801968, 40.260895, 33.289516>,  <34.022552, 40.349892, 33.257553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801968, 40.260895, 33.289516>,  <33.434326, 40.112568, 33.342789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801968, 40.260895, 33.289516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367480, -0.684828, 0.629261,
		0.142136, -0.627299, -0.765698,
		0.919106, 0.370819, -0.133181,
		34.077698, 40.372139, 33.249561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937851, 39.548103, 33.151978>,  <33.434326, 40.112568, 33.342789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937851, 39.548103, 33.151978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197250, 39.825996, 33.276424>,  <34.352890, 39.992733, 33.351093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197250, 39.825996, 33.276424>,  <33.937851, 39.548103, 33.151978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197250, 39.825996, 33.276424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556235, -0.711504, 0.429377,
		0.519664, -0.105397, -0.847845,
		0.648500, 0.694733, 0.311118,
		34.391800, 40.034416, 33.369759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601822, 39.251667, 33.044865>,  <33.937851, 39.548103, 33.151978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601822, 39.251667, 33.044865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643944, 39.533863, 33.325207>,  <34.669216, 39.703178, 33.493412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643944, 39.533863, 33.325207>,  <34.601822, 39.251667, 33.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643944, 39.533863, 33.325207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504649, -0.645195, 0.573631,
		0.856878, 0.293278, -0.423967,
		0.105308, 0.705487, 0.700856,
		34.675537, 39.745510, 33.535465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313538, 39.378651, 33.148052>,  <34.601822, 39.251667, 33.044865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313538, 39.378651, 33.148052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135895, 39.508587, 33.482059>,  <35.029308, 39.586548, 33.682465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135895, 39.508587, 33.482059>,  <35.313538, 39.378651, 33.148052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135895, 39.508587, 33.482059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624804, -0.555687, 0.548482,
		0.642177, 0.765303, 0.043820,
		-0.444105, 0.324843, 0.835014,
		35.002663, 39.606041, 33.732563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721672, 39.862785, 32.795860>,  <35.313538, 39.378651, 33.148052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721672, 39.862785, 32.795860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091324, 39.730515, 32.719296>,  <36.313114, 39.651150, 32.673355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091324, 39.730515, 32.719296>,  <35.721672, 39.862785, 32.795860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091324, 39.730515, 32.719296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149249, 0.148758, -0.977546,
		0.351728, 0.931946, 0.088118,
		0.924128, -0.330679, -0.191414,
		36.368561, 39.631310, 32.661873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062237, 40.399960, 32.408455>,  <35.721672, 39.862785, 32.795860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062237, 40.399960, 32.408455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195980, 40.029564, 32.338326>,  <36.276226, 39.807327, 32.296246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195980, 40.029564, 32.338326>,  <36.062237, 40.399960, 32.408455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195980, 40.029564, 32.338326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072157, 0.160335, -0.984422,
		0.939679, 0.341802, -0.013207,
		0.334360, -0.925994, -0.175327,
		36.296288, 39.751766, 32.285728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455910, 40.407173, 31.899530>,  <36.062237, 40.399960, 32.408455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455910, 40.407173, 31.899530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339073, 40.024715, 31.908283>,  <36.268970, 39.795242, 31.913536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339073, 40.024715, 31.908283>,  <36.455910, 40.407173, 31.899530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339073, 40.024715, 31.908283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051699, -0.007063, -0.998638,
		0.954992, -0.292824, -0.047369,
		-0.292091, -0.956140, 0.021884,
		36.251446, 39.737873, 31.914848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955639, 40.019821, 31.447464>,  <36.455910, 40.407173, 31.899530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955639, 40.019821, 31.447464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624397, 39.797935, 31.479790>,  <36.425652, 39.664803, 31.499186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624397, 39.797935, 31.479790>,  <36.955639, 40.019821, 31.447464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624397, 39.797935, 31.479790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031966, -0.097198, -0.994752,
		0.559662, -0.826341, 0.062757,
		-0.828104, -0.554719, 0.080813,
		36.375965, 39.631519, 31.504034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117996, 39.392941, 31.062613>,  <36.955639, 40.019821, 31.447464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117996, 39.392941, 31.062613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718052, 39.390862, 31.056341>,  <36.478085, 39.389614, 31.052578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718052, 39.390862, 31.056341>,  <37.117996, 39.392941, 31.062613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718052, 39.390862, 31.056341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015378, 0.053699, -0.998439,
		0.006023, -0.998544, -0.053612,
		-0.999863, -0.005190, -0.015679,
		36.418095, 39.389301, 31.051638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012268, 38.944527, 30.527849>,  <37.117996, 39.392941, 31.062613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012268, 38.944527, 30.527849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692673, 39.175484, 30.595060>,  <36.500916, 39.314056, 30.635387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692673, 39.175484, 30.595060>,  <37.012268, 38.944527, 30.527849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692673, 39.175484, 30.595060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096946, 0.152085, -0.983601,
		-0.593476, -0.802179, -0.065539,
		-0.798992, 0.577390, 0.168027,
		36.452976, 39.348701, 30.645468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460171, 38.696796, 30.088795>,  <37.012268, 38.944527, 30.527849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460171, 38.696796, 30.088795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368996, 39.075832, 30.178343>,  <36.314289, 39.303253, 30.232071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368996, 39.075832, 30.178343>,  <36.460171, 38.696796, 30.088795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368996, 39.075832, 30.178343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108843, 0.203682, -0.972968,
		-0.967572, -0.246145, 0.056711,
		-0.227941, 0.947589, 0.223868,
		36.300613, 39.360107, 30.245502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077168, 38.783485, 29.541162>,  <36.460171, 38.696796, 30.088795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077168, 38.783485, 29.541162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134201, 39.154438, 29.679510>,  <36.168423, 39.377010, 29.762520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134201, 39.154438, 29.679510>,  <36.077168, 38.783485, 29.541162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134201, 39.154438, 29.679510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189968, 0.368585, -0.909976,
		-0.971381, 0.064045, 0.228729,
		0.142586, 0.927385, 0.345870,
		36.176975, 39.432655, 29.783272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600552, 39.192383, 29.155104>,  <36.077168, 38.783485, 29.541162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600552, 39.192383, 29.155104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870972, 39.451759, 29.295095>,  <36.033222, 39.607384, 29.379089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870972, 39.451759, 29.295095>,  <35.600552, 39.192383, 29.155104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870972, 39.451759, 29.295095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067110, 0.527170, -0.847106,
		-0.733794, 0.549199, 0.399910,
		0.676050, 0.648439, 0.349977,
		36.073788, 39.646290, 29.400089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354313, 39.924416, 28.924862>,  <35.600552, 39.192383, 29.155104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354313, 39.924416, 28.924862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742531, 39.954483, 29.016418>,  <35.975460, 39.972523, 29.071352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742531, 39.954483, 29.016418>,  <35.354313, 39.924416, 28.924862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742531, 39.954483, 29.016418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182180, 0.392695, -0.901444,
		-0.157644, 0.916592, 0.367435,
		0.970546, 0.075168, 0.228891,
		36.033695, 39.977032, 29.085085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603058, 40.523544, 28.551638>,  <35.354313, 39.924416, 28.924862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603058, 40.523544, 28.551638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947300, 40.346561, 28.652508>,  <36.153847, 40.240372, 28.713030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947300, 40.346561, 28.652508>,  <35.603058, 40.523544, 28.551638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947300, 40.346561, 28.652508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401600, 0.285123, -0.870300,
		0.313166, 0.850259, 0.423068,
		0.860607, -0.442453, 0.252174,
		36.205482, 40.213825, 28.728159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099873, 41.031269, 28.397121>,  <35.603058, 40.523544, 28.551638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099873, 41.031269, 28.397121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285477, 40.676937, 28.395969>,  <36.396839, 40.464340, 28.395279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285477, 40.676937, 28.395969>,  <36.099873, 41.031269, 28.397121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285477, 40.676937, 28.395969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541700, 0.286321, -0.790305,
		0.700897, 0.365149, 0.612707,
		0.464010, -0.885825, -0.002881,
		36.424679, 40.411190, 28.395105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816158, 41.134548, 28.483734>,  <36.099873, 41.031269, 28.397121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816158, 41.134548, 28.483734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741043, 40.794048, 28.287729>,  <36.695972, 40.589748, 28.170126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741043, 40.794048, 28.287729>,  <36.816158, 41.134548, 28.483734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741043, 40.794048, 28.287729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489723, 0.351307, -0.797969,
		0.851414, -0.389823, 0.350903,
		-0.187792, -0.851247, -0.490013,
		36.684704, 40.538673, 28.140726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416809, 41.137566, 27.965658>,  <36.816158, 41.134548, 28.483734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416809, 41.137566, 27.965658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139568, 40.871635, 27.854216>,  <36.973225, 40.712078, 27.787350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139568, 40.871635, 27.854216>,  <37.416809, 41.137566, 27.965658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139568, 40.871635, 27.854216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133454, 0.261474, -0.955940,
		0.708383, -0.699741, -0.092503,
		-0.693097, -0.664826, -0.278606,
		36.931641, 40.672188, 27.770634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660561, 40.944580, 27.321119>,  <37.416809, 41.137566, 27.965658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660561, 40.944580, 27.321119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279922, 40.823486, 27.299896>,  <37.051540, 40.750828, 27.287163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279922, 40.823486, 27.299896>,  <37.660561, 40.944580, 27.321119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279922, 40.823486, 27.299896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033121, 0.272627, -0.961550,
		0.305565, -0.913249, -0.269457,
		-0.951595, -0.302740, -0.053058,
		36.994442, 40.732666, 27.283979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569004, 40.537407, 26.728437>,  <37.660561, 40.944580, 27.321119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569004, 40.537407, 26.728437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198341, 40.647552, 26.830788>,  <36.975945, 40.713638, 26.892199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198341, 40.647552, 26.830788>,  <37.569004, 40.537407, 26.728437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198341, 40.647552, 26.830788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194903, 0.230089, -0.953453,
		-0.321422, -0.933399, -0.159545,
		-0.926661, 0.275365, 0.255877,
		36.920341, 40.730164, 26.907551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146881, 40.283257, 26.200468>,  <37.569004, 40.537407, 26.728437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146881, 40.283257, 26.200468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913208, 40.560165, 26.369930>,  <36.773003, 40.726311, 26.471607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913208, 40.560165, 26.369930>,  <37.146881, 40.283257, 26.200468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913208, 40.560165, 26.369930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343129, 0.262382, -0.901897,
		-0.735519, -0.672244, 0.084259,
		-0.584187, 0.692274, 0.423654,
		36.737953, 40.767849, 26.497026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468674, 40.109879, 25.973951>,  <37.146881, 40.283257, 26.200468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468674, 40.109879, 25.973951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477783, 40.500038, 26.061659>,  <36.483250, 40.734135, 26.114283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477783, 40.500038, 26.061659>,  <36.468674, 40.109879, 25.973951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477783, 40.500038, 26.061659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229069, 0.218581, -0.948551,
		-0.973144, -0.028627, 0.228411,
		0.022773, 0.975399, 0.219269,
		36.484615, 40.792656, 26.127439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876831, 40.431545, 25.671331>,  <36.468674, 40.109879, 25.973951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876831, 40.431545, 25.671331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082420, 40.767475, 25.741215>,  <36.205772, 40.969032, 25.783144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082420, 40.767475, 25.741215>,  <35.876831, 40.431545, 25.671331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082420, 40.767475, 25.741215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406340, 0.417734, -0.812641,
		-0.755459, 0.346686, 0.555959,
		0.513975, 0.839825, 0.174708,
		36.236614, 41.019424, 25.793627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397148, 41.027824, 25.739689>,  <35.876831, 40.431545, 25.671331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397148, 41.027824, 25.739689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741344, 41.191441, 25.618198>,  <35.947861, 41.289612, 25.545305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741344, 41.191441, 25.618198>,  <35.397148, 41.027824, 25.739689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741344, 41.191441, 25.618198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461447, 0.373058, -0.804919,
		-0.215938, 0.832775, 0.509762,
		0.860487, 0.409041, -0.303724,
		35.999489, 41.314152, 25.527081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245804, 41.779362, 25.691771>,  <35.397148, 41.027824, 25.739689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245804, 41.779362, 25.691771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577087, 41.684769, 25.488537>,  <35.775856, 41.628014, 25.366596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577087, 41.684769, 25.488537>,  <35.245804, 41.779362, 25.691771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577087, 41.684769, 25.488537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414465, 0.351772, -0.839330,
		0.377218, 0.905722, 0.193326,
		0.828206, -0.236483, -0.508085,
		35.825550, 41.613823, 25.336111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218189, 42.256332, 25.164589>,  <35.245804, 41.779362, 25.691771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218189, 42.256332, 25.164589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480534, 42.005650, 24.996265>,  <35.637939, 41.855240, 24.895271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480534, 42.005650, 24.996265>,  <35.218189, 42.256332, 25.164589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480534, 42.005650, 24.996265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536566, 0.005081, -0.843843,
		0.530982, 0.779237, -0.332938,
		0.655862, -0.626709, -0.420810,
		35.677292, 41.817638, 24.870022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322777, 42.472698, 24.530096>,  <35.218189, 42.256332, 25.164589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322777, 42.472698, 24.530096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407864, 42.081882, 24.525356>,  <35.458916, 41.847393, 24.522512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407864, 42.081882, 24.525356>,  <35.322777, 42.472698, 24.530096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407864, 42.081882, 24.525356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474165, -0.092615, -0.875551,
		0.854353, 0.191862, -0.482980,
		0.212716, -0.977042, -0.011848,
		35.471680, 41.788769, 24.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656006, 42.342159, 23.931664>,  <35.322777, 42.472698, 24.530096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656006, 42.342159, 23.931664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499363, 41.997253, 24.060129>,  <35.405376, 41.790310, 24.137209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499363, 41.997253, 24.060129>,  <35.656006, 42.342159, 23.931664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499363, 41.997253, 24.060129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574774, -0.043331, -0.817164,
		0.718528, -0.504602, -0.478639,
		-0.391603, -0.862264, 0.321166,
		35.381882, 41.738575, 24.156479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776768, 41.820339, 23.464310>,  <35.656006, 42.342159, 23.931664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776768, 41.820339, 23.464310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448780, 41.688957, 23.651827>,  <35.251987, 41.610130, 23.764338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448780, 41.688957, 23.651827>,  <35.776768, 41.820339, 23.464310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448780, 41.688957, 23.651827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403052, -0.250230, -0.880304,
		0.406444, -0.910771, 0.072798,
		-0.819971, -0.328453, 0.468792,
		35.202789, 41.590420, 23.792465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657738, 41.150673, 23.274864>,  <35.776768, 41.820339, 23.464310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657738, 41.150673, 23.274864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295219, 41.242702, 23.416674>,  <35.077709, 41.297920, 23.501760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295219, 41.242702, 23.416674>,  <35.657738, 41.150673, 23.274864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295219, 41.242702, 23.416674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416861, -0.348416, -0.839544,
		-0.069633, -0.908665, 0.411678,
		-0.906299, 0.230072, 0.354526,
		35.023331, 41.311726, 23.523031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097511, 40.709789, 22.910629>,  <35.657738, 41.150673, 23.274864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097511, 40.709789, 22.910629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827000, 40.961830, 23.063269>,  <34.664692, 41.113056, 23.154852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827000, 40.961830, 23.063269>,  <35.097511, 40.709789, 22.910629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827000, 40.961830, 23.063269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639869, -0.245808, -0.728111,
		-0.364984, -0.736579, 0.569418,
		-0.676279, 0.630102, 0.381599,
		34.624115, 41.150860, 23.177748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455185, 40.359138, 22.898338>,  <35.097511, 40.709789, 22.910629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455185, 40.359138, 22.898338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368778, 40.748890, 22.923414>,  <34.316933, 40.982738, 22.938459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368778, 40.748890, 22.923414>,  <34.455185, 40.359138, 22.898338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368778, 40.748890, 22.923414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476866, -0.049257, -0.877595,
		-0.852018, -0.219474, 0.475286,
		-0.216020, 0.974374, 0.062692,
		34.303970, 41.041203, 22.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715660, 40.391006, 22.992933>,  <34.455185, 40.359138, 22.898338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715660, 40.391006, 22.992933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875851, 40.720104, 22.831585>,  <33.971966, 40.917564, 22.734776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875851, 40.720104, 22.831585>,  <33.715660, 40.391006, 22.992933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875851, 40.720104, 22.831585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566320, -0.123826, -0.814830,
		-0.720345, 0.554760, 0.416347,
		0.400480, 0.822745, -0.403369,
		33.995995, 40.966927, 22.710575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197582, 40.651764, 22.679691>,  <33.715660, 40.391006, 22.992933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197582, 40.651764, 22.679691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480476, 40.869797, 22.499599>,  <33.650211, 41.000614, 22.391544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480476, 40.869797, 22.499599>,  <33.197582, 40.651764, 22.679691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480476, 40.869797, 22.499599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414298, -0.196493, -0.888677,
		-0.572866, 0.815034, 0.086859,
		0.707235, 0.545079, -0.450231,
		33.692646, 41.033321, 22.364531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839108, 41.129345, 22.161919>,  <33.197582, 40.651764, 22.679691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839108, 41.129345, 22.161919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219009, 41.124718, 22.036806>,  <33.446949, 41.121941, 21.961739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219009, 41.124718, 22.036806>,  <32.839108, 41.129345, 22.161919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219009, 41.124718, 22.036806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312990, -0.041927, -0.948831,
		-0.002142, 0.999054, -0.043439,
		0.949754, -0.011564, -0.312784,
		33.503937, 41.121250, 21.942970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897949, 41.621712, 21.601927>,  <32.839108, 41.129345, 22.161919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897949, 41.621712, 21.601927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183418, 41.343212, 21.571177>,  <33.354698, 41.176113, 21.552727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183418, 41.343212, 21.571177>,  <32.897949, 41.621712, 21.601927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183418, 41.343212, 21.571177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265717, -0.167541, -0.949381,
		0.648124, 0.697975, -0.304575,
		0.713673, -0.696248, -0.076877,
		33.397522, 41.134338, 21.548113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074615, 41.707039, 20.992401>,  <32.897949, 41.621712, 21.601927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074615, 41.707039, 20.992401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226624, 41.344280, 21.065207>,  <33.317829, 41.126625, 21.108891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226624, 41.344280, 21.065207>,  <33.074615, 41.707039, 20.992401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226624, 41.344280, 21.065207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240913, -0.287027, -0.927133,
		0.893054, 0.308481, -0.327559,
		0.380021, -0.906893, 0.182013,
		33.340630, 41.072212, 21.119810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556061, 41.549881, 20.322838>,  <33.074615, 41.707039, 20.992401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556061, 41.549881, 20.322838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473648, 41.205387, 20.508667>,  <33.424198, 40.998692, 20.620165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473648, 41.205387, 20.508667>,  <33.556061, 41.549881, 20.322838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473648, 41.205387, 20.508667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117553, -0.449538, -0.885492,
		0.971458, -0.237054, -0.008620,
		-0.206035, -0.861232, 0.464574,
		33.411839, 40.947018, 20.648039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049358, 41.081097, 20.074867>,  <33.556061, 41.549881, 20.322838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049358, 41.081097, 20.074867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713413, 40.912144, 20.211229>,  <33.511845, 40.810772, 20.293047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713413, 40.912144, 20.211229>,  <34.049358, 41.081097, 20.074867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713413, 40.912144, 20.211229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218544, -0.311764, -0.924685,
		0.496852, -0.851115, 0.169532,
		-0.839867, -0.422382, 0.340907,
		33.461452, 40.785431, 20.313501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017723, 40.585648, 19.616777>,  <34.049358, 41.081097, 20.074867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017723, 40.585648, 19.616777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651421, 40.549942, 19.773453>,  <33.431641, 40.528519, 19.867458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651421, 40.549942, 19.773453>,  <34.017723, 40.585648, 19.616777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651421, 40.549942, 19.773453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305244, -0.479271, -0.822876,
		0.261180, -0.873116, 0.411648,
		-0.915757, -0.089266, 0.391689,
		33.376694, 40.523163, 19.890959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799698, 39.851398, 19.569809>,  <34.017723, 40.585648, 19.616777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799698, 39.851398, 19.569809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478504, 40.088383, 19.595770>,  <33.285789, 40.230572, 19.611347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478504, 40.088383, 19.595770>,  <33.799698, 39.851398, 19.569809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478504, 40.088383, 19.595770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310237, -0.322509, -0.894282,
		-0.508894, -0.738228, 0.442772,
		-0.802982, 0.592459, 0.064902,
		33.237610, 40.266121, 19.615240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344181, 39.361279, 19.327715>,  <33.799698, 39.851398, 19.569809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344181, 39.361279, 19.327715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197308, 39.731728, 19.293131>,  <33.109184, 39.953999, 19.272381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197308, 39.731728, 19.293131>,  <33.344181, 39.361279, 19.327715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197308, 39.731728, 19.293131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494390, -0.273054, -0.825240,
		-0.787880, -0.260270, 0.558126,
		-0.367184, 0.926122, -0.086459,
		33.087154, 40.009563, 19.267193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808483, 38.863121, 19.686773>,  <33.344181, 39.361279, 19.327715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808483, 38.863121, 19.686773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016300, 38.706821, 19.382826>,  <33.140991, 38.613041, 19.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016300, 38.706821, 19.382826>,  <32.808483, 38.863121, 19.686773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016300, 38.706821, 19.382826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685901, -0.339596, 0.643595,
		-0.509529, -0.855566, 0.091579,
		0.519538, -0.390744, -0.759868,
		33.172161, 38.589600, 19.154865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202759, 38.211365, 19.929358>,  <32.808483, 38.863121, 19.686773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202759, 38.211365, 19.929358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398102, 38.259838, 19.583681>,  <33.515308, 38.288921, 19.376276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398102, 38.259838, 19.583681>,  <33.202759, 38.211365, 19.929358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398102, 38.259838, 19.583681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821672, -0.397358, 0.408609,
		-0.293877, -0.909627, -0.293624,
		0.488355, 0.121182, -0.864190,
		33.544609, 38.296192, 19.324425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579372, 37.596844, 19.844027>,  <33.202759, 38.211365, 19.929358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579372, 37.596844, 19.844027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786068, 37.843201, 19.606150>,  <33.910084, 37.991016, 19.463423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786068, 37.843201, 19.606150>,  <33.579372, 37.596844, 19.844027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786068, 37.843201, 19.606150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855679, -0.348603, 0.382478,
		0.028255, -0.706505, -0.707144,
		0.516735, 0.615895, -0.594692,
		33.941090, 38.027969, 19.427742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071033, 37.193031, 19.577789>,  <33.579372, 37.596844, 19.844027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071033, 37.193031, 19.577789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193810, 37.573315, 19.560148>,  <34.267475, 37.801483, 19.549562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193810, 37.573315, 19.560148>,  <34.071033, 37.193031, 19.577789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193810, 37.573315, 19.560148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794766, -0.230551, 0.561421,
		0.523578, -0.207376, -0.826354,
		0.306942, 0.950706, -0.044104,
		34.285892, 37.858528, 19.546917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819550, 37.108082, 19.463818>,  <34.071033, 37.193031, 19.577789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819550, 37.108082, 19.463818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753071, 37.488743, 19.567148>,  <34.713184, 37.717140, 19.629147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753071, 37.488743, 19.567148>,  <34.819550, 37.108082, 19.463818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753071, 37.488743, 19.567148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821080, -0.011520, 0.570697,
		0.546082, 0.306954, -0.779470,
		-0.166198, 0.951655, 0.258324,
		34.703213, 37.774239, 19.644646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491184, 37.273117, 19.396326>,  <34.819550, 37.108082, 19.463818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491184, 37.273117, 19.396326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291355, 37.528126, 19.630930>,  <35.171459, 37.681133, 19.771692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291355, 37.528126, 19.630930>,  <35.491184, 37.273117, 19.396326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291355, 37.528126, 19.630930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840873, 0.194122, 0.505222,
		0.208237, 0.745574, -0.633054,
		-0.499570, 0.637524, 0.586510,
		35.141483, 37.719383, 19.806883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989063, 37.709915, 19.637833>,  <35.491184, 37.273117, 19.396326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989063, 37.709915, 19.637833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675388, 37.760532, 19.880825>,  <35.487183, 37.790901, 20.026621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675388, 37.760532, 19.880825>,  <35.989063, 37.709915, 19.637833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675388, 37.760532, 19.880825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612639, 0.313443, 0.725553,
		-0.098599, 0.941138, -0.323322,
		-0.784189, 0.126541, 0.607483,
		35.440132, 37.798496, 20.063070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129448, 38.363846, 19.947908>,  <35.989063, 37.709915, 19.637833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129448, 38.363846, 19.947908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869740, 38.211292, 20.211119>,  <35.713917, 38.119759, 20.369045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869740, 38.211292, 20.211119>,  <36.129448, 38.363846, 19.947908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869740, 38.211292, 20.211119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570186, 0.328483, 0.752985,
		-0.503330, 0.864084, 0.004189,
		-0.649267, -0.381389, 0.658024,
		35.674961, 38.096874, 20.408525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025295, 38.827904, 20.475204>,  <36.129448, 38.363846, 19.947908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025295, 38.827904, 20.475204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866261, 38.501713, 20.643448>,  <35.770840, 38.305996, 20.744394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866261, 38.501713, 20.643448>,  <36.025295, 38.827904, 20.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866261, 38.501713, 20.643448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255618, 0.341813, 0.904336,
		-0.881239, 0.467069, 0.072551,
		-0.397589, -0.815482, 0.420610,
		35.746983, 38.257069, 20.769630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630474, 39.117840, 21.007519>,  <36.025295, 38.827904, 20.475204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630474, 39.117840, 21.007519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709064, 38.734997, 21.092688>,  <35.756218, 38.505291, 21.143789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709064, 38.734997, 21.092688>,  <35.630474, 39.117840, 21.007519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709064, 38.734997, 21.092688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187139, 0.249767, 0.950050,
		-0.962485, -0.146813, 0.228186,
		0.196473, -0.957111, 0.212923,
		35.768005, 38.447865, 21.156565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300697, 38.943584, 21.615738>,  <35.630474, 39.117840, 21.007519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300697, 38.943584, 21.615738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594654, 38.672672, 21.601763>,  <35.771030, 38.510124, 21.593378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594654, 38.672672, 21.601763>,  <35.300697, 38.943584, 21.615738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594654, 38.672672, 21.601763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269107, 0.243938, 0.931706,
		-0.622502, -0.694109, 0.361530,
		0.734897, -0.677279, -0.034938,
		35.815125, 38.469490, 21.591282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231186, 38.448315, 22.246933>,  <35.300697, 38.943584, 21.615738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231186, 38.448315, 22.246933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607342, 38.413727, 22.115366>,  <35.833035, 38.392975, 22.036427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607342, 38.413727, 22.115366>,  <35.231186, 38.448315, 22.246933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607342, 38.413727, 22.115366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337609, 0.120666, 0.933520,
		-0.041029, -0.988921, 0.142665,
		0.940392, -0.086467, -0.328918,
		35.889458, 38.387787, 22.016691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566807, 38.036026, 22.770864>,  <35.231186, 38.448315, 22.246933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566807, 38.036026, 22.770864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853634, 38.228962, 22.569603>,  <36.025730, 38.344723, 22.448847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853634, 38.228962, 22.569603>,  <35.566807, 38.036026, 22.770864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853634, 38.228962, 22.569603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541284, 0.069431, 0.837969,
		0.439123, -0.873226, -0.211298,
		0.717066, 0.482343, -0.503152,
		36.068752, 38.373665, 22.418657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206772, 37.667297, 22.984207>,  <35.566807, 38.036026, 22.770864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206772, 37.667297, 22.984207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264954, 38.041592, 22.855684>,  <36.299862, 38.266167, 22.778570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264954, 38.041592, 22.855684>,  <36.206772, 37.667297, 22.984207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264954, 38.041592, 22.855684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613831, 0.169348, 0.771059,
		0.775922, -0.309382, -0.549753,
		0.145453, 0.935737, -0.321309,
		36.308590, 38.322311, 22.759291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934612, 37.674068, 23.122328>,  <36.206772, 37.667297, 22.984207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934612, 37.674068, 23.122328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834217, 38.058239, 23.074020>,  <36.773979, 38.288742, 23.045036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834217, 38.058239, 23.074020>,  <36.934612, 37.674068, 23.122328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834217, 38.058239, 23.074020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525570, 0.239981, 0.816202,
		0.812883, 0.141388, -0.565004,
		-0.250991, 0.960426, -0.120767,
		36.758919, 38.346367, 23.037790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510017, 38.088161, 23.173588>,  <36.934612, 37.674068, 23.122328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510017, 38.088161, 23.173588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218269, 38.351135, 23.249281>,  <37.043221, 38.508919, 23.294697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218269, 38.351135, 23.249281>,  <37.510017, 38.088161, 23.173588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218269, 38.351135, 23.249281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427616, 0.222193, 0.876228,
		0.534013, 0.720010, -0.443188,
		-0.729366, 0.657432, 0.189233,
		36.999458, 38.548367, 23.306051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859371, 38.654881, 23.446980>,  <37.510017, 38.088161, 23.173588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859371, 38.654881, 23.446980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477966, 38.680786, 23.564701>,  <37.249123, 38.696331, 23.635334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477966, 38.680786, 23.564701>,  <37.859371, 38.654881, 23.446980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477966, 38.680786, 23.564701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301346, 0.202141, 0.931842,
		0.000858, 0.977213, -0.212260,
		-0.953514, 0.064764, 0.294306,
		37.191914, 38.700214, 23.652992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713955, 39.355312, 23.747494>,  <37.859371, 38.654881, 23.446980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713955, 39.355312, 23.747494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435398, 39.109894, 23.896406>,  <37.268265, 38.962643, 23.985754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435398, 39.109894, 23.896406>,  <37.713955, 39.355312, 23.747494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435398, 39.109894, 23.896406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180747, 0.352076, 0.918353,
		-0.694527, 0.706823, -0.134286,
		-0.696393, -0.613550, 0.372282,
		37.226479, 38.925827, 24.008091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314651, 39.754993, 24.351265>,  <37.713955, 39.355312, 23.747494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314651, 39.754993, 24.351265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252083, 39.363750, 24.406153>,  <37.214542, 39.129005, 24.439085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252083, 39.363750, 24.406153>,  <37.314651, 39.754993, 24.351265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252083, 39.363750, 24.406153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034031, 0.133512, 0.990463,
		-0.987103, 0.159602, 0.012401,
		-0.156424, -0.978111, 0.137222,
		37.205154, 39.070316, 24.447319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991497, 39.715065, 25.015087>,  <37.314651, 39.754993, 24.351265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991497, 39.715065, 25.015087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120869, 39.342438, 24.948654>,  <37.198490, 39.118862, 24.908794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120869, 39.342438, 24.948654>,  <36.991497, 39.715065, 25.015087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120869, 39.342438, 24.948654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065735, -0.152974, 0.986042,
		-0.943967, -0.329830, 0.011761,
		0.323428, -0.931564, -0.166083,
		37.217896, 39.062969, 24.898829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560081, 39.268646, 25.407335>,  <36.991497, 39.715065, 25.015087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560081, 39.268646, 25.407335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900738, 39.067463, 25.348341>,  <37.105129, 38.946754, 25.312944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900738, 39.067463, 25.348341>,  <36.560081, 39.268646, 25.407335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900738, 39.067463, 25.348341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003318, -0.276210, 0.961092,
		-0.524123, -0.818990, -0.233561,
		0.851636, -0.502955, -0.147486,
		37.156227, 38.916576, 25.304096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496906, 38.717560, 25.877609>,  <36.560081, 39.268646, 25.407335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496906, 38.717560, 25.877609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880245, 38.743401, 25.766329>,  <37.110249, 38.758904, 25.699560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880245, 38.743401, 25.766329>,  <36.496906, 38.717560, 25.877609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880245, 38.743401, 25.766329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285602, -0.216194, 0.933644,
		0.000170, -0.974211, -0.225640,
		0.958348, 0.064602, -0.278200,
		37.167751, 38.762779, 25.682869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813404, 38.098351, 26.009586>,  <36.496906, 38.717560, 25.877609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813404, 38.098351, 26.009586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146652, 38.318466, 25.987343>,  <37.346600, 38.450535, 25.973997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146652, 38.318466, 25.987343>,  <36.813404, 38.098351, 26.009586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146652, 38.318466, 25.987343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220708, -0.238573, 0.945712,
		0.507149, -0.800164, -0.320214,
		0.833119, 0.550291, -0.055611,
		37.396587, 38.483555, 25.970659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387768, 37.672852, 26.247763>,  <36.813404, 38.098351, 26.009586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387768, 37.672852, 26.247763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460457, 38.063126, 26.296774>,  <37.504070, 38.297291, 26.326181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460457, 38.063126, 26.296774>,  <37.387768, 37.672852, 26.247763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460457, 38.063126, 26.296774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403005, -0.187552, 0.895774,
		0.896975, -0.113399, -0.427289,
		0.181719, 0.975687, 0.122529,
		37.514973, 38.355831, 26.333532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050720, 37.590626, 26.583841>,  <37.387768, 37.672852, 26.247763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050720, 37.590626, 26.583841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928768, 37.967178, 26.641600>,  <37.855598, 38.193111, 26.676254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928768, 37.967178, 26.641600>,  <38.050720, 37.590626, 26.583841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928768, 37.967178, 26.641600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441661, 0.005423, 0.897166,
		0.843791, 0.337303, -0.417425,
		-0.304881, 0.941381, 0.144397,
		37.837303, 38.249592, 26.684919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597378, 37.974869, 26.886562>,  <38.050720, 37.590626, 26.583841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597378, 37.974869, 26.886562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331394, 38.254395, 26.992004>,  <38.171803, 38.422108, 27.055269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331394, 38.254395, 26.992004>,  <38.597378, 37.974869, 26.886562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331394, 38.254395, 26.992004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432144, 0.072125, 0.898916,
		0.609160, 0.711661, -0.349947,
		-0.664963, 0.698811, 0.263604,
		38.131905, 38.464039, 27.071085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968559, 38.538300, 27.225662>,  <38.597378, 37.974869, 26.886562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968559, 38.538300, 27.225662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588284, 38.548954, 27.349260>,  <38.360119, 38.555347, 27.423420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588284, 38.548954, 27.349260>,  <38.968559, 38.538300, 27.225662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588284, 38.548954, 27.349260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307984, -0.036231, 0.950701,
		0.036522, 0.998988, 0.026240,
		-0.950690, 0.026640, 0.308996,
		38.303078, 38.556946, 27.441959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906452, 38.969322, 27.769363>,  <38.968559, 38.538300, 27.225662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906452, 38.969322, 27.769363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560936, 38.782005, 27.843731>,  <38.353626, 38.669617, 27.888351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560936, 38.782005, 27.843731>,  <38.906452, 38.969322, 27.769363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560936, 38.782005, 27.843731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212244, -0.003531, 0.977210,
		-0.456960, 0.883569, 0.102441,
		-0.863794, -0.468288, 0.185918,
		38.301796, 38.641518, 27.899506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686646, 39.267677, 28.414227>,  <38.906452, 38.969322, 27.769363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686646, 39.267677, 28.414227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491196, 38.923344, 28.357357>,  <38.373924, 38.716743, 28.323235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491196, 38.923344, 28.357357>,  <38.686646, 39.267677, 28.414227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491196, 38.923344, 28.357357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276121, -0.307149, 0.910723,
		-0.827648, 0.405746, 0.387775,
		-0.488627, -0.860831, -0.142176,
		38.344608, 38.665096, 28.314705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249359, 39.238857, 28.951704>,  <38.686646, 39.267677, 28.414227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249359, 39.238857, 28.951704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291279, 38.857151, 28.839706>,  <38.316429, 38.628128, 28.772509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291279, 38.857151, 28.839706>,  <38.249359, 39.238857, 28.951704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291279, 38.857151, 28.839706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205965, -0.254612, 0.944855,
		-0.972932, -0.156685, 0.169863,
		0.104795, -0.954265, -0.279992,
		38.322716, 38.570873, 28.755709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019081, 38.872486, 29.545443>,  <38.249359, 39.238857, 28.951704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019081, 38.872486, 29.545443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215981, 38.576363, 29.362301>,  <38.334122, 38.398689, 29.252417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215981, 38.576363, 29.362301>,  <38.019081, 38.872486, 29.545443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215981, 38.576363, 29.362301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312869, -0.340364, 0.886716,
		-0.812281, -0.579736, 0.064075,
		0.492252, -0.740310, -0.457853,
		38.363655, 38.354271, 29.224945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807167, 38.245159, 29.821507>,  <38.019081, 38.872486, 29.545443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807167, 38.245159, 29.821507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167992, 38.177761, 29.662558>,  <38.384487, 38.137321, 29.567188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167992, 38.177761, 29.662558>,  <37.807167, 38.245159, 29.821507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167992, 38.177761, 29.662558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282944, -0.464397, 0.839213,
		-0.325936, -0.869452, -0.371240,
		0.902058, -0.168489, -0.397370,
		38.438610, 38.127213, 29.543346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828033, 37.626896, 30.027588>,  <37.807167, 38.245159, 29.821507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828033, 37.626896, 30.027588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201725, 37.710617, 29.912060>,  <38.425938, 37.760849, 29.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201725, 37.710617, 29.912060>,  <37.828033, 37.626896, 30.027588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201725, 37.710617, 29.912060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356106, -0.593467, 0.721794,
		-0.020330, -0.777167, -0.628965,
		0.934225, 0.209304, -0.288819,
		38.481991, 37.773407, 29.825415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269173, 37.051327, 30.033142>,  <37.828033, 37.626896, 30.027588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269173, 37.051327, 30.033142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555424, 37.329285, 30.061420>,  <38.727173, 37.496059, 30.078388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555424, 37.329285, 30.061420>,  <38.269173, 37.051327, 30.033142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555424, 37.329285, 30.061420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345822, -0.440424, 0.828513,
		0.606869, -0.568455, -0.555489,
		0.715624, 0.694899, 0.070696,
		38.770111, 37.537754, 30.082628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929199, 36.656895, 30.197884>,  <38.269173, 37.051327, 30.033142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929199, 36.656895, 30.197884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978401, 37.034500, 30.320333>,  <39.007923, 37.261063, 30.393803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978401, 37.034500, 30.320333>,  <38.929199, 36.656895, 30.197884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978401, 37.034500, 30.320333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494219, -0.325765, 0.805993,
		0.860591, 0.052149, -0.506620,
		0.123007, 0.944011, 0.306123,
		39.015305, 37.317703, 30.412170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618725, 36.611980, 30.326868>,  <38.929199, 36.656895, 30.197884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618725, 36.611980, 30.326868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491348, 36.949928, 30.498819>,  <39.414921, 37.152695, 30.601990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491348, 36.949928, 30.498819>,  <39.618725, 36.611980, 30.326868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491348, 36.949928, 30.498819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446173, -0.266526, 0.854338,
		0.836375, 0.463857, -0.292084,
		-0.318443, 0.844867, 0.429876,
		39.395817, 37.203388, 30.627783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235664, 36.862896, 30.613026>,  <39.618725, 36.611980, 30.326868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235664, 36.862896, 30.613026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927734, 37.031609, 30.804640>,  <39.742977, 37.132835, 30.919609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927734, 37.031609, 30.804640>,  <40.235664, 36.862896, 30.613026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927734, 37.031609, 30.804640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410037, -0.248348, 0.877606,
		0.489122, 0.872025, 0.018240,
		-0.769824, 0.421777, 0.479035,
		39.696789, 37.158142, 30.948351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554230, 37.182983, 31.080383>,  <40.235664, 36.862896, 30.613026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554230, 37.182983, 31.080383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175167, 37.187031, 31.208033>,  <39.947727, 37.189461, 31.284622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175167, 37.187031, 31.208033>,  <40.554230, 37.182983, 31.080383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175167, 37.187031, 31.208033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315628, -0.121171, 0.941115,
		0.048191, 0.992580, 0.111635,
		-0.947659, 0.010118, 0.319125,
		39.890869, 37.190067, 31.303770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425823, 37.737015, 31.625954>,  <40.554230, 37.182983, 31.080383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425823, 37.737015, 31.625954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193024, 37.418213, 31.690529>,  <40.053345, 37.226933, 31.729275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193024, 37.418213, 31.690529>,  <40.425823, 37.737015, 31.625954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193024, 37.418213, 31.690529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192182, 0.058094, 0.979638,
		-0.790156, 0.601171, 0.119360,
		-0.581996, -0.797006, 0.161438,
		40.018425, 37.179111, 31.738960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272030, 37.866074, 32.257683>,  <40.425823, 37.737015, 31.625954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272030, 37.866074, 32.257683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134884, 37.492413, 32.218079>,  <40.052597, 37.268215, 32.194317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134884, 37.492413, 32.218079>,  <40.272030, 37.866074, 32.257683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134884, 37.492413, 32.218079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073560, -0.131777, 0.988547,
		-0.936500, 0.331657, 0.113898,
		-0.342867, -0.934151, -0.099012,
		40.032024, 37.212166, 32.188374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721081, 37.801300, 32.730007>,  <40.272030, 37.866074, 32.257683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721081, 37.801300, 32.730007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843273, 37.432377, 32.635319>,  <39.916588, 37.211025, 32.578506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843273, 37.432377, 32.635319>,  <39.721081, 37.801300, 32.730007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843273, 37.432377, 32.635319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120569, -0.209134, 0.970426,
		-0.944533, -0.324992, 0.047313,
		0.305485, -0.922303, -0.236718,
		39.934917, 37.155685, 32.564304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539669, 37.472591, 33.241982>,  <39.721081, 37.801300, 32.730007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539669, 37.472591, 33.241982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792263, 37.208862, 33.078754>,  <39.943821, 37.050625, 32.980816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792263, 37.208862, 33.078754>,  <39.539669, 37.472591, 33.241982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792263, 37.208862, 33.078754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170256, -0.395533, 0.902533,
		-0.756463, -0.639416, -0.137521,
		0.631488, -0.659319, -0.408071,
		39.981709, 37.011066, 32.956333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355511, 36.676266, 33.207897>,  <39.539669, 37.472591, 33.241982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355511, 36.676266, 33.207897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754856, 36.685032, 33.186760>,  <39.994465, 36.690292, 33.174076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754856, 36.685032, 33.186760>,  <39.355511, 36.676266, 33.207897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754856, 36.685032, 33.186760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055976, -0.565111, 0.823114,
		-0.011824, -0.824724, -0.565412,
		0.998362, 0.021917, -0.052847,
		40.054363, 36.691608, 33.170906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768467, 35.947002, 33.320099>,  <39.355511, 36.676266, 33.207897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768467, 35.947002, 33.320099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042450, 36.212673, 33.439903>,  <40.206841, 36.372078, 33.511784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042450, 36.212673, 33.439903>,  <39.768467, 35.947002, 33.320099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042450, 36.212673, 33.439903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103171, -0.495355, 0.862542,
		0.721245, -0.559901, -0.407819,
		0.684954, 0.664179, 0.299507,
		40.247936, 36.411926, 33.529755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291584, 35.604786, 33.654781>,  <39.768467, 35.947002, 33.320099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291584, 35.604786, 33.654781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386223, 35.982178, 33.747612>,  <40.443005, 36.208614, 33.803310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386223, 35.982178, 33.747612>,  <40.291584, 35.604786, 33.654781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386223, 35.982178, 33.747612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176330, -0.276591, 0.944672,
		0.955474, -0.182582, -0.231805,
		0.236596, 0.943483, 0.232081,
		40.457203, 36.265224, 33.817238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555061, 35.670429, 34.291409>,  <40.291584, 35.604786, 33.654781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555061, 35.670429, 34.291409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567081, 36.067066, 34.241051>,  <40.574295, 36.305046, 34.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567081, 36.067066, 34.241051>,  <40.555061, 35.670429, 34.291409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567081, 36.067066, 34.241051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492711, 0.094890, 0.865003,
		0.869673, -0.088028, -0.485715,
		0.030055, 0.991588, -0.125896,
		40.576099, 36.364544, 34.203281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254704, 35.757832, 34.438076>,  <40.555061, 35.670429, 34.291409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254704, 35.757832, 34.438076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034290, 36.083954, 34.509232>,  <40.902042, 36.279625, 34.551926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034290, 36.083954, 34.509232>,  <41.254704, 35.757832, 34.438076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034290, 36.083954, 34.509232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441888, 0.104256, 0.890991,
		0.707882, 0.569572, -0.417721,
		-0.551033, 0.815303, 0.177886,
		40.868980, 36.328545, 34.562599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752819, 36.271030, 34.673668>,  <41.254704, 35.757832, 34.438076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752819, 36.271030, 34.673668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378738, 36.338249, 34.798347>,  <41.154289, 36.378582, 34.873154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378738, 36.338249, 34.798347>,  <41.752819, 36.271030, 34.673668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378738, 36.338249, 34.798347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323967, 0.050663, 0.944711,
		0.142966, 0.984476, -0.101822,
		-0.935204, 0.168049, 0.311695,
		41.098179, 36.388664, 34.891857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649334, 36.923763, 35.015549>,  <41.752819, 36.271030, 34.673668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649334, 36.923763, 35.015549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410488, 36.644859, 35.174183>,  <41.267181, 36.477516, 35.269363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410488, 36.644859, 35.174183>,  <41.649334, 36.923763, 35.015549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410488, 36.644859, 35.174183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420949, 0.148480, 0.894850,
		-0.682826, 0.701274, 0.204850,
		-0.597119, -0.697258, 0.396587,
		41.231354, 36.435680, 35.293159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299080, 37.103912, 35.593636>,  <41.649334, 36.923763, 35.015549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299080, 37.103912, 35.593636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332279, 36.708530, 35.644329>,  <41.352200, 36.471302, 35.674744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332279, 36.708530, 35.644329>,  <41.299080, 37.103912, 35.593636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332279, 36.708530, 35.644329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361748, 0.148378, 0.920392,
		-0.928574, -0.030545, 0.369888,
		0.082997, -0.988459, 0.126730,
		41.357178, 36.411991, 35.682346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950211, 36.973274, 36.229652>,  <41.299080, 37.103912, 35.593636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950211, 36.973274, 36.229652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211929, 36.674664, 36.181335>,  <41.368961, 36.495495, 36.152348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211929, 36.674664, 36.181335>,  <40.950211, 36.973274, 36.229652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211929, 36.674664, 36.181335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151424, -0.027158, 0.988096,
		-0.740923, -0.664798, 0.095273,
		0.654297, -0.746529, -0.120788,
		41.408218, 36.450706, 36.145100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796909, 36.388248, 36.647552>,  <40.950211, 36.973274, 36.229652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796909, 36.388248, 36.647552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191929, 36.392578, 36.584774>,  <41.428940, 36.395176, 36.547108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191929, 36.392578, 36.584774>,  <40.796909, 36.388248, 36.647552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191929, 36.392578, 36.584774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156206, -0.185892, 0.970074,
		-0.018668, -0.982510, -0.185269,
		0.987548, 0.010830, -0.156944,
		41.488194, 36.395828, 36.537689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023232, 35.986317, 37.243073>,  <40.796909, 36.388248, 36.647552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023232, 35.986317, 37.243073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343685, 36.079430, 37.022530>,  <41.535957, 36.135296, 36.890205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343685, 36.079430, 37.022530>,  <41.023232, 35.986317, 37.243073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343685, 36.079430, 37.022530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587038, -0.126350, 0.799638,
		0.116477, -0.964287, -0.237876,
		0.801136, 0.232782, -0.551356,
		41.584026, 36.149265, 36.857124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573074, 35.554646, 37.499981>,  <41.023232, 35.986317, 37.243073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573074, 35.554646, 37.499981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749607, 35.862019, 37.314625>,  <41.855526, 36.046444, 37.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749607, 35.862019, 37.314625>,  <41.573074, 35.554646, 37.499981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749607, 35.862019, 37.314625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681399, 0.049033, 0.730268,
		0.583886, -0.638045, -0.501972,
		0.441331, 0.768436, -0.463393,
		41.882008, 36.092548, 37.175606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200874, 35.338539, 37.779819>,  <41.573074, 35.554646, 37.499981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200874, 35.338539, 37.779819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231133, 35.712353, 37.640724>,  <42.249287, 35.936642, 37.557266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231133, 35.712353, 37.640724>,  <42.200874, 35.338539, 37.779819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231133, 35.712353, 37.640724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589492, 0.239356, 0.771497,
		0.804225, -0.263348, -0.532795,
		0.075644, 0.934535, -0.347738,
		42.253826, 35.992714, 37.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914127, 35.450947, 37.482410>,  <42.200874, 35.338539, 37.779819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914127, 35.450947, 37.482410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705688, 35.761341, 37.624565>,  <42.580627, 35.947578, 37.709858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705688, 35.761341, 37.624565>,  <42.914127, 35.450947, 37.482410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705688, 35.761341, 37.624565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696720, 0.146228, 0.702281,
		0.492994, 0.613562, -0.616846,
		-0.521093, 0.775989, 0.355391,
		42.549362, 35.994137, 37.731182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377106, 35.504459, 37.992111>,  <42.914127, 35.450947, 37.482410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377106, 35.504459, 37.992111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140957, 35.827118, 38.003315>,  <42.999268, 36.020714, 38.010036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140957, 35.827118, 38.003315>,  <43.377106, 35.504459, 37.992111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140957, 35.827118, 38.003315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450737, 0.300706, 0.840483,
		0.669549, 0.508822, -0.541113,
		-0.590372, 0.806645, 0.028008,
		42.963844, 36.069111, 38.011719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771152, 36.164673, 38.145935>,  <43.377106, 35.504459, 37.992111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771152, 36.164673, 38.145935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398350, 36.247620, 38.264839>,  <43.174667, 36.297386, 38.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398350, 36.247620, 38.264839>,  <43.771152, 36.164673, 38.145935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398350, 36.247620, 38.264839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342463, 0.235289, 0.909592,
		0.118677, 0.949546, -0.290307,
		-0.932006, 0.207367, 0.297261,
		43.118748, 36.309830, 38.354019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769283, 36.835941, 38.401134>,  <43.771152, 36.164673, 38.145935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769283, 36.835941, 38.401134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474461, 36.650425, 38.597763>,  <43.297565, 36.539116, 38.715740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474461, 36.650425, 38.597763>,  <43.769283, 36.835941, 38.401134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474461, 36.650425, 38.597763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438658, 0.225022, 0.870026,
		-0.514126, 0.856891, 0.037593,
		-0.737058, -0.463793, 0.491571,
		43.253342, 36.511288, 38.745235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737202, 37.216827, 38.979527>,  <43.769283, 36.835941, 38.401134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737202, 37.216827, 38.979527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539875, 36.875786, 39.048477>,  <43.421478, 36.671162, 39.089848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539875, 36.875786, 39.048477>,  <43.737202, 37.216827, 38.979527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539875, 36.875786, 39.048477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217755, 0.070808, 0.973431,
		-0.842152, 0.517746, 0.150727,
		-0.493317, -0.852599, 0.172373,
		43.391880, 36.620007, 39.100189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299332, 37.279404, 39.611340>,  <43.737202, 37.216827, 38.979527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299332, 37.279404, 39.611340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370689, 36.891411, 39.545246>,  <43.413506, 36.658615, 39.505592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370689, 36.891411, 39.545246>,  <43.299332, 37.279404, 39.611340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370689, 36.891411, 39.545246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169433, -0.135134, 0.976233,
		-0.969261, -0.202153, 0.140240,
		0.178398, -0.969986, -0.165232,
		43.424210, 36.600414, 39.495678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827724, 37.657383, 40.023281>,  <43.299332, 37.279404, 39.611340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827724, 37.657383, 40.023281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741318, 37.341362, 40.252773>,  <43.689476, 37.151749, 40.390469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741318, 37.341362, 40.252773>,  <43.827724, 37.657383, 40.023281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741318, 37.341362, 40.252773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394824, -0.466736, -0.791373,
		0.893002, -0.397468, -0.211109,
		-0.216014, -0.790048, 0.573726,
		43.676514, 37.104347, 40.424892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965576, 36.999352, 39.720737>,  <43.827724, 37.657383, 40.023281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965576, 36.999352, 39.720737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683346, 36.936073, 39.997040>,  <43.514008, 36.898106, 40.162819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683346, 36.936073, 39.997040>,  <43.965576, 36.999352, 39.720737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683346, 36.936073, 39.997040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641425, -0.271787, -0.717430,
		0.301232, -0.949266, 0.090296,
		-0.705573, -0.158195, 0.690754,
		43.471672, 36.888615, 40.204266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981449, 36.259941, 39.883831>,  <43.965576, 36.999352, 39.720737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981449, 36.259941, 39.883831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637115, 36.456764, 39.935730>,  <43.430515, 36.574860, 39.966869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637115, 36.456764, 39.935730>,  <43.981449, 36.259941, 39.883831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637115, 36.456764, 39.935730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397108, -0.490124, -0.775941,
		-0.318219, -0.719482, 0.617319,
		-0.860838, 0.492061, 0.129746,
		43.378864, 36.604382, 39.974655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309868, 35.727924, 39.983177>,  <43.981449, 36.259941, 39.883831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309868, 35.727924, 39.983177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227333, 36.090839, 39.836613>,  <43.177814, 36.308586, 39.748672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227333, 36.090839, 39.836613>,  <43.309868, 35.727924, 39.983177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227333, 36.090839, 39.836613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436791, -0.420495, -0.795234,
		-0.875580, -0.004037, 0.483056,
		-0.206333, 0.907286, -0.366414,
		43.165432, 36.363026, 39.726688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765095, 35.717537, 39.480179>,  <43.309868, 35.727924, 39.983177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765095, 35.717537, 39.480179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847141, 36.101570, 39.404110>,  <42.896370, 36.331989, 39.358467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847141, 36.101570, 39.404110>,  <42.765095, 35.717537, 39.480179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847141, 36.101570, 39.404110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276387, -0.129574, -0.952272,
		-0.938902, 0.247890, 0.238776,
		0.205119, 0.960084, -0.190171,
		42.908676, 36.389595, 39.347057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150646, 36.063004, 39.262295>,  <42.765095, 35.717537, 39.480179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150646, 36.063004, 39.262295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484001, 36.210075, 39.097233>,  <42.684013, 36.298317, 38.998196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484001, 36.210075, 39.097233>,  <42.150646, 36.063004, 39.262295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484001, 36.210075, 39.097233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368844, -0.186051, -0.910681,
		-0.411611, 0.911153, -0.019437,
		0.833385, 0.367677, -0.412654,
		42.734016, 36.320377, 38.973438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937656, 36.580902, 38.741699>,  <42.150646, 36.063004, 39.262295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937656, 36.580902, 38.741699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309086, 36.486973, 38.626740>,  <42.531944, 36.430614, 38.557762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309086, 36.486973, 38.626740>,  <41.937656, 36.580902, 38.741699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309086, 36.486973, 38.626740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258428, 0.146691, -0.954828,
		0.266379, 0.960905, 0.075528,
		0.928578, -0.234828, -0.287400,
		42.587658, 36.416523, 38.540520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121700, 37.092293, 38.301804>,  <41.937656, 36.580902, 38.741699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121700, 37.092293, 38.301804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342899, 36.770233, 38.216072>,  <42.475620, 36.577000, 38.164631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342899, 36.770233, 38.216072>,  <42.121700, 37.092293, 38.301804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342899, 36.770233, 38.216072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178530, 0.136763, -0.974383,
		0.813832, 0.577095, -0.068113,
		0.552996, -0.805144, -0.214331,
		42.508797, 36.528690, 38.151772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819347, 36.952156, 37.587811>,  <42.121700, 37.092293, 38.301804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819347, 36.952156, 37.587811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161324, 36.747997, 37.624840>,  <42.366508, 36.625504, 37.647057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161324, 36.747997, 37.624840>,  <41.819347, 36.952156, 37.587811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161324, 36.747997, 37.624840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019674, -0.210246, -0.977450,
		0.518350, 0.833842, -0.189790,
		0.854942, -0.510396, 0.092576,
		42.417805, 36.594879, 37.652615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356770, 37.244205, 37.018654>,  <41.819347, 36.952156, 37.587811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356770, 37.244205, 37.018654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355019, 36.870869, 37.162239>,  <42.353966, 36.646866, 37.248390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355019, 36.870869, 37.162239>,  <42.356770, 37.244205, 37.018654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355019, 36.870869, 37.162239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307977, -0.340260, -0.888467,
		0.951384, -0.114445, -0.285957,
		-0.004381, -0.933341, 0.358964,
		42.353703, 36.590866, 37.269928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582451, 36.942123, 36.449661>,  <42.356770, 37.244205, 37.018654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582451, 36.942123, 36.449661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374626, 36.678917, 36.667679>,  <42.249931, 36.520992, 36.798489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374626, 36.678917, 36.667679>,  <42.582451, 36.942123, 36.449661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374626, 36.678917, 36.667679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409079, -0.368469, -0.834796,
		0.750139, -0.656695, -0.077737,
		-0.519563, -0.658014, 0.545043,
		42.218758, 36.481514, 36.831192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767605, 36.244381, 36.337997>,  <42.582451, 36.942123, 36.449661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767605, 36.244381, 36.337997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377293, 36.306343, 36.399769>,  <42.143105, 36.343521, 36.436832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377293, 36.306343, 36.399769>,  <42.767605, 36.244381, 36.337997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377293, 36.306343, 36.399769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202607, -0.373998, -0.905028,
		-0.082441, -0.914400, 0.396327,
		-0.975784, 0.154910, 0.154432,
		42.084557, 36.352818, 36.446098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390217, 35.714108, 35.976879>,  <42.767605, 36.244381, 36.337997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390217, 35.714108, 35.976879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097683, 35.963333, 36.087830>,  <41.922165, 36.112869, 36.154400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097683, 35.963333, 36.087830>,  <42.390217, 35.714108, 35.976879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097683, 35.963333, 36.087830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568536, -0.332300, -0.752558,
		-0.376729, -0.708065, 0.597260,
		-0.731329, 0.623074, 0.277373,
		41.878284, 36.150253, 36.171043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797600, 35.348770, 36.006741>,  <42.390217, 35.714108, 35.976879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797600, 35.348770, 36.006741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669075, 35.726395, 35.977051>,  <41.591961, 35.952969, 35.959236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669075, 35.726395, 35.977051>,  <41.797600, 35.348770, 36.006741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669075, 35.726395, 35.977051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624681, -0.270217, -0.732636,
		-0.711709, -0.189039, 0.676561,
		-0.321315, 0.944059, -0.074227,
		41.572681, 36.009613, 35.954784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127838, 35.172932, 35.937725>,  <41.797600, 35.348770, 36.006741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127838, 35.172932, 35.937725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194893, 35.560730, 35.866203>,  <41.235126, 35.793411, 35.823288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194893, 35.560730, 35.866203>,  <41.127838, 35.172932, 35.937725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194893, 35.560730, 35.866203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782469, 0.020516, -0.622351,
		-0.599700, 0.244239, 0.762042,
		0.167636, 0.969498, -0.178806,
		41.245182, 35.851578, 35.812561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519234, 35.485981, 35.871952>,  <41.127838, 35.172932, 35.937725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519234, 35.485981, 35.871952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732628, 35.783024, 35.710003>,  <40.860664, 35.961250, 35.612831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732628, 35.783024, 35.710003>,  <40.519234, 35.485981, 35.871952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732628, 35.783024, 35.710003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734858, 0.169946, -0.656584,
		-0.418777, 0.647806, 0.636375,
		0.533488, 0.742607, -0.404876,
		40.892673, 36.005806, 35.588539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981903, 35.988647, 35.713535>,  <40.519234, 35.485981, 35.871952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981903, 35.988647, 35.713535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318966, 36.081993, 35.519432>,  <40.521202, 36.138000, 35.402969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318966, 36.081993, 35.519432>,  <39.981903, 35.988647, 35.713535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318966, 36.081993, 35.519432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531690, 0.502967, -0.681417,
		0.085052, 0.832206, 0.547904,
		0.842658, 0.233360, -0.485254,
		40.571762, 36.152000, 35.373856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861721, 36.513062, 35.259251>,  <39.981903, 35.988647, 35.713535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861721, 36.513062, 35.259251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251019, 36.501377, 35.168095>,  <40.484596, 36.494366, 35.113400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251019, 36.501377, 35.168095>,  <39.861721, 36.513062, 35.259251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251019, 36.501377, 35.168095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195772, 0.413736, -0.889098,
		0.120261, 0.909928, 0.396948,
		0.973247, -0.029213, -0.227895,
		40.542992, 36.492615, 35.099728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029358, 37.135258, 34.998520>,  <39.861721, 36.513062, 35.259251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029358, 37.135258, 34.998520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313438, 36.894234, 34.852898>,  <40.483887, 36.749619, 34.765522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313438, 36.894234, 34.852898>,  <40.029358, 37.135258, 34.998520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313438, 36.894234, 34.852898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130814, 0.395171, -0.909246,
		0.691738, 0.693372, 0.201828,
		0.710202, -0.602558, -0.364057,
		40.526501, 36.713467, 34.743679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124264, 37.460815, 34.466938>,  <40.029358, 37.135258, 34.998520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124264, 37.460815, 34.466938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333187, 37.123924, 34.413498>,  <40.458542, 36.921791, 34.381432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333187, 37.123924, 34.413498>,  <40.124264, 37.460815, 34.466938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333187, 37.123924, 34.413498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041061, 0.131653, -0.990445,
		0.851770, 0.522799, 0.034180,
		0.522304, -0.842228, -0.133604,
		40.489880, 36.871254, 34.373417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608673, 37.525963, 34.047386>,  <40.124264, 37.460815, 34.466938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608673, 37.525963, 34.047386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582191, 37.131733, 33.985088>,  <40.566303, 36.895195, 33.947708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582191, 37.131733, 33.985088>,  <40.608673, 37.525963, 34.047386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582191, 37.131733, 33.985088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090632, 0.149505, -0.984598,
		0.993681, -0.079301, 0.079427,
		-0.066204, -0.985576, -0.155748,
		40.562328, 36.836060, 33.938366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107952, 37.348934, 33.490784>,  <40.608673, 37.525963, 34.047386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107952, 37.348934, 33.490784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840199, 37.053486, 33.522686>,  <40.679546, 36.876217, 33.541828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840199, 37.053486, 33.522686>,  <41.107952, 37.348934, 33.490784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840199, 37.053486, 33.522686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099138, -0.017589, -0.994918,
		0.736269, -0.673893, -0.061452,
		-0.669388, -0.738619, 0.079759,
		40.639381, 36.831902, 33.546612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331451, 36.766788, 33.028549>,  <41.107952, 37.348934, 33.490784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331451, 36.766788, 33.028549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937046, 36.754055, 33.093979>,  <40.700401, 36.746414, 33.133236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937046, 36.754055, 33.093979>,  <41.331451, 36.766788, 33.028549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937046, 36.754055, 33.093979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163318, -0.010496, -0.986518,
		0.033126, -0.999438, 0.005149,
		-0.986017, -0.031839, 0.163574,
		40.641239, 36.744507, 33.143051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969307, 36.285633, 32.591515>,  <41.331451, 36.766788, 33.028549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969307, 36.285633, 32.591515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670273, 36.538818, 32.671986>,  <40.490852, 36.690731, 32.720268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670273, 36.538818, 32.671986>,  <40.969307, 36.285633, 32.591515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670273, 36.538818, 32.671986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270899, -0.014033, -0.962506,
		-0.606408, -0.774054, 0.181960,
		-0.747585, 0.632965, 0.201181,
		40.445999, 36.728706, 32.732342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418022, 35.951630, 32.311691>,  <40.969307, 36.285633, 32.591515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418022, 35.951630, 32.311691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261871, 36.312359, 32.385792>,  <40.168179, 36.528797, 32.430252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261871, 36.312359, 32.385792>,  <40.418022, 35.951630, 32.311691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261871, 36.312359, 32.385792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391206, 0.019661, -0.920093,
		-0.833403, -0.431659, 0.345123,
		-0.390381, 0.901823, 0.185254,
		40.144756, 36.582905, 32.441368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049694, 35.286259, 32.491291>,  <40.418022, 35.951630, 32.311691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049694, 35.286259, 32.491291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047478, 34.901371, 32.382408>,  <40.046146, 34.670437, 32.317078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047478, 34.901371, 32.382408>,  <40.049694, 35.286259, 32.491291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047478, 34.901371, 32.382408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710964, -0.195218, 0.675589,
		-0.703207, -0.189784, 0.685188,
		-0.005545, -0.962222, -0.272208,
		40.045815, 34.612705, 32.300747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041195, 34.766281, 33.112484>,  <40.049694, 35.286259, 32.491291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041195, 34.766281, 33.112484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218697, 34.664577, 32.768757>,  <40.325199, 34.603554, 32.562519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218697, 34.664577, 32.768757>,  <40.041195, 34.766281, 33.112484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218697, 34.664577, 32.768757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802773, -0.313395, 0.507286,
		-0.398291, -0.914950, 0.065046,
		0.443756, -0.254264, -0.859319,
		40.351822, 34.588299, 32.510960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260906, 34.022392, 33.088337>,  <40.041195, 34.766281, 33.112484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260906, 34.022392, 33.088337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507317, 34.289078, 32.920525>,  <40.655163, 34.449089, 32.819836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507317, 34.289078, 32.920525>,  <40.260906, 34.022392, 33.088337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507317, 34.289078, 32.920525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657287, -0.141522, 0.740233,
		0.434149, -0.731757, -0.525402,
		0.616026, 0.666711, -0.419533,
		40.692123, 34.489090, 32.794666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908962, 33.900856, 33.343048>,  <40.260906, 34.022392, 33.088337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908962, 33.900856, 33.343048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999733, 34.244129, 33.158867>,  <41.054195, 34.450092, 33.048359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999733, 34.244129, 33.158867>,  <40.908962, 33.900856, 33.343048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999733, 34.244129, 33.158867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830665, 0.076273, 0.551524,
		0.508431, -0.507639, -0.695558,
		0.226922, 0.858187, -0.460458,
		41.067810, 34.501587, 33.020729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618729, 33.810349, 33.287312>,  <40.908962, 33.900856, 33.343048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618729, 33.810349, 33.287312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551186, 34.204094, 33.267223>,  <41.510662, 34.440342, 33.255169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551186, 34.204094, 33.267223>,  <41.618729, 33.810349, 33.287312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551186, 34.204094, 33.267223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756182, 0.162061, 0.633975,
		0.632199, 0.069072, -0.771721,
		-0.168856, 0.984360, -0.050224,
		41.500530, 34.499401, 33.252155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265213, 33.960236, 33.287525>,  <41.618729, 33.810349, 33.287312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265213, 33.960236, 33.287525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056293, 34.292664, 33.363968>,  <41.930943, 34.492123, 33.409836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056293, 34.292664, 33.363968>,  <42.265213, 33.960236, 33.287525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056293, 34.292664, 33.363968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714213, 0.303864, 0.630528,
		0.465943, 0.465817, -0.752271,
		-0.522299, 0.831072, 0.191110,
		41.899605, 34.541985, 33.421299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551178, 34.550770, 33.134224>,  <42.265213, 33.960236, 33.287525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551178, 34.550770, 33.134224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313953, 34.592659, 33.453552>,  <42.171619, 34.617794, 33.645149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313953, 34.592659, 33.453552>,  <42.551178, 34.550770, 33.134224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313953, 34.592659, 33.453552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792057, 0.254033, 0.555079,
		-0.144669, 0.961509, -0.233606,
		-0.593057, 0.104727, 0.798321,
		42.136036, 34.624077, 33.693050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608868, 35.257568, 33.337811>,  <42.551178, 34.550770, 33.134224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608868, 35.257568, 33.337811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499519, 35.032345, 33.649765>,  <42.433910, 34.897209, 33.836937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499519, 35.032345, 33.649765>,  <42.608868, 35.257568, 33.337811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499519, 35.032345, 33.649765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786349, 0.336146, 0.518326,
		-0.554007, 0.754961, 0.350870,
		-0.273373, -0.563062, 0.779890,
		42.417507, 34.863426, 33.883732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628677, 35.578373, 33.973045>,  <42.608868, 35.257568, 33.337811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628677, 35.578373, 33.973045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681087, 35.197357, 34.082951>,  <42.712536, 34.968746, 34.148891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681087, 35.197357, 34.082951>,  <42.628677, 35.578373, 33.973045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681087, 35.197357, 34.082951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823677, 0.258836, 0.504540,
		-0.551714, 0.160205, 0.818502,
		0.131028, -0.952543, 0.274760,
		42.720394, 34.911594, 34.165379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567612, 35.486229, 34.708916>,  <42.628677, 35.578373, 33.973045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567612, 35.486229, 34.708916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821491, 35.255753, 34.502941>,  <42.973820, 35.117466, 34.379356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821491, 35.255753, 34.502941>,  <42.567612, 35.486229, 34.708916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821491, 35.255753, 34.502941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754579, 0.318402, 0.573787,
		-0.166654, -0.752743, 0.636871,
		0.634695, -0.576193, -0.514941,
		43.011898, 35.082893, 34.348457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171608, 35.642212, 35.065903>,  <42.567612, 35.486229, 34.708916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171608, 35.642212, 35.065903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322716, 35.381451, 34.802902>,  <43.413380, 35.224995, 34.645103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322716, 35.381451, 34.802902>,  <43.171608, 35.642212, 35.065903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322716, 35.381451, 34.802902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924924, 0.298297, 0.235657,
		0.042504, -0.697162, 0.715652,
		0.377769, -0.651908, -0.657501,
		43.436047, 35.185879, 34.605652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829762, 35.236938, 35.346272>,  <43.171608, 35.642212, 35.065903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829762, 35.236938, 35.346272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838409, 35.212776, 34.947094>,  <43.843597, 35.198280, 34.707588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838409, 35.212776, 34.947094>,  <43.829762, 35.236938, 35.346272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838409, 35.212776, 34.947094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991718, 0.127694, 0.013756,
		0.126599, -0.989973, 0.062667,
		0.021621, -0.060406, -0.997940,
		43.844894, 35.194653, 34.647713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274853, 34.674236, 35.019253>,  <43.829762, 35.236938, 35.346272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274853, 34.674236, 35.019253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261147, 34.990479, 34.774708>,  <44.252922, 35.180225, 34.627979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261147, 34.990479, 34.774708>,  <44.274853, 34.674236, 35.019253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261147, 34.990479, 34.774708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994162, 0.089590, 0.060130,
		0.102311, -0.605732, -0.789063,
		-0.034270, 0.790609, -0.611362,
		44.250866, 35.227661, 34.591301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588474, 34.570152, 34.325943>,  <44.274853, 34.674236, 35.019253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588474, 34.570152, 34.325943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639107, 34.940441, 34.468502>,  <44.669487, 35.162613, 34.554035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639107, 34.940441, 34.468502>,  <44.588474, 34.570152, 34.325943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639107, 34.940441, 34.468502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988021, -0.149630, 0.037753,
		0.088276, 0.347347, -0.933573,
		0.126577, 0.925722, 0.356394,
		44.677078, 35.218159, 34.575420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203754, 34.684429, 34.070469>,  <44.588474, 34.570152, 34.325943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203754, 34.684429, 34.070469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125214, 34.899250, 34.398621>,  <45.078091, 35.028141, 34.595512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125214, 34.899250, 34.398621>,  <45.203754, 34.684429, 34.070469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125214, 34.899250, 34.398621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954845, -0.085532, 0.284526,
		0.222974, 0.839201, -0.496009,
		-0.196349, 0.537053, 0.820378,
		45.066307, 35.060368, 34.644733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591740, 35.448860, 34.052441>,  <45.203754, 34.684429, 34.070469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591740, 35.448860, 34.052441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557945, 35.263168, 34.405113>,  <45.537670, 35.151752, 34.616714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557945, 35.263168, 34.405113>,  <45.591740, 35.448860, 34.052441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557945, 35.263168, 34.405113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995554, -0.076323, 0.055207,
		0.041664, 0.882421, 0.468612,
		-0.084482, -0.464228, 0.881677,
		45.532600, 35.123901, 34.669617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987320, 35.841274, 34.666489>,  <45.591740, 35.448860, 34.052441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987320, 35.841274, 34.666489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968414, 35.448284, 34.738605>,  <45.957069, 35.212490, 34.781876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968414, 35.448284, 34.738605>,  <45.987320, 35.841274, 34.666489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968414, 35.448284, 34.738605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955370, 0.008230, 0.295297,
		-0.291606, 0.186204, 0.938240,
		-0.047264, -0.982477, 0.180294,
		45.954235, 35.153542, 34.792694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.123672, 35.628036, 35.368622>,  <45.987320, 35.841274, 34.666489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.123672, 35.628036, 35.368622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242226, 35.385292, 35.073631>,  <46.313358, 35.239647, 34.896637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242226, 35.385292, 35.073631>,  <46.123672, 35.628036, 35.368622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242226, 35.385292, 35.073631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938050, 0.330091, 0.105369,
		0.179491, -0.723023, 0.667098,
		0.296387, -0.606859, -0.737480,
		46.331142, 35.203236, 34.852386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698292, 35.398468, 35.712456>,  <46.123672, 35.628036, 35.368622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698292, 35.398468, 35.712456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751186, 35.354370, 35.318428>,  <46.782925, 35.327911, 35.082012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751186, 35.354370, 35.318428>,  <46.698292, 35.398468, 35.712456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751186, 35.354370, 35.318428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945360, 0.312809, 0.091901,
		0.298006, -0.943396, 0.145589,
		0.132240, -0.110247, -0.985068,
		46.790859, 35.321297, 35.022907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411335, 35.053894, 35.591660>,  <46.698292, 35.398468, 35.712456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411335, 35.053894, 35.591660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296486, 35.260414, 35.268921>,  <47.227577, 35.384327, 35.075279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296486, 35.260414, 35.268921>,  <47.411335, 35.053894, 35.591660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296486, 35.260414, 35.268921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915935, 0.394542, -0.073480,
		0.280396, -0.760113, -0.586179,
		-0.287126, 0.516299, -0.806842,
		47.210350, 35.415302, 35.026867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.986534, 35.037258, 35.149395>,  <47.411335, 35.053894, 35.591660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.986534, 35.037258, 35.149395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766811, 35.352444, 35.038128>,  <47.634979, 35.541557, 34.971367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766811, 35.352444, 35.038128>,  <47.986534, 35.037258, 35.149395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766811, 35.352444, 35.038128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831577, 0.548187, -0.089284,
		0.082134, -0.280360, -0.956375,
		-0.549303, 0.787966, -0.278166,
		47.602020, 35.588833, 34.954678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.804134, 35.223972, 25.513617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.563900, 35.480270, 25.704924>,  <33.419758, 35.634048, 25.819708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.563900, 35.480270, 25.704924>,  <33.804134, 35.223972, 25.513617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563900, 35.480270, 25.704924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461211, -0.210995, 0.861838,
		0.653133, 0.738190, -0.168799,
		-0.600585, 0.640747, 0.478270,
		33.383724, 35.672493, 25.848404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217697, 35.679768, 25.928633>,  <33.804134, 35.223972, 25.513617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217697, 35.679768, 25.928633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870171, 35.721691, 26.122200>,  <33.661655, 35.746845, 26.238340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870171, 35.721691, 26.122200>,  <34.217697, 35.679768, 25.928633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870171, 35.721691, 26.122200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478270, -0.075294, 0.874979,
		0.128144, 0.991638, 0.015289,
		-0.868813, 0.104811, 0.483919,
		33.609528, 35.753136, 26.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323814, 36.206863, 26.517933>,  <34.217697, 35.679768, 25.928633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323814, 36.206863, 26.517933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984760, 36.022808, 26.623600>,  <33.781326, 35.912376, 26.687000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984760, 36.022808, 26.623600>,  <34.323814, 36.206863, 26.517933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984760, 36.022808, 26.623600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328850, -0.064893, 0.942150,
		-0.416377, 0.885473, 0.206322,
		-0.847637, -0.460138, 0.264168,
		33.730469, 35.884766, 26.702850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978374, 36.571430, 27.053659>,  <34.323814, 36.206863, 26.517933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978374, 36.571430, 27.053659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859734, 36.190376, 27.080536>,  <33.788548, 35.961742, 27.096663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859734, 36.190376, 27.080536>,  <33.978374, 36.571430, 27.053659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859734, 36.190376, 27.080536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204249, 0.005452, 0.978904,
		-0.932904, 0.304067, 0.192958,
		-0.296601, -0.952635, 0.067191,
		33.770752, 35.904587, 27.100693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819332, 36.477661, 27.754053>,  <33.978374, 36.571430, 27.053659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819332, 36.477661, 27.754053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779202, 36.095139, 27.644213>,  <33.755123, 35.865623, 27.578308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779202, 36.095139, 27.644213>,  <33.819332, 36.477661, 27.754053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779202, 36.095139, 27.644213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275930, -0.291908, 0.915780,
		-0.955928, 0.016104, 0.293160,
		-0.100324, -0.956311, -0.274599,
		33.749104, 35.808247, 27.561832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344738, 36.176174, 28.224804>,  <33.819332, 36.477661, 27.754053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344738, 36.176174, 28.224804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570255, 35.870613, 28.099213>,  <33.705566, 35.687275, 28.023857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570255, 35.870613, 28.099213>,  <33.344738, 36.176174, 28.224804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570255, 35.870613, 28.099213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249731, -0.204689, 0.946434,
		-0.787255, -0.612004, 0.075369,
		0.563794, -0.763907, -0.313979,
		33.739395, 35.641441, 28.005018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204010, 35.578033, 28.642788>,  <33.344738, 36.176174, 28.224804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204010, 35.578033, 28.642788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570164, 35.490761, 28.507458>,  <33.789856, 35.438396, 28.426260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570164, 35.490761, 28.507458>,  <33.204010, 35.578033, 28.642788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570164, 35.490761, 28.507458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272282, -0.283489, 0.919509,
		-0.296535, -0.933825, -0.200094,
		0.915385, -0.218185, -0.338329,
		33.844780, 35.425308, 28.405960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459209, 35.071629, 29.159489>,  <33.204010, 35.578033, 28.642788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459209, 35.071629, 29.159489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788826, 35.197376, 28.970968>,  <33.986595, 35.272827, 28.857857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788826, 35.197376, 28.970968>,  <33.459209, 35.071629, 29.159489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788826, 35.197376, 28.970968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533626, -0.151339, 0.832070,
		0.190255, -0.937159, -0.292468,
		0.824043, 0.314373, -0.471299,
		34.036037, 35.291687, 28.829578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960644, 34.502243, 29.100183>,  <33.459209, 35.071629, 29.159489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960644, 34.502243, 29.100183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148010, 34.855621, 29.095844>,  <34.260429, 35.067646, 29.093241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148010, 34.855621, 29.095844>,  <33.960644, 34.502243, 29.100183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148010, 34.855621, 29.095844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396184, -0.199059, 0.896334,
		0.789699, -0.424155, -0.443247,
		0.468416, 0.883441, -0.010847,
		34.288536, 35.120655, 29.092590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647217, 34.415283, 29.410797>,  <33.960644, 34.502243, 29.100183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647217, 34.415283, 29.410797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648258, 34.815201, 29.418873>,  <34.648884, 35.055153, 29.423719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648258, 34.815201, 29.418873>,  <34.647217, 34.415283, 29.410797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648258, 34.815201, 29.418873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582512, -0.017928, 0.812624,
		0.812818, 0.009646, -0.582438,
		0.002604, 0.999793, 0.020191,
		34.649040, 35.115139, 29.424931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305458, 34.515770, 29.467796>,  <34.647217, 34.415283, 29.410797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305458, 34.515770, 29.467796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.130566, 34.855274, 29.586742>,  <35.025631, 35.058979, 29.658110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.130566, 34.855274, 29.586742>,  <35.305458, 34.515770, 29.467796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130566, 34.855274, 29.586742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612821, 0.039174, 0.789250,
		0.658237, 0.527321, -0.537268,
		-0.437235, 0.848763, 0.297367,
		34.999393, 35.109901, 29.675953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884426, 35.046108, 29.398331>,  <35.305458, 34.515770, 29.467796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884426, 35.046108, 29.398331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601032, 35.149345, 29.661064>,  <35.430996, 35.211288, 29.818705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601032, 35.149345, 29.661064>,  <35.884426, 35.046108, 29.398331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601032, 35.149345, 29.661064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671020, -0.041899, 0.740255,
		0.218578, 0.965210, -0.143503,
		-0.708489, 0.258097, 0.656833,
		35.388485, 35.226776, 29.858114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151878, 35.472740, 29.773935>,  <35.884426, 35.046108, 29.398331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151878, 35.472740, 29.773935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870197, 35.369026, 30.038321>,  <35.701191, 35.306797, 30.196953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870197, 35.369026, 30.038321>,  <36.151878, 35.472740, 29.773935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870197, 35.369026, 30.038321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668465, 0.071621, 0.740287,
		-0.239283, 0.963142, 0.122887,
		-0.704200, -0.259283, 0.660965,
		35.658936, 35.291241, 30.236610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003319, 36.143623, 30.176409>,  <36.151878, 35.472740, 29.773935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003319, 36.143623, 30.176409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910660, 35.798901, 30.356913>,  <35.855064, 35.592068, 30.465216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910660, 35.798901, 30.356913>,  <36.003319, 36.143623, 30.176409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910660, 35.798901, 30.356913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635678, 0.217044, 0.740814,
		-0.736379, 0.458463, 0.497551,
		-0.231645, -0.861802, 0.451262,
		35.841167, 35.540359, 30.492290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118412, 36.384239, 30.886391>,  <36.003319, 36.143623, 30.176409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118412, 36.384239, 30.886391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052986, 35.995792, 30.955868>,  <36.013729, 35.762722, 30.997555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052986, 35.995792, 30.955868>,  <36.118412, 36.384239, 30.886391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052986, 35.995792, 30.955868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595246, 0.043254, 0.802378,
		-0.786720, 0.234632, 0.570982,
		-0.163566, -0.971121, 0.173693,
		36.003918, 35.704456, 31.007977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988293, 36.347061, 31.578428>,  <36.118412, 36.384239, 30.886391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988293, 36.347061, 31.578428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114697, 35.989487, 31.451300>,  <36.190540, 35.774940, 31.375023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114697, 35.989487, 31.451300>,  <35.988293, 36.347061, 31.578428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114697, 35.989487, 31.451300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650158, -0.039924, 0.758749,
		-0.690964, -0.446409, 0.568584,
		0.316013, -0.893938, -0.317822,
		36.209499, 35.721306, 31.355953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962303, 35.859169, 32.152222>,  <35.988293, 36.347061, 31.578428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962303, 35.859169, 32.152222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218613, 35.727493, 31.874794>,  <36.372398, 35.648487, 31.708338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218613, 35.727493, 31.874794>,  <35.962303, 35.859169, 32.152222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218613, 35.727493, 31.874794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694939, -0.135250, 0.706235,
		-0.326289, -0.934528, 0.142100,
		0.640777, -0.329187, -0.693571,
		36.410847, 35.628738, 31.666723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529816, 35.460503, 32.510612>,  <35.962303, 35.859169, 32.152222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529816, 35.460503, 32.510612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724335, 35.448254, 32.161308>,  <36.841045, 35.440903, 31.951727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724335, 35.448254, 32.161308>,  <36.529816, 35.460503, 32.510612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724335, 35.448254, 32.161308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857001, -0.178282, 0.483493,
		-0.170492, -0.983503, -0.060455,
		0.486294, -0.030622, -0.873258,
		36.870224, 35.439064, 31.899330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029716, 34.848953, 32.500240>,  <36.529816, 35.460503, 32.510612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029716, 34.848953, 32.500240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201778, 35.068794, 32.213772>,  <37.305016, 35.200699, 32.041893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201778, 35.068794, 32.213772>,  <37.029716, 34.848953, 32.500240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201778, 35.068794, 32.213772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902506, -0.243229, 0.355418,
		0.021147, -0.799233, -0.600649,
		0.430157, 0.549605, -0.716170,
		37.330826, 35.233677, 31.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558346, 34.429020, 32.292889>,  <37.029716, 34.848953, 32.500240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558346, 34.429020, 32.292889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634274, 34.807255, 32.187187>,  <37.679829, 35.034195, 32.123768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634274, 34.807255, 32.187187>,  <37.558346, 34.429020, 32.292889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634274, 34.807255, 32.187187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927650, -0.084563, 0.363752,
		0.321614, -0.314178, -0.893228,
		0.189817, 0.945590, -0.264250,
		37.691219, 35.090931, 32.107914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266155, 34.404472, 32.009266>,  <37.558346, 34.429020, 32.292889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266155, 34.404472, 32.009266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192570, 34.784081, 32.111660>,  <38.148418, 35.011845, 32.173096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192570, 34.784081, 32.111660>,  <38.266155, 34.404472, 32.009266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192570, 34.784081, 32.111660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863386, 0.031534, 0.503558,
		0.469812, 0.313647, -0.825168,
		-0.183960, 0.949016, 0.255983,
		38.137383, 35.068787, 32.188454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937096, 34.737164, 31.905119>,  <38.266155, 34.404472, 32.009266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937096, 34.737164, 31.905119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703693, 34.961563, 32.139999>,  <38.563652, 35.096203, 32.280926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703693, 34.961563, 32.139999>,  <38.937096, 34.737164, 31.905119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703693, 34.961563, 32.139999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758357, 0.117708, 0.641124,
		0.290554, 0.819403, -0.494123,
		-0.583501, 0.561003, 0.587199,
		38.528645, 35.129864, 32.316158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311943, 35.014404, 31.533916>,  <38.937096, 34.737164, 31.905119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311943, 35.014404, 31.533916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662968, 34.851440, 31.432804>,  <38.873585, 34.753662, 31.372137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662968, 34.851440, 31.432804>,  <38.311943, 35.014404, 31.533916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662968, 34.851440, 31.432804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234250, 0.095688, -0.967456,
		0.418342, 0.908217, -0.011464,
		0.877563, -0.407412, -0.252780,
		38.926235, 34.729218, 31.356970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600422, 35.409531, 31.026949>,  <38.311943, 35.014404, 31.533916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600422, 35.409531, 31.026949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.797825, 35.063660, 30.989466>,  <38.916267, 34.856136, 30.966976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.797825, 35.063660, 30.989466>,  <38.600422, 35.409531, 31.026949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797825, 35.063660, 30.989466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199503, -0.007673, -0.979867,
		0.846550, 0.502268, -0.176292,
		0.493509, -0.864678, -0.093708,
		38.945877, 34.804256, 30.961353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047699, 35.521389, 30.474178>,  <38.600422, 35.409531, 31.026949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047699, 35.521389, 30.474178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036579, 35.122078, 30.494812>,  <39.029907, 34.882492, 30.507193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036579, 35.122078, 30.494812>,  <39.047699, 35.521389, 30.474178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036579, 35.122078, 30.494812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222078, -0.044147, -0.974029,
		0.974633, -0.038535, -0.220469,
		-0.027801, -0.998282, 0.051584,
		39.028240, 34.822594, 30.510288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380901, 35.324150, 29.883947>,  <39.047699, 35.521389, 30.474178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380901, 35.324150, 29.883947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173988, 35.002464, 30.001013>,  <39.049839, 34.809452, 30.071253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173988, 35.002464, 30.001013>,  <39.380901, 35.324150, 29.883947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173988, 35.002464, 30.001013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368838, -0.099085, -0.924197,
		0.772255, -0.586016, -0.245371,
		-0.517282, -0.804218, 0.292664,
		39.018803, 34.761200, 30.088812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652565, 34.800182, 29.431032>,  <39.380901, 35.324150, 29.883947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652565, 34.800182, 29.431032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287094, 34.701221, 29.560017>,  <39.067810, 34.641846, 29.637407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287094, 34.701221, 29.560017>,  <39.652565, 34.800182, 29.431032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287094, 34.701221, 29.560017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285177, -0.175068, -0.942351,
		0.289597, -0.952964, 0.089401,
		-0.913678, -0.247406, 0.322463,
		39.012989, 34.626999, 29.656755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485432, 34.136417, 29.202900>,  <39.652565, 34.800182, 29.431032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485432, 34.136417, 29.202900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136799, 34.314026, 29.286030>,  <38.927620, 34.420589, 29.335907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136799, 34.314026, 29.286030>,  <39.485432, 34.136417, 29.202900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136799, 34.314026, 29.286030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298053, -0.143348, -0.943725,
		-0.389244, -0.884475, 0.257281,
		-0.871581, 0.444022, 0.207823,
		38.875324, 34.447231, 29.348377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970715, 33.731594, 28.738060>,  <39.485432, 34.136417, 29.202900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970715, 33.731594, 28.738060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778271, 34.063221, 28.852030>,  <38.662804, 34.262196, 28.920412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778271, 34.063221, 28.852030>,  <38.970715, 33.731594, 28.738060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778271, 34.063221, 28.852030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436938, 0.054990, -0.897809,
		-0.760010, -0.556442, 0.335793,
		-0.481114, 0.829064, 0.284924,
		38.633938, 34.311939, 28.937508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356262, 33.629589, 28.547661>,  <38.970715, 33.731594, 28.738060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356262, 33.629589, 28.547661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382439, 34.027443, 28.579727>,  <38.398144, 34.266155, 28.598967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382439, 34.027443, 28.579727>,  <38.356262, 33.629589, 28.547661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382439, 34.027443, 28.579727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413354, 0.100142, -0.905047,
		-0.908216, 0.026091, 0.417688,
		0.065441, 0.994631, 0.080166,
		38.402069, 34.325832, 28.603777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698380, 33.920330, 28.315166>,  <38.356262, 33.629589, 28.547661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698380, 33.920330, 28.315166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950115, 34.230103, 28.289288>,  <38.101158, 34.415966, 28.273760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950115, 34.230103, 28.289288>,  <37.698380, 33.920330, 28.315166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950115, 34.230103, 28.289288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349357, 0.207574, -0.913708,
		-0.694174, 0.597637, 0.401188,
		0.629342, 0.774431, -0.064696,
		38.138916, 34.462433, 28.269878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250671, 34.462292, 27.958223>,  <37.698380, 33.920330, 28.315166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250671, 34.462292, 27.958223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625565, 34.600765, 27.941481>,  <37.850498, 34.683849, 27.931435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625565, 34.600765, 27.941481>,  <37.250671, 34.462292, 27.958223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625565, 34.600765, 27.941481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203152, 0.444504, -0.872437,
		-0.283421, 0.826178, 0.486931,
		0.937231, 0.346187, -0.041858,
		37.906734, 34.704620, 27.928923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227608, 35.201420, 27.982641>,  <37.250671, 34.462292, 27.958223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227608, 35.201420, 27.982641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569798, 35.090809, 27.807508>,  <37.775112, 35.024445, 27.702429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569798, 35.090809, 27.807508>,  <37.227608, 35.201420, 27.982641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569798, 35.090809, 27.807508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387839, 0.218105, -0.895550,
		0.343133, 0.935930, 0.079337,
		0.855476, -0.276523, -0.437830,
		37.826439, 35.007851, 27.676159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395229, 35.770393, 27.639585>,  <37.227608, 35.201420, 27.982641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395229, 35.770393, 27.639585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586288, 35.459236, 27.476254>,  <37.700924, 35.272541, 27.378254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586288, 35.459236, 27.476254>,  <37.395229, 35.770393, 27.639585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586288, 35.459236, 27.476254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380092, 0.236056, -0.894320,
		0.792075, 0.582373, -0.182920,
		0.477648, -0.777894, -0.408330,
		37.729584, 35.225868, 27.353754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696781, 36.036423, 27.116430>,  <37.395229, 35.770393, 27.639585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696781, 36.036423, 27.116430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695110, 35.647095, 27.024660>,  <37.694107, 35.413498, 26.969597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695110, 35.647095, 27.024660>,  <37.696781, 36.036423, 27.116430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695110, 35.647095, 27.024660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467635, 0.204697, -0.859894,
		0.883912, 0.103698, -0.456012,
		-0.004176, -0.973317, -0.229427,
		37.693859, 35.355099, 26.955832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963482, 35.967873, 26.392988>,  <37.696781, 36.036423, 27.116430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963482, 35.967873, 26.392988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776802, 35.620003, 26.457306>,  <37.664795, 35.411282, 26.495895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776802, 35.620003, 26.457306>,  <37.963482, 35.967873, 26.392988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776802, 35.620003, 26.457306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548425, 0.141945, -0.824064,
		0.693845, -0.472773, -0.543198,
		-0.466699, -0.869676, 0.160793,
		37.636791, 35.359100, 26.505545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044971, 35.528114, 25.788519>,  <37.963482, 35.967873, 26.392988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044971, 35.528114, 25.788519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713730, 35.402859, 25.974503>,  <37.514984, 35.327705, 26.086092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713730, 35.402859, 25.974503>,  <38.044971, 35.528114, 25.788519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713730, 35.402859, 25.974503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488042, -0.005326, -0.872804,
		0.275784, -0.949693, -0.148414,
		-0.828105, -0.313138, 0.464959,
		37.465298, 35.308918, 26.113991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630989, 35.182442, 25.296478>,  <38.044971, 35.528114, 25.788519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630989, 35.182442, 25.296478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363197, 35.232399, 25.589382>,  <37.202522, 35.262371, 25.765125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363197, 35.232399, 25.589382>,  <37.630989, 35.182442, 25.296478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363197, 35.232399, 25.589382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742457, -0.081064, -0.664971,
		-0.023687, -0.988854, 0.146994,
		-0.669475, 0.124888, 0.732261,
		37.162354, 35.269867, 25.809061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175297, 34.553173, 25.265291>,  <37.630989, 35.182442, 25.296478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175297, 34.553173, 25.265291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985306, 34.856419, 25.444025>,  <36.871311, 35.038364, 25.551266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985306, 34.856419, 25.444025>,  <37.175297, 34.553173, 25.265291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985306, 34.856419, 25.444025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674339, 0.012675, -0.738313,
		-0.565388, -0.652000, 0.505205,
		-0.474977, 0.758113, 0.446836,
		36.842812, 35.083851, 25.578075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521111, 34.250546, 25.324451>,  <37.175297, 34.553173, 25.265291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521111, 34.250546, 25.324451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477623, 34.647682, 25.344227>,  <36.451530, 34.885963, 25.356092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477623, 34.647682, 25.344227>,  <36.521111, 34.250546, 25.324451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477623, 34.647682, 25.344227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687377, -0.039156, -0.725245,
		-0.718118, -0.112831, 0.686714,
		-0.108719, 0.992842, 0.049439,
		36.445007, 34.945534, 25.359058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.343002, 34.653427, 25.723780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604927, 34.878040, 25.521431>,  <35.762081, 35.012810, 25.400021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604927, 34.878040, 25.521431>,  <35.343002, 34.653427, 25.723780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604927, 34.878040, 25.521431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694811, 0.183848, -0.695297,
		-0.297427, 0.806772, 0.510544,
		0.654809, 0.561532, -0.505873,
		35.801369, 35.046501, 25.369669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909985, 35.249535, 25.487240>,  <35.343002, 34.653427, 25.723780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909985, 35.249535, 25.487240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.237778, 35.283978, 25.260603>,  <35.434456, 35.304642, 25.124620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.237778, 35.283978, 25.260603>,  <34.909985, 35.249535, 25.487240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237778, 35.283978, 25.260603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559116, 0.337179, -0.757430,
		0.125822, 0.937495, 0.324458,
		0.819487, 0.086108, -0.566592,
		35.483624, 35.309811, 25.090626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871929, 35.898216, 25.093521>,  <34.909985, 35.249535, 25.487240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871929, 35.898216, 25.093521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150078, 35.695923, 24.889288>,  <35.316967, 35.574547, 24.766748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150078, 35.695923, 24.889288>,  <34.871929, 35.898216, 25.093521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150078, 35.695923, 24.889288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451805, 0.244858, -0.857856,
		0.558868, 0.827210, -0.058228,
		0.695369, -0.505736, -0.510581,
		35.358688, 35.544201, 24.736115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159847, 36.292950, 24.502340>,  <34.871929, 35.898216, 25.093521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159847, 36.292950, 24.502340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223091, 35.909496, 24.407671>,  <35.261040, 35.679424, 24.350870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223091, 35.909496, 24.407671>,  <35.159847, 36.292950, 24.502340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223091, 35.909496, 24.407671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416596, 0.152547, -0.896201,
		0.895237, 0.240297, -0.375245,
		0.158112, -0.958638, -0.236673,
		35.270523, 35.621906, 24.336670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353790, 36.344711, 23.806700>,  <35.159847, 36.292950, 24.502340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353790, 36.344711, 23.806700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238068, 35.966690, 23.867596>,  <35.168636, 35.739876, 23.904133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238068, 35.966690, 23.867596>,  <35.353790, 36.344711, 23.806700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238068, 35.966690, 23.867596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621023, 0.064276, -0.781152,
		0.728446, -0.320534, -0.605496,
		-0.289305, -0.945054, 0.152238,
		35.151276, 35.683174, 23.913267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452686, 36.023842, 23.169147>,  <35.353790, 36.344711, 23.806700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452686, 36.023842, 23.169147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186089, 35.806923, 23.373775>,  <35.026131, 35.676773, 23.496553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186089, 35.806923, 23.373775>,  <35.452686, 36.023842, 23.169147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186089, 35.806923, 23.373775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542151, -0.118448, -0.831891,
		0.511727, -0.831796, -0.215063,
		-0.666490, -0.542297, 0.511572,
		34.986141, 35.644234, 23.527246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194920, 35.637840, 22.603207>,  <35.452686, 36.023842, 23.169147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194920, 35.637840, 22.603207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950748, 35.584637, 22.915537>,  <34.804245, 35.552715, 23.102934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950748, 35.584637, 22.915537>,  <35.194920, 35.637840, 22.603207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950748, 35.584637, 22.915537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723778, -0.306775, -0.618089,
		0.321750, -0.942442, 0.090993,
		-0.610428, -0.133012, 0.780824,
		34.767620, 35.544735, 23.149784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882736, 34.970554, 22.427425>,  <35.194920, 35.637840, 22.603207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882736, 34.970554, 22.427425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653027, 35.168743, 22.688105>,  <34.515202, 35.287655, 22.844513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653027, 35.168743, 22.688105>,  <34.882736, 34.970554, 22.427425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653027, 35.168743, 22.688105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792186, -0.135516, -0.595044,
		-0.206512, -0.857988, 0.470330,
		-0.574277, 0.495472, 0.651700,
		34.480743, 35.317387, 22.883615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163467, 34.627438, 22.354473>,  <34.882736, 34.970554, 22.427425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163467, 34.627438, 22.354473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085857, 34.957726, 22.566336>,  <34.039291, 35.155899, 22.693453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085857, 34.957726, 22.566336>,  <34.163467, 34.627438, 22.354473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085857, 34.957726, 22.566336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846583, 0.131845, -0.515667,
		-0.495631, -0.548450, 0.673463,
		-0.194025, 0.825724, 0.529655,
		34.027649, 35.205444, 22.725233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552670, 34.586658, 22.379005>,  <34.163467, 34.627438, 22.354473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552670, 34.586658, 22.379005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630730, 34.973759, 22.442722>,  <33.677567, 35.206020, 22.480953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630730, 34.973759, 22.442722>,  <33.552670, 34.586658, 22.379005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630730, 34.973759, 22.442722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756474, 0.251898, -0.603569,
		-0.624229, -0.002713, 0.781236,
		0.195154, 0.967750, 0.159294,
		33.689278, 35.264084, 22.490511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987389, 34.811077, 22.395014>,  <33.552670, 34.586658, 22.379005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987389, 34.811077, 22.395014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.190121, 35.137955, 22.285242>,  <33.311760, 35.334084, 22.219379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.190121, 35.137955, 22.285242>,  <32.987389, 34.811077, 22.395014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190121, 35.137955, 22.285242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742050, 0.251561, -0.621353,
		-0.438731, 0.518562, 0.733900,
		0.506831, 0.817197, -0.274431,
		33.342171, 35.383114, 22.202913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444706, 35.303612, 22.361950>,  <32.987389, 34.811077, 22.395014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444706, 35.303612, 22.361950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753204, 35.406139, 22.128891>,  <32.938305, 35.467655, 21.989056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753204, 35.406139, 22.128891>,  <32.444706, 35.303612, 22.361950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753204, 35.406139, 22.128891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636364, 0.331732, -0.696415,
		0.014780, 0.907885, 0.418958,
		0.771247, 0.256317, -0.582649,
		32.984577, 35.483036, 21.954096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288879, 35.984726, 22.079676>,  <32.444706, 35.303612, 22.361950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288879, 35.984726, 22.079676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581905, 35.876934, 21.829641>,  <32.757721, 35.812260, 21.679621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581905, 35.876934, 21.829641>,  <32.288879, 35.984726, 22.079676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581905, 35.876934, 21.829641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442087, 0.509924, -0.737927,
		0.517602, 0.816920, 0.254419,
		0.732562, -0.269477, -0.625088,
		32.801674, 35.796089, 21.642115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549133, 36.647968, 21.863808>,  <32.288879, 35.984726, 22.079676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549133, 36.647968, 21.863808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622135, 36.359486, 21.596508>,  <32.665936, 36.186398, 21.436129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622135, 36.359486, 21.596508>,  <32.549133, 36.647968, 21.863808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622135, 36.359486, 21.596508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494478, 0.520128, -0.696389,
		0.849814, 0.457529, -0.261694,
		0.182503, -0.721204, -0.668250,
		32.676888, 36.143124, 21.396032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430576, 36.988682, 21.313192>,  <32.549133, 36.647968, 21.863808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430576, 36.988682, 21.313192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486389, 36.633797, 21.137291>,  <32.519875, 36.420864, 21.031750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486389, 36.633797, 21.137291>,  <32.430576, 36.988682, 21.313192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486389, 36.633797, 21.137291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442148, 0.341547, -0.829367,
		0.886023, 0.310156, -0.344625,
		0.139528, -0.887214, -0.439754,
		32.528248, 36.367634, 21.005365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879860, 37.085953, 20.720972>,  <32.430576, 36.988682, 21.313192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879860, 37.085953, 20.720972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679249, 36.743397, 20.671883>,  <32.558880, 36.537865, 20.642429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679249, 36.743397, 20.671883>,  <32.879860, 37.085953, 20.720972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679249, 36.743397, 20.671883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232619, 0.270118, -0.934304,
		0.833280, -0.440034, -0.334686,
		-0.501531, -0.856391, -0.122724,
		32.528790, 36.486481, 20.635065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042652, 36.899578, 20.104910>,  <32.879860, 37.085953, 20.720972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042652, 36.899578, 20.104910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695900, 36.718258, 20.187887>,  <32.487846, 36.609467, 20.237675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695900, 36.718258, 20.187887>,  <33.042652, 36.899578, 20.104910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695900, 36.718258, 20.187887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349829, 0.256703, -0.900957,
		0.355154, -0.853593, -0.381110,
		-0.866882, -0.453302, 0.207443,
		32.435833, 36.582268, 20.250120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771790, 36.631786, 19.496742>,  <33.042652, 36.899578, 20.104910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771790, 36.631786, 19.496742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446747, 36.620846, 19.729612>,  <32.251720, 36.614281, 19.869333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446747, 36.620846, 19.729612>,  <32.771790, 36.631786, 19.496742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446747, 36.620846, 19.729612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572385, 0.225601, -0.788340,
		-0.109774, -0.973836, -0.198982,
		-0.812604, -0.027355, 0.582174,
		32.202965, 36.612640, 19.904264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283680, 36.217392, 19.074341>,  <32.771790, 36.631786, 19.496742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283680, 36.217392, 19.074341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071514, 36.432232, 19.336697>,  <31.944216, 36.561134, 19.494110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071514, 36.432232, 19.336697>,  <32.283680, 36.217392, 19.074341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071514, 36.432232, 19.336697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641911, 0.250901, -0.724568,
		-0.553726, -0.805342, 0.211687,
		-0.530412, 0.537096, 0.655889,
		31.912390, 36.593361, 19.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567171, 36.162952, 18.847502>,  <32.283680, 36.217392, 19.074341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567171, 36.162952, 18.847502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582766, 36.473946, 19.098577>,  <31.592123, 36.660542, 19.249224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582766, 36.473946, 19.098577>,  <31.567171, 36.162952, 18.847502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582766, 36.473946, 19.098577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617758, 0.512492, -0.596429,
		-0.785402, -0.364507, 0.500279,
		0.038986, 0.777487, 0.627689,
		31.594461, 36.707191, 19.286884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857399, 36.316319, 19.045416>,  <31.567171, 36.162952, 18.847502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857399, 36.316319, 19.045416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097979, 36.634724, 19.072592>,  <31.242327, 36.825768, 19.088898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097979, 36.634724, 19.072592>,  <30.857399, 36.316319, 19.045416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097979, 36.634724, 19.072592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660942, 0.543550, -0.517406,
		-0.448793, 0.266288, 0.853039,
		0.601449, 0.796017, 0.067941,
		31.278414, 36.873528, 19.092974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291389, 36.851025, 18.928986>,  <30.857399, 36.316319, 19.045416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291389, 36.851025, 18.928986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628181, 37.065399, 18.953787>,  <30.830256, 37.194023, 18.968668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628181, 37.065399, 18.953787>,  <30.291389, 36.851025, 18.928986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628181, 37.065399, 18.953787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449235, 0.760090, -0.469522,
		-0.298762, 0.367473, 0.880741,
		0.841979, 0.535935, 0.062004,
		30.880775, 37.226181, 18.972387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854019, 37.431957, 18.744364>,  <30.291389, 36.851025, 18.928986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854019, 37.431957, 18.744364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245047, 37.485867, 18.679626>,  <30.479664, 37.518211, 18.640783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245047, 37.485867, 18.679626>,  <29.854019, 37.431957, 18.744364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245047, 37.485867, 18.679626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207151, 0.476539, -0.854400,
		-0.038026, 0.868762, 0.493768,
		0.977570, 0.134774, -0.161844,
		30.538317, 37.526299, 18.631073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512911, 37.348183, 19.507847>,  <29.854019, 37.431957, 18.744364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512911, 37.348183, 19.507847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.482500, 37.174206, 19.866743>,  <29.464254, 37.069820, 20.082081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.482500, 37.174206, 19.866743>,  <29.512911, 37.348183, 19.507847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482500, 37.174206, 19.866743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551215, -0.768179, -0.325673,
		0.830892, 0.469814, 0.298149,
		-0.076026, -0.434943, 0.897243,
		29.459692, 37.043724, 20.135916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688036, 38.054379, 19.544315>,  <29.512911, 37.348183, 19.507847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688036, 38.054379, 19.544315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.339941, 38.181896, 19.694546>,  <29.131084, 38.258408, 19.784685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.339941, 38.181896, 19.694546>,  <29.688036, 38.054379, 19.544315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339941, 38.181896, 19.694546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442251, 0.169678, 0.880695,
		0.217037, 0.932511, -0.288648,
		-0.870235, 0.318798, 0.375577,
		29.078871, 38.277534, 19.807219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666737, 38.757214, 19.708517>,  <29.688036, 38.054379, 19.544315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666737, 38.757214, 19.708517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406246, 38.572720, 19.949570>,  <29.249952, 38.462025, 20.094202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406246, 38.572720, 19.949570>,  <29.666737, 38.757214, 19.708517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406246, 38.572720, 19.949570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519273, 0.308258, 0.797078,
		-0.553405, 0.832010, 0.038760,
		-0.651228, -0.461234, 0.602631,
		29.210878, 38.434349, 20.130360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683920, 39.097507, 20.397388>,  <29.666737, 38.757214, 19.708517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683920, 39.097507, 20.397388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502981, 38.750526, 20.480247>,  <29.394417, 38.542339, 20.529963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502981, 38.750526, 20.480247>,  <29.683920, 39.097507, 20.397388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502981, 38.750526, 20.480247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479647, -0.040809, 0.876512,
		-0.751877, 0.495848, 0.434530,
		-0.452349, -0.867450, 0.207148,
		29.367277, 38.490292, 20.542393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454882, 39.197212, 21.032923>,  <29.683920, 39.097507, 20.397388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454882, 39.197212, 21.032923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465733, 38.798485, 21.002960>,  <29.472242, 38.559246, 20.984983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465733, 38.798485, 21.002960>,  <29.454882, 39.197212, 21.032923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465733, 38.798485, 21.002960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586121, -0.044838, 0.808982,
		-0.809769, -0.065849, 0.583041,
		0.027128, -0.996822, -0.074904,
		29.473871, 38.499439, 20.980490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191450, 38.899643, 21.652723>,  <29.454882, 39.197212, 21.032923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191450, 38.899643, 21.652723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416872, 38.623119, 21.471840>,  <29.552126, 38.457203, 21.363310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416872, 38.623119, 21.471840>,  <29.191450, 38.899643, 21.652723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416872, 38.623119, 21.471840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586766, -0.050335, 0.808191,
		-0.581474, -0.720801, 0.377272,
		0.563554, -0.691312, -0.452210,
		29.585938, 38.415726, 21.336178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179693, 38.360584, 22.126802>,  <29.191450, 38.899643, 21.652723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179693, 38.360584, 22.126802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486868, 38.266384, 21.888536>,  <29.671173, 38.209862, 21.745577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486868, 38.266384, 21.888536>,  <29.179693, 38.360584, 22.126802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486868, 38.266384, 21.888536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534089, -0.277934, 0.798437,
		-0.353590, -0.931284, -0.087655,
		0.767935, -0.235503, -0.595663,
		29.717249, 38.195732, 21.709837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316822, 37.655514, 22.384100>,  <29.179693, 38.360584, 22.126802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316822, 37.655514, 22.384100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.649143, 37.768162, 22.192076>,  <29.848536, 37.835751, 22.076862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.649143, 37.768162, 22.192076>,  <29.316822, 37.655514, 22.384100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649143, 37.768162, 22.192076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556383, -0.442262, 0.703450,
		-0.014208, -0.851525, -0.524120,
		0.830804, 0.281618, -0.480058,
		29.898384, 37.852646, 22.048058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825211, 37.136330, 22.384123>,  <29.316822, 37.655514, 22.384100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825211, 37.136330, 22.384123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056684, 37.453770, 22.308947>,  <30.195570, 37.644234, 22.263840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056684, 37.453770, 22.308947>,  <29.825211, 37.136330, 22.384123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056684, 37.453770, 22.308947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735160, -0.407837, 0.541487,
		0.353074, -0.451519, -0.819432,
		0.578686, 0.793599, -0.187943,
		30.230291, 37.691849, 22.252563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475321, 36.819439, 22.139938>,  <29.825211, 37.136330, 22.384123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475321, 36.819439, 22.139938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543261, 37.196724, 22.254137>,  <30.584024, 37.423096, 22.322657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543261, 37.196724, 22.254137>,  <30.475321, 36.819439, 22.139938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543261, 37.196724, 22.254137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858220, -0.283967, 0.427576,
		0.484365, 0.172393, -0.857713,
		0.169851, 0.943209, 0.285495,
		30.594215, 37.479687, 22.339785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182367, 37.020897, 22.027582>,  <30.475321, 36.819439, 22.139938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182367, 37.020897, 22.027582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071154, 37.288952, 22.302862>,  <31.004425, 37.449783, 22.468029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071154, 37.288952, 22.302862>,  <31.182367, 37.020897, 22.027582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071154, 37.288952, 22.302862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830058, -0.192953, 0.523233,
		0.483427, 0.716720, -0.502604,
		-0.278032, 0.670135, 0.688198,
		30.987743, 37.489994, 22.509321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847269, 37.290741, 22.197260>,  <31.182367, 37.020897, 22.027582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847269, 37.290741, 22.197260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584946, 37.389938, 22.482473>,  <31.427551, 37.449455, 22.653601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584946, 37.389938, 22.482473>,  <31.847269, 37.290741, 22.197260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584946, 37.389938, 22.482473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729646, -0.034170, 0.682971,
		0.193735, 0.968160, -0.158536,
		-0.655807, 0.247990, 0.713034,
		31.388203, 37.464336, 22.696384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188923, 37.873337, 22.624477>,  <31.847269, 37.290741, 22.197260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188923, 37.873337, 22.624477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907713, 37.714489, 22.860462>,  <31.738987, 37.619179, 23.002054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907713, 37.714489, 22.860462>,  <32.188923, 37.873337, 22.624477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907713, 37.714489, 22.860462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685818, -0.159057, 0.710179,
		-0.188187, 0.903879, 0.384172,
		-0.703021, -0.397119, 0.589964,
		31.696806, 37.595352, 23.037451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451931, 38.012215, 23.290634>,  <32.188923, 37.873337, 22.624477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451931, 38.012215, 23.290634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173588, 37.731911, 23.353529>,  <32.006584, 37.563728, 23.391266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173588, 37.731911, 23.353529>,  <32.451931, 38.012215, 23.290634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173588, 37.731911, 23.353529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581578, -0.421371, 0.695854,
		-0.421371, 0.575659, 0.700759,
		-0.695854, -0.700759, 0.157237,
		31.964832, 37.521683, 23.400700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424290, 38.043709, 23.969473>,  <32.451931, 38.012215, 23.290634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424290, 38.043709, 23.969473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301151, 37.683651, 23.846199>,  <32.227268, 37.467617, 23.772234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301151, 37.683651, 23.846199>,  <32.424290, 38.043709, 23.969473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301151, 37.683651, 23.846199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461336, -0.424513, 0.779076,
		-0.832106, 0.097659, 0.545951,
		-0.307847, -0.900140, -0.308186,
		32.208797, 37.413609, 23.753744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172634, 37.720985, 24.620525>,  <32.424290, 38.043709, 23.969473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172634, 37.720985, 24.620525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255150, 37.406570, 24.387428>,  <32.304661, 37.217922, 24.247570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255150, 37.406570, 24.387428>,  <32.172634, 37.720985, 24.620525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255150, 37.406570, 24.387428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397515, -0.476870, 0.783950,
		-0.894106, -0.393372, 0.214086,
		0.206292, -0.786036, -0.582744,
		32.317039, 37.170761, 24.212605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927904, 37.120789, 25.056353>,  <32.172634, 37.720985, 24.620525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927904, 37.120789, 25.056353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124737, 36.936760, 24.760733>,  <32.242836, 36.826344, 24.583361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124737, 36.936760, 24.760733>,  <31.927904, 37.120789, 25.056353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124737, 36.936760, 24.760733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455149, -0.587706, 0.668910,
		-0.742088, -0.665536, -0.079799,
		0.492082, -0.460069, -0.739048,
		32.272362, 36.798740, 24.539019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797762, 36.387333, 25.201786>,  <31.927904, 37.120789, 25.056353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797762, 36.387333, 25.201786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133461, 36.406639, 24.985144>,  <32.334881, 36.418221, 24.855158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133461, 36.406639, 24.985144>,  <31.797762, 36.387333, 25.201786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133461, 36.406639, 24.985144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449477, -0.622110, 0.641053,
		-0.306000, -0.781441, -0.543796,
		0.839246, 0.048261, -0.541606,
		32.385235, 36.421116, 24.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941282, 35.784023, 25.045736>,  <31.797762, 36.387333, 25.201786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941282, 35.784023, 25.045736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290096, 35.973980, 24.998344>,  <32.499386, 36.087955, 24.969910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290096, 35.973980, 24.998344>,  <31.941282, 35.784023, 25.045736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290096, 35.973980, 24.998344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424689, -0.613820, 0.665480,
		0.243306, -0.630638, -0.736952,
		0.872033, 0.474891, -0.118479,
		32.551704, 36.116447, 24.962801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456234, 35.331669, 25.026918>,  <31.941282, 35.784023, 25.045736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456234, 35.331669, 25.026918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676765, 35.650162, 25.126564>,  <32.809082, 35.841255, 25.186352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676765, 35.650162, 25.126564>,  <32.456234, 35.331669, 25.026918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676765, 35.650162, 25.126564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429484, -0.526859, 0.733460,
		0.715251, -0.297384, -0.632439,
		0.551325, 0.796230, 0.249115,
		32.842163, 35.889030, 25.201298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151676, 35.119492, 25.189375>,  <32.456234, 35.331669, 25.026918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151676, 35.119492, 25.189375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117912, 35.479183, 25.361078>,  <33.097652, 35.695000, 25.464100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117912, 35.479183, 25.361078>,  <33.151676, 35.119492, 25.189375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117912, 35.479183, 25.361078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410346, -0.361196, 0.837349,
		0.908015, 0.246828, -0.338505,
		-0.084414, 0.899229, 0.429256,
		33.092587, 35.748951, 25.489855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.437809, 34.243084, 26.849234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209038, 34.531910, 27.004932>,  <38.071774, 34.705208, 27.098352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209038, 34.531910, 27.004932>,  <38.437809, 34.243084, 26.849234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209038, 34.531910, 27.004932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598604, 0.042936, 0.799894,
		0.560865, 0.690489, -0.456789,
		-0.571930, 0.722068, 0.389248,
		38.037460, 34.748531, 27.121706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935593, 34.602249, 27.174498>,  <38.437809, 34.243084, 26.849234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935593, 34.602249, 27.174498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594391, 34.742004, 27.329575>,  <38.389668, 34.825859, 27.422621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594391, 34.742004, 27.329575>,  <38.935593, 34.602249, 27.174498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594391, 34.742004, 27.329575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445979, 0.102152, 0.889195,
		0.271070, 0.931393, -0.242956,
		-0.853009, 0.349387, 0.387692,
		38.338490, 34.846821, 27.445883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151157, 35.084053, 27.687941>,  <38.935593, 34.602249, 27.174498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151157, 35.084053, 27.687941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.778515, 34.969166, 27.777042>,  <38.554932, 34.900234, 27.830503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.778515, 34.969166, 27.777042>,  <39.151157, 35.084053, 27.687941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778515, 34.969166, 27.777042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228593, 0.013503, 0.973429,
		-0.282593, 0.957771, 0.053076,
		-0.931605, -0.287217, 0.222755,
		38.499035, 34.882999, 27.843868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916679, 35.516136, 28.325773>,  <39.151157, 35.084053, 27.687941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916679, 35.516136, 28.325773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695217, 35.184566, 28.293900>,  <38.562340, 34.985626, 28.274775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695217, 35.184566, 28.293900>,  <38.916679, 35.516136, 28.325773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695217, 35.184566, 28.293900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075361, -0.145172, 0.986532,
		-0.829330, 0.540193, 0.142843,
		-0.553655, -0.828925, -0.079686,
		38.529121, 34.935890, 28.269993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392017, 35.618279, 28.735069>,  <38.916679, 35.516136, 28.325773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392017, 35.618279, 28.735069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389034, 35.221222, 28.686714>,  <38.387245, 34.982990, 28.657701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389034, 35.221222, 28.686714>,  <38.392017, 35.618279, 28.735069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389034, 35.221222, 28.686714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027076, -0.121047, 0.992277,
		-0.999606, 0.004122, 0.027779,
		-0.007453, -0.992638, -0.120888,
		38.386799, 34.923431, 28.650448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939327, 35.376495, 29.222630>,  <38.392017, 35.618279, 28.735069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939327, 35.376495, 29.222630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.180584, 35.069260, 29.136599>,  <38.325336, 34.884918, 29.084980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.180584, 35.069260, 29.136599>,  <37.939327, 35.376495, 29.222630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180584, 35.069260, 29.136599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007302, -0.264319, 0.964408,
		-0.797600, -0.583246, -0.153814,
		0.603143, -0.768088, -0.215079,
		38.361526, 34.838833, 29.072075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730301, 34.818626, 29.767525>,  <37.939327, 35.376495, 29.222630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730301, 34.818626, 29.767525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079090, 34.691780, 29.618338>,  <38.288364, 34.615673, 29.528826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079090, 34.691780, 29.618338>,  <37.730301, 34.818626, 29.767525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079090, 34.691780, 29.618338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300877, -0.253847, 0.919258,
		-0.386184, -0.913784, -0.125936,
		0.871972, -0.317112, -0.372969,
		38.340683, 34.596645, 29.506447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892719, 34.293774, 30.249123>,  <37.730301, 34.818626, 29.767525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892719, 34.293774, 30.249123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229008, 34.353310, 30.040878>,  <38.430779, 34.389030, 29.915932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229008, 34.353310, 30.040878>,  <37.892719, 34.293774, 30.249123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229008, 34.353310, 30.040878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540948, -0.273118, 0.795476,
		-0.023788, -0.950396, -0.310132,
		0.840719, 0.148843, -0.520612,
		38.481224, 34.397961, 29.884695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194942, 33.739971, 30.450520>,  <37.892719, 34.293774, 30.249123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194942, 33.739971, 30.450520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462574, 34.013569, 30.334257>,  <38.623154, 34.177727, 30.264500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462574, 34.013569, 30.334257>,  <38.194942, 33.739971, 30.450520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462574, 34.013569, 30.334257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495291, -0.118799, 0.860566,
		0.554095, -0.719746, -0.418263,
		0.669078, 0.683997, -0.290658,
		38.663296, 34.218769, 30.247059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834518, 33.545929, 30.678993>,  <38.194942, 33.739971, 30.450520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834518, 33.545929, 30.678993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886353, 33.938354, 30.621403>,  <38.917454, 34.173809, 30.586849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886353, 33.938354, 30.621403>,  <38.834518, 33.545929, 30.678993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886353, 33.938354, 30.621403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447780, 0.071653, 0.891268,
		0.884704, -0.179960, -0.430015,
		0.129581, 0.981061, -0.143975,
		38.925228, 34.232674, 30.578211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534866, 33.664635, 30.741907>,  <38.834518, 33.545929, 30.678993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534866, 33.664635, 30.741907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360031, 34.018906, 30.804544>,  <39.255131, 34.231468, 30.842127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360031, 34.018906, 30.804544>,  <39.534866, 33.664635, 30.741907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360031, 34.018906, 30.804544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575470, 0.141589, 0.805473,
		0.691220, 0.442180, -0.571570,
		-0.437092, 0.885680, 0.156592,
		39.228905, 34.284611, 30.851522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027473, 34.109421, 30.954569>,  <39.534866, 33.664635, 30.741907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027473, 34.109421, 30.954569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.692226, 34.275806, 31.095724>,  <39.491077, 34.375637, 31.180418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.692226, 34.275806, 31.095724>,  <40.027473, 34.109421, 30.954569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692226, 34.275806, 31.095724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480784, 0.257691, 0.838118,
		0.257691, 0.872106, -0.415965,
		-0.838118, 0.415965, 0.352890,
		39.440792, 34.400597, 31.201591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162155, 34.826962, 31.127964>,  <40.027473, 34.109421, 30.954569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162155, 34.826962, 31.127964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865467, 34.679691, 31.352217>,  <39.687454, 34.591331, 31.486769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865467, 34.679691, 31.352217>,  <40.162155, 34.826962, 31.127964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865467, 34.679691, 31.352217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484005, 0.284848, 0.827406,
		-0.464322, 0.885048, -0.033080,
		-0.741717, -0.368172, 0.560629,
		39.642952, 34.569241, 31.520405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929390, 35.240768, 31.723833>,  <40.162155, 34.826962, 31.127964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929390, 35.240768, 31.723833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.868927, 34.864971, 31.846802>,  <39.832649, 34.639492, 31.920584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.868927, 34.864971, 31.846802>,  <39.929390, 35.240768, 31.723833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868927, 34.864971, 31.846802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433326, 0.216546, 0.874835,
		-0.888470, 0.265454, 0.374373,
		-0.151159, -0.939490, 0.307423,
		39.823578, 34.583122, 31.939028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710098, 35.976406, 32.091255>,  <39.929390, 35.240768, 31.723833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710098, 35.976406, 32.091255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.779530, 36.367069, 32.141876>,  <39.821190, 36.601467, 32.172249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.779530, 36.367069, 32.141876>,  <39.710098, 35.976406, 32.091255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779530, 36.367069, 32.141876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606065, 0.207226, -0.767947,
		-0.776245, 0.056598, 0.627886,
		0.173579, 0.976655, 0.126556,
		39.831604, 36.660065, 32.179844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015179, 36.431320, 32.024261>,  <39.710098, 35.976406, 32.091255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015179, 36.431320, 32.024261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328762, 36.663692, 31.936695>,  <39.516911, 36.803116, 31.884155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328762, 36.663692, 31.936695>,  <39.015179, 36.431320, 32.024261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328762, 36.663692, 31.936695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509499, 0.400581, -0.761542,
		-0.354710, 0.708556, 0.610024,
		0.783959, 0.580932, -0.218919,
		39.563950, 36.837971, 31.871019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654835, 36.948154, 31.645275>,  <39.015179, 36.431320, 32.024261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654835, 36.948154, 31.645275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.038406, 37.027378, 31.564049>,  <39.268547, 37.074913, 31.515312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.038406, 37.027378, 31.564049>,  <38.654835, 36.948154, 31.645275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038406, 37.027378, 31.564049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279897, 0.544466, -0.790705,
		-0.046043, 0.815065, 0.577538,
		0.958925, 0.198057, -0.203065,
		39.326084, 37.086796, 31.503130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597431, 37.673916, 31.506674>,  <38.654835, 36.948154, 31.645275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597431, 37.673916, 31.506674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929798, 37.507923, 31.358425>,  <39.129219, 37.408325, 31.269476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929798, 37.507923, 31.358425>,  <38.597431, 37.673916, 31.506674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929798, 37.507923, 31.358425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105673, 0.536283, -0.837397,
		0.546265, 0.734974, 0.401756,
		0.830920, -0.414986, -0.370620,
		39.179073, 37.383427, 31.247240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943653, 38.281261, 31.278938>,  <38.597431, 37.673916, 31.506674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943653, 38.281261, 31.278938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.072647, 37.956779, 31.083817>,  <39.150043, 37.762093, 30.966743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.072647, 37.956779, 31.083817>,  <38.943653, 38.281261, 31.278938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072647, 37.956779, 31.083817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293292, 0.404344, -0.866306,
		0.899990, 0.422443, -0.107523,
		0.322488, -0.811202, -0.487804,
		39.169395, 37.713417, 30.937475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123692, 38.561592, 30.650928>,  <38.943653, 38.281261, 31.278938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123692, 38.561592, 30.650928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122272, 38.167072, 30.584967>,  <39.121422, 37.930359, 30.545389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122272, 38.167072, 30.584967>,  <39.123692, 38.561592, 30.650928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122272, 38.167072, 30.584967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248913, 0.160585, -0.955120,
		0.968519, 0.037662, -0.246073,
		-0.003544, -0.986303, -0.164904,
		39.121208, 37.871181, 30.535496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640766, 38.423790, 30.225113>,  <39.123692, 38.561592, 30.650928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640766, 38.423790, 30.225113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342026, 38.160706, 30.185852>,  <39.162781, 38.002857, 30.162294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342026, 38.160706, 30.185852>,  <39.640766, 38.423790, 30.225113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342026, 38.160706, 30.185852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193260, 0.355903, -0.914321,
		0.636290, -0.663892, -0.392915,
		-0.746850, -0.657708, -0.098154,
		39.117970, 37.963394, 30.156406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746754, 38.053196, 29.629234>,  <39.640766, 38.423790, 30.225113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746754, 38.053196, 29.629234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360836, 37.969265, 29.692673>,  <39.129288, 37.918907, 29.730736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360836, 37.969265, 29.692673>,  <39.746754, 38.053196, 29.629234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360836, 37.969265, 29.692673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221058, 0.320145, -0.921217,
		0.142520, -0.923840, -0.355257,
		-0.964791, -0.209824, 0.158595,
		39.071400, 37.906319, 29.740252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555584, 37.770279, 29.027372>,  <39.746754, 38.053196, 29.629234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555584, 37.770279, 29.027372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202736, 37.886742, 29.175476>,  <38.991028, 37.956619, 29.264338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202736, 37.886742, 29.175476>,  <39.555584, 37.770279, 29.027372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202736, 37.886742, 29.175476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391792, -0.017207, -0.919893,
		-0.261466, -0.956519, 0.129253,
		-0.882119, 0.291161, 0.370258,
		38.938099, 37.974091, 29.286554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057743, 37.385544, 28.739697>,  <39.555584, 37.770279, 29.027372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057743, 37.385544, 28.739697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834270, 37.692200, 28.866274>,  <38.700188, 37.876194, 28.942221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834270, 37.692200, 28.866274>,  <39.057743, 37.385544, 28.739697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834270, 37.692200, 28.866274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498725, -0.005679, -0.866742,
		-0.662685, -0.642048, 0.385517,
		-0.558679, 0.766643, 0.316442,
		38.666668, 37.922192, 28.961206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436970, 37.332664, 28.425726>,  <39.057743, 37.385544, 28.739697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436970, 37.332664, 28.425726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.366585, 37.712421, 28.529793>,  <38.324352, 37.940277, 28.592232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.366585, 37.712421, 28.529793>,  <38.436970, 37.332664, 28.425726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366585, 37.712421, 28.529793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411694, 0.169090, -0.895498,
		-0.894172, -0.264686, 0.361105,
		-0.175967, 0.949394, 0.260166,
		38.313793, 37.997238, 28.607843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832745, 37.511108, 28.198025>,  <38.436970, 37.332664, 28.425726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832745, 37.511108, 28.198025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997063, 37.873692, 28.237177>,  <38.095654, 38.091240, 28.260668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997063, 37.873692, 28.237177>,  <37.832745, 37.511108, 28.198025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997063, 37.873692, 28.237177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377127, 0.266681, -0.886936,
		-0.830074, 0.327436, 0.451401,
		0.410795, 0.906458, 0.097880,
		38.120300, 38.145630, 28.266541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347481, 37.781509, 27.851305>,  <37.832745, 37.511108, 28.198025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347481, 37.781509, 27.851305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621548, 38.069397, 27.896111>,  <37.785988, 38.242130, 27.922995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621548, 38.069397, 27.896111>,  <37.347481, 37.781509, 27.851305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621548, 38.069397, 27.896111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323817, 0.438733, -0.838246,
		-0.652448, 0.538067, 0.533663,
		0.685168, 0.719720, 0.112015,
		37.827099, 38.285313, 27.929714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081787, 38.600433, 27.866592>,  <37.347481, 37.781509, 27.851305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081787, 38.600433, 27.866592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458805, 38.563759, 27.738094>,  <37.685017, 38.541756, 27.660995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458805, 38.563759, 27.738094>,  <37.081787, 38.600433, 27.866592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458805, 38.563759, 27.738094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253480, 0.430086, -0.866472,
		0.217608, 0.898120, 0.382136,
		0.942547, -0.091687, -0.321245,
		37.741570, 38.536251, 27.641720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969505, 39.230053, 28.294691>,  <37.081787, 38.600433, 27.866592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969505, 39.230053, 28.294691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817463, 39.598892, 28.323668>,  <36.726238, 39.820198, 28.341053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817463, 39.598892, 28.323668>,  <36.969505, 39.230053, 28.294691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817463, 39.598892, 28.323668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350609, -0.216114, 0.911245,
		0.855915, 0.320974, 0.405444,
		-0.380108, 0.922101, 0.072439,
		36.703430, 39.875523, 28.345400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283920, 39.523148, 28.875481>,  <36.969505, 39.230053, 28.294691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283920, 39.523148, 28.875481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946255, 39.731293, 28.823936>,  <36.743656, 39.856182, 28.793011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946255, 39.731293, 28.823936>,  <37.283920, 39.523148, 28.875481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946255, 39.731293, 28.823936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211066, -0.101664, 0.972171,
		0.492785, 0.847870, 0.195652,
		-0.844165, 0.520366, -0.128858,
		36.693005, 39.887402, 28.785278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287338, 39.970497, 29.448689>,  <37.283920, 39.523148, 28.875481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287338, 39.970497, 29.448689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.912670, 39.952900, 29.309717>,  <36.687870, 39.942341, 29.226334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.912670, 39.952900, 29.309717>,  <37.287338, 39.970497, 29.448689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912670, 39.952900, 29.309717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332760, -0.197383, 0.922123,
		-0.109146, 0.979339, 0.170243,
		-0.936674, -0.043996, -0.347428,
		36.631668, 39.939701, 29.205488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981754, 40.485538, 29.846676>,  <37.287338, 39.970497, 29.448689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981754, 40.485538, 29.846676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705143, 40.227608, 29.716452>,  <36.539177, 40.072849, 29.638317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705143, 40.227608, 29.716452>,  <36.981754, 40.485538, 29.846676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705143, 40.227608, 29.716452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320732, -0.129740, 0.938242,
		-0.647241, 0.753237, -0.117098,
		-0.691527, -0.644826, -0.325560,
		36.497684, 40.034161, 29.618784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448948, 40.630074, 30.226580>,  <36.981754, 40.485538, 29.846676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448948, 40.630074, 30.226580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.353027, 40.268307, 30.085424>,  <36.295475, 40.051247, 30.000731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.353027, 40.268307, 30.085424>,  <36.448948, 40.630074, 30.226580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353027, 40.268307, 30.085424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258214, -0.290984, 0.921224,
		-0.935853, 0.312033, -0.163753,
		-0.239803, -0.904413, -0.352889,
		36.281086, 39.996983, 29.979557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642162, 40.428162, 30.421028>,  <36.448948, 40.630074, 30.226580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642162, 40.428162, 30.421028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.875118, 40.107868, 30.364946>,  <36.014893, 39.915691, 30.331297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.875118, 40.107868, 30.364946>,  <35.642162, 40.428162, 30.421028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875118, 40.107868, 30.364946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256798, -0.344859, 0.902844,
		-0.771285, -0.489800, -0.406467,
		0.582387, -0.800730, -0.140205,
		36.049835, 39.867649, 30.322886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257877, 39.808178, 30.731731>,  <35.642162, 40.428162, 30.421028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257877, 39.808178, 30.731731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637386, 39.683498, 30.711048>,  <35.865093, 39.608692, 30.698639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637386, 39.683498, 30.711048>,  <35.257877, 39.808178, 30.731731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637386, 39.683498, 30.711048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039369, -0.279002, 0.959483,
		-0.313506, -0.908293, -0.276980,
		0.948770, -0.311708, -0.051710,
		35.922020, 39.589989, 30.695536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150749, 39.360897, 31.192753>,  <35.257877, 39.808178, 30.731731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150749, 39.360897, 31.192753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.546692, 39.353523, 31.136395>,  <35.784256, 39.349098, 31.102579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.546692, 39.353523, 31.136395>,  <35.150749, 39.360897, 31.192753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546692, 39.353523, 31.136395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128171, -0.312276, 0.941305,
		-0.061353, -0.949812, -0.306745,
		0.989853, -0.018436, -0.140898,
		35.843647, 39.347992, 31.094126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445335, 38.758572, 31.533285>,  <35.150749, 39.360897, 31.192753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445335, 38.758572, 31.533285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.716763, 39.052090, 31.520063>,  <35.879620, 39.228199, 31.512131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.716763, 39.052090, 31.520063>,  <35.445335, 38.758572, 31.533285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716763, 39.052090, 31.520063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017519, 0.028819, 0.999431,
		0.734331, -0.678759, 0.006700,
		0.678566, 0.733796, -0.033054,
		35.920334, 39.272228, 31.510147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047710, 38.474716, 31.742729>,  <35.445335, 38.758572, 31.533285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047710, 38.474716, 31.742729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.097542, 38.866611, 31.805456>,  <36.127441, 39.101749, 31.843092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.097542, 38.866611, 31.805456>,  <36.047710, 38.474716, 31.742729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097542, 38.866611, 31.805456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273643, -0.185846, 0.943706,
		0.953729, -0.074654, -0.291252,
		0.124579, 0.979739, 0.156818,
		36.134914, 39.160534, 31.852501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600269, 38.501369, 32.216614>,  <36.047710, 38.474716, 31.742729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600269, 38.501369, 32.216614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.497776, 38.887962, 32.222893>,  <36.436279, 39.119919, 32.226662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.497776, 38.887962, 32.222893>,  <36.600269, 38.501369, 32.216614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497776, 38.887962, 32.222893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407830, 0.093370, 0.908271,
		0.876366, 0.239136, -0.418087,
		-0.256238, 0.966486, 0.015701,
		36.420906, 39.177910, 32.227604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236408, 38.806595, 32.401157>,  <36.600269, 38.501369, 32.216614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236408, 38.806595, 32.401157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935314, 39.039833, 32.523392>,  <36.754658, 39.179775, 32.596733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935314, 39.039833, 32.523392>,  <37.236408, 38.806595, 32.401157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935314, 39.039833, 32.523392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459551, 0.133040, 0.878130,
		0.471377, 0.801437, -0.368106,
		-0.752739, 0.583094, 0.305589,
		36.709492, 39.214760, 32.615070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.874527, 41.337692, 24.602850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558056, 41.429165, 24.829741>,  <36.368176, 41.484047, 24.965876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558056, 41.429165, 24.829741>,  <36.874527, 41.337692, 24.602850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558056, 41.429165, 24.829741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560458, -0.100142, 0.822106,
		0.244800, 0.968338, -0.048934,
		-0.791176, 0.228677, 0.567228,
		36.320702, 41.497768, 24.999908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099785, 41.878422, 25.193035>,  <36.874527, 41.337692, 24.602850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099785, 41.878422, 25.193035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760677, 41.701569, 25.310204>,  <36.557213, 41.595459, 25.380505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760677, 41.701569, 25.310204>,  <37.099785, 41.878422, 25.193035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760677, 41.701569, 25.310204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367353, -0.091161, 0.925603,
		-0.382534, 0.892307, 0.239701,
		-0.847773, -0.442130, 0.292919,
		36.506344, 41.568932, 25.398079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972378, 42.084766, 25.902664>,  <37.099785, 41.878422, 25.193035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972378, 42.084766, 25.902664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753357, 41.751183, 25.875252>,  <36.621944, 41.551033, 25.858805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753357, 41.751183, 25.875252>,  <36.972378, 42.084766, 25.902664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753357, 41.751183, 25.875252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213314, -0.218310, 0.952280,
		-0.809122, 0.506809, 0.297432,
		-0.547556, -0.833958, -0.068530,
		36.589088, 41.500996, 25.854692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547810, 42.060440, 26.474859>,  <36.972378, 42.084766, 25.902664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547810, 42.060440, 26.474859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526623, 41.678066, 26.359354>,  <36.513908, 41.448643, 26.290051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526623, 41.678066, 26.359354>,  <36.547810, 42.060440, 26.474859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526623, 41.678066, 26.359354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062210, -0.285448, 0.956373,
		-0.996657, 0.068624, -0.044348,
		-0.052971, -0.955934, -0.288762,
		36.510731, 41.391285, 26.272726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014362, 41.770878, 26.817562>,  <36.547810, 42.060440, 26.474859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014362, 41.770878, 26.817562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260658, 41.465649, 26.738998>,  <36.408436, 41.282509, 26.691860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260658, 41.465649, 26.738998>,  <36.014362, 41.770878, 26.817562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260658, 41.465649, 26.738998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046690, -0.284165, 0.957638,
		-0.786563, -0.580487, -0.210600,
		0.615742, -0.763076, -0.196411,
		36.445381, 41.236725, 26.680075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742870, 41.186932, 27.178326>,  <36.014362, 41.770878, 26.817562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742870, 41.186932, 27.178326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118057, 41.067432, 27.107941>,  <36.343170, 40.995731, 27.065710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118057, 41.067432, 27.107941>,  <35.742870, 41.186932, 27.178326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118057, 41.067432, 27.107941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008032, -0.488641, 0.872448,
		-0.346626, -0.819742, -0.455931,
		0.937969, -0.298751, -0.175960,
		36.399448, 40.977806, 27.055153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694164, 40.440979, 27.338245>,  <35.742870, 41.186932, 27.178326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694164, 40.440979, 27.338245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090183, 40.497002, 27.332710>,  <36.327793, 40.530613, 27.329390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090183, 40.497002, 27.332710>,  <35.694164, 40.440979, 27.338245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090183, 40.497002, 27.332710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107175, -0.686587, 0.719105,
		0.091213, -0.713431, -0.694764,
		0.990047, 0.140053, -0.013837,
		36.387196, 40.539017, 27.328560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031002, 39.840397, 27.355846>,  <35.694164, 40.440979, 27.338245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031002, 39.840397, 27.355846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317524, 40.092106, 27.476465>,  <36.489437, 40.243130, 27.548836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317524, 40.092106, 27.476465>,  <36.031002, 39.840397, 27.355846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317524, 40.092106, 27.476465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113500, -0.531458, 0.839446,
		0.688499, -0.567070, -0.452106,
		0.716300, 0.629273, 0.301546,
		36.532413, 40.280888, 27.566929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483627, 39.373062, 27.611868>,  <36.031002, 39.840397, 27.355846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483627, 39.373062, 27.611868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547169, 39.730743, 27.779282>,  <36.585293, 39.945351, 27.879730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547169, 39.730743, 27.779282>,  <36.483627, 39.373062, 27.611868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547169, 39.730743, 27.779282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066292, -0.413298, 0.908180,
		0.985073, -0.172017, -0.006377,
		0.158858, 0.894201, 0.418532,
		36.594826, 39.999004, 27.904840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108810, 39.168919, 27.424337>,  <36.483627, 39.373062, 27.611868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108810, 39.168919, 27.424337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413776, 38.931458, 27.321337>,  <37.596756, 38.788982, 27.259537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413776, 38.931458, 27.321337>,  <37.108810, 39.168919, 27.424337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413776, 38.931458, 27.321337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128899, 0.250633, -0.959463,
		0.634126, 0.764696, 0.114564,
		0.762410, -0.593653, -0.257501,
		37.642498, 38.753361, 27.244087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436512, 39.545898, 26.909086>,  <37.108810, 39.168919, 27.424337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436512, 39.545898, 26.909086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539181, 39.163033, 26.855499>,  <37.600780, 38.933311, 26.823347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539181, 39.163033, 26.855499>,  <37.436512, 39.545898, 26.909086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539181, 39.163033, 26.855499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100626, 0.111394, -0.988669,
		0.961246, 0.267245, -0.067724,
		0.256672, -0.957169, -0.133969,
		37.616184, 38.875881, 26.815310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942192, 39.602402, 26.403599>,  <37.436512, 39.545898, 26.909086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942192, 39.602402, 26.403599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824039, 39.220505, 26.389591>,  <37.753147, 38.991367, 26.381187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824039, 39.220505, 26.389591>,  <37.942192, 39.602402, 26.403599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824039, 39.220505, 26.389591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013955, 0.040961, -0.999063,
		0.955279, -0.294612, -0.025422,
		-0.295377, -0.954739, -0.035018,
		37.735428, 38.934082, 26.379086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389896, 39.265984, 25.875992>,  <37.942192, 39.602402, 26.403599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389896, 39.265984, 25.875992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091438, 39.000927, 25.901863>,  <37.912365, 38.841892, 25.917385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091438, 39.000927, 25.901863>,  <38.389896, 39.265984, 25.875992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091438, 39.000927, 25.901863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265318, 0.206838, -0.941714,
		0.610636, -0.719813, -0.330140,
		-0.746143, -0.662637, 0.064676,
		37.867596, 38.802135, 25.921267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446758, 38.709297, 25.304064>,  <38.389896, 39.265984, 25.875992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446758, 38.709297, 25.304064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063179, 38.738159, 25.413767>,  <37.833031, 38.755474, 25.479589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063179, 38.738159, 25.413767>,  <38.446758, 38.709297, 25.304064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063179, 38.738159, 25.413767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277995, -0.048012, -0.959382,
		-0.056067, -0.996236, 0.066103,
		-0.958945, 0.072166, 0.274257,
		37.775494, 38.759804, 25.496044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112949, 38.068512, 24.949236>,  <38.446758, 38.709297, 25.304064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112949, 38.068512, 24.949236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835831, 38.336246, 25.056585>,  <37.669559, 38.496887, 25.120995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835831, 38.336246, 25.056585>,  <38.112949, 38.068512, 24.949236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835831, 38.336246, 25.056585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428010, -0.082138, -0.900034,
		-0.580382, -0.738405, 0.343387,
		-0.692795, 0.669336, 0.268373,
		37.627991, 38.537048, 25.137096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479248, 37.798374, 24.795898>,  <38.112949, 38.068512, 24.949236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479248, 37.798374, 24.795898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406521, 38.191002, 24.819433>,  <37.362885, 38.426579, 24.833553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406521, 38.191002, 24.819433>,  <37.479248, 37.798374, 24.795898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406521, 38.191002, 24.819433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527332, -0.046826, -0.848368,
		-0.829978, -0.185272, 0.526127,
		-0.181816, 0.981571, 0.058835,
		37.351974, 38.485474, 24.837084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893127, 37.884838, 24.462086>,  <37.479248, 37.798374, 24.795898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893127, 37.884838, 24.462086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977211, 38.275723, 24.473919>,  <37.027660, 38.510254, 24.481020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977211, 38.275723, 24.473919>,  <36.893127, 37.884838, 24.462086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977211, 38.275723, 24.473919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526024, 0.138555, -0.839108,
		-0.824083, 0.160824, 0.543160,
		0.210206, 0.977209, 0.029584,
		37.040272, 38.568886, 24.482794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222187, 38.316017, 24.489727>,  <36.893127, 37.884838, 24.462086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222187, 38.316017, 24.489727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558109, 38.471962, 24.338602>,  <36.759663, 38.565529, 24.247927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558109, 38.471962, 24.338602>,  <36.222187, 38.316017, 24.489727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558109, 38.471962, 24.338602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435946, 0.069520, -0.897284,
		-0.323549, 0.918247, 0.228340,
		0.839802, 0.389859, -0.377812,
		36.810051, 38.588921, 24.225258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969433, 38.802822, 24.101574>,  <36.222187, 38.316017, 24.489727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969433, 38.802822, 24.101574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342907, 38.777851, 23.960533>,  <36.566994, 38.762871, 23.875908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342907, 38.777851, 23.960533>,  <35.969433, 38.802822, 24.101574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342907, 38.777851, 23.960533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348216, 0.071299, -0.934699,
		0.083488, 0.995500, 0.044834,
		0.933689, -0.062425, -0.352602,
		36.623013, 38.759125, 23.854753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994865, 39.345749, 23.600910>,  <35.969433, 38.802822, 24.101574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994865, 39.345749, 23.600910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288570, 39.087093, 23.518238>,  <36.464794, 38.931900, 23.468636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288570, 39.087093, 23.518238>,  <35.994865, 39.345749, 23.600910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288570, 39.087093, 23.518238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275711, -0.005847, -0.961223,
		0.620351, 0.762777, -0.182578,
		0.734267, -0.646635, -0.206679,
		36.508850, 38.893105, 23.456234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357960, 39.573635, 22.889988>,  <35.994865, 39.345749, 23.600910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357960, 39.573635, 22.889988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468479, 39.191582, 22.932661>,  <36.534790, 38.962349, 22.958265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468479, 39.191582, 22.932661>,  <36.357960, 39.573635, 22.889988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468479, 39.191582, 22.932661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031607, -0.119976, -0.992274,
		0.960553, 0.270790, -0.063338,
		0.276297, -0.955133, 0.106684,
		36.551369, 38.905041, 22.964666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657375, 39.483643, 22.308306>,  <36.357960, 39.573635, 22.889988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657375, 39.483643, 22.308306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598087, 39.111008, 22.441071>,  <36.562515, 38.887424, 22.520729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598087, 39.111008, 22.441071>,  <36.657375, 39.483643, 22.308306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598087, 39.111008, 22.441071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210798, -0.298147, -0.930953,
		0.966227, -0.207956, -0.152185,
		-0.148224, -0.931591, 0.331914,
		36.553619, 38.831532, 22.540646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002705, 38.978485, 21.797104>,  <36.657375, 39.483643, 22.308306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002705, 38.978485, 21.797104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703831, 38.793751, 21.988277>,  <36.524506, 38.682911, 22.102982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703831, 38.793751, 21.988277>,  <37.002705, 38.978485, 21.797104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703831, 38.793751, 21.988277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354199, -0.331767, -0.874342,
		0.562368, -0.822578, 0.084308,
		-0.747185, -0.461840, 0.477932,
		36.479675, 38.655197, 22.131657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.436831, 39.297688, 26.399311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.800585, 39.318119, 26.234188>,  <31.018837, 39.330379, 26.135115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.800585, 39.318119, 26.234188>,  <30.436831, 39.297688, 26.399311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800585, 39.318119, 26.234188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405177, -0.333251, 0.851337,
		-0.094082, -0.941453, -0.323750,
		0.909384, 0.051081, -0.412808,
		31.073400, 39.333443, 26.110346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822458, 38.636333, 26.528963>,  <30.436831, 39.297688, 26.399311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822458, 38.636333, 26.528963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.111023, 38.903267, 26.454958>,  <31.284163, 39.063427, 26.410555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.111023, 38.903267, 26.454958>,  <30.822458, 38.636333, 26.528963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111023, 38.903267, 26.454958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544513, -0.381557, 0.746941,
		0.427867, -0.639593, -0.638632,
		0.721412, 0.667335, -0.185011,
		31.327446, 39.103466, 26.399454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457335, 38.293884, 26.583391>,  <30.822458, 38.636333, 26.528963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457335, 38.293884, 26.583391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.596483, 38.668694, 26.595926>,  <31.679972, 38.893578, 26.603447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.596483, 38.668694, 26.595926>,  <31.457335, 38.293884, 26.583391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596483, 38.668694, 26.595926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750398, -0.298314, 0.589840,
		0.562040, -0.181671, -0.806912,
		0.347870, 0.937019, 0.031339,
		31.700844, 38.949799, 26.605328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140739, 38.250107, 26.474724>,  <31.457335, 38.293884, 26.583391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140739, 38.250107, 26.474724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.119946, 38.618668, 26.628771>,  <32.107468, 38.839806, 26.721199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.119946, 38.618668, 26.628771>,  <32.140739, 38.250107, 26.474724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119946, 38.618668, 26.628771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709216, -0.237434, 0.663805,
		0.703071, 0.307642, -0.641129,
		-0.051989, 0.921402, 0.385118,
		32.104347, 38.895088, 26.744307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917229, 38.468739, 26.598280>,  <32.140739, 38.250107, 26.474724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917229, 38.468739, 26.598280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.659725, 38.674397, 26.824987>,  <32.505222, 38.797791, 26.961012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.659725, 38.674397, 26.824987>,  <32.917229, 38.468739, 26.598280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659725, 38.674397, 26.824987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644500, -0.035004, 0.763803,
		0.412543, 0.856990, -0.308831,
		-0.643761, 0.514143, 0.566771,
		32.466599, 38.828640, 26.995018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297531, 38.943478, 26.994228>,  <32.917229, 38.468739, 26.598280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297531, 38.943478, 26.994228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.960712, 38.929119, 27.209513>,  <32.758621, 38.920506, 27.338684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.960712, 38.929119, 27.209513>,  <33.297531, 38.943478, 26.994228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960712, 38.929119, 27.209513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539066, -0.091397, 0.837290,
		0.019137, 0.995167, 0.096310,
		-0.842046, -0.035894, 0.538210,
		32.708099, 38.918350, 27.370975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415115, 39.395184, 27.541903>,  <33.297531, 38.943478, 26.994228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415115, 39.395184, 27.541903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.112270, 39.159065, 27.653854>,  <32.930561, 39.017395, 27.721025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.112270, 39.159065, 27.653854>,  <33.415115, 39.395184, 27.541903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112270, 39.159065, 27.653854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463534, -0.183522, 0.866866,
		-0.460341, 0.786050, 0.412568,
		-0.757115, -0.590293, 0.279878,
		32.885136, 38.981976, 27.737818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224518, 39.608173, 28.195705>,  <33.415115, 39.395184, 27.541903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224518, 39.608173, 28.195705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.073601, 39.238483, 28.172186>,  <32.983051, 39.016670, 28.158073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.073601, 39.238483, 28.172186>,  <33.224518, 39.608173, 28.195705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073601, 39.238483, 28.172186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335733, -0.195674, 0.921409,
		-0.863096, 0.327898, 0.384119,
		-0.377291, -0.924226, -0.058799,
		32.960415, 38.961216, 28.154547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170971, 39.454918, 28.927624>,  <33.224518, 39.608173, 28.195705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170971, 39.454918, 28.927624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128223, 39.097618, 28.752954>,  <33.102573, 38.883240, 28.648153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128223, 39.097618, 28.752954>,  <33.170971, 39.454918, 28.927624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128223, 39.097618, 28.752954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336174, -0.445787, 0.829615,
		-0.935717, -0.058139, 0.347927,
		-0.106868, -0.893249, -0.436675,
		33.096165, 38.829643, 28.621952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842102, 38.997204, 29.479973>,  <33.170971, 39.454918, 28.927624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842102, 38.997204, 29.479973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013210, 38.762867, 29.204639>,  <33.115875, 38.622265, 29.039440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013210, 38.762867, 29.204639>,  <32.842102, 38.997204, 29.479973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013210, 38.762867, 29.204639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456340, -0.517371, 0.723934,
		-0.780236, -0.623789, 0.046029,
		0.427768, -0.585845, -0.688331,
		33.141541, 38.587112, 28.998140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610294, 38.264198, 29.538055>,  <32.842102, 38.997204, 29.479973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610294, 38.264198, 29.538055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.955090, 38.241470, 29.336561>,  <33.161968, 38.227833, 29.215664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.955090, 38.241470, 29.336561>,  <32.610294, 38.264198, 29.538055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955090, 38.241470, 29.336561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291370, -0.757628, 0.584041,
		-0.414827, -0.650209, -0.636511,
		0.861987, -0.056816, -0.503736,
		33.213684, 38.224426, 29.185440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748837, 37.446827, 29.520746>,  <32.610294, 38.264198, 29.538055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748837, 37.446827, 29.520746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096638, 37.629398, 29.445234>,  <33.305317, 37.738941, 29.399927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096638, 37.629398, 29.445234>,  <32.748837, 37.446827, 29.520746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096638, 37.629398, 29.445234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415960, -0.470557, 0.778173,
		0.266347, -0.755149, -0.599007,
		0.869504, 0.456427, -0.188780,
		33.357491, 37.766327, 29.388599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285503, 36.942924, 29.634937>,  <32.748837, 37.446827, 29.520746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285503, 36.942924, 29.634937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491261, 37.285881, 29.628212>,  <33.614716, 37.491653, 29.624176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491261, 37.285881, 29.628212>,  <33.285503, 36.942924, 29.634937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491261, 37.285881, 29.628212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515282, -0.293357, 0.805250,
		0.685479, -0.422881, -0.592698,
		0.514396, 0.857388, -0.016813,
		33.645580, 37.543098, 29.623169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019993, 36.810669, 29.468781>,  <33.285503, 36.942924, 29.634937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019993, 36.810669, 29.468781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974606, 37.145519, 29.682825>,  <33.947372, 37.346428, 29.811253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974606, 37.145519, 29.682825>,  <34.019993, 36.810669, 29.468781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974606, 37.145519, 29.682825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591063, -0.376042, 0.713609,
		0.798605, 0.397254, -0.452127,
		-0.113465, 0.837127, 0.535111,
		33.940567, 37.396656, 29.843359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676670, 36.395073, 29.433750>,  <34.019993, 36.810669, 29.468781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676670, 36.395073, 29.433750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670834, 35.995117, 29.433842>,  <34.667332, 35.755142, 29.433897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670834, 35.995117, 29.433842>,  <34.676670, 36.395073, 29.433750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670834, 35.995117, 29.433842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297857, 0.004125, -0.954601,
		0.954499, -0.013993, -0.297886,
		-0.014587, -0.999894, 0.000231,
		34.666458, 35.695148, 29.433910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097740, 36.170986, 28.940559>,  <34.676670, 36.395073, 29.433750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097740, 36.170986, 28.940559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835690, 35.871830, 28.983398>,  <34.678459, 35.692337, 29.009102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835690, 35.871830, 28.983398>,  <35.097740, 36.170986, 28.940559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835690, 35.871830, 28.983398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248834, 0.079746, -0.965258,
		0.713368, -0.659013, -0.238345,
		-0.655125, -0.747892, 0.107097,
		34.639153, 35.647461, 29.015528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103168, 35.793697, 28.279848>,  <35.097740, 36.170986, 28.940559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103168, 35.793697, 28.279848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778030, 35.633350, 28.448887>,  <34.582947, 35.537144, 28.550310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778030, 35.633350, 28.448887>,  <35.103168, 35.793697, 28.279848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778030, 35.633350, 28.448887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412062, -0.117051, -0.903606,
		0.411694, -0.908627, -0.070039,
		-0.812843, -0.400869, 0.422599,
		34.534176, 35.513088, 28.575666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999020, 35.204056, 27.929094>,  <35.103168, 35.793697, 28.279848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999020, 35.204056, 27.929094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633850, 35.275791, 28.075739>,  <34.414749, 35.318832, 28.163727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633850, 35.275791, 28.075739>,  <34.999020, 35.204056, 27.929094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633850, 35.275791, 28.075739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392796, -0.142206, -0.908564,
		-0.110799, -0.973457, 0.200264,
		-0.912927, 0.179331, 0.366613,
		34.359974, 35.329590, 28.185722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557510, 34.783337, 27.547564>,  <34.999020, 35.204056, 27.929094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557510, 34.783337, 27.547564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.303303, 35.050804, 27.701965>,  <34.150776, 35.211285, 27.794605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.303303, 35.050804, 27.701965>,  <34.557510, 34.783337, 27.547564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303303, 35.050804, 27.701965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546938, -0.037022, -0.836354,
		-0.544952, -0.742640, 0.389248,
		-0.635521, 0.668667, 0.386002,
		34.112648, 35.251404, 27.817766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988468, 34.504070, 27.293343>,  <34.557510, 34.783337, 27.547564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988468, 34.504070, 27.293343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928883, 34.892128, 27.369892>,  <33.893131, 35.124962, 27.415821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928883, 34.892128, 27.369892>,  <33.988468, 34.504070, 27.293343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928883, 34.892128, 27.369892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467569, 0.101424, -0.878119,
		-0.871314, -0.220292, 0.438501,
		-0.148967, 0.970147, 0.191374,
		33.884193, 35.183170, 27.427305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338463, 34.680416, 27.015997>,  <33.988468, 34.504070, 27.293343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338463, 34.680416, 27.015997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.489944, 35.049583, 27.043753>,  <33.580833, 35.271084, 27.060406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.489944, 35.049583, 27.043753>,  <33.338463, 34.680416, 27.015997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489944, 35.049583, 27.043753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339466, 0.208257, -0.917274,
		-0.861015, 0.323819, 0.392165,
		0.378702, 0.922914, 0.069387,
		33.603554, 35.326458, 27.064569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798466, 35.076614, 27.104120>,  <33.338463, 34.680416, 27.015997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798466, 35.076614, 27.104120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.078617, 35.329117, 26.970858>,  <33.246708, 35.480618, 26.890900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.078617, 35.329117, 26.970858>,  <32.798466, 35.076614, 27.104120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078617, 35.329117, 26.970858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570263, 0.214152, -0.793057,
		-0.429275, 0.745424, 0.509967,
		0.700374, 0.631255, -0.333157,
		33.288731, 35.518494, 26.870911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387821, 35.586212, 26.765566>,  <32.798466, 35.076614, 27.104120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387821, 35.586212, 26.765566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.757771, 35.676605, 26.643232>,  <32.979740, 35.730839, 26.569832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.757771, 35.676605, 26.643232>,  <32.387821, 35.586212, 26.765566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757771, 35.676605, 26.643232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377091, 0.441349, -0.814257,
		-0.049027, 0.868415, 0.493409,
		0.924878, 0.225981, -0.305833,
		33.035233, 35.744400, 26.551483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476452, 36.319904, 26.530764>,  <32.387821, 35.586212, 26.765566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476452, 36.319904, 26.530764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.752293, 36.116848, 26.324171>,  <32.917797, 35.995014, 26.200214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.752293, 36.116848, 26.324171>,  <32.476452, 36.319904, 26.530764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752293, 36.116848, 26.324171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236255, 0.516470, -0.823069,
		0.684567, 0.689611, 0.236228,
		0.689602, -0.507636, -0.516483,
		32.959175, 35.964558, 26.169226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891438, 36.875271, 26.094994>,  <32.476452, 36.319904, 26.530764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891438, 36.875271, 26.094994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973743, 36.531376, 25.908014>,  <33.023125, 36.325039, 25.795826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973743, 36.531376, 25.908014>,  <32.891438, 36.875271, 26.094994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973743, 36.531376, 25.908014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041378, 0.469599, -0.881910,
		0.977727, 0.200806, 0.061051,
		0.205762, -0.859741, -0.467449,
		33.035473, 36.273453, 25.767780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483788, 36.978867, 25.539434>,  <32.891438, 36.875271, 26.094994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483788, 36.978867, 25.539434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279930, 36.650326, 25.436945>,  <33.157616, 36.453201, 25.375452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279930, 36.650326, 25.436945>,  <33.483788, 36.978867, 25.539434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279930, 36.650326, 25.436945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174270, 0.390172, -0.904100,
		0.842553, -0.416115, -0.341984,
		-0.509642, -0.821350, -0.256224,
		33.127037, 36.403919, 25.360077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619946, 36.808846, 24.803856>,  <33.483788, 36.978867, 25.539434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619946, 36.808846, 24.803856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.292835, 36.581482, 24.839979>,  <33.096569, 36.445065, 24.861652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.292835, 36.581482, 24.839979>,  <33.619946, 36.808846, 24.803856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292835, 36.581482, 24.839979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393272, 0.437306, -0.808765,
		0.420209, -0.696909, -0.581156,
		-0.817779, -0.568403, 0.090315,
		33.047504, 36.410957, 24.867071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497532, 36.582054, 24.180313>,  <33.619946, 36.808846, 24.803856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497532, 36.582054, 24.180313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.149517, 36.518448, 24.366966>,  <32.940708, 36.480286, 24.478958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.149517, 36.518448, 24.366966>,  <33.497532, 36.582054, 24.180313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149517, 36.518448, 24.366966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492759, 0.309010, -0.813450,
		-0.014843, -0.937671, -0.347207,
		-0.870039, -0.159015, 0.466633,
		32.888504, 36.470745, 24.506956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716900, 35.912800, 23.776506>,  <33.497532, 36.582054, 24.180313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716900, 35.912800, 23.776506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940643, 35.732006, 23.498564>,  <34.074890, 35.623531, 23.331799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940643, 35.732006, 23.498564>,  <33.716900, 35.912800, 23.776506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940643, 35.732006, 23.498564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634078, -0.306619, 0.709880,
		-0.533910, -0.837674, 0.115081,
		0.559362, -0.451982, -0.694857,
		34.108452, 35.596413, 23.290106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895905, 35.334206, 24.088680>,  <33.716900, 35.912800, 23.776506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895905, 35.334206, 24.088680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157646, 35.399609, 23.793360>,  <34.314690, 35.438850, 23.616167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157646, 35.399609, 23.793360>,  <33.895905, 35.334206, 24.088680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157646, 35.399609, 23.793360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749933, -0.265654, 0.605829,
		-0.097073, -0.950101, -0.296452,
		0.654352, 0.163510, -0.738301,
		34.353951, 35.448662, 23.571869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194595, 34.765259, 24.035320>,  <33.895905, 35.334206, 24.088680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194595, 34.765259, 24.035320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.437401, 35.053280, 23.900822>,  <34.583084, 35.226093, 23.820124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.437401, 35.053280, 23.900822>,  <34.194595, 34.765259, 24.035320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437401, 35.053280, 23.900822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723993, -0.326608, 0.607586,
		0.327673, -0.612252, -0.719568,
		0.607013, 0.720052, -0.336245,
		34.619503, 35.269295, 23.799948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797897, 34.365723, 23.978754>,  <34.194595, 34.765259, 24.035320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797897, 34.365723, 23.978754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897404, 34.752502, 23.956415>,  <34.957108, 34.984570, 23.943012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897404, 34.752502, 23.956415>,  <34.797897, 34.365723, 23.978754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897404, 34.752502, 23.956415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711228, -0.143227, 0.688215,
		0.657473, -0.210923, -0.723354,
		0.248764, 0.966953, -0.055847,
		34.972034, 35.042587, 23.939661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557041, 34.429371, 23.976171>,  <34.797897, 34.365723, 23.978754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557041, 34.429371, 23.976171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448318, 34.793777, 24.100214>,  <35.383083, 35.012421, 24.174639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448318, 34.793777, 24.100214>,  <35.557041, 34.429371, 23.976171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448318, 34.793777, 24.100214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627520, -0.076524, 0.774831,
		0.729616, 0.405202, -0.550883,
		-0.271807, 0.911019, 0.310105,
		35.366776, 35.067081, 24.193245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235512, 34.809574, 24.045124>,  <35.557041, 34.429371, 23.976171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235512, 34.809574, 24.045124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990192, 35.054977, 24.244108>,  <35.842999, 35.202221, 24.363499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990192, 35.054977, 24.244108>,  <36.235512, 34.809574, 24.045124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990192, 35.054977, 24.244108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707738, 0.147240, 0.690961,
		0.350666, 0.775838, -0.524507,
		-0.613303, 0.613510, 0.497458,
		35.806202, 35.239029, 24.393345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584419, 35.385075, 24.234411>,  <36.235512, 34.809574, 24.045124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584419, 35.385075, 24.234411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280952, 35.384815, 24.495005>,  <36.098873, 35.384659, 24.651361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280952, 35.384815, 24.495005>,  <36.584419, 35.385075, 24.234411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280952, 35.384815, 24.495005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645089, 0.139026, 0.751354,
		-0.091058, 0.990288, -0.105058,
		-0.758663, -0.000645, 0.651483,
		36.053352, 35.384621, 24.690449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690964, 35.908989, 24.807121>,  <36.584419, 35.385075, 24.234411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690964, 35.908989, 24.807121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409828, 35.669323, 24.960497>,  <36.241146, 35.525524, 25.052523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409828, 35.669323, 24.960497>,  <36.690964, 35.908989, 24.807121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409828, 35.669323, 24.960497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485697, -0.010375, 0.874066,
		-0.519729, 0.800560, 0.298303,
		-0.702837, -0.599162, 0.383437,
		36.198978, 35.489574, 25.075527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424114, 36.228344, 25.497099>,  <36.690964, 35.908989, 24.807121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424114, 36.228344, 25.497099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397964, 35.829937, 25.472841>,  <36.382275, 35.590893, 25.458286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397964, 35.829937, 25.472841>,  <36.424114, 36.228344, 25.497099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397964, 35.829937, 25.472841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636061, -0.088424, 0.766555,
		-0.768864, 0.011544, 0.639308,
		-0.065379, -0.996016, -0.060643,
		36.378349, 35.531132, 25.454649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213509, 36.017059, 26.223978>,  <36.424114, 36.228344, 25.497099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213509, 36.017059, 26.223978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404343, 35.733067, 26.016783>,  <36.518845, 35.562672, 25.892466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404343, 35.733067, 26.016783>,  <36.213509, 36.017059, 26.223978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404343, 35.733067, 26.016783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533644, -0.234272, 0.812613,
		-0.698294, -0.664105, 0.267113,
		0.477084, -0.709986, -0.517987,
		36.547466, 35.520069, 25.861387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258427, 35.487919, 26.679094>,  <36.213509, 36.017059, 26.223978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258427, 35.487919, 26.679094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547829, 35.427994, 26.409546>,  <36.721470, 35.392036, 26.247816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547829, 35.427994, 26.409546>,  <36.258427, 35.487919, 26.679094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547829, 35.427994, 26.409546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646480, -0.195294, 0.737512,
		-0.242094, -0.969234, -0.044441,
		0.723501, -0.149817, -0.673870,
		36.764877, 35.383049, 26.207384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456802, 34.808304, 26.728788>,  <36.258427, 35.487919, 26.679094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456802, 34.808304, 26.728788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773861, 34.980755, 26.556351>,  <36.964096, 35.084225, 26.452888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773861, 34.980755, 26.556351>,  <36.456802, 34.808304, 26.728788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773861, 34.980755, 26.556351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572345, -0.282529, 0.769804,
		0.210089, -0.856916, -0.470700,
		0.792643, 0.431130, -0.431096,
		37.011654, 35.110092, 26.427021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010357, 34.297638, 26.764931>,  <36.456802, 34.808304, 26.728788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010357, 34.297638, 26.764931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228203, 34.615128, 26.656563>,  <37.358910, 34.805622, 26.591543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228203, 34.615128, 26.656563>,  <37.010357, 34.297638, 26.764931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228203, 34.615128, 26.656563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594057, -0.137060, 0.792660,
		0.592020, -0.592638, -0.546161,
		0.544618, 0.793722, -0.270918,
		37.391590, 34.853245, 26.575287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701866, 34.072071, 26.655386>,  <37.010357, 34.297638, 26.764931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701866, 34.072071, 26.655386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701283, 34.458984, 26.756859>,  <37.700932, 34.691132, 26.817741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701283, 34.458984, 26.756859>,  <37.701866, 34.072071, 26.655386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701283, 34.458984, 26.756859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548864, -0.211279, 0.808771,
		0.835911, 0.140417, -0.530600,
		-0.001460, 0.967287, 0.253680,
		37.700844, 34.749172, 26.832962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.104801, 38.285633, 21.602972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.731209, 38.319595, 21.741812>,  <36.507053, 38.339973, 21.825115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.731209, 38.319595, 21.741812>,  <37.104801, 38.285633, 21.602972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731209, 38.319595, 21.741812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331929, -0.565858, -0.754737,
		0.132327, -0.820120, 0.556681,
		-0.933977, 0.084907, 0.347099,
		36.451015, 38.345066, 21.845942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758095, 37.650215, 21.421997>,  <37.104801, 38.285633, 21.602972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758095, 37.650215, 21.421997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.449352, 37.895874, 21.487801>,  <36.264107, 38.043270, 21.527283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.449352, 37.895874, 21.487801>,  <36.758095, 37.650215, 21.421997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449352, 37.895874, 21.487801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512985, -0.448695, -0.731791,
		-0.375612, -0.649228, 0.661376,
		-0.771856, 0.614146, 0.164509,
		36.217796, 38.080116, 21.537153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151909, 37.222466, 21.424183>,  <36.758095, 37.650215, 21.421997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151909, 37.222466, 21.424183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016872, 37.591667, 21.350323>,  <35.935852, 37.813187, 21.306007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016872, 37.591667, 21.350323>,  <36.151909, 37.222466, 21.424183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016872, 37.591667, 21.350323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600917, -0.362319, -0.712477,
		-0.724522, -0.129564, 0.676964,
		-0.337588, 0.923005, -0.184651,
		35.915596, 37.868568, 21.294928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480530, 37.126728, 21.344393>,  <36.151909, 37.222466, 21.424183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480530, 37.126728, 21.344393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.591511, 37.459221, 21.151697>,  <35.658100, 37.658718, 21.036079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.591511, 37.459221, 21.151697>,  <35.480530, 37.126728, 21.344393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591511, 37.459221, 21.151697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800920, -0.076814, -0.593824,
		-0.530609, 0.550594, 0.644438,
		0.277454, 0.831231, -0.481740,
		35.674747, 37.708591, 21.007175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865692, 37.614258, 21.325838>,  <35.480530, 37.126728, 21.344393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865692, 37.614258, 21.325838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109314, 37.731915, 21.031212>,  <35.255489, 37.802509, 20.854437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109314, 37.731915, 21.031212>,  <34.865692, 37.614258, 21.325838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109314, 37.731915, 21.031212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789841, 0.140519, -0.596998,
		-0.072100, 0.945376, 0.317908,
		0.609059, 0.294140, -0.736565,
		35.292030, 37.820156, 20.810242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494980, 38.137196, 21.008951>,  <34.865692, 37.614258, 21.325838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494980, 38.137196, 21.008951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770096, 38.048569, 20.732443>,  <34.935165, 37.995392, 20.566538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770096, 38.048569, 20.732443>,  <34.494980, 38.137196, 21.008951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770096, 38.048569, 20.732443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686046, 0.112838, -0.718755,
		0.237254, 0.968595, -0.074396,
		0.687787, -0.221566, -0.691272,
		34.976433, 37.982098, 20.525061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435280, 38.605751, 20.536716>,  <34.494980, 38.137196, 21.008951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435280, 38.605751, 20.536716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650589, 38.345940, 20.321915>,  <34.779774, 38.190052, 20.193033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650589, 38.345940, 20.321915>,  <34.435280, 38.605751, 20.536716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650589, 38.345940, 20.321915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573985, 0.184021, -0.797921,
		0.617090, 0.737736, -0.273763,
		0.538277, -0.649524, -0.537007,
		34.812073, 38.151081, 20.160812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647823, 39.023212, 19.987165>,  <34.435280, 38.605751, 20.536716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647823, 39.023212, 19.987165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669216, 38.636299, 19.887974>,  <34.682053, 38.404152, 19.828459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669216, 38.636299, 19.887974>,  <34.647823, 39.023212, 19.987165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669216, 38.636299, 19.887974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674640, 0.148084, -0.723140,
		0.736207, 0.205974, -0.644651,
		0.053485, -0.967288, -0.247979,
		34.685261, 38.346111, 19.813580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711288, 39.127029, 19.364403>,  <34.647823, 39.023212, 19.987165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711288, 39.127029, 19.364403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590542, 38.749626, 19.419046>,  <34.518093, 38.523182, 19.451832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590542, 38.749626, 19.419046>,  <34.711288, 39.127029, 19.364403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590542, 38.749626, 19.419046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697059, 0.120682, -0.706785,
		0.650374, -0.308578, -0.694113,
		-0.301865, -0.943512, 0.136609,
		34.499981, 38.466572, 19.460030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605976, 38.844559, 18.722361>,  <34.711288, 39.127029, 19.364403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605976, 38.844559, 18.722361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382515, 38.605480, 18.952377>,  <34.248440, 38.462032, 19.090387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382515, 38.605480, 18.952377>,  <34.605976, 38.844559, 18.722361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382515, 38.605480, 18.952377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774230, 0.127149, -0.620001,
		0.297456, -0.791576, -0.533786,
		-0.558648, -0.597695, 0.575041,
		34.214920, 38.426170, 19.124889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195885, 38.467430, 18.179693>,  <34.605976, 38.844559, 18.722361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195885, 38.467430, 18.179693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003681, 38.419216, 18.527159>,  <33.888359, 38.390289, 18.735638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003681, 38.419216, 18.527159>,  <34.195885, 38.467430, 18.179693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003681, 38.419216, 18.527159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870838, -0.051513, -0.488863,
		0.103672, -0.991372, -0.080212,
		-0.480513, -0.120533, 0.868665,
		33.859528, 38.383057, 18.787758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779648, 37.917606, 18.147181>,  <34.195885, 38.467430, 18.179693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779648, 37.917606, 18.147181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609264, 38.131805, 18.438879>,  <33.507034, 38.260326, 18.613899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609264, 38.131805, 18.438879>,  <33.779648, 37.917606, 18.147181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609264, 38.131805, 18.438879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874328, -0.036398, -0.483969,
		-0.232623, -0.843750, 0.483707,
		-0.425955, 0.535501, 0.729247,
		33.481480, 38.292454, 18.657654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474873, 37.692692, 18.851898>,  <33.779648, 37.917606, 18.147181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474873, 37.692692, 18.851898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.261078, 38.012459, 18.742161>,  <33.132801, 38.204319, 18.676319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.261078, 38.012459, 18.742161>,  <33.474873, 37.692692, 18.851898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261078, 38.012459, 18.742161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584259, -0.584021, -0.563525,
		-0.610714, -0.140906, 0.779214,
		-0.534482, 0.799415, -0.274344,
		33.100731, 38.252281, 18.659859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796955, 37.478729, 19.061573>,  <33.474873, 37.692692, 18.851898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796955, 37.478729, 19.061573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815929, 37.737206, 18.756893>,  <32.827312, 37.892292, 18.574085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815929, 37.737206, 18.756893>,  <32.796955, 37.478729, 19.061573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815929, 37.737206, 18.756893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688021, -0.531684, -0.493903,
		-0.724139, 0.547495, 0.419371,
		0.047436, 0.646190, -0.761701,
		32.830162, 37.931061, 18.528383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109409, 37.785122, 18.710526>,  <32.796955, 37.478729, 19.061573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109409, 37.785122, 18.710526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752790, 37.629211, 18.802801>,  <31.538818, 37.535664, 18.858166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752790, 37.629211, 18.802801>,  <32.109409, 37.785122, 18.710526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752790, 37.629211, 18.802801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429310, -0.564923, 0.704667,
		-0.144342, 0.727280, 0.670991,
		-0.891548, -0.389776, 0.230687,
		31.485327, 37.512280, 18.872007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892607, 37.952988, 19.402763>,  <32.109409, 37.785122, 18.710526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892607, 37.952988, 19.402763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.700953, 37.618858, 19.294943>,  <31.585960, 37.418381, 19.230249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.700953, 37.618858, 19.294943>,  <31.892607, 37.952988, 19.402763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700953, 37.618858, 19.294943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484731, -0.507838, 0.712135,
		-0.731754, 0.210549, 0.648232,
		-0.479136, -0.835326, -0.269553,
		31.557211, 37.368259, 19.214077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494379, 37.706223, 20.051775>,  <31.892607, 37.952988, 19.402763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494379, 37.706223, 20.051775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519451, 37.383247, 19.817127>,  <31.534494, 37.189465, 19.676338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519451, 37.383247, 19.817127>,  <31.494379, 37.706223, 20.051775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519451, 37.383247, 19.817127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265249, -0.553157, 0.789721,
		-0.962140, -0.205098, 0.179501,
		0.062678, -0.807435, -0.586617,
		31.538254, 37.141018, 19.641142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209986, 37.218597, 20.450209>,  <31.494379, 37.706223, 20.051775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209986, 37.218597, 20.450209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.413334, 37.023033, 20.166653>,  <31.535343, 36.905693, 19.996519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.413334, 37.023033, 20.166653>,  <31.209986, 37.218597, 20.450209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413334, 37.023033, 20.166653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250734, -0.703494, 0.665003,
		-0.823828, -0.515809, -0.235048,
		0.508369, -0.488914, -0.708889,
		31.565845, 36.876358, 19.953985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149672, 36.505474, 20.563822>,  <31.209986, 37.218597, 20.450209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149672, 36.505474, 20.563822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485386, 36.511654, 20.346434>,  <31.686815, 36.515362, 20.216002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485386, 36.511654, 20.346434>,  <31.149672, 36.505474, 20.563822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485386, 36.511654, 20.346434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468384, -0.528109, 0.708320,
		-0.276070, -0.849036, -0.450470,
		0.839287, 0.015447, -0.543470,
		31.737171, 36.516289, 20.183393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386747, 35.856010, 20.534630>,  <31.149672, 36.505474, 20.563822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386747, 35.856010, 20.534630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705873, 36.085289, 20.459862>,  <31.897348, 36.222855, 20.415001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705873, 36.085289, 20.459862>,  <31.386747, 35.856010, 20.534630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705873, 36.085289, 20.459862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528558, -0.515827, 0.674202,
		0.290031, -0.636687, -0.714502,
		0.797815, 0.573195, -0.186920,
		31.945217, 36.257248, 20.403786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915184, 35.391594, 20.607166>,  <31.386747, 35.856010, 20.534630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915184, 35.391594, 20.607166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134758, 35.721344, 20.551916>,  <32.266502, 35.919193, 20.518766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134758, 35.721344, 20.551916>,  <31.915184, 35.391594, 20.607166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134758, 35.721344, 20.551916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712213, -0.374805, 0.593527,
		0.437518, -0.424182, -0.792873,
		0.548937, 0.824373, -0.138124,
		32.299438, 35.968655, 20.510479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544945, 35.213425, 20.409058>,  <31.915184, 35.391594, 20.607166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544945, 35.213425, 20.409058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.569374, 35.575245, 20.577848>,  <32.584030, 35.792336, 20.679123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.569374, 35.575245, 20.577848>,  <32.544945, 35.213425, 20.409058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569374, 35.575245, 20.577848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730160, -0.328732, 0.599001,
		0.680542, 0.271530, -0.680540,
		0.061069, 0.904548, 0.421976,
		32.587696, 35.846611, 20.704441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193737, 35.325359, 20.497593>,  <32.544945, 35.213425, 20.409058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193737, 35.325359, 20.497593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032265, 35.569607, 20.770119>,  <32.935383, 35.716156, 20.933634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032265, 35.569607, 20.770119>,  <33.193737, 35.325359, 20.497593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032265, 35.569607, 20.770119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675382, -0.303462, 0.672138,
		0.617173, 0.731475, -0.289900,
		-0.403679, 0.610619, 0.681314,
		32.911160, 35.752792, 20.974512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777920, 35.389297, 20.987753>,  <33.193737, 35.325359, 20.497593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777920, 35.389297, 20.987753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468399, 35.544071, 21.188353>,  <33.282684, 35.636936, 21.308712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468399, 35.544071, 21.188353>,  <33.777920, 35.389297, 20.987753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468399, 35.544071, 21.188353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469670, -0.180741, 0.864143,
		0.425012, 0.904219, -0.041874,
		-0.773806, 0.386938, 0.501501,
		33.236256, 35.660152, 21.338802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941742, 36.077961, 21.241770>,  <33.777920, 35.389297, 20.987753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941742, 36.077961, 21.241770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670341, 35.883606, 21.462151>,  <33.507500, 35.766994, 21.594379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670341, 35.883606, 21.462151>,  <33.941742, 36.077961, 21.241770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670341, 35.883606, 21.462151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649698, -0.046901, 0.758744,
		-0.342825, 0.872762, 0.347502,
		-0.678501, -0.485888, 0.550953,
		33.466789, 35.737839, 21.627436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056187, 36.359558, 21.871422>,  <33.941742, 36.077961, 21.241770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056187, 36.359558, 21.871422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853127, 36.038368, 21.996342>,  <33.731289, 35.845654, 22.071293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853127, 36.038368, 21.996342>,  <34.056187, 36.359558, 21.871422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853127, 36.038368, 21.996342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411008, 0.092872, 0.906889,
		-0.757208, 0.588739, 0.282881,
		-0.507649, -0.802970, 0.312300,
		33.700832, 35.797478, 22.090033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907070, 36.504005, 22.517956>,  <34.056187, 36.359558, 21.871422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907070, 36.504005, 22.517956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.848946, 36.108257, 22.515421>,  <33.814072, 35.870808, 22.513901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.848946, 36.108257, 22.515421>,  <33.907070, 36.504005, 22.517956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848946, 36.108257, 22.515421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474772, -0.075346, 0.876878,
		-0.868031, 0.124408, 0.480672,
		-0.145307, -0.989366, -0.006337,
		33.805355, 35.811447, 22.513519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692280, 36.370087, 23.146273>,  <33.907070, 36.504005, 22.517956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692280, 36.370087, 23.146273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.790894, 35.997688, 23.038591>,  <33.850060, 35.774250, 22.973982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.790894, 35.997688, 23.038591>,  <33.692280, 36.370087, 23.146273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790894, 35.997688, 23.038591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646621, -0.048892, 0.761243,
		-0.721875, -0.361743, 0.589948,
		0.246531, -0.930995, -0.269204,
		33.864853, 35.718391, 22.957830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048523, 36.284634, 23.638584>,  <33.692280, 36.370087, 23.146273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048523, 36.284634, 23.638584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796352, 36.427444, 23.914291>,  <32.645050, 36.513130, 24.079716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796352, 36.427444, 23.914291>,  <33.048523, 36.284634, 23.638584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796352, 36.427444, 23.914291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528026, 0.453630, -0.717920,
		-0.568992, -0.816547, -0.097460,
		-0.630426, 0.357029, 0.689270,
		32.607224, 36.534554, 24.121073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437962, 36.041988, 23.520626>,  <33.048523, 36.284634, 23.638584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437962, 36.041988, 23.520626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.367146, 36.374702, 23.731070>,  <32.324657, 36.574333, 23.857336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.367146, 36.374702, 23.731070>,  <32.437962, 36.041988, 23.520626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367146, 36.374702, 23.731070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623806, 0.318633, -0.713680,
		-0.761264, -0.454537, 0.462464,
		-0.177038, 0.831787, 0.526107,
		32.314034, 36.624237, 23.888901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738558, 36.211590, 23.602226>,  <32.437962, 36.041988, 23.520626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738558, 36.211590, 23.602226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865641, 36.586662, 23.658535>,  <31.941891, 36.811707, 23.692320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865641, 36.586662, 23.658535>,  <31.738558, 36.211590, 23.602226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865641, 36.586662, 23.658535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749281, 0.339259, -0.568754,
		-0.581068, 0.075220, 0.810372,
		0.317707, 0.937681, 0.140772,
		31.960953, 36.867966, 23.700766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102390, 36.622845, 23.605528>,  <31.738558, 36.211590, 23.602226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102390, 36.622845, 23.605528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358974, 36.926907, 23.564161>,  <31.512926, 37.109344, 23.539341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358974, 36.926907, 23.564161>,  <31.102390, 36.622845, 23.605528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358974, 36.926907, 23.564161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658885, 0.476855, -0.581790,
		-0.392934, 0.441337, 0.806737,
		0.641463, 0.760152, -0.103418,
		31.551413, 37.154953, 23.533136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695581, 37.224075, 23.712805>,  <31.102390, 36.622845, 23.605528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695581, 37.224075, 23.712805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.021049, 37.335068, 23.508472>,  <31.216330, 37.401661, 23.385872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.021049, 37.335068, 23.508472>,  <30.695581, 37.224075, 23.712805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021049, 37.335068, 23.508472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547010, 0.662905, -0.511211,
		0.196783, 0.695386, 0.691169,
		0.813668, 0.277479, -0.510832,
		31.265150, 37.418312, 23.355223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566652, 37.864899, 23.677639>,  <30.695581, 37.224075, 23.712805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566652, 37.864899, 23.677639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.796127, 37.710052, 23.388910>,  <30.933811, 37.617146, 23.215673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.796127, 37.710052, 23.388910>,  <30.566652, 37.864899, 23.677639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796127, 37.710052, 23.388910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624972, 0.362740, -0.691252,
		0.529429, 0.847679, -0.033839,
		0.573685, -0.387117, -0.721821,
		30.968233, 37.593918, 23.172363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666664, 38.448887, 23.358908>,  <30.566652, 37.864899, 23.677639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666664, 38.448887, 23.358908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.753702, 38.131790, 23.131149>,  <30.805925, 37.941532, 22.994495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.753702, 38.131790, 23.131149>,  <30.666664, 38.448887, 23.358908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753702, 38.131790, 23.131149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632179, 0.330001, -0.701034,
		0.743641, 0.512500, -0.429350,
		0.217594, -0.792744, -0.569394,
		30.818981, 37.893967, 22.960331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988245, 39.191132, 23.241291>,  <30.666664, 38.448887, 23.358908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988245, 39.191132, 23.241291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.812235, 39.548374, 23.278675>,  <30.706629, 39.762722, 23.301105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.812235, 39.548374, 23.278675>,  <30.988245, 39.191132, 23.241291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812235, 39.548374, 23.278675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403067, 0.103432, 0.909306,
		0.802442, 0.437790, -0.405496,
		-0.440026, 0.893108, 0.093460,
		30.680227, 39.816307, 23.306713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506290, 39.581757, 23.459917>,  <30.988245, 39.191132, 23.241291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506290, 39.581757, 23.459917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170948, 39.759735, 23.585894>,  <30.969742, 39.866520, 23.661480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170948, 39.759735, 23.585894>,  <31.506290, 39.581757, 23.459917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170948, 39.759735, 23.585894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408622, 0.130531, 0.903321,
		0.360816, 0.885996, -0.291245,
		-0.838355, 0.444942, 0.314940,
		30.919441, 39.893219, 23.680376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693113, 40.181278, 23.793060>,  <31.506290, 39.581757, 23.459917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693113, 40.181278, 23.793060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.329111, 40.075912, 23.921122>,  <31.110710, 40.012691, 23.997957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.329111, 40.075912, 23.921122>,  <31.693113, 40.181278, 23.793060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329111, 40.075912, 23.921122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328683, 0.012281, 0.944360,
		-0.252692, 0.964604, 0.075404,
		-0.910008, -0.263416, 0.320152,
		31.056108, 39.996887, 24.017168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558586, 40.488205, 24.405016>,  <31.693113, 40.181278, 23.793060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558586, 40.488205, 24.405016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259560, 40.224922, 24.440594>,  <31.080143, 40.066952, 24.461941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259560, 40.224922, 24.440594>,  <31.558586, 40.488205, 24.405016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259560, 40.224922, 24.440594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259955, -0.166718, 0.951120,
		-0.611201, 0.734148, 0.295736,
		-0.747568, -0.658203, 0.088947,
		31.035290, 40.027462, 24.467278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241869, 40.656807, 25.090942>,  <31.558586, 40.488205, 24.405016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241869, 40.656807, 25.090942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.119598, 40.283707, 25.014486>,  <31.046236, 40.059845, 24.968613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.119598, 40.283707, 25.014486>,  <31.241869, 40.656807, 25.090942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119598, 40.283707, 25.014486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299455, -0.284745, 0.910630,
		-0.903819, 0.221120, 0.366357,
		-0.305677, -0.932752, -0.191142,
		31.027895, 40.003880, 24.957144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770020, 40.530495, 25.514965>,  <31.241869, 40.656807, 25.090942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770020, 40.530495, 25.514965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882364, 40.163345, 25.402800>,  <30.949772, 39.943058, 25.335501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882364, 40.163345, 25.402800>,  <30.770020, 40.530495, 25.514965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882364, 40.163345, 25.402800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262743, -0.207480, 0.942294,
		-0.923083, -0.338331, 0.182890,
		0.280861, -0.917869, -0.280416,
		30.966623, 39.887985, 25.318674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603355, 40.156189, 26.116573>,  <30.770020, 40.530495, 25.514965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603355, 40.156189, 26.116573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854631, 39.918060, 25.916185>,  <31.005396, 39.775185, 25.795952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854631, 39.918060, 25.916185>,  <30.603355, 40.156189, 26.116573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854631, 39.918060, 25.916185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395639, -0.310010, 0.864502,
		-0.669962, -0.741274, 0.040788,
		0.628188, -0.595320, -0.500972,
		31.043087, 39.739464, 25.765894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.534672, 41.256840, 19.107988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.676342, 40.887825, 19.169281>,  <32.761345, 40.666416, 19.206057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.676342, 40.887825, 19.169281>,  <32.534672, 41.256840, 19.107988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676342, 40.887825, 19.169281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161434, 0.221703, 0.961658,
		-0.921141, -0.315856, 0.227450,
		0.354172, -0.922541, 0.153230,
		32.782593, 40.611061, 19.215250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230396, 41.044243, 19.706457>,  <32.534672, 41.256840, 19.107988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230396, 41.044243, 19.706457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.525658, 40.775558, 19.681356>,  <32.702812, 40.614349, 19.666296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.525658, 40.775558, 19.681356>,  <32.230396, 41.044243, 19.706457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525658, 40.775558, 19.681356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293145, 0.235581, 0.926589,
		-0.607617, -0.702357, 0.370803,
		0.738151, -0.671711, -0.062750,
		32.747105, 40.574047, 19.662531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177910, 40.628891, 20.320255>,  <32.230396, 41.044243, 19.706457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177910, 40.628891, 20.320255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.546986, 40.589600, 20.171129>,  <32.768433, 40.566025, 20.081654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.546986, 40.589600, 20.171129>,  <32.177910, 40.628891, 20.320255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546986, 40.589600, 20.171129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385258, 0.198153, 0.901283,
		-0.014656, -0.975237, 0.220677,
		0.922692, -0.098227, -0.372814,
		32.823792, 40.560131, 20.059284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487549, 40.130051, 20.782269>,  <32.177910, 40.628891, 20.320255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487549, 40.130051, 20.782269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788929, 40.339375, 20.623037>,  <32.969757, 40.464970, 20.527498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788929, 40.339375, 20.623037>,  <32.487549, 40.130051, 20.782269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788929, 40.339375, 20.623037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398026, 0.118889, 0.909638,
		0.523348, -0.843809, -0.118714,
		0.753446, 0.523309, -0.398078,
		33.014961, 40.496368, 20.503614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054802, 39.814461, 21.169014>,  <32.487549, 40.130051, 20.782269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054802, 39.814461, 21.169014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.179268, 40.159901, 21.010336>,  <33.253948, 40.367165, 20.915129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.179268, 40.159901, 21.010336>,  <33.054802, 39.814461, 21.169014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179268, 40.159901, 21.010336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458833, 0.229027, 0.858498,
		0.832254, -0.449153, -0.324983,
		0.311167, 0.863602, -0.396695,
		33.272617, 40.418980, 20.891327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756142, 39.901756, 21.318907>,  <33.054802, 39.814461, 21.169014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756142, 39.901756, 21.318907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.653908, 40.282070, 21.248840>,  <33.592567, 40.510258, 21.206800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.653908, 40.282070, 21.248840>,  <33.756142, 39.901756, 21.318907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653908, 40.282070, 21.248840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539696, 0.290637, 0.790100,
		0.802126, 0.107399, -0.587417,
		-0.255581, 0.950787, -0.175164,
		33.577232, 40.567307, 21.196291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386093, 40.340286, 21.520264>,  <33.756142, 39.901756, 21.318907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386093, 40.340286, 21.520264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.089115, 40.605888, 21.484760>,  <33.910927, 40.765247, 21.463459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.089115, 40.605888, 21.484760>,  <34.386093, 40.340286, 21.520264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089115, 40.605888, 21.484760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312332, 0.460309, 0.831002,
		0.592643, 0.589251, -0.549143,
		-0.742444, 0.664002, -0.088756,
		33.866383, 40.805088, 21.458134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713543, 41.045681, 21.496122>,  <34.386093, 40.340286, 21.520264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713543, 41.045681, 21.496122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.334301, 41.087318, 21.616291>,  <34.106754, 41.112301, 21.688393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.334301, 41.087318, 21.616291>,  <34.713543, 41.045681, 21.496122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334301, 41.087318, 21.616291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317292, 0.370298, 0.873044,
		-0.020371, 0.923063, -0.384110,
		-0.948109, 0.104090, 0.300424,
		34.049870, 41.118546, 21.706419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670010, 41.661579, 21.928057>,  <34.713543, 41.045681, 21.496122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670010, 41.661579, 21.928057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.352440, 41.461170, 22.065842>,  <34.161896, 41.340923, 22.148512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.352440, 41.461170, 22.065842>,  <34.670010, 41.661579, 21.928057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352440, 41.461170, 22.065842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176956, 0.351606, 0.919272,
		-0.581690, 0.790791, -0.190491,
		-0.793929, -0.501023, 0.344460,
		34.114262, 41.310863, 22.169180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343678, 42.170284, 22.308126>,  <34.670010, 41.661579, 21.928057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343678, 42.170284, 22.308126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.248459, 41.800087, 22.425974>,  <34.191326, 41.577969, 22.496683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.248459, 41.800087, 22.425974>,  <34.343678, 42.170284, 22.308126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248459, 41.800087, 22.425974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300564, 0.218254, 0.928454,
		-0.923577, 0.309569, 0.226214,
		-0.238048, -0.925490, 0.294620,
		34.177044, 41.522438, 22.514360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057472, 42.308048, 22.948502>,  <34.343678, 42.170284, 22.308126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057472, 42.308048, 22.948502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.123417, 41.913528, 22.950693>,  <34.162983, 41.676815, 22.952009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.123417, 41.913528, 22.950693>,  <34.057472, 42.308048, 22.948502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123417, 41.913528, 22.950693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420268, 0.075273, 0.904272,
		-0.892298, -0.146778, 0.426921,
		0.164862, -0.986301, 0.005480,
		34.172874, 41.617638, 22.952337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665829, 41.893547, 23.478603>,  <34.057472, 42.308048, 22.948502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665829, 41.893547, 23.478603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.010323, 41.704979, 23.402668>,  <34.217018, 41.591839, 23.357107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.010323, 41.704979, 23.402668>,  <33.665829, 41.893547, 23.478603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010323, 41.704979, 23.402668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305170, 0.181023, 0.934934,
		-0.406378, -0.863132, 0.299766,
		0.861237, -0.471416, -0.189838,
		34.268692, 41.563553, 23.345716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077564, 41.860626, 23.864317>,  <33.665829, 41.893547, 23.478603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077564, 41.860626, 23.864317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844494, 42.116005, 24.065460>,  <32.704651, 42.269234, 24.186146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844494, 42.116005, 24.065460>,  <33.077564, 41.860626, 23.864317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844494, 42.116005, 24.065460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479657, 0.229328, -0.846958,
		-0.656060, -0.734704, 0.172612,
		-0.582679, 0.638450, 0.502859,
		32.669689, 42.307541, 24.216318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400982, 41.545689, 23.666538>,  <33.077564, 41.860626, 23.864317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400982, 41.545689, 23.666538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.430290, 41.928410, 23.779074>,  <32.447876, 42.158043, 23.846596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.430290, 41.928410, 23.779074>,  <32.400982, 41.545689, 23.666538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430290, 41.928410, 23.779074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341361, 0.289120, -0.894361,
		-0.937072, -0.030506, 0.347802,
		0.073273, 0.956807, 0.281340,
		32.452271, 42.215450, 23.863476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848816, 41.740299, 23.337616>,  <32.400982, 41.545689, 23.666538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848816, 41.740299, 23.337616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062916, 42.065304, 23.429998>,  <32.191376, 42.260307, 23.485428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062916, 42.065304, 23.429998>,  <31.848816, 41.740299, 23.337616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062916, 42.065304, 23.429998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167108, 0.369870, -0.913931,
		-0.828000, 0.450586, 0.333749,
		0.535249, 0.812507, 0.230956,
		32.223492, 42.309055, 23.499285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424208, 42.420750, 23.122032>,  <31.848816, 41.740299, 23.337616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424208, 42.420750, 23.122032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.816177, 42.499588, 23.134016>,  <32.051361, 42.546890, 23.141207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.816177, 42.499588, 23.134016>,  <31.424208, 42.420750, 23.122032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816177, 42.499588, 23.134016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049968, 0.388295, -0.920179,
		-0.192998, 0.900211, 0.390349,
		0.979926, 0.197097, 0.029959,
		32.110157, 42.558716, 23.143003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391115, 43.017746, 22.832981>,  <31.424208, 42.420750, 23.122032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391115, 43.017746, 22.832981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.764301, 42.875126, 22.813175>,  <31.988213, 42.789555, 22.801292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.764301, 42.875126, 22.813175>,  <31.391115, 43.017746, 22.832981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764301, 42.875126, 22.813175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002228, 0.143266, -0.989682,
		0.359960, 0.923228, 0.134456,
		0.932965, -0.356546, -0.049513,
		32.044189, 42.768162, 22.798321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679348, 43.457779, 22.319138>,  <31.391115, 43.017746, 22.832981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679348, 43.457779, 22.319138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954250, 43.170536, 22.362957>,  <32.119190, 42.998192, 22.389248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954250, 43.170536, 22.362957>,  <31.679348, 43.457779, 22.319138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954250, 43.170536, 22.362957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101358, -0.054533, -0.993354,
		0.719309, 0.693792, 0.035307,
		0.687256, -0.718108, 0.109547,
		32.160427, 42.955105, 22.395821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210770, 43.690197, 21.952785>,  <31.679348, 43.457779, 22.319138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210770, 43.690197, 21.952785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.270512, 43.296078, 21.985960>,  <32.306355, 43.059605, 22.005865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.270512, 43.296078, 21.985960>,  <32.210770, 43.690197, 21.952785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270512, 43.296078, 21.985960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068191, -0.093943, -0.993239,
		0.986430, 0.142687, -0.081219,
		0.149352, -0.985299, 0.082939,
		32.315319, 43.000488, 22.010841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616493, 43.564068, 21.408617>,  <32.210770, 43.690197, 21.952785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616493, 43.564068, 21.408617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.450172, 43.211014, 21.496313>,  <32.350380, 42.999180, 21.548931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.450172, 43.211014, 21.496313>,  <32.616493, 43.564068, 21.408617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450172, 43.211014, 21.496313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101512, -0.194519, -0.975632,
		0.903774, -0.427921, -0.008717,
		-0.415798, -0.882636, 0.219241,
		32.325432, 42.946224, 21.562086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864983, 43.058434, 20.863113>,  <32.616493, 43.564068, 21.408617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864983, 43.058434, 20.863113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.545460, 42.892883, 21.037752>,  <32.353745, 42.793552, 21.142536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.545460, 42.892883, 21.037752>,  <32.864983, 43.058434, 20.863113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545460, 42.892883, 21.037752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315330, -0.329999, -0.889757,
		0.512324, -0.848415, 0.133098,
		-0.798806, -0.413874, 0.436598,
		32.305817, 42.768723, 21.168732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742832, 42.367146, 20.561712>,  <32.864983, 43.058434, 20.863113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742832, 42.367146, 20.561712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.387199, 42.484970, 20.701862>,  <32.173820, 42.555664, 20.785952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.387199, 42.484970, 20.701862>,  <32.742832, 42.367146, 20.561712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387199, 42.484970, 20.701862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426993, -0.257889, -0.866701,
		-0.164935, -0.920179, 0.355059,
		-0.889086, 0.294557, 0.350375,
		32.120472, 42.573338, 20.806974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216629, 41.820183, 20.422550>,  <32.742832, 42.367146, 20.561712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216629, 41.820183, 20.422550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994722, 42.145710, 20.491756>,  <31.861578, 42.341026, 20.533281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994722, 42.145710, 20.491756>,  <32.216629, 41.820183, 20.422550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994722, 42.145710, 20.491756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596737, -0.244286, -0.764349,
		-0.579775, -0.527282, 0.621157,
		-0.554767, 0.813817, 0.173017,
		31.828293, 42.389854, 20.543661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535711, 41.567589, 20.401787>,  <32.216629, 41.820183, 20.422550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535711, 41.567589, 20.401787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515068, 41.961975, 20.338282>,  <31.502682, 42.198608, 20.300179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515068, 41.961975, 20.338282>,  <31.535711, 41.567589, 20.401787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515068, 41.961975, 20.338282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556859, -0.160376, -0.814977,
		-0.829002, 0.046348, 0.557322,
		-0.051608, 0.985967, -0.158762,
		31.499586, 42.257767, 20.290653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844404, 41.749092, 20.465321>,  <31.535711, 41.567589, 20.401787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844404, 41.749092, 20.465321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.038330, 42.018814, 20.242514>,  <31.154686, 42.180649, 20.108829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.038330, 42.018814, 20.242514>,  <30.844404, 41.749092, 20.465321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038330, 42.018814, 20.242514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411827, -0.385854, -0.825540,
		-0.771593, 0.629628, 0.090630,
		0.484813, 0.674304, -0.557019,
		31.183773, 42.221104, 20.075407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197344, 41.601826, 20.753895>,  <30.844404, 41.749092, 20.465321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197344, 41.601826, 20.753895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821930, 41.612103, 20.891584>,  <29.596682, 41.618267, 20.974199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821930, 41.612103, 20.891584>,  <30.197344, 41.601826, 20.753895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821930, 41.612103, 20.891584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228612, -0.700910, 0.675619,
		0.258627, 0.712787, 0.651956,
		-0.938535, 0.025688, 0.344226,
		29.540369, 41.619808, 20.994852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213776, 41.852970, 21.480598>,  <30.197344, 41.601826, 20.753895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213776, 41.852970, 21.480598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889622, 41.633389, 21.398693>,  <29.695129, 41.501640, 21.349550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889622, 41.633389, 21.398693>,  <30.213776, 41.852970, 21.480598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889622, 41.633389, 21.398693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176738, -0.562247, 0.807862,
		-0.558605, 0.618491, 0.552657,
		-0.810385, -0.548951, -0.204763,
		29.646505, 41.468704, 21.337263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778042, 41.817482, 22.135183>,  <30.213776, 41.852970, 21.480598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778042, 41.817482, 22.135183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632008, 41.514381, 21.918840>,  <29.544388, 41.332520, 21.789036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632008, 41.514381, 21.918840>,  <29.778042, 41.817482, 22.135183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632008, 41.514381, 21.918840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155866, -0.622508, 0.766936,
		-0.917834, 0.195695, 0.345376,
		-0.365085, -0.757752, -0.540856,
		29.522482, 41.287056, 21.756584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446974, 41.388954, 22.668173>,  <29.778042, 41.817482, 22.135183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446974, 41.388954, 22.668173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481348, 41.147408, 22.351196>,  <29.501972, 41.002480, 22.161011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481348, 41.147408, 22.351196>,  <29.446974, 41.388954, 22.668173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481348, 41.147408, 22.351196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187666, -0.771335, 0.608132,
		-0.978467, -0.200973, 0.047040,
		0.085935, -0.603865, -0.792441,
		29.507128, 40.966248, 22.113464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066202, 40.822121, 22.844019>,  <29.446974, 41.388954, 22.668173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066202, 40.822121, 22.844019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345753, 40.714779, 22.578823>,  <29.513483, 40.650372, 22.419706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345753, 40.714779, 22.578823>,  <29.066202, 40.822121, 22.844019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345753, 40.714779, 22.578823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238890, -0.786133, 0.570024,
		-0.674168, -0.556758, -0.485302,
		0.698877, -0.268358, -0.662989,
		29.555416, 40.634270, 22.379927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114161, 40.103394, 22.898245>,  <29.066202, 40.822121, 22.844019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114161, 40.103394, 22.898245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459436, 40.206913, 22.724842>,  <29.666601, 40.269024, 22.620800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459436, 40.206913, 22.724842>,  <29.114161, 40.103394, 22.898245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459436, 40.206913, 22.724842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496206, -0.593327, 0.633831,
		-0.093178, -0.762225, -0.640571,
		0.863190, 0.258796, -0.433506,
		29.718393, 40.284554, 22.594790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504566, 39.435669, 22.896307>,  <29.114161, 40.103394, 22.898245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504566, 39.435669, 22.896307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770002, 39.727619, 22.830671>,  <29.929264, 39.902790, 22.791290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770002, 39.727619, 22.830671>,  <29.504566, 39.435669, 22.896307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770002, 39.727619, 22.830671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667098, -0.478067, 0.571342,
		0.338563, -0.488603, -0.804140,
		0.663593, 0.729876, -0.164091,
		29.969080, 39.946583, 22.781445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227669, 39.123127, 22.899286>,  <29.504566, 39.435669, 22.896307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227669, 39.123127, 22.899286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275375, 39.517735, 22.944101>,  <30.303999, 39.754501, 22.970991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275375, 39.517735, 22.944101>,  <30.227669, 39.123127, 22.899286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275375, 39.517735, 22.944101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512369, -0.157811, 0.844141,
		0.850443, -0.043273, -0.524284,
		0.119267, 0.986521, 0.112038,
		30.311155, 39.813690, 22.977713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691063, 38.714516, 22.597210>,  <30.227669, 39.123127, 22.899286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691063, 38.714516, 22.597210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704021, 38.319954, 22.532757>,  <30.711796, 38.083218, 22.494085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704021, 38.319954, 22.532757>,  <30.691063, 38.714516, 22.597210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704021, 38.319954, 22.532757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463448, 0.128015, -0.876829,
		0.885532, 0.103082, -0.452998,
		0.032394, -0.986401, -0.161135,
		30.713739, 38.024033, 22.484417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964306, 38.707657, 21.996920>,  <30.691063, 38.714516, 22.597210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964306, 38.707657, 21.996920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754843, 38.375988, 22.075148>,  <30.629164, 38.176987, 22.122086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754843, 38.375988, 22.075148>,  <30.964306, 38.707657, 21.996920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754843, 38.375988, 22.075148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547206, 0.151425, -0.823187,
		0.652952, -0.538088, -0.533025,
		-0.523660, -0.829176, 0.195572,
		30.597744, 38.127235, 22.133820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907576, 38.444138, 21.370733>,  <30.964306, 38.707657, 21.996920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907576, 38.444138, 21.370733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624146, 38.250103, 21.575716>,  <30.454086, 38.133682, 21.698706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624146, 38.250103, 21.575716>,  <30.907576, 38.444138, 21.370733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624146, 38.250103, 21.575716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610950, 0.058363, -0.789515,
		0.353073, -0.872517, -0.337718,
		-0.708576, -0.485085, 0.512458,
		30.411573, 38.104576, 21.729454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708397, 37.955151, 20.860065>,  <30.907576, 38.444138, 21.370733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708397, 37.955151, 20.860065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415321, 37.996922, 21.129068>,  <30.239477, 38.021984, 21.290470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415321, 37.996922, 21.129068>,  <30.708397, 37.955151, 20.860065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415321, 37.996922, 21.129068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669583, 0.066197, -0.739781,
		-0.121771, -0.992327, 0.021421,
		-0.732687, 0.104427, 0.672506,
		30.195515, 38.028248, 21.330820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201296, 37.429039, 20.726269>,  <30.708397, 37.955151, 20.860065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201296, 37.429039, 20.726269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007956, 37.724369, 20.914415>,  <29.891951, 37.901566, 21.027304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007956, 37.724369, 20.914415>,  <30.201296, 37.429039, 20.726269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007956, 37.724369, 20.914415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699626, -0.002826, -0.714504,
		-0.526207, -0.674439, 0.517918,
		-0.483352, 0.738325, 0.470368,
		29.862949, 37.945866, 21.055527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578300, 37.172813, 20.722281>,  <30.201296, 37.429039, 20.726269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578300, 37.172813, 20.722281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.549290, 37.562855, 20.806105>,  <29.531883, 37.796879, 20.856400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.549290, 37.562855, 20.806105>,  <29.578300, 37.172813, 20.722281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549290, 37.562855, 20.806105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760841, 0.081761, -0.643767,
		-0.644872, -0.206133, 0.735968,
		-0.072528, 0.975102, 0.209560,
		29.527531, 37.855385, 20.868973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829201, 37.294262, 20.676804>,  <29.578300, 37.172813, 20.722281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829201, 37.294262, 20.676804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012522, 37.649296, 20.658274>,  <29.122515, 37.862316, 20.647156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012522, 37.649296, 20.658274>,  <28.829201, 37.294262, 20.676804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012522, 37.649296, 20.658274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614159, 0.278580, -0.738377,
		-0.642470, 0.366852, 0.672795,
		0.458302, 0.887588, -0.046326,
		29.150013, 37.915573, 20.644377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229881, 37.898586, 20.810642>,  <28.829201, 37.294262, 20.676804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229881, 37.898586, 20.810642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520226, 38.064552, 20.591198>,  <28.694431, 38.164131, 20.459532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520226, 38.064552, 20.591198>,  <28.229881, 37.898586, 20.810642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520226, 38.064552, 20.591198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671421, 0.254160, -0.696130,
		-0.149398, 0.873642, 0.463066,
		0.725861, 0.414913, -0.548610,
		28.737984, 38.189026, 20.426615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111713, 38.630375, 20.633730>,  <28.229881, 37.898586, 20.810642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111713, 38.630375, 20.633730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349895, 38.467251, 20.356855>,  <28.492805, 38.369377, 20.190731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349895, 38.467251, 20.356855>,  <28.111713, 38.630375, 20.633730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349895, 38.467251, 20.356855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722265, 0.105552, -0.683515,
		0.351805, 0.906946, -0.231695,
		0.595455, -0.407809, -0.692188,
		28.528532, 38.344910, 20.149199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.159885, 36.088127, 33.056358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297905, 35.847401, 32.768257>,  <38.380714, 35.702965, 32.595398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297905, 35.847401, 32.768257>,  <38.159885, 36.088127, 33.056358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297905, 35.847401, 32.768257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938161, -0.198056, -0.283952,
		0.028236, 0.773688, -0.632937,
		0.345047, -0.601814, -0.720252,
		38.401421, 35.666855, 32.552181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917713, 36.316677, 32.390816>,  <38.159885, 36.088127, 33.056358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917713, 36.316677, 32.390816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010399, 35.931793, 32.333611>,  <38.066010, 35.700863, 32.299286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010399, 35.931793, 32.333611>,  <37.917713, 36.316677, 32.390816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010399, 35.931793, 32.333611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819028, -0.113650, -0.562385,
		0.524881, 0.247448, -0.814414,
		0.231719, -0.962213, -0.143014,
		38.079914, 35.643131, 32.290707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094296, 36.272427, 31.714933>,  <37.917713, 36.316677, 32.390816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094296, 36.272427, 31.714933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953648, 35.916073, 31.829952>,  <37.869259, 35.702259, 31.898964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953648, 35.916073, 31.829952>,  <38.094296, 36.272427, 31.714933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953648, 35.916073, 31.829952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751845, 0.085733, -0.653742,
		0.557759, -0.446058, -0.699955,
		-0.351616, -0.890889, 0.287548,
		37.848164, 35.648808, 31.916216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678566, 36.132339, 31.190985>,  <38.094296, 36.272427, 31.714933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678566, 36.132339, 31.190985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565498, 35.851295, 31.452192>,  <37.497658, 35.682671, 31.608917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565498, 35.851295, 31.452192>,  <37.678566, 36.132339, 31.190985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565498, 35.851295, 31.452192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808919, -0.191260, -0.555941,
		0.515507, -0.685388, -0.514292,
		-0.282671, -0.702611, 0.653019,
		37.480698, 35.640511, 31.648098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484745, 35.605209, 30.824951>,  <37.678566, 36.132339, 31.190985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484745, 35.605209, 30.824951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273106, 35.550411, 31.159924>,  <37.146122, 35.517532, 31.360907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273106, 35.550411, 31.159924>,  <37.484745, 35.605209, 30.824951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273106, 35.550411, 31.159924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815773, -0.189566, -0.546424,
		0.233605, -0.972264, -0.011457,
		-0.529097, -0.136994, 0.837430,
		37.114376, 35.509312, 31.411152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178749, 34.956966, 30.861767>,  <37.484745, 35.605209, 30.824951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178749, 34.956966, 30.861767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950981, 35.188328, 31.095423>,  <36.814320, 35.327145, 31.235617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950981, 35.188328, 31.095423>,  <37.178749, 34.956966, 30.861767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950981, 35.188328, 31.095423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817541, -0.324142, -0.475982,
		-0.085963, -0.748589, 0.657438,
		-0.569418, 0.578399, 0.584138,
		36.780155, 35.361847, 31.270664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566513, 34.543701, 31.015425>,  <37.178749, 34.956966, 30.861767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566513, 34.543701, 31.015425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461826, 34.922127, 31.091818>,  <36.399014, 35.149181, 31.137653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461826, 34.922127, 31.091818>,  <36.566513, 34.543701, 31.015425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461826, 34.922127, 31.091818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839224, -0.125338, -0.529145,
		-0.476666, -0.298760, 0.826760,
		-0.261712, 0.946062, 0.190982,
		36.383312, 35.205944, 31.149113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917500, 34.406303, 31.110649>,  <36.566513, 34.543701, 31.015425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917500, 34.406303, 31.110649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932667, 34.803936, 31.069918>,  <35.941769, 35.042515, 31.045479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932667, 34.803936, 31.069918>,  <35.917500, 34.406303, 31.110649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932667, 34.803936, 31.069918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859986, -0.019431, -0.509948,
		-0.508907, 0.106911, 0.854157,
		0.037922, 0.994079, -0.101831,
		35.944042, 35.102161, 31.039368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257500, 34.611248, 31.219477>,  <35.917500, 34.406303, 31.110649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257500, 34.611248, 31.219477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430271, 34.893265, 30.994495>,  <35.533936, 35.062473, 30.859507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430271, 34.893265, 30.994495>,  <35.257500, 34.611248, 31.219477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430271, 34.893265, 30.994495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832003, 0.070748, -0.550242,
		-0.348152, 0.705626, 0.617156,
		0.431928, 0.705043, -0.562452,
		35.559849, 35.104778, 30.825760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761936, 35.204350, 31.113544>,  <35.257500, 34.611248, 31.219477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761936, 35.204350, 31.113544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029942, 35.193317, 30.816811>,  <35.190746, 35.186699, 30.638771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029942, 35.193317, 30.816811>,  <34.761936, 35.204350, 31.113544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029942, 35.193317, 30.816811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740867, 0.038186, -0.670565,
		0.046821, 0.998890, 0.005153,
		0.670017, -0.027579, -0.741833,
		35.230946, 35.185043, 30.594261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564617, 35.747738, 30.725004>,  <34.761936, 35.204350, 31.113544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564617, 35.747738, 30.725004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804985, 35.568897, 30.459976>,  <34.949207, 35.461594, 30.300961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804985, 35.568897, 30.459976>,  <34.564617, 35.747738, 30.725004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804985, 35.568897, 30.459976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640111, 0.227256, -0.733903,
		0.478700, 0.865134, -0.149630,
		0.600920, -0.447099, -0.662569,
		34.985260, 35.434769, 30.261206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527424, 36.208824, 30.182878>,  <34.564617, 35.747738, 30.725004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527424, 36.208824, 30.182878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640823, 35.862404, 30.018156>,  <34.708862, 35.654552, 29.919323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640823, 35.862404, 30.018156>,  <34.527424, 36.208824, 30.182878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640823, 35.862404, 30.018156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627594, 0.157139, -0.762518,
		0.725090, 0.474620, -0.498979,
		0.283497, -0.866050, -0.411808,
		34.725872, 35.602589, 29.894613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826458, 36.894173, 30.043539>,  <34.527424, 36.208824, 30.182878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826458, 36.894173, 30.043539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569695, 37.179127, 30.157000>,  <34.415634, 37.350098, 30.225077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569695, 37.179127, 30.157000>,  <34.826458, 36.894173, 30.043539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569695, 37.179127, 30.157000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464860, 0.067362, 0.882818,
		0.609798, 0.698550, -0.374400,
		-0.641912, 0.712384, 0.283651,
		34.377121, 37.392841, 30.242094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227066, 37.412075, 30.314592>,  <34.826458, 36.894173, 30.043539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227066, 37.412075, 30.314592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859104, 37.436172, 30.469587>,  <34.638329, 37.450630, 30.562584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859104, 37.436172, 30.469587>,  <35.227066, 37.412075, 30.314592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859104, 37.436172, 30.469587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384173, -0.059735, 0.921327,
		0.078647, 0.996395, 0.031807,
		-0.919905, 0.060240, 0.387486,
		34.583134, 37.454247, 30.585833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281170, 37.821625, 30.934898>,  <35.227066, 37.412075, 30.314592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281170, 37.821625, 30.934898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913692, 37.677631, 30.999908>,  <34.693207, 37.591236, 31.038914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913692, 37.677631, 30.999908>,  <35.281170, 37.821625, 30.934898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913692, 37.677631, 30.999908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196178, -0.058747, 0.978807,
		-0.342809, 0.931106, 0.124592,
		-0.918693, -0.359986, 0.162523,
		34.638084, 37.569637, 31.048666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855530, 38.245975, 31.371025>,  <35.281170, 37.821625, 30.934898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855530, 38.245975, 31.371025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725788, 37.873680, 31.438574>,  <34.647942, 37.650303, 31.479103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725788, 37.873680, 31.438574>,  <34.855530, 38.245975, 31.371025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725788, 37.873680, 31.438574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225337, 0.097361, 0.969404,
		-0.918704, 0.352484, 0.178150,
		-0.324355, -0.930739, 0.168874,
		34.628483, 37.594460, 31.489237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364113, 38.227379, 31.928226>,  <34.855530, 38.245975, 31.371025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364113, 38.227379, 31.928226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515312, 37.857162, 31.919453>,  <34.606033, 37.635033, 31.914188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515312, 37.857162, 31.919453>,  <34.364113, 38.227379, 31.928226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515312, 37.857162, 31.919453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064408, 0.002653, 0.997920,
		-0.923561, -0.378629, 0.060615,
		0.378003, -0.925545, -0.021936,
		34.628712, 37.579498, 31.912872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200947, 37.977070, 32.553535>,  <34.364113, 38.227379, 31.928226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200947, 37.977070, 32.553535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442314, 37.674805, 32.451664>,  <34.587135, 37.493446, 32.390541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442314, 37.674805, 32.451664>,  <34.200947, 37.977070, 32.553535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442314, 37.674805, 32.451664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408527, 0.018664, 0.912556,
		-0.684830, -0.654696, 0.319970,
		0.603419, -0.755662, -0.254679,
		34.623341, 37.448105, 32.375259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193539, 37.444618, 33.108517>,  <34.200947, 37.977070, 32.553535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193539, 37.444618, 33.108517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535671, 37.423939, 32.902317>,  <34.740952, 37.411530, 32.778599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535671, 37.423939, 32.902317>,  <34.193539, 37.444618, 33.108517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535671, 37.423939, 32.902317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512754, -0.057859, 0.856584,
		-0.074122, -0.996984, -0.022972,
		0.855330, -0.051713, -0.515496,
		34.792271, 37.408428, 32.747669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478798, 36.831448, 33.428951>,  <34.193539, 37.444618, 33.108517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478798, 36.831448, 33.428951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769779, 37.023918, 33.233288>,  <34.944370, 37.139400, 33.115891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769779, 37.023918, 33.233288>,  <34.478798, 36.831448, 33.428951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769779, 37.023918, 33.233288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552223, 0.012557, 0.833602,
		0.407255, -0.876532, -0.256584,
		0.727457, 0.481180, -0.489155,
		34.988018, 37.168274, 33.086540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159927, 36.432968, 33.452805>,  <34.478798, 36.831448, 33.428951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159927, 36.432968, 33.452805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214928, 36.824696, 33.393444>,  <35.247929, 37.059734, 33.357826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214928, 36.824696, 33.393444>,  <35.159927, 36.432968, 33.452805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214928, 36.824696, 33.393444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337394, 0.094554, 0.936603,
		0.931267, -0.178855, -0.317416,
		0.137503, 0.979321, -0.148400,
		35.256180, 37.118492, 33.348923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714180, 36.577881, 33.915176>,  <35.159927, 36.432968, 33.452805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714180, 36.577881, 33.915176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569374, 36.944088, 33.845013>,  <35.482491, 37.163815, 33.802914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569374, 36.944088, 33.845013>,  <35.714180, 36.577881, 33.915176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569374, 36.944088, 33.845013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209642, 0.263309, 0.941657,
		0.908293, 0.304120, -0.287253,
		-0.362013, 0.915521, -0.175406,
		35.460770, 37.218746, 33.792393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203800, 37.007870, 34.355713>,  <35.714180, 36.577881, 33.915176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203800, 37.007870, 34.355713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882206, 37.231602, 34.274971>,  <35.689247, 37.365841, 34.226524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882206, 37.231602, 34.274971>,  <36.203800, 37.007870, 34.355713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882206, 37.231602, 34.274971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019695, 0.314227, 0.949144,
		0.594316, 0.767078, -0.241620,
		-0.803990, 0.559333, -0.201858,
		35.641010, 37.399403, 34.214413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301491, 37.718506, 34.535564>,  <36.203800, 37.007870, 34.355713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301491, 37.718506, 34.535564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904747, 37.674381, 34.561008>,  <35.666702, 37.647907, 34.576275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904747, 37.674381, 34.561008>,  <36.301491, 37.718506, 34.535564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904747, 37.674381, 34.561008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018486, 0.369511, 0.929042,
		-0.125986, 0.922655, -0.364464,
		-0.991860, -0.110309, 0.063610,
		35.607189, 37.641289, 34.580090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051506, 38.298885, 34.969910>,  <36.301491, 37.718506, 34.535564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051506, 38.298885, 34.969910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734451, 38.055016, 34.971626>,  <35.544216, 37.908695, 34.972656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734451, 38.055016, 34.971626>,  <36.051506, 38.298885, 34.969910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734451, 38.055016, 34.971626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196783, 0.262494, 0.944655,
		-0.577060, 0.747926, -0.328037,
		-0.792640, -0.609675, 0.004295,
		35.496658, 37.872112, 34.972916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413395, 38.672230, 35.178043>,  <36.051506, 38.298885, 34.969910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413395, 38.672230, 35.178043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395386, 38.284790, 35.275848>,  <35.384583, 38.052326, 35.334534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395386, 38.284790, 35.275848>,  <35.413395, 38.672230, 35.178043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395386, 38.284790, 35.275848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401409, 0.241676, 0.883438,
		-0.914791, -0.058379, -0.399685,
		-0.045020, -0.968599, 0.244517,
		35.381878, 37.994209, 35.349205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092430, 38.887260, 34.498440>,  <35.413395, 38.672230, 35.178043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092430, 38.887260, 34.498440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252983, 39.250889, 34.543129>,  <35.349316, 39.469067, 34.569942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252983, 39.250889, 34.543129>,  <35.092430, 38.887260, 34.498440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252983, 39.250889, 34.543129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844030, 0.414487, -0.340315,
		-0.355680, 0.042297, 0.933650,
		0.401380, 0.909072, 0.111725,
		35.373398, 39.523609, 34.576645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629879, 39.330181, 34.974609>,  <35.092430, 38.887260, 34.498440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629879, 39.330181, 34.974609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858543, 39.532421, 34.716129>,  <34.995743, 39.653767, 34.561043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858543, 39.532421, 34.716129>,  <34.629879, 39.330181, 34.974609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858543, 39.532421, 34.716129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818349, 0.294458, -0.493557,
		-0.059265, 0.810962, 0.582090,
		0.571657, 0.505603, -0.646199,
		35.030041, 39.684101, 34.522270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399353, 40.087395, 34.774433>,  <34.629879, 39.330181, 34.974609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399353, 40.087395, 34.774433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602131, 39.977318, 34.447685>,  <34.723797, 39.911270, 34.251637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602131, 39.977318, 34.447685>,  <34.399353, 40.087395, 34.774433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602131, 39.977318, 34.447685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577540, 0.595059, -0.558885,
		0.639886, 0.755099, 0.142729,
		0.506945, -0.275191, -0.816870,
		34.754215, 39.894760, 34.202625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831806, 40.672726, 34.447906>,  <34.399353, 40.087395, 34.774433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831806, 40.672726, 34.447906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780876, 40.391518, 34.168034>,  <34.750317, 40.222794, 34.000111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780876, 40.391518, 34.168034>,  <34.831806, 40.672726, 34.447906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780876, 40.391518, 34.168034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213987, 0.708282, -0.672715,
		0.968503, 0.064070, -0.240618,
		-0.127324, -0.703016, -0.699684,
		34.742680, 40.180614, 33.958130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198524, 40.897442, 33.788383>,  <34.831806, 40.672726, 34.447906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198524, 40.897442, 33.788383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932106, 40.624454, 33.667969>,  <34.772255, 40.460663, 33.595722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932106, 40.624454, 33.667969>,  <35.198524, 40.897442, 33.788383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932106, 40.624454, 33.667969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225170, 0.568710, -0.791118,
		0.711115, -0.459135, -0.532457,
		-0.666043, -0.682469, -0.301035,
		34.732292, 40.419712, 33.577660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270153, 40.952942, 33.071938>,  <35.198524, 40.897442, 33.788383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270153, 40.952942, 33.071938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915176, 40.798527, 33.172672>,  <34.702190, 40.705875, 33.233112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915176, 40.798527, 33.172672>,  <35.270153, 40.952942, 33.071938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915176, 40.798527, 33.172672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426241, 0.479413, -0.767126,
		0.175408, -0.788122, -0.589997,
		-0.887441, -0.386040, 0.251837,
		34.648945, 40.682713, 33.248222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110519, 40.650845, 32.429543>,  <35.270153, 40.952942, 33.071938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110519, 40.650845, 32.429543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758530, 40.663990, 32.619095>,  <34.547337, 40.671879, 32.732826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758530, 40.663990, 32.619095>,  <35.110519, 40.650845, 32.429543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758530, 40.663990, 32.619095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455469, 0.224878, -0.861381,
		-0.134878, -0.973832, -0.182916,
		-0.879975, 0.032869, 0.473881,
		34.494537, 40.673851, 32.761261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636642, 40.182514, 31.961058>,  <35.110519, 40.650845, 32.429543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636642, 40.182514, 31.961058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437309, 40.451569, 32.179863>,  <34.317707, 40.612999, 32.311146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437309, 40.451569, 32.179863>,  <34.636642, 40.182514, 31.961058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437309, 40.451569, 32.179863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491090, 0.300962, -0.817467,
		-0.714487, -0.676007, 0.180343,
		-0.498337, 0.672634, 0.547014,
		34.287807, 40.653358, 32.343967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006607, 40.054710, 31.826294>,  <34.636642, 40.182514, 31.961058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006607, 40.054710, 31.826294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019596, 40.433289, 31.954782>,  <34.027390, 40.660435, 32.031876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019596, 40.433289, 31.954782>,  <34.006607, 40.054710, 31.826294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019596, 40.433289, 31.954782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530622, 0.288684, -0.796933,
		-0.846986, -0.144568, 0.511580,
		0.032474, 0.946447, 0.321223,
		34.029339, 40.717224, 32.051147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302708, 40.424961, 31.742250>,  <34.006607, 40.054710, 31.826294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302708, 40.424961, 31.742250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534298, 40.748997, 31.779230>,  <33.673252, 40.943417, 31.801418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534298, 40.748997, 31.779230>,  <33.302708, 40.424961, 31.742250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534298, 40.748997, 31.779230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396177, 0.378612, -0.836479,
		-0.712625, 0.447672, 0.540144,
		0.578973, 0.810088, 0.092451,
		33.707989, 40.992023, 31.806965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913685, 41.077473, 31.798857>,  <33.302708, 40.424961, 31.742250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913685, 41.077473, 31.798857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264439, 41.175575, 31.633484>,  <33.474892, 41.234436, 31.534260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264439, 41.175575, 31.633484>,  <32.913685, 41.077473, 31.798857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264439, 41.175575, 31.633484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475309, 0.313879, -0.821925,
		-0.071815, 0.917240, 0.391808,
		0.876883, 0.245257, -0.413431,
		33.527504, 41.249153, 31.509455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712624, 41.579906, 31.326963>,  <32.913685, 41.077473, 31.798857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712624, 41.579906, 31.326963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097389, 41.524555, 31.232664>,  <33.328247, 41.491344, 31.176085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097389, 41.524555, 31.232664>,  <32.712624, 41.579906, 31.326963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097389, 41.524555, 31.232664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189547, 0.283777, -0.939969,
		0.196972, 0.948853, 0.246740,
		0.961912, -0.138379, -0.235748,
		33.385963, 41.483040, 31.161940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974075, 42.215927, 31.017448>,  <32.712624, 41.579906, 31.326963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974075, 42.215927, 31.017448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196148, 41.913284, 30.879280>,  <33.329391, 41.731697, 30.796379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196148, 41.913284, 30.879280>,  <32.974075, 42.215927, 31.017448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196148, 41.913284, 30.879280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128550, 0.332256, -0.934388,
		0.821734, 0.563160, 0.087201,
		0.555182, -0.756609, -0.345420,
		33.362701, 41.686302, 30.775654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331062, 42.525127, 30.573483>,  <32.974075, 42.215927, 31.017448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331062, 42.525127, 30.573483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363697, 42.136955, 30.482609>,  <33.383278, 41.904053, 30.428083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363697, 42.136955, 30.482609>,  <33.331062, 42.525127, 30.573483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363697, 42.136955, 30.482609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067743, 0.222020, -0.972686,
		0.994362, 0.094746, -0.047626,
		0.081584, -0.970428, -0.227186,
		33.388172, 41.845825, 30.414454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775684, 42.526817, 30.043385>,  <33.331062, 42.525127, 30.573483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775684, 42.526817, 30.043385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.613575, 42.163315, 30.003555>,  <33.516308, 41.945213, 29.979658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.613575, 42.163315, 30.003555>,  <33.775684, 42.526817, 30.043385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613575, 42.163315, 30.003555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159880, 0.036784, -0.986451,
		0.900107, -0.415701, 0.130385,
		-0.405273, -0.908757, -0.099572,
		33.491993, 41.890686, 29.973684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254227, 42.166088, 29.698986>,  <33.775684, 42.526817, 30.043385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254227, 42.166088, 29.698986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902489, 41.988289, 29.630669>,  <33.691444, 41.881611, 29.589678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902489, 41.988289, 29.630669>,  <34.254227, 42.166088, 29.698986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902489, 41.988289, 29.630669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172935, 0.036075, -0.984272,
		0.443668, -0.895054, 0.045146,
		-0.879348, -0.444497, -0.170791,
		33.638683, 41.854939, 29.579432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344803, 41.978893, 29.048851>,  <34.254227, 42.166088, 29.698986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344803, 41.978893, 29.048851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951801, 41.919392, 29.093689>,  <33.716000, 41.883690, 29.120592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951801, 41.919392, 29.093689>,  <34.344803, 41.978893, 29.048851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951801, 41.919392, 29.093689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119012, 0.038428, -0.992149,
		0.143281, -0.988127, -0.055459,
		-0.982500, -0.148756, 0.112093,
		33.657051, 41.874767, 29.127317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179234, 41.446632, 28.591276>,  <34.344803, 41.978893, 29.048851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179234, 41.446632, 28.591276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828564, 41.628628, 28.653803>,  <33.618164, 41.737823, 28.691319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828564, 41.628628, 28.653803>,  <34.179234, 41.446632, 28.591276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828564, 41.628628, 28.653803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131143, 0.086612, -0.987573,
		-0.462872, -0.886276, -0.016261,
		-0.876670, 0.454988, 0.156319,
		33.565563, 41.765125, 28.700699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776745, 41.041611, 28.229540>,  <34.179234, 41.446632, 28.591276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776745, 41.041611, 28.229540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615238, 41.404182, 28.279108>,  <33.518333, 41.621727, 28.308849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615238, 41.404182, 28.279108>,  <33.776745, 41.041611, 28.229540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615238, 41.404182, 28.279108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241400, 0.025093, -0.970101,
		-0.882438, -0.421610, 0.208681,
		-0.403768, 0.906430, 0.123920,
		33.494106, 41.676113, 28.316284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191910, 40.903069, 27.697281>,  <33.776745, 41.041611, 28.229540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191910, 40.903069, 27.697281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217598, 41.293972, 27.778122>,  <33.233009, 41.528515, 27.826626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217598, 41.293972, 27.778122>,  <33.191910, 40.903069, 27.697281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217598, 41.293972, 27.778122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603573, 0.199316, -0.771993,
		-0.794717, -0.072407, 0.602646,
		0.064219, 0.977257, 0.202102,
		33.236862, 41.587151, 27.838753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476425, 41.248539, 27.641541>,  <33.191910, 40.903069, 27.697281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476425, 41.248539, 27.641541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769176, 41.518185, 27.601704>,  <32.944828, 41.679974, 27.577803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769176, 41.518185, 27.601704>,  <32.476425, 41.248539, 27.641541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769176, 41.518185, 27.601704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328033, 0.220434, -0.918588,
		-0.597281, 0.704966, 0.382464,
		0.731881, 0.674116, -0.099591,
		32.988739, 41.720421, 27.571827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207523, 41.864201, 27.435757>,  <32.476425, 41.248539, 27.641541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207523, 41.864201, 27.435757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589436, 41.911037, 27.326447>,  <32.818584, 41.939140, 27.260860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589436, 41.911037, 27.326447>,  <32.207523, 41.864201, 27.435757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589436, 41.911037, 27.326447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293011, 0.214966, -0.931630,
		-0.050339, 0.969577, 0.239555,
		0.954783, 0.117090, -0.273275,
		32.875870, 41.946163, 27.244465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149952, 42.455814, 27.057636>,  <32.207523, 41.864201, 27.435757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149952, 42.455814, 27.057636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505432, 42.313808, 26.941587>,  <32.718719, 42.228603, 26.871958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505432, 42.313808, 26.941587>,  <32.149952, 42.455814, 27.057636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505432, 42.313808, 26.941587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229997, 0.202195, -0.951955,
		0.396621, 0.912732, 0.098038,
		0.888703, -0.355017, -0.290121,
		32.772041, 42.207302, 26.854551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442902, 42.931358, 26.610666>,  <32.149952, 42.455814, 27.057636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442902, 42.931358, 26.610666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657581, 42.608177, 26.513374>,  <32.786388, 42.414268, 26.455000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657581, 42.608177, 26.513374>,  <32.442902, 42.931358, 26.610666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657581, 42.608177, 26.513374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254876, 0.119559, -0.959554,
		0.804355, 0.576989, -0.141760,
		0.536704, -0.807954, -0.243229,
		32.818592, 42.365791, 26.440405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887623, 43.143089, 26.070538>,  <32.442902, 42.931358, 26.610666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887623, 43.143089, 26.070538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894466, 42.747009, 26.015108>,  <32.898575, 42.509361, 25.981850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894466, 42.747009, 26.015108>,  <32.887623, 43.143089, 26.070538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894466, 42.747009, 26.015108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076594, 0.139486, -0.987257,
		0.996916, 0.006279, 0.078230,
		0.017111, -0.990204, -0.138575,
		32.899601, 42.449947, 25.973536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378609, 42.915058, 25.536766>,  <32.887623, 43.143089, 26.070538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378609, 42.915058, 25.536766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132053, 42.600143, 25.530483>,  <32.984119, 42.411194, 25.526714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132053, 42.600143, 25.530483>,  <33.378609, 42.915058, 25.536766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132053, 42.600143, 25.530483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027702, 0.041614, -0.998750,
		0.786955, -0.615182, -0.047460,
		-0.616388, -0.787286, -0.015706,
		32.947136, 42.363956, 25.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615089, 42.515556, 24.993952>,  <33.378609, 42.915058, 25.536766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615089, 42.515556, 24.993952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228004, 42.426350, 25.040920>,  <32.995754, 42.372826, 25.069101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228004, 42.426350, 25.040920>,  <33.615089, 42.515556, 24.993952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228004, 42.426350, 25.040920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131200, 0.047953, -0.990196,
		0.215205, -0.973633, -0.075665,
		-0.967716, -0.223022, 0.117421,
		32.937691, 42.359444, 25.076147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512817, 42.098286, 24.393522>,  <33.615089, 42.515556, 24.993952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512817, 42.098286, 24.393522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157440, 42.217018, 24.533560>,  <32.944214, 42.288258, 24.617582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157440, 42.217018, 24.533560>,  <33.512817, 42.098286, 24.393522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157440, 42.217018, 24.533560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354793, 0.039790, -0.934098,
		-0.291204, -0.954099, 0.069964,
		-0.888438, 0.296836, 0.350095,
		32.890907, 42.306068, 24.638588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994453, 41.644634, 24.143953>,  <33.512817, 42.098286, 24.393522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994453, 41.644634, 24.143953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296513, 41.479225, 23.940483>,  <34.477749, 41.379978, 23.818401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296513, 41.479225, 23.940483>,  <33.994453, 41.644634, 24.143953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296513, 41.479225, 23.940483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603747, 0.136364, 0.785426,
		-0.255430, -0.900222, 0.352641,
		0.755146, -0.413527, -0.508675,
		34.523056, 41.355167, 23.787880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287117, 41.056564, 24.506111>,  <33.994453, 41.644634, 24.143953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287117, 41.056564, 24.506111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583565, 41.208904, 24.284954>,  <34.761433, 41.300308, 24.152260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583565, 41.208904, 24.284954>,  <34.287117, 41.056564, 24.506111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583565, 41.208904, 24.284954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605924, -0.024783, 0.795137,
		0.289125, -0.924305, -0.249133,
		0.741123, 0.380850, -0.552893,
		34.805901, 41.323158, 24.119085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920021, 40.637104, 24.626581>,  <34.287117, 41.056564, 24.506111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920021, 40.637104, 24.626581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054508, 40.986549, 24.485865>,  <35.135201, 41.196217, 24.401434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054508, 40.986549, 24.485865>,  <34.920021, 40.637104, 24.626581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054508, 40.986549, 24.485865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777956, -0.047095, 0.626552,
		0.530797, -0.484334, -0.695467,
		0.336213, 0.873615, -0.351792,
		35.155373, 41.248634, 24.380327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690155, 40.496311, 24.503078>,  <34.920021, 40.637104, 24.626581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690155, 40.496311, 24.503078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580734, 40.876984, 24.558905>,  <35.515083, 41.105385, 24.592400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580734, 40.876984, 24.558905>,  <35.690155, 40.496311, 24.503078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580734, 40.876984, 24.558905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772629, 0.130986, 0.621197,
		0.572899, 0.277760, -0.771126,
		-0.273551, 0.951678, 0.139564,
		35.498669, 41.162487, 24.600773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367069, 40.754726, 24.462202>,  <35.690155, 40.496311, 24.503078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367069, 40.754726, 24.462202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158287, 41.073933, 24.582695>,  <36.033020, 41.265457, 24.654991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158287, 41.073933, 24.582695>,  <36.367069, 40.754726, 24.462202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158287, 41.073933, 24.582695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722750, 0.226220, 0.653036,
		0.452987, 0.558569, -0.694840,
		-0.521953, 0.798013, 0.301232,
		36.001701, 41.313335, 24.673065>
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
