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
	<24.040384, 35.358658, 35.344875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305824, 35.060120, 35.324436>,  <24.465088, 34.880997, 35.312172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305824, 35.060120, 35.324436>,  <24.040384, 35.358658, 35.344875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305824, 35.060120, 35.324436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537205, -0.427886, -0.726859,
		0.520622, 0.509792, -0.684883,
		0.663599, -0.746341, -0.051096,
		24.504904, 34.836216, 35.309109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305771, 35.356659, 34.738628>,  <24.040384, 35.358658, 35.344875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305771, 35.356659, 34.738628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304499, 34.984833, 34.886086>,  <24.303736, 34.761738, 34.974560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304499, 34.984833, 34.886086>,  <24.305771, 35.356659, 34.738628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304499, 34.984833, 34.886086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527632, -0.311590, -0.790263,
		0.849467, -0.197019, -0.489478,
		-0.003180, -0.929567, 0.368639,
		24.303545, 34.705963, 34.996677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692780, 34.895271, 34.261715>,  <24.305771, 35.356659, 34.738628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692780, 34.895271, 34.261715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428162, 34.693157, 34.483360>,  <24.269392, 34.571888, 34.616348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428162, 34.693157, 34.483360>,  <24.692780, 34.895271, 34.261715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428162, 34.693157, 34.483360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242502, -0.555069, -0.795670,
		0.709615, -0.660745, 0.244668,
		-0.661543, -0.505287, 0.554118,
		24.229698, 34.541573, 34.649597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004480, 35.592522, 34.370640>,  <24.692780, 34.895271, 34.261715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004480, 35.592522, 34.370640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020086, 35.945923, 34.557358>,  <25.029449, 36.157963, 34.669388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020086, 35.945923, 34.557358>,  <25.004480, 35.592522, 34.370640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020086, 35.945923, 34.557358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767257, -0.325765, 0.552444,
		0.640152, 0.336601, -0.690583,
		0.039014, 0.883503, 0.466798,
		25.031790, 36.210972, 34.697399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722223, 35.988285, 34.344318>,  <25.004480, 35.592522, 34.370640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722223, 35.988285, 34.344318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519566, 36.099827, 34.670643>,  <25.397970, 36.166752, 34.866440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519566, 36.099827, 34.670643>,  <25.722223, 35.988285, 34.344318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519566, 36.099827, 34.670643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804191, -0.188248, 0.563772,
		0.310785, 0.941702, -0.128877,
		-0.506645, 0.278854, 0.815813,
		25.367573, 36.183483, 34.915386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027279, 35.430271, 34.112400>,  <25.722223, 35.988285, 34.344318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027279, 35.430271, 34.112400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390465, 35.277237, 34.180782>,  <26.608376, 35.185417, 34.221809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390465, 35.277237, 34.180782>,  <26.027279, 35.430271, 34.112400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390465, 35.277237, 34.180782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074701, -0.253649, -0.964408,
		0.412333, 0.888419, -0.201725,
		0.907965, -0.382588, 0.170954,
		26.662855, 35.162460, 34.232067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434420, 35.687572, 33.577930>,  <26.027279, 35.430271, 34.112400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434420, 35.687572, 33.577930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608307, 35.354534, 33.715218>,  <26.712639, 35.154709, 33.797588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608307, 35.354534, 33.715218>,  <26.434420, 35.687572, 33.577930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608307, 35.354534, 33.715218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153674, -0.306938, -0.939241,
		0.887358, 0.461049, -0.005483,
		0.434719, -0.832600, 0.343215,
		26.738722, 35.104755, 33.818184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964935, 35.456406, 33.003185>,  <26.434420, 35.687572, 33.577930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964935, 35.456406, 33.003185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957739, 35.138458, 33.245789>,  <26.953421, 34.947689, 33.391350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957739, 35.138458, 33.245789>,  <26.964935, 35.456406, 33.003185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957739, 35.138458, 33.245789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449843, -0.548182, -0.705080,
		0.892926, 0.260148, 0.367430,
		-0.017993, -0.794871, 0.606512,
		26.952341, 34.899998, 33.427742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571383, 35.203419, 33.027752>,  <26.964935, 35.456406, 33.003185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571383, 35.203419, 33.027752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321606, 34.902077, 33.110241>,  <27.171740, 34.721272, 33.159733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321606, 34.902077, 33.110241>,  <27.571383, 35.203419, 33.027752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321606, 34.902077, 33.110241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481637, -0.579240, -0.657653,
		0.614897, -0.311343, 0.724546,
		-0.624441, -0.753357, 0.206219,
		27.134274, 34.676071, 33.172108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995424, 34.680225, 33.109978>,  <27.571383, 35.203419, 33.027752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995424, 34.680225, 33.109978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653353, 34.476028, 33.074051>,  <27.448109, 34.353512, 33.052494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653353, 34.476028, 33.074051>,  <27.995424, 34.680225, 33.109978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653353, 34.476028, 33.074051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486684, -0.731195, -0.478010,
		0.178342, -0.452498, 0.873750,
		-0.855180, -0.510489, -0.089821,
		27.396799, 34.322880, 33.047104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078083, 34.042606, 33.349255>,  <27.995424, 34.680225, 33.109978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078083, 34.042606, 33.349255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746262, 33.993725, 33.131298>,  <27.547169, 33.964394, 33.000526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746262, 33.993725, 33.131298>,  <28.078083, 34.042606, 33.349255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746262, 33.993725, 33.131298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417500, -0.783736, -0.459839,
		-0.370853, -0.608953, 0.701174,
		-0.829556, -0.122207, -0.544889,
		27.497395, 33.957062, 32.967831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011389, 33.359455, 33.370483>,  <28.078083, 34.042606, 33.349255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011389, 33.359455, 33.370483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810616, 33.497105, 33.053085>,  <27.690151, 33.579693, 32.862644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810616, 33.497105, 33.053085>,  <28.011389, 33.359455, 33.370483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810616, 33.497105, 33.053085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367926, -0.745337, -0.555971,
		-0.782748, -0.571009, 0.247496,
		-0.501932, 0.344125, -0.793500,
		27.660036, 33.600342, 32.815037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595411, 32.777790, 33.104965>,  <28.011389, 33.359455, 33.370483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595411, 32.777790, 33.104965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633921, 33.047443, 32.812042>,  <27.657026, 33.209236, 32.636288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633921, 33.047443, 32.812042>,  <27.595411, 32.777790, 33.104965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633921, 33.047443, 32.812042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380859, -0.704688, -0.598634,
		-0.919607, -0.221273, -0.324593,
		0.096275, 0.674132, -0.732309,
		27.662804, 33.249683, 32.592350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411057, 32.415703, 32.547394>,  <27.595411, 32.777790, 33.104965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411057, 32.415703, 32.547394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620451, 32.716785, 32.387695>,  <27.746088, 32.897434, 32.291878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620451, 32.716785, 32.387695>,  <27.411057, 32.415703, 32.547394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620451, 32.716785, 32.387695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523513, -0.653845, -0.546279,
		-0.672232, 0.076959, -0.736330,
		0.523487, 0.752705, -0.399246,
		27.777496, 32.942596, 32.267921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418272, 32.297813, 31.854721>,  <27.411057, 32.415703, 32.547394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418272, 32.297813, 31.854721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732643, 32.535553, 31.922907>,  <27.921267, 32.678196, 31.963818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732643, 32.535553, 31.922907>,  <27.418272, 32.297813, 31.854721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732643, 32.535553, 31.922907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537603, -0.520665, -0.663242,
		-0.305445, 0.612904, -0.728733,
		0.785930, 0.594353, 0.170464,
		27.968422, 32.713860, 31.974047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742178, 32.124538, 31.278891>,  <27.418272, 32.297813, 31.854721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742178, 32.124538, 31.278891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020317, 32.330650, 31.479280>,  <28.187201, 32.454319, 31.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020317, 32.330650, 31.479280>,  <27.742178, 32.124538, 31.278891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020317, 32.330650, 31.479280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706827, -0.364281, -0.606379,
		-0.129960, 0.775747, -0.617517,
		0.695346, 0.515283, 0.500977,
		28.228920, 32.485233, 31.629574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219538, 32.423065, 30.767408>,  <27.742178, 32.124538, 31.278891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219538, 32.423065, 30.767408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424179, 32.424332, 31.111095>,  <28.546963, 32.425091, 31.317307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424179, 32.424332, 31.111095>,  <28.219538, 32.423065, 30.767408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424179, 32.424332, 31.111095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744293, -0.501259, -0.441324,
		0.429291, 0.865292, -0.258805,
		0.511602, 0.003170, 0.859217,
		28.577660, 32.425282, 31.368860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793257, 32.814938, 30.647882>,  <28.219538, 32.423065, 30.767408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793257, 32.814938, 30.647882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880190, 32.571854, 30.953419>,  <28.932350, 32.426003, 31.136742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880190, 32.571854, 30.953419>,  <28.793257, 32.814938, 30.647882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880190, 32.571854, 30.953419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799434, -0.338187, -0.496522,
		0.560063, 0.718553, 0.412324,
		0.217334, -0.607710, 0.763842,
		28.945391, 32.389542, 31.182571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486748, 32.924427, 30.830225>,  <28.793257, 32.814938, 30.647882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486748, 32.924427, 30.830225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425776, 32.563824, 30.992239>,  <29.389193, 32.347462, 31.089447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425776, 32.563824, 30.992239>,  <29.486748, 32.924427, 30.830225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425776, 32.563824, 30.992239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863697, -0.320721, -0.388800,
		0.480409, 0.290564, 0.827514,
		-0.152430, -0.901504, 0.405037,
		29.380047, 32.293373, 31.113750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118515, 32.689980, 31.029896>,  <29.486748, 32.924427, 30.830225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118515, 32.689980, 31.029896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900326, 32.355103, 31.014084>,  <29.769413, 32.154175, 31.004597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900326, 32.355103, 31.014084>,  <30.118515, 32.689980, 31.029896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900326, 32.355103, 31.014084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804447, -0.509734, -0.305019,
		0.235211, -0.198179, 0.951526,
		-0.545474, -0.837195, -0.039530,
		29.736683, 32.103943, 31.002226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644814, 32.265999, 31.276598>,  <30.118515, 32.689980, 31.029896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644814, 32.265999, 31.276598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348450, 32.045830, 31.122665>,  <30.170631, 31.913729, 31.030306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348450, 32.045830, 31.122665>,  <30.644814, 32.265999, 31.276598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348450, 32.045830, 31.122665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661656, -0.696487, -0.277699,
		-0.115178, -0.460374, 0.880221,
		-0.740908, -0.550419, -0.384829,
		30.126177, 31.880703, 31.007217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652090, 31.601837, 31.561106>,  <30.644814, 32.265999, 31.276598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652090, 31.601837, 31.561106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490959, 31.601009, 31.194996>,  <30.394281, 31.600512, 30.975330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490959, 31.601009, 31.194996>,  <30.652090, 31.601837, 31.561106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490959, 31.601009, 31.194996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767034, -0.546378, -0.336348,
		-0.499388, -0.837536, 0.221685,
		-0.402828, -0.002071, -0.915273,
		30.370111, 31.600388, 30.920414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930897, 31.014931, 31.249311>,  <30.652090, 31.601837, 31.561106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930897, 31.014931, 31.249311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763428, 31.174824, 30.923140>,  <30.662947, 31.270760, 30.727436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763428, 31.174824, 30.923140>,  <30.930897, 31.014931, 31.249311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763428, 31.174824, 30.923140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687401, -0.447284, -0.572203,
		-0.593458, -0.800093, -0.087513,
		-0.418673, 0.399735, -0.815429,
		30.637825, 31.294744, 30.678511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801628, 30.457495, 30.802893>,  <30.930897, 31.014931, 31.249311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801628, 30.457495, 30.802893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833683, 30.786793, 30.578091>,  <30.852915, 30.984371, 30.443211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833683, 30.786793, 30.578091>,  <30.801628, 30.457495, 30.802893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833683, 30.786793, 30.578091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581095, -0.496681, -0.644698,
		-0.809881, -0.274914, -0.518185,
		0.080136, 0.823243, -0.562004,
		30.857723, 31.033766, 30.409489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656836, 30.200270, 30.131340>,  <30.801628, 30.457495, 30.802893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656836, 30.200270, 30.131340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841574, 30.550438, 30.074295>,  <30.952417, 30.760538, 30.040068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841574, 30.550438, 30.074295>,  <30.656836, 30.200270, 30.131340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841574, 30.550438, 30.074295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423773, -0.359041, -0.831569,
		-0.779176, 0.323620, -0.536801,
		0.461846, 0.875420, -0.142614,
		30.980127, 30.813065, 30.031511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558327, 30.378479, 29.500912>,  <30.656836, 30.200270, 30.131340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558327, 30.378479, 29.500912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905424, 30.554808, 29.592733>,  <31.113684, 30.660604, 29.647827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905424, 30.554808, 29.592733>,  <30.558327, 30.378479, 29.500912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905424, 30.554808, 29.592733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449203, -0.497964, -0.741787,
		-0.212683, 0.746799, -0.630124,
		0.867745, 0.440820, 0.229556,
		31.165749, 30.687054, 29.661600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908497, 30.439934, 28.883062>,  <30.558327, 30.378479, 29.500912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908497, 30.439934, 28.883062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190393, 30.431108, 29.166710>,  <31.359531, 30.425814, 29.336899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190393, 30.431108, 29.166710>,  <30.908497, 30.439934, 28.883062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190393, 30.431108, 29.166710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426120, -0.785984, -0.447941,
		0.567240, 0.617853, -0.544515,
		0.704742, -0.022061, 0.709121,
		31.401815, 30.424490, 29.379446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599739, 30.608744, 28.638573>,  <30.908497, 30.439934, 28.883062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599739, 30.608744, 28.638573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625839, 30.364498, 28.954268>,  <31.641499, 30.217951, 29.143684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625839, 30.364498, 28.954268>,  <31.599739, 30.608744, 28.638573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625839, 30.364498, 28.954268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608290, -0.602638, -0.516537,
		0.791028, 0.513788, 0.332108,
		0.065249, -0.610614, 0.789236,
		31.645414, 30.181314, 29.191038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049475, 31.086582, 28.151968>,  <31.599739, 30.608744, 28.638573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049475, 31.086582, 28.151968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022839, 30.934561, 27.782942>,  <31.006857, 30.843348, 27.561525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022839, 30.934561, 27.782942>,  <31.049475, 31.086582, 28.151968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022839, 30.934561, 27.782942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748832, 0.592018, -0.297934,
		0.659406, -0.710686, 0.245172,
		-0.066591, -0.380052, -0.922565,
		31.002861, 30.820545, 27.506172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768364, 30.835999, 27.954920>,  <31.049475, 31.086582, 28.151968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768364, 30.835999, 27.954920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512936, 30.940662, 27.665436>,  <31.359678, 31.003460, 27.491745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512936, 30.940662, 27.665436>,  <31.768364, 30.835999, 27.954920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512936, 30.940662, 27.665436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464135, 0.881080, -0.090977,
		0.613843, -0.393996, -0.684079,
		-0.638573, 0.261660, -0.723712,
		31.321363, 31.019161, 27.448322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117817, 31.233042, 27.415710>,  <31.768364, 30.835999, 27.954920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117817, 31.233042, 27.415710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728251, 31.323698, 27.420187>,  <31.494511, 31.378092, 27.422873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728251, 31.323698, 27.420187>,  <32.117817, 31.233042, 27.415710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728251, 31.323698, 27.420187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222480, 0.963422, -0.149399,
		-0.044643, -0.143012, -0.988714,
		-0.973914, 0.226639, 0.011193,
		31.436075, 31.391689, 27.423544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946468, 31.583481, 26.765707>,  <32.117817, 31.233042, 27.415710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946468, 31.583481, 26.765707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711824, 31.674164, 27.076704>,  <31.571037, 31.728573, 27.263302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711824, 31.674164, 27.076704>,  <31.946468, 31.583481, 26.765707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711824, 31.674164, 27.076704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192548, 0.971534, -0.138011,
		-0.786646, 0.068745, -0.613565,
		-0.586612, 0.226706, 0.777490,
		31.535841, 31.742176, 27.309952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277487, 31.934671, 26.566982>,  <31.946468, 31.583481, 26.765707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277487, 31.934671, 26.566982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434669, 32.050385, 26.916130>,  <31.528980, 32.119812, 27.125618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434669, 32.050385, 26.916130>,  <31.277487, 31.934671, 26.566982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434669, 32.050385, 26.916130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256478, 0.877080, -0.406140,
		-0.883064, 0.383468, 0.270462,
		0.392959, 0.289281, 0.872869,
		31.552557, 32.137169, 27.177990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582188, 32.386333, 26.470776>,  <31.277487, 31.934671, 26.566982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582188, 32.386333, 26.470776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945133, 32.488659, 26.337360>,  <31.162901, 32.550053, 26.257311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945133, 32.488659, 26.337360>,  <30.582188, 32.386333, 26.470776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945133, 32.488659, 26.337360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274935, -0.239038, -0.931274,
		-0.317960, 0.936707, -0.146563,
		0.907365, 0.255813, -0.333538,
		31.217342, 32.565403, 26.237299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878157, 32.296394, 26.149500>,  <30.582188, 32.386333, 26.470776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878157, 32.296394, 26.149500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695843, 32.605343, 25.972546>,  <29.586454, 32.790710, 25.866373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695843, 32.605343, 25.972546>,  <29.878157, 32.296394, 26.149500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695843, 32.605343, 25.972546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233916, 0.583481, 0.777710,
		0.858805, 0.250986, -0.446610,
		-0.455783, 0.772370, -0.442387,
		29.559107, 32.837055, 25.839830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286631, 32.959347, 26.071486>,  <29.878157, 32.296394, 26.149500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286631, 32.959347, 26.071486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899176, 33.057400, 26.087734>,  <29.666702, 33.116234, 26.097485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899176, 33.057400, 26.087734>,  <30.286631, 32.959347, 26.071486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899176, 33.057400, 26.087734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176511, 0.563763, 0.806855,
		0.174886, 0.788720, -0.589351,
		-0.968637, 0.245135, 0.040624,
		29.608585, 33.130939, 26.099922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220644, 33.783989, 26.270004>,  <30.286631, 32.959347, 26.071486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220644, 33.783989, 26.270004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884760, 33.588970, 26.365664>,  <29.683229, 33.471958, 26.423059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884760, 33.588970, 26.365664>,  <30.220644, 33.783989, 26.270004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884760, 33.588970, 26.365664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114581, 0.589544, 0.799568,
		-0.530812, 0.644002, -0.550908,
		-0.839708, -0.487544, 0.239146,
		29.632847, 33.442707, 26.437407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911072, 34.290386, 26.644970>,  <30.220644, 33.783989, 26.270004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911072, 34.290386, 26.644970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701506, 33.957035, 26.715391>,  <29.575766, 33.757023, 26.757643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701506, 33.957035, 26.715391>,  <29.911072, 34.290386, 26.644970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701506, 33.957035, 26.715391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214892, 0.329326, 0.919438,
		-0.824218, 0.443875, -0.351625,
		-0.523914, -0.833378, 0.176052,
		29.544331, 33.707020, 26.768208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140463, 34.604309, 26.843895>,  <29.911072, 34.290386, 26.644970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140463, 34.604309, 26.843895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234348, 34.237991, 26.974266>,  <29.290680, 34.018200, 27.052488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234348, 34.237991, 26.974266>,  <29.140463, 34.604309, 26.843895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234348, 34.237991, 26.974266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281585, 0.256864, 0.924517,
		-0.930387, -0.308772, -0.197585,
		0.234712, -0.915795, 0.325928,
		29.304762, 33.963253, 27.072044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571035, 34.460629, 27.241940>,  <29.140463, 34.604309, 26.843895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571035, 34.460629, 27.241940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866076, 34.223175, 27.370655>,  <29.043100, 34.080704, 27.447886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866076, 34.223175, 27.370655>,  <28.571035, 34.460629, 27.241940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866076, 34.223175, 27.370655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307331, 0.129195, 0.942792,
		-0.601244, -0.794299, -0.087147,
		0.737600, -0.593631, 0.321791,
		29.087355, 34.045086, 27.467192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243820, 34.036541, 27.732008>,  <28.571035, 34.460629, 27.241940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243820, 34.036541, 27.732008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631145, 34.015228, 27.829601>,  <28.863541, 34.002441, 27.888157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631145, 34.015228, 27.829601>,  <28.243820, 34.036541, 27.732008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631145, 34.015228, 27.829601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244801, -0.009292, 0.969529,
		-0.049405, -0.998536, -0.022045,
		0.968314, -0.053296, 0.243984,
		28.921640, 33.999241, 27.902796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342295, 33.651424, 28.311520>,  <28.243820, 34.036541, 27.732008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342295, 33.651424, 28.311520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705410, 33.819061, 28.318226>,  <28.923279, 33.919643, 28.322248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705410, 33.819061, 28.318226>,  <28.342295, 33.651424, 28.311520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705410, 33.819061, 28.318226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024775, 0.013679, 0.999599,
		0.418698, -0.907839, 0.022801,
		0.907787, 0.419095, 0.016764,
		28.977747, 33.944790, 28.323256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658373, 33.294537, 28.742897>,  <28.342295, 33.651424, 28.311520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658373, 33.294537, 28.742897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863253, 33.637981, 28.734484>,  <28.986179, 33.844048, 28.729435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863253, 33.637981, 28.734484>,  <28.658373, 33.294537, 28.742897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863253, 33.637981, 28.734484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063825, 0.062473, 0.996004,
		0.856492, -0.508809, 0.086800,
		0.512198, 0.858609, -0.021033,
		29.016912, 33.895565, 28.728174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025320, 33.246330, 29.409826>,  <28.658373, 33.294537, 28.742897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025320, 33.246330, 29.409826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031286, 33.620255, 29.267889>,  <29.034866, 33.844608, 29.182726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031286, 33.620255, 29.267889>,  <29.025320, 33.246330, 29.409826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031286, 33.620255, 29.267889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026350, 0.355127, 0.934446,
		0.999541, -0.004586, 0.029928,
		0.014913, 0.934807, -0.354843,
		29.035761, 33.900696, 29.161436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705521, 33.585930, 29.658762>,  <29.025320, 33.246330, 29.409826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705521, 33.585930, 29.658762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446175, 33.881981, 29.587393>,  <29.290567, 34.059612, 29.544571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446175, 33.881981, 29.587393>,  <29.705521, 33.585930, 29.658762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446175, 33.881981, 29.587393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270955, 0.443337, 0.854421,
		0.711483, 0.505631, -0.487985,
		-0.648363, 0.740128, -0.178423,
		29.251665, 34.104019, 29.533865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007256, 34.206455, 29.954710>,  <29.705521, 33.585930, 29.658762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007256, 34.206455, 29.954710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628613, 34.324242, 29.902218>,  <29.401426, 34.394913, 29.870724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628613, 34.324242, 29.902218>,  <30.007256, 34.206455, 29.954710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628613, 34.324242, 29.902218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022695, 0.466918, 0.884009,
		0.321583, 0.833833, -0.448672,
		-0.946609, 0.294465, -0.131229,
		29.344629, 34.412582, 29.862848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040333, 34.910637, 30.056873>,  <30.007256, 34.206455, 29.954710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040333, 34.910637, 30.056873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673176, 34.761238, 30.110497>,  <29.452881, 34.671600, 30.142672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673176, 34.761238, 30.110497>,  <30.040333, 34.910637, 30.056873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673176, 34.761238, 30.110497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072070, 0.489114, 0.869237,
		-0.390228, 0.788205, -0.475872,
		-0.917893, -0.373497, 0.134060,
		29.397808, 34.649189, 30.150715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573404, 35.521564, 30.192442>,  <30.040333, 34.910637, 30.056873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573404, 35.521564, 30.192442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377514, 35.199749, 30.326832>,  <29.259979, 35.006660, 30.407465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377514, 35.199749, 30.326832>,  <29.573404, 35.521564, 30.192442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377514, 35.199749, 30.326832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043055, 0.362561, 0.930965,
		-0.870813, 0.470383, -0.142915,
		-0.489726, -0.804543, 0.335975,
		29.230597, 34.958385, 30.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027292, 35.806480, 30.556381>,  <29.573404, 35.521564, 30.192442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027292, 35.806480, 30.556381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096546, 35.431698, 30.677795>,  <29.138100, 35.206829, 30.750645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096546, 35.431698, 30.677795>,  <29.027292, 35.806480, 30.556381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096546, 35.431698, 30.677795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023397, 0.304191, 0.952323,
		-0.984620, -0.171983, 0.030745,
		0.173136, -0.936957, 0.303537,
		29.148487, 35.150612, 30.768856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565769, 35.653465, 31.135941>,  <29.027292, 35.806480, 30.556381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565769, 35.653465, 31.135941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855080, 35.379681, 31.172583>,  <29.028666, 35.215412, 31.194567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855080, 35.379681, 31.172583>,  <28.565769, 35.653465, 31.135941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855080, 35.379681, 31.172583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032759, 0.166510, 0.985495,
		-0.689784, -0.709782, 0.142854,
		0.723274, -0.684459, 0.091604,
		29.072062, 35.174343, 31.200064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403067, 35.334007, 31.751804>,  <28.565769, 35.653465, 31.135941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403067, 35.334007, 31.751804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785707, 35.226440, 31.706917>,  <29.015293, 35.161900, 31.679985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785707, 35.226440, 31.706917>,  <28.403067, 35.334007, 31.751804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785707, 35.226440, 31.706917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159820, 0.162181, 0.973732,
		-0.243653, -0.949411, 0.198121,
		0.956604, -0.268916, -0.112219,
		29.072689, 35.145767, 31.673250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488256, 34.813301, 32.186440>,  <28.403067, 35.334007, 31.751804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488256, 34.813301, 32.186440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862131, 34.939621, 32.121159>,  <29.086456, 35.015411, 32.081989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862131, 34.939621, 32.121159>,  <28.488256, 34.813301, 32.186440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862131, 34.939621, 32.121159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156878, 0.045529, 0.986568,
		0.318988, -0.947733, -0.006986,
		0.934685, 0.315800, -0.163202,
		29.142536, 35.034359, 32.072197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901573, 34.355732, 32.559864>,  <28.488256, 34.813301, 32.186440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901573, 34.355732, 32.559864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118107, 34.690159, 32.524223>,  <29.248028, 34.890816, 32.502838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118107, 34.690159, 32.524223>,  <28.901573, 34.355732, 32.559864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118107, 34.690159, 32.524223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106275, 0.037085, 0.993645,
		0.834063, -0.547365, -0.068778,
		0.541336, 0.836072, -0.089102,
		29.280508, 34.940979, 32.497494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505781, 34.155468, 33.026585>,  <28.901573, 34.355732, 32.559864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505781, 34.155468, 33.026585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485891, 34.549580, 32.961166>,  <29.473957, 34.786049, 32.921917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485891, 34.549580, 32.961166>,  <29.505781, 34.155468, 33.026585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485891, 34.549580, 32.961166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138256, 0.168960, 0.975878,
		0.989147, 0.025914, -0.144623,
		-0.049724, 0.985282, -0.163543,
		29.470974, 34.845165, 32.912102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058846, 34.456768, 33.345333>,  <29.505781, 34.155468, 33.026585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058846, 34.456768, 33.345333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843512, 34.792755, 33.318043>,  <29.714312, 34.994347, 33.301670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843512, 34.792755, 33.318043>,  <30.058846, 34.456768, 33.345333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843512, 34.792755, 33.318043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141373, 0.169822, 0.975281,
		0.830788, 0.515383, -0.210170,
		-0.538335, 0.839965, -0.068225,
		29.682011, 35.044746, 33.297577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434528, 34.996582, 33.481537>,  <30.058846, 34.456768, 33.345333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434528, 34.996582, 33.481537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060078, 35.116634, 33.554848>,  <29.835407, 35.188667, 33.598835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060078, 35.116634, 33.554848>,  <30.434528, 34.996582, 33.481537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060078, 35.116634, 33.554848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238144, 0.157550, 0.958366,
		0.258763, 0.940796, -0.218961,
		-0.936125, 0.300134, 0.183277,
		29.779240, 35.206673, 33.609829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472395, 35.584999, 33.810463>,  <30.434528, 34.996582, 33.481537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472395, 35.584999, 33.810463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125443, 35.421078, 33.923397>,  <29.917271, 35.322727, 33.991158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125443, 35.421078, 33.923397>,  <30.472395, 35.584999, 33.810463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125443, 35.421078, 33.923397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213288, 0.206460, 0.954925,
		-0.449619, 0.888503, -0.091674,
		-0.867381, -0.409800, 0.282336,
		29.865229, 35.298138, 34.008099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152046, 36.013668, 34.327393>,  <30.472395, 35.584999, 33.810463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152046, 36.013668, 34.327393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066149, 35.623924, 34.354240>,  <30.014610, 35.390079, 34.370350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066149, 35.623924, 34.354240>,  <30.152046, 36.013668, 34.327393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066149, 35.623924, 34.354240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052404, 0.057128, 0.996991,
		-0.975263, 0.217617, 0.038793,
		-0.214746, -0.974361, 0.067118,
		30.001724, 35.331615, 34.374374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583391, 35.872589, 34.839813>,  <30.152046, 36.013668, 34.327393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583391, 35.872589, 34.839813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921280, 35.662815, 34.797085>,  <30.124012, 35.536949, 34.771450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921280, 35.662815, 34.797085>,  <29.583391, 35.872589, 34.839813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921280, 35.662815, 34.797085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343605, 0.378382, 0.859513,
		-0.410345, -0.762752, 0.499827,
		0.844720, -0.524440, -0.106818,
		30.174696, 35.505482, 34.765038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696613, 35.312042, 35.311165>,  <29.583391, 35.872589, 34.839813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696613, 35.312042, 35.311165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035185, 35.502415, 35.215630>,  <30.238327, 35.616638, 35.158306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035185, 35.502415, 35.215630>,  <29.696613, 35.312042, 35.311165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035185, 35.502415, 35.215630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011413, 0.432211, 0.901700,
		0.532381, -0.765950, 0.360404,
		0.846428, 0.475935, -0.238843,
		30.289114, 35.645195, 35.143978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367332, 35.044720, 35.543266>,  <29.696613, 35.312042, 35.311165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367332, 35.044720, 35.543266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352730, 35.444321, 35.553482>,  <30.343967, 35.684082, 35.559612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352730, 35.444321, 35.553482>,  <30.367332, 35.044720, 35.543266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352730, 35.444321, 35.553482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054215, -0.023541, 0.998252,
		0.997862, 0.037827, -0.053302,
		-0.036506, 0.999007, 0.025542,
		30.341778, 35.744022, 35.561146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969046, 35.381783, 35.778233>,  <30.367332, 35.044720, 35.543266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969046, 35.381783, 35.778233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632359, 35.573288, 35.878067>,  <30.430346, 35.688190, 35.937965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632359, 35.573288, 35.878067>,  <30.969046, 35.381783, 35.778233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632359, 35.573288, 35.878067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163139, -0.215131, 0.962863,
		0.514679, 0.851177, 0.102974,
		-0.841719, 0.478766, 0.249583,
		30.379843, 35.716919, 35.952942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137493, 36.033455, 36.245060>,  <30.969046, 35.381783, 35.778233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137493, 36.033455, 36.245060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776247, 35.867950, 36.290981>,  <30.559500, 35.768646, 36.318535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776247, 35.867950, 36.290981>,  <31.137493, 36.033455, 36.245060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776247, 35.867950, 36.290981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217197, -0.209560, 0.953368,
		-0.370413, 0.885936, 0.279125,
		-0.903117, -0.413765, 0.114799,
		30.505312, 35.743820, 36.325420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800182, 35.511200, 36.317421>,  <31.137493, 36.033455, 36.245060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800182, 35.511200, 36.317421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012527, 35.188339, 36.420719>,  <32.139935, 34.994621, 36.482697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012527, 35.188339, 36.420719>,  <31.800182, 35.511200, 36.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012527, 35.188339, 36.420719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174017, 0.194411, 0.965361,
		-0.829398, -0.557414, -0.037252,
		0.530864, -0.807152, 0.258244,
		32.171787, 34.946194, 36.498192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410009, 35.175472, 36.835934>,  <31.800182, 35.511200, 36.317421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410009, 35.175472, 36.835934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771503, 35.021965, 36.911816>,  <31.988400, 34.929863, 36.957344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771503, 35.021965, 36.911816>,  <31.410009, 35.175472, 36.835934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771503, 35.021965, 36.911816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236220, -0.077482, 0.968606,
		-0.357018, -0.920174, -0.160676,
		0.903736, -0.383765, 0.189701,
		32.042625, 34.906837, 36.968727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351337, 34.668613, 37.429115>,  <31.410009, 35.175472, 36.835934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351337, 34.668613, 37.429115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740347, 34.759838, 37.410412>,  <31.973753, 34.814575, 37.399189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740347, 34.759838, 37.410412>,  <31.351337, 34.668613, 37.429115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740347, 34.759838, 37.410412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060430, -0.053341, 0.996746,
		0.224828, -0.972184, -0.065658,
		0.972523, 0.228065, -0.046757,
		32.032104, 34.828259, 37.396385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713217, 34.160915, 37.742268>,  <31.351337, 34.668613, 37.429115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713217, 34.160915, 37.742268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955292, 34.479340, 37.744877>,  <32.100536, 34.670395, 37.746445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955292, 34.479340, 37.744877>,  <31.713217, 34.160915, 37.742268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955292, 34.479340, 37.744877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053803, -0.049077, 0.997345,
		0.794264, -0.603228, -0.072531,
		0.605186, 0.796058, 0.006525,
		32.136848, 34.718155, 37.746834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264259, 33.943516, 38.168480>,  <31.713217, 34.160915, 37.742268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264259, 33.943516, 38.168480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271770, 34.343044, 38.186394>,  <32.276276, 34.582760, 38.197144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271770, 34.343044, 38.186394>,  <32.264259, 33.943516, 38.168480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271770, 34.343044, 38.186394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049023, -0.045659, 0.997753,
		0.998621, -0.016540, -0.049823,
		0.018778, 0.998820, 0.044786,
		32.277405, 34.642689, 38.199829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820396, 34.079838, 38.563927>,  <32.264259, 33.943516, 38.168480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820396, 34.079838, 38.563927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602734, 34.415302, 38.573193>,  <32.472137, 34.616581, 38.578751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602734, 34.415302, 38.573193>,  <32.820396, 34.079838, 38.563927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602734, 34.415302, 38.573193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017107, -0.016513, 0.999717,
		0.838809, 0.544399, -0.005361,
		-0.544157, 0.838664, 0.023164,
		32.439487, 34.666901, 38.580143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121590, 34.409576, 39.028019>,  <32.820396, 34.079838, 38.563927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121590, 34.409576, 39.028019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784725, 34.625053, 39.018402>,  <32.582607, 34.754337, 39.012630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784725, 34.625053, 39.018402>,  <33.121590, 34.409576, 39.028019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784725, 34.625053, 39.018402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063372, 0.143154, 0.987669,
		0.535490, 0.830253, -0.154697,
		-0.842161, 0.538690, -0.024043,
		32.532078, 34.786659, 39.011189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272251, 34.963047, 39.454460>,  <33.121590, 34.409576, 39.028019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272251, 34.963047, 39.454460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872841, 34.982052, 39.444016>,  <32.633194, 34.993454, 39.437748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872841, 34.982052, 39.444016>,  <33.272251, 34.963047, 39.454460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872841, 34.982052, 39.444016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008853, 0.332277, 0.943140,
		0.053485, 0.941984, -0.331368,
		-0.998529, 0.047510, -0.026111,
		32.573280, 34.996304, 39.436184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067097, 35.641567, 39.694481>,  <33.272251, 34.963047, 39.454460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067097, 35.641567, 39.694481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738373, 35.421570, 39.753986>,  <32.541138, 35.289574, 39.789688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738373, 35.421570, 39.753986>,  <33.067097, 35.641567, 39.694481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738373, 35.421570, 39.753986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059093, 0.341968, 0.937852,
		-0.566682, 0.761949, -0.313534,
		-0.821814, -0.549992, 0.148761,
		32.491829, 35.256573, 39.798615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515343, 36.030743, 40.016235>,  <33.067097, 35.641567, 39.694481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515343, 36.030743, 40.016235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455570, 35.647579, 40.114281>,  <32.419708, 35.417683, 40.173107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455570, 35.647579, 40.114281>,  <32.515343, 36.030743, 40.016235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455570, 35.647579, 40.114281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027663, 0.251853, 0.967370,
		-0.988385, 0.137775, -0.064134,
		-0.149432, -0.957908, 0.245117,
		32.410740, 35.360207, 40.187817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008209, 36.059776, 40.480667>,  <32.515343, 36.030743, 40.016235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008209, 36.059776, 40.480667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159733, 35.695835, 40.548393>,  <32.250648, 35.477470, 40.589027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159733, 35.695835, 40.548393>,  <32.008209, 36.059776, 40.480667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159733, 35.695835, 40.548393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141683, 0.123776, 0.982143,
		-0.914566, -0.396032, -0.082023,
		0.378808, -0.909856, 0.169312,
		32.273376, 35.422878, 40.599186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481020, 35.694450, 40.905712>,  <32.008209, 36.059776, 40.480667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481020, 35.694450, 40.905712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828766, 35.498936, 40.934826>,  <32.037415, 35.381626, 40.952293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828766, 35.498936, 40.934826>,  <31.481020, 35.694450, 40.905712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828766, 35.498936, 40.934826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203362, -0.219615, 0.954156,
		-0.450392, -0.844309, -0.290325,
		0.869362, -0.488786, 0.072788,
		32.089573, 35.352299, 40.956661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365679, 35.157101, 41.323212>,  <31.481020, 35.694450, 40.905712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365679, 35.157101, 41.323212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764809, 35.134087, 41.310322>,  <32.004288, 35.120277, 41.302586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764809, 35.134087, 41.310322>,  <31.365679, 35.157101, 41.323212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764809, 35.134087, 41.310322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020691, -0.190895, 0.981392,
		-0.062612, -0.979923, -0.189289,
		0.997823, -0.057530, -0.032228,
		32.064156, 35.116829, 41.300652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513630, 34.529011, 41.509235>,  <31.365679, 35.157101, 41.323212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513630, 34.529011, 41.509235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835115, 34.754074, 41.586658>,  <32.028008, 34.889111, 41.633110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835115, 34.754074, 41.586658>,  <31.513630, 34.529011, 41.509235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835115, 34.754074, 41.586658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030237, -0.363492, 0.931107,
		0.594250, -0.742489, -0.309156,
		0.803712, 0.562658, 0.193554,
		32.076229, 34.922871, 41.644726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896603, 34.081776, 41.816044>,  <31.513630, 34.529011, 41.509235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896603, 34.081776, 41.816044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001816, 34.448784, 41.935356>,  <32.064945, 34.668987, 42.006943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001816, 34.448784, 41.935356>,  <31.896603, 34.081776, 41.816044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001816, 34.448784, 41.935356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156241, -0.345596, 0.925285,
		0.952052, -0.196776, -0.234257,
		0.263032, 0.917520, 0.298281,
		32.080727, 34.724041, 42.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654015, 34.038685, 42.228329>,  <31.896603, 34.081776, 41.816044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654015, 34.038685, 42.228329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445995, 34.358982, 42.347237>,  <32.321186, 34.551159, 42.418579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445995, 34.358982, 42.347237>,  <32.654015, 34.038685, 42.228329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445995, 34.358982, 42.347237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098974, -0.402178, 0.910196,
		0.848385, 0.443922, 0.288403,
		-0.520045, 0.800741, 0.297265,
		32.289982, 34.599205, 42.436417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962784, 34.230621, 42.832054>,  <32.654015, 34.038685, 42.228329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962784, 34.230621, 42.832054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604092, 34.407539, 42.838440>,  <32.388878, 34.513691, 42.842274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604092, 34.407539, 42.838440>,  <32.962784, 34.230621, 42.832054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604092, 34.407539, 42.838440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094668, -0.226931, 0.969299,
		0.432337, 0.867687, 0.245366,
		-0.896729, 0.442292, 0.015968,
		32.335072, 34.540226, 42.843231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930046, 34.583832, 43.523113>,  <32.962784, 34.230621, 42.832054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930046, 34.583832, 43.523113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556740, 34.564220, 43.380783>,  <32.332756, 34.552456, 43.295383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556740, 34.564220, 43.380783>,  <32.930046, 34.583832, 43.523113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556740, 34.564220, 43.380783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328204, -0.286111, 0.900234,
		-0.145942, 0.956941, 0.250927,
		-0.933265, -0.049027, -0.355828,
		32.276760, 34.549511, 43.274036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574326, 34.974689, 43.872353>,  <32.930046, 34.583832, 43.523113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574326, 34.974689, 43.872353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323536, 34.700863, 43.723618>,  <32.173061, 34.536568, 43.634377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323536, 34.700863, 43.723618>,  <32.574326, 34.974689, 43.872353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323536, 34.700863, 43.723618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268928, -0.257778, 0.928024,
		-0.731148, 0.681848, -0.022479,
		-0.626977, -0.684568, -0.371841,
		32.135445, 34.495491, 43.612064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033863, 35.118603, 44.273018>,  <32.574326, 34.974689, 43.872353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033863, 35.118603, 44.273018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907198, 34.769398, 44.124660>,  <31.831198, 34.559875, 44.035645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907198, 34.769398, 44.124660>,  <32.033863, 35.118603, 44.273018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907198, 34.769398, 44.124660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273774, -0.290257, 0.916950,
		-0.908168, 0.391910, -0.147094,
		-0.316667, -0.873016, -0.370898,
		31.812199, 34.507492, 44.013390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378492, 35.051270, 44.487244>,  <32.033863, 35.118603, 44.273018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378492, 35.051270, 44.487244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450287, 34.664047, 44.417221>,  <31.493364, 34.431713, 44.375210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450287, 34.664047, 44.417221>,  <31.378492, 35.051270, 44.487244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450287, 34.664047, 44.417221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363877, -0.230653, 0.902437,
		-0.913990, -0.098278, -0.393655,
		0.179488, -0.968060, -0.175054,
		31.504133, 34.373631, 44.364704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785843, 34.694458, 44.815742>,  <31.378492, 35.051270, 44.487244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785843, 34.694458, 44.815742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049591, 34.399143, 44.758938>,  <31.207840, 34.221954, 44.724854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049591, 34.399143, 44.758938>,  <30.785843, 34.694458, 44.815742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049591, 34.399143, 44.758938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182736, -0.340609, 0.922276,
		-0.729274, -0.582169, -0.359498,
		0.659369, -0.738285, -0.142014,
		31.247402, 34.177658, 44.716335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369865, 34.006451, 44.829037>,  <30.785843, 34.694458, 44.815742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369865, 34.006451, 44.829037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755062, 33.941860, 44.915356>,  <30.986181, 33.903107, 44.967148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755062, 33.941860, 44.915356>,  <30.369865, 34.006451, 44.829037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755062, 33.941860, 44.915356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267500, -0.474714, 0.838505,
		-0.032955, -0.865201, -0.500341,
		0.962994, -0.161474, 0.215798,
		31.043961, 33.893417, 44.980095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475235, 33.431526, 45.270550>,  <30.369865, 34.006451, 44.829037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475235, 33.431526, 45.270550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848724, 33.541973, 45.361698>,  <31.072817, 33.608242, 45.416386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848724, 33.541973, 45.361698>,  <30.475235, 33.431526, 45.270550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848724, 33.541973, 45.361698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166567, -0.228340, 0.959227,
		0.316891, -0.933606, -0.167214,
		0.933721, 0.276118, 0.227867,
		31.128841, 33.624809, 45.430058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782080, 33.016376, 45.847275>,  <30.475235, 33.431526, 45.270550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782080, 33.016376, 45.847275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983681, 33.361843, 45.850174>,  <31.104641, 33.569122, 45.851913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983681, 33.361843, 45.850174>,  <30.782080, 33.016376, 45.847275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983681, 33.361843, 45.850174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080857, 0.038824, 0.995969,
		0.859909, -0.502558, 0.089401,
		0.504003, 0.863671, 0.007251,
		31.134882, 33.620945, 45.852348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409542, 32.984871, 46.377972>,  <30.782080, 33.016376, 45.847275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409542, 32.984871, 46.377972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310184, 33.368927, 46.326706>,  <31.250570, 33.599361, 46.295948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310184, 33.368927, 46.326706>,  <31.409542, 32.984871, 46.377972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310184, 33.368927, 46.326706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049287, 0.144663, 0.988253,
		0.967404, 0.239162, -0.083256,
		-0.248396, 0.960143, -0.128160,
		31.235666, 33.656971, 46.288258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766624, 33.395962, 46.758587>,  <31.409542, 32.984871, 46.377972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766624, 33.395962, 46.758587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448576, 33.634071, 46.712234>,  <31.257748, 33.776939, 46.684422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448576, 33.634071, 46.712234>,  <31.766624, 33.395962, 46.758587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448576, 33.634071, 46.712234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093656, 0.309324, 0.946334,
		0.599177, 0.741596, -0.301701,
		-0.795120, 0.595277, -0.115885,
		31.210039, 33.812653, 46.677467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864033, 33.935844, 47.295391>,  <31.766624, 33.395962, 46.758587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864033, 33.935844, 47.295391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484535, 33.965618, 47.172531>,  <31.256836, 33.983482, 47.098816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484535, 33.965618, 47.172531>,  <31.864033, 33.935844, 47.295391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484535, 33.965618, 47.172531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284758, 0.220273, 0.932948,
		0.137104, 0.972594, -0.187786,
		-0.948744, 0.074438, -0.307154,
		31.199911, 33.987949, 47.080383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567957, 34.607754, 47.525612>,  <31.864033, 33.935844, 47.295391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567957, 34.607754, 47.525612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254204, 34.364044, 47.479080>,  <31.065952, 34.217819, 47.451160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254204, 34.364044, 47.479080>,  <31.567957, 34.607754, 47.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254204, 34.364044, 47.479080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307848, 0.219577, 0.925751,
		-0.538493, 0.761953, -0.359796,
		-0.784382, -0.609273, -0.116325,
		31.018888, 34.181263, 47.444183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042253, 34.951744, 47.914841>,  <31.567957, 34.607754, 47.525612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042253, 34.951744, 47.914841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925653, 34.572380, 47.864975>,  <30.855694, 34.344761, 47.835056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925653, 34.572380, 47.864975>,  <31.042253, 34.951744, 47.914841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925653, 34.572380, 47.864975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241221, -0.053234, 0.969009,
		-0.925657, 0.312537, -0.213259,
		-0.291498, -0.948413, -0.124667,
		30.838203, 34.287857, 47.827576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396336, 34.899818, 48.245365>,  <31.042253, 34.951744, 47.914841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396336, 34.899818, 48.245365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487871, 34.512825, 48.202282>,  <30.542793, 34.280628, 48.176430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487871, 34.512825, 48.202282>,  <30.396336, 34.899818, 48.245365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487871, 34.512825, 48.202282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261092, -0.167593, 0.950654,
		-0.937797, -0.189424, -0.290955,
		0.228839, -0.967487, -0.107711,
		30.556522, 34.222580, 48.169968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088669, 34.770802, 48.833614>,  <30.396336, 34.899818, 48.245365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088669, 34.770802, 48.833614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234905, 34.411373, 48.736526>,  <30.322647, 34.195717, 48.678272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234905, 34.411373, 48.736526>,  <30.088669, 34.770802, 48.833614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234905, 34.411373, 48.736526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229541, -0.339759, 0.912072,
		-0.902027, -0.277732, -0.330472,
		0.365593, -0.898571, -0.242720,
		30.344584, 34.141804, 48.663712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565186, 34.214153, 48.957497>,  <30.088669, 34.770802, 48.833614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565186, 34.214153, 48.957497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949606, 34.104408, 48.970787>,  <30.180258, 34.038563, 48.978760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949606, 34.104408, 48.970787>,  <29.565186, 34.214153, 48.957497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949606, 34.104408, 48.970787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166342, -0.478245, 0.862330,
		-0.220698, -0.834271, -0.505256,
		0.961053, -0.274360, 0.033227,
		30.237923, 34.022099, 48.980755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513348, 33.529755, 49.285679>,  <29.565186, 34.214153, 48.957497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513348, 33.529755, 49.285679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891302, 33.654938, 49.324146>,  <30.118074, 33.730049, 49.347225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891302, 33.654938, 49.324146>,  <29.513348, 33.529755, 49.285679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891302, 33.654938, 49.324146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045249, -0.415730, 0.908362,
		0.324260, -0.853947, -0.406978,
		0.944885, 0.312960, 0.096164,
		30.174768, 33.748825, 49.352997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848337, 33.002918, 49.470669>,  <29.513348, 33.529755, 49.285679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848337, 33.002918, 49.470669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098272, 33.279285, 49.616108>,  <30.248234, 33.445107, 49.703373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098272, 33.279285, 49.616108>,  <29.848337, 33.002918, 49.470669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098272, 33.279285, 49.616108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049392, -0.499752, 0.864759,
		0.779190, -0.522376, -0.346391,
		0.624839, 0.690920, 0.363601,
		30.285725, 33.486561, 49.725189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565710, 32.657898, 49.672283>,  <29.848337, 33.002918, 49.470669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565710, 32.657898, 49.672283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482126, 32.988010, 49.882137>,  <30.431976, 33.186077, 50.008049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482126, 32.988010, 49.882137>,  <30.565710, 32.657898, 49.672283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482126, 32.988010, 49.882137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107682, -0.513798, 0.851126,
		0.971978, 0.234344, 0.018495,
		-0.208959, 0.825284, 0.524635,
		30.419439, 33.235596, 50.039528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056665, 32.621452, 50.229961>,  <30.565710, 32.657898, 49.672283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056665, 32.621452, 50.229961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790834, 32.896191, 50.347660>,  <30.631336, 33.061035, 50.418278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790834, 32.896191, 50.347660>,  <31.056665, 32.621452, 50.229961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790834, 32.896191, 50.347660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131219, -0.280390, 0.950875,
		0.735608, 0.670541, 0.096214,
		-0.664578, 0.686846, 0.294245,
		30.591461, 33.102245, 50.435932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384525, 32.863216, 50.873695>,  <31.056665, 32.621452, 50.229961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384525, 32.863216, 50.873695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001717, 32.975731, 50.901947>,  <30.772032, 33.043240, 50.918900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001717, 32.975731, 50.901947>,  <31.384525, 32.863216, 50.873695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001717, 32.975731, 50.901947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046849, -0.390288, 0.919500,
		0.286206, 0.876673, 0.386693,
		-0.957022, 0.281283, 0.070631,
		30.714609, 33.060116, 50.923138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334028, 33.251328, 51.442898>,  <31.384525, 32.863216, 50.873695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334028, 33.251328, 51.442898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948359, 33.159679, 51.389420>,  <30.716957, 33.104691, 51.357334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948359, 33.159679, 51.389420>,  <31.334028, 33.251328, 51.442898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948359, 33.159679, 51.389420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062509, -0.293549, 0.953898,
		-0.257805, 0.928079, 0.268710,
		-0.964173, -0.229123, -0.133692,
		30.659107, 33.090942, 51.349312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928314, 33.688988, 51.980904>,  <31.334028, 33.251328, 51.442898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928314, 33.688988, 51.980904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721445, 33.368282, 51.861099>,  <30.597324, 33.175858, 51.789215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721445, 33.368282, 51.861099>,  <30.928314, 33.688988, 51.980904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721445, 33.368282, 51.861099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104032, -0.288462, 0.951823,
		-0.849535, 0.523416, 0.065776,
		-0.517173, -0.801764, -0.299511,
		30.566294, 33.127754, 51.771244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450613, 33.536674, 52.550682>,  <30.928314, 33.688988, 51.980904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450613, 33.536674, 52.550682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465084, 33.206528, 52.325310>,  <30.473766, 33.008438, 52.190086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465084, 33.206528, 52.325310>,  <30.450613, 33.536674, 52.550682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465084, 33.206528, 52.325310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093676, -0.564118, 0.820364,
		-0.994945, 0.023103, -0.097725,
		0.036176, -0.825371, -0.563430,
		30.475937, 32.958916, 52.156281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952549, 33.012772, 52.800045>,  <30.450613, 33.536674, 52.550682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952549, 33.012772, 52.800045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216917, 32.785442, 52.604008>,  <30.375538, 32.649044, 52.486385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216917, 32.785442, 52.604008>,  <29.952549, 33.012772, 52.800045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216917, 32.785442, 52.604008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005279, -0.649525, 0.760322,
		-0.750437, -0.505100, -0.426284,
		0.660921, -0.568323, -0.490094,
		30.415194, 32.614944, 52.456978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876633, 32.274551, 52.970455>,  <29.952549, 33.012772, 52.800045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876633, 32.274551, 52.970455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249933, 32.253029, 52.828388>,  <30.473913, 32.240116, 52.743149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249933, 32.253029, 52.828388>,  <29.876633, 32.274551, 52.970455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249933, 32.253029, 52.828388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189255, -0.766715, 0.613458,
		-0.305321, -0.639729, -0.705355,
		0.933253, -0.053809, -0.355166,
		30.529909, 32.236885, 52.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051935, 31.494646, 52.845524>,  <29.876633, 32.274551, 52.970455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051935, 31.494646, 52.845524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385206, 31.714447, 52.870388>,  <30.585169, 31.846327, 52.885307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385206, 31.714447, 52.870388>,  <30.051935, 31.494646, 52.845524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385206, 31.714447, 52.870388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413154, -0.693244, 0.590522,
		0.367586, -0.466328, -0.804624,
		0.833177, 0.549501, 0.062161,
		30.635159, 31.879297, 52.889038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775728, 31.167311, 52.699825>,  <30.051935, 31.494646, 52.845524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775728, 31.167311, 52.699825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784391, 31.444456, 52.988121>,  <30.789589, 31.610744, 53.161098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784391, 31.444456, 52.988121>,  <30.775728, 31.167311, 52.699825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784391, 31.444456, 52.988121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520681, -0.623243, 0.583489,
		0.853476, 0.362639, -0.374261,
		0.021660, 0.692865, 0.720742,
		30.790890, 31.652315, 53.204342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486591, 31.208088, 52.891785>,  <30.775728, 31.167311, 52.699825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486591, 31.208088, 52.891785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245544, 31.332373, 53.185810>,  <31.100916, 31.406944, 53.362225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245544, 31.332373, 53.185810>,  <31.486591, 31.208088, 52.891785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245544, 31.332373, 53.185810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286727, -0.775285, 0.562780,
		0.744744, 0.549901, 0.378109,
		-0.602615, 0.310713, 0.735060,
		31.064760, 31.425587, 53.406326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805670, 31.157558, 53.486889>,  <31.486591, 31.208088, 52.891785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805670, 31.157558, 53.486889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416279, 31.131807, 53.574703>,  <31.182644, 31.116358, 53.627392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416279, 31.131807, 53.574703>,  <31.805670, 31.157558, 53.486889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416279, 31.131807, 53.574703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162597, -0.869747, 0.465942,
		0.160949, 0.489280, 0.857147,
		-0.973477, -0.064377, 0.219540,
		31.124235, 31.112494, 53.640564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557322, 31.222250, 54.234440>,  <31.805670, 31.157558, 53.486889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557322, 31.222250, 54.234440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308855, 30.984365, 54.030293>,  <31.159775, 30.841635, 53.907806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308855, 30.984365, 54.030293>,  <31.557322, 31.222250, 54.234440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308855, 30.984365, 54.030293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181991, -0.742904, 0.644184,
		-0.762256, 0.307263, 0.569698,
		-0.621165, -0.594712, -0.510364,
		31.122505, 30.805952, 53.877182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044456, 30.863287, 54.498051>,  <31.557322, 31.222250, 54.234440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044456, 30.863287, 54.498051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356857, 30.613483, 54.495770>,  <32.544296, 30.463602, 54.494400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356857, 30.613483, 54.495770>,  <32.044456, 30.863287, 54.498051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356857, 30.613483, 54.495770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171639, 0.223415, -0.959493,
		0.600485, 0.748382, 0.281676,
		0.780998, -0.624508, -0.005706,
		32.591156, 30.426130, 54.494057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688221, 31.074171, 54.179882>,  <32.044456, 30.863287, 54.498051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688221, 31.074171, 54.179882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657700, 30.675896, 54.158787>,  <32.639385, 30.436930, 54.146130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657700, 30.675896, 54.158787>,  <32.688221, 31.074171, 54.179882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657700, 30.675896, 54.158787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212196, 0.035464, -0.976583,
		0.974243, -0.085710, 0.208575,
		-0.076306, -0.995689, -0.052738,
		32.634808, 30.377190, 54.142963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154247, 30.875181, 53.738941>,  <32.688221, 31.074171, 54.179882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154247, 30.875181, 53.738941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889030, 30.575991, 53.726845>,  <32.729900, 30.396477, 53.719585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889030, 30.575991, 53.726845>,  <33.154247, 30.875181, 53.738941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889030, 30.575991, 53.726845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121765, -0.067897, -0.990234,
		0.738617, -0.660245, 0.136095,
		-0.663038, -0.747975, -0.030245,
		32.690121, 30.351599, 53.717770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366711, 30.398241, 53.177460>,  <33.154247, 30.875181, 53.738941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366711, 30.398241, 53.177460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977219, 30.330177, 53.237988>,  <32.743523, 30.289339, 53.274303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977219, 30.330177, 53.237988>,  <33.366711, 30.398241, 53.177460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977219, 30.330177, 53.237988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118849, -0.187052, -0.975134,
		0.194233, -0.967500, 0.161915,
		-0.973729, -0.170159, 0.151318,
		32.685101, 30.279129, 53.283382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133930, 30.084440, 52.636337>,  <33.366711, 30.398241, 53.177460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133930, 30.084440, 52.636337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800152, 30.230896, 52.801086>,  <32.599884, 30.318769, 52.899937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800152, 30.230896, 52.801086>,  <33.133930, 30.084440, 52.636337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800152, 30.230896, 52.801086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435119, 0.020906, -0.900130,
		-0.338185, -0.930325, 0.141870,
		-0.834447, 0.366141, 0.411872,
		32.549816, 30.340738, 52.924648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485371, 29.622044, 52.595795>,  <33.133930, 30.084440, 52.636337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485371, 29.622044, 52.595795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396748, 30.012102, 52.595486>,  <32.343575, 30.246138, 52.595299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396748, 30.012102, 52.595486>,  <32.485371, 29.622044, 52.595795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396748, 30.012102, 52.595486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409005, -0.093647, -0.907714,
		-0.885227, -0.200797, 0.419588,
		-0.221559, 0.975147, -0.000771,
		32.330280, 30.304646, 52.595253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724213, 29.816353, 52.366734>,  <32.485371, 29.622044, 52.595795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724213, 29.816353, 52.366734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948229, 30.132875, 52.268600>,  <32.082638, 30.322788, 52.209721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948229, 30.132875, 52.268600>,  <31.724213, 29.816353, 52.366734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948229, 30.132875, 52.268600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269457, -0.106046, -0.957156,
		-0.783420, 0.602153, 0.153833,
		0.560041, 0.791307, -0.245333,
		32.116241, 30.370268, 52.195000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324364, 30.232605, 51.822670>,  <31.724213, 29.816353, 52.366734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324364, 30.232605, 51.822670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699335, 30.370413, 51.802513>,  <31.924318, 30.453096, 51.790421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699335, 30.370413, 51.802513>,  <31.324364, 30.232605, 51.822670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699335, 30.370413, 51.802513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130164, 0.212524, -0.968448,
		-0.322938, 0.914408, 0.244069,
		0.937427, 0.344518, -0.050391,
		31.980562, 30.473768, 51.787395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263571, 30.783678, 51.372711>,  <31.324364, 30.232605, 51.822670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263571, 30.783678, 51.372711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649059, 30.677446, 51.362072>,  <31.880352, 30.613707, 51.355686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649059, 30.677446, 51.362072>,  <31.263571, 30.783678, 51.372711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649059, 30.677446, 51.362072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004938, 0.117394, -0.993073,
		0.266865, 0.956915, 0.114446,
		0.963721, -0.265581, -0.026603,
		31.938175, 30.597773, 51.354092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474386, 31.235115, 50.945328>,  <31.263571, 30.783678, 51.372711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474386, 31.235115, 50.945328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740015, 30.936129, 50.952251>,  <31.899393, 30.756737, 50.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740015, 30.936129, 50.952251>,  <31.474386, 31.235115, 50.945328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740015, 30.936129, 50.952251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086021, -0.099384, -0.991324,
		0.742704, 0.656821, -0.130297,
		0.664072, -0.747468, 0.017312,
		31.939236, 30.711887, 50.957447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842344, 31.283226, 50.285534>,  <31.474386, 31.235115, 50.945328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842344, 31.283226, 50.285534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945251, 30.919033, 50.415047>,  <32.006996, 30.700518, 50.492756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945251, 30.919033, 50.415047>,  <31.842344, 31.283226, 50.285534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945251, 30.919033, 50.415047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182093, -0.283386, -0.941560,
		0.949029, 0.301192, 0.092886,
		0.257268, -0.910481, 0.323786,
		32.022430, 30.645889, 50.512184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568920, 31.128824, 50.115231>,  <31.842344, 31.283226, 50.285534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568920, 31.128824, 50.115231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352253, 30.792690, 50.123482>,  <32.222252, 30.591009, 50.128433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352253, 30.792690, 50.123482>,  <32.568920, 31.128824, 50.115231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352253, 30.792690, 50.123482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175454, -0.137023, -0.974905,
		0.822075, -0.524460, 0.221662,
		-0.541672, -0.840337, 0.020625,
		32.189751, 30.540588, 50.129669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869438, 30.717272, 49.726868>,  <32.568920, 31.128824, 50.115231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869438, 30.717272, 49.726868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530090, 30.507919, 49.758713>,  <32.326481, 30.382307, 49.777821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530090, 30.507919, 49.758713>,  <32.869438, 30.717272, 49.726868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530090, 30.507919, 49.758713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103699, 0.016825, -0.994467,
		0.519148, -0.851931, -0.068548,
		-0.848370, -0.523384, 0.079610,
		32.275578, 30.350904, 49.782597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023098, 30.237236, 49.275570>,  <32.869438, 30.717272, 49.726868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023098, 30.237236, 49.275570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629288, 30.245466, 49.345192>,  <32.393002, 30.250404, 49.386963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629288, 30.245466, 49.345192>,  <33.023098, 30.237236, 49.275570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629288, 30.245466, 49.345192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172830, 0.050969, -0.983632,
		-0.029112, -0.998488, -0.046623,
		-0.984521, 0.020577, 0.174053,
		32.333931, 30.251638, 49.397408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782898, 29.708935, 48.938660>,  <33.023098, 30.237236, 49.275570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782898, 29.708935, 48.938660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460342, 29.941908, 48.979671>,  <32.266808, 30.081692, 49.004276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460342, 29.941908, 48.979671>,  <32.782898, 29.708935, 48.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460342, 29.941908, 48.979671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173911, -0.067848, -0.982421,
		-0.565238, -0.810043, 0.156003,
		-0.806388, 0.582433, 0.102525,
		32.218426, 30.116638, 49.010429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217178, 29.425514, 48.476997>,  <32.782898, 29.708935, 48.938660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217178, 29.425514, 48.476997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132435, 29.811029, 48.541779>,  <32.081589, 30.042339, 48.580647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132435, 29.811029, 48.541779>,  <32.217178, 29.425514, 48.476997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132435, 29.811029, 48.541779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233815, 0.110914, -0.965934,
		-0.948919, -0.242506, 0.201850,
		-0.211857, 0.963789, 0.161950,
		32.068878, 30.100166, 48.590363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691994, 29.515568, 47.957363>,  <32.217178, 29.425514, 48.476997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691994, 29.515568, 47.957363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686638, 29.896177, 48.080276>,  <31.683424, 30.124544, 48.154022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686638, 29.896177, 48.080276>,  <31.691994, 29.515568, 47.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686638, 29.896177, 48.080276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070585, 0.307441, -0.948946,
		-0.997416, 0.008983, -0.071280,
		-0.013390, 0.951525, 0.307280,
		31.682621, 30.181635, 48.172459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126698, 29.827606, 47.727413>,  <31.691994, 29.515568, 47.957363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126698, 29.827606, 47.727413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382751, 30.130497, 47.779316>,  <31.536385, 30.312231, 47.810455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382751, 30.130497, 47.779316>,  <31.126698, 29.827606, 47.727413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382751, 30.130497, 47.779316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010883, 0.159937, -0.987067,
		-0.768185, 0.633269, 0.094140,
		0.640136, 0.757226, 0.129753,
		31.574793, 30.357664, 47.818241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903572, 30.495192, 47.487793>,  <31.126698, 29.827606, 47.727413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903572, 30.495192, 47.487793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302462, 30.516523, 47.467010>,  <31.541796, 30.529322, 47.454540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302462, 30.516523, 47.467010>,  <30.903572, 30.495192, 47.487793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302462, 30.516523, 47.467010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065154, 0.287449, -0.955577,
		-0.036026, 0.956310, 0.290126,
		0.997225, 0.053328, -0.051952,
		31.601629, 30.532522, 47.451424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012743, 31.085983, 47.066315>,  <30.903572, 30.495192, 47.487793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012743, 31.085983, 47.066315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360752, 30.888817, 47.070263>,  <31.569557, 30.770517, 47.072632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360752, 30.888817, 47.070263>,  <31.012743, 31.085983, 47.066315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360752, 30.888817, 47.070263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134933, 0.218803, -0.966394,
		0.474191, 0.842116, 0.256874,
		0.870021, -0.492917, 0.009875,
		31.621758, 30.740942, 47.073227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519493, 31.445770, 46.609268>,  <31.012743, 31.085983, 47.066315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519493, 31.445770, 46.609268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632488, 31.063679, 46.644451>,  <31.700285, 30.834423, 46.665562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632488, 31.063679, 46.644451>,  <31.519493, 31.445770, 46.609268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632488, 31.063679, 46.644451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276288, -0.006786, -0.961051,
		0.918622, 0.295784, 0.262002,
		0.282486, -0.955231, 0.087955,
		31.717234, 30.777109, 46.670837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183743, 31.538000, 46.467438>,  <31.519493, 31.445770, 46.609268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183743, 31.538000, 46.467438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072529, 31.166405, 46.369720>,  <32.005802, 30.943447, 46.311092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072529, 31.166405, 46.369720>,  <32.183743, 31.538000, 46.467438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072529, 31.166405, 46.369720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004574, 0.253033, -0.967447,
		0.960561, -0.270099, -0.066102,
		-0.278033, -0.928989, -0.244289,
		31.989119, 30.887709, 46.296432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634190, 31.373146, 45.887905>,  <32.183743, 31.538000, 46.467438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634190, 31.373146, 45.887905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339996, 31.107176, 45.835842>,  <32.163479, 30.947594, 45.804604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339996, 31.107176, 45.835842>,  <32.634190, 31.373146, 45.887905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339996, 31.107176, 45.835842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002899, 0.189011, -0.981971,
		0.677538, -0.722599, -0.137087,
		-0.735482, -0.664925, -0.130157,
		32.119350, 30.907698, 45.796795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889633, 31.021320, 45.373909>,  <32.634190, 31.373146, 45.887905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889633, 31.021320, 45.373909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500805, 30.927626, 45.379734>,  <32.267509, 30.871408, 45.383228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500805, 30.927626, 45.379734>,  <32.889633, 31.021320, 45.373909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500805, 30.927626, 45.379734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024592, 0.039969, -0.998898,
		0.233397, -0.971358, -0.044613,
		-0.972070, -0.234237, 0.014559,
		32.209183, 30.857355, 45.384102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797123, 30.441032, 44.942932>,  <32.889633, 31.021320, 45.373909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797123, 30.441032, 44.942932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436256, 30.612772, 44.959702>,  <32.219738, 30.715816, 44.969765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436256, 30.612772, 44.959702>,  <32.797123, 30.441032, 44.942932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436256, 30.612772, 44.959702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091434, -0.095337, -0.991237,
		-0.421592, -0.898091, 0.125267,
		-0.902164, 0.429351, 0.041922,
		32.165607, 30.741577, 44.972279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284233, 29.990730, 44.572151>,  <32.797123, 30.441032, 44.942932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284233, 29.990730, 44.572151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072262, 30.329885, 44.578590>,  <31.945078, 30.533379, 44.582455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072262, 30.329885, 44.578590>,  <32.284233, 29.990730, 44.572151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072262, 30.329885, 44.578590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234181, -0.128071, -0.963720,
		-0.815066, -0.514475, 0.266428,
		-0.529931, 0.847888, 0.016094,
		31.913282, 30.584251, 44.583420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787525, 29.922113, 44.048061>,  <32.284233, 29.990730, 44.572151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787525, 29.922113, 44.048061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776634, 30.318352, 44.101688>,  <31.770100, 30.556095, 44.133865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776634, 30.318352, 44.101688>,  <31.787525, 29.922113, 44.048061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776634, 30.318352, 44.101688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087158, 0.131255, -0.987510,
		-0.995822, -0.038574, 0.082764,
		-0.027229, 0.990598, 0.134069,
		31.768465, 30.615532, 44.141911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335243, 30.141499, 43.494392>,  <31.787525, 29.922113, 44.048061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335243, 30.141499, 43.494392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537628, 30.469820, 43.600433>,  <31.659060, 30.666813, 43.664059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537628, 30.469820, 43.600433>,  <31.335243, 30.141499, 43.494392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537628, 30.469820, 43.600433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039247, 0.285119, -0.957688,
		-0.861662, 0.494959, 0.112046,
		0.505963, 0.820806, 0.265102,
		31.689417, 30.716063, 43.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936563, 30.683884, 43.163853>,  <31.335243, 30.141499, 43.494392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936563, 30.683884, 43.163853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291161, 30.840227, 43.262939>,  <31.503918, 30.934034, 43.322392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291161, 30.840227, 43.262939>,  <30.936563, 30.683884, 43.163853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291161, 30.840227, 43.262939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091902, 0.375940, -0.922075,
		-0.453528, 0.840177, 0.297346,
		0.886491, 0.390861, 0.247714,
		31.557108, 30.957485, 43.337254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941959, 31.394722, 42.996063>,  <30.936563, 30.683884, 43.163853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941959, 31.394722, 42.996063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333351, 31.312191, 42.997227>,  <31.568186, 31.262672, 42.997925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333351, 31.312191, 42.997227>,  <30.941959, 31.394722, 42.996063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333351, 31.312191, 42.997227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090006, 0.414050, -0.905793,
		0.185684, 0.886562, 0.423710,
		0.978479, -0.206328, 0.002913,
		31.626894, 31.250292, 42.998100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282227, 31.951393, 42.718182>,  <30.941959, 31.394722, 42.996063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282227, 31.951393, 42.718182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531443, 31.642925, 42.665848>,  <31.680973, 31.457844, 42.634445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531443, 31.642925, 42.665848>,  <31.282227, 31.951393, 42.718182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531443, 31.642925, 42.665848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227960, 0.339028, -0.912740,
		0.748235, 0.538848, 0.387024,
		0.623040, -0.771170, -0.130837,
		31.718355, 31.411573, 42.626598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874266, 32.264832, 42.446609>,  <31.282227, 31.951393, 42.718182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874266, 32.264832, 42.446609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941469, 31.882790, 42.349003>,  <31.981791, 31.653564, 42.290440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941469, 31.882790, 42.349003>,  <31.874266, 32.264832, 42.446609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941469, 31.882790, 42.349003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545423, 0.296256, -0.784057,
		0.821150, -0.001363, 0.570711,
		0.168008, -0.955107, -0.244014,
		31.991871, 31.596258, 42.275799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555336, 32.224819, 42.223934>,  <31.874266, 32.264832, 42.446609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555336, 32.224819, 42.223934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408638, 31.874893, 42.097317>,  <32.320621, 31.664938, 42.021347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408638, 31.874893, 42.097317>,  <32.555336, 32.224819, 42.223934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408638, 31.874893, 42.097317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585051, 0.047678, -0.809593,
		0.723337, -0.482105, 0.494326,
		-0.366741, -0.874815, -0.316543,
		32.298615, 31.612448, 42.002354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126804, 31.722435, 42.013226>,  <32.555336, 32.224819, 42.223934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126804, 31.722435, 42.013226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792946, 31.604242, 41.827301>,  <32.592628, 31.533327, 41.715748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792946, 31.604242, 41.827301>,  <33.126804, 31.722435, 42.013226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792946, 31.604242, 41.827301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476357, 0.036360, -0.878500,
		0.276483, -0.954655, 0.110407,
		-0.834650, -0.295484, -0.464809,
		32.542549, 31.515596, 41.687859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395329, 31.218208, 41.497612>,  <33.126804, 31.722435, 42.013226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395329, 31.218208, 41.497612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033077, 31.329182, 41.369320>,  <32.815727, 31.395765, 41.292343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033077, 31.329182, 41.369320>,  <33.395329, 31.218208, 41.497612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033077, 31.329182, 41.369320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335538, 0.006275, -0.942006,
		-0.259334, -0.960724, -0.098773,
		-0.905627, 0.277436, -0.320732,
		32.761391, 31.412413, 41.273102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396713, 30.889486, 40.885414>,  <33.395329, 31.218208, 41.497612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396713, 30.889486, 40.885414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105396, 31.160608, 40.845074>,  <32.930607, 31.323280, 40.820869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105396, 31.160608, 40.845074>,  <33.396713, 30.889486, 40.885414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105396, 31.160608, 40.845074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184184, 0.051863, -0.981523,
		-0.660050, -0.733411, -0.162612,
		-0.728293, 0.677804, -0.100851,
		32.886909, 31.363949, 40.814819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045589, 30.698832, 40.290909>,  <33.396713, 30.889486, 40.885414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045589, 30.698832, 40.290909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950771, 31.083466, 40.346283>,  <32.893879, 31.314245, 40.379509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950771, 31.083466, 40.346283>,  <33.045589, 30.698832, 40.290909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950771, 31.083466, 40.346283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004683, 0.143627, -0.989621,
		-0.971486, -0.233941, -0.038549,
		-0.237049, 0.961584, 0.138436,
		32.879658, 31.371941, 40.387814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519547, 30.821644, 39.812756>,  <33.045589, 30.698832, 40.290909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519547, 30.821644, 39.812756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660965, 31.183025, 39.909729>,  <32.745815, 31.399855, 39.967915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660965, 31.183025, 39.909729>,  <32.519547, 30.821644, 39.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660965, 31.183025, 39.909729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087778, 0.290071, -0.952971,
		-0.931290, 0.315638, 0.181857,
		0.353546, 0.903455, 0.242434,
		32.767029, 31.454062, 39.982460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331978, 31.220072, 39.189762>,  <32.519547, 30.821644, 39.812756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331978, 31.220072, 39.189762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592453, 31.449816, 39.388180>,  <32.748737, 31.587662, 39.507233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592453, 31.449816, 39.388180>,  <32.331978, 31.220072, 39.189762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592453, 31.449816, 39.388180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218961, 0.483642, -0.847435,
		-0.726641, 0.660457, 0.189181,
		0.651190, 0.574358, 0.496048,
		32.787811, 31.622124, 39.536995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102951, 31.864426, 39.074490>,  <32.331978, 31.220072, 39.189762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102951, 31.864426, 39.074490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496704, 31.876730, 39.143822>,  <32.732956, 31.884111, 39.185421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496704, 31.876730, 39.143822>,  <32.102951, 31.864426, 39.074490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496704, 31.876730, 39.143822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131740, 0.524382, -0.841230,
		-0.116767, 0.850928, 0.512140,
		0.984383, 0.030758, 0.173332,
		32.792019, 31.885958, 39.195820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356182, 32.579227, 38.965874>,  <32.102951, 31.864426, 39.074490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356182, 32.579227, 38.965874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681229, 32.347168, 38.943695>,  <32.876259, 32.207932, 38.930389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681229, 32.347168, 38.943695>,  <32.356182, 32.579227, 38.965874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681229, 32.347168, 38.943695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351737, 0.564074, -0.747061,
		0.464682, 0.587576, 0.662439,
		0.812620, -0.580151, -0.055443,
		32.925014, 32.173122, 38.927063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776478, 33.080688, 38.881054>,  <32.356182, 32.579227, 38.965874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776478, 33.080688, 38.881054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958191, 32.742077, 38.770042>,  <33.067219, 32.538910, 38.703434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958191, 32.742077, 38.770042>,  <32.776478, 33.080688, 38.881054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958191, 32.742077, 38.770042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262303, 0.424824, -0.866442,
		0.851368, 0.320808, 0.415035,
		0.454278, -0.846526, -0.277532,
		33.094475, 32.488117, 38.686783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448978, 33.358635, 38.572956>,  <32.776478, 33.080688, 38.881054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448978, 33.358635, 38.572956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426682, 32.987373, 38.425758>,  <33.413303, 32.764618, 38.337440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426682, 32.987373, 38.425758>,  <33.448978, 33.358635, 38.572956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426682, 32.987373, 38.425758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376997, 0.321720, -0.868544,
		0.924535, -0.187152, 0.331977,
		-0.055747, -0.928154, -0.367997,
		33.409958, 32.708927, 38.315361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130566, 33.142128, 38.286442>,  <33.448978, 33.358635, 38.572956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130566, 33.142128, 38.286442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849979, 32.918087, 38.110153>,  <33.681625, 32.783665, 38.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849979, 32.918087, 38.110153>,  <34.130566, 33.142128, 38.286442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849979, 32.918087, 38.110153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255941, 0.379159, -0.889231,
		0.665160, -0.736565, -0.122616,
		-0.701467, -0.560099, -0.440719,
		33.639538, 32.750057, 37.977936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869579, 33.129635, 37.978554>,  <34.130566, 33.142128, 38.286442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869579, 33.129635, 37.978554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202541, 33.306316, 38.112415>,  <35.402321, 33.412323, 38.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202541, 33.306316, 38.112415>,  <34.869579, 33.129635, 37.978554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202541, 33.306316, 38.112415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088005, -0.490866, 0.866779,
		0.547129, -0.750966, -0.369730,
		0.832409, 0.441702, 0.334656,
		35.452263, 33.438828, 38.212811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243393, 32.673775, 38.324646>,  <34.869579, 33.129635, 37.978554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243393, 32.673775, 38.324646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388790, 33.019951, 38.462566>,  <35.476028, 33.227657, 38.545319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388790, 33.019951, 38.462566>,  <35.243393, 32.673775, 38.324646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388790, 33.019951, 38.462566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172987, -0.426386, 0.887846,
		0.915396, -0.263078, -0.304697,
		0.363492, 0.865439, 0.344803,
		35.497837, 33.279583, 38.566006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922276, 32.542263, 38.478638>,  <35.243393, 32.673775, 38.324646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922276, 32.542263, 38.478638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831615, 32.864784, 38.697178>,  <35.777218, 33.058296, 38.828304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831615, 32.864784, 38.697178>,  <35.922276, 32.542263, 38.478638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831615, 32.864784, 38.697178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343864, -0.458584, 0.819426,
		0.911255, 0.373596, -0.173319,
		-0.226653, 0.806304, 0.546353,
		35.763618, 33.106674, 38.861084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446945, 32.551575, 39.106403>,  <35.922276, 32.542263, 38.478638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446945, 32.551575, 39.106403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146244, 32.792332, 39.214176>,  <35.965824, 32.936787, 39.278839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146244, 32.792332, 39.214176>,  <36.446945, 32.551575, 39.106403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146244, 32.792332, 39.214176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092614, -0.308156, 0.946817,
		0.652905, 0.736729, 0.175915,
		-0.751757, 0.601889, 0.269428,
		35.920715, 32.972897, 39.295006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673820, 32.874947, 39.676456>,  <36.446945, 32.551575, 39.106403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673820, 32.874947, 39.676456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276356, 32.914921, 39.697052>,  <36.037876, 32.938904, 39.709408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276356, 32.914921, 39.697052>,  <36.673820, 32.874947, 39.676456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276356, 32.914921, 39.697052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040244, -0.111408, 0.992960,
		0.104963, 0.988738, 0.106680,
		-0.993662, 0.099931, 0.051485,
		35.978256, 32.944901, 39.712498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783279, 33.284866, 40.157269>,  <36.673820, 32.874947, 39.676456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783279, 33.284866, 40.157269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399235, 33.173042, 40.159645>,  <36.168808, 33.105949, 40.161072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399235, 33.173042, 40.159645>,  <36.783279, 33.284866, 40.157269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399235, 33.173042, 40.159645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060493, 0.228409, 0.971684,
		-0.273000, 0.932564, -0.236209,
		-0.960110, -0.279559, 0.005942,
		36.111202, 33.089176, 40.161427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344429, 33.748089, 40.516869>,  <36.783279, 33.284866, 40.157269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344429, 33.748089, 40.516869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126129, 33.413658, 40.539288>,  <35.995152, 33.213001, 40.552738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126129, 33.413658, 40.539288>,  <36.344429, 33.748089, 40.516869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126129, 33.413658, 40.539288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022375, 0.081401, 0.996430,
		-0.837652, 0.542543, -0.063131,
		-0.545746, -0.836074, 0.056046,
		35.962406, 33.162834, 40.556103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864235, 33.975502, 41.057156>,  <36.344429, 33.748089, 40.516869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864235, 33.975502, 41.057156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833878, 33.577061, 41.039227>,  <35.815662, 33.337994, 41.028469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833878, 33.577061, 41.039227>,  <35.864235, 33.975502, 41.057156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833878, 33.577061, 41.039227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119040, -0.035580, 0.992252,
		-0.989984, 0.080644, -0.115876,
		-0.075896, -0.996108, -0.044824,
		35.811108, 33.278229, 41.025780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196964, 33.841377, 41.403141>,  <35.864235, 33.975502, 41.057156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196964, 33.841377, 41.403141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395554, 33.494156, 41.403217>,  <35.514706, 33.285824, 41.403263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395554, 33.494156, 41.403217>,  <35.196964, 33.841377, 41.403141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395554, 33.494156, 41.403217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269503, -0.153932, 0.950617,
		-0.825157, -0.472006, -0.310365,
		0.496472, -0.868052, 0.000189,
		35.544495, 33.233742, 41.403275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763657, 33.397747, 41.705952>,  <35.196964, 33.841377, 41.403141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763657, 33.397747, 41.705952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131538, 33.242794, 41.731483>,  <35.352268, 33.149822, 41.746803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131538, 33.242794, 41.731483>,  <34.763657, 33.397747, 41.705952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131538, 33.242794, 41.731483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202078, -0.327696, 0.922919,
		-0.336602, -0.861715, -0.379666,
		0.919709, -0.387378, 0.063831,
		35.407452, 33.126579, 41.750633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719692, 32.670105, 41.993305>,  <34.763657, 33.397747, 41.705952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719692, 32.670105, 41.993305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097919, 32.775860, 42.069202>,  <35.324856, 32.839314, 42.114738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097919, 32.775860, 42.069202>,  <34.719692, 32.670105, 41.993305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097919, 32.775860, 42.069202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104135, -0.306562, 0.946137,
		0.308316, -0.914395, -0.262343,
		0.945567, 0.264390, 0.189738,
		35.381588, 32.855175, 42.126125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974327, 32.074059, 42.451736>,  <34.719692, 32.670105, 41.993305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974327, 32.074059, 42.451736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242207, 32.368706, 42.489479>,  <35.402935, 32.545494, 42.512123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242207, 32.368706, 42.489479>,  <34.974327, 32.074059, 42.451736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242207, 32.368706, 42.489479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165076, -0.271534, 0.948166,
		0.724053, -0.619410, -0.303443,
		0.669699, 0.736614, 0.094355,
		35.443115, 32.589691, 42.517784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681015, 31.728466, 42.603424>,  <34.974327, 32.074059, 42.451736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681015, 31.728466, 42.603424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662292, 32.106552, 42.732655>,  <35.651058, 32.333405, 42.810192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662292, 32.106552, 42.732655>,  <35.681015, 31.728466, 42.603424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662292, 32.106552, 42.732655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307326, -0.294116, 0.905012,
		0.950452, 0.141651, -0.276722,
		-0.046807, 0.945215, 0.323076,
		35.648251, 32.390118, 42.829578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219833, 31.767563, 43.130817>,  <35.681015, 31.728466, 42.603424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219833, 31.767563, 43.130817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986053, 32.083004, 43.207260>,  <35.845787, 32.272270, 43.253124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986053, 32.083004, 43.207260>,  <36.219833, 31.767563, 43.130817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986053, 32.083004, 43.207260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138987, -0.134742, 0.981085,
		0.799437, 0.599957, -0.030856,
		-0.584451, 0.788604, 0.191104,
		35.810719, 32.319584, 43.264591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339916, 32.012405, 43.893902>,  <36.219833, 31.767563, 43.130817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339916, 32.012405, 43.893902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979519, 32.172424, 43.826763>,  <35.763279, 32.268436, 43.786480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979519, 32.172424, 43.826763>,  <36.339916, 32.012405, 43.893902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979519, 32.172424, 43.826763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268128, -0.209324, 0.940367,
		0.341059, 0.892269, 0.295864,
		-0.900992, 0.400050, -0.167850,
		35.709221, 32.292439, 43.776409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216316, 32.468365, 44.491333>,  <36.339916, 32.012405, 43.893902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216316, 32.468365, 44.491333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866203, 32.396843, 44.311592>,  <35.656136, 32.353931, 44.203747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866203, 32.396843, 44.311592>,  <36.216316, 32.468365, 44.491333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866203, 32.396843, 44.311592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437658, -0.102484, 0.893282,
		-0.205770, 0.978534, 0.011449,
		-0.875279, -0.178800, -0.449351,
		35.603619, 32.343204, 44.176788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711620, 32.839645, 44.867092>,  <36.216316, 32.468365, 44.491333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711620, 32.839645, 44.867092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547764, 32.516518, 44.697567>,  <35.449448, 32.322639, 44.595852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547764, 32.516518, 44.697567>,  <35.711620, 32.839645, 44.867092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547764, 32.516518, 44.697567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293884, -0.322949, 0.899631,
		-0.863611, 0.493079, -0.105112,
		-0.409643, -0.807822, -0.423811,
		35.424870, 32.274170, 44.570423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998470, 32.894325, 45.157330>,  <35.711620, 32.839645, 44.867092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998470, 32.894325, 45.157330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041744, 32.519005, 45.025944>,  <35.067707, 32.293812, 44.947113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041744, 32.519005, 45.025944>,  <34.998470, 32.894325, 45.157330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041744, 32.519005, 45.025944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326449, -0.345613, 0.879763,
		-0.939003, 0.012053, -0.343696,
		0.108182, -0.938300, -0.328466,
		35.074200, 32.237514, 44.927402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346741, 32.558296, 45.202042>,  <34.998470, 32.894325, 45.157330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346741, 32.558296, 45.202042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607815, 32.255417, 45.191845>,  <34.764458, 32.073689, 45.185726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607815, 32.255417, 45.191845>,  <34.346741, 32.558296, 45.202042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607815, 32.255417, 45.191845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537978, -0.486887, 0.688128,
		-0.533466, -0.435413, -0.725141,
		0.652682, -0.757203, -0.025495,
		34.803619, 32.028255, 45.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867874, 32.010300, 45.366138>,  <34.346741, 32.558296, 45.202042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867874, 32.010300, 45.366138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234085, 31.852640, 45.398266>,  <34.453812, 31.758045, 45.417542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234085, 31.852640, 45.398266>,  <33.867874, 32.010300, 45.366138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234085, 31.852640, 45.398266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347196, -0.673488, 0.652587,
		-0.203120, -0.625350, -0.753445,
		0.915531, -0.394146, 0.080320,
		34.508743, 31.734396, 45.422363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843193, 31.325216, 45.390659>,  <33.867874, 32.010300, 45.366138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843193, 31.325216, 45.390659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197346, 31.393747, 45.563519>,  <34.409836, 31.434866, 45.667233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197346, 31.393747, 45.563519>,  <33.843193, 31.325216, 45.390659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197346, 31.393747, 45.563519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283870, -0.536900, 0.794454,
		0.368130, -0.826066, -0.426726,
		0.885380, 0.171328, 0.432144,
		34.462959, 31.445147, 45.693161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057816, 30.586433, 45.668758>,  <33.843193, 31.325216, 45.390659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057816, 30.586433, 45.668758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285000, 30.870218, 45.835655>,  <34.421310, 31.040489, 45.935795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285000, 30.870218, 45.835655>,  <34.057816, 30.586433, 45.668758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285000, 30.870218, 45.835655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220719, -0.357084, 0.907620,
		0.792911, -0.607582, -0.046217,
		0.567957, 0.709461, 0.417241,
		34.455387, 31.083057, 45.960827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515148, 30.247177, 46.107243>,  <34.057816, 30.586433, 45.668758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515148, 30.247177, 46.107243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485046, 30.623430, 46.239632>,  <34.466984, 30.849182, 46.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485046, 30.623430, 46.239632>,  <34.515148, 30.247177, 46.107243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485046, 30.623430, 46.239632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237189, -0.339275, 0.910293,
		0.968544, -0.010000, 0.248640,
		-0.075255, 0.940634, 0.330975,
		34.462471, 30.905621, 46.338924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748646, 30.240789, 46.728561>,  <34.515148, 30.247177, 46.107243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748646, 30.240789, 46.728561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595314, 30.605450, 46.787819>,  <34.503315, 30.824245, 46.823372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595314, 30.605450, 46.787819>,  <34.748646, 30.240789, 46.728561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595314, 30.605450, 46.787819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105965, -0.202747, 0.973481,
		0.917512, 0.357468, 0.174323,
		-0.383332, 0.911653, 0.148143,
		34.480316, 30.878946, 46.832260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137867, 30.580351, 47.375507>,  <34.748646, 30.240789, 46.728561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137867, 30.580351, 47.375507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795357, 30.773897, 47.303211>,  <34.589851, 30.890024, 47.259834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795357, 30.773897, 47.303211>,  <35.137867, 30.580351, 47.375507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795357, 30.773897, 47.303211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131771, 0.133711, 0.982221,
		0.499430, 0.864867, -0.050734,
		-0.856274, 0.483865, -0.180744,
		34.538475, 30.919056, 47.248989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197773, 31.132250, 47.867706>,  <35.137867, 30.580351, 47.375507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197773, 31.132250, 47.867706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808342, 31.161503, 47.781170>,  <34.574684, 31.179054, 47.729248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808342, 31.161503, 47.781170>,  <35.197773, 31.132250, 47.867706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808342, 31.161503, 47.781170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167330, 0.416246, 0.893723,
		0.155413, 0.906306, -0.393009,
		-0.973575, 0.073134, -0.216342,
		34.516270, 31.183443, 47.716267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965958, 31.864450, 48.001122>,  <35.197773, 31.132250, 47.867706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965958, 31.864450, 48.001122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641666, 31.631460, 48.024620>,  <34.447094, 31.491667, 48.038719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641666, 31.631460, 48.024620>,  <34.965958, 31.864450, 48.001122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641666, 31.631460, 48.024620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258770, 0.446554, 0.856521,
		-0.525133, 0.679201, -0.512758,
		-0.810724, -0.582474, 0.058743,
		34.398449, 31.456718, 48.042244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484131, 32.295822, 48.269123>,  <34.965958, 31.864450, 48.001122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484131, 32.295822, 48.269123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362904, 31.918009, 48.319736>,  <34.290165, 31.691322, 48.350105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362904, 31.918009, 48.319736>,  <34.484131, 32.295822, 48.269123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362904, 31.918009, 48.319736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239000, 0.203872, 0.949376,
		-0.922511, 0.257488, -0.287531,
		-0.303072, -0.944530, 0.126535,
		34.271980, 31.634649, 48.357697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885296, 32.342148, 48.572701>,  <34.484131, 32.295822, 48.269123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885296, 32.342148, 48.572701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025642, 31.979265, 48.665539>,  <34.109852, 31.761536, 48.721241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025642, 31.979265, 48.665539>,  <33.885296, 32.342148, 48.572701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025642, 31.979265, 48.665539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306058, 0.123140, 0.944015,
		-0.884997, -0.402260, -0.234452,
		0.350869, -0.907206, 0.232093,
		34.130901, 31.707104, 48.735168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524094, 32.303986, 49.284954>,  <33.885296, 32.342148, 48.572701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524094, 32.303986, 49.284954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769287, 31.989893, 49.249950>,  <33.916405, 31.801437, 49.228947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769287, 31.989893, 49.249950>,  <33.524094, 32.303986, 49.284954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769287, 31.989893, 49.249950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139625, -0.001359, 0.990203,
		-0.777657, -0.619202, 0.108805,
		0.612988, -0.785231, -0.087513,
		33.953182, 31.754324, 49.223698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397976, 31.808662, 49.879097>,  <33.524094, 32.303986, 49.284954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397976, 31.808662, 49.879097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763126, 31.718441, 49.742992>,  <33.982216, 31.664309, 49.661331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763126, 31.718441, 49.742992>,  <33.397976, 31.808662, 49.879097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763126, 31.718441, 49.742992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356084, 0.032333, 0.933894,
		-0.199641, -0.973694, 0.109832,
		0.912879, -0.225553, -0.340262,
		34.036991, 31.650776, 49.640915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645370, 31.290668, 50.351784>,  <33.397976, 31.808662, 49.879097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645370, 31.290668, 50.351784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951561, 31.444620, 50.145515>,  <34.135273, 31.536991, 50.021755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951561, 31.444620, 50.145515>,  <33.645370, 31.290668, 50.351784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951561, 31.444620, 50.145515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552743, 0.016990, 0.833179,
		0.329435, -0.922810, -0.199734,
		0.765472, 0.384880, -0.515674,
		34.181202, 31.560083, 49.990814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130219, 30.882059, 50.454704>,  <33.645370, 31.290668, 50.351784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130219, 30.882059, 50.454704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293903, 31.240553, 50.386223>,  <34.392113, 31.455648, 50.345135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293903, 31.240553, 50.386223>,  <34.130219, 30.882059, 50.454704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293903, 31.240553, 50.386223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368038, 0.009569, 0.929762,
		0.834921, -0.443482, -0.325931,
		0.409213, 0.896233, -0.171207,
		34.416668, 31.509422, 50.334862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887047, 30.912220, 50.704079>,  <34.130219, 30.882059, 50.454704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887047, 30.912220, 50.704079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759583, 31.291174, 50.716164>,  <34.683105, 31.518547, 50.723415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759583, 31.291174, 50.716164>,  <34.887047, 30.912220, 50.704079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759583, 31.291174, 50.716164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398636, 0.105027, 0.911075,
		0.859968, 0.302369, -0.411131,
		-0.318661, 0.947387, 0.030215,
		34.663986, 31.575390, 50.725227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434017, 31.205021, 50.915112>,  <34.887047, 30.912220, 50.704079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434017, 31.205021, 50.915112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136669, 31.464281, 50.981201>,  <34.958260, 31.619837, 51.020855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136669, 31.464281, 50.981201>,  <35.434017, 31.205021, 50.915112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136669, 31.464281, 50.981201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451281, 0.303673, 0.839123,
		0.493705, 0.698342, -0.518241,
		-0.743371, 0.648152, 0.165224,
		34.913658, 31.658726, 51.030769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640305, 31.759449, 51.273563>,  <35.434017, 31.205021, 50.915112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640305, 31.759449, 51.273563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258179, 31.836308, 51.363411>,  <35.028904, 31.882423, 51.417320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258179, 31.836308, 51.363411>,  <35.640305, 31.759449, 51.273563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258179, 31.836308, 51.363411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251401, 0.128446, 0.959322,
		0.155479, 0.972924, -0.171012,
		-0.955314, 0.192147, 0.224623,
		34.971584, 31.893951, 51.430798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659805, 32.331120, 51.763737>,  <35.640305, 31.759449, 51.273563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659805, 32.331120, 51.763737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294239, 32.177448, 51.816158>,  <35.074902, 32.085247, 51.847610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294239, 32.177448, 51.816158>,  <35.659805, 32.331120, 51.763737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294239, 32.177448, 51.816158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154522, -0.030730, 0.987511,
		-0.375350, 0.922749, 0.087449,
		-0.913912, -0.384175, 0.131051,
		35.020065, 32.062195, 51.855473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345875, 32.702602, 52.327805>,  <35.659805, 32.331120, 51.763737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345875, 32.702602, 52.327805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173611, 32.342243, 52.306187>,  <35.070251, 32.126030, 52.293217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173611, 32.342243, 52.306187>,  <35.345875, 32.702602, 52.327805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173611, 32.342243, 52.306187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129744, -0.121059, 0.984129,
		-0.893141, 0.416812, 0.169021,
		-0.430658, -0.900896, -0.054044,
		35.044415, 32.071976, 52.289974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421486, 33.156082, 52.921684>,  <35.345875, 32.702602, 52.327805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421486, 33.156082, 52.921684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571217, 33.503448, 53.051750>,  <35.661053, 33.711868, 53.129791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571217, 33.503448, 53.051750>,  <35.421486, 33.156082, 52.921684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571217, 33.503448, 53.051750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268901, 0.233937, -0.934327,
		-0.887454, 0.437178, -0.145950,
		0.374325, 0.868417, 0.325165,
		35.683514, 33.763973, 53.149300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155888, 33.714577, 52.531445>,  <35.421486, 33.156082, 52.921684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155888, 33.714577, 52.531445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508663, 33.834499, 52.676933>,  <35.720329, 33.906452, 52.764225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508663, 33.834499, 52.676933>,  <35.155888, 33.714577, 52.531445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508663, 33.834499, 52.676933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309221, 0.214398, -0.926507,
		-0.355754, 0.929597, 0.096380,
		0.881942, 0.299806, 0.363723,
		35.773247, 33.924442, 52.786049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319187, 34.288792, 52.282104>,  <35.155888, 33.714577, 52.531445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319187, 34.288792, 52.282104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683247, 34.156433, 52.381809>,  <35.901684, 34.077019, 52.441631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683247, 34.156433, 52.381809>,  <35.319187, 34.288792, 52.282104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683247, 34.156433, 52.381809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296381, 0.099706, -0.949851,
		0.289449, 0.938385, 0.188819,
		0.910153, -0.330896, 0.249259,
		35.956291, 34.057163, 52.456589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652962, 34.666237, 51.839390>,  <35.319187, 34.288792, 52.282104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652962, 34.666237, 51.839390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915573, 34.391670, 51.964481>,  <36.073139, 34.226929, 52.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915573, 34.391670, 51.964481>,  <35.652962, 34.666237, 51.839390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915573, 34.391670, 51.964481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471114, 0.049362, -0.880690,
		0.589084, 0.725531, 0.355789,
		0.656530, -0.686417, 0.312729,
		36.112534, 34.185745, 52.058300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304256, 34.972179, 51.694542>,  <35.652962, 34.666237, 51.839390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304256, 34.972179, 51.694542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364628, 34.578339, 51.729828>,  <36.400852, 34.342033, 51.750999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364628, 34.578339, 51.729828>,  <36.304256, 34.972179, 51.694542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364628, 34.578339, 51.729828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501275, -0.000685, -0.865288,
		0.852023, 0.174821, 0.493452,
		0.150932, -0.984600, 0.088216,
		36.409908, 34.282959, 51.756294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004971, 34.825397, 51.436176>,  <36.304256, 34.972179, 51.694542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004971, 34.825397, 51.436176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791813, 34.487709, 51.413120>,  <36.663918, 34.285095, 51.399288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791813, 34.487709, 51.413120>,  <37.004971, 34.825397, 51.436176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791813, 34.487709, 51.413120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333860, -0.147174, -0.931063,
		0.777538, -0.515397, 0.360278,
		-0.532890, -0.844219, -0.057637,
		36.631947, 34.234444, 51.395828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260231, 34.581013, 50.968525>,  <37.004971, 34.825397, 51.436176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260231, 34.581013, 50.968525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975941, 34.299839, 50.979576>,  <36.805367, 34.131134, 50.986206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975941, 34.299839, 50.979576>,  <37.260231, 34.581013, 50.968525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975941, 34.299839, 50.979576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130216, -0.170051, -0.976794,
		0.691316, -0.690632, 0.212391,
		-0.710722, -0.702930, 0.027627,
		36.762726, 34.088959, 50.987865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499123, 33.849865, 50.675816>,  <37.260231, 34.581013, 50.968525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499123, 33.849865, 50.675816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101494, 33.885860, 50.651440>,  <36.862915, 33.907459, 50.636814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101494, 33.885860, 50.651440>,  <37.499123, 33.849865, 50.675816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101494, 33.885860, 50.651440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050598, -0.113046, -0.992301,
		-0.096169, -0.989508, 0.107824,
		-0.994078, 0.089973, -0.060939,
		36.803272, 33.912857, 50.633156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254391, 33.304466, 50.171463>,  <37.499123, 33.849865, 50.675816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254391, 33.304466, 50.171463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950417, 33.561562, 50.210197>,  <36.768032, 33.715820, 50.233437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950417, 33.561562, 50.210197>,  <37.254391, 33.304466, 50.171463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950417, 33.561562, 50.210197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162889, -0.044096, -0.985659,
		-0.629254, -0.764812, 0.138206,
		-0.759938, 0.642742, 0.096831,
		36.722435, 33.754383, 50.239246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699123, 32.981663, 49.682728>,  <37.254391, 33.304466, 50.171463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699123, 32.981663, 49.682728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604317, 33.362293, 49.761028>,  <36.547432, 33.590672, 49.808010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604317, 33.362293, 49.761028>,  <36.699123, 32.981663, 49.682728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604317, 33.362293, 49.761028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284690, 0.124616, -0.950485,
		-0.928856, -0.281011, 0.241369,
		-0.237019, 0.951580, 0.195752,
		36.533211, 33.647766, 49.819756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133503, 33.093639, 49.279240>,  <36.699123, 32.981663, 49.682728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133503, 33.093639, 49.279240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297855, 33.446617, 49.370865>,  <36.396465, 33.658405, 49.425838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297855, 33.446617, 49.370865>,  <36.133503, 33.093639, 49.279240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297855, 33.446617, 49.370865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217369, 0.338829, -0.915394,
		-0.885396, 0.326327, 0.331035,
		0.410882, 0.882443, 0.229064,
		36.421120, 33.711349, 49.439583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565960, 33.487385, 49.128830>,  <36.133503, 33.093639, 49.279240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565960, 33.487385, 49.128830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887543, 33.725040, 49.139027>,  <36.080490, 33.867634, 49.145145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887543, 33.725040, 49.139027>,  <35.565960, 33.487385, 49.128830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887543, 33.725040, 49.139027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152289, 0.247122, -0.956942,
		-0.574860, 0.765457, 0.289157,
		0.803955, 0.594143, 0.025489,
		36.128731, 33.903282, 49.146675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300236, 34.087521, 48.958141>,  <35.565960, 33.487385, 49.128830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300236, 34.087521, 48.958141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689930, 34.097454, 48.868469>,  <35.923744, 34.103413, 48.814667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689930, 34.097454, 48.868469>,  <35.300236, 34.087521, 48.958141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689930, 34.097454, 48.868469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218356, 0.352809, -0.909861,
		0.056500, 0.935366, 0.349140,
		0.974232, 0.024830, -0.224176,
		35.982201, 34.104904, 48.801216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499249, 34.812206, 48.578896>,  <35.300236, 34.087521, 48.958141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499249, 34.812206, 48.578896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776234, 34.537151, 48.491577>,  <35.942425, 34.372120, 48.439186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776234, 34.537151, 48.491577>,  <35.499249, 34.812206, 48.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776234, 34.537151, 48.491577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004049, 0.306283, -0.951932,
		0.721443, 0.658293, 0.214874,
		0.692462, -0.687635, -0.218300,
		35.983971, 34.330860, 48.426086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002316, 35.096714, 48.210796>,  <35.499249, 34.812206, 48.578896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002316, 35.096714, 48.210796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053993, 34.714443, 48.104973>,  <36.084999, 34.485081, 48.041477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053993, 34.714443, 48.104973>,  <36.002316, 35.096714, 48.210796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053993, 34.714443, 48.104973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055689, 0.273371, -0.960295,
		0.990054, 0.109333, 0.088540,
		0.129197, -0.955675, -0.264563,
		36.092751, 34.427742, 48.025604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607105, 35.189926, 47.741615>,  <36.002316, 35.096714, 48.210796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607105, 35.189926, 47.741615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427612, 34.840836, 47.664677>,  <36.319916, 34.631382, 47.618511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427612, 34.840836, 47.664677>,  <36.607105, 35.189926, 47.741615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427612, 34.840836, 47.664677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223828, 0.098620, -0.969626,
		0.865184, -0.478151, 0.151086,
		-0.448728, -0.872723, -0.192348,
		36.292995, 34.579018, 47.606972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988331, 34.917484, 47.185680>,  <36.607105, 35.189926, 47.741615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988331, 34.917484, 47.185680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695107, 34.645687, 47.197781>,  <36.519173, 34.482609, 47.205040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695107, 34.645687, 47.197781>,  <36.988331, 34.917484, 47.185680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695107, 34.645687, 47.197781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112416, -0.164896, -0.979884,
		0.670809, -0.714914, 0.197264,
		-0.733061, -0.679490, 0.030246,
		36.475189, 34.441841, 47.206856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212517, 34.194332, 46.924797>,  <36.988331, 34.917484, 47.185680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212517, 34.194332, 46.924797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817223, 34.231491, 46.876205>,  <36.580044, 34.253784, 46.847050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817223, 34.231491, 46.876205>,  <37.212517, 34.194332, 46.924797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817223, 34.231491, 46.876205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111653, -0.104497, -0.988238,
		-0.104497, -0.990177, 0.092895,
		0.988238, -0.092895, 0.121476,
		36.520752, 34.259361, 46.839764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994553, 33.692280, 46.461655>,  <37.212517, 34.194332, 46.924797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994553, 33.692280, 46.461655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690098, 33.951229, 46.445724>,  <36.507427, 34.106598, 46.436169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690098, 33.951229, 46.445724>,  <36.994553, 33.692280, 46.461655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690098, 33.951229, 46.445724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059887, -0.131279, -0.989535,
		-0.645826, -0.750782, 0.138690,
		-0.761132, 0.647373, -0.039822,
		36.461758, 34.145439, 46.433777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493065, 33.402203, 46.073166>,  <36.994553, 33.692280, 46.461655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493065, 33.402203, 46.073166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432743, 33.796841, 46.048248>,  <36.396549, 34.033623, 46.033298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432743, 33.796841, 46.048248>,  <36.493065, 33.402203, 46.073166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432743, 33.796841, 46.048248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112340, -0.079710, -0.990468,
		-0.982160, -0.142366, 0.122855,
		-0.150802, 0.986600, -0.062294,
		36.387501, 34.092819, 46.029560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904911, 33.439205, 45.597614>,  <36.493065, 33.402203, 46.073166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904911, 33.439205, 45.597614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089172, 33.794144, 45.589455>,  <36.199730, 34.007107, 45.584560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089172, 33.794144, 45.589455>,  <35.904911, 33.439205, 45.597614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089172, 33.794144, 45.589455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099761, 0.028927, -0.994591,
		-0.881954, 0.460200, 0.101848,
		0.460657, 0.887344, -0.020397,
		36.227371, 34.060349, 45.583336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532688, 33.872238, 45.072563>,  <35.904911, 33.439205, 45.597614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532688, 33.872238, 45.072563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894390, 34.037197, 45.116825>,  <36.111412, 34.136173, 45.143383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894390, 34.037197, 45.116825>,  <35.532688, 33.872238, 45.072563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894390, 34.037197, 45.116825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029872, 0.197424, -0.979863,
		-0.425938, 0.889355, 0.166203,
		0.904259, 0.412396, 0.110657,
		36.165668, 34.160915, 45.150021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424320, 34.376869, 44.636196>,  <35.532688, 33.872238, 45.072563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424320, 34.376869, 44.636196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816616, 34.373718, 44.714264>,  <36.051994, 34.371826, 44.761105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816616, 34.373718, 44.714264>,  <35.424320, 34.376869, 44.636196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816616, 34.373718, 44.714264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190771, 0.253181, -0.948422,
		-0.041940, 0.967387, 0.249808,
		0.980738, -0.007880, 0.195168,
		36.110836, 34.371353, 44.772816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716099, 34.982590, 44.294983>,  <35.424320, 34.376869, 44.636196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716099, 34.982590, 44.294983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045147, 34.768112, 44.370651>,  <36.242577, 34.639427, 44.416054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045147, 34.768112, 44.370651>,  <35.716099, 34.982590, 44.294983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045147, 34.768112, 44.370651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416858, 0.342481, -0.841983,
		0.386676, 0.771495, 0.505249,
		0.822625, -0.536192, 0.189175,
		36.291935, 34.607254, 44.427402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345123, 35.325863, 44.132141>,  <35.716099, 34.982590, 44.294983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345123, 35.325863, 44.132141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447521, 34.941006, 44.094734>,  <36.508961, 34.710091, 44.072292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447521, 34.941006, 44.094734>,  <36.345123, 35.325863, 44.132141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447521, 34.941006, 44.094734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478999, 0.210282, -0.852257,
		0.839657, 0.173383, 0.514698,
		0.255998, -0.962143, -0.093515,
		36.524323, 34.652363, 44.066681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036781, 35.352055, 43.955555>,  <36.345123, 35.325863, 44.132141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036781, 35.352055, 43.955555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907421, 34.987740, 43.852894>,  <36.829807, 34.769150, 43.791298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907421, 34.987740, 43.852894>,  <37.036781, 35.352055, 43.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907421, 34.987740, 43.852894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459210, 0.086092, -0.884146,
		0.827369, -0.403790, 0.390402,
		-0.323399, -0.910792, -0.256655,
		36.810402, 34.714500, 43.775898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503719, 35.072475, 43.581299>,  <37.036781, 35.352055, 43.955555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503719, 35.072475, 43.581299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185234, 34.863510, 43.459232>,  <36.994141, 34.738132, 43.385994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185234, 34.863510, 43.459232>,  <37.503719, 35.072475, 43.581299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185234, 34.863510, 43.459232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406871, -0.089054, -0.909135,
		0.447767, -0.848030, 0.283460,
		-0.796217, -0.522412, -0.305163,
		36.946369, 34.706787, 43.367683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790424, 34.433449, 43.202377>,  <37.503719, 35.072475, 43.581299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790424, 34.433449, 43.202377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426517, 34.538002, 43.073383>,  <37.208172, 34.600735, 42.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426517, 34.538002, 43.073383>,  <37.790424, 34.433449, 43.202377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426517, 34.538002, 43.073383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309973, -0.088967, -0.946574,
		-0.276108, -0.961127, -0.000082,
		-0.909770, 0.261382, -0.322488,
		37.153587, 34.616417, 42.976639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499767, 33.905289, 42.825199>,  <37.790424, 34.433449, 43.202377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499767, 33.905289, 42.825199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288326, 34.217762, 42.692337>,  <37.161461, 34.405247, 42.612621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288326, 34.217762, 42.692337>,  <37.499767, 33.905289, 42.825199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288326, 34.217762, 42.692337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301631, -0.192900, -0.933707,
		-0.793472, -0.593749, -0.133663,
		-0.528603, 0.781187, -0.332154,
		37.129745, 34.452118, 42.592690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397999, 33.766155, 42.196442>,  <37.499767, 33.905289, 42.825199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397999, 33.766155, 42.196442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259872, 34.141167, 42.179451>,  <37.176998, 34.366173, 42.169254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259872, 34.141167, 42.179451>,  <37.397999, 33.766155, 42.196442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259872, 34.141167, 42.179451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289166, 0.063227, -0.955188,
		-0.892827, -0.342126, -0.292934,
		-0.345316, 0.937524, -0.042480,
		37.156277, 34.422424, 42.166706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109276, 33.759705, 41.520538>,  <37.397999, 33.766155, 42.196442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109276, 33.759705, 41.520538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149628, 34.147675, 41.609142>,  <37.173840, 34.380459, 41.662304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149628, 34.147675, 41.609142>,  <37.109276, 33.759705, 41.520538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149628, 34.147675, 41.609142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193997, 0.199192, -0.960566,
		-0.975802, 0.139869, -0.168069,
		0.100876, 0.969927, 0.221506,
		37.179890, 34.438652, 41.675594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673706, 34.154171, 41.067448>,  <37.109276, 33.759705, 41.520538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673706, 34.154171, 41.067448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967407, 34.393284, 41.196148>,  <37.143627, 34.536751, 41.273369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967407, 34.393284, 41.196148>,  <36.673706, 34.154171, 41.067448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967407, 34.393284, 41.196148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115747, 0.356773, -0.926993,
		-0.668934, 0.717890, 0.192770,
		0.734254, 0.597785, 0.321752,
		37.187683, 34.572620, 41.292675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647999, 34.707298, 40.678581>,  <36.673706, 34.154171, 41.067448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647999, 34.707298, 40.678581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011024, 34.748360, 40.841450>,  <37.228840, 34.772995, 40.939171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011024, 34.748360, 40.841450>,  <36.647999, 34.707298, 40.678581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011024, 34.748360, 40.841450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347830, 0.359461, -0.865911,
		-0.235253, 0.927497, 0.290527,
		0.907563, 0.102654, 0.407175,
		37.283295, 34.779156, 40.963604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933941, 35.377346, 40.365585>,  <36.647999, 34.707298, 40.678581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933941, 35.377346, 40.365585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241924, 35.168278, 40.511997>,  <37.426716, 35.042835, 40.599842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241924, 35.168278, 40.511997>,  <36.933941, 35.377346, 40.365585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241924, 35.168278, 40.511997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556204, 0.268616, -0.786437,
		0.312730, 0.809109, 0.497537,
		0.769959, -0.522675, 0.366025,
		37.472912, 35.011475, 40.621803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517452, 35.985142, 40.454769>,  <36.933941, 35.377346, 40.365585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517452, 35.985142, 40.454769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653141, 35.610424, 40.420509>,  <37.734554, 35.385593, 40.399952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653141, 35.610424, 40.420509>,  <37.517452, 35.985142, 40.454769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653141, 35.610424, 40.420509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416022, 0.231058, -0.879510,
		0.843714, 0.262717, 0.468109,
		0.339223, -0.936799, -0.085651,
		37.754910, 35.329384, 40.394814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218647, 36.090183, 40.445435>,  <37.517452, 35.985142, 40.454769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218647, 36.090183, 40.445435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214645, 35.714870, 40.307144>,  <38.212242, 35.489681, 40.224171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214645, 35.714870, 40.307144>,  <38.218647, 36.090183, 40.445435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214645, 35.714870, 40.307144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634220, 0.261350, -0.727641,
		0.773088, -0.226550, 0.592461,
		-0.010007, -0.938281, -0.345730,
		38.211643, 35.433388, 40.203426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878593, 35.947861, 40.242420>,  <38.218647, 36.090183, 40.445435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878593, 35.947861, 40.242420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672436, 35.668335, 40.044018>,  <38.548740, 35.500622, 39.924976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672436, 35.668335, 40.044018>,  <38.878593, 35.947861, 40.242420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672436, 35.668335, 40.044018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622030, 0.093053, -0.777444,
		0.589443, -0.709227, 0.386723,
		-0.515398, -0.698812, -0.496010,
		38.517815, 35.458691, 39.895214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428028, 35.510139, 39.896416>,  <38.878593, 35.947861, 40.242420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428028, 35.510139, 39.896416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077278, 35.448055, 39.714428>,  <38.866829, 35.410805, 39.605236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077278, 35.448055, 39.714428>,  <39.428028, 35.510139, 39.896416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077278, 35.448055, 39.714428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449102, 0.073063, -0.890488,
		0.171454, -0.985176, 0.005638,
		-0.876876, -0.155210, -0.454972,
		38.814217, 35.401493, 39.577938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486588, 34.949383, 39.384224>,  <39.428028, 35.510139, 39.896416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486588, 34.949383, 39.384224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182823, 35.177952, 39.259792>,  <39.000565, 35.315094, 39.185131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182823, 35.177952, 39.259792>,  <39.486588, 34.949383, 39.384224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182823, 35.177952, 39.259792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520433, 0.246589, -0.817523,
		-0.390439, -0.782734, -0.484648,
		-0.759412, 0.571420, -0.311083,
		38.954998, 35.349377, 39.166466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251476, 34.801769, 38.578602>,  <39.486588, 34.949383, 39.384224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251476, 34.801769, 38.578602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142502, 35.163666, 38.709576>,  <39.077118, 35.380806, 38.788158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142502, 35.163666, 38.709576>,  <39.251476, 34.801769, 38.578602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142502, 35.163666, 38.709576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322178, 0.406441, -0.854990,
		-0.906632, -0.127437, -0.402218,
		-0.272435, 0.904746, 0.327435,
		39.060772, 35.435089, 38.807808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749294, 35.199322, 38.106438>,  <39.251476, 34.801769, 38.578602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749294, 35.199322, 38.106438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997818, 35.438473, 38.309025>,  <39.146935, 35.581963, 38.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997818, 35.438473, 38.309025>,  <38.749294, 35.199322, 38.106438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997818, 35.438473, 38.309025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442118, 0.266150, -0.856560,
		-0.646917, 0.756110, -0.098972,
		0.621312, 0.597881, 0.506467,
		39.184212, 35.617836, 38.460964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740368, 36.059475, 38.017353>,  <38.749294, 35.199322, 38.106438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740368, 36.059475, 38.017353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089699, 35.888264, 38.110382>,  <39.299297, 35.785538, 38.166199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089699, 35.888264, 38.110382>,  <38.740368, 36.059475, 38.017353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089699, 35.888264, 38.110382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404675, 0.371712, -0.835505,
		0.271168, 0.823787, 0.497839,
		0.873331, -0.428025, 0.232569,
		39.351700, 35.759857, 38.180153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064129, 36.205265, 37.444023>,  <38.740368, 36.059475, 38.017353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064129, 36.205265, 37.444023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370846, 36.002811, 37.601940>,  <39.554874, 35.881340, 37.696690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370846, 36.002811, 37.601940>,  <39.064129, 36.205265, 37.444023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370846, 36.002811, 37.601940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380547, -0.136856, -0.914579,
		0.516932, 0.851525, 0.087670,
		0.766789, -0.506137, 0.394790,
		39.600883, 35.850971, 37.720379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749699, 36.498196, 37.180637>,  <39.064129, 36.205265, 37.444023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749699, 36.498196, 37.180637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711685, 36.110550, 37.271664>,  <39.688877, 35.877964, 37.326279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711685, 36.110550, 37.271664>,  <39.749699, 36.498196, 37.180637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711685, 36.110550, 37.271664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316954, -0.246162, -0.915939,
		0.943668, -0.014919, 0.330558,
		-0.095036, -0.969114, 0.227567,
		39.683174, 35.819817, 37.339935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400131, 36.118561, 37.063843>,  <39.749699, 36.498196, 37.180637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400131, 36.118561, 37.063843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098671, 35.858025, 37.028603>,  <39.917793, 35.701702, 37.007458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098671, 35.858025, 37.028603>,  <40.400131, 36.118561, 37.063843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098671, 35.858025, 37.028603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352023, -0.286802, -0.890968,
		0.555056, -0.702495, 0.445437,
		-0.753653, -0.651341, -0.088103,
		39.872574, 35.662621, 37.002171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706623, 35.378544, 36.953991>,  <40.400131, 36.118561, 37.063843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706623, 35.378544, 36.953991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381603, 35.492340, 36.750488>,  <40.186592, 35.560619, 36.628387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381603, 35.492340, 36.750488>,  <40.706623, 35.378544, 36.953991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381603, 35.492340, 36.750488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496739, -0.118709, -0.859743,
		-0.304984, -0.951300, -0.044862,
		-0.812548, 0.284492, -0.508752,
		40.137840, 35.577686, 36.597862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445911, 35.546185, 36.560230>,  <40.706623, 35.378544, 36.953991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445911, 35.546185, 36.560230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690327, 35.665577, 36.266960>,  <41.836975, 35.737213, 36.091000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690327, 35.665577, 36.266960>,  <41.445911, 35.546185, 36.560230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690327, 35.665577, 36.266960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100646, -0.947967, -0.302043,
		-0.785177, 0.110769, -0.609285,
		0.611038, 0.298479, -0.733173,
		41.873638, 35.755119, 36.047009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137897, 35.462334, 35.793823>,  <41.445911, 35.546185, 36.560230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137897, 35.462334, 35.793823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535069, 35.432838, 35.831051>,  <41.773369, 35.415142, 35.853390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535069, 35.432838, 35.831051>,  <41.137897, 35.462334, 35.793823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535069, 35.432838, 35.831051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061464, -0.989806, -0.128474,
		0.101596, 0.121844, -0.987336,
		0.992925, -0.073738, 0.093072,
		41.832947, 35.410717, 35.858971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414738, 35.126904, 35.208202>,  <41.137897, 35.462334, 35.793823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414738, 35.126904, 35.208202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698509, 35.061924, 35.482521>,  <41.868771, 35.022938, 35.647114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698509, 35.061924, 35.482521>,  <41.414738, 35.126904, 35.208202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698509, 35.061924, 35.482521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055943, -0.982983, -0.174969,
		0.702553, 0.085762, -0.706445,
		0.709429, -0.162446, 0.685800,
		41.911339, 35.013191, 35.688263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781445, 34.651131, 34.926388>,  <41.414738, 35.126904, 35.208202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781445, 34.651131, 34.926388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854462, 34.648212, 35.319656>,  <41.898270, 34.646461, 35.555618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854462, 34.648212, 35.319656>,  <41.781445, 34.651131, 34.926388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854462, 34.648212, 35.319656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035670, -0.999265, -0.014035,
		0.982551, 0.037632, -0.182147,
		0.182541, -0.007293, 0.983171,
		41.909225, 34.646023, 35.614609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326668, 33.991249, 34.994095>,  <41.781445, 34.651131, 34.926388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326668, 33.991249, 34.994095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178249, 34.093777, 35.351112>,  <42.089199, 34.155293, 35.565323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178249, 34.093777, 35.351112>,  <42.326668, 33.991249, 34.994095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178249, 34.093777, 35.351112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232180, -0.956230, 0.178091,
		0.899122, -0.141150, 0.414314,
		-0.371042, 0.256321, 0.892540,
		42.066936, 34.170673, 35.618874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506901, 33.529861, 35.489910>,  <42.326668, 33.991249, 34.994095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506901, 33.529861, 35.489910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191380, 33.697350, 35.669895>,  <42.002068, 33.797844, 35.777885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191380, 33.697350, 35.669895>,  <42.506901, 33.529861, 35.489910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191380, 33.697350, 35.669895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356261, -0.908013, 0.220432,
		0.500873, 0.013572, 0.865414,
		-0.788799, 0.418722, 0.449964,
		41.954739, 33.822968, 35.804886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336914, 33.217976, 36.037357>,  <42.506901, 33.529861, 35.489910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336914, 33.217976, 36.037357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992985, 33.400608, 35.945938>,  <41.786625, 33.510185, 35.891087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992985, 33.400608, 35.945938>,  <42.336914, 33.217976, 36.037357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992985, 33.400608, 35.945938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492639, -0.859487, 0.136340,
		-0.134184, 0.229820, 0.963938,
		-0.859826, 0.456579, -0.228548,
		41.735039, 33.537582, 35.877373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885616, 32.796360, 36.364922>,  <42.336914, 33.217976, 36.037357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885616, 32.796360, 36.364922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643291, 33.021915, 36.140415>,  <41.497898, 33.157249, 36.005711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643291, 33.021915, 36.140415>,  <41.885616, 32.796360, 36.364922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643291, 33.021915, 36.140415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569774, -0.799864, -0.188614,
		-0.555294, 0.205531, 0.805857,
		-0.605809, 0.563893, -0.561266,
		41.461548, 33.191082, 35.972034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297550, 32.533211, 36.541512>,  <41.885616, 32.796360, 36.364922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297550, 32.533211, 36.541512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201988, 32.703186, 36.192261>,  <41.144650, 32.805172, 35.982712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201988, 32.703186, 36.192261>,  <41.297550, 32.533211, 36.541512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201988, 32.703186, 36.192261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464230, -0.839734, -0.281667,
		-0.852886, 0.338039, 0.397889,
		-0.238906, 0.424942, -0.873125,
		41.130318, 32.830669, 35.930325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535614, 32.515453, 36.407894>,  <41.297550, 32.533211, 36.541512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535614, 32.515453, 36.407894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713257, 32.565430, 36.053005>,  <40.819843, 32.595417, 35.840073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713257, 32.565430, 36.053005>,  <40.535614, 32.515453, 36.407894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713257, 32.565430, 36.053005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459332, -0.818452, -0.345182,
		-0.769276, 0.560826, -0.306087,
		0.444104, 0.124945, -0.887220,
		40.846489, 32.602913, 35.786839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012112, 32.311714, 35.850815>,  <40.535614, 32.515453, 36.407894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012112, 32.311714, 35.850815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367840, 32.289124, 35.669304>,  <40.581276, 32.275570, 35.560398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367840, 32.289124, 35.669304>,  <40.012112, 32.311714, 35.850815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367840, 32.289124, 35.669304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283407, -0.846847, -0.450034,
		-0.358864, 0.528830, -0.769127,
		0.889324, -0.056475, -0.453777,
		40.634636, 32.272182, 35.533173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834011, 32.125957, 35.074970>,  <40.012112, 32.311714, 35.850815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834011, 32.125957, 35.074970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208881, 32.033508, 35.179493>,  <40.433804, 31.978039, 35.242207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208881, 32.033508, 35.179493>,  <39.834011, 32.125957, 35.074970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208881, 32.033508, 35.179493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049758, -0.829940, -0.555629,
		0.345289, 0.507720, -0.789301,
		0.937176, -0.231126, 0.261306,
		40.490036, 31.964170, 35.257885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160515, 31.811409, 34.531979>,  <39.834011, 32.125957, 35.074970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160515, 31.811409, 34.531979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392963, 31.672926, 34.826580>,  <40.532433, 31.589836, 35.003342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392963, 31.672926, 34.826580>,  <40.160515, 31.811409, 34.531979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392963, 31.672926, 34.826580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055584, -0.886003, -0.460336,
		0.811917, 0.308448, -0.495631,
		0.581120, -0.346206, 0.736506,
		40.567299, 31.569063, 35.047531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704895, 31.468290, 34.230457>,  <40.160515, 31.811409, 34.531979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704895, 31.468290, 34.230457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710770, 31.323311, 34.603214>,  <40.714294, 31.236322, 34.826866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710770, 31.323311, 34.603214>,  <40.704895, 31.468290, 34.230457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710770, 31.323311, 34.603214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202429, -0.911612, -0.357752,
		0.979187, 0.193894, 0.059984,
		0.014683, -0.362449, 0.931888,
		40.715176, 31.214577, 34.882782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338997, 30.928658, 34.277054>,  <40.704895, 31.468290, 34.230457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338997, 30.928658, 34.277054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104160, 30.844191, 34.589649>,  <40.963257, 30.793510, 34.777206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104160, 30.844191, 34.589649>,  <41.338997, 30.928658, 34.277054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104160, 30.844191, 34.589649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156873, -0.976756, -0.146080,
		0.794174, 0.036832, 0.606574,
		-0.587094, -0.211168, 0.781492,
		40.928032, 30.780840, 34.824097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713337, 30.339554, 34.585251>,  <41.338997, 30.928658, 34.277054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713337, 30.339554, 34.585251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336296, 30.335968, 34.718769>,  <41.110073, 30.333817, 34.798882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336296, 30.335968, 34.718769>,  <41.713337, 30.339554, 34.585251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336296, 30.335968, 34.718769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000490, -0.999601, -0.028231,
		0.333918, -0.026774, 0.942222,
		-0.942602, -0.008965, 0.333798,
		41.053516, 30.333279, 34.818909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715778, 29.831844, 35.026802>,  <41.713337, 30.339554, 34.585251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715778, 29.831844, 35.026802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325596, 29.882181, 34.954533>,  <41.091484, 29.912382, 34.911171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325596, 29.882181, 34.954533>,  <41.715778, 29.831844, 35.026802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325596, 29.882181, 34.954533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131277, -0.991175, 0.018403,
		-0.176759, 0.041669, 0.983372,
		-0.975460, 0.125841, -0.180670,
		41.032959, 29.919933, 34.900333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387428, 29.408585, 35.478840>,  <41.715778, 29.831844, 35.026802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387428, 29.408585, 35.478840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124683, 29.472925, 35.184177>,  <40.967037, 29.511530, 35.007381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124683, 29.472925, 35.184177>,  <41.387428, 29.408585, 35.478840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124683, 29.472925, 35.184177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232252, -0.972641, -0.005285,
		-0.717349, 0.167618, 0.676250,
		-0.656863, 0.160851, -0.736653,
		40.927624, 29.521181, 34.963181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796661, 28.992275, 35.699654>,  <41.387428, 29.408585, 35.478840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796661, 28.992275, 35.699654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745613, 29.031599, 35.304878>,  <40.714985, 29.055193, 35.068012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745613, 29.031599, 35.304878>,  <40.796661, 28.992275, 35.699654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745613, 29.031599, 35.304878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287320, -0.956072, -0.058080,
		-0.949295, 0.276155, 0.150260,
		-0.127620, 0.098308, -0.986939,
		40.707329, 29.061090, 35.008797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156189, 28.696831, 35.507523>,  <40.796661, 28.992275, 35.699654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156189, 28.696831, 35.507523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332264, 28.721487, 35.149208>,  <40.437908, 28.736280, 34.934219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332264, 28.721487, 35.149208>,  <40.156189, 28.696831, 35.507523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332264, 28.721487, 35.149208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130641, -0.982628, -0.131813,
		-0.888351, 0.175049, -0.424489,
		0.440189, 0.061641, -0.895787,
		40.464321, 28.739979, 34.880470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714718, 28.543631, 34.966717>,  <40.156189, 28.696831, 35.507523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714718, 28.543631, 34.966717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090698, 28.464537, 34.855442>,  <40.316288, 28.417080, 34.788677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090698, 28.464537, 34.855442>,  <39.714718, 28.543631, 34.966717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090698, 28.464537, 34.855442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252911, -0.950845, -0.178691,
		-0.229182, 0.238318, -0.943758,
		0.939953, -0.197734, -0.278190,
		40.372684, 28.405216, 34.771984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690617, 28.137108, 34.319813>,  <39.714718, 28.543631, 34.966717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690617, 28.137108, 34.319813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062737, 28.068521, 34.449516>,  <40.286007, 28.027370, 34.527340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062737, 28.068521, 34.449516>,  <39.690617, 28.137108, 34.319813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062737, 28.068521, 34.449516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016197, -0.902356, -0.430687,
		0.366447, 0.395415, -0.842237,
		0.930298, -0.171465, 0.324261,
		40.341827, 28.017082, 34.546795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829216, 27.638636, 33.814079>,  <39.690617, 28.137108, 34.319813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829216, 27.638636, 33.814079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148228, 27.627148, 34.055119>,  <40.339634, 27.620255, 34.199741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148228, 27.627148, 34.055119>,  <39.829216, 27.638636, 33.814079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148228, 27.627148, 34.055119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229552, -0.909285, -0.347140,
		0.557907, 0.415181, -0.718585,
		0.797525, -0.028719, 0.602602,
		40.387486, 27.618532, 34.235901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161858, 26.923693, 33.677162>,  <39.829216, 27.638636, 33.814079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161858, 26.923693, 33.677162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824417, 26.755959, 33.542999>,  <39.621952, 26.655317, 33.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824417, 26.755959, 33.542999>,  <40.161858, 26.923693, 33.677162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824417, 26.755959, 33.542999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444519, -0.194936, -0.874301,
		0.301243, -0.886654, 0.350851,
		-0.843597, -0.419338, -0.335412,
		39.571339, 26.630157, 33.442375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943501, 26.849882, 33.721458>,  <40.161858, 26.923693, 33.677162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943501, 26.849882, 33.721458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850037, 26.461210, 33.707382>,  <40.793957, 26.228006, 33.698936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850037, 26.461210, 33.707382>,  <40.943501, 26.849882, 33.721458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850037, 26.461210, 33.707382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946034, -0.235553, 0.222563,
		-0.224550, 0.018708, 0.974283,
		-0.233659, -0.971681, -0.035195,
		40.779938, 26.169706, 33.696823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085743, 26.432922, 34.373219>,  <40.943501, 26.849882, 33.721458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085743, 26.432922, 34.373219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144341, 26.224903, 34.036625>,  <41.179497, 26.100092, 33.834671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144341, 26.224903, 34.036625>,  <41.085743, 26.432922, 34.373219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144341, 26.224903, 34.036625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967571, -0.101631, 0.231251,
		-0.205783, -0.848067, 0.488298,
		0.146490, -0.520051, -0.841479,
		41.188286, 26.068888, 33.784180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313240, 25.720861, 34.496521>,  <41.085743, 26.432922, 34.373219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313240, 25.720861, 34.496521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462589, 25.903765, 34.173656>,  <41.552197, 26.013506, 33.979939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462589, 25.903765, 34.173656>,  <41.313240, 25.720861, 34.496521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462589, 25.903765, 34.173656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926109, -0.234372, 0.295621,
		-0.054001, -0.857896, -0.510978,
		0.373371, 0.457257, -0.807162,
		41.574600, 26.040941, 33.931507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779957, 25.257076, 34.068207>,  <41.313240, 25.720861, 34.496521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779957, 25.257076, 34.068207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890137, 25.641472, 34.058182>,  <41.956245, 25.872108, 34.052166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890137, 25.641472, 34.058182>,  <41.779957, 25.257076, 34.068207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890137, 25.641472, 34.058182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906931, -0.251139, 0.338239,
		0.318750, -0.115897, -0.940727,
		0.275454, 0.960987, -0.025060,
		41.972775, 25.929768, 34.050663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528652, 25.232092, 33.897034>,  <41.779957, 25.257076, 34.068207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528652, 25.232092, 33.897034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456196, 25.607027, 34.016087>,  <42.412720, 25.831987, 34.087517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456196, 25.607027, 34.016087>,  <42.528652, 25.232092, 33.897034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456196, 25.607027, 34.016087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947194, 0.084858, 0.309230,
		0.264597, 0.337929, -0.903212,
		-0.181143, 0.937338, 0.297631,
		42.401852, 25.888229, 34.105377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773174, 25.907873, 33.470360>,  <42.528652, 25.232092, 33.897034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773174, 25.907873, 33.470360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746838, 25.944746, 33.867786>,  <42.731037, 25.966869, 34.106243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746838, 25.944746, 33.867786>,  <42.773174, 25.907873, 33.470360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746838, 25.944746, 33.867786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996853, -0.037981, 0.069582,
		0.044151, 0.995017, -0.089393,
		-0.065840, 0.092183, 0.993563,
		42.727085, 25.972401, 34.165855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490540, 26.125359, 33.729324>,  <42.773174, 25.907873, 33.470360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490540, 26.125359, 33.729324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201900, 26.401936, 33.743233>,  <43.028717, 26.567881, 33.751575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201900, 26.401936, 33.743233>,  <43.490540, 26.125359, 33.729324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201900, 26.401936, 33.743233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692285, 0.720189, 0.045491,
		0.006415, 0.056895, -0.998360,
		-0.721595, 0.691442, 0.034768,
		42.985420, 26.609367, 33.753662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922302, 26.662790, 33.648571>,  <43.490540, 26.125359, 33.729324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922302, 26.662790, 33.648571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564655, 26.838224, 33.684772>,  <43.350067, 26.943485, 33.706493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564655, 26.838224, 33.684772>,  <43.922302, 26.662790, 33.648571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564655, 26.838224, 33.684772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447546, 0.867962, 0.215277,
		0.015866, 0.232987, -0.972350,
		-0.894120, 0.438587, 0.090502,
		43.296421, 26.969801, 33.711922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879475, 27.191448, 33.258537>,  <43.922302, 26.662790, 33.648571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879475, 27.191448, 33.258537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608856, 27.276829, 33.540451>,  <43.446484, 27.328056, 33.709599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608856, 27.276829, 33.540451>,  <43.879475, 27.191448, 33.258537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608856, 27.276829, 33.540451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372453, 0.924814, 0.077443,
		-0.635263, 0.314893, -0.705183,
		-0.676549, 0.213451, 0.704783,
		43.405891, 27.340864, 33.751884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803471, 27.931175, 33.166245>,  <43.879475, 27.191448, 33.258537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803471, 27.931175, 33.166245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647987, 27.869598, 33.529610>,  <43.554695, 27.832653, 33.747627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647987, 27.869598, 33.529610>,  <43.803471, 27.931175, 33.166245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647987, 27.869598, 33.529610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378891, 0.872010, 0.309903,
		-0.839849, 0.464650, -0.280632,
		-0.388711, -0.153942, 0.908409,
		43.531376, 27.823416, 33.802132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299976, 28.474264, 33.366035>,  <43.803471, 27.931175, 33.166245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299976, 28.474264, 33.366035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431190, 28.316668, 33.709469>,  <43.509918, 28.222109, 33.915527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431190, 28.316668, 33.709469>,  <43.299976, 28.474264, 33.366035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431190, 28.316668, 33.709469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201602, 0.917134, 0.343834,
		-0.922901, 0.060300, 0.380286,
		0.328040, -0.393991, 0.858581,
		43.529602, 28.198471, 33.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926914, 28.831182, 33.920601>,  <43.299976, 28.474264, 33.366035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926914, 28.831182, 33.920601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263645, 28.693949, 34.087269>,  <43.465683, 28.611609, 34.187271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263645, 28.693949, 34.087269>,  <42.926914, 28.831182, 33.920601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263645, 28.693949, 34.087269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126688, 0.876016, 0.465346,
		-0.524664, -0.338955, 0.780921,
		0.841830, -0.343083, 0.416672,
		43.516193, 28.591024, 34.212269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845844, 29.112946, 34.514072>,  <42.926914, 28.831182, 33.920601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845844, 29.112946, 34.514072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231277, 29.008432, 34.491302>,  <43.462536, 28.945724, 34.477638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231277, 29.008432, 34.491302>,  <42.845844, 29.112946, 34.514072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231277, 29.008432, 34.491302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264246, 0.897657, 0.352685,
		-0.041049, -0.354883, 0.934009,
		0.963581, -0.261285, -0.056928,
		43.520351, 28.930046, 34.474224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098064, 29.202225, 35.182495>,  <42.845844, 29.112946, 34.514072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098064, 29.202225, 35.182495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412781, 29.204084, 34.935616>,  <43.601612, 29.205200, 34.787487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412781, 29.204084, 34.935616>,  <43.098064, 29.202225, 35.182495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412781, 29.204084, 34.935616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354724, 0.814925, 0.458331,
		0.505104, -0.579547, 0.639527,
		0.786791, 0.004649, -0.617201,
		43.648819, 29.205479, 34.750454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597027, 29.536171, 35.569992>,  <43.098064, 29.202225, 35.182495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597027, 29.536171, 35.569992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746536, 29.550707, 35.199268>,  <43.836243, 29.559429, 34.976833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746536, 29.550707, 35.199268>,  <43.597027, 29.536171, 35.569992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746536, 29.550707, 35.199268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576049, 0.774062, 0.262670,
		0.726951, -0.632066, 0.268392,
		0.373777, 0.036341, -0.926806,
		43.858669, 29.561609, 34.921227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357571, 29.625366, 35.706326>,  <43.597027, 29.536171, 35.569992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357571, 29.625366, 35.706326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282322, 29.748753, 35.333347>,  <44.237175, 29.822784, 35.109558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282322, 29.748753, 35.333347>,  <44.357571, 29.625366, 35.706326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282322, 29.748753, 35.333347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463114, 0.865085, 0.192752,
		0.866104, -0.395570, -0.305595,
		-0.188119, 0.308468, -0.932448,
		44.225887, 29.841293, 35.053612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072296, 29.983734, 35.504482>,  <44.357571, 29.625366, 35.706326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072296, 29.983734, 35.504482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795666, 30.109793, 35.244511>,  <44.629688, 30.185429, 35.088528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795666, 30.109793, 35.244511>,  <45.072296, 29.983734, 35.504482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795666, 30.109793, 35.244511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374057, 0.926003, 0.050987,
		0.617904, -0.207849, -0.758283,
		-0.691575, 0.315146, -0.649928,
		44.588192, 30.204336, 35.049534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393291, 30.489841, 35.031853>,  <45.072296, 29.983734, 35.504482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393291, 30.489841, 35.031853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003700, 30.580303, 35.037739>,  <44.769943, 30.634581, 35.041271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003700, 30.580303, 35.037739>,  <45.393291, 30.489841, 35.031853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003700, 30.580303, 35.037739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226429, 0.968318, 0.105307,
		0.009567, 0.105898, -0.994331,
		-0.973981, 0.226153, 0.014715,
		44.711506, 30.648149, 35.042152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386196, 31.091898, 34.633072>,  <45.393291, 30.489841, 35.031853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386196, 31.091898, 34.633072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059380, 31.090855, 34.863705>,  <44.863289, 31.090229, 35.002083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059380, 31.090855, 34.863705>,  <45.386196, 31.091898, 34.633072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059380, 31.090855, 34.863705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186051, 0.945306, 0.267919,
		-0.545742, 0.326173, -0.771866,
		-0.817038, -0.002608, 0.576578,
		44.814270, 31.090073, 35.036678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068054, 31.757654, 34.542618>,  <45.386196, 31.091898, 34.633072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068054, 31.757654, 34.542618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887463, 31.623890, 34.873516>,  <44.779110, 31.543633, 35.072056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887463, 31.623890, 34.873516>,  <45.068054, 31.757654, 34.542618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887463, 31.623890, 34.873516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020592, 0.930772, 0.365019,
		-0.892045, 0.147763, -0.427108,
		-0.451476, -0.334409, 0.827248,
		44.752018, 31.523567, 35.121689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462128, 32.183914, 34.537502>,  <45.068054, 31.757654, 34.542618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462128, 32.183914, 34.537502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484631, 32.063709, 34.918350>,  <44.498135, 31.991585, 35.146858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484631, 32.063709, 34.918350>,  <44.462128, 32.183914, 34.537502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484631, 32.063709, 34.918350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140743, 0.941717, 0.305549,
		-0.988446, -0.151193, 0.010685,
		0.056260, -0.300515, 0.952116,
		44.501507, 31.973555, 35.203983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023762, 32.578270, 34.879505>,  <44.462128, 32.183914, 34.537502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023762, 32.578270, 34.879505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242142, 32.427673, 35.178890>,  <44.373169, 32.337315, 35.358521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242142, 32.427673, 35.178890>,  <44.023762, 32.578270, 34.879505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242142, 32.427673, 35.178890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060291, 0.908684, 0.413107,
		-0.835644, -0.180411, 0.518798,
		0.545953, -0.376489, 0.748459,
		44.405926, 32.314728, 35.403427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576420, 32.669357, 35.348194>,  <44.023762, 32.578270, 34.879505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576420, 32.669357, 35.348194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958549, 32.637653, 35.462093>,  <44.187828, 32.618633, 35.530434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958549, 32.637653, 35.462093>,  <43.576420, 32.669357, 35.348194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958549, 32.637653, 35.462093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023903, 0.939506, 0.341698,
		-0.294604, -0.333238, 0.895635,
		0.955321, -0.079258, 0.284747,
		44.245144, 32.613876, 35.547516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564415, 33.130093, 35.922104>,  <43.576420, 32.669357, 35.348194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564415, 33.130093, 35.922104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953053, 33.067719, 35.850895>,  <44.186234, 33.030293, 35.808170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953053, 33.067719, 35.850895>,  <43.564415, 33.130093, 35.922104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953053, 33.067719, 35.850895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200025, 0.943119, 0.265552,
		0.126484, -0.293616, 0.947519,
		0.971593, -0.155939, -0.178020,
		44.244530, 33.020935, 35.797489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943893, 33.270370, 36.499100>,  <43.564415, 33.130093, 35.922104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943893, 33.270370, 36.499100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187714, 33.343002, 36.190430>,  <44.334003, 33.386581, 36.005226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187714, 33.343002, 36.190430>,  <43.943893, 33.270370, 36.499100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187714, 33.343002, 36.190430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007100, 0.972125, 0.234355,
		0.792718, -0.148329, 0.591268,
		0.609548, 0.181580, -0.771674,
		44.370579, 33.397476, 35.958927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449512, 33.736008, 36.639622>,  <43.943893, 33.270370, 36.499100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449512, 33.736008, 36.639622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473377, 33.770828, 36.241856>,  <44.487698, 33.791721, 36.003197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473377, 33.770828, 36.241856>,  <44.449512, 33.736008, 36.639622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473377, 33.770828, 36.241856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050731, 0.994638, 0.090117,
		0.996928, -0.055825, 0.054933,
		0.059669, 0.087053, -0.994415,
		44.491276, 33.796944, 35.943531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045197, 34.264378, 36.446457>,  <44.449512, 33.736008, 36.639622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045197, 34.264378, 36.446457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816486, 34.242771, 36.119003>,  <44.679260, 34.229809, 35.922531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816486, 34.242771, 36.119003>,  <45.045197, 34.264378, 36.446457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816486, 34.242771, 36.119003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066390, 0.991511, -0.111794,
		0.817721, -0.118270, -0.563333,
		-0.571773, -0.054017, -0.818632,
		44.644955, 34.226566, 35.873413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381290, 34.725147, 35.953613>,  <45.045197, 34.264378, 36.446457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381290, 34.725147, 35.953613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010612, 34.656620, 35.819820>,  <44.788204, 34.615505, 35.739544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010612, 34.656620, 35.819820>,  <45.381290, 34.725147, 35.953613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010612, 34.656620, 35.819820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067000, 0.951106, -0.301510,
		0.369784, -0.256998, -0.892867,
		-0.926699, -0.171316, -0.334485,
		44.732601, 34.605225, 35.719475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438099, 35.041748, 35.347385>,  <45.381290, 34.725147, 35.953613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438099, 35.041748, 35.347385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047375, 35.013813, 35.428337>,  <44.812939, 34.997051, 35.476906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047375, 35.013813, 35.428337>,  <45.438099, 35.041748, 35.347385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047375, 35.013813, 35.428337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136140, 0.932169, -0.335451,
		-0.165223, -0.355225, -0.920063,
		-0.976815, -0.069833, 0.202376,
		44.754330, 34.992863, 35.489048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928123, 34.544659, 35.023373>,  <45.438099, 35.041748, 35.347385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928123, 34.544659, 35.023373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184288, 34.600845, 35.325405>,  <46.337986, 34.634556, 35.506622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184288, 34.600845, 35.325405>,  <45.928123, 34.544659, 35.023373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184288, 34.600845, 35.325405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660412, 0.401179, -0.634754,
		-0.392081, 0.905166, 0.164156,
		0.640413, 0.140464, 0.755077,
		46.376411, 34.642986, 35.551929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247337, 35.316929, 35.103077>,  <45.928123, 34.544659, 35.023373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247337, 35.316929, 35.103077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509464, 35.062782, 35.266476>,  <46.666740, 34.910294, 35.364513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509464, 35.062782, 35.266476>,  <46.247337, 35.316929, 35.103077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509464, 35.062782, 35.266476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709704, 0.332753, -0.620964,
		0.258614, 0.696837, 0.668982,
		0.655316, -0.635369, 0.408493,
		46.706059, 34.872173, 35.389023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960857, 35.604126, 35.276844>,  <46.247337, 35.316929, 35.103077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960857, 35.604126, 35.276844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.996635, 35.211941, 35.206779>,  <47.018105, 34.976627, 35.164742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.996635, 35.211941, 35.206779>,  <46.960857, 35.604126, 35.276844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.996635, 35.211941, 35.206779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721827, 0.184995, -0.666891,
		0.686269, -0.066786, 0.724275,
		0.089448, -0.980468, -0.175164,
		47.023468, 34.917801, 35.154232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737576, 35.277374, 35.298519>,  <46.960857, 35.604126, 35.276844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737576, 35.277374, 35.298519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489960, 35.096996, 35.041321>,  <47.341393, 34.988770, 34.887001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489960, 35.096996, 35.041321>,  <47.737576, 35.277374, 35.298519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.489960, 35.096996, 35.041321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718697, 0.004836, -0.695307,
		0.316652, -0.892541, 0.321096,
		-0.619037, -0.450941, -0.642997,
		47.304249, 34.961716, 34.848423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.195385, 37.390690, 46.612789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847149, 37.215351, 46.523411>,  <33.638206, 37.110149, 46.469784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847149, 37.215351, 46.523411>,  <34.195385, 37.390690, 46.612789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847149, 37.215351, 46.523411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248243, 0.000762, -0.968697,
		0.424793, -0.898807, 0.108153,
		-0.870589, -0.438344, -0.223446,
		33.585972, 37.083847, 46.456375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386318, 36.923630, 46.113922>,  <34.195385, 37.390690, 46.612789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386318, 36.923630, 46.113922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987076, 36.918827, 46.089790>,  <33.747532, 36.915943, 46.075310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987076, 36.918827, 46.089790>,  <34.386318, 36.923630, 46.113922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987076, 36.918827, 46.089790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061504, -0.211151, -0.975517,
		-0.001020, -0.977380, 0.211490,
		-0.998106, -0.012013, -0.060328,
		33.687645, 36.915222, 46.071693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240845, 36.247589, 45.763371>,  <34.386318, 36.923630, 46.113922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240845, 36.247589, 45.763371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945019, 36.508888, 45.698486>,  <33.767521, 36.665668, 45.659557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945019, 36.508888, 45.698486>,  <34.240845, 36.247589, 45.763371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945019, 36.508888, 45.698486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042351, -0.195352, -0.979818,
		-0.671748, -0.731512, 0.116810,
		-0.739568, 0.653244, -0.162207,
		33.723148, 36.704861, 45.649822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682415, 35.917027, 45.392876>,  <34.240845, 36.247589, 45.763371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682415, 35.917027, 45.392876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.609852, 36.305767, 45.332741>,  <33.566315, 36.539009, 45.296661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.609852, 36.305767, 45.332741>,  <33.682415, 35.917027, 45.392876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609852, 36.305767, 45.332741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148202, -0.178142, -0.972780,
		-0.972176, -0.154191, 0.176347,
		-0.181409, 0.971849, -0.150334,
		33.555428, 36.597321, 45.287640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085789, 35.948002, 44.945156>,  <33.682415, 35.917027, 45.392876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085789, 35.948002, 44.945156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.225449, 36.319279, 44.893703>,  <33.309246, 36.542046, 44.862831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.225449, 36.319279, 44.893703>,  <33.085789, 35.948002, 44.945156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225449, 36.319279, 44.893703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015760, -0.131435, -0.991199,
		-0.936933, 0.348109, -0.031263,
		0.349154, 0.928194, -0.128632,
		33.330196, 36.597736, 44.855114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584946, 36.280533, 44.519066>,  <33.085789, 35.948002, 44.945156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584946, 36.280533, 44.519066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.931396, 36.480068, 44.506481>,  <33.139267, 36.599789, 44.498928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.931396, 36.480068, 44.506481>,  <32.584946, 36.280533, 44.519066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931396, 36.480068, 44.506481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179255, 0.251239, -0.951182,
		-0.466581, 0.829481, 0.307023,
		0.866124, 0.498839, -0.031465,
		33.191235, 36.629719, 44.497040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502357, 36.835888, 43.950859>,  <32.584946, 36.280533, 44.519066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502357, 36.835888, 43.950859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.898079, 36.787563, 43.983559>,  <33.135513, 36.758568, 44.003178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.898079, 36.787563, 43.983559>,  <32.502357, 36.835888, 43.950859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898079, 36.787563, 43.983559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106971, 0.219838, -0.969654,
		0.099176, 0.968026, 0.230410,
		0.989303, -0.120814, 0.081748,
		33.194870, 36.751320, 44.008083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785919, 37.492676, 43.688076>,  <32.502357, 36.835888, 43.950859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785919, 37.492676, 43.688076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057484, 37.199871, 43.665302>,  <33.220421, 37.024189, 43.651638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057484, 37.199871, 43.665302>,  <32.785919, 37.492676, 43.688076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057484, 37.199871, 43.665302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186789, 0.247190, -0.950793,
		0.710065, 0.634868, 0.304551,
		0.678910, -0.732011, -0.056935,
		33.261158, 36.980267, 43.648220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399597, 37.790035, 43.380527>,  <32.785919, 37.492676, 43.688076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399597, 37.790035, 43.380527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461178, 37.396980, 43.339115>,  <33.498127, 37.161148, 43.314266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461178, 37.396980, 43.339115>,  <33.399597, 37.790035, 43.380527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461178, 37.396980, 43.339115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299229, 0.146229, -0.942910,
		0.941679, 0.114187, 0.316547,
		0.153956, -0.982639, -0.103533,
		33.507366, 37.102188, 43.308056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972225, 37.704700, 43.047482>,  <33.399597, 37.790035, 43.380527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972225, 37.704700, 43.047482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.827354, 37.339359, 42.973064>,  <33.740433, 37.120155, 42.928413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.827354, 37.339359, 42.973064>,  <33.972225, 37.704700, 43.047482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827354, 37.339359, 42.973064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412562, 0.021903, -0.910666,
		0.835834, -0.406580, 0.368882,
		-0.362179, -0.913353, -0.186047,
		33.718700, 37.065353, 42.917252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498310, 37.357113, 42.812881>,  <33.972225, 37.704700, 43.047482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498310, 37.357113, 42.812881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166153, 37.176743, 42.681969>,  <33.966858, 37.068520, 42.603420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166153, 37.176743, 42.681969>,  <34.498310, 37.357113, 42.812881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166153, 37.176743, 42.681969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391846, -0.055032, -0.918384,
		0.396115, -0.890861, 0.222393,
		-0.830391, -0.450930, -0.327281,
		33.917034, 37.041462, 42.583786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761124, 36.804848, 42.460861>,  <34.498310, 37.357113, 42.812881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761124, 36.804848, 42.460861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391312, 36.844139, 42.313568>,  <34.169422, 36.867714, 42.225193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391312, 36.844139, 42.313568>,  <34.761124, 36.804848, 42.460861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391312, 36.844139, 42.313568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359734, -0.094081, -0.928300,
		-0.125832, -0.990706, 0.051644,
		-0.924531, 0.098232, -0.368229,
		34.113953, 36.873608, 42.203098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764805, 36.250778, 42.009399>,  <34.761124, 36.804848, 42.460861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764805, 36.250778, 42.009399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481472, 36.517525, 41.916832>,  <34.311470, 36.677570, 41.861290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481472, 36.517525, 41.916832>,  <34.764805, 36.250778, 42.009399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481472, 36.517525, 41.916832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132320, -0.196594, -0.971515,
		-0.693365, -0.718779, 0.051015,
		-0.708334, 0.666864, -0.231420,
		34.268970, 36.717583, 41.847404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423344, 35.916477, 41.424355>,  <34.764805, 36.250778, 42.009399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423344, 35.916477, 41.424355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311188, 36.299973, 41.443153>,  <34.243893, 36.530067, 41.454433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311188, 36.299973, 41.443153>,  <34.423344, 35.916477, 41.424355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311188, 36.299973, 41.443153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098148, 0.077335, -0.992163,
		-0.954855, -0.273580, -0.115782,
		-0.280390, 0.958735, 0.046993,
		34.227070, 36.587593, 41.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984058, 36.009758, 40.836246>,  <34.423344, 35.916477, 41.424355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984058, 36.009758, 40.836246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127094, 36.368301, 40.941067>,  <34.212917, 36.583427, 41.003960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127094, 36.368301, 40.941067>,  <33.984058, 36.009758, 40.836246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127094, 36.368301, 40.941067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244111, 0.181130, -0.952681,
		-0.901408, 0.404642, -0.154040,
		0.357593, 0.896358, 0.262050,
		34.234371, 36.637207, 41.019680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714531, 36.460747, 40.352879>,  <33.984058, 36.009758, 40.836246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714531, 36.460747, 40.352879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026608, 36.654202, 40.511574>,  <34.213852, 36.770275, 40.606792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026608, 36.654202, 40.511574>,  <33.714531, 36.460747, 40.352879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026608, 36.654202, 40.511574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317871, 0.239722, -0.917328,
		-0.538763, 0.841799, 0.033293,
		0.780187, 0.483640, 0.396737,
		34.260662, 36.799294, 40.630596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699966, 37.034676, 40.030060>,  <33.714531, 36.460747, 40.352879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699966, 37.034676, 40.030060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087151, 37.046402, 40.129810>,  <34.319462, 37.053436, 40.189663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087151, 37.046402, 40.129810>,  <33.699966, 37.034676, 40.030060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087151, 37.046402, 40.129810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233356, 0.261667, -0.936523,
		-0.092709, 0.964713, 0.246443,
		0.967962, 0.029315, 0.249380,
		34.377541, 37.055195, 40.204624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024006, 37.677155, 39.842381>,  <33.699966, 37.034676, 40.030060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024006, 37.677155, 39.842381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335320, 37.430920, 39.891895>,  <34.522106, 37.283176, 39.921604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335320, 37.430920, 39.891895>,  <34.024006, 37.677155, 39.842381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335320, 37.430920, 39.891895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354041, 0.267401, -0.896187,
		0.518586, 0.741312, 0.426058,
		0.778283, -0.615592, 0.123785,
		34.568806, 37.246243, 39.929031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562866, 37.998188, 39.581291>,  <34.024006, 37.677155, 39.842381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562866, 37.998188, 39.581291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710175, 37.627110, 39.605778>,  <34.798561, 37.404461, 39.620468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710175, 37.627110, 39.605778>,  <34.562866, 37.998188, 39.581291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710175, 37.627110, 39.605778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543063, 0.161208, -0.824072,
		0.754623, 0.336728, 0.563168,
		0.368276, -0.927699, 0.061214,
		34.820656, 37.348801, 39.624142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221153, 37.966858, 39.588791>,  <34.562866, 37.998188, 39.581291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221153, 37.966858, 39.588791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164387, 37.592991, 39.458405>,  <35.130325, 37.368671, 39.380173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164387, 37.592991, 39.458405>,  <35.221153, 37.966858, 39.588791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164387, 37.592991, 39.458405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517757, 0.210572, -0.829208,
		0.843675, -0.286449, 0.454048,
		-0.141916, -0.934669, -0.325965,
		35.121811, 37.312592, 39.360615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926231, 37.652805, 39.387154>,  <35.221153, 37.966858, 39.588791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926231, 37.652805, 39.387154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644897, 37.452042, 39.185795>,  <35.476097, 37.331581, 39.064980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644897, 37.452042, 39.185795>,  <35.926231, 37.652805, 39.387154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644897, 37.452042, 39.185795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516245, 0.126187, -0.847094,
		0.488689, -0.855664, 0.170358,
		-0.703331, -0.501912, -0.503399,
		35.433899, 37.301468, 39.034775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216038, 37.261726, 38.783150>,  <35.926231, 37.652805, 39.387154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216038, 37.261726, 38.783150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.827560, 37.324715, 38.711605>,  <35.594475, 37.362507, 38.668678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.827560, 37.324715, 38.711605>,  <36.216038, 37.261726, 38.783150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827560, 37.324715, 38.711605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209591, 0.207283, -0.955565,
		-0.113395, -0.965525, -0.234315,
		-0.971192, 0.157467, -0.178860,
		35.536201, 37.371956, 38.657948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781639, 37.502533, 39.194469>,  <36.216038, 37.261726, 38.783150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781639, 37.502533, 39.194469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166855, 37.597282, 39.245754>,  <37.397984, 37.654133, 39.276524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166855, 37.597282, 39.245754>,  <36.781639, 37.502533, 39.194469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166855, 37.597282, 39.245754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183973, 0.230810, 0.955448,
		0.196731, -0.943725, 0.265859,
		0.963043, 0.236877, 0.128213,
		37.455769, 37.668346, 39.284218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046532, 37.023689, 39.762558>,  <36.781639, 37.502533, 39.194469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046532, 37.023689, 39.762558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285175, 37.343128, 39.730785>,  <37.428360, 37.534790, 39.711723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285175, 37.343128, 39.730785>,  <37.046532, 37.023689, 39.762558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285175, 37.343128, 39.730785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045882, 0.064870, 0.996838,
		0.801223, -0.598363, 0.002061,
		0.596605, 0.798595, -0.079430,
		37.464157, 37.582706, 39.706955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658310, 36.935806, 40.249424>,  <37.046532, 37.023689, 39.762558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658310, 36.935806, 40.249424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592297, 37.323673, 40.177303>,  <37.552689, 37.556393, 40.134033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592297, 37.323673, 40.177303>,  <37.658310, 36.935806, 40.249424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592297, 37.323673, 40.177303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041272, 0.189435, 0.981025,
		0.985424, 0.154463, -0.071283,
		-0.165036, 0.969668, -0.180299,
		37.542786, 37.614574, 40.123215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040119, 37.213573, 40.763798>,  <37.658310, 36.935806, 40.249424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040119, 37.213573, 40.763798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815388, 37.533291, 40.678501>,  <37.680550, 37.725121, 40.627323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815388, 37.533291, 40.678501>,  <38.040119, 37.213573, 40.763798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815388, 37.533291, 40.678501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095731, 0.193218, 0.976475,
		0.821696, 0.569025, -0.032038,
		-0.561828, 0.799298, -0.213240,
		37.646839, 37.773079, 40.614529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299763, 37.810482, 41.124718>,  <38.040119, 37.213573, 40.763798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299763, 37.810482, 41.124718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905987, 37.833061, 41.058147>,  <37.669724, 37.846607, 41.018208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905987, 37.833061, 41.058147>,  <38.299763, 37.810482, 41.124718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905987, 37.833061, 41.058147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157204, 0.140439, 0.977530,
		0.078548, 0.988479, -0.129381,
		-0.984437, 0.056444, -0.166424,
		37.610657, 37.849995, 41.008221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080574, 38.395420, 41.593155>,  <38.299763, 37.810482, 41.124718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080574, 38.395420, 41.593155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707325, 38.275959, 41.513058>,  <37.483376, 38.204285, 41.465000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707325, 38.275959, 41.513058>,  <38.080574, 38.395420, 41.593155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707325, 38.275959, 41.513058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290857, 0.299514, 0.908677,
		-0.211401, 0.906146, -0.366347,
		-0.933120, -0.298649, -0.200241,
		37.427387, 38.186363, 41.452984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715179, 38.689629, 42.081696>,  <38.080574, 38.395420, 41.593155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715179, 38.689629, 42.081696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431297, 38.442654, 41.945999>,  <37.260967, 38.294468, 41.864582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431297, 38.442654, 41.945999>,  <37.715179, 38.689629, 42.081696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431297, 38.442654, 41.945999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475029, 0.063808, 0.877654,
		-0.520251, 0.784027, -0.338586,
		-0.709709, -0.617439, -0.339239,
		37.218384, 38.257423, 41.844227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003849, 39.044407, 42.032108>,  <37.715179, 38.689629, 42.081696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003849, 39.044407, 42.032108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987236, 38.649799, 42.095436>,  <36.977268, 38.413036, 42.133430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987236, 38.649799, 42.095436>,  <37.003849, 39.044407, 42.032108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987236, 38.649799, 42.095436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438631, 0.160370, 0.884242,
		-0.897707, -0.032717, -0.439377,
		-0.041533, -0.986515, 0.158316,
		36.974777, 38.353844, 42.142929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279518, 38.894733, 42.236725>,  <37.003849, 39.044407, 42.032108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279518, 38.894733, 42.236725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493454, 38.578171, 42.355129>,  <36.621815, 38.388233, 42.426170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493454, 38.578171, 42.355129>,  <36.279518, 38.894733, 42.236725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493454, 38.578171, 42.355129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484147, 0.000078, 0.874987,
		-0.692492, -0.611292, -0.383115,
		0.534843, -0.791405, 0.296009,
		36.653908, 38.340748, 42.443932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783138, 38.565403, 42.630295>,  <36.279518, 38.894733, 42.236725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783138, 38.565403, 42.630295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120609, 38.376038, 42.731567>,  <36.323090, 38.262421, 42.792332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120609, 38.376038, 42.731567>,  <35.783138, 38.565403, 42.630295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120609, 38.376038, 42.731567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388064, -0.211895, 0.896943,
		-0.370977, -0.854974, -0.362484,
		0.843672, -0.473412, 0.253177,
		36.373711, 38.234016, 42.807522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536934, 38.020042, 43.054779>,  <35.783138, 38.565403, 42.630295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536934, 38.020042, 43.054779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925411, 38.082863, 43.126457>,  <36.158497, 38.120556, 43.169464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925411, 38.082863, 43.126457>,  <35.536934, 38.020042, 43.054779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925411, 38.082863, 43.126457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146931, -0.197336, 0.969263,
		0.187588, -0.967674, -0.168576,
		0.971196, 0.157053, 0.179199,
		36.216770, 38.129978, 43.180218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908974, 37.358402, 43.357399>,  <35.536934, 38.020042, 43.054779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908974, 37.358402, 43.357399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121559, 37.671696, 43.486446>,  <36.249111, 37.859673, 43.563877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121559, 37.671696, 43.486446>,  <35.908974, 37.358402, 43.357399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121559, 37.671696, 43.486446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118710, -0.308237, 0.943874,
		0.838720, -0.539935, -0.070839,
		0.531466, 0.783237, 0.322620,
		36.280998, 37.906666, 43.583233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159164, 37.109917, 43.990807>,  <35.908974, 37.358402, 43.357399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159164, 37.109917, 43.990807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.241936, 37.500313, 44.017979>,  <36.291599, 37.734550, 44.034283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.241936, 37.500313, 44.017979>,  <36.159164, 37.109917, 43.990807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241936, 37.500313, 44.017979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025720, -0.063984, 0.997619,
		0.978018, -0.208183, 0.011863,
		0.206929, 0.975995, 0.067932,
		36.304016, 37.793110, 44.038357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680458, 37.247135, 44.551739>,  <36.159164, 37.109917, 43.990807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680458, 37.247135, 44.551739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544365, 37.620178, 44.503593>,  <36.462708, 37.844006, 44.474705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544365, 37.620178, 44.503593>,  <36.680458, 37.247135, 44.551739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544365, 37.620178, 44.503593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028088, 0.117862, 0.992633,
		0.939922, 0.341106, -0.013906,
		-0.340232, 0.932607, -0.120362,
		36.442295, 37.899960, 44.467484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144791, 37.673107, 44.890488>,  <36.680458, 37.247135, 44.551739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144791, 37.673107, 44.890488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775303, 37.824238, 44.865219>,  <36.553612, 37.914917, 44.850056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775303, 37.824238, 44.865219>,  <37.144791, 37.673107, 44.890488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775303, 37.824238, 44.865219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045263, 0.056110, 0.997398,
		0.380390, 0.924174, -0.034728,
		-0.923718, 0.377829, -0.063175,
		36.498188, 37.937588, 44.846268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088089, 38.299141, 45.366440>,  <37.144791, 37.673107, 44.890488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088089, 38.299141, 45.366440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712013, 38.172607, 45.315880>,  <36.486370, 38.096687, 45.285542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712013, 38.172607, 45.315880>,  <37.088089, 38.299141, 45.366440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712013, 38.172607, 45.315880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164492, 0.096645, 0.981632,
		-0.298312, 0.943711, -0.142899,
		-0.940188, -0.316338, -0.126403,
		36.429958, 38.077705, 45.277958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671429, 38.686962, 45.834892>,  <37.088089, 38.299141, 45.366440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671429, 38.686962, 45.834892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431190, 38.389137, 45.718327>,  <36.287048, 38.210442, 45.648388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431190, 38.389137, 45.718327>,  <36.671429, 38.686962, 45.834892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431190, 38.389137, 45.718327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328119, -0.102845, 0.939021,
		-0.729126, 0.659588, -0.182536,
		-0.600594, -0.744558, -0.291410,
		36.251011, 38.165771, 45.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978943, 38.830589, 46.047989>,  <36.671429, 38.686962, 45.834892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978943, 38.830589, 46.047989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975986, 38.430706, 46.038780>,  <35.974213, 38.190777, 46.033257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975986, 38.430706, 46.038780>,  <35.978943, 38.830589, 46.047989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975986, 38.430706, 46.038780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196917, -0.021114, 0.980193,
		-0.980392, 0.011782, -0.196704,
		-0.007395, -0.999708, -0.023020,
		35.973766, 38.130795, 46.031876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.228882, 38.480362, 46.434738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476357, 38.166824, 46.413486>,  <35.624840, 37.978703, 46.400734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476357, 38.166824, 46.413486>,  <35.228882, 38.480362, 46.434738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476357, 38.166824, 46.413486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387471, -0.363261, 0.847294,
		-0.683444, -0.503621, -0.528460,
		0.618684, -0.783841, -0.053130,
		35.661961, 37.931671, 46.397549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907982, 37.817883, 46.614452>,  <35.228882, 38.480362, 46.434738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907982, 37.817883, 46.614452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297443, 37.743900, 46.667797>,  <35.531120, 37.699512, 46.699806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297443, 37.743900, 46.667797>,  <34.907982, 37.817883, 46.614452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297443, 37.743900, 46.667797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208326, -0.483736, 0.850058,
		-0.092708, -0.855448, -0.509524,
		0.973656, -0.184954, 0.133366,
		35.589539, 37.688416, 46.707806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919510, 37.171558, 46.727737>,  <34.907982, 37.817883, 46.614452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919510, 37.171558, 46.727737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258732, 37.322357, 46.876690>,  <35.462265, 37.412838, 46.966061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258732, 37.322357, 46.876690>,  <34.919510, 37.171558, 46.727737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258732, 37.322357, 46.876690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271846, -0.293698, 0.916428,
		0.454862, -0.878415, -0.146587,
		0.848057, 0.377000, 0.372386,
		35.513149, 37.435455, 46.988407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203060, 36.698090, 47.145840>,  <34.919510, 37.171558, 46.727737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203060, 36.698090, 47.145840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406467, 37.015923, 47.278530>,  <35.528511, 37.206623, 47.358143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406467, 37.015923, 47.278530>,  <35.203060, 36.698090, 47.145840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406467, 37.015923, 47.278530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294781, -0.201322, 0.934116,
		0.809020, -0.572802, 0.131853,
		0.508519, 0.794587, 0.331724,
		35.559025, 37.254299, 47.378048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598152, 36.512405, 47.689350>,  <35.203060, 36.698090, 47.145840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598152, 36.512405, 47.689350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569607, 36.907600, 47.744167>,  <35.552479, 37.144718, 47.777058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569607, 36.907600, 47.744167>,  <35.598152, 36.512405, 47.689350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569607, 36.907600, 47.744167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212945, -0.149316, 0.965588,
		0.974454, 0.039729, 0.221044,
		-0.071368, 0.987991, 0.137042,
		35.548195, 37.203999, 47.785278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002220, 36.678825, 48.352543>,  <35.598152, 36.512405, 47.689350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002220, 36.678825, 48.352543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727314, 36.962845, 48.291218>,  <35.562370, 37.133255, 48.254421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727314, 36.962845, 48.291218>,  <36.002220, 36.678825, 48.352543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727314, 36.962845, 48.291218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334929, -0.122459, 0.934252,
		0.644586, 0.693426, 0.321977,
		-0.687263, 0.710045, -0.153313,
		35.521133, 37.175858, 48.245224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987820, 37.034939, 48.915546>,  <36.002220, 36.678825, 48.352543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987820, 37.034939, 48.915546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649239, 37.185711, 48.765106>,  <35.446091, 37.276173, 48.674843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649239, 37.185711, 48.765106>,  <35.987820, 37.034939, 48.915546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649239, 37.185711, 48.765106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412028, -0.016253, 0.911026,
		0.337278, 0.926100, 0.169062,
		-0.846449, 0.376928, -0.376098,
		35.395306, 37.298790, 48.652275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805279, 37.415195, 49.455265>,  <35.987820, 37.034939, 48.915546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805279, 37.415195, 49.455265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475845, 37.357735, 49.235786>,  <35.278183, 37.323257, 49.104099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475845, 37.357735, 49.235786>,  <35.805279, 37.415195, 49.455265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475845, 37.357735, 49.235786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562729, 0.085874, 0.822169,
		-0.070988, 0.985895, -0.151562,
		-0.823588, -0.143653, -0.548696,
		35.228767, 37.314640, 49.071178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365654, 37.855255, 49.679394>,  <35.805279, 37.415195, 49.455265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365654, 37.855255, 49.679394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111099, 37.587765, 49.525608>,  <34.958366, 37.427269, 49.433338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111099, 37.587765, 49.525608>,  <35.365654, 37.855255, 49.679394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111099, 37.587765, 49.525608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506846, -0.013201, 0.861935,
		-0.581476, 0.743390, -0.330541,
		-0.636390, -0.668728, -0.384460,
		34.920181, 37.387146, 49.410271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822178, 38.068001, 50.077126>,  <35.365654, 37.855255, 49.679394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822178, 38.068001, 50.077126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712219, 37.714664, 49.925259>,  <34.646244, 37.502663, 49.834137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712219, 37.714664, 49.925259>,  <34.822178, 38.068001, 50.077126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712219, 37.714664, 49.925259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543455, -0.182998, 0.819248,
		-0.793152, 0.431538, -0.429749,
		-0.274894, -0.883338, -0.379667,
		34.629749, 37.449661, 49.811359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127998, 37.982819, 50.272835>,  <34.822178, 38.068001, 50.077126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127998, 37.982819, 50.272835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259289, 37.619450, 50.169270>,  <34.338062, 37.401428, 50.107132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259289, 37.619450, 50.169270>,  <34.127998, 37.982819, 50.272835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259289, 37.619450, 50.169270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463458, -0.393706, 0.793853,
		-0.823090, -0.140566, -0.550240,
		0.328222, -0.908426, -0.258909,
		34.357754, 37.346924, 50.091599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594654, 37.512188, 50.331032>,  <34.127998, 37.982819, 50.272835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594654, 37.512188, 50.331032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906113, 37.261623, 50.316555>,  <34.092987, 37.111282, 50.307869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906113, 37.261623, 50.316555>,  <33.594654, 37.512188, 50.331032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906113, 37.261623, 50.316555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462575, -0.612053, 0.641416,
		-0.423943, -0.482698, -0.766339,
		0.778651, -0.626413, -0.036191,
		34.139709, 37.073700, 50.305698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436417, 36.796799, 50.442142>,  <33.594654, 37.512188, 50.331032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436417, 36.796799, 50.442142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826851, 36.771778, 50.525425>,  <34.061111, 36.756763, 50.575394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826851, 36.771778, 50.525425>,  <33.436417, 36.796799, 50.442142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826851, 36.771778, 50.525425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181954, -0.759198, 0.624909,
		0.118979, -0.647847, -0.752422,
		0.976082, -0.062555, 0.208206,
		34.119675, 36.753010, 50.587887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723969, 36.137730, 50.583282>,  <33.436417, 36.796799, 50.442142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723969, 36.137730, 50.583282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015942, 36.334229, 50.773388>,  <34.191128, 36.452126, 50.887451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015942, 36.334229, 50.773388>,  <33.723969, 36.137730, 50.583282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015942, 36.334229, 50.773388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040831, -0.725417, 0.687098,
		0.682295, -0.482132, -0.549566,
		0.729936, 0.491243, 0.475262,
		34.234924, 36.481602, 50.915966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202785, 35.673271, 50.747929>,  <33.723969, 36.137730, 50.583282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202785, 35.673271, 50.747929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282867, 35.978779, 50.993393>,  <34.330917, 36.162083, 51.140671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282867, 35.978779, 50.993393>,  <34.202785, 35.673271, 50.747929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282867, 35.978779, 50.993393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193239, -0.583256, 0.788969,
		0.960508, -0.276541, 0.030817,
		0.200208, 0.763766, 0.613660,
		34.342930, 36.207909, 51.177490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562645, 35.400394, 51.253166>,  <34.202785, 35.673271, 50.747929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562645, 35.400394, 51.253166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461040, 35.744503, 51.429989>,  <34.400078, 35.950966, 51.536083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461040, 35.744503, 51.429989>,  <34.562645, 35.400394, 51.253166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461040, 35.744503, 51.429989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002593, -0.456444, 0.889748,
		0.967199, 0.227149, 0.113710,
		-0.254008, 0.860268, 0.442061,
		34.384838, 36.002583, 51.562607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039825, 35.528625, 51.824917>,  <34.562645, 35.400394, 51.253166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039825, 35.528625, 51.824917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721130, 35.752953, 51.914974>,  <34.529915, 35.887550, 51.969009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721130, 35.752953, 51.914974>,  <35.039825, 35.528625, 51.824917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721130, 35.752953, 51.914974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070336, -0.456070, 0.887160,
		0.600218, 0.690999, 0.402814,
		-0.796738, 0.560822, 0.225139,
		34.482109, 35.921200, 51.982517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165771, 35.783943, 52.579414>,  <35.039825, 35.528625, 51.824917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165771, 35.783943, 52.579414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774422, 35.790207, 52.496914>,  <34.539612, 35.793964, 52.447414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774422, 35.790207, 52.496914>,  <35.165771, 35.783943, 52.579414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774422, 35.790207, 52.496914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195843, -0.390938, 0.899340,
		-0.066546, 0.920284, 0.385551,
		-0.978375, 0.015660, -0.206247,
		34.480907, 35.794907, 52.435040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829144, 36.100056, 53.155876>,  <35.165771, 35.783943, 52.579414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829144, 36.100056, 53.155876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541679, 35.887196, 52.976841>,  <34.369202, 35.759480, 52.869419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541679, 35.887196, 52.976841>,  <34.829144, 36.100056, 53.155876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541679, 35.887196, 52.976841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366856, -0.256653, 0.894174,
		-0.590713, 0.806810, -0.010777,
		-0.718662, -0.532154, -0.447591,
		34.326080, 35.727551, 52.842564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267082, 36.256702, 53.564671>,  <34.829144, 36.100056, 53.155876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267082, 36.256702, 53.564671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148830, 35.924931, 53.375084>,  <34.077877, 35.725868, 53.261333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148830, 35.924931, 53.375084>,  <34.267082, 36.256702, 53.564671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148830, 35.924931, 53.375084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215986, -0.425260, 0.878922,
		-0.930565, 0.362208, -0.053425,
		-0.295633, -0.829434, -0.473963,
		34.060143, 35.676102, 53.232895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703156, 36.049259, 53.936039>,  <34.267082, 36.256702, 53.564671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703156, 36.049259, 53.936039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819592, 35.724575, 53.733498>,  <33.889454, 35.529766, 53.611973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819592, 35.724575, 53.733498>,  <33.703156, 36.049259, 53.936039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819592, 35.724575, 53.733498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173345, -0.565260, 0.806494,
		-0.940861, -0.146988, -0.305247,
		0.291089, -0.811712, -0.506350,
		33.906918, 35.481060, 53.581593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220409, 35.585926, 54.058376>,  <33.703156, 36.049259, 53.936039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220409, 35.585926, 54.058376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533161, 35.355331, 53.963436>,  <33.720814, 35.216976, 53.906471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533161, 35.355331, 53.963436>,  <33.220409, 35.585926, 54.058376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533161, 35.355331, 53.963436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106545, -0.498675, 0.860216,
		-0.614261, -0.647295, -0.451324,
		0.781877, -0.576483, -0.237351,
		33.767723, 35.182388, 53.892231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010571, 34.994232, 54.292561>,  <33.220409, 35.585926, 54.058376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010571, 34.994232, 54.292561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405193, 34.940014, 54.256035>,  <33.641968, 34.907482, 54.234119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405193, 34.940014, 54.256035>,  <33.010571, 34.994232, 54.292561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405193, 34.940014, 54.256035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013536, -0.624557, 0.780862,
		-0.162871, -0.769127, -0.617994,
		0.986555, -0.135545, -0.091312,
		33.701160, 34.899349, 54.228642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107468, 34.208065, 54.376915>,  <33.010571, 34.994232, 54.292561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107468, 34.208065, 54.376915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414349, 34.440548, 54.485432>,  <33.598476, 34.580036, 54.550541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414349, 34.440548, 54.485432>,  <33.107468, 34.208065, 54.376915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414349, 34.440548, 54.485432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115196, -0.540943, 0.833133,
		0.630977, -0.607929, -0.481965,
		0.767202, 0.581208, 0.271291,
		33.644508, 34.614910, 54.566818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945499, 34.704517, 53.637165>,  <33.107468, 34.208065, 54.376915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945499, 34.704517, 53.637165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566257, 34.686520, 53.763065>,  <32.338711, 34.675720, 53.838604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566257, 34.686520, 53.763065>,  <32.945499, 34.704517, 53.637165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566257, 34.686520, 53.763065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316310, 0.233761, -0.919404,
		-0.032209, -0.971253, -0.235862,
		-0.948109, -0.044992, 0.314746,
		32.281826, 34.673023, 53.857491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597767, 34.190586, 53.289982>,  <32.945499, 34.704517, 53.637165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597767, 34.190586, 53.289982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292725, 34.413082, 53.422058>,  <32.109699, 34.546581, 53.501305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292725, 34.413082, 53.422058>,  <32.597767, 34.190586, 53.289982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292725, 34.413082, 53.422058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446927, -0.084065, -0.890612,
		-0.467638, -0.826758, 0.312708,
		-0.762608, 0.556241, 0.330189,
		32.063942, 34.579956, 53.521114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929256, 33.952385, 53.044247>,  <32.597767, 34.190586, 53.289982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929256, 33.952385, 53.044247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849604, 34.333870, 53.134380>,  <31.801811, 34.562763, 53.188461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.849604, 34.333870, 53.134380>,  <31.929256, 33.952385, 53.044247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849604, 34.333870, 53.134380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559303, 0.078203, -0.825266,
		-0.804690, -0.290364, 0.517843,
		-0.199131, 0.953715, 0.225331,
		31.789864, 34.619984, 53.201981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149742, 34.086937, 52.880550>,  <31.929256, 33.952385, 53.044247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149742, 34.086937, 52.880550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.354801, 34.430336, 52.885860>,  <31.477837, 34.636375, 52.889046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.354801, 34.430336, 52.885860>,  <31.149742, 34.086937, 52.880550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354801, 34.430336, 52.885860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326525, 0.209232, -0.921739,
		-0.794086, 0.468195, 0.387583,
		0.512649, 0.858496, 0.013270,
		31.508596, 34.687885, 52.889843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777925, 34.557198, 52.533031>,  <31.149742, 34.086937, 52.880550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777925, 34.557198, 52.533031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131493, 34.743698, 52.518620>,  <31.343634, 34.855598, 52.509972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131493, 34.743698, 52.518620>,  <30.777925, 34.557198, 52.533031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131493, 34.743698, 52.518620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145664, 0.201303, -0.968638,
		-0.444378, 0.861444, 0.245851,
		0.883917, 0.466253, -0.036027,
		31.396667, 34.883575, 52.507812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638479, 35.177677, 52.225937>,  <30.777925, 34.557198, 52.533031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638479, 35.177677, 52.225937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035381, 35.148685, 52.185585>,  <31.273523, 35.131290, 52.161373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035381, 35.148685, 52.185585>,  <30.638479, 35.177677, 52.225937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035381, 35.148685, 52.185585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061926, 0.415406, -0.907526,
		0.107684, 0.906744, 0.407700,
		0.992255, -0.072478, -0.100884,
		31.333057, 35.126942, 52.155319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811880, 35.822357, 51.910080>,  <30.638479, 35.177677, 52.225937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811880, 35.822357, 51.910080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.120422, 35.569992, 51.876724>,  <31.305548, 35.418571, 51.856712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.120422, 35.569992, 51.876724>,  <30.811880, 35.822357, 51.910080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120422, 35.569992, 51.876724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171524, 0.332290, -0.927450,
		0.612851, 0.701092, 0.364531,
		0.771358, -0.630915, -0.083390,
		31.351830, 35.380718, 51.851707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402863, 36.262970, 51.719307>,  <30.811880, 35.822357, 51.910080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402863, 36.262970, 51.719307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465792, 35.888283, 51.594208>,  <31.503550, 35.663471, 51.519150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465792, 35.888283, 51.594208>,  <31.402863, 36.262970, 51.719307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465792, 35.888283, 51.594208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333300, 0.348472, -0.876058,
		0.929602, 0.033586, 0.367031,
		0.157323, -0.936717, -0.312746,
		31.512989, 35.607269, 51.500385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463388, 36.489506, 51.010948>,  <31.402863, 36.262970, 51.719307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463388, 36.489506, 51.010948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.657806, 36.141529, 50.977573>,  <31.774458, 35.932743, 50.957550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.657806, 36.141529, 50.977573>,  <31.463388, 36.489506, 51.010948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657806, 36.141529, 50.977573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342382, 0.277388, -0.897681,
		0.804073, 0.407748, 0.432676,
		0.486047, -0.869941, -0.083434,
		31.803621, 35.880547, 50.952541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224823, 36.472015, 50.908058>,  <31.463388, 36.489506, 51.010948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224823, 36.472015, 50.908058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121944, 36.137932, 50.713623>,  <32.060215, 35.937481, 50.596962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121944, 36.137932, 50.713623>,  <32.224823, 36.472015, 50.908058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121944, 36.137932, 50.713623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389876, 0.370568, -0.843016,
		0.884220, -0.406337, 0.230317,
		-0.257200, -0.835206, -0.486085,
		32.044785, 35.887371, 50.567799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746166, 36.409172, 50.465324>,  <32.224823, 36.472015, 50.908058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746166, 36.409172, 50.465324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.473019, 36.156075, 50.319271>,  <32.309132, 36.004215, 50.231640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.473019, 36.156075, 50.319271>,  <32.746166, 36.409172, 50.465324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473019, 36.156075, 50.319271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290686, 0.223204, -0.930420,
		0.670222, -0.741491, 0.031513,
		-0.682864, -0.632749, -0.365137,
		32.268158, 35.966251, 50.209728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088955, 35.812454, 49.971836>,  <32.746166, 36.409172, 50.465324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088955, 35.812454, 49.971836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710091, 35.869240, 49.856785>,  <32.482773, 35.903309, 49.787754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710091, 35.869240, 49.856785>,  <33.088955, 35.812454, 49.971836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710091, 35.869240, 49.856785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292462, 0.013959, -0.956175,
		-0.131725, -0.989774, -0.054740,
		-0.947161, 0.141962, -0.287632,
		32.425941, 35.911827, 49.770496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031990, 35.341492, 49.387310>,  <33.088955, 35.812454, 49.971836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031990, 35.341492, 49.387310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742142, 35.615170, 49.354317>,  <32.568233, 35.779377, 49.334522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742142, 35.615170, 49.354317>,  <33.031990, 35.341492, 49.387310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742142, 35.615170, 49.354317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311243, 0.218127, -0.924958,
		-0.614858, -0.695917, -0.371010,
		-0.724622, 0.684193, -0.082482,
		32.524754, 35.820427, 49.329571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834141, 35.312904, 48.741432>,  <33.031990, 35.341492, 49.387310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834141, 35.312904, 48.741432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661583, 35.663425, 48.827221>,  <32.558048, 35.873737, 48.878696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661583, 35.663425, 48.827221>,  <32.834141, 35.312904, 48.741432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661583, 35.663425, 48.827221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277887, 0.355245, -0.892513,
		-0.858299, -0.325427, -0.396763,
		-0.431396, 0.876298, 0.214475,
		32.532166, 35.926315, 48.891563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404881, 35.500305, 48.180367>,  <32.834141, 35.312904, 48.741432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404881, 35.500305, 48.180367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481705, 35.845688, 48.366936>,  <32.527798, 36.052917, 48.478878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481705, 35.845688, 48.366936>,  <32.404881, 35.500305, 48.180367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481705, 35.845688, 48.366936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263436, 0.412465, -0.872052,
		-0.945365, 0.290358, -0.148249,
		0.192060, 0.863461, 0.466420,
		32.539322, 36.104725, 48.506863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115414, 35.958443, 47.712555>,  <32.404881, 35.500305, 48.180367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115414, 35.958443, 47.712555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372913, 36.179543, 47.924236>,  <32.527412, 36.312202, 48.051243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372913, 36.179543, 47.924236>,  <32.115414, 35.958443, 47.712555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372913, 36.179543, 47.924236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319315, 0.434434, -0.842203,
		-0.695428, 0.711151, 0.103167,
		0.643753, 0.552749, 0.529199,
		32.566040, 36.345367, 48.082996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963089, 36.762512, 47.623188>,  <32.115414, 35.958443, 47.712555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963089, 36.762512, 47.623188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346809, 36.709675, 47.723019>,  <32.577042, 36.677971, 47.782917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346809, 36.709675, 47.723019>,  <31.963089, 36.762512, 47.623188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346809, 36.709675, 47.723019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282306, 0.468798, -0.836978,
		-0.006443, 0.873373, 0.487010,
		0.959303, -0.132093, 0.249579,
		32.634602, 36.670048, 47.797894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341454, 37.375870, 47.399002>,  <31.963089, 36.762512, 47.623188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341454, 37.375870, 47.399002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638680, 37.112259, 47.445549>,  <32.817017, 36.954094, 47.473476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638680, 37.112259, 47.445549>,  <32.341454, 37.375870, 47.399002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638680, 37.112259, 47.445549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434061, 0.342268, -0.833333,
		0.509358, 0.669731, 0.540384,
		0.743065, -0.659025, 0.116367,
		32.861599, 36.914551, 47.480457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034500, 37.765404, 47.277786>,  <32.341454, 37.375870, 47.399002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034500, 37.765404, 47.277786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082458, 37.371426, 47.227974>,  <33.111233, 37.135040, 47.198086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082458, 37.371426, 47.227974>,  <33.034500, 37.765404, 47.277786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082458, 37.371426, 47.227974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535432, 0.169784, -0.827337,
		0.836025, 0.032515, 0.547727,
		0.119896, -0.984945, -0.124535,
		33.118427, 37.075943, 47.190613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656429, 37.741093, 47.020279>,  <33.034500, 37.765404, 47.277786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656429, 37.741093, 47.020279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486874, 37.394344, 46.915325>,  <33.385139, 37.186295, 46.852352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486874, 37.394344, 46.915325>,  <33.656429, 37.741093, 47.020279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486874, 37.394344, 46.915325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453689, 0.047507, -0.889893,
		0.783889, -0.496262, 0.373152,
		-0.423893, -0.866872, -0.262389,
		33.359707, 37.134281, 46.836609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.581604, 28.085506, 34.881618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191929, 28.032372, 34.808605>,  <40.958126, 28.000490, 34.764797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191929, 28.032372, 34.808605>,  <41.581604, 28.085506, 34.881618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191929, 28.032372, 34.808605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134468, 0.990912, -0.003476,
		0.181337, 0.021159, -0.983193,
		-0.974184, -0.132839, -0.182534,
		40.899673, 27.992519, 34.753845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568314, 28.333618, 34.198841>,  <41.581604, 28.085506, 34.881618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568314, 28.333618, 34.198841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203861, 28.348227, 34.363037>,  <40.985188, 28.356991, 34.461555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203861, 28.348227, 34.363037>,  <41.568314, 28.333618, 34.198841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203861, 28.348227, 34.363037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010541, 0.993675, -0.111801,
		-0.411974, -0.106193, -0.904986,
		-0.911134, 0.036520, 0.410488,
		40.930519, 28.359182, 34.486183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229694, 28.898447, 33.851662>,  <41.568314, 28.333618, 34.198841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229694, 28.898447, 33.851662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984478, 28.834021, 34.161045>,  <40.837349, 28.795364, 34.346676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984478, 28.834021, 34.161045>,  <41.229694, 28.898447, 33.851662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984478, 28.834021, 34.161045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263495, 0.964628, -0.007969,
		-0.744816, -0.208688, -0.633797,
		-0.613041, -0.161066, 0.773459,
		40.800564, 28.785700, 34.393082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574528, 29.312635, 33.631020>,  <41.229694, 28.898447, 33.851662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574528, 29.312635, 33.631020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604084, 29.247646, 34.024597>,  <40.621819, 29.208652, 34.260742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604084, 29.247646, 34.024597>,  <40.574528, 29.312635, 33.631020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604084, 29.247646, 34.024597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111141, 0.979152, 0.170027,
		-0.991054, -0.121919, 0.054291,
		0.073889, -0.162472, 0.983943,
		40.626251, 29.198904, 34.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075386, 29.780760, 33.932350>,  <40.574528, 29.312635, 33.631020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075386, 29.780760, 33.932350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320652, 29.678280, 34.231255>,  <40.467812, 29.616791, 34.410595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320652, 29.678280, 34.231255>,  <40.075386, 29.780760, 33.932350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320652, 29.678280, 34.231255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066623, 0.925804, 0.372085,
		-0.787143, -0.277933, 0.550599,
		0.613162, -0.256201, 0.747257,
		40.504601, 29.601419, 34.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792133, 30.075293, 34.574612>,  <40.075386, 29.780760, 33.932350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792133, 30.075293, 34.574612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172691, 30.027670, 34.688229>,  <40.401024, 29.999096, 34.756397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172691, 30.027670, 34.688229>,  <39.792133, 30.075293, 34.574612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172691, 30.027670, 34.688229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033719, 0.876454, 0.480303,
		-0.306132, -0.466534, 0.829837,
		0.951392, -0.119055, 0.284042,
		40.458111, 29.991953, 34.773441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778881, 30.248337, 35.309669>,  <39.792133, 30.075293, 34.574612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778881, 30.248337, 35.309669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.150032, 30.290895, 35.166718>,  <40.372723, 30.316431, 35.080948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.150032, 30.290895, 35.166718>,  <39.778881, 30.248337, 35.309669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150032, 30.290895, 35.166718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042747, 0.921758, 0.385402,
		0.370422, -0.372883, 0.850733,
		0.927879, 0.106395, -0.357379,
		40.428394, 30.322813, 35.059505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186298, 30.482204, 35.822376>,  <39.778881, 30.248337, 35.309669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186298, 30.482204, 35.822376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393414, 30.571920, 35.492142>,  <40.517681, 30.625750, 35.294003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393414, 30.571920, 35.492142>,  <40.186298, 30.482204, 35.822376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393414, 30.571920, 35.492142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103716, 0.941447, 0.320812,
		0.849200, -0.251739, 0.464206,
		0.517786, 0.224288, -0.825586,
		40.548748, 30.639206, 35.244465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862560, 30.695557, 36.017338>,  <40.186298, 30.482204, 35.822376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862560, 30.695557, 36.017338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771473, 30.860279, 35.664394>,  <40.716820, 30.959112, 35.452629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771473, 30.860279, 35.664394>,  <40.862560, 30.695557, 36.017338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771473, 30.860279, 35.664394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128796, 0.910945, 0.391907,
		0.965172, -0.024402, -0.260474,
		-0.227714, 0.411806, -0.882362,
		40.703159, 30.983822, 35.399685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429070, 31.234913, 35.968391>,  <40.862560, 30.695557, 36.017338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429070, 31.234913, 35.968391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.140602, 31.332762, 35.709141>,  <40.967522, 31.391470, 35.553589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.140602, 31.332762, 35.709141>,  <41.429070, 31.234913, 35.968391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140602, 31.332762, 35.709141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272011, 0.960433, 0.059826,
		0.637118, -0.133153, -0.759178,
		-0.721173, 0.244621, -0.648128,
		40.924252, 31.406149, 35.514702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750969, 31.795757, 35.446667>,  <41.429070, 31.234913, 35.968391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750969, 31.795757, 35.446667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358742, 31.845163, 35.385700>,  <41.123405, 31.874807, 35.349121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358742, 31.845163, 35.385700>,  <41.750969, 31.795757, 35.446667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358742, 31.845163, 35.385700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129278, 0.991200, -0.028468,
		0.147556, -0.047619, -0.987907,
		-0.980568, 0.123514, -0.152414,
		41.064571, 31.882217, 35.339977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819103, 32.300659, 34.912090>,  <41.750969, 31.795757, 35.446667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819103, 32.300659, 34.912090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461113, 32.294827, 35.090443>,  <41.246319, 32.291325, 35.197456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461113, 32.294827, 35.090443>,  <41.819103, 32.300659, 34.912090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461113, 32.294827, 35.090443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003029, 0.999244, 0.038769,
		-0.446111, 0.036048, -0.894251,
		-0.894973, -0.014586, 0.445883,
		41.192619, 32.290451, 35.224209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407581, 32.828247, 34.655510>,  <41.819103, 32.300659, 34.912090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407581, 32.828247, 34.655510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237282, 32.763046, 35.011524>,  <41.135101, 32.723927, 35.225132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237282, 32.763046, 35.011524>,  <41.407581, 32.828247, 34.655510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237282, 32.763046, 35.011524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012184, 0.982518, 0.185770,
		-0.904758, 0.089936, -0.416322,
		-0.425751, -0.163004, 0.890037,
		41.109558, 32.714146, 35.278534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985420, 33.353687, 34.729282>,  <41.407581, 32.828247, 34.655510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985420, 33.353687, 34.729282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.032814, 33.204113, 35.097225>,  <41.061249, 33.114368, 35.317989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.032814, 33.204113, 35.097225>,  <40.985420, 33.353687, 34.729282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032814, 33.204113, 35.097225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299522, 0.896688, 0.325941,
		-0.946704, 0.236899, 0.218244,
		0.118481, -0.373939, 0.919855,
		41.068359, 33.091930, 35.373180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760265, 33.824257, 35.097618>,  <40.985420, 33.353687, 34.729282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760265, 33.824257, 35.097618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957043, 33.621761, 35.380947>,  <41.075108, 33.500263, 35.550945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957043, 33.621761, 35.380947>,  <40.760265, 33.824257, 35.097618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957043, 33.621761, 35.380947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349510, 0.859970, 0.371880,
		-0.797393, 0.064621, 0.599991,
		0.491943, -0.506238, 0.708319,
		41.104626, 33.469891, 35.593441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569458, 34.097317, 35.810825>,  <40.760265, 33.824257, 35.097618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569458, 34.097317, 35.810825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.932514, 33.929970, 35.797245>,  <41.150349, 33.829559, 35.789097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.932514, 33.929970, 35.797245>,  <40.569458, 34.097317, 35.810825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932514, 33.929970, 35.797245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417061, 0.889743, 0.185520,
		-0.047412, -0.182544, 0.982054,
		0.907641, -0.418372, -0.033948,
		41.204807, 33.804459, 35.787060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924957, 34.245003, 36.425442>,  <40.569458, 34.097317, 35.810825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924957, 34.245003, 36.425442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230747, 34.148960, 36.186134>,  <41.414223, 34.091335, 36.042549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230747, 34.148960, 36.186134>,  <40.924957, 34.245003, 36.425442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230747, 34.148960, 36.186134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473852, 0.838521, 0.268974,
		0.437078, -0.489115, 0.754804,
		0.764478, -0.240102, -0.598267,
		41.460091, 34.076931, 36.006653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543858, 34.452553, 36.762676>,  <40.924957, 34.245003, 36.425442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543858, 34.452553, 36.762676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713482, 34.341320, 36.417923>,  <41.815254, 34.274578, 36.211071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713482, 34.341320, 36.417923>,  <41.543858, 34.452553, 36.762676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713482, 34.341320, 36.417923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526755, 0.849884, -0.015042,
		0.736684, -0.447622, 0.506884,
		0.424059, -0.278085, -0.861883,
		41.840698, 34.257896, 36.159359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272923, 34.426586, 36.859417>,  <41.543858, 34.452553, 36.762676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272923, 34.426586, 36.859417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.171295, 34.529026, 36.486351>,  <42.110321, 34.590488, 36.262512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.171295, 34.529026, 36.486351>,  <42.272923, 34.426586, 36.859417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171295, 34.529026, 36.486351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570208, 0.818560, 0.069440,
		0.781226, -0.514171, -0.353997,
		-0.254064, 0.256101, -0.932665,
		42.095078, 34.605858, 36.206551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844238, 34.773075, 36.550068>,  <42.272923, 34.426586, 36.859417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844238, 34.773075, 36.550068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544720, 34.862751, 36.300575>,  <42.365009, 34.916557, 36.150879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544720, 34.862751, 36.300575>,  <42.844238, 34.773075, 36.550068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544720, 34.862751, 36.300575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253154, 0.966449, 0.043458,
		0.612550, -0.125360, -0.780428,
		-0.748796, 0.224189, -0.623734,
		42.320080, 34.930008, 36.113457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138786, 35.314468, 36.090118>,  <42.844238, 34.773075, 36.550068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138786, 35.314468, 36.090118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743782, 35.342319, 36.033592>,  <42.506779, 35.359028, 35.999676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743782, 35.342319, 36.033592>,  <43.138786, 35.314468, 36.090118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743782, 35.342319, 36.033592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042560, 0.981588, 0.186208,
		0.151675, 0.177869, -0.972295,
		-0.987514, 0.069624, -0.141312,
		42.447529, 35.363205, 35.991199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475677, 34.800571, 35.687531>,  <43.138786, 35.314468, 36.090118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475677, 34.800571, 35.687531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861008, 34.865746, 35.602249>,  <44.092205, 34.904850, 35.551083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861008, 34.865746, 35.602249>,  <43.475677, 34.800571, 35.687531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861008, 34.865746, 35.602249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183711, -0.979602, 0.081424,
		-0.195583, -0.117605, -0.973610,
		0.963326, 0.162938, -0.213199,
		44.150005, 34.914627, 35.538288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611324, 34.376602, 35.165871>,  <43.475677, 34.800571, 35.687531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611324, 34.376602, 35.165871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.962822, 34.447338, 35.343204>,  <44.173721, 34.489780, 35.449604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.962822, 34.447338, 35.343204>,  <43.611324, 34.376602, 35.165871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962822, 34.447338, 35.343204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200447, -0.979683, -0.006519,
		0.433171, 0.094592, -0.896334,
		0.878740, 0.176844, 0.443330,
		44.226444, 34.500393, 35.476204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900188, 33.821407, 34.918247>,  <43.611324, 34.376602, 35.165871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900188, 33.821407, 34.918247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147617, 33.976517, 35.191597>,  <44.296074, 34.069584, 35.355606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147617, 33.976517, 35.191597>,  <43.900188, 33.821407, 34.918247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147617, 33.976517, 35.191597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507453, -0.861180, 0.029343,
		0.599887, 0.328630, -0.729478,
		0.618568, 0.387778, 0.683375,
		44.333187, 34.092850, 35.396610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657597, 33.828182, 34.673515>,  <43.900188, 33.821407, 34.918247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657597, 33.828182, 34.673515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629414, 33.815884, 35.072330>,  <44.612503, 33.808502, 35.311619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629414, 33.815884, 35.072330>,  <44.657597, 33.828182, 34.673515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629414, 33.815884, 35.072330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439741, -0.898118, 0.003377,
		0.895357, 0.438677, 0.076801,
		-0.070458, -0.030749, 0.997041,
		44.608276, 33.806660, 35.371441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286587, 33.534271, 35.049454>,  <44.657597, 33.828182, 34.673515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286587, 33.534271, 35.049454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986320, 33.495281, 35.310833>,  <44.806160, 33.471886, 35.467663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986320, 33.495281, 35.310833>,  <45.286587, 33.534271, 35.049454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986320, 33.495281, 35.310833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131571, -0.991301, 0.003270,
		0.647449, 0.088431, 0.756961,
		-0.750666, -0.097477, 0.653452,
		44.761120, 33.466038, 35.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536953, 32.957699, 35.465492>,  <45.286587, 33.534271, 35.049454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536953, 32.957699, 35.465492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149467, 32.955662, 35.564739>,  <44.916977, 32.954441, 35.624287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149467, 32.955662, 35.564739>,  <45.536953, 32.957699, 35.465492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149467, 32.955662, 35.564739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047398, -0.985180, 0.164847,
		0.243602, 0.171450, 0.954601,
		-0.968716, -0.005090, 0.248118,
		44.858852, 32.954136, 35.639175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483318, 32.531391, 36.012836>,  <45.536953, 32.957699, 35.465492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483318, 32.531391, 36.012836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112354, 32.542519, 35.863636>,  <44.889774, 32.549194, 35.774117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112354, 32.542519, 35.863636>,  <45.483318, 32.531391, 36.012836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112354, 32.542519, 35.863636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086053, -0.986349, 0.140392,
		-0.364007, 0.162300, 0.917147,
		-0.927412, 0.027820, -0.373005,
		44.834129, 32.550865, 35.751736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143726, 32.028347, 36.419418>,  <45.483318, 32.531391, 36.012836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143726, 32.028347, 36.419418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898342, 32.104614, 36.112873>,  <44.751110, 32.150375, 35.928947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898342, 32.104614, 36.112873>,  <45.143726, 32.028347, 36.419418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898342, 32.104614, 36.112873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203299, -0.975839, -0.080050,
		-0.763110, 0.106693, 0.637401,
		-0.613460, 0.190670, -0.766363,
		44.714306, 32.161816, 35.882965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687553, 31.565641, 36.440308>,  <45.143726, 32.028347, 36.419418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687553, 31.565641, 36.440308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626118, 31.695427, 36.066971>,  <44.589256, 31.773298, 35.842968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626118, 31.695427, 36.066971>,  <44.687553, 31.565641, 36.440308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626118, 31.695427, 36.066971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193372, -0.936158, -0.293622,
		-0.969030, 0.135388, 0.206522,
		-0.153584, 0.324464, -0.933346,
		44.580044, 31.792767, 35.786968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159859, 31.143641, 36.216011>,  <44.687553, 31.565641, 36.440308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159859, 31.143641, 36.216011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299706, 31.271490, 35.863735>,  <44.383614, 31.348200, 35.652370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299706, 31.271490, 35.863735>,  <44.159859, 31.143641, 36.216011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299706, 31.271490, 35.863735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124260, -0.915884, -0.381728,
		-0.928615, 0.242893, -0.280495,
		0.349620, 0.319624, -0.880685,
		44.404591, 31.367378, 35.599529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685051, 31.098682, 35.765526>,  <44.159859, 31.143641, 36.216011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685051, 31.098682, 35.765526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010101, 31.089785, 35.532581>,  <44.205132, 31.084446, 35.392815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010101, 31.089785, 35.532581>,  <43.685051, 31.098682, 35.765526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010101, 31.089785, 35.532581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266101, -0.903187, -0.336813,
		-0.518493, 0.428670, -0.739870,
		0.812622, -0.022245, -0.582366,
		44.253887, 31.083111, 35.357872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503181, 30.913099, 35.027477>,  <43.685051, 31.098682, 35.765526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503181, 30.913099, 35.027477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892281, 30.830061, 35.068794>,  <44.125740, 30.780237, 35.093586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892281, 30.830061, 35.068794>,  <43.503181, 30.913099, 35.027477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892281, 30.830061, 35.068794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173001, -0.946382, -0.272822,
		0.154395, 0.247515, -0.956503,
		0.972745, -0.207598, 0.103296,
		44.184105, 30.767782, 35.099785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585617, 30.654869, 34.357128>,  <43.503181, 30.913099, 35.027477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585617, 30.654869, 34.357128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885773, 30.513502, 34.580559>,  <44.065868, 30.428682, 34.714619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885773, 30.513502, 34.580559>,  <43.585617, 30.654869, 34.357128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885773, 30.513502, 34.580559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283232, -0.935466, -0.211381,
		0.597237, 0.000411, -0.802065,
		0.750391, -0.353415, 0.558579,
		44.110889, 30.407478, 34.748131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888817, 30.283493, 33.898441>,  <43.585617, 30.654869, 34.357128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888817, 30.283493, 33.898441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980721, 30.145693, 34.262535>,  <44.035862, 30.063013, 34.480991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980721, 30.145693, 34.262535>,  <43.888817, 30.283493, 33.898441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980721, 30.145693, 34.262535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184079, -0.933758, -0.306938,
		0.955681, -0.097034, -0.277954,
		0.229759, -0.344501, 0.910236,
		44.049648, 30.042343, 34.535606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472832, 29.796017, 33.812561>,  <43.888817, 30.283493, 33.898441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472832, 29.796017, 33.812561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275333, 29.711870, 34.150074>,  <44.156834, 29.661383, 34.352581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275333, 29.711870, 34.150074>,  <44.472832, 29.796017, 33.812561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275333, 29.711870, 34.150074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111553, -0.946960, -0.301367,
		0.862423, -0.242924, 0.444088,
		-0.493743, -0.210366, 0.843779,
		44.127209, 29.648760, 34.403210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711529, 29.125950, 33.968266>,  <44.472832, 29.796017, 33.812561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711529, 29.125950, 33.968266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389091, 29.177689, 34.199261>,  <44.195629, 29.208733, 34.337856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389091, 29.177689, 34.199261>,  <44.711529, 29.125950, 33.968266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389091, 29.177689, 34.199261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260075, -0.953968, -0.149354,
		0.531583, -0.270583, 0.802624,
		-0.806090, 0.129348, 0.577484,
		44.147266, 29.216494, 34.372505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821877, 28.586277, 34.344074>,  <44.711529, 29.125950, 33.968266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821877, 28.586277, 34.344074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436974, 28.689461, 34.378769>,  <44.206032, 28.751371, 34.399586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436974, 28.689461, 34.378769>,  <44.821877, 28.586277, 34.344074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436974, 28.689461, 34.378769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264898, -0.960857, -0.081137,
		0.062416, -0.101052, 0.992921,
		-0.962254, 0.257958, 0.086741,
		44.148296, 28.766848, 34.404793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556385, 28.093672, 34.781265>,  <44.821877, 28.586277, 34.344074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556385, 28.093672, 34.781265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221806, 28.238611, 34.616798>,  <44.021057, 28.325575, 34.518120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221806, 28.238611, 34.616798>,  <44.556385, 28.093672, 34.781265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221806, 28.238611, 34.616798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374806, -0.925576, -0.053200,
		-0.399841, 0.109607, 0.910007,
		-0.836450, 0.362348, -0.411164,
		43.970871, 28.347315, 34.493450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936253, 27.766235, 35.089142>,  <44.556385, 28.093672, 34.781265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936253, 27.766235, 35.089142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837433, 27.897593, 34.724480>,  <43.778141, 27.976408, 34.505680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837433, 27.897593, 34.724480>,  <43.936253, 27.766235, 35.089142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837433, 27.897593, 34.724480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512524, -0.842734, -0.164677,
		-0.822365, 0.426564, 0.376510,
		-0.247053, 0.328395, -0.911659,
		43.763317, 27.996111, 34.450981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239552, 27.636049, 35.034016>,  <43.936253, 27.766235, 35.089142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239552, 27.636049, 35.034016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316319, 27.692158, 34.645481>,  <43.362377, 27.725822, 34.412361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316319, 27.692158, 34.645481>,  <43.239552, 27.636049, 35.034016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316319, 27.692158, 34.645481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656143, -0.717675, -0.233280,
		-0.729826, 0.682104, -0.045695,
		0.191915, 0.140271, -0.971335,
		43.373894, 27.734240, 34.354080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637367, 27.723360, 34.734043>,  <43.239552, 27.636049, 35.034016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637367, 27.723360, 34.734043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.874676, 27.582735, 34.444370>,  <43.017059, 27.498360, 34.270569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.874676, 27.582735, 34.444370>,  <42.637367, 27.723360, 34.734043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874676, 27.582735, 34.444370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659793, -0.727750, -0.187227,
		-0.461198, 0.588884, -0.663711,
		0.593271, -0.351563, -0.724178,
		43.052658, 27.477266, 34.227116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.080750, 38.809879, 43.939320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797436, 38.549564, 43.829914>,  <36.627445, 38.393375, 43.764271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797436, 38.549564, 43.829914>,  <37.080750, 38.809879, 43.939320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797436, 38.549564, 43.829914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502562, -0.192768, -0.842776,
		0.495743, -0.734383, 0.463595,
		-0.708287, -0.650785, -0.273510,
		36.584949, 38.354328, 43.747860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391991, 38.148823, 43.708447>,  <37.080750, 38.809879, 43.939320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391991, 38.148823, 43.708447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035706, 38.137310, 43.526989>,  <36.821934, 38.130402, 43.418114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035706, 38.137310, 43.526989>,  <37.391991, 38.148823, 43.708447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035706, 38.137310, 43.526989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448284, -0.220872, -0.866174,
		-0.075263, -0.974878, 0.209639,
		-0.890717, -0.028787, -0.453646,
		36.768490, 38.128674, 43.390896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548542, 37.745026, 43.235435>,  <37.391991, 38.148823, 43.708447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548542, 37.745026, 43.235435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201649, 37.886162, 43.094917>,  <36.993511, 37.970844, 43.010605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201649, 37.886162, 43.094917>,  <37.548542, 37.745026, 43.235435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201649, 37.886162, 43.094917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344979, -0.082943, -0.934939,
		-0.359019, -0.932001, -0.049790,
		-0.867234, 0.352838, -0.351299,
		36.941479, 37.992012, 42.989529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340420, 37.279793, 42.745644>,  <37.548542, 37.745026, 43.235435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340420, 37.279793, 42.745644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129318, 37.608864, 42.661098>,  <37.002659, 37.806309, 42.610371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129318, 37.608864, 42.661098>,  <37.340420, 37.279793, 42.745644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129318, 37.608864, 42.661098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189545, -0.128501, -0.973427,
		-0.827982, -0.553788, -0.088119,
		-0.527749, 0.822682, -0.211364,
		36.970993, 37.855667, 42.597691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765812, 37.085327, 42.265953>,  <37.340420, 37.279793, 42.745644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765812, 37.085327, 42.265953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850933, 37.474472, 42.229607>,  <36.902008, 37.707958, 42.207798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850933, 37.474472, 42.229607>,  <36.765812, 37.085327, 42.265953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850933, 37.474472, 42.229607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177991, -0.130042, -0.975402,
		-0.960746, 0.191397, -0.200834,
		0.212806, 0.972860, -0.090870,
		36.914776, 37.766331, 42.202347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569084, 37.196671, 41.517071>,  <36.765812, 37.085327, 42.265953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569084, 37.196671, 41.517071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755646, 37.532578, 41.628246>,  <36.867584, 37.734123, 41.694954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755646, 37.532578, 41.628246>,  <36.569084, 37.196671, 41.517071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755646, 37.532578, 41.628246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256999, 0.172014, -0.950980,
		-0.846415, 0.514973, -0.135592,
		0.466405, 0.839770, 0.277943,
		36.895569, 37.784508, 41.711628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265133, 37.841267, 41.229679>,  <36.569084, 37.196671, 41.517071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265133, 37.841267, 41.229679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656815, 37.908733, 41.274792>,  <36.891823, 37.949211, 41.301861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656815, 37.908733, 41.274792>,  <36.265133, 37.841267, 41.229679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656815, 37.908733, 41.274792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080240, 0.188649, -0.978761,
		-0.186358, 0.967452, 0.171191,
		0.979200, 0.168664, 0.112784,
		36.950573, 37.959332, 41.308628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409554, 38.345867, 40.735218>,  <36.265133, 37.841267, 41.229679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409554, 38.345867, 40.735218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770721, 38.188953, 40.805466>,  <36.987423, 38.094807, 40.847614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770721, 38.188953, 40.805466>,  <36.409554, 38.345867, 40.735218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770721, 38.188953, 40.805466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266970, 0.191659, -0.944454,
		0.336836, 0.899655, 0.277782,
		0.902922, -0.392286, 0.175623,
		37.041599, 38.071266, 40.858154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812515, 38.760849, 40.405029>,  <36.409554, 38.345867, 40.735218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812515, 38.760849, 40.405029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062515, 38.453213, 40.458504>,  <37.212513, 38.268631, 40.490589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062515, 38.453213, 40.458504>,  <36.812515, 38.760849, 40.405029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062515, 38.453213, 40.458504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303017, 0.081191, -0.949520,
		0.719417, 0.633956, 0.283793,
		0.624996, -0.769095, 0.133690,
		37.250015, 38.222485, 40.498611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367844, 38.903057, 39.922916>,  <36.812515, 38.760849, 40.405029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367844, 38.903057, 39.922916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443344, 38.515713, 39.988209>,  <37.488644, 38.283306, 40.027386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443344, 38.515713, 39.988209>,  <37.367844, 38.903057, 39.922916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443344, 38.515713, 39.988209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401471, -0.075603, -0.912746,
		0.896212, 0.237810, 0.374501,
		0.188747, -0.968365, 0.163230,
		37.499969, 38.225204, 40.037178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983620, 38.750187, 39.615074>,  <37.367844, 38.903057, 39.922916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983620, 38.750187, 39.615074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862793, 38.371040, 39.655666>,  <37.790298, 38.143551, 39.680019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862793, 38.371040, 39.655666>,  <37.983620, 38.750187, 39.615074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862793, 38.371040, 39.655666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255035, -0.182925, -0.949471,
		0.918538, -0.260923, 0.296996,
		-0.302067, -0.947870, 0.101479,
		37.772171, 38.086678, 39.686111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537968, 38.331150, 39.555290>,  <37.983620, 38.750187, 39.615074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537968, 38.331150, 39.555290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206856, 38.129623, 39.456532>,  <38.008190, 38.008709, 39.397278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206856, 38.129623, 39.456532>,  <38.537968, 38.331150, 39.555290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206856, 38.129623, 39.456532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319664, -0.061860, -0.945509,
		0.461088, -0.861595, 0.212257,
		-0.827776, -0.503814, -0.246898,
		37.958523, 37.978477, 39.382462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649807, 37.654034, 39.266762>,  <38.537968, 38.331150, 39.555290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649807, 37.654034, 39.266762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302387, 37.790989, 39.123436>,  <38.093933, 37.873161, 39.037441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302387, 37.790989, 39.123436>,  <38.649807, 37.654034, 39.266762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302387, 37.790989, 39.123436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322827, -0.157696, -0.933228,
		-0.376034, -0.926228, 0.026434,
		-0.868551, 0.342392, -0.358311,
		38.041821, 37.893707, 39.015942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309547, 37.131569, 38.654236>,  <38.649807, 37.654034, 39.266762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309547, 37.131569, 38.654236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186031, 37.511124, 38.628117>,  <38.111923, 37.738857, 38.612446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186031, 37.511124, 38.628117>,  <38.309547, 37.131569, 38.654236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186031, 37.511124, 38.628117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042476, -0.054824, -0.997592,
		-0.950182, -0.310817, -0.023375,
		-0.308787, 0.948887, -0.065295,
		38.093395, 37.795792, 38.608528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381954, 36.483013, 38.726856>,  <38.309547, 37.131569, 38.654236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381954, 36.483013, 38.726856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515091, 36.106213, 38.709641>,  <38.594975, 35.880131, 38.699310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515091, 36.106213, 38.709641>,  <38.381954, 36.483013, 38.726856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515091, 36.106213, 38.709641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533600, -0.225778, 0.815043,
		-0.777489, -0.248313, -0.577799,
		0.332840, -0.942000, -0.043040,
		38.614944, 35.823612, 38.696728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831230, 35.918182, 38.821167>,  <38.381954, 36.483013, 38.726856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831230, 35.918182, 38.821167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168255, 35.723251, 38.912907>,  <38.370468, 35.606293, 38.967953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168255, 35.723251, 38.912907>,  <37.831230, 35.918182, 38.821167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168255, 35.723251, 38.912907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451223, -0.406163, 0.794626,
		-0.294086, -0.773011, -0.562110,
		0.842562, -0.487325, 0.229353,
		38.421024, 35.577053, 38.981712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589870, 35.280739, 38.998383>,  <37.831230, 35.918182, 38.821167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589870, 35.280739, 38.998383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954815, 35.298046, 39.161221>,  <38.173782, 35.308430, 39.258923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954815, 35.298046, 39.161221>,  <37.589870, 35.280739, 38.998383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954815, 35.298046, 39.161221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360755, -0.385123, 0.849433,
		0.193532, -0.921851, -0.335763,
		0.912360, 0.043264, 0.407096,
		38.228523, 35.311024, 39.283348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599606, 34.665249, 39.341763>,  <37.589870, 35.280739, 38.998383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599606, 34.665249, 39.341763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891930, 34.890659, 39.495831>,  <38.067322, 35.025906, 39.588272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891930, 34.890659, 39.495831>,  <37.599606, 34.665249, 39.341763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891930, 34.890659, 39.495831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291739, -0.252273, 0.922630,
		0.617097, -0.786634, -0.019959,
		0.730807, 0.563530, 0.385169,
		38.111172, 35.059719, 39.611382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998669, 34.220802, 39.739864>,  <37.599606, 34.665249, 39.341763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998669, 34.220802, 39.739864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079048, 34.586571, 39.880413>,  <38.127274, 34.806030, 39.964745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079048, 34.586571, 39.880413>,  <37.998669, 34.220802, 39.739864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079048, 34.586571, 39.880413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224690, -0.306104, 0.925103,
		0.953486, -0.264845, 0.143950,
		0.200945, 0.914416, 0.351374,
		38.139332, 34.860897, 39.985825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335903, 34.112957, 40.371979>,  <37.998669, 34.220802, 39.739864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335903, 34.112957, 40.371979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178562, 34.480709, 40.373203>,  <38.084156, 34.701363, 40.373940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178562, 34.480709, 40.373203>,  <38.335903, 34.112957, 40.371979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178562, 34.480709, 40.373203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363377, -0.158527, 0.918056,
		0.844530, 0.360006, 0.396439,
		-0.393352, 0.919383, 0.003063,
		38.060558, 34.756523, 40.374123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522682, 34.376678, 40.986614>,  <38.335903, 34.112957, 40.371979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522682, 34.376678, 40.986614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192421, 34.572945, 40.875233>,  <37.994263, 34.690704, 40.808403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192421, 34.572945, 40.875233>,  <38.522682, 34.376678, 40.986614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192421, 34.572945, 40.875233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314543, 0.009389, 0.949197,
		0.468356, 0.871296, 0.146584,
		-0.825655, 0.490669, -0.278458,
		37.944725, 34.720146, 40.791695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502995, 34.955124, 41.387375>,  <38.522682, 34.376678, 40.986614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502995, 34.955124, 41.387375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129761, 34.902737, 41.253391>,  <37.905819, 34.871304, 41.173000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129761, 34.902737, 41.253391>,  <38.502995, 34.955124, 41.387375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129761, 34.902737, 41.253391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342287, 0.037504, 0.938847,
		-0.110393, 0.990678, -0.079822,
		-0.933088, -0.130964, -0.334955,
		37.849834, 34.863449, 41.152905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122368, 35.363834, 41.803074>,  <38.502995, 34.955124, 41.387375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122368, 35.363834, 41.803074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834980, 35.129143, 41.653652>,  <37.662548, 34.988327, 41.563999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834980, 35.129143, 41.653652>,  <38.122368, 35.363834, 41.803074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834980, 35.129143, 41.653652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511067, 0.081012, 0.855715,
		-0.471813, 0.805719, -0.358064,
		-0.718473, -0.586732, -0.373554,
		37.619438, 34.953125, 41.541588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520363, 35.661507, 41.967178>,  <38.122368, 35.363834, 41.803074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520363, 35.661507, 41.967178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398853, 35.288307, 41.889988>,  <37.325947, 35.064388, 41.843674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398853, 35.288307, 41.889988>,  <37.520363, 35.661507, 41.967178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398853, 35.288307, 41.889988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514118, -0.010004, 0.857661,
		-0.802123, 0.359753, -0.476630,
		-0.303778, -0.932994, -0.192980,
		37.307720, 35.008408, 41.832092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866123, 35.670147, 42.099560>,  <37.520363, 35.661507, 41.967178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866123, 35.670147, 42.099560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947403, 35.279259, 42.124069>,  <36.996170, 35.044727, 42.138775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947403, 35.279259, 42.124069>,  <36.866123, 35.670147, 42.099560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947403, 35.279259, 42.124069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515743, -0.053628, 0.855063,
		-0.832298, -0.205350, -0.514891,
		0.203200, -0.977218, 0.061273,
		37.008362, 34.986092, 42.142452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248749, 35.413231, 42.279255>,  <36.866123, 35.670147, 42.099560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248749, 35.413231, 42.279255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528057, 35.149132, 42.389885>,  <36.695641, 34.990673, 42.456264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528057, 35.149132, 42.389885>,  <36.248749, 35.413231, 42.279255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528057, 35.149132, 42.389885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417289, -0.061510, 0.906690,
		-0.581629, -0.748524, -0.318465,
		0.698268, -0.660249, 0.276575,
		36.737537, 34.951057, 42.472858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841721, 34.847561, 42.645889>,  <36.248749, 35.413231, 42.279255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841721, 34.847561, 42.645889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223511, 34.780136, 42.744328>,  <36.452583, 34.739681, 42.803391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223511, 34.780136, 42.744328>,  <35.841721, 34.847561, 42.645889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223511, 34.780136, 42.744328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276209, -0.187912, 0.942549,
		-0.112625, -0.967615, -0.225913,
		0.954476, -0.168554, 0.246100,
		36.509853, 34.729568, 42.818157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864460, 34.189911, 42.904388>,  <35.841721, 34.847561, 42.645889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864460, 34.189911, 42.904388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183361, 34.377182, 43.056805>,  <36.374702, 34.489544, 43.148254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183361, 34.377182, 43.056805>,  <35.864460, 34.189911, 42.904388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183361, 34.377182, 43.056805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280008, -0.272390, 0.920543,
		0.534769, -0.840604, -0.086071,
		0.797256, 0.468177, 0.381041,
		36.422539, 34.517635, 43.171116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241344, 33.656170, 42.724007>,  <35.864460, 34.189911, 42.904388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241344, 33.656170, 42.724007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009567, 33.335522, 42.665157>,  <35.870499, 33.143131, 42.629848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009567, 33.335522, 42.665157>,  <36.241344, 33.656170, 42.724007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009567, 33.335522, 42.665157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062701, 0.136134, -0.988704,
		0.812595, -0.582126, -0.028620,
		-0.579446, -0.801622, -0.147122,
		35.835732, 33.095036, 42.621021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591026, 33.313969, 42.351173>,  <36.241344, 33.656170, 42.724007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591026, 33.313969, 42.351173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227650, 33.158573, 42.289444>,  <36.009624, 33.065334, 42.252407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227650, 33.158573, 42.289444>,  <36.591026, 33.313969, 42.351173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227650, 33.158573, 42.289444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190846, -0.056989, -0.979964,
		0.371911, -0.919689, 0.125912,
		-0.908438, -0.388489, -0.154324,
		35.955116, 33.042027, 42.243145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653309, 32.799931, 41.723961>,  <36.591026, 33.313969, 42.351173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653309, 32.799931, 41.723961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269241, 32.906727, 41.756943>,  <36.038803, 32.970806, 41.776730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269241, 32.906727, 41.756943>,  <36.653309, 32.799931, 41.723961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269241, 32.906727, 41.756943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042351, 0.152619, -0.987377,
		-0.276206, -0.951537, -0.135232,
		-0.960165, 0.266992, 0.082453,
		35.981194, 32.986824, 41.781677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344334, 32.198421, 41.421757>,  <36.653309, 32.799931, 41.723961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344334, 32.198421, 41.421757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062473, 32.481293, 41.398533>,  <35.893356, 32.651016, 41.384598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062473, 32.481293, 41.398533>,  <36.344334, 32.198421, 41.421757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062473, 32.481293, 41.398533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026097, -0.055940, -0.998093,
		-0.709078, -0.704819, 0.020963,
		-0.704647, 0.707178, -0.058059,
		35.851078, 32.693447, 41.381115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784008, 31.993805, 40.960537>,  <36.344334, 32.198421, 41.421757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784008, 31.993805, 40.960537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811462, 32.392433, 40.979034>,  <35.827934, 32.631611, 40.990135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811462, 32.392433, 40.979034>,  <35.784008, 31.993805, 40.960537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811462, 32.392433, 40.979034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032381, 0.048558, -0.998295,
		-0.997117, 0.067017, 0.035603,
		0.068631, 0.996570, 0.046248,
		35.832050, 32.691402, 40.992908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303455, 32.120979, 40.475513>,  <35.784008, 31.993805, 40.960537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303455, 32.120979, 40.475513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521896, 32.452698, 40.522907>,  <35.652962, 32.651730, 40.551342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521896, 32.452698, 40.522907>,  <35.303455, 32.120979, 40.475513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521896, 32.452698, 40.522907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063394, 0.181938, -0.981264,
		-0.835316, 0.528360, 0.151930,
		0.546102, 0.829298, 0.118481,
		35.685726, 32.701488, 40.558453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881023, 32.705643, 40.258762>,  <35.303455, 32.120979, 40.475513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881023, 32.705643, 40.258762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262825, 32.812290, 40.205338>,  <35.491905, 32.876278, 40.173283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262825, 32.812290, 40.205338>,  <34.881023, 32.705643, 40.258762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262825, 32.812290, 40.205338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207711, 0.273077, -0.939300,
		-0.213960, 0.924307, 0.316032,
		0.954504, 0.266616, -0.133561,
		35.549175, 32.892277, 40.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765167, 33.299160, 39.934338>,  <34.881023, 32.705643, 40.258762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765167, 33.299160, 39.934338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133400, 33.156414, 39.870880>,  <35.354340, 33.070766, 39.832806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133400, 33.156414, 39.870880>,  <34.765167, 33.299160, 39.934338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133400, 33.156414, 39.870880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086561, 0.209670, -0.973933,
		0.380830, 0.910320, 0.162128,
		0.920584, -0.356869, -0.158647,
		35.409576, 33.049355, 39.823284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048782, 33.887077, 39.681335>,  <34.765167, 33.299160, 39.934338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048782, 33.887077, 39.681335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316418, 33.613716, 39.564529>,  <35.477001, 33.449699, 39.494446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316418, 33.613716, 39.564529>,  <35.048782, 33.887077, 39.681335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316418, 33.613716, 39.564529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056803, 0.344750, -0.936974,
		0.741006, 0.643509, 0.191849,
		0.669091, -0.683406, -0.292015,
		35.517143, 33.408695, 39.476925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625488, 34.239944, 39.425671>,  <35.048782, 33.887077, 39.681335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625488, 34.239944, 39.425671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644505, 33.880947, 39.250290>,  <35.655914, 33.665550, 39.145061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644505, 33.880947, 39.250290>,  <35.625488, 34.239944, 39.425671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644505, 33.880947, 39.250290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143087, 0.440544, -0.886255,
		0.988568, -0.020602, 0.149364,
		0.047543, -0.897495, -0.438456,
		35.658768, 33.611698, 39.118752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130642, 34.412392, 38.952023>,  <35.625488, 34.239944, 39.425671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130642, 34.412392, 38.952023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942287, 34.077579, 38.840565>,  <35.829277, 33.876690, 38.773689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942287, 34.077579, 38.840565>,  <36.130642, 34.412392, 38.952023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942287, 34.077579, 38.840565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011675, 0.309918, -0.950691,
		0.882118, -0.450919, -0.136163,
		-0.470884, -0.837033, -0.278649,
		35.801022, 33.826469, 38.756969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496727, 34.150249, 38.404919>,  <36.130642, 34.412392, 38.952023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496727, 34.150249, 38.404919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118279, 34.021637, 38.389626>,  <35.891209, 33.944469, 38.380447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118279, 34.021637, 38.389626>,  <36.496727, 34.150249, 38.404919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118279, 34.021637, 38.389626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142919, 0.520643, -0.841727,
		0.290550, -0.790916, -0.538547,
		-0.946126, -0.321532, -0.038236,
		35.834442, 33.925179, 38.378155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.707260, 31.467241, 46.082275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320801, 31.470160, 45.979130>,  <35.088924, 31.471910, 45.917240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320801, 31.470160, 45.979130>,  <35.707260, 31.467241, 46.082275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320801, 31.470160, 45.979130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257481, 0.088888, -0.962186,
		0.015901, -0.996015, -0.087758,
		-0.966152, 0.007296, -0.257868,
		35.030956, 31.472347, 45.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660122, 31.047640, 45.516411>,  <35.707260, 31.467241, 46.082275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660122, 31.047640, 45.516411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319206, 31.254841, 45.487358>,  <35.114658, 31.379162, 45.469925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319206, 31.254841, 45.487358>,  <35.660122, 31.047640, 45.516411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319206, 31.254841, 45.487358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228521, 0.243836, -0.942509,
		-0.470513, -0.819887, -0.326193,
		-0.852289, 0.518005, -0.072633,
		35.063519, 31.410242, 45.465569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296444, 30.919764, 44.906769>,  <35.660122, 31.047640, 45.516411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296444, 30.919764, 44.906769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181145, 31.288261, 45.011246>,  <35.111965, 31.509359, 45.073933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181145, 31.288261, 45.011246>,  <35.296444, 30.919764, 44.906769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181145, 31.288261, 45.011246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231715, 0.331774, -0.914459,
		-0.929097, -0.203069, -0.309099,
		-0.288249, 0.921243, 0.261196,
		35.094669, 31.564634, 45.089603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934330, 31.072664, 44.315018>,  <35.296444, 30.919764, 44.906769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934330, 31.072664, 44.315018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003876, 31.412054, 44.514961>,  <35.045605, 31.615688, 44.634930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003876, 31.412054, 44.514961>,  <34.934330, 31.072664, 44.315018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003876, 31.412054, 44.514961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090195, 0.491738, -0.866059,
		-0.980630, 0.195666, 0.008970,
		0.173869, 0.848475, 0.499861,
		35.056038, 31.666595, 44.664921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635571, 31.515755, 43.949192>,  <34.934330, 31.072664, 44.315018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635571, 31.515755, 43.949192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.874622, 31.756380, 44.161213>,  <35.018055, 31.900755, 44.288425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.874622, 31.756380, 44.161213>,  <34.635571, 31.515755, 43.949192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874622, 31.756380, 44.161213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293811, 0.450799, -0.842885,
		-0.745996, 0.659472, 0.092667,
		0.597633, 0.601563, 0.530054,
		35.053913, 31.936850, 44.320229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378395, 32.165710, 43.736656>,  <34.635571, 31.515755, 43.949192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378395, 32.165710, 43.736656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755642, 32.228302, 43.853989>,  <34.981991, 32.265858, 43.924389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755642, 32.228302, 43.853989>,  <34.378395, 32.165710, 43.736656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755642, 32.228302, 43.853989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239384, 0.292653, -0.925770,
		-0.230709, 0.943329, 0.238547,
		0.943116, 0.156479, 0.293335,
		35.038578, 32.275246, 43.941990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553299, 32.783382, 43.515320>,  <34.378395, 32.165710, 43.736656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553299, 32.783382, 43.515320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920071, 32.648270, 43.600315>,  <35.140133, 32.567204, 43.651314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920071, 32.648270, 43.600315>,  <34.553299, 32.783382, 43.515320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920071, 32.648270, 43.600315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361292, 0.476562, -0.801472,
		0.169460, 0.811659, 0.559010,
		0.916925, -0.337783, 0.212488,
		35.195148, 32.546936, 43.664062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053703, 33.368774, 43.514797>,  <34.553299, 32.783382, 43.515320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053703, 33.368774, 43.514797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.265762, 33.038467, 43.437805>,  <35.392998, 32.840282, 43.391609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.265762, 33.038467, 43.437805>,  <35.053703, 33.368774, 43.514797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265762, 33.038467, 43.437805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236999, 0.362268, -0.901439,
		0.814112, 0.432276, 0.387762,
		0.530144, -0.825772, -0.192478,
		35.424805, 32.790737, 43.380062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765503, 33.610477, 43.352566>,  <35.053703, 33.368774, 43.514797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765503, 33.610477, 43.352566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707321, 33.252087, 43.184723>,  <35.672413, 33.037052, 43.084019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707321, 33.252087, 43.184723>,  <35.765503, 33.610477, 43.352566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707321, 33.252087, 43.184723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340549, 0.352858, -0.871503,
		0.928908, -0.269660, 0.253799,
		-0.145454, -0.895977, -0.419605,
		35.663685, 32.983295, 43.058842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455547, 33.478065, 43.451004>,  <35.765503, 33.610477, 43.352566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455547, 33.478065, 43.451004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555317, 33.850021, 43.559147>,  <36.615177, 34.073196, 43.624031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555317, 33.850021, 43.559147>,  <36.455547, 33.478065, 43.451004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555317, 33.850021, 43.559147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119105, -0.247605, 0.961512,
		0.961042, -0.272024, 0.048996,
		0.249422, 0.929890, 0.270359,
		36.630142, 34.128986, 43.640255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870571, 33.414364, 44.066029>,  <36.455547, 33.478065, 43.451004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870571, 33.414364, 44.066029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765736, 33.800278, 44.074955>,  <36.702835, 34.031826, 44.080311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765736, 33.800278, 44.074955>,  <36.870571, 33.414364, 44.066029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765736, 33.800278, 44.074955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008640, -0.020779, 0.999747,
		0.965006, 0.262213, -0.002889,
		-0.262087, 0.964786, 0.022317,
		36.687111, 34.089714, 44.081650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172890, 33.710831, 44.567192>,  <36.870571, 33.414364, 44.066029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172890, 33.710831, 44.567192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920746, 34.019146, 44.530243>,  <36.769459, 34.204136, 44.508076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920746, 34.019146, 44.530243>,  <37.172890, 33.710831, 44.567192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920746, 34.019146, 44.530243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156134, -0.009323, 0.987692,
		0.760441, 0.637022, 0.126223,
		-0.630358, 0.770789, -0.092371,
		36.731640, 34.250381, 44.502533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367107, 34.189476, 45.049408>,  <37.172890, 33.710831, 44.567192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367107, 34.189476, 45.049408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985874, 34.266228, 44.955757>,  <36.757133, 34.312279, 44.899567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985874, 34.266228, 44.955757>,  <37.367107, 34.189476, 45.049408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985874, 34.266228, 44.955757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200746, 0.178277, 0.963285,
		0.226571, 0.965091, -0.131395,
		-0.953083, 0.191875, -0.234131,
		36.699951, 34.323792, 44.885517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237232, 34.800278, 45.379543>,  <37.367107, 34.189476, 45.049408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237232, 34.800278, 45.379543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.894093, 34.605740, 45.313126>,  <36.688210, 34.489017, 45.273273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.894093, 34.605740, 45.313126>,  <37.237232, 34.800278, 45.379543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894093, 34.605740, 45.313126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260559, 0.133118, 0.956236,
		-0.442954, 0.863568, -0.240916,
		-0.857846, -0.486342, -0.166046,
		36.636738, 34.459835, 45.263313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616314, 35.251808, 45.727211>,  <37.237232, 34.800278, 45.379543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616314, 35.251808, 45.727211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.513977, 34.868603, 45.675438>,  <36.452576, 34.638680, 45.644375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.513977, 34.868603, 45.675438>,  <36.616314, 35.251808, 45.727211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513977, 34.868603, 45.675438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418894, -0.010808, 0.907971,
		-0.871248, 0.286519, -0.398541,
		-0.255844, -0.958014, -0.129437,
		36.437225, 34.581200, 45.636608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923561, 35.301304, 45.951385>,  <36.616314, 35.251808, 45.727211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923561, 35.301304, 45.951385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.057201, 34.925484, 45.981384>,  <36.137386, 34.699993, 45.999382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.057201, 34.925484, 45.981384>,  <35.923561, 35.301304, 45.951385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057201, 34.925484, 45.981384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332637, -0.043090, 0.942070,
		-0.881890, -0.339690, -0.326925,
		0.334099, -0.939550, 0.074992,
		36.157433, 34.643620, 46.003883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482853, 34.987358, 46.435402>,  <35.923561, 35.301304, 45.951385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482853, 34.987358, 46.435402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.782631, 34.722984, 46.419952>,  <35.962498, 34.564358, 46.410683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.782631, 34.722984, 46.419952>,  <35.482853, 34.987358, 46.435402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782631, 34.722984, 46.419952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163105, -0.240859, 0.956757,
		-0.641659, -0.710739, -0.288313,
		0.749447, -0.660937, -0.038624,
		36.007465, 34.524704, 46.408367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256191, 34.393177, 46.730545>,  <35.482853, 34.987358, 46.435402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256191, 34.393177, 46.730545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654850, 34.361069, 46.737000>,  <35.894043, 34.341805, 46.740871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654850, 34.361069, 46.737000>,  <35.256191, 34.393177, 46.730545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654850, 34.361069, 46.737000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033456, -0.219340, 0.975075,
		-0.074729, -0.972341, -0.221289,
		0.996643, -0.080270, 0.016139,
		35.953842, 34.336987, 46.741840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314697, 33.872749, 47.221058>,  <35.256191, 34.393177, 46.730545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314697, 33.872749, 47.221058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684483, 34.021294, 47.186523>,  <35.906353, 34.110420, 47.165802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684483, 34.021294, 47.186523>,  <35.314697, 33.872749, 47.221058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684483, 34.021294, 47.186523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167243, -0.191495, 0.967140,
		0.342625, -0.908527, -0.239138,
		0.924466, 0.371360, -0.086334,
		35.961823, 34.132702, 47.160622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775402, 33.391171, 47.412663>,  <35.314697, 33.872749, 47.221058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775402, 33.391171, 47.412663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930828, 33.752953, 47.483063>,  <36.024086, 33.970020, 47.525303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930828, 33.752953, 47.483063>,  <35.775402, 33.391171, 47.412663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930828, 33.752953, 47.483063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152783, -0.251614, 0.955692,
		0.908665, -0.344461, -0.235955,
		0.388568, 0.904454, 0.176005,
		36.047398, 34.024288, 47.535866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231674, 33.185032, 47.808125>,  <35.775402, 33.391171, 47.412663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231674, 33.185032, 47.808125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213963, 33.579037, 47.874802>,  <36.203335, 33.815441, 47.914806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213963, 33.579037, 47.874802>,  <36.231674, 33.185032, 47.808125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213963, 33.579037, 47.874802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285631, -0.147405, 0.946935,
		0.957316, 0.089540, -0.274824,
		-0.044278, 0.985015, 0.166689,
		36.200680, 33.874542, 47.924809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884769, 33.372997, 48.184460>,  <36.231674, 33.185032, 47.808125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884769, 33.372997, 48.184460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623554, 33.667652, 48.254768>,  <36.466824, 33.844444, 48.296955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623554, 33.667652, 48.254768>,  <36.884769, 33.372997, 48.184460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623554, 33.667652, 48.254768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344341, 0.082095, 0.935249,
		0.674512, 0.671282, -0.307267,
		-0.653041, 0.736641, 0.175776,
		36.427643, 33.888645, 48.307503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244530, 33.941498, 48.446117>,  <36.884769, 33.372997, 48.184460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244530, 33.941498, 48.446117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865032, 33.997833, 48.559288>,  <36.637333, 34.031635, 48.627190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865032, 33.997833, 48.559288>,  <37.244530, 33.941498, 48.446117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865032, 33.997833, 48.559288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294766, 0.071382, 0.952900,
		0.114006, 0.987456, -0.109237,
		-0.948744, 0.140836, 0.282930,
		36.580410, 34.040085, 48.644169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.933455, 34.075722, 46.725586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.318336, 34.037163, 46.827465>,  <30.549265, 34.014027, 46.888592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.318336, 34.037163, 46.827465>,  <29.933455, 34.075722, 46.725586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318336, 34.037163, 46.827465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263908, 0.099272, -0.959426,
		0.067197, 0.990380, 0.120959,
		0.962204, -0.096393, 0.254698,
		30.606998, 34.008244, 46.903873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234201, 34.624432, 46.399780>,  <29.933455, 34.075722, 46.725586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234201, 34.624432, 46.399780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541258, 34.381618, 46.481991>,  <30.725492, 34.235931, 46.531315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541258, 34.381618, 46.481991>,  <30.234201, 34.624432, 46.399780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541258, 34.381618, 46.481991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308116, 0.068371, -0.948889,
		0.561954, 0.791730, 0.239521,
		0.767640, -0.607032, 0.205524,
		30.771549, 34.199509, 46.543648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813143, 34.888832, 46.085979>,  <30.234201, 34.624432, 46.399780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813143, 34.888832, 46.085979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.963083, 34.524857, 46.156971>,  <31.053047, 34.306473, 46.199566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.963083, 34.524857, 46.156971>,  <30.813143, 34.888832, 46.085979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963083, 34.524857, 46.156971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482796, 0.028169, -0.875279,
		0.791451, 0.413787, 0.449874,
		0.374852, -0.909938, 0.177480,
		31.075539, 34.251877, 46.210217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601274, 34.841347, 45.784138>,  <30.813143, 34.888832, 46.085979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601274, 34.841347, 45.784138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445230, 34.473194, 45.794849>,  <31.351604, 34.252304, 45.801277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445230, 34.473194, 45.794849>,  <31.601274, 34.841347, 45.784138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445230, 34.473194, 45.794849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287309, -0.149310, -0.946129,
		0.874796, -0.361400, 0.322681,
		-0.390110, -0.920379, 0.026782,
		31.328197, 34.197079, 45.802883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121117, 34.291710, 45.719688>,  <31.601274, 34.841347, 45.784138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121117, 34.291710, 45.719688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.768866, 34.167671, 45.576393>,  <31.557514, 34.093246, 45.490417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.768866, 34.167671, 45.576393>,  <32.121117, 34.291710, 45.719688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768866, 34.167671, 45.576393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442211, -0.266433, -0.856424,
		0.170132, -0.912607, 0.371759,
		-0.880627, -0.310101, -0.358236,
		31.504677, 34.074642, 45.468922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349651, 33.697159, 45.205864>,  <32.121117, 34.291710, 45.719688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349651, 33.697159, 45.205864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956251, 33.728317, 45.140553>,  <31.720211, 33.747013, 45.101368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956251, 33.728317, 45.140553>,  <32.349651, 33.697159, 45.205864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956251, 33.728317, 45.140553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175634, 0.194892, -0.964971,
		-0.043345, -0.977727, -0.205357,
		-0.983501, 0.077895, -0.163275,
		31.661201, 33.751686, 45.091572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159683, 33.229664, 44.552124>,  <32.349651, 33.697159, 45.205864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159683, 33.229664, 44.552124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.873098, 33.503387, 44.606403>,  <31.701149, 33.667622, 44.638969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.873098, 33.503387, 44.606403>,  <32.159683, 33.229664, 44.552124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873098, 33.503387, 44.606403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011537, 0.206110, -0.978461,
		-0.697535, -0.699461, -0.155564,
		-0.716458, 0.684305, 0.135699,
		31.658161, 33.708679, 44.647114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549578, 33.065414, 44.175545>,  <32.159683, 33.229664, 44.552124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549578, 33.065414, 44.175545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577812, 33.461250, 44.225700>,  <31.594753, 33.698753, 44.255795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577812, 33.461250, 44.225700>,  <31.549578, 33.065414, 44.175545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577812, 33.461250, 44.225700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043330, 0.122542, -0.991517,
		-0.996564, 0.075423, -0.034229,
		0.070588, 0.989593, 0.125389,
		31.598989, 33.758129, 44.263317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500319, 33.328995, 43.498035>,  <31.549578, 33.065414, 44.175545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500319, 33.328995, 43.498035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554941, 33.690212, 43.660942>,  <31.587715, 33.906944, 43.758686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554941, 33.690212, 43.660942>,  <31.500319, 33.328995, 43.498035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554941, 33.690212, 43.660942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159464, 0.385715, -0.908733,
		-0.977714, 0.189036, -0.091332,
		0.136555, 0.903045, 0.407263,
		31.595907, 33.961124, 43.783119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243671, 33.744751, 43.028225>,  <31.500319, 33.328995, 43.498035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243671, 33.744751, 43.028225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483461, 33.998028, 43.224064>,  <31.627335, 34.149994, 43.341568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483461, 33.998028, 43.224064>,  <31.243671, 33.744751, 43.028225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483461, 33.998028, 43.224064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143090, 0.517054, -0.843908,
		-0.787499, 0.575958, 0.219358,
		0.599475, 0.633188, 0.489593,
		31.663303, 34.187984, 43.370941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045244, 34.480423, 42.911034>,  <31.243671, 33.744751, 43.028225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045244, 34.480423, 42.911034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432915, 34.497406, 43.008106>,  <31.665518, 34.507595, 43.066349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432915, 34.497406, 43.008106>,  <31.045244, 34.480423, 42.911034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432915, 34.497406, 43.008106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166220, 0.614361, -0.771318,
		-0.181841, 0.787881, 0.588367,
		0.969177, 0.042459, 0.242678,
		31.723667, 34.510143, 43.080910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221359, 35.196571, 42.775940>,  <31.045244, 34.480423, 42.911034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221359, 35.196571, 42.775940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.566483, 34.996384, 42.804478>,  <31.773556, 34.876270, 42.821602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.566483, 34.996384, 42.804478>,  <31.221359, 35.196571, 42.775940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566483, 34.996384, 42.804478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305138, 0.403053, -0.862809,
		0.403053, 0.766210, 0.500470,
		0.862809, -0.500470, 0.071349,
		31.825325, 34.846241, 42.825882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602604, 35.689289, 42.605766>,  <31.221359, 35.196571, 42.775940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602604, 35.689289, 42.605766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852093, 35.378979, 42.567520>,  <32.001785, 35.192791, 42.544571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852093, 35.378979, 42.567520>,  <31.602604, 35.689289, 42.605766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852093, 35.378979, 42.567520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303831, 0.353331, -0.884785,
		0.720179, 0.522809, 0.456085,
		0.623722, -0.775776, -0.095616,
		32.039211, 35.146248, 42.538834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323437, 35.844639, 42.494492>,  <31.602604, 35.689289, 42.605766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323437, 35.844639, 42.494492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298393, 35.483051, 42.325298>,  <32.283367, 35.266098, 42.223782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298393, 35.483051, 42.325298>,  <32.323437, 35.844639, 42.494492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298393, 35.483051, 42.325298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299574, 0.387254, -0.871946,
		0.952017, -0.181307, 0.246560,
		-0.062609, -0.903970, -0.422988,
		32.279610, 35.211861, 42.198402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062180, 35.987396, 42.685150>,  <32.323437, 35.844639, 42.494492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062180, 35.987396, 42.685150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257019, 36.329372, 42.756500>,  <33.373924, 36.534557, 42.799309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257019, 36.329372, 42.756500>,  <33.062180, 35.987396, 42.685150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257019, 36.329372, 42.756500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047873, -0.177793, 0.982903,
		0.872032, -0.487312, -0.045675,
		0.487101, 0.854936, 0.178371,
		33.403149, 36.585854, 42.810013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598743, 35.831947, 43.160030>,  <33.062180, 35.987396, 42.685150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598743, 35.831947, 43.160030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556168, 36.227875, 43.197815>,  <33.530624, 36.465431, 43.220486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556168, 36.227875, 43.197815>,  <33.598743, 35.831947, 43.160030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556168, 36.227875, 43.197815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205842, -0.071005, 0.976006,
		0.972780, 0.123326, -0.196189,
		-0.106437, 0.989823, 0.094458,
		33.524235, 36.524822, 43.226151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226349, 36.136829, 43.617363>,  <33.598743, 35.831947, 43.160030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226349, 36.136829, 43.617363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905739, 36.375908, 43.624352>,  <33.713371, 36.519356, 43.628544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905739, 36.375908, 43.624352>,  <34.226349, 36.136829, 43.617363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905739, 36.375908, 43.624352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147845, 0.169776, 0.974329,
		0.579390, 0.783537, -0.224447,
		-0.801529, 0.597700, 0.017476,
		33.665279, 36.555218, 43.629593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479694, 36.612602, 44.080734>,  <34.226349, 36.136829, 43.617363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479694, 36.612602, 44.080734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080238, 36.630493, 44.069958>,  <33.840565, 36.641228, 44.063492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080238, 36.630493, 44.069958>,  <34.479694, 36.612602, 44.080734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080238, 36.630493, 44.069958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018068, 0.188092, 0.981985,
		0.048992, 0.981133, -0.187027,
		-0.998636, 0.044730, -0.026942,
		33.780647, 36.643913, 44.061874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325024, 37.213318, 44.447063>,  <34.479694, 36.612602, 44.080734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325024, 37.213318, 44.447063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.960480, 37.050064, 44.468407>,  <33.741753, 36.952114, 44.481213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.960480, 37.050064, 44.468407>,  <34.325024, 37.213318, 44.447063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960480, 37.050064, 44.468407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054957, 0.249132, 0.966909,
		-0.407919, 0.878272, -0.249479,
		-0.911363, -0.408131, 0.053358,
		33.687073, 36.927624, 44.484413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911369, 37.733013, 44.673931>,  <34.325024, 37.213318, 44.447063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911369, 37.733013, 44.673931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744629, 37.379059, 44.757080>,  <33.644585, 37.166687, 44.806969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744629, 37.379059, 44.757080>,  <33.911369, 37.733013, 44.673931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744629, 37.379059, 44.757080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133944, 0.285986, 0.948826,
		-0.899053, 0.367675, -0.237739,
		-0.416849, -0.884888, 0.207869,
		33.619576, 37.113594, 44.819439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361179, 37.844723, 45.050327>,  <33.911369, 37.733013, 44.673931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361179, 37.844723, 45.050327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402576, 37.453098, 45.120438>,  <33.427414, 37.218124, 45.162506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402576, 37.453098, 45.120438>,  <33.361179, 37.844723, 45.050327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402576, 37.453098, 45.120438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218240, 0.149579, 0.964364,
		-0.970392, -0.138059, -0.198190,
		0.103494, -0.979064, 0.175280,
		33.433624, 37.159378, 45.173023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769516, 37.584152, 45.356899>,  <33.361179, 37.844723, 45.050327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769516, 37.584152, 45.356899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058010, 37.321415, 45.444881>,  <33.231106, 37.163773, 45.497669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058010, 37.321415, 45.444881>,  <32.769516, 37.584152, 45.356899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058010, 37.321415, 45.444881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280048, 0.013928, 0.959885,
		-0.633558, -0.753898, -0.173902,
		0.721233, -0.656844, 0.219952,
		33.274380, 37.124363, 45.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458687, 37.063118, 45.769218>,  <32.769516, 37.584152, 45.356899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458687, 37.063118, 45.769218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840569, 37.017376, 45.879093>,  <33.069698, 36.989929, 45.945019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840569, 37.017376, 45.879093>,  <32.458687, 37.063118, 45.769218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840569, 37.017376, 45.879093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281310, -0.046130, 0.958508,
		-0.096942, -0.992368, -0.076211,
		0.954708, -0.114359, 0.274691,
		33.126980, 36.983070, 45.961502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573738, 36.367077, 46.088474>,  <32.458687, 37.063118, 45.769218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573738, 36.367077, 46.088474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879879, 36.584248, 46.226727>,  <33.063564, 36.714550, 46.309677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879879, 36.584248, 46.226727>,  <32.573738, 36.367077, 46.088474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879879, 36.584248, 46.226727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161232, -0.358164, 0.919632,
		0.623083, -0.759574, -0.186587,
		0.765357, 0.542924, 0.345633,
		33.109486, 36.747124, 46.330418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919792, 35.876881, 46.540085>,  <32.573738, 36.367077, 46.088474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919792, 35.876881, 46.540085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055264, 36.239544, 46.640694>,  <33.136547, 36.457142, 46.701061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055264, 36.239544, 46.640694>,  <32.919792, 35.876881, 46.540085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055264, 36.239544, 46.640694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161131, -0.207486, 0.964876,
		0.927001, -0.367316, 0.075819,
		0.338683, 0.906658, 0.251526,
		33.156868, 36.511539, 46.716152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426964, 35.804417, 47.022533>,  <32.919792, 35.876881, 46.540085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426964, 35.804417, 47.022533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302422, 36.179756, 47.082615>,  <33.227695, 36.404961, 47.118664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302422, 36.179756, 47.082615>,  <33.426964, 35.804417, 47.022533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302422, 36.179756, 47.082615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234066, -0.228913, 0.944887,
		0.921017, 0.259036, 0.290908,
		-0.311352, 0.938349, 0.150202,
		33.209015, 36.461262, 47.127674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684361, 35.936939, 47.623440>,  <33.426964, 35.804417, 47.022533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684361, 35.936939, 47.623440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427631, 36.240181, 47.577221>,  <33.273594, 36.422127, 47.549488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427631, 36.240181, 47.577221>,  <33.684361, 35.936939, 47.623440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427631, 36.240181, 47.577221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278057, -0.089639, 0.956373,
		0.714669, 0.645948, 0.268327,
		-0.641820, 0.758100, -0.115548,
		33.235085, 36.467609, 47.542557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848583, 36.394695, 48.215572>,  <33.684361, 35.936939, 47.623440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848583, 36.394695, 48.215572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481888, 36.468182, 48.073673>,  <33.261871, 36.512272, 47.988533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481888, 36.468182, 48.073673>,  <33.848583, 36.394695, 48.215572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481888, 36.468182, 48.073673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388132, -0.199321, 0.899792,
		0.094598, 0.962559, 0.254031,
		-0.916736, 0.183716, -0.354744,
		33.206867, 36.523296, 47.967251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268532, 36.976227, 48.290199>,  <33.848583, 36.394695, 48.215572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268532, 36.976227, 48.290199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561245, 37.088181, 48.538765>,  <34.736874, 37.155354, 48.687904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561245, 37.088181, 48.538765>,  <34.268532, 36.976227, 48.290199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561245, 37.088181, 48.538765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578995, 0.225670, -0.783478,
		-0.359517, 0.933134, 0.003091,
		0.731787, 0.279884, 0.621412,
		34.780781, 37.172146, 48.725189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291874, 37.768856, 48.255676>,  <34.268532, 36.976227, 48.290199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291874, 37.768856, 48.255676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630527, 37.585503, 48.363819>,  <34.833721, 37.475491, 48.428703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630527, 37.585503, 48.363819>,  <34.291874, 37.768856, 48.255676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630527, 37.585503, 48.363819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453997, 0.357052, -0.816334,
		0.277665, 0.813877, 0.510399,
		0.846634, -0.458387, 0.270356,
		34.884518, 37.447987, 48.444927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825222, 38.300697, 48.123520>,  <34.291874, 37.768856, 48.255676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825222, 38.300697, 48.123520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.021454, 37.953373, 48.152824>,  <35.139194, 37.744980, 48.170406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.021454, 37.953373, 48.152824>,  <34.825222, 38.300697, 48.123520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021454, 37.953373, 48.152824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494453, 0.208161, -0.843911,
		0.717526, 0.450231, 0.531458,
		0.490584, -0.868309, 0.073257,
		35.168629, 37.692879, 48.174801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533001, 38.478256, 48.105812>,  <34.825222, 38.300697, 48.123520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533001, 38.478256, 48.105812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518871, 38.090561, 48.008385>,  <35.510395, 37.857944, 47.949928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518871, 38.090561, 48.008385>,  <35.533001, 38.478256, 48.105812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518871, 38.090561, 48.008385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414499, 0.207558, -0.886064,
		0.909364, -0.132255, 0.394419,
		-0.035322, -0.969241, -0.243565,
		35.508274, 37.799789, 47.935314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189888, 38.330494, 47.942974>,  <35.533001, 38.478256, 48.105812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189888, 38.330494, 47.942974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979767, 38.038433, 47.768188>,  <35.853695, 37.863197, 47.663319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979767, 38.038433, 47.768188>,  <36.189888, 38.330494, 47.942974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979767, 38.038433, 47.768188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539973, 0.110842, -0.834352,
		0.657635, -0.674238, 0.336035,
		-0.525305, -0.730149, -0.436964,
		35.822174, 37.819389, 47.637100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584351, 37.802303, 47.542904>,  <36.189888, 38.330494, 47.942974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584351, 37.802303, 47.542904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241669, 37.688129, 47.371052>,  <36.036060, 37.619625, 47.267941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241669, 37.688129, 47.371052>,  <36.584351, 37.802303, 47.542904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241669, 37.688129, 47.371052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479474, -0.133601, -0.867326,
		0.190165, -0.949040, 0.251315,
		-0.856704, -0.285434, -0.429634,
		35.984657, 37.602501, 47.242161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809967, 37.466396, 46.859787>,  <36.584351, 37.802303, 47.542904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809967, 37.466396, 46.859787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412289, 37.499996, 46.832909>,  <36.173679, 37.520157, 46.816784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412289, 37.499996, 46.832909>,  <36.809967, 37.466396, 46.859787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412289, 37.499996, 46.832909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073480, 0.074135, -0.994537,
		-0.078558, -0.993704, -0.079877,
		-0.994198, 0.083998, -0.067194,
		36.114029, 37.525196, 46.812752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494095, 36.933285, 46.354584>,  <36.809967, 37.466396, 46.859787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494095, 36.933285, 46.354584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247368, 37.246346, 46.388023>,  <36.099331, 37.434181, 46.408085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247368, 37.246346, 46.388023>,  <36.494095, 36.933285, 46.354584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247368, 37.246346, 46.388023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068672, 0.159311, -0.984837,
		-0.784104, -0.601725, -0.152012,
		-0.616818, 0.782654, 0.083595,
		36.062321, 37.481140, 46.413101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924896, 36.828453, 45.857040>,  <36.494095, 36.933285, 46.354584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924896, 36.828453, 45.857040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940285, 37.227001, 45.887409>,  <35.949520, 37.466129, 45.905628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940285, 37.227001, 45.887409>,  <35.924896, 36.828453, 45.857040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940285, 37.227001, 45.887409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003874, 0.076122, -0.997091,
		-0.999252, 0.038069, 0.006789,
		0.038475, 0.996372, 0.075918,
		35.951828, 37.525913, 45.910183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491467, 37.091923, 45.362358>,  <35.924896, 36.828453, 45.857040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491467, 37.091923, 45.362358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731453, 37.402714, 45.438629>,  <35.875443, 37.589188, 45.484390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731453, 37.402714, 45.438629>,  <35.491467, 37.091923, 45.362358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731453, 37.402714, 45.438629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001646, 0.237134, -0.971476,
		-0.800027, 0.583162, 0.140993,
		0.599962, 0.776974, 0.190673,
		35.911442, 37.635807, 45.495831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189854, 37.653091, 45.046307>,  <35.491467, 37.091923, 45.362358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189854, 37.653091, 45.046307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.566051, 37.769650, 45.116238>,  <35.791771, 37.839584, 45.158195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.566051, 37.769650, 45.116238>,  <35.189854, 37.653091, 45.046307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566051, 37.769650, 45.116238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030585, 0.439790, -0.897580,
		-0.338438, 0.849513, 0.404707,
		0.940491, 0.291397, 0.174824,
		35.848198, 37.857067, 45.168686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286404, 38.392990, 44.852833>,  <35.189854, 37.653091, 45.046307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286404, 38.392990, 44.852833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650219, 38.227547, 44.836494>,  <35.868507, 38.128281, 44.826691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650219, 38.227547, 44.836494>,  <35.286404, 38.392990, 44.852833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650219, 38.227547, 44.836494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156759, 0.432410, -0.887946,
		0.384920, 0.801220, 0.458131,
		0.909540, -0.413604, -0.040845,
		35.923080, 38.103466, 44.824242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639034, 38.871651, 44.381042>,  <35.286404, 38.392990, 44.852833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639034, 38.871651, 44.381042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869591, 38.544926, 44.390705>,  <36.007923, 38.348888, 44.396503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869591, 38.544926, 44.390705>,  <35.639034, 38.871651, 44.381042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869591, 38.544926, 44.390705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314958, 0.194775, -0.928905,
		0.754039, 0.543022, 0.369529,
		0.576391, -0.816817, 0.024161,
		36.042507, 38.299881, 44.397953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314308, 39.097271, 44.017029>,  <35.639034, 38.871651, 44.381042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314308, 39.097271, 44.017029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294361, 38.697945, 44.028896>,  <36.282394, 38.458347, 44.036015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294361, 38.697945, 44.028896>,  <36.314308, 39.097271, 44.017029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294361, 38.697945, 44.028896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543952, -0.052059, -0.837500,
		0.837633, -0.025627, 0.545631,
		-0.049867, -0.998315, 0.029667,
		36.279400, 38.398449, 44.037796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.571022, 31.909100, 29.927467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379053, 31.558809, 29.948565>,  <31.263872, 31.348635, 29.961224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379053, 31.558809, 29.948565>,  <31.571022, 31.909100, 29.927467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379053, 31.558809, 29.948565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760202, 0.445116, 0.473250,
		-0.437913, 0.187028, -0.879348,
		-0.479923, -0.875724, 0.052743,
		31.235077, 31.296093, 29.964388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881693, 32.155895, 29.678326>,  <31.571022, 31.909100, 29.927467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881693, 32.155895, 29.678326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874756, 31.802515, 29.865604>,  <30.870594, 31.590487, 29.977972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874756, 31.802515, 29.865604>,  <30.881693, 32.155895, 29.678326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874756, 31.802515, 29.865604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780845, 0.304436, 0.545526,
		-0.624484, -0.356126, -0.695122,
		-0.017344, -0.883455, 0.468195,
		30.869553, 31.537479, 30.006063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165876, 32.045509, 29.723310>,  <30.881693, 32.155895, 29.678326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165876, 32.045509, 29.723310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297606, 31.795477, 30.006384>,  <30.376642, 31.645456, 30.176228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297606, 31.795477, 30.006384>,  <30.165876, 32.045509, 29.723310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297606, 31.795477, 30.006384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873191, 0.083574, 0.480160,
		-0.359284, -0.776071, -0.518294,
		0.329323, -0.625083, 0.707685,
		30.396402, 31.607952, 30.218689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690487, 31.442255, 29.818247>,  <30.165876, 32.045509, 29.723310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690487, 31.442255, 29.818247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879114, 31.485233, 30.168350>,  <29.992290, 31.511021, 30.378412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879114, 31.485233, 30.168350>,  <29.690487, 31.442255, 29.818247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879114, 31.485233, 30.168350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840287, 0.355807, 0.409047,
		-0.267472, -0.928362, 0.258073,
		0.471568, 0.107447, 0.875259,
		30.020584, 31.517467, 30.430927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137550, 31.310337, 30.324923>,  <29.690487, 31.442255, 29.818247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137550, 31.310337, 30.324923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440693, 31.464027, 30.535835>,  <29.622578, 31.556242, 30.662382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440693, 31.464027, 30.535835>,  <29.137550, 31.310337, 30.324923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440693, 31.464027, 30.535835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652415, 0.443129, 0.614810,
		0.002572, -0.809943, 0.586503,
		0.757857, 0.384225, 0.527280,
		29.668051, 31.579294, 30.694019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068954, 30.978294, 30.934313>,  <29.137550, 31.310337, 30.324923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068954, 30.978294, 30.934313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261438, 31.328188, 30.957203>,  <29.376928, 31.538124, 30.970938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261438, 31.328188, 30.957203>,  <29.068954, 30.978294, 30.934313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261438, 31.328188, 30.957203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691024, 0.338357, 0.638749,
		0.539374, -0.346917, 0.767284,
		0.481209, 0.874736, 0.057227,
		29.405802, 31.590609, 30.974371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045383, 31.125841, 31.615721>,  <29.068954, 30.978294, 30.934313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045383, 31.125841, 31.615721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161747, 31.481010, 31.473192>,  <29.231565, 31.694113, 31.387674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161747, 31.481010, 31.473192>,  <29.045383, 31.125841, 31.615721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161747, 31.481010, 31.473192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555916, 0.459981, 0.692369,
		0.778672, -0.003330, 0.627423,
		0.290908, 0.887923, -0.356323,
		29.249020, 31.747387, 31.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122391, 31.606201, 32.242355>,  <29.045383, 31.125841, 31.615721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122391, 31.606201, 32.242355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105623, 31.848761, 31.924734>,  <29.095562, 31.994297, 31.734161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105623, 31.848761, 31.924734>,  <29.122391, 31.606201, 32.242355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105623, 31.848761, 31.924734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583186, 0.630466, 0.512257,
		0.811256, 0.484556, 0.327214,
		-0.041920, 0.606398, -0.794056,
		29.093048, 32.030682, 31.686518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225729, 32.343544, 32.481186>,  <29.122391, 31.606201, 32.242355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225729, 32.343544, 32.481186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063446, 32.385395, 32.117989>,  <28.966076, 32.410503, 31.900070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063446, 32.385395, 32.117989>,  <29.225729, 32.343544, 32.481186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063446, 32.385395, 32.117989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628560, 0.689286, 0.360274,
		0.663561, 0.716895, -0.213885,
		-0.405707, 0.104624, -0.907996,
		28.941734, 32.416782, 31.845591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185324, 33.109383, 32.264961>,  <29.225729, 32.343544, 32.481186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185324, 33.109383, 32.264961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884985, 32.938217, 32.063721>,  <28.704781, 32.835518, 31.942976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884985, 32.938217, 32.063721>,  <29.185324, 33.109383, 32.264961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884985, 32.938217, 32.063721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610654, 0.740007, 0.281941,
		0.251653, 0.518918, -0.816942,
		-0.750848, -0.427917, -0.503105,
		28.659731, 32.809841, 31.912788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893267, 33.618843, 31.952795>,  <29.185324, 33.109383, 32.264961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893267, 33.618843, 31.952795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615868, 33.330730, 31.959154>,  <28.449429, 33.157864, 31.962969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615868, 33.330730, 31.959154>,  <28.893267, 33.618843, 31.952795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615868, 33.330730, 31.959154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684885, 0.665940, 0.295732,
		-0.223599, 0.194200, -0.955139,
		-0.693496, -0.720285, 0.015899,
		28.407818, 33.114643, 31.963924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434372, 33.896751, 31.591234>,  <28.893267, 33.618843, 31.952795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434372, 33.896751, 31.591234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238142, 33.618702, 31.801430>,  <28.120403, 33.451874, 31.927547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238142, 33.618702, 31.801430>,  <28.434372, 33.896751, 31.591234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238142, 33.618702, 31.801430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658887, 0.690546, 0.298353,
		-0.570267, -0.199874, -0.796772,
		-0.490575, -0.695124, 0.525490,
		28.090969, 33.410164, 31.959076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795446, 34.096771, 31.614450>,  <28.434372, 33.896751, 31.591234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795446, 34.096771, 31.614450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762405, 33.814438, 31.895868>,  <27.742580, 33.645039, 32.064720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762405, 33.814438, 31.895868>,  <27.795446, 34.096771, 31.614450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762405, 33.814438, 31.895868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705810, 0.539827, 0.458715,
		-0.703569, -0.458679, -0.542775,
		-0.082602, -0.705833, 0.703545,
		27.737625, 33.602688, 32.106934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052845, 33.975349, 31.718395>,  <27.795446, 34.096771, 31.614450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052845, 33.975349, 31.718395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241573, 33.867748, 32.054256>,  <27.354811, 33.803188, 32.255772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241573, 33.867748, 32.054256>,  <27.052845, 33.975349, 31.718395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241573, 33.867748, 32.054256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702343, 0.461032, 0.542369,
		-0.533008, -0.845627, 0.028590,
		0.471822, -0.269007, 0.839654,
		27.383120, 33.787045, 32.306152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498062, 33.895760, 32.167625>,  <27.052845, 33.975349, 31.718395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498062, 33.895760, 32.167625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807695, 33.926315, 32.419006>,  <26.993477, 33.944649, 32.569836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807695, 33.926315, 32.419006>,  <26.498062, 33.895760, 32.167625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807695, 33.926315, 32.419006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605855, 0.377369, 0.700380,
		-0.183661, -0.922907, 0.338395,
		0.774085, 0.076386, 0.628456,
		27.039921, 33.949230, 32.607544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198320, 33.928917, 32.831745>,  <26.498062, 33.895760, 32.167625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198320, 33.928917, 32.831745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579657, 34.035347, 32.888809>,  <26.808458, 34.099205, 32.923046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579657, 34.035347, 32.888809>,  <26.198320, 33.928917, 32.831745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579657, 34.035347, 32.888809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264553, 0.508590, 0.819358,
		0.145455, -0.818866, 0.555248,
		0.953338, 0.266073, 0.142657,
		26.865658, 34.115170, 32.931606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377405, 33.659481, 33.477432>,  <26.198320, 33.928917, 32.831745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377405, 33.659481, 33.477432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614578, 33.969440, 33.389832>,  <26.756882, 34.155415, 33.337273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614578, 33.969440, 33.389832>,  <26.377405, 33.659481, 33.477432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614578, 33.969440, 33.389832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186072, 0.396449, 0.899003,
		0.783458, -0.492300, 0.379254,
		0.592934, 0.774900, -0.218998,
		26.792459, 34.201912, 33.324131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894720, 33.750027, 34.010525>,  <26.377405, 33.659481, 33.477432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894720, 33.750027, 34.010525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910305, 34.116329, 33.850590>,  <26.919657, 34.336109, 33.754627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910305, 34.116329, 33.850590>,  <26.894720, 33.750027, 34.010525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910305, 34.116329, 33.850590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008670, 0.399817, 0.916554,
		0.999203, -0.039178, 0.007639,
		0.038963, 0.915757, -0.399838,
		26.921993, 34.391056, 33.730637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446571, 34.091862, 34.283485>,  <26.894720, 33.750027, 34.010525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446571, 34.091862, 34.283485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212431, 34.389389, 34.154430>,  <27.071947, 34.567905, 34.077000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212431, 34.389389, 34.154430>,  <27.446571, 34.091862, 34.283485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212431, 34.389389, 34.154430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241615, 0.539883, 0.806318,
		0.773940, 0.394027, -0.495740,
		-0.585353, 0.743820, -0.322635,
		27.036825, 34.612534, 34.057640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852915, 34.660187, 34.517670>,  <27.446571, 34.091862, 34.283485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852915, 34.660187, 34.517670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478100, 34.774998, 34.438095>,  <27.253210, 34.843884, 34.390350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478100, 34.774998, 34.438095>,  <27.852915, 34.660187, 34.517670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478100, 34.774998, 34.438095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023006, 0.619148, 0.784938,
		0.348470, 0.730939, -0.586768,
		-0.937037, 0.287027, -0.198939,
		27.196989, 34.861107, 34.378414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626415, 35.090813, 34.347328>,  <27.852915, 34.660187, 34.517670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626415, 35.090813, 34.347328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.003275, 35.146511, 34.225368>,  <29.229391, 35.179928, 34.152195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.003275, 35.146511, 34.225368>,  <28.626415, 35.090813, 34.347328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003275, 35.146511, 34.225368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327349, 0.186658, -0.926284,
		-0.072067, 0.972507, 0.221441,
		0.942151, 0.139243, -0.304897,
		29.285921, 35.188286, 34.133900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572910, 35.620720, 33.821030>,  <28.626415, 35.090813, 34.347328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572910, 35.620720, 33.821030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944777, 35.479202, 33.779945>,  <29.167896, 35.394291, 33.755295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944777, 35.479202, 33.779945>,  <28.572910, 35.620720, 33.821030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944777, 35.479202, 33.779945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080193, 0.077767, -0.993741,
		0.359568, 0.932085, 0.043925,
		0.929667, -0.353795, -0.102709,
		29.223677, 35.373062, 33.749134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900949, 36.078693, 33.280422>,  <28.572910, 35.620720, 33.821030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900949, 36.078693, 33.280422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124985, 35.747322, 33.279121>,  <29.259407, 35.548500, 33.278339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124985, 35.747322, 33.279121>,  <28.900949, 36.078693, 33.280422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124985, 35.747322, 33.279121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058204, 0.043271, -0.997367,
		0.826385, 0.558425, 0.072454,
		0.560089, -0.828426, -0.003256,
		29.293011, 35.498795, 33.278145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527565, 36.128220, 32.780857>,  <28.900949, 36.078693, 33.280422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527565, 36.128220, 32.780857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.521629, 35.729298, 32.809593>,  <29.518068, 35.489944, 32.826836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.521629, 35.729298, 32.809593>,  <29.527565, 36.128220, 32.780857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521629, 35.729298, 32.809593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053766, -0.072539, -0.995915,
		0.998443, -0.010915, 0.054698,
		-0.014839, -0.997306, 0.071840,
		29.517178, 35.430107, 32.831146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117725, 35.877346, 32.404900>,  <29.527565, 36.128220, 32.780857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117725, 35.877346, 32.404900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830458, 35.599861, 32.426777>,  <29.658096, 35.433369, 32.439903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830458, 35.599861, 32.426777>,  <30.117725, 35.877346, 32.404900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830458, 35.599861, 32.426777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062307, -0.142380, -0.987849,
		0.693072, -0.706036, 0.145476,
		-0.718170, -0.693715, 0.054689,
		29.615007, 35.391747, 32.443184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339804, 35.409775, 31.877100>,  <30.117725, 35.877346, 32.404900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339804, 35.409775, 31.877100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.973791, 35.273518, 31.963520>,  <29.754183, 35.191765, 32.015373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.973791, 35.273518, 31.963520>,  <30.339804, 35.409775, 31.877100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973791, 35.273518, 31.963520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045022, -0.446016, -0.893892,
		0.400859, -0.827668, 0.392783,
		-0.915033, -0.340640, 0.216052,
		29.699282, 35.171326, 32.028336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361330, 34.746731, 31.580462>,  <30.339804, 35.409775, 31.877100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361330, 34.746731, 31.580462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.970467, 34.830757, 31.593304>,  <29.735949, 34.881172, 31.601009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.970467, 34.830757, 31.593304>,  <30.361330, 34.746731, 31.580462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970467, 34.830757, 31.593304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109751, -0.369490, -0.922731,
		-0.181972, -0.905179, 0.384106,
		-0.977160, 0.210067, 0.032107,
		29.677319, 34.893776, 31.602936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937271, 34.173470, 31.238262>,  <30.361330, 34.746731, 31.580462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937271, 34.173470, 31.238262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689138, 34.486561, 31.258390>,  <29.540258, 34.674416, 31.270468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689138, 34.486561, 31.258390>,  <29.937271, 34.173470, 31.238262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689138, 34.486561, 31.258390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364065, -0.230520, -0.902395,
		-0.694726, -0.578104, 0.427961,
		-0.620332, 0.782724, 0.050319,
		29.503038, 34.721378, 31.273487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306284, 33.927753, 31.087509>,  <29.937271, 34.173470, 31.238262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306284, 33.927753, 31.087509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262342, 34.317616, 31.009552>,  <29.235977, 34.551533, 30.962778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262342, 34.317616, 31.009552>,  <29.306284, 33.927753, 31.087509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262342, 34.317616, 31.009552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374658, -0.222221, -0.900138,
		-0.920632, -0.025864, 0.389574,
		-0.109853, 0.974653, -0.194894,
		29.229387, 34.610012, 30.951084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622711, 33.854671, 30.762241>,  <29.306284, 33.927753, 31.087509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622711, 33.854671, 30.762241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825085, 34.187199, 30.670198>,  <28.946508, 34.386715, 30.614973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825085, 34.187199, 30.670198>,  <28.622711, 33.854671, 30.762241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825085, 34.187199, 30.670198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224115, -0.130920, -0.965729,
		-0.832950, 0.540164, 0.120073,
		0.505932, 0.831314, -0.230108,
		28.976864, 34.436592, 30.601166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194645, 34.341000, 30.392065>,  <28.622711, 33.854671, 30.762241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194645, 34.341000, 30.392065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.578566, 34.411713, 30.304861>,  <28.808918, 34.454140, 30.252539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.578566, 34.411713, 30.304861>,  <28.194645, 34.341000, 30.392065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578566, 34.411713, 30.304861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207298, -0.077180, -0.975229,
		-0.189227, 0.981220, -0.037431,
		0.959802, 0.176780, -0.218010,
		28.866507, 34.464748, 30.239458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077236, 34.647579, 29.813068>,  <28.194645, 34.341000, 30.392065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077236, 34.647579, 29.813068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467287, 34.565987, 29.847755>,  <28.701317, 34.517029, 29.868567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467287, 34.565987, 29.847755>,  <28.077236, 34.647579, 29.813068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467287, 34.565987, 29.847755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047894, -0.188075, -0.980986,
		0.216416, 0.960738, -0.173627,
		0.975126, -0.203985, 0.086717,
		28.759825, 34.504791, 29.873770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379719, 35.028179, 29.300074>,  <28.077236, 34.647579, 29.813068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379719, 35.028179, 29.300074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661839, 34.757778, 29.385464>,  <28.831110, 34.595539, 29.436697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661839, 34.757778, 29.385464>,  <28.379719, 35.028179, 29.300074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661839, 34.757778, 29.385464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097967, -0.205296, -0.973784,
		0.702107, 0.707724, -0.078569,
		0.705300, -0.676003, 0.213473,
		28.873428, 34.554977, 29.449505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173737, 35.172352, 29.087635>,  <28.379719, 35.028179, 29.300074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173737, 35.172352, 29.087635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123348, 34.775940, 29.069775>,  <29.093115, 34.538094, 29.059059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123348, 34.775940, 29.069775>,  <29.173737, 35.172352, 29.087635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123348, 34.775940, 29.069775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254241, 0.011255, -0.967075,
		0.958902, -0.133173, 0.250543,
		-0.125969, -0.991029, -0.044650,
		29.085558, 34.478630, 29.056379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628487, 35.048431, 28.581486>,  <29.173737, 35.172352, 29.087635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628487, 35.048431, 28.581486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477417, 34.681499, 28.631887>,  <29.386776, 34.461342, 28.662128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477417, 34.681499, 28.631887>,  <29.628487, 35.048431, 28.581486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477417, 34.681499, 28.631887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176142, -0.204773, -0.962830,
		0.909031, -0.341440, 0.238916,
		-0.377672, -0.917326, 0.126003,
		29.364115, 34.406303, 28.669689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065063, 34.581860, 28.141729>,  <29.628487, 35.048431, 28.581486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065063, 34.581860, 28.141729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741522, 34.358986, 28.216887>,  <29.547398, 34.225262, 28.261980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741522, 34.358986, 28.216887>,  <30.065063, 34.581860, 28.141729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741522, 34.358986, 28.216887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098055, -0.442874, -0.891206,
		0.579778, -0.702430, 0.412854,
		-0.808852, -0.557184, 0.187892,
		29.498867, 34.191830, 28.273254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139603, 33.812626, 28.074059>,  <30.065063, 34.581860, 28.141729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139603, 33.812626, 28.074059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741920, 33.847019, 28.048265>,  <29.503311, 33.867657, 28.032789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741920, 33.847019, 28.048265>,  <30.139603, 33.812626, 28.074059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741920, 33.847019, 28.048265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000450, -0.603281, -0.797528,
		-0.107475, -0.792880, 0.599825,
		-0.994208, 0.085985, -0.064481,
		29.443659, 33.872814, 28.028921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072144, 33.295429, 27.698208>,  <30.139603, 33.812626, 28.074059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072144, 33.295429, 27.698208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721466, 33.483322, 27.656708>,  <29.511061, 33.596058, 27.631807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721466, 33.483322, 27.656708>,  <30.072144, 33.295429, 27.698208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721466, 33.483322, 27.656708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092271, -0.375867, -0.922068,
		-0.472121, -0.798796, 0.372862,
		-0.876691, 0.469732, -0.103749,
		29.458458, 33.624241, 27.625584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509064, 32.781578, 27.547882>,  <30.072144, 33.295429, 27.698208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509064, 32.781578, 27.547882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459364, 33.148167, 27.395760>,  <29.429544, 33.368122, 27.304485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459364, 33.148167, 27.395760>,  <29.509064, 32.781578, 27.547882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459364, 33.148167, 27.395760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262505, -0.399983, -0.878126,
		-0.956898, -0.009276, 0.290278,
		-0.124251, 0.916476, -0.380308,
		29.422089, 33.423111, 27.281668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911016, 32.654369, 27.114710>,  <29.509064, 32.781578, 27.547882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911016, 32.654369, 27.114710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.091496, 32.991180, 26.996454>,  <29.199783, 33.193268, 26.925501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.091496, 32.991180, 26.996454>,  <28.911016, 32.654369, 27.114710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091496, 32.991180, 26.996454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221027, -0.215519, -0.951156,
		-0.864620, 0.494505, 0.088870,
		0.451198, 0.842031, -0.295641,
		29.226854, 33.243790, 26.907763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472652, 32.932842, 26.616598>,  <28.911016, 32.654369, 27.114710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472652, 32.932842, 26.616598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827026, 33.109161, 26.558882>,  <29.039650, 33.214951, 26.524252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827026, 33.109161, 26.558882>,  <28.472652, 32.932842, 26.616598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827026, 33.109161, 26.558882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034597, -0.247430, -0.968288,
		-0.462518, 0.862832, -0.203957,
		0.885935, 0.440794, -0.144293,
		29.092806, 33.241398, 26.515594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341894, 33.368103, 26.036459>,  <28.472652, 32.932842, 26.616598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341894, 33.368103, 26.036459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737034, 33.307835, 26.051701>,  <28.974117, 33.271671, 26.060846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737034, 33.307835, 26.051701>,  <28.341894, 33.368103, 26.036459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737034, 33.307835, 26.051701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000007, -0.245132, -0.969490,
		0.155419, 0.957709, -0.242152,
		0.987849, -0.150676, 0.038105,
		29.033388, 33.262630, 26.063131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.200775, 34.565041, 49.122818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.847950, 34.377853, 49.144623>,  <36.636253, 34.265541, 49.157707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.847950, 34.377853, 49.144623>,  <37.200775, 34.565041, 49.122818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847950, 34.377853, 49.144623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029788, 0.060081, 0.997749,
		-0.470189, 0.881701, -0.039056,
		-0.882063, -0.467967, 0.054513,
		36.583332, 34.237465, 49.160976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899086, 34.919243, 49.645531>,  <37.200775, 34.565041, 49.122818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899086, 34.919243, 49.645531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701965, 34.574871, 49.595016>,  <36.583694, 34.368248, 49.564709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701965, 34.574871, 49.595016>,  <36.899086, 34.919243, 49.645531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701965, 34.574871, 49.595016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030702, -0.162248, 0.986272,
		-0.869600, 0.482159, 0.106388,
		-0.492801, -0.860929, -0.126288,
		36.554127, 34.316593, 49.557129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227356, 34.936882, 49.961063>,  <36.899086, 34.919243, 49.645531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227356, 34.936882, 49.961063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319202, 34.549114, 49.926392>,  <36.374310, 34.316456, 49.905590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319202, 34.549114, 49.926392>,  <36.227356, 34.936882, 49.961063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319202, 34.549114, 49.926392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136760, -0.120311, 0.983271,
		-0.963626, -0.213916, -0.160202,
		0.229611, -0.969415, -0.086680,
		36.388084, 34.258289, 49.900387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760818, 34.636795, 50.286621>,  <36.227356, 34.936882, 49.961063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760818, 34.636795, 50.286621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046104, 34.356937, 50.269558>,  <36.217278, 34.189022, 50.259319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046104, 34.356937, 50.269558>,  <35.760818, 34.636795, 50.286621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046104, 34.356937, 50.269558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085154, -0.146894, 0.985480,
		-0.695755, -0.699225, -0.164345,
		0.713214, -0.699647, -0.042661,
		36.260067, 34.147045, 50.256760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488266, 33.993156, 50.596218>,  <35.760818, 34.636795, 50.286621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488266, 33.993156, 50.596218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887558, 33.977409, 50.614037>,  <36.127132, 33.967960, 50.624725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887558, 33.977409, 50.614037>,  <35.488266, 33.993156, 50.596218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887558, 33.977409, 50.614037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052259, -0.223918, 0.973206,
		-0.028342, -0.973813, -0.225580,
		0.998231, -0.039371, 0.044544,
		36.187027, 33.965599, 50.627399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647018, 33.399227, 50.959869>,  <35.488266, 33.993156, 50.596218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647018, 33.399227, 50.959869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983116, 33.615891, 50.969570>,  <36.184776, 33.745888, 50.975391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983116, 33.615891, 50.969570>,  <35.647018, 33.399227, 50.959869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983116, 33.615891, 50.969570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065767, -0.146207, 0.987065,
		0.538201, -0.827784, -0.158474,
		0.840247, 0.541662, 0.024248,
		36.235191, 33.778389, 50.976845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111015, 32.999790, 51.292892>,  <35.647018, 33.399227, 50.959869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111015, 32.999790, 51.292892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229774, 33.380829, 51.319462>,  <36.301029, 33.609451, 51.335403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229774, 33.380829, 51.319462>,  <36.111015, 32.999790, 51.292892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229774, 33.380829, 51.319462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162420, -0.018171, 0.986554,
		0.940996, -0.303691, 0.149326,
		0.296895, 0.952597, 0.066424,
		36.318844, 33.666607, 51.339390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533272, 32.985458, 51.848625>,  <36.111015, 32.999790, 51.292892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533272, 32.985458, 51.848625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510582, 33.382229, 51.803246>,  <36.496967, 33.620289, 51.776020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510582, 33.382229, 51.803246>,  <36.533272, 32.985458, 51.848625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510582, 33.382229, 51.803246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189739, 0.100848, 0.976642,
		0.980195, 0.076922, 0.182486,
		-0.056722, 0.991924, -0.113446,
		36.493565, 33.679806, 51.769211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887932, 33.275879, 52.438259>,  <36.533272, 32.985458, 51.848625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887932, 33.275879, 52.438259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662502, 33.585770, 52.323589>,  <36.527245, 33.771706, 52.254787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662502, 33.585770, 52.323589>,  <36.887932, 33.275879, 52.438259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662502, 33.585770, 52.323589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147460, 0.247106, 0.957702,
		0.812795, 0.582012, -0.025022,
		-0.563578, 0.774726, -0.286671,
		36.493427, 33.818188, 52.237587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118259, 33.761837, 52.875160>,  <36.887932, 33.275879, 52.438259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118259, 33.761837, 52.875160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759132, 33.881451, 52.745853>,  <36.543655, 33.953220, 52.668270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759132, 33.881451, 52.745853>,  <37.118259, 33.761837, 52.875160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759132, 33.881451, 52.745853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270248, 0.205457, 0.940613,
		0.347694, 0.931861, -0.103650,
		-0.897817, 0.299034, -0.323270,
		36.489788, 33.971161, 52.648872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872868, 34.223240, 53.381542>,  <37.118259, 33.761837, 52.875160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872868, 34.223240, 53.381542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541985, 34.149498, 53.169224>,  <36.343456, 34.105255, 53.041832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541985, 34.149498, 53.169224>,  <36.872868, 34.223240, 53.381542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541985, 34.149498, 53.169224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557768, 0.155095, 0.815378,
		-0.067992, 0.970546, -0.231120,
		-0.827208, -0.184351, -0.530794,
		36.293823, 34.094193, 53.009987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387978, 34.651665, 53.714455>,  <36.872868, 34.223240, 53.381542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387978, 34.651665, 53.714455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149925, 34.387878, 53.530746>,  <36.007095, 34.229607, 53.420521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149925, 34.387878, 53.530746>,  <36.387978, 34.651665, 53.714455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149925, 34.387878, 53.530746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634043, 0.034162, 0.772543,
		-0.493776, 0.750958, -0.438460,
		-0.595126, -0.659465, -0.459271,
		35.971386, 34.190041, 53.392963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695297, 34.817982, 53.955822>,  <36.387978, 34.651665, 53.714455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695297, 34.817982, 53.955822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685421, 34.437679, 53.832241>,  <35.679497, 34.209499, 53.758091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685421, 34.437679, 53.832241>,  <35.695297, 34.817982, 53.955822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685421, 34.437679, 53.832241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744450, -0.188784, 0.640433,
		-0.667221, 0.245812, -0.703130,
		-0.024686, -0.950756, -0.308956,
		35.678017, 34.152451, 53.739555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959377, 34.639172, 54.199432>,  <35.695297, 34.817982, 53.955822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959377, 34.639172, 54.199432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562927, 34.674717, 54.159889>,  <34.325058, 34.696045, 54.136166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562927, 34.674717, 54.159889>,  <34.959377, 34.639172, 54.199432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562927, 34.674717, 54.159889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123046, 0.331993, -0.935222,
		-0.050291, -0.939086, -0.339982,
		-0.991126, 0.088867, -0.098854,
		34.265591, 34.701378, 54.130234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731071, 34.412800, 53.536846>,  <34.959377, 34.639172, 54.199432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731071, 34.412800, 53.536846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436794, 34.661274, 53.644833>,  <34.260227, 34.810356, 53.709625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436794, 34.661274, 53.644833>,  <34.731071, 34.412800, 53.536846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436794, 34.661274, 53.644833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018600, 0.379905, -0.924838,
		-0.677056, -0.685422, -0.267941,
		-0.735697, 0.621183, 0.269966,
		34.216084, 34.847630, 53.725822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387421, 34.426277, 52.922710>,  <34.731071, 34.412800, 53.536846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387421, 34.426277, 52.922710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240265, 34.747425, 53.110352>,  <34.151974, 34.940113, 53.222935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240265, 34.747425, 53.110352>,  <34.387421, 34.426277, 52.922710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240265, 34.747425, 53.110352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171692, 0.437157, -0.882845,
		-0.913883, -0.405327, -0.022977,
		-0.367886, 0.802872, 0.469102,
		34.129898, 34.988285, 53.251083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912907, 34.714867, 52.415527>,  <34.387421, 34.426277, 52.922710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912907, 34.714867, 52.415527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954185, 35.023556, 52.666538>,  <33.978954, 35.208771, 52.817142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954185, 35.023556, 52.666538>,  <33.912907, 34.714867, 52.415527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954185, 35.023556, 52.666538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209385, 0.633611, -0.744779,
		-0.972372, -0.054535, 0.226976,
		0.103198, 0.771728, 0.627524,
		33.985146, 35.255074, 52.854797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277210, 35.187054, 52.343887>,  <33.912907, 34.714867, 52.415527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277210, 35.187054, 52.343887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608013, 35.366055, 52.480003>,  <33.806496, 35.473454, 52.561672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608013, 35.366055, 52.480003>,  <33.277210, 35.187054, 52.343887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608013, 35.366055, 52.480003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041289, 0.652015, -0.757081,
		-0.560671, 0.612063, 0.557699,
		0.827009, 0.447500, 0.340294,
		33.856117, 35.500305, 52.582092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144272, 35.868534, 52.279545>,  <33.277210, 35.187054, 52.343887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144272, 35.868534, 52.279545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543259, 35.850529, 52.301586>,  <33.782650, 35.839725, 52.314812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543259, 35.850529, 52.301586>,  <33.144272, 35.868534, 52.279545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543259, 35.850529, 52.301586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071113, 0.605671, -0.792531,
		0.002305, 0.794441, 0.607337,
		0.997465, -0.045016, 0.055099,
		33.842499, 35.837025, 52.318115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379742, 36.524353, 52.206089>,  <33.144272, 35.868534, 52.279545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379742, 36.524353, 52.206089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712299, 36.311924, 52.140682>,  <33.911835, 36.184467, 52.101437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712299, 36.311924, 52.140682>,  <33.379742, 36.524353, 52.206089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712299, 36.311924, 52.140682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289317, 0.664947, -0.688579,
		0.474418, 0.525174, 0.706484,
		0.831398, -0.531073, -0.163521,
		33.961720, 36.152603, 52.091625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886532, 37.057957, 52.134731>,  <33.379742, 36.524353, 52.206089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886532, 37.057957, 52.134731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053764, 36.743004, 51.953518>,  <34.154102, 36.554031, 51.844788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053764, 36.743004, 51.953518>,  <33.886532, 37.057957, 52.134731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053764, 36.743004, 51.953518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307141, 0.591866, -0.745224,
		0.854912, 0.172417, 0.489284,
		0.418079, -0.787380, -0.453037,
		34.179188, 36.506790, 51.817608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517151, 37.301720, 51.875385>,  <33.886532, 37.057957, 52.134731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517151, 37.301720, 51.875385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479031, 36.954582, 51.680340>,  <34.456158, 36.746300, 51.563313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479031, 36.954582, 51.680340>,  <34.517151, 37.301720, 51.875385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479031, 36.954582, 51.680340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222950, 0.458795, -0.860116,
		0.970161, -0.190680, 0.149764,
		-0.095297, -0.867841, -0.487617,
		34.450443, 36.694229, 51.534054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101200, 37.236614, 51.491180>,  <34.517151, 37.301720, 51.875385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101200, 37.236614, 51.491180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820583, 37.011009, 51.316948>,  <34.652214, 36.875648, 51.212406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820583, 37.011009, 51.316948>,  <35.101200, 37.236614, 51.491180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820583, 37.011009, 51.316948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292420, 0.329572, -0.897704,
		0.649870, -0.757150, -0.066282,
		-0.701541, -0.564008, -0.435585,
		34.610123, 36.841808, 51.186272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369781, 37.005917, 50.888340>,  <35.101200, 37.236614, 51.491180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369781, 37.005917, 50.888340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988220, 36.909988, 50.816162>,  <34.759285, 36.852432, 50.772858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988220, 36.909988, 50.816162>,  <35.369781, 37.005917, 50.888340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988220, 36.909988, 50.816162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099348, 0.315002, -0.943877,
		0.283199, -0.918292, -0.276655,
		-0.953902, -0.239820, -0.180439,
		34.702049, 36.838039, 50.762032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317211, 36.500122, 50.316814>,  <35.369781, 37.005917, 50.888340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317211, 36.500122, 50.316814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963875, 36.687313, 50.327469>,  <34.751873, 36.799629, 50.333862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963875, 36.687313, 50.327469>,  <35.317211, 36.500122, 50.316814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963875, 36.687313, 50.327469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084425, 0.214743, -0.973015,
		-0.461069, -0.857253, -0.229199,
		-0.883339, 0.467977, 0.026638,
		34.698872, 36.827705, 50.335461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880360, 36.175442, 49.886520>,  <35.317211, 36.500122, 50.316814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880360, 36.175442, 49.886520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715832, 36.537140, 49.932400>,  <34.617115, 36.754158, 49.959927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715832, 36.537140, 49.932400>,  <34.880360, 36.175442, 49.886520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715832, 36.537140, 49.932400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025546, 0.137226, -0.990210,
		-0.911131, -0.404367, -0.079544,
		-0.411324, 0.904244, 0.114701,
		34.592434, 36.808414, 49.966808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366692, 36.197109, 49.363029>,  <34.880360, 36.175442, 49.886520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366692, 36.197109, 49.363029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441502, 36.572769, 49.478279>,  <34.486385, 36.798164, 49.547428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441502, 36.572769, 49.478279>,  <34.366692, 36.197109, 49.363029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441502, 36.572769, 49.478279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330861, 0.215941, -0.918641,
		-0.924962, 0.267134, -0.270343,
		0.187022, 0.939153, 0.288121,
		34.497608, 36.854515, 49.564716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014950, 36.577805, 48.948250>,  <34.366692, 36.197109, 49.363029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014950, 36.577805, 48.948250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300533, 36.820824, 49.087475>,  <34.471886, 36.966633, 49.171009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300533, 36.820824, 49.087475>,  <34.014950, 36.577805, 48.948250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300533, 36.820824, 49.087475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302788, 0.180327, -0.935843,
		-0.631331, 0.773546, -0.055210,
		0.713962, 0.607543, 0.348066,
		34.514721, 37.003086, 49.191895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454674, 37.008118, 48.713448>,  <34.014950, 36.577805, 48.948250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454674, 37.008118, 48.713448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163857, 36.813591, 48.519581>,  <32.989365, 36.696877, 48.403259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163857, 36.813591, 48.519581>,  <33.454674, 37.008118, 48.713448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163857, 36.813591, 48.519581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441931, -0.208768, 0.872418,
		-0.525454, 0.848476, -0.063134,
		-0.727045, -0.486317, -0.484666,
		32.945744, 36.667694, 48.374180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856148, 37.277637, 48.904144>,  <33.454674, 37.008118, 48.713448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856148, 37.277637, 48.904144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769302, 36.908447, 48.777035>,  <32.717194, 36.686932, 48.700771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769302, 36.908447, 48.777035>,  <32.856148, 37.277637, 48.904144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769302, 36.908447, 48.777035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382784, -0.218960, 0.897515,
		-0.897962, 0.316504, -0.305760,
		-0.217117, -0.922975, -0.317771,
		32.704166, 36.631554, 48.681705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231903, 37.110489, 49.269909>,  <32.856148, 37.277637, 48.904144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231903, 37.110489, 49.269909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318729, 36.742462, 49.139458>,  <32.370827, 36.521648, 49.061188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318729, 36.742462, 49.139458>,  <32.231903, 37.110489, 49.269909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318729, 36.742462, 49.139458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480013, -0.391521, 0.785047,
		-0.849981, -0.013862, -0.526630,
		0.217069, -0.920064, -0.326132,
		32.383850, 36.466442, 49.041618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605507, 36.674355, 49.241192>,  <32.231903, 37.110489, 49.269909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605507, 36.674355, 49.241192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901644, 36.406368, 49.263226>,  <32.079327, 36.245575, 49.276447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901644, 36.406368, 49.263226>,  <31.605507, 36.674355, 49.241192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901644, 36.406368, 49.263226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493985, -0.486629, 0.720535,
		-0.455925, -0.560659, -0.691226,
		0.740345, -0.669966, 0.055090,
		32.123745, 36.205379, 49.279751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202509, 36.045383, 49.302334>,  <31.605507, 36.674355, 49.241192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202509, 36.045383, 49.302334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574989, 36.014374, 49.444801>,  <31.798477, 35.995770, 49.530281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574989, 36.014374, 49.444801>,  <31.202509, 36.045383, 49.302334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574989, 36.014374, 49.444801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360787, -0.335245, 0.870313,
		0.051933, -0.938936, -0.340150,
		0.931201, -0.077524, 0.356166,
		31.854349, 35.991116, 49.551651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288458, 35.316563, 49.633976>,  <31.202509, 36.045383, 49.302334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288458, 35.316563, 49.633976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575417, 35.530121, 49.812996>,  <31.747593, 35.658257, 49.920406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575417, 35.530121, 49.812996>,  <31.288458, 35.316563, 49.633976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575417, 35.530121, 49.812996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099913, -0.556930, 0.824528,
		0.689462, -0.636230, -0.346197,
		0.717397, 0.533891, 0.447550,
		31.790636, 35.690289, 49.947262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734930, 34.789188, 49.964157>,  <31.288458, 35.316563, 49.633976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734930, 34.789188, 49.964157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835194, 35.136421, 50.135551>,  <31.895351, 35.344761, 50.238388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835194, 35.136421, 50.135551>,  <31.734930, 34.789188, 49.964157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835194, 35.136421, 50.135551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126645, -0.409408, 0.903519,
		0.959755, -0.280742, 0.007316,
		0.250660, 0.868084, 0.428486,
		31.910391, 35.396847, 50.264095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066996, 34.382805, 50.127972>,  <31.734930, 34.789188, 49.964157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066996, 34.382805, 50.127972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.785973, 34.120514, 50.017387>,  <30.617359, 33.963139, 49.951035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.785973, 34.120514, 50.017387>,  <31.066996, 34.382805, 50.127972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785973, 34.120514, 50.017387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197143, 0.193946, -0.960999,
		0.683776, -0.729659, -0.006985,
		-0.702557, -0.655731, -0.276463,
		30.575205, 33.923794, 49.934448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339954, 34.177086, 49.580929>,  <31.066996, 34.382805, 50.127972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339954, 34.177086, 49.580929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983488, 34.005890, 49.520725>,  <30.769609, 33.903172, 49.484604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983488, 34.005890, 49.520725>,  <31.339954, 34.177086, 49.580929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983488, 34.005890, 49.520725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172360, -0.012509, -0.984954,
		0.419666, -0.903698, 0.084915,
		-0.891164, -0.427988, -0.150512,
		30.716139, 33.877495, 49.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461481, 33.627262, 49.056225>,  <31.339954, 34.177086, 49.580929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461481, 33.627262, 49.056225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.077969, 33.736698, 49.025539>,  <30.847860, 33.802361, 49.007130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.077969, 33.736698, 49.025539>,  <31.461481, 33.627262, 49.056225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077969, 33.736698, 49.025539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083161, 0.012039, -0.996463,
		-0.271697, -0.961772, -0.034295,
		-0.958783, 0.273588, -0.076711,
		30.790333, 33.818775, 49.002525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151726, 33.094494, 48.613289>,  <31.461481, 33.627262, 49.056225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151726, 33.094494, 48.613289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.891409, 33.398186, 48.610695>,  <30.735218, 33.580399, 48.609138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.891409, 33.398186, 48.610695>,  <31.151726, 33.094494, 48.613289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891409, 33.398186, 48.610695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035606, 0.021990, -0.999124,
		-0.758420, -0.650453, -0.041345,
		-0.650793, 0.759228, -0.006482,
		30.696171, 33.625954, 48.608749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872477, 32.978756, 47.999752>,  <31.151726, 33.094494, 48.613289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872477, 32.978756, 47.999752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798641, 33.368637, 48.050152>,  <30.754341, 33.602566, 48.080391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798641, 33.368637, 48.050152>,  <30.872477, 32.978756, 47.999752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798641, 33.368637, 48.050152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215490, 0.165217, -0.962428,
		-0.958901, -0.150501, -0.240537,
		-0.184587, 0.974707, 0.125996,
		30.743265, 33.661049, 48.087952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428846, 33.069183, 47.567898>,  <30.872477, 32.978756, 47.999752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428846, 33.069183, 47.567898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.542589, 33.441292, 47.660614>,  <30.610834, 33.664558, 47.716244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.542589, 33.441292, 47.660614>,  <30.428846, 33.069183, 47.567898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542589, 33.441292, 47.660614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079503, 0.218062, -0.972691,
		-0.955417, 0.295019, -0.011953,
		0.284356, 0.930276, 0.231795,
		30.627895, 33.720375, 47.730152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049587, 33.446388, 47.216583>,  <30.428846, 33.069183, 47.567898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049587, 33.446388, 47.216583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360647, 33.687050, 47.289551>,  <30.547283, 33.831448, 47.333332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360647, 33.687050, 47.289551>,  <30.049587, 33.446388, 47.216583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360647, 33.687050, 47.289551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078074, 0.195489, -0.977593,
		-0.623832, 0.774467, 0.105049,
		0.777649, 0.601652, 0.182419,
		30.593943, 33.867546, 47.344276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.392570, 30.986450, 52.263424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573120, 31.343340, 52.257832>,  <34.681450, 31.557474, 52.254475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573120, 31.343340, 52.257832>,  <34.392570, 30.986450, 52.263424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573120, 31.343340, 52.257832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407228, 0.192023, -0.892912,
		-0.793992, 0.408736, 0.450013,
		0.451379, 0.892223, -0.013984,
		34.708534, 31.611008, 52.253635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900921, 31.439146, 51.991299>,  <34.392570, 30.986450, 52.263424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900921, 31.439146, 51.991299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245003, 31.638651, 51.948807>,  <34.451450, 31.758354, 51.923313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245003, 31.638651, 51.948807>,  <33.900921, 31.439146, 51.991299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245003, 31.638651, 51.948807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265074, 0.259377, -0.928687,
		-0.435640, 0.827019, 0.355326,
		0.860206, 0.498761, -0.106226,
		34.503063, 31.788279, 51.916939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707825, 32.079613, 51.641205>,  <33.900921, 31.439146, 51.991299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707825, 32.079613, 51.641205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092293, 31.983370, 51.587154>,  <34.322975, 31.925625, 51.554722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092293, 31.983370, 51.587154>,  <33.707825, 32.079613, 51.641205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092293, 31.983370, 51.587154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127336, 0.047721, -0.990711,
		0.244819, 0.969449, 0.015231,
		0.961171, -0.240606, -0.135129,
		34.380646, 31.911188, 51.546616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960869, 32.584335, 51.176903>,  <33.707825, 32.079613, 51.641205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960869, 32.584335, 51.176903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.223564, 32.287209, 51.124866>,  <34.381180, 32.108932, 51.093643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.223564, 32.287209, 51.124866>,  <33.960869, 32.584335, 51.176903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223564, 32.287209, 51.124866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040789, 0.137264, -0.989694,
		0.753018, 0.655273, 0.059847,
		0.656735, -0.742816, -0.130090,
		34.420586, 32.064365, 51.085838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205070, 32.724117, 50.524715>,  <33.960869, 32.584335, 51.176903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205070, 32.724117, 50.524715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.383801, 32.369560, 50.573139>,  <34.491039, 32.156826, 50.602192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.383801, 32.369560, 50.573139>,  <34.205070, 32.724117, 50.524715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383801, 32.369560, 50.573139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067489, -0.168329, -0.983418,
		0.892074, 0.431243, -0.135035,
		0.446822, -0.886394, 0.121058,
		34.517849, 32.103642, 50.609455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793571, 32.717667, 50.080166>,  <34.205070, 32.724117, 50.524715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793571, 32.717667, 50.080166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.686230, 32.339455, 50.153870>,  <34.621826, 32.112526, 50.198093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.686230, 32.339455, 50.153870>,  <34.793571, 32.717667, 50.080166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686230, 32.339455, 50.153870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017359, -0.195994, -0.980451,
		0.963165, -0.259907, 0.069009,
		-0.268352, -0.945534, 0.184263,
		34.605724, 32.055794, 50.209148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289642, 32.172359, 49.662552>,  <34.793571, 32.717667, 50.080166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289642, 32.172359, 49.662552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.936443, 32.005150, 49.747940>,  <34.724525, 31.904823, 49.799171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.936443, 32.005150, 49.747940>,  <35.289642, 32.172359, 49.662552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936443, 32.005150, 49.747940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129590, -0.220003, -0.966853,
		0.451133, -0.881393, 0.140090,
		-0.882998, -0.418025, 0.213470,
		34.671543, 31.879742, 49.811981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275124, 31.452188, 49.359390>,  <35.289642, 32.172359, 49.662552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275124, 31.452188, 49.359390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886162, 31.495413, 49.442097>,  <34.652786, 31.521347, 49.491722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886162, 31.495413, 49.442097>,  <35.275124, 31.452188, 49.359390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886162, 31.495413, 49.442097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230573, -0.580367, -0.781031,
		0.035603, -0.807153, 0.589267,
		-0.972404, 0.108062, 0.206770,
		34.594440, 31.527832, 49.504128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984051, 30.832432, 49.201603>,  <35.275124, 31.452188, 49.359390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984051, 30.832432, 49.201603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667992, 31.077589, 49.199345>,  <34.478355, 31.224684, 49.197990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667992, 31.077589, 49.199345>,  <34.984051, 30.832432, 49.201603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667992, 31.077589, 49.199345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256901, -0.339526, -0.904834,
		-0.556485, -0.713499, 0.425728,
		-0.790143, 0.612896, -0.005643,
		34.430950, 31.261457, 49.197651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372906, 30.477671, 49.074623>,  <34.984051, 30.832432, 49.201603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372906, 30.477671, 49.074623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313808, 30.857704, 48.964706>,  <34.278351, 31.085724, 48.898754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313808, 30.857704, 48.964706>,  <34.372906, 30.477671, 49.074623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313808, 30.857704, 48.964706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187304, -0.299692, -0.935469,
		-0.971129, -0.086735, 0.222231,
		-0.147738, 0.950085, -0.274794,
		34.269485, 31.142729, 48.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819176, 30.434614, 48.686543>,  <34.372906, 30.477671, 49.074623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819176, 30.434614, 48.686543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959801, 30.792570, 48.576580>,  <34.044178, 31.007343, 48.510605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959801, 30.792570, 48.576580>,  <33.819176, 30.434614, 48.686543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959801, 30.792570, 48.576580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218820, -0.206962, -0.953564,
		-0.910230, 0.395396, 0.123059,
		0.351567, 0.894890, -0.274903,
		34.065269, 31.061037, 48.494110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332317, 30.810940, 48.360172>,  <33.819176, 30.434614, 48.686543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332317, 30.810940, 48.360172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681614, 30.958534, 48.232861>,  <33.891190, 31.047091, 48.156471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681614, 30.958534, 48.232861>,  <33.332317, 30.810940, 48.360172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681614, 30.958534, 48.232861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334766, -0.020373, -0.942081,
		-0.354097, 0.929213, 0.105733,
		0.873240, 0.368984, -0.318282,
		33.943584, 31.069229, 48.137375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646519, 31.119865, 48.030914>,  <33.332317, 30.810940, 48.360172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646519, 31.119865, 48.030914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.322376, 30.896475, 47.959999>,  <32.127892, 30.762440, 47.917450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.322376, 30.896475, 47.959999>,  <32.646519, 31.119865, 48.030914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322376, 30.896475, 47.959999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100060, -0.166223, 0.980998,
		-0.577334, 0.812695, 0.078819,
		-0.810354, -0.558477, -0.177284,
		32.079269, 30.728931, 47.906815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116444, 31.408829, 48.422962>,  <32.646519, 31.119865, 48.030914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116444, 31.408829, 48.422962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012329, 31.028776, 48.354263>,  <31.949860, 30.800745, 48.313042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012329, 31.028776, 48.354263>,  <32.116444, 31.408829, 48.422962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012329, 31.028776, 48.354263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088564, -0.153636, 0.984151,
		-0.961461, 0.271373, -0.044158,
		-0.260288, -0.950133, -0.171749,
		31.934242, 30.743736, 48.302738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508324, 31.297411, 48.773846>,  <32.116444, 31.408829, 48.422962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508324, 31.297411, 48.773846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689701, 30.943996, 48.726944>,  <31.798529, 30.731947, 48.698803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689701, 30.943996, 48.726944>,  <31.508324, 31.297411, 48.773846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689701, 30.943996, 48.726944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163384, -0.211731, 0.963574,
		-0.876181, -0.417770, -0.240364,
		0.453445, -0.883538, -0.117258,
		31.825735, 30.678936, 48.691765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097036, 30.709576, 49.199474>,  <31.508324, 31.297411, 48.773846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097036, 30.709576, 49.199474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.457705, 30.549513, 49.133919>,  <31.674107, 30.453474, 49.094585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.457705, 30.549513, 49.133919>,  <31.097036, 30.709576, 49.199474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457705, 30.549513, 49.133919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002021, -0.375109, 0.926978,
		-0.432419, -0.836161, -0.337416,
		0.901671, -0.400161, -0.163895,
		31.728207, 30.429466, 49.084751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061369, 30.178444, 49.568981>,  <31.097036, 30.709576, 49.199474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061369, 30.178444, 49.568981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458651, 30.210449, 49.535179>,  <31.697020, 30.229652, 49.514896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458651, 30.210449, 49.535179>,  <31.061369, 30.178444, 49.568981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458651, 30.210449, 49.535179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101445, -0.239443, 0.965596,
		0.057029, -0.967608, -0.245933,
		0.993205, 0.080015, -0.084504,
		31.756613, 30.234453, 49.509827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223358, 29.680676, 49.992695>,  <31.061369, 30.178444, 49.568981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223358, 29.680676, 49.992695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554174, 29.891159, 49.913586>,  <31.752665, 30.017448, 49.866119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554174, 29.891159, 49.913586>,  <31.223358, 29.680676, 49.992695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554174, 29.891159, 49.913586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286294, -0.091505, 0.953762,
		0.483780, -0.845419, -0.226328,
		0.827039, 0.526207, -0.197770,
		31.802286, 30.049021, 49.854256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897821, 29.285191, 50.202534>,  <31.223358, 29.680676, 49.992695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897821, 29.285191, 50.202534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.940157, 29.682858, 50.210869>,  <31.965557, 29.921457, 50.215870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.940157, 29.682858, 50.210869>,  <31.897821, 29.285191, 50.202534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940157, 29.682858, 50.210869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338616, -0.055735, 0.939273,
		0.934953, -0.092354, -0.342539,
		0.105837, 0.994165, 0.020837,
		31.971909, 29.981108, 50.217121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172100, 29.378885, 50.825382>,  <31.897821, 29.285191, 50.202534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172100, 29.378885, 50.825382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.190723, 29.765301, 50.723717>,  <32.201897, 29.997150, 50.662716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.190723, 29.765301, 50.723717>,  <32.172100, 29.378885, 50.825382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190723, 29.765301, 50.723717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235412, 0.236666, 0.942640,
		0.970780, -0.103718, -0.216400,
		0.046554, 0.966039, -0.254168,
		32.204689, 30.055113, 50.647465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849232, 29.737421, 50.972889>,  <32.172100, 29.378885, 50.825382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849232, 29.737421, 50.972889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572475, 30.026199, 50.976475>,  <32.406422, 30.199467, 50.978626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572475, 30.026199, 50.976475>,  <32.849232, 29.737421, 50.972889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572475, 30.026199, 50.976475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202434, 0.182056, 0.962225,
		0.693040, 0.667572, -0.272109,
		-0.691893, 0.721944, 0.008968,
		32.364906, 30.242783, 50.979164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192684, 30.254129, 51.377918>,  <32.849232, 29.737421, 50.972889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192684, 30.254129, 51.377918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805012, 30.352634, 51.375454>,  <32.572407, 30.411737, 51.373974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805012, 30.352634, 51.375454>,  <33.192684, 30.254129, 51.377918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805012, 30.352634, 51.375454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086512, 0.363690, 0.927494,
		0.230648, 0.898379, -0.373787,
		-0.969184, 0.246262, -0.006164,
		32.514256, 30.426514, 51.373604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142803, 30.943893, 51.592636>,  <33.192684, 30.254129, 51.377918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142803, 30.943893, 51.592636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.789803, 30.773197, 51.671722>,  <32.578003, 30.670778, 51.719173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.789803, 30.773197, 51.671722>,  <33.142803, 30.943893, 51.592636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789803, 30.773197, 51.671722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048912, 0.334824, 0.941010,
		-0.467768, 0.840109, -0.274609,
		-0.882497, -0.426743, 0.197711,
		32.525055, 30.645174, 51.731037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715984, 31.442211, 51.981918>,  <33.142803, 30.943893, 51.592636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715984, 31.442211, 51.981918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509964, 31.109118, 52.063187>,  <32.386353, 30.909262, 52.111946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509964, 31.109118, 52.063187>,  <32.715984, 31.442211, 51.981918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509964, 31.109118, 52.063187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013686, 0.229008, 0.973328,
		-0.857050, 0.504094, -0.106554,
		-0.515051, -0.832733, 0.203171,
		32.355450, 30.859297, 52.124138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093067, 31.569553, 52.442520>,  <32.715984, 31.442211, 51.981918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093067, 31.569553, 52.442520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189457, 31.186163, 52.503525>,  <32.247292, 30.956129, 52.540127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189457, 31.186163, 52.503525>,  <32.093067, 31.569553, 52.442520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189457, 31.186163, 52.503525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046831, 0.168444, 0.984598,
		-0.969402, -0.230118, 0.085477,
		0.240972, -0.958474, 0.152513,
		32.261749, 30.898621, 52.549278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448492, 31.555941, 52.140732>,  <32.093067, 31.569553, 52.442520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448492, 31.555941, 52.140732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123730, 31.764645, 52.245480>,  <30.928871, 31.889868, 52.308327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123730, 31.764645, 52.245480>,  <31.448492, 31.555941, 52.140732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123730, 31.764645, 52.245480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282466, 0.743664, -0.605951,
		-0.510901, -0.418007, -0.751166,
		-0.811907, 0.521760, 0.261866,
		30.880157, 31.921173, 52.324039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110981, 31.915211, 51.643723>,  <31.448492, 31.555941, 52.140732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110981, 31.915211, 51.643723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.899908, 32.124901, 51.911079>,  <30.773264, 32.250713, 52.071491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.899908, 32.124901, 51.911079>,  <31.110981, 31.915211, 51.643723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899908, 32.124901, 51.911079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243803, 0.660281, -0.710344,
		-0.813704, -0.537789, -0.220610,
		-0.527680, 0.524225, 0.668388,
		30.741604, 32.282169, 52.111595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436874, 31.827332, 51.522964>,  <31.110981, 31.915211, 51.643723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436874, 31.827332, 51.522964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.477539, 32.183777, 51.699863>,  <30.501938, 32.397644, 51.806004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.477539, 32.183777, 51.699863>,  <30.436874, 31.827332, 51.522964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477539, 32.183777, 51.699863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373359, 0.446231, -0.813315,
		-0.922100, -0.082433, 0.378070,
		0.101662, 0.891113, 0.442246,
		30.508038, 32.451111, 51.832539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714407, 32.224251, 51.508488>,  <30.436874, 31.827332, 51.522964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714407, 32.224251, 51.508488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026588, 32.468933, 51.560196>,  <30.213898, 32.615742, 51.591221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026588, 32.468933, 51.560196>,  <29.714407, 32.224251, 51.508488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026588, 32.468933, 51.560196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324850, 0.573411, -0.752112,
		-0.534196, 0.544994, 0.646233,
		0.780453, 0.611704, 0.129272,
		30.260725, 32.652443, 51.598976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441166, 32.727863, 51.099659>,  <29.714407, 32.224251, 51.508488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441166, 32.727863, 51.099659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818159, 32.846191, 51.161907>,  <30.044355, 32.917191, 51.199257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818159, 32.846191, 51.161907>,  <29.441166, 32.727863, 51.099659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818159, 32.846191, 51.161907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028090, 0.534017, -0.845007,
		-0.333077, 0.792032, 0.511610,
		0.942481, 0.295824, 0.155620,
		30.100903, 32.934940, 51.208591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510944, 33.460541, 51.112514>,  <29.441166, 32.727863, 51.099659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510944, 33.460541, 51.112514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883926, 33.336952, 51.037617>,  <30.107716, 33.262798, 50.992676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883926, 33.336952, 51.037617>,  <29.510944, 33.460541, 51.112514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883926, 33.336952, 51.037617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036948, 0.597114, -0.801305,
		0.359392, 0.740263, 0.568198,
		0.932455, -0.308976, -0.187247,
		30.163664, 33.244259, 50.981441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789522, 34.069416, 50.873390>,  <29.510944, 33.460541, 51.112514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789522, 34.069416, 50.873390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.035259, 33.781593, 50.743889>,  <30.182701, 33.608898, 50.666187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.035259, 33.781593, 50.743889>,  <29.789522, 34.069416, 50.873390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035259, 33.781593, 50.743889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204184, 0.541312, -0.815654,
		0.762162, 0.434987, 0.479474,
		0.614343, -0.719561, -0.323750,
		30.219563, 33.565723, 50.646763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394369, 34.419437, 50.627113>,  <29.789522, 34.069416, 50.873390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394369, 34.419437, 50.627113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.390579, 34.061104, 50.449402>,  <30.388306, 33.846104, 50.342773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.390579, 34.061104, 50.449402>,  <30.394369, 34.419437, 50.627113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390579, 34.061104, 50.449402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210003, 0.432608, -0.876783,
		0.977655, -0.101609, 0.184029,
		-0.009477, -0.895838, -0.444280,
		30.387735, 33.792351, 50.316116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125927, 34.560383, 50.895226>,  <30.394369, 34.419437, 50.627113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125927, 34.560383, 50.895226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.399586, 34.847282, 50.948139>,  <31.563782, 35.019421, 50.979885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.399586, 34.847282, 50.948139>,  <31.125927, 34.560383, 50.895226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399586, 34.847282, 50.948139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012266, -0.192658, 0.981189,
		0.729240, -0.669656, -0.140604,
		0.684148, 0.717247, 0.132280,
		31.604830, 35.062458, 50.987823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596840, 34.299534, 51.360321>,  <31.125927, 34.560383, 50.895226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596840, 34.299534, 51.360321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.612772, 34.697414, 51.398228>,  <31.622332, 34.936142, 51.420971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.612772, 34.697414, 51.398228>,  <31.596840, 34.299534, 51.360321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612772, 34.697414, 51.398228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005030, -0.095041, 0.995460,
		0.999194, -0.039173, -0.008789,
		0.039831, 0.994702, 0.094768,
		31.624722, 34.995827, 51.426659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329357, 34.476078, 51.658791>,  <31.596840, 34.299534, 51.360321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329357, 34.476078, 51.658791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.040668, 34.748646, 51.707432>,  <31.867456, 34.912186, 51.736618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.040668, 34.748646, 51.707432>,  <32.329357, 34.476078, 51.658791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040668, 34.748646, 51.707432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196584, 0.033335, 0.979920,
		0.663686, 0.731131, -0.158016,
		-0.721717, 0.681423, 0.121604,
		31.824154, 34.953072, 51.743912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603149, 34.998253, 52.144543>,  <32.329357, 34.476078, 51.658791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603149, 34.998253, 52.144543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207363, 35.056133, 52.142567>,  <31.969893, 35.090862, 52.141380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207363, 35.056133, 52.142567>,  <32.603149, 34.998253, 52.144543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207363, 35.056133, 52.142567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009318, 0.097689, 0.995173,
		0.144486, 0.984641, -0.098008,
		-0.989463, 0.144702, -0.004940,
		31.910524, 35.099545, 52.141087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546658, 35.497635, 52.585674>,  <32.603149, 34.998253, 52.144543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546658, 35.497635, 52.585674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.192745, 35.316723, 52.540752>,  <31.980398, 35.208176, 52.513802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.192745, 35.316723, 52.540752>,  <32.546658, 35.497635, 52.585674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192745, 35.316723, 52.540752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117174, -0.017331, 0.992960,
		-0.451042, 0.891708, -0.037661,
		-0.884777, -0.452280, -0.112302,
		31.927313, 35.181038, 52.507061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027546, 35.871498, 52.932919>,  <32.546658, 35.497635, 52.585674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027546, 35.871498, 52.932919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860022, 35.509911, 52.898411>,  <31.759508, 35.292957, 52.877708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860022, 35.509911, 52.898411>,  <32.027546, 35.871498, 52.932919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860022, 35.509911, 52.898411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083356, -0.056328, 0.994927,
		-0.904241, 0.423874, -0.051761,
		-0.418808, -0.903968, -0.086266,
		31.734379, 35.238720, 52.872532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506536, 35.826519, 53.611126>,  <32.027546, 35.871498, 52.932919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506536, 35.826519, 53.611126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.581511, 35.455139, 53.482845>,  <31.626495, 35.232311, 53.405876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.581511, 35.455139, 53.482845>,  <31.506536, 35.826519, 53.611126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581511, 35.455139, 53.482845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061130, -0.314833, 0.947176,
		-0.980373, -0.197139, -0.002255,
		0.187436, -0.928448, -0.320705,
		31.637741, 35.176605, 53.386635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090765, 35.355038, 53.860840>,  <31.506536, 35.826519, 53.611126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090765, 35.355038, 53.860840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385536, 35.100140, 53.770626>,  <31.562399, 34.947201, 53.716499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385536, 35.100140, 53.770626>,  <31.090765, 35.355038, 53.860840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385536, 35.100140, 53.770626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058135, -0.272656, 0.960354,
		-0.673469, -0.720821, -0.163881,
		0.736926, -0.637241, -0.225530,
		31.606613, 34.908966, 53.702969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003860, 34.778076, 54.236794>,  <31.090765, 35.355038, 53.860840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003860, 34.778076, 54.236794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387249, 34.725616, 54.135494>,  <31.617281, 34.694141, 54.074715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387249, 34.725616, 54.135494>,  <31.003860, 34.778076, 54.236794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387249, 34.725616, 54.135494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155237, -0.504999, 0.849045,
		-0.239241, -0.853098, -0.463667,
		0.958470, -0.131148, -0.253249,
		31.674789, 34.686272, 54.059521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.417408, 37.151936, 38.430855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812241, 37.088203, 38.424065>,  <35.049141, 37.049965, 38.419991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812241, 37.088203, 38.424065>,  <34.417408, 37.151936, 38.430855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812241, 37.088203, 38.424065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052071, -0.419138, 0.906428,
		-0.151533, -0.893833, -0.422019,
		0.987079, -0.159329, -0.016971,
		35.108364, 37.040405, 38.418972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462395, 36.550064, 38.647785>,  <34.417408, 37.151936, 38.430855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462395, 36.550064, 38.647785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791916, 36.757267, 38.739880>,  <34.989628, 36.881588, 38.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791916, 36.757267, 38.739880>,  <34.462395, 36.550064, 38.647785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791916, 36.757267, 38.739880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120341, -0.237083, 0.964007,
		0.553950, -0.821862, -0.132973,
		0.823807, 0.518010, 0.230236,
		35.039059, 36.912670, 38.808949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063793, 36.127178, 38.983177>,  <34.462395, 36.550064, 38.647785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063793, 36.127178, 38.983177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045357, 36.512852, 39.087658>,  <35.034294, 36.744255, 39.150345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045357, 36.512852, 39.087658>,  <35.063793, 36.127178, 38.983177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045357, 36.512852, 39.087658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200102, -0.265093, 0.943231,
		0.978690, -0.008788, 0.205154,
		-0.046095, 0.964183, 0.261202,
		35.031528, 36.802105, 39.166019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183384, 36.136848, 39.734444>,  <35.063793, 36.127178, 38.983177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183384, 36.136848, 39.734444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097561, 36.524986, 39.689888>,  <35.046066, 36.757870, 39.663155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097561, 36.524986, 39.689888>,  <35.183384, 36.136848, 39.734444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097561, 36.524986, 39.689888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230736, 0.060458, 0.971136,
		0.949067, 0.234062, 0.210921,
		-0.214554, 0.970340, -0.111385,
		35.033195, 36.816090, 39.656471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573944, 36.442284, 40.159977>,  <35.183384, 36.136848, 39.734444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573944, 36.442284, 40.159977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264862, 36.683472, 40.080627>,  <35.079414, 36.828186, 40.033016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264862, 36.683472, 40.080627>,  <35.573944, 36.442284, 40.159977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264862, 36.683472, 40.080627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233836, 0.020145, 0.972067,
		0.590126, 0.797507, 0.125431,
		-0.772704, 0.602973, -0.198374,
		35.033051, 36.864365, 40.021114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564369, 36.884510, 40.710896>,  <35.573944, 36.442284, 40.159977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564369, 36.884510, 40.710896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205090, 36.959896, 40.552040>,  <34.989521, 37.005127, 40.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205090, 36.959896, 40.552040>,  <35.564369, 36.884510, 40.710896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205090, 36.959896, 40.552040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399007, 0.029618, 0.916469,
		0.184485, 0.981633, 0.048596,
		-0.898197, 0.188465, -0.397143,
		34.935631, 37.016434, 40.432896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266499, 37.455738, 41.053867>,  <35.564369, 36.884510, 40.710896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266499, 37.455738, 41.053867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948952, 37.258213, 40.911922>,  <34.758423, 37.139698, 40.826756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948952, 37.258213, 40.911922>,  <35.266499, 37.455738, 41.053867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948952, 37.258213, 40.911922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413331, 0.010157, 0.910524,
		-0.446025, 0.869508, -0.212172,
		-0.793863, -0.493814, -0.354865,
		34.710793, 37.110069, 40.805462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766384, 37.798191, 41.291531>,  <35.266499, 37.455738, 41.053867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766384, 37.798191, 41.291531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604748, 37.439812, 41.217789>,  <34.507767, 37.224785, 41.173542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604748, 37.439812, 41.217789>,  <34.766384, 37.798191, 41.291531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604748, 37.439812, 41.217789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487790, 0.040566, 0.872018,
		-0.773805, 0.442300, -0.453427,
		-0.404087, -0.895949, -0.184360,
		34.483521, 37.171028, 41.162479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939793, 37.837654, 41.301517>,  <34.766384, 37.798191, 41.291531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939793, 37.837654, 41.301517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021515, 37.453487, 41.377258>,  <34.070549, 37.222988, 41.422703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021515, 37.453487, 41.377258>,  <33.939793, 37.837654, 41.301517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021515, 37.453487, 41.377258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595104, 0.031726, 0.803023,
		-0.777247, -0.276740, -0.565068,
		0.204301, -0.960421, 0.189348,
		34.082806, 37.165359, 41.434063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333378, 37.652092, 41.687378>,  <33.939793, 37.837654, 41.301517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333378, 37.652092, 41.687378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596302, 37.351025, 41.702522>,  <33.754059, 37.170383, 41.711609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596302, 37.351025, 41.702522>,  <33.333378, 37.652092, 41.687378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596302, 37.351025, 41.702522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367787, -0.276533, 0.887841,
		-0.657777, -0.597515, -0.458590,
		0.657313, -0.752665, 0.037861,
		33.793495, 37.125225, 41.713882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870884, 37.075947, 41.804821>,  <33.333378, 37.652092, 41.687378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870884, 37.075947, 41.804821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246498, 37.012600, 41.926895>,  <33.471867, 36.974590, 42.000137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246498, 37.012600, 41.926895>,  <32.870884, 37.075947, 41.804821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246498, 37.012600, 41.926895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324398, -0.113940, 0.939033,
		-0.113940, -0.980784, -0.158367,
		-0.939033, 0.158367, -0.305182,
		33.528210, 36.965088, 42.018448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888767, 36.475929, 42.176868>,  <32.870884, 37.075947, 41.804821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888767, 36.475929, 42.176868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208771, 36.662544, 42.327774>,  <33.400772, 36.774513, 42.418320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208771, 36.662544, 42.327774>,  <32.888767, 36.475929, 42.176868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208771, 36.662544, 42.327774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297458, -0.237672, 0.924679,
		0.521060, -0.851973, -0.051366,
		0.800010, 0.466533, 0.377268,
		33.448772, 36.802505, 42.440956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972736, 35.842583, 41.874893>,  <32.888767, 36.475929, 42.176868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972736, 35.842583, 41.874893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709812, 35.549751, 41.803345>,  <32.552055, 35.374050, 41.760414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709812, 35.549751, 41.803345>,  <32.972736, 35.842583, 41.874893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709812, 35.549751, 41.803345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112893, 0.139020, -0.983834,
		0.745114, -0.666880, -0.008732,
		-0.657313, -0.732083, -0.178872,
		32.512619, 35.330128, 41.749683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331303, 35.301418, 41.441544>,  <32.972736, 35.842583, 41.874893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331303, 35.301418, 41.441544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939323, 35.241028, 41.389530>,  <32.704136, 35.204792, 41.358322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939323, 35.241028, 41.389530>,  <33.331303, 35.301418, 41.441544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939323, 35.241028, 41.389530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134935, -0.022653, -0.990595,
		0.146614, -0.988277, 0.042571,
		-0.979947, -0.150979, -0.130032,
		32.645340, 35.195736, 41.350521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255016, 34.684368, 40.953293>,  <33.331303, 35.301418, 41.441544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255016, 34.684368, 40.953293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914948, 34.894894, 40.947628>,  <32.710907, 35.021210, 40.944229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914948, 34.894894, 40.947628>,  <33.255016, 34.684368, 40.953293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914948, 34.894894, 40.947628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137838, -0.248456, -0.958786,
		-0.508140, -0.813182, 0.283777,
		-0.850173, 0.526313, -0.014163,
		32.659897, 35.052788, 40.943378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682137, 34.172802, 40.734463>,  <33.255016, 34.684368, 40.953293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682137, 34.172802, 40.734463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560650, 34.551949, 40.695862>,  <32.487759, 34.779434, 40.672703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560650, 34.551949, 40.695862>,  <32.682137, 34.172802, 40.734463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560650, 34.551949, 40.695862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284265, -0.186824, -0.940367,
		-0.909368, -0.258172, 0.326186,
		-0.303716, 0.947863, -0.096502,
		32.469536, 34.836308, 40.666912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096455, 34.121292, 40.357609>,  <32.682137, 34.172802, 40.734463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096455, 34.121292, 40.357609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186649, 34.507198, 40.303368>,  <32.240768, 34.738743, 40.270824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186649, 34.507198, 40.303368>,  <32.096455, 34.121292, 40.357609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186649, 34.507198, 40.303368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234908, -0.081239, -0.968617,
		-0.945501, 0.250268, 0.208312,
		0.225491, 0.964762, -0.135602,
		32.254295, 34.796627, 40.262688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565493, 34.422615, 39.989719>,  <32.096455, 34.121292, 40.357609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565493, 34.422615, 39.989719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900679, 34.630741, 39.923893>,  <32.101791, 34.755619, 39.884399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900679, 34.630741, 39.923893>,  <31.565493, 34.422615, 39.989719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900679, 34.630741, 39.923893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161432, -0.051710, -0.985528,
		-0.521298, 0.852405, 0.040665,
		0.837967, 0.520318, -0.164562,
		32.152069, 34.786835, 39.874523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293051, 34.902390, 39.509460>,  <31.565493, 34.422615, 39.989719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293051, 34.902390, 39.509460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689930, 34.933575, 39.470554>,  <31.928059, 34.952286, 39.447208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689930, 34.933575, 39.470554>,  <31.293051, 34.902390, 39.509460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689930, 34.933575, 39.470554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086172, -0.134864, -0.987110,
		-0.090079, 0.987792, -0.127093,
		0.992200, 0.077966, -0.097268,
		31.987591, 34.956963, 39.441372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450603, 35.432301, 39.072323>,  <31.293051, 34.902390, 39.509460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450603, 35.432301, 39.072323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812790, 35.267071, 39.033348>,  <32.030102, 35.167931, 39.009964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812790, 35.267071, 39.033348>,  <31.450603, 35.432301, 39.072323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812790, 35.267071, 39.033348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042605, 0.139944, -0.989242,
		0.422271, 0.899879, 0.109116,
		0.905468, -0.413079, -0.097434,
		32.084431, 35.143147, 39.004116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747574, 35.768417, 38.576645>,  <31.450603, 35.432301, 39.072323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747574, 35.768417, 38.576645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967495, 35.434395, 38.584560>,  <32.099449, 35.233978, 38.589310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967495, 35.434395, 38.584560>,  <31.747574, 35.768417, 38.576645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967495, 35.434395, 38.584560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169876, 0.088587, -0.981476,
		0.817839, 0.542978, 0.190562,
		0.549801, -0.835061, 0.019789,
		32.132435, 35.183876, 38.590496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370686, 35.947887, 38.205784>,  <31.747574, 35.768417, 38.576645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370686, 35.947887, 38.205784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313332, 35.552303, 38.190819>,  <32.278919, 35.314953, 38.181839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313332, 35.552303, 38.190819>,  <32.370686, 35.947887, 38.205784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313332, 35.552303, 38.190819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166118, 0.013215, -0.986018,
		0.975626, -0.147593, 0.162389,
		-0.143383, -0.988960, -0.037411,
		32.270317, 35.255615, 38.179596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970230, 35.664051, 37.871365>,  <32.370686, 35.947887, 38.205784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970230, 35.664051, 37.871365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709480, 35.363647, 37.829311>,  <32.553032, 35.183407, 37.804081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709480, 35.363647, 37.829311>,  <32.970230, 35.664051, 37.871365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709480, 35.363647, 37.829311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194904, -0.031943, -0.980302,
		0.732853, -0.659524, 0.167197,
		-0.651873, -0.751005, -0.105134,
		32.513920, 35.138348, 37.797771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324135, 35.078030, 37.437973>,  <32.970230, 35.664051, 37.871365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324135, 35.078030, 37.437973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934258, 34.990829, 37.418205>,  <32.700329, 34.938511, 37.406345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934258, 34.990829, 37.418205>,  <33.324135, 35.078030, 37.437973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934258, 34.990829, 37.418205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073151, -0.102187, -0.992072,
		0.211223, -0.970584, 0.115548,
		-0.974697, -0.218001, -0.049415,
		32.641850, 34.925430, 37.403381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317360, 34.503448, 37.133713>,  <33.324135, 35.078030, 37.437973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317360, 34.503448, 37.133713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935368, 34.615738, 37.095329>,  <32.706173, 34.683113, 37.072300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935368, 34.615738, 37.095329>,  <33.317360, 34.503448, 37.133713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935368, 34.615738, 37.095329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003949, -0.335455, -0.942048,
		-0.296645, -0.899258, 0.321462,
		-0.954980, 0.280723, -0.095960,
		32.648872, 34.699955, 37.066540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939167, 33.925266, 36.802807>,  <33.317360, 34.503448, 37.133713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939167, 33.925266, 36.802807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753525, 34.268291, 36.714096>,  <32.642139, 34.474106, 36.660870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753525, 34.268291, 36.714096>,  <32.939167, 33.925266, 36.802807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753525, 34.268291, 36.714096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085262, -0.292468, -0.952467,
		-0.881666, -0.423138, 0.208854,
		-0.464108, 0.857565, -0.221781,
		32.614292, 34.525562, 36.647560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837006, 33.162369, 36.893734>,  <32.939167, 33.925266, 36.802807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837006, 33.162369, 36.893734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204659, 33.008095, 36.925823>,  <33.425251, 32.915531, 36.945076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204659, 33.008095, 36.925823>,  <32.837006, 33.162369, 36.893734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204659, 33.008095, 36.925823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289908, -0.524362, 0.800623,
		-0.266726, -0.759138, -0.593774,
		0.919136, -0.385687, 0.080220,
		33.480400, 32.892387, 36.949890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686237, 32.395668, 36.952354>,  <32.837006, 33.162369, 36.893734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686237, 32.395668, 36.952354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006165, 32.481339, 37.176647>,  <33.198120, 32.532742, 37.311222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006165, 32.481339, 37.176647>,  <32.686237, 32.395668, 36.952354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006165, 32.481339, 37.176647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394756, -0.516030, 0.760185,
		0.452169, -0.829361, -0.328181,
		0.799819, 0.214181, 0.560728,
		33.246109, 32.545593, 37.344864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826656, 31.858585, 37.389446>,  <32.686237, 32.395668, 36.952354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826656, 31.858585, 37.389446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049030, 32.129509, 37.582188>,  <33.182457, 32.292065, 37.697834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049030, 32.129509, 37.582188>,  <32.826656, 31.858585, 37.389446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049030, 32.129509, 37.582188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175570, -0.470936, 0.864520,
		0.812470, -0.565219, -0.142896,
		0.555938, 0.677309, 0.481857,
		33.215813, 32.332703, 37.726746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287205, 31.473846, 37.804165>,  <32.826656, 31.858585, 37.389446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287205, 31.473846, 37.804165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287613, 31.839218, 37.966965>,  <33.287857, 32.058441, 38.064644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287613, 31.839218, 37.966965>,  <33.287205, 31.473846, 37.804165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287613, 31.839218, 37.966965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062204, -0.406149, 0.911687,
		0.998063, -0.026247, 0.056404,
		0.001020, 0.913430, 0.406995,
		33.287918, 32.113247, 38.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678341, 31.329405, 38.342812>,  <33.287205, 31.473846, 37.804165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678341, 31.329405, 38.342812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521656, 31.686935, 38.430119>,  <33.427647, 31.901453, 38.482502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521656, 31.686935, 38.430119>,  <33.678341, 31.329405, 38.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521656, 31.686935, 38.430119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019201, -0.229229, 0.973183,
		0.919889, 0.385394, 0.072628,
		-0.391708, 0.893826, 0.218266,
		33.404144, 31.955084, 38.495598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007774, 31.518822, 38.870708>,  <33.678341, 31.329405, 38.342812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007774, 31.518822, 38.870708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673191, 31.737881, 38.878895>,  <33.472439, 31.869316, 38.883804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673191, 31.737881, 38.878895>,  <34.007774, 31.518822, 38.870708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673191, 31.737881, 38.878895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131704, -0.237127, 0.962510,
		0.531967, 0.802406, 0.270474,
		-0.836460, 0.547646, 0.020464,
		33.422253, 31.902174, 38.885033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086906, 31.889694, 39.383823>,  <34.007774, 31.518822, 38.870708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086906, 31.889694, 39.383823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689816, 31.888006, 39.335693>,  <33.451561, 31.886993, 39.306816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689816, 31.888006, 39.335693>,  <34.086906, 31.889694, 39.383823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689816, 31.888006, 39.335693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114881, -0.265921, 0.957125,
		-0.036036, 0.963986, 0.263502,
		-0.992725, -0.004220, -0.120327,
		33.391998, 31.886740, 39.299595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775246, 32.267323, 40.040623>,  <34.086906, 31.889694, 39.383823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775246, 32.267323, 40.040623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465534, 32.065960, 39.887222>,  <33.279709, 31.945141, 39.795181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465534, 32.065960, 39.887222>,  <33.775246, 32.267323, 40.040623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465534, 32.065960, 39.887222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308303, -0.229158, 0.923274,
		-0.552668, 0.833105, 0.022230,
		-0.774279, -0.503410, -0.383497,
		33.233250, 31.914936, 39.772175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168976, 32.640213, 40.248703>,  <33.775246, 32.267323, 40.040623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168976, 32.640213, 40.248703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050182, 32.266861, 40.168106>,  <32.978905, 32.042850, 40.119747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050182, 32.266861, 40.168106>,  <33.168976, 32.640213, 40.248703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050182, 32.266861, 40.168106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539402, -0.010137, 0.841987,
		-0.787938, 0.358743, -0.500457,
		-0.296984, -0.933381, -0.201494,
		32.961086, 31.986847, 40.107658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583237, 32.698864, 40.491543>,  <33.168976, 32.640213, 40.248703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583237, 32.698864, 40.491543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648300, 32.305050, 40.465549>,  <32.687340, 32.068760, 40.449955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648300, 32.305050, 40.465549>,  <32.583237, 32.698864, 40.491543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648300, 32.305050, 40.465549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468308, -0.135007, 0.873190,
		-0.868464, -0.111602, -0.483028,
		0.162662, -0.984539, -0.064985,
		32.697098, 32.009689, 40.446053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963835, 32.268642, 40.565590>,  <32.583237, 32.698864, 40.491543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963835, 32.268642, 40.565590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244766, 31.997047, 40.651115>,  <32.413326, 31.834091, 40.702431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244766, 31.997047, 40.651115>,  <31.963835, 32.268642, 40.565590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244766, 31.997047, 40.651115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426308, -0.160634, 0.890201,
		-0.570086, -0.716365, -0.402273,
		0.702328, -0.678983, 0.213817,
		32.455463, 31.793352, 40.715260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577250, 31.713217, 40.797718>,  <31.963835, 32.268642, 40.565590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577250, 31.713217, 40.797718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933954, 31.605240, 40.942986>,  <32.147976, 31.540453, 41.030148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933954, 31.605240, 40.942986>,  <31.577250, 31.713217, 40.797718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933954, 31.605240, 40.942986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446622, -0.396037, 0.802298,
		-0.072746, -0.877659, -0.473733,
		0.891760, -0.269944, 0.363172,
		32.201481, 31.524258, 41.051937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481855, 31.120667, 41.069839>,  <31.577250, 31.713217, 40.797718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481855, 31.120667, 41.069839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817091, 31.241278, 41.251690>,  <32.018234, 31.313644, 41.360802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817091, 31.241278, 41.251690>,  <31.481855, 31.120667, 41.069839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817091, 31.241278, 41.251690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347532, -0.347271, 0.870991,
		0.420508, -0.887965, -0.186253,
		0.838090, 0.301530, 0.454626,
		32.068520, 31.331736, 41.388077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760448, 30.569881, 41.505283>,  <31.481855, 31.120667, 41.069839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760448, 30.569881, 41.505283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949772, 30.892477, 41.647015>,  <32.063366, 31.086035, 41.732056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949772, 30.892477, 41.647015>,  <31.760448, 30.569881, 41.505283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949772, 30.892477, 41.647015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080603, -0.360901, 0.929114,
		0.877201, -0.468319, -0.105813,
		0.473309, 0.806491, 0.354331,
		32.091766, 31.134424, 41.753315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280987, 30.359741, 42.039791>,  <31.760448, 30.569881, 41.505283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280987, 30.359741, 42.039791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161236, 30.735703, 42.105465>,  <32.089386, 30.961279, 42.144871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161236, 30.735703, 42.105465>,  <32.280987, 30.359741, 42.039791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161236, 30.735703, 42.105465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026646, -0.180244, 0.983261,
		0.953763, 0.289992, 0.079005,
		-0.299378, 0.939903, 0.164183,
		32.071423, 31.017673, 42.154720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734825, 30.613007, 42.547318>,  <32.280987, 30.359741, 42.039791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734825, 30.613007, 42.547318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412468, 30.848598, 42.571426>,  <32.219051, 30.989954, 42.585892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412468, 30.848598, 42.571426>,  <32.734825, 30.613007, 42.547318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412468, 30.848598, 42.571426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001010, -0.103174, 0.994663,
		0.592054, 0.801535, 0.083742,
		-0.805898, 0.588979, 0.060275,
		32.170700, 31.025291, 42.589508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898949, 30.990046, 43.054169>,  <32.734825, 30.613007, 42.547318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898949, 30.990046, 43.054169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504456, 31.053995, 43.037258>,  <32.267761, 31.092365, 43.027111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504456, 31.053995, 43.037258>,  <32.898949, 30.990046, 43.054169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504456, 31.053995, 43.037258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050594, -0.048318, 0.997550,
		0.157438, 0.985955, 0.055741,
		-0.986232, 0.159872, -0.042276,
		32.208588, 31.101957, 43.024574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714211, 31.456005, 43.662678>,  <32.898949, 30.990046, 43.054169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714211, 31.456005, 43.662678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359028, 31.306543, 43.555412>,  <32.145920, 31.216866, 43.491055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359028, 31.306543, 43.555412>,  <32.714211, 31.456005, 43.662678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359028, 31.306543, 43.555412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241267, -0.117958, 0.963263,
		-0.391561, 0.920036, 0.014591,
		-0.887958, -0.373656, -0.268163,
		32.092640, 31.194447, 43.474964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247112, 31.885630, 44.041763>,  <32.714211, 31.456005, 43.662678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247112, 31.885630, 44.041763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067730, 31.539110, 43.953758>,  <31.960100, 31.331198, 43.900955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067730, 31.539110, 43.953758>,  <32.247112, 31.885630, 44.041763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067730, 31.539110, 43.953758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266638, -0.105280, 0.958029,
		-0.853105, 0.488302, -0.183775,
		-0.448460, -0.866301, -0.220014,
		31.933191, 31.279221, 43.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531858, 31.880112, 44.263435>,  <32.247112, 31.885630, 44.041763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531858, 31.880112, 44.263435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622421, 31.491003, 44.243610>,  <31.676758, 31.257538, 44.231716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622421, 31.491003, 44.243610>,  <31.531858, 31.880112, 44.263435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622421, 31.491003, 44.243610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356792, -0.130170, 0.925071,
		-0.906333, -0.191758, -0.376548,
		0.226405, -0.972772, -0.049560,
		31.690344, 31.199171, 44.228741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032686, 31.610470, 44.716053>,  <31.531858, 31.880112, 44.263435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032686, 31.610470, 44.716053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318510, 31.337841, 44.652977>,  <31.490004, 31.174265, 44.615131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318510, 31.337841, 44.652977>,  <31.032686, 31.610470, 44.716053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318510, 31.337841, 44.652977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041511, -0.266319, 0.962991,
		-0.698342, -0.681568, -0.218593,
		0.714559, -0.681571, -0.157689,
		31.532879, 31.133369, 44.605671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850624, 31.065573, 45.087200>,  <31.032686, 31.610470, 44.716053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850624, 31.065573, 45.087200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242283, 31.001688, 45.036972>,  <31.477278, 30.963358, 45.006836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242283, 31.001688, 45.036972>,  <30.850624, 31.065573, 45.087200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242283, 31.001688, 45.036972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082267, -0.253444, 0.963846,
		-0.185759, -0.954075, -0.235020,
		0.979146, -0.159709, -0.125568,
		31.536026, 30.953775, 44.999302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935638, 30.636885, 45.641708>,  <30.850624, 31.065573, 45.087200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935638, 30.636885, 45.641708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316980, 30.671429, 45.526016>,  <31.545786, 30.692156, 45.456600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316980, 30.671429, 45.526016>,  <30.935638, 30.636885, 45.641708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316980, 30.671429, 45.526016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297092, -0.437893, 0.848520,
		-0.053374, -0.894870, -0.443125,
		0.953356, 0.086360, -0.289231,
		31.602987, 30.697336, 45.439247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271847, 29.971912, 45.630547>,  <30.935638, 30.636885, 45.641708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271847, 29.971912, 45.630547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536911, 30.264690, 45.693966>,  <31.695950, 30.440357, 45.732018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536911, 30.264690, 45.693966>,  <31.271847, 29.971912, 45.630547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536911, 30.264690, 45.693966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257503, -0.421474, 0.869513,
		0.703257, -0.535367, -0.467772,
		0.662663, 0.731944, 0.158546,
		31.735710, 30.484274, 45.741531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721205, 29.669123, 46.066319>,  <31.271847, 29.971912, 45.630547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721205, 29.669123, 46.066319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788988, 30.059164, 46.123531>,  <31.829659, 30.293188, 46.157860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788988, 30.059164, 46.123531>,  <31.721205, 29.669123, 46.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788988, 30.059164, 46.123531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025003, -0.149333, 0.988471,
		0.985220, -0.163926, -0.049686,
		0.169456, 0.975104, 0.143027,
		31.839825, 30.351696, 46.166439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053356, 29.535778, 46.775894>,  <31.721205, 29.669123, 46.066319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053356, 29.535778, 46.775894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988529, 29.929413, 46.746761>,  <31.949633, 30.165594, 46.729282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988529, 29.929413, 46.746761>,  <32.053356, 29.535778, 46.775894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988529, 29.929413, 46.746761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033668, 0.079283, 0.996284,
		0.986205, 0.159013, -0.045981,
		-0.162068, 0.984088, -0.072835,
		31.939909, 30.224640, 46.724911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633156, 29.901592, 47.153194>,  <32.053356, 29.535778, 46.775894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633156, 29.901592, 47.153194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344604, 30.177515, 47.128613>,  <32.171474, 30.343069, 47.113865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344604, 30.177515, 47.128613>,  <32.633156, 29.901592, 47.153194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344604, 30.177515, 47.128613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026472, 0.061205, 0.997774,
		0.692033, 0.721402, -0.025892,
		-0.721381, 0.689807, -0.061453,
		32.128189, 30.384457, 47.110176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869942, 30.456345, 47.598625>,  <32.633156, 29.901592, 47.153194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869942, 30.456345, 47.598625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475708, 30.475157, 47.533619>,  <32.239166, 30.486444, 47.494614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475708, 30.475157, 47.533619>,  <32.869942, 30.456345, 47.598625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475708, 30.475157, 47.533619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163300, -0.013284, 0.986487,
		0.044235, 0.998805, 0.020772,
		-0.985584, 0.047030, -0.162517,
		32.180031, 30.489265, 47.484863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220066, 31.155458, 47.476852>,  <32.869942, 30.456345, 47.598625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220066, 31.155458, 47.476852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609570, 31.158699, 47.567825>,  <33.843273, 31.160645, 47.622410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609570, 31.158699, 47.567825>,  <33.220066, 31.155458, 47.476852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609570, 31.158699, 47.567825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226862, 0.044675, -0.972902,
		-0.018044, 0.998969, 0.041665,
		0.973760, 0.008103, 0.227434,
		33.901699, 31.161131, 47.636055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451874, 31.559660, 46.973255>,  <33.220066, 31.155458, 47.476852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451874, 31.559660, 46.973255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786869, 31.363333, 47.069344>,  <33.987865, 31.245537, 47.126999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786869, 31.363333, 47.069344>,  <33.451874, 31.559660, 46.973255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786869, 31.363333, 47.069344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307014, 0.058958, -0.949877,
		0.452053, 0.869265, 0.200065,
		0.837490, -0.490818, 0.240224,
		34.038116, 31.216087, 47.141411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942253, 32.000675, 46.877831>,  <33.451874, 31.559660, 46.973255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942253, 32.000675, 46.877831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096043, 31.634377, 46.831200>,  <34.188316, 31.414598, 46.803219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096043, 31.634377, 46.831200>,  <33.942253, 32.000675, 46.877831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096043, 31.634377, 46.831200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424789, 0.287626, -0.858386,
		0.819593, 0.280507, 0.499583,
		0.384476, -0.915744, -0.116580,
		34.211384, 31.359653, 46.796227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624542, 32.077671, 46.791512>,  <33.942253, 32.000675, 46.877831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624542, 32.077671, 46.791512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550179, 31.717331, 46.634586>,  <34.505562, 31.501127, 46.540432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550179, 31.717331, 46.634586>,  <34.624542, 32.077671, 46.791512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550179, 31.717331, 46.634586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550244, 0.235346, -0.801152,
		0.814045, -0.364811, 0.451933,
		-0.185909, -0.900847, -0.392317,
		34.494408, 31.447077, 46.516891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263718, 31.916557, 46.560940>,  <34.624542, 32.077671, 46.791512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263718, 31.916557, 46.560940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021759, 31.647854, 46.389900>,  <34.876583, 31.486631, 46.287277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021759, 31.647854, 46.389900>,  <35.263718, 31.916557, 46.560940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021759, 31.647854, 46.389900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473553, 0.128246, -0.871379,
		0.640196, -0.729582, 0.240539,
		-0.604894, -0.671761, -0.427598,
		34.840290, 31.446325, 46.261620>
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
