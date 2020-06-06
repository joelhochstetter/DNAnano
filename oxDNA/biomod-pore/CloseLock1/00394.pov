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
	<24.592186, 34.997631, 35.013653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.286907, 35.198387, 35.176445>,  <24.103739, 35.318840, 35.274120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.286907, 35.198387, 35.176445>,  <24.592186, 34.997631, 35.013653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286907, 35.198387, 35.176445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569697, 0.225438, 0.790331,
		0.304915, 0.835033, -0.457982,
		-0.763198, 0.501895, 0.406977,
		24.057947, 35.348957, 35.298538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864986, 35.711121, 35.092632>,  <24.592186, 34.997631, 35.013653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864986, 35.711121, 35.092632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585985, 35.621750, 35.364975>,  <24.418585, 35.568127, 35.528381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585985, 35.621750, 35.364975>,  <24.864986, 35.711121, 35.092632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585985, 35.621750, 35.364975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648958, 0.205975, 0.732412,
		-0.303879, 0.952710, 0.001325,
		-0.697503, -0.223425, 0.680860,
		24.376734, 35.554722, 35.569233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.662024, 36.263729, 35.593876>,  <24.864986, 35.711121, 35.092632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.662024, 36.263729, 35.593876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588558, 35.906357, 35.757854>,  <24.544479, 35.691933, 35.856243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588558, 35.906357, 35.757854>,  <24.662024, 36.263729, 35.593876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588558, 35.906357, 35.757854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577507, 0.239408, 0.780493,
		-0.795458, 0.380097, 0.471989,
		-0.183665, -0.893426, 0.409947,
		24.533459, 35.638329, 35.880840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.112276, 36.088882, 36.250092>,  <24.662024, 36.263729, 35.593876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.112276, 36.088882, 36.250092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440582, 35.860592, 36.260036>,  <24.637566, 35.723618, 36.266003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440582, 35.860592, 36.260036>,  <24.112276, 36.088882, 36.250092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440582, 35.860592, 36.260036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288638, 0.451867, 0.844100,
		-0.492981, -0.685633, 0.535609,
		0.820767, -0.570723, 0.024862,
		24.686811, 35.689377, 36.267494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.099140, 35.926670, 36.989143>,  <24.112276, 36.088882, 36.250092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.099140, 35.926670, 36.989143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470396, 35.884178, 36.846443>,  <24.693150, 35.858681, 36.760822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470396, 35.884178, 36.846443>,  <24.099140, 35.926670, 36.989143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470396, 35.884178, 36.846443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369727, 0.374129, 0.850488,
		0.043122, -0.921272, 0.386521,
		0.928139, -0.106233, -0.356753,
		24.748838, 35.852310, 36.739418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364855, 35.605160, 37.467556>,  <24.099140, 35.926670, 36.989143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364855, 35.605160, 37.467556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685308, 35.759636, 37.284672>,  <24.877581, 35.852322, 37.174942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685308, 35.759636, 37.284672>,  <24.364855, 35.605160, 37.467556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685308, 35.759636, 37.284672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271190, 0.446770, 0.852557,
		0.533513, -0.807005, 0.253193,
		0.801137, 0.386187, -0.457209,
		24.925650, 35.875492, 37.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876911, 35.475422, 37.850029>,  <24.364855, 35.605160, 37.467556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876911, 35.475422, 37.850029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014027, 35.787575, 37.640842>,  <25.096296, 35.974869, 37.515331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014027, 35.787575, 37.640842>,  <24.876911, 35.475422, 37.850029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014027, 35.787575, 37.640842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379533, 0.394194, 0.836999,
		0.859333, -0.485394, -0.161058,
		0.342786, 0.780387, -0.522967,
		25.116863, 36.021690, 37.483952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544724, 35.560989, 38.102375>,  <24.876911, 35.475422, 37.850029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544724, 35.560989, 38.102375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452868, 35.920483, 37.952957>,  <25.397753, 36.136181, 37.863308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452868, 35.920483, 37.952957>,  <25.544724, 35.560989, 38.102375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452868, 35.920483, 37.952957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389280, 0.436580, 0.811085,
		0.892035, 0.040846, -0.450117,
		-0.229642, 0.898738, -0.373544,
		25.383974, 36.190105, 37.840893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150381, 35.894611, 38.214092>,  <25.544724, 35.560989, 38.102375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150381, 35.894611, 38.214092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861216, 36.165558, 38.159584>,  <25.687716, 36.328125, 38.126877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861216, 36.165558, 38.159584>,  <26.150381, 35.894611, 38.214092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861216, 36.165558, 38.159584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355120, 0.533440, 0.767680,
		0.592694, 0.506572, -0.626177,
		-0.722913, 0.677367, -0.136272,
		25.644342, 36.368767, 38.118702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413733, 36.590027, 38.196205>,  <26.150381, 35.894611, 38.214092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413733, 36.590027, 38.196205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032639, 36.629894, 38.311005>,  <25.803982, 36.653812, 38.379883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032639, 36.629894, 38.311005>,  <26.413733, 36.590027, 38.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032639, 36.629894, 38.311005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286094, 0.612171, 0.737154,
		-0.102223, 0.784420, -0.611749,
		-0.952733, 0.099664, 0.286996,
		25.746819, 36.659794, 38.397102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399721, 37.212036, 38.373428>,  <26.413733, 36.590027, 38.196205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399721, 37.212036, 38.373428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092764, 37.046890, 38.569653>,  <25.908590, 36.947803, 38.687386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092764, 37.046890, 38.569653>,  <26.399721, 37.212036, 38.373428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092764, 37.046890, 38.569653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249660, 0.512303, 0.821715,
		-0.590575, 0.753051, -0.290060,
		-0.767392, -0.412868, 0.490560,
		25.862547, 36.923031, 38.716820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205091, 37.715065, 38.895760>,  <26.399721, 37.212036, 38.373428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205091, 37.715065, 38.895760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036089, 37.382847, 39.040913>,  <25.934689, 37.183517, 39.128006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036089, 37.382847, 39.040913>,  <26.205091, 37.715065, 38.895760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036089, 37.382847, 39.040913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290702, 0.255044, 0.922196,
		-0.858477, 0.495122, 0.133685,
		-0.422504, -0.830546, 0.362883,
		25.909338, 37.133682, 39.149776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733063, 37.977032, 39.445011>,  <26.205091, 37.715065, 38.895760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733063, 37.977032, 39.445011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807480, 37.595085, 39.537640>,  <25.852129, 37.365917, 39.593216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807480, 37.595085, 39.537640>,  <25.733063, 37.977032, 39.445011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807480, 37.595085, 39.537640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082769, 0.250082, 0.964680,
		-0.979050, -0.160302, 0.125558,
		0.186040, -0.954862, 0.231575,
		25.863293, 37.308628, 39.607113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285524, 37.773918, 39.973110>,  <25.733063, 37.977032, 39.445011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285524, 37.773918, 39.973110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582394, 37.511745, 40.029099>,  <25.760515, 37.354443, 40.062691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582394, 37.511745, 40.029099>,  <25.285524, 37.773918, 39.973110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582394, 37.511745, 40.029099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036267, 0.169262, 0.984904,
		-0.669224, -0.736047, 0.101851,
		0.742175, -0.655427, 0.139969,
		25.805046, 37.315117, 40.071091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073967, 37.378448, 40.582607>,  <25.285524, 37.773918, 39.973110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073967, 37.378448, 40.582607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467466, 37.310364, 40.559753>,  <25.703566, 37.269512, 40.546040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467466, 37.310364, 40.559753>,  <25.073967, 37.378448, 40.582607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467466, 37.310364, 40.559753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067031, 0.052961, 0.996344,
		-0.166564, -0.983983, 0.063510,
		0.983750, -0.170212, -0.057136,
		25.762590, 37.259300, 40.542614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165398, 36.810661, 41.025837>,  <25.073967, 37.378448, 40.582607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165398, 36.810661, 41.025837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531868, 36.966499, 40.988232>,  <25.751749, 37.060001, 40.965668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531868, 36.966499, 40.988232>,  <25.165398, 36.810661, 41.025837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531868, 36.966499, 40.988232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108861, -0.016146, 0.993926,
		0.385713, -0.920843, -0.057205,
		0.916174, 0.389598, -0.094016,
		25.806721, 37.083378, 40.960026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567713, 36.399082, 41.381084>,  <25.165398, 36.810661, 41.025837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567713, 36.399082, 41.381084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745308, 36.757450, 41.386749>,  <25.851864, 36.972473, 41.390148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745308, 36.757450, 41.386749>,  <25.567713, 36.399082, 41.381084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745308, 36.757450, 41.386749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030708, -0.031009, 0.999047,
		0.895507, -0.443129, -0.041280,
		0.443987, 0.895921, 0.014162,
		25.878504, 37.026226, 41.390999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053715, 36.310059, 41.895035>,  <25.567713, 36.399082, 41.381084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053715, 36.310059, 41.895035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010508, 36.706142, 41.859676>,  <25.984583, 36.943794, 41.838463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010508, 36.706142, 41.859676>,  <26.053715, 36.310059, 41.895035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010508, 36.706142, 41.859676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091947, 0.098488, 0.990881,
		0.989888, 0.098907, -0.101686,
		-0.108019, 0.990211, -0.088398,
		25.978102, 37.003204, 41.833157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613134, 36.665787, 42.264950>,  <26.053715, 36.310059, 41.895035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613134, 36.665787, 42.264950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320921, 36.937012, 42.232552>,  <26.145594, 37.099747, 42.213112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320921, 36.937012, 42.232552>,  <26.613134, 36.665787, 42.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320921, 36.937012, 42.232552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038893, 0.077104, 0.996264,
		0.681770, 0.730953, -0.029955,
		-0.730532, 0.678058, -0.080996,
		26.101761, 37.140430, 42.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805090, 37.331169, 42.560890>,  <26.613134, 36.665787, 42.264950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805090, 37.331169, 42.560890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406860, 37.300163, 42.582138>,  <26.167923, 37.281559, 42.594887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406860, 37.300163, 42.582138>,  <26.805090, 37.331169, 42.560890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406860, 37.300163, 42.582138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027536, 0.299861, 0.953585,
		-0.089846, 0.950828, -0.296400,
		-0.995575, -0.077514, 0.053123,
		26.108189, 37.276909, 42.598076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627731, 37.839962, 42.994583>,  <26.805090, 37.331169, 42.560890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627731, 37.839962, 42.994583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283293, 37.636971, 43.007080>,  <26.076630, 37.515175, 43.014580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283293, 37.636971, 43.007080>,  <26.627731, 37.839962, 42.994583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283293, 37.636971, 43.007080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131371, 0.281432, 0.950546,
		-0.491176, 0.814407, -0.309009,
		-0.861097, -0.507480, 0.031243,
		26.024963, 37.484726, 43.016453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225672, 38.160713, 43.433174>,  <26.627731, 37.839962, 42.994583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225672, 38.160713, 43.433174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031149, 37.811489, 43.418961>,  <25.914434, 37.601952, 43.410431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031149, 37.811489, 43.418961>,  <26.225672, 38.160713, 43.433174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031149, 37.811489, 43.418961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425451, 0.201068, 0.882362,
		-0.763214, 0.444217, -0.469228,
		-0.486307, -0.873065, -0.035534,
		25.885256, 37.549568, 43.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679239, 38.371574, 43.796322>,  <26.225672, 38.160713, 43.433174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679239, 38.371574, 43.796322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644505, 37.973186, 43.787392>,  <25.623663, 37.734154, 43.782036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644505, 37.973186, 43.787392>,  <25.679239, 38.371574, 43.796322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644505, 37.973186, 43.787392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413323, 0.015632, 0.910450,
		-0.906434, 0.088288, -0.413016,
		-0.086839, -0.995972, -0.022322,
		25.618452, 37.674397, 43.780697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954384, 38.144348, 43.959049>,  <25.679239, 38.371574, 43.796322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954384, 38.144348, 43.959049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230345, 37.872063, 44.057571>,  <25.395922, 37.708691, 44.116684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230345, 37.872063, 44.057571>,  <24.954384, 38.144348, 43.959049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230345, 37.872063, 44.057571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336293, -0.000078, 0.941758,
		-0.641049, -0.732549, -0.228973,
		0.689901, -0.680714, 0.246301,
		25.437315, 37.667847, 44.131462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536982, 37.525219, 44.284313>,  <24.954384, 38.144348, 43.959049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536982, 37.525219, 44.284313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919615, 37.560295, 44.395496>,  <25.149195, 37.581341, 44.462208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919615, 37.560295, 44.395496>,  <24.536982, 37.525219, 44.284313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919615, 37.560295, 44.395496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286567, 0.108869, 0.951855,
		0.053210, -0.990181, 0.129272,
		0.956581, 0.087693, 0.277960,
		25.206589, 37.586601, 44.478886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763880, 37.119659, 44.870613>,  <24.536982, 37.525219, 44.284313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763880, 37.119659, 44.870613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995199, 37.445908, 44.877884>,  <25.133991, 37.641655, 44.882248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995199, 37.445908, 44.877884>,  <24.763880, 37.119659, 44.870613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995199, 37.445908, 44.877884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252606, 0.157831, 0.954610,
		0.775731, -0.556643, 0.297304,
		0.578301, 0.815621, 0.018177,
		25.168690, 37.690594, 44.883339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298761, 37.052254, 45.382393>,  <24.763880, 37.119659, 44.870613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298761, 37.052254, 45.382393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174242, 37.427864, 45.323978>,  <25.099529, 37.653229, 45.288929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174242, 37.427864, 45.323978>,  <25.298761, 37.052254, 45.382393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174242, 37.427864, 45.323978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301616, 0.048093, 0.952216,
		0.901177, 0.340470, 0.268253,
		-0.311300, 0.939025, -0.146032,
		25.080853, 37.709572, 45.280170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449396, 37.255814, 46.068409>,  <25.298761, 37.052254, 45.382393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449396, 37.255814, 46.068409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252474, 37.560802, 45.900467>,  <25.134321, 37.743793, 45.799702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252474, 37.560802, 45.900467>,  <25.449396, 37.255814, 46.068409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252474, 37.560802, 45.900467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247261, 0.339979, 0.907346,
		0.834564, 0.550504, 0.021155,
		-0.492306, 0.762469, -0.419852,
		25.104782, 37.789543, 45.774509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014275, 37.174591, 45.470406>,  <25.449396, 37.255814, 46.068409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014275, 37.174591, 45.470406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381037, 37.015835, 45.453613>,  <26.601093, 36.920582, 45.443539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381037, 37.015835, 45.453613>,  <26.014275, 37.174591, 45.470406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381037, 37.015835, 45.453613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315704, 0.785619, -0.532103,
		0.244170, 0.474634, 0.845638,
		0.916903, -0.396895, -0.041980,
		26.656107, 36.896767, 45.441021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510139, 37.715958, 45.597870>,  <26.014275, 37.174591, 45.470406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510139, 37.715958, 45.597870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740101, 37.435097, 45.429840>,  <26.878078, 37.266579, 45.329021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740101, 37.435097, 45.429840>,  <26.510139, 37.715958, 45.597870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740101, 37.435097, 45.429840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567990, 0.712022, -0.412809,
		0.588959, -0.001273, 0.808162,
		0.574904, -0.702156, -0.420075,
		26.912573, 37.224449, 45.303818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149389, 38.051739, 45.205833>,  <26.510139, 37.715958, 45.597870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149389, 38.051739, 45.205833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247490, 37.677986, 45.102467>,  <27.306351, 37.453735, 45.040447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247490, 37.677986, 45.102467>,  <27.149389, 38.051739, 45.205833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247490, 37.677986, 45.102467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796376, 0.346184, -0.495926,
		0.552844, -0.084167, 0.829023,
		0.245253, -0.934384, -0.258414,
		27.321066, 37.397671, 45.024940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834244, 37.850662, 45.413509>,  <27.149389, 38.051739, 45.205833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834244, 37.850662, 45.413509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704082, 37.701244, 45.066044>,  <27.625986, 37.611595, 44.857563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704082, 37.701244, 45.066044>,  <27.834244, 37.850662, 45.413509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704082, 37.701244, 45.066044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655650, 0.572823, -0.491932,
		0.681349, -0.729616, 0.058517,
		-0.325402, -0.373544, -0.868665,
		27.606462, 37.589180, 44.805443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415375, 37.797848, 44.989422>,  <27.834244, 37.850662, 45.413509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415375, 37.797848, 44.989422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080111, 37.857037, 44.779434>,  <27.878952, 37.892548, 44.653442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080111, 37.857037, 44.779434>,  <28.415375, 37.797848, 44.989422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080111, 37.857037, 44.779434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440407, 0.751401, -0.491364,
		0.321753, -0.643041, -0.694963,
		-0.838163, 0.147969, -0.524965,
		27.828661, 37.901428, 44.621944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568594, 37.895012, 44.250698>,  <28.415375, 37.797848, 44.989422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568594, 37.895012, 44.250698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287138, 38.132832, 44.406338>,  <28.118265, 38.275524, 44.499722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287138, 38.132832, 44.406338>,  <28.568594, 37.895012, 44.250698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287138, 38.132832, 44.406338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477606, 0.801189, -0.360539,
		-0.526105, -0.067851, -0.847709,
		-0.703638, 0.594552, 0.389104,
		28.076046, 38.311195, 44.523067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693306, 38.428474, 43.736950>,  <28.568594, 37.895012, 44.250698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693306, 38.428474, 43.736950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480337, 38.556416, 44.050438>,  <28.352556, 38.633179, 44.238533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480337, 38.556416, 44.050438>,  <28.693306, 38.428474, 43.736950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480337, 38.556416, 44.050438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227468, 0.945868, -0.231499,
		-0.815344, 0.055017, -0.576356,
		-0.532421, 0.319854, 0.783723,
		28.320610, 38.652370, 44.285553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994461, 38.765381, 43.068954>,  <28.693306, 38.428474, 43.736950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994461, 38.765381, 43.068954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756754, 38.958210, 42.811443>,  <28.614130, 39.073906, 42.656937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756754, 38.958210, 42.811443>,  <28.994461, 38.765381, 43.068954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756754, 38.958210, 42.811443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304561, -0.605959, -0.734886,
		-0.744370, -0.632791, 0.213284,
		-0.594270, 0.482068, -0.643780,
		28.578472, 39.102829, 42.618309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009064, 38.298534, 42.486450>,  <28.994461, 38.765381, 43.068954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009064, 38.298534, 42.486450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814377, 38.627403, 42.368374>,  <28.697565, 38.824726, 42.297527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814377, 38.627403, 42.368374>,  <29.009064, 38.298534, 42.486450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814377, 38.627403, 42.368374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001525, -0.337114, -0.941463,
		-0.873559, -0.458674, 0.162825,
		-0.486715, 0.822175, -0.295188,
		28.668362, 38.874054, 42.279816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446880, 38.000092, 42.153606>,  <29.009064, 38.298534, 42.486450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446880, 38.000092, 42.153606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476833, 38.376564, 42.021805>,  <28.494804, 38.602448, 41.942722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476833, 38.376564, 42.021805>,  <28.446880, 38.000092, 42.153606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476833, 38.376564, 42.021805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010388, -0.329681, -0.944035,
		-0.997138, 0.074114, -0.014910,
		0.074882, 0.941179, -0.329508,
		28.499298, 38.658916, 41.922951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913435, 38.003860, 41.610470>,  <28.446880, 38.000092, 42.153606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913435, 38.003860, 41.610470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169422, 38.297283, 41.518967>,  <28.323013, 38.473339, 41.464066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169422, 38.297283, 41.518967>,  <27.913435, 38.003860, 41.610470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169422, 38.297283, 41.518967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045256, -0.333172, -0.941779,
		-0.767069, 0.592355, -0.246417,
		0.639967, 0.733561, -0.228758,
		28.361412, 38.517353, 41.450340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673735, 38.342575, 41.005871>,  <27.913435, 38.003860, 41.610470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673735, 38.342575, 41.005871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068497, 38.403996, 41.025635>,  <28.305353, 38.440849, 41.037495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068497, 38.403996, 41.025635>,  <27.673735, 38.342575, 41.005871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068497, 38.403996, 41.025635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110004, -0.416624, -0.902399,
		-0.117976, 0.896018, -0.428059,
		0.986905, 0.153550, 0.049414,
		28.364569, 38.450062, 41.040459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785820, 38.553886, 40.378582>,  <27.673735, 38.342575, 41.005871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785820, 38.553886, 40.378582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153120, 38.460728, 40.506695>,  <28.373499, 38.404835, 40.583565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153120, 38.460728, 40.506695>,  <27.785820, 38.553886, 40.378582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153120, 38.460728, 40.506695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140043, -0.565552, -0.812736,
		0.370417, 0.791146, -0.486702,
		0.918248, -0.232892, 0.320284,
		28.428595, 38.390862, 40.602779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167442, 38.646591, 39.827259>,  <27.785820, 38.553886, 40.378582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167442, 38.646591, 39.827259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403452, 38.417667, 40.055061>,  <28.545057, 38.280315, 40.191742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403452, 38.417667, 40.055061>,  <28.167442, 38.646591, 39.827259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403452, 38.417667, 40.055061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298901, -0.500420, -0.812550,
		0.750018, 0.649652, -0.124198,
		0.590026, -0.572305, 0.569505,
		28.580460, 38.245975, 40.225914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817858, 38.626244, 39.525658>,  <28.167442, 38.646591, 39.827259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817858, 38.626244, 39.525658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782682, 38.296741, 39.749691>,  <28.761578, 38.099041, 39.884113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782682, 38.296741, 39.749691>,  <28.817858, 38.626244, 39.525658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782682, 38.296741, 39.749691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240858, -0.563163, -0.790465,
		0.966568, 0.065390, 0.247931,
		-0.087937, -0.823754, 0.560086,
		28.756302, 38.049614, 39.917717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200878, 38.102440, 39.167324>,  <28.817858, 38.626244, 39.525658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200878, 38.102440, 39.167324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977610, 37.874088, 39.408173>,  <28.843649, 37.737080, 39.552681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977610, 37.874088, 39.408173>,  <29.200878, 38.102440, 39.167324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977610, 37.874088, 39.408173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202545, -0.609981, -0.766093,
		0.804626, -0.549566, 0.224844,
		-0.558169, -0.570877, 0.602118,
		28.810160, 37.702824, 39.588806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442631, 37.394123, 39.070457>,  <29.200878, 38.102440, 39.167324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442631, 37.394123, 39.070457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069818, 37.359501, 39.211212>,  <28.846130, 37.338726, 39.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069818, 37.359501, 39.211212>,  <29.442631, 37.394123, 39.070457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069818, 37.359501, 39.211212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214168, -0.651747, -0.727569,
		0.292320, -0.753481, 0.588911,
		-0.932030, -0.086558, 0.351890,
		28.790209, 37.333534, 39.316780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403419, 36.756340, 39.275730>,  <29.442631, 37.394123, 39.070457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403419, 36.756340, 39.275730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042280, 36.904816, 39.188938>,  <28.825596, 36.993900, 39.136864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042280, 36.904816, 39.188938>,  <29.403419, 36.756340, 39.275730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042280, 36.904816, 39.188938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048311, -0.589044, -0.806655,
		-0.427235, -0.717805, 0.549751,
		-0.902849, 0.371190, -0.216982,
		28.771425, 37.016174, 39.123844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032909, 36.204868, 39.021847>,  <29.403419, 36.756340, 39.275730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032909, 36.204868, 39.021847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756804, 36.471752, 38.909866>,  <28.591141, 36.631882, 38.842678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756804, 36.471752, 38.909866>,  <29.032909, 36.204868, 39.021847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756804, 36.471752, 38.909866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313239, -0.624320, -0.715615,
		-0.652245, -0.406268, 0.639939,
		-0.690259, 0.667211, -0.279951,
		28.549725, 36.671913, 38.825882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329847, 35.823830, 38.971500>,  <29.032909, 36.204868, 39.021847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329847, 35.823830, 38.971500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343588, 36.167313, 38.766975>,  <28.351831, 36.373402, 38.644260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343588, 36.167313, 38.766975>,  <28.329847, 35.823830, 38.971500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343588, 36.167313, 38.766975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385854, -0.460553, -0.799380,
		-0.921920, 0.224751, 0.315516,
		0.034349, 0.858707, -0.511314,
		28.353893, 36.424927, 38.613583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704464, 35.873386, 38.692909>,  <28.329847, 35.823830, 38.971500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704464, 35.873386, 38.692909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905043, 36.140175, 38.472473>,  <28.025391, 36.300247, 38.340214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905043, 36.140175, 38.472473>,  <27.704464, 35.873386, 38.692909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905043, 36.140175, 38.472473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302329, -0.461723, -0.833912,
		-0.810645, 0.584774, -0.029886,
		0.501449, 0.666972, -0.551088,
		28.055477, 36.340267, 38.307148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264627, 35.868217, 38.077248>,  <27.704464, 35.873386, 38.692909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264627, 35.868217, 38.077248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602541, 36.049187, 37.962948>,  <27.805290, 36.157768, 37.894367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602541, 36.049187, 37.962948>,  <27.264627, 35.868217, 38.077248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602541, 36.049187, 37.962948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116729, -0.365337, -0.923527,
		-0.522218, 0.813538, -0.255821,
		0.844786, 0.452421, -0.285749,
		27.855976, 36.184914, 37.877224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140289, 36.250877, 37.547649>,  <27.264627, 35.868217, 38.077248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140289, 36.250877, 37.547649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528999, 36.161434, 37.517567>,  <27.762224, 36.107769, 37.499516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528999, 36.161434, 37.517567>,  <27.140289, 36.250877, 37.547649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528999, 36.161434, 37.517567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164204, -0.412195, -0.896176,
		0.169392, 0.883230, -0.437277,
		0.971773, -0.223608, -0.075208,
		27.820532, 36.094353, 37.495003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244078, 36.502415, 36.875370>,  <27.140289, 36.250877, 37.547649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244078, 36.502415, 36.875370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552708, 36.264114, 36.964592>,  <27.737886, 36.121136, 37.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552708, 36.264114, 36.964592>,  <27.244078, 36.502415, 36.875370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552708, 36.264114, 36.964592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052141, -0.408692, -0.911182,
		0.633996, 0.691416, -0.346401,
		0.771577, -0.595747, 0.223058,
		27.784182, 36.085392, 37.031509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561970, 36.504498, 36.305332>,  <27.244078, 36.502415, 36.875370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561970, 36.504498, 36.305332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722673, 36.195282, 36.501698>,  <27.819096, 36.009754, 36.619518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722673, 36.195282, 36.501698>,  <27.561970, 36.504498, 36.305332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722673, 36.195282, 36.501698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065374, -0.558926, -0.826636,
		0.913408, 0.300017, -0.275092,
		0.401761, -0.773040, 0.490914,
		27.843203, 35.963371, 36.648972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955915, 36.186855, 35.830959>,  <27.561970, 36.504498, 36.305332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955915, 36.186855, 35.830959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925100, 35.903538, 36.111641>,  <27.906612, 35.733547, 36.280048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925100, 35.903538, 36.111641>,  <27.955915, 36.186855, 35.830959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925100, 35.903538, 36.111641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287726, -0.658055, -0.695829,
		0.954609, -0.255501, -0.153102,
		-0.077035, -0.708296, 0.701699,
		27.901989, 35.691048, 36.322151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338055, 35.635159, 35.548409>,  <27.955915, 36.186855, 35.830959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338055, 35.635159, 35.548409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082687, 35.506630, 35.828171>,  <27.929466, 35.429512, 35.996029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082687, 35.506630, 35.828171>,  <28.338055, 35.635159, 35.548409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082687, 35.506630, 35.828171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476493, -0.548629, -0.686994,
		0.604462, -0.771854, 0.197148,
		-0.638420, -0.321322, 0.699408,
		27.891161, 35.410233, 36.037994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318047, 34.895195, 35.620190>,  <28.338055, 35.635159, 35.548409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318047, 34.895195, 35.620190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960226, 35.049736, 35.710091>,  <27.745535, 35.142460, 35.764030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960226, 35.049736, 35.710091>,  <28.318047, 34.895195, 35.620190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960226, 35.049736, 35.710091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396478, -0.453723, -0.798086,
		-0.206365, -0.803037, 0.559057,
		-0.894549, 0.386351, 0.224754,
		27.691862, 35.165642, 35.777515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859598, 34.455330, 36.038654>,  <28.318047, 34.895195, 35.620190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859598, 34.455330, 36.038654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041164, 34.100880, 36.001255>,  <29.150105, 33.888210, 35.978817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041164, 34.100880, 36.001255>,  <28.859598, 34.455330, 36.038654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041164, 34.100880, 36.001255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667299, 0.268524, 0.694699,
		-0.590485, -0.377725, 0.713198,
		0.453916, -0.886126, -0.093496,
		29.177340, 33.835041, 35.973206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825245, 34.083099, 36.679825>,  <28.859598, 34.455330, 36.038654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825245, 34.083099, 36.679825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149197, 34.004707, 36.458668>,  <29.343567, 33.957672, 36.325974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149197, 34.004707, 36.458668>,  <28.825245, 34.083099, 36.679825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149197, 34.004707, 36.458668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567156, 0.502257, 0.652742,
		0.149770, -0.842217, 0.517918,
		0.809879, -0.195980, -0.552892,
		29.392160, 33.945915, 36.292801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370964, 33.920990, 37.095993>,  <28.825245, 34.083099, 36.679825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370964, 33.920990, 37.095993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532713, 34.067883, 36.760941>,  <29.629763, 34.156017, 36.559910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532713, 34.067883, 36.760941>,  <29.370964, 33.920990, 37.095993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532713, 34.067883, 36.760941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656919, 0.520604, 0.545371,
		0.636350, -0.770788, -0.030724,
		0.404370, 0.367230, -0.837632,
		29.654024, 34.178051, 36.509651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073517, 33.727776, 37.008083>,  <29.370964, 33.920990, 37.095993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073517, 33.727776, 37.008083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959194, 34.092888, 36.891361>,  <29.890600, 34.311954, 36.821327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959194, 34.092888, 36.891361>,  <30.073517, 33.727776, 37.008083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959194, 34.092888, 36.891361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547971, 0.405480, 0.731651,
		0.786156, 0.049210, -0.616066,
		-0.285807, 0.912778, -0.291805,
		29.873451, 34.366722, 36.803818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724232, 34.140606, 36.855747>,  <30.073517, 33.727776, 37.008083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724232, 34.140606, 36.855747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392225, 34.302017, 37.009754>,  <30.193022, 34.398865, 37.102158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392225, 34.302017, 37.009754>,  <30.724232, 34.140606, 36.855747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392225, 34.302017, 37.009754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522035, 0.319049, 0.791004,
		0.196352, 0.857539, -0.475471,
		-0.830015, 0.403528, 0.385020,
		30.143221, 34.423077, 37.125259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717779, 34.920383, 37.008648>,  <30.724232, 34.140606, 36.855747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717779, 34.920383, 37.008648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492556, 34.699848, 37.254898>,  <30.357422, 34.567528, 37.402649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492556, 34.699848, 37.254898>,  <30.717779, 34.920383, 37.008648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492556, 34.699848, 37.254898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646085, 0.170829, 0.743903,
		-0.515306, 0.816608, 0.260022,
		-0.563057, -0.551334, 0.615628,
		30.323639, 34.534447, 37.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462111, 35.346577, 37.467819>,  <30.717779, 34.920383, 37.008648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462111, 35.346577, 37.467819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534204, 34.982071, 37.615940>,  <30.577461, 34.763367, 37.704811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534204, 34.982071, 37.615940>,  <30.462111, 35.346577, 37.467819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534204, 34.982071, 37.615940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620085, 0.397497, 0.676381,
		-0.763551, 0.107710, 0.636701,
		0.180234, -0.911260, 0.370299,
		30.588274, 34.708694, 37.727028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338634, 35.271935, 38.164371>,  <30.462111, 35.346577, 37.467819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338634, 35.271935, 38.164371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602055, 34.978951, 38.095306>,  <30.760107, 34.803162, 38.053867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602055, 34.978951, 38.095306>,  <30.338634, 35.271935, 38.164371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602055, 34.978951, 38.095306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464004, 0.214581, 0.859451,
		-0.592463, -0.646109, 0.481177,
		0.658550, -0.732460, -0.172666,
		30.799620, 34.759212, 38.043507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402023, 34.876091, 38.849827>,  <30.338634, 35.271935, 38.164371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402023, 34.876091, 38.849827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723164, 34.745449, 38.650326>,  <30.915848, 34.667065, 38.530624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723164, 34.745449, 38.650326>,  <30.402023, 34.876091, 38.849827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723164, 34.745449, 38.650326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536736, 0.031826, 0.843150,
		-0.259505, -0.944624, 0.200854,
		0.802852, -0.326607, -0.498755,
		30.964020, 34.647469, 38.500698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656139, 34.345779, 39.200077>,  <30.402023, 34.876091, 38.849827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656139, 34.345779, 39.200077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979509, 34.470337, 39.000286>,  <31.173532, 34.545071, 38.880413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979509, 34.470337, 39.000286>,  <30.656139, 34.345779, 39.200077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979509, 34.470337, 39.000286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572242, -0.217159, 0.790810,
		0.137791, -0.925134, -0.353752,
		0.808426, 0.311398, -0.499478,
		31.222036, 34.563755, 38.850441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093264, 33.826611, 39.205086>,  <30.656139, 34.345779, 39.200077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093264, 33.826611, 39.205086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321232, 34.148716, 39.139671>,  <31.458014, 34.341980, 39.100422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321232, 34.148716, 39.139671>,  <31.093264, 33.826611, 39.205086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321232, 34.148716, 39.139671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537474, -0.214783, 0.815469,
		0.621540, -0.552651, -0.555216,
		0.569920, 0.805261, -0.163540,
		31.492208, 34.390293, 39.090611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704208, 33.592052, 39.180191>,  <31.093264, 33.826611, 39.205086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704208, 33.592052, 39.180191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763737, 33.978458, 39.264732>,  <31.799454, 34.210300, 39.315456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763737, 33.978458, 39.264732>,  <31.704208, 33.592052, 39.180191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763737, 33.978458, 39.264732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580599, -0.258376, 0.772105,
		0.800473, 0.007809, -0.599318,
		0.148820, 0.966013, 0.211357,
		31.808382, 34.268261, 39.328140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372021, 33.530354, 39.311619>,  <31.704208, 33.592052, 39.180191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372021, 33.530354, 39.311619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267601, 33.893414, 39.443085>,  <32.204948, 34.111252, 39.521965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267601, 33.893414, 39.443085>,  <32.372021, 33.530354, 39.311619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267601, 33.893414, 39.443085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632086, -0.096608, 0.768853,
		0.729603, 0.408454, -0.548494,
		-0.261052, 0.907652, 0.328663,
		32.189285, 34.165710, 39.541683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010170, 33.913906, 39.632736>,  <32.372021, 33.530354, 39.311619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010170, 33.913906, 39.632736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706165, 34.125870, 39.783245>,  <32.523762, 34.253048, 39.873550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706165, 34.125870, 39.783245>,  <33.010170, 33.913906, 39.632736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706165, 34.125870, 39.783245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391187, -0.089346, 0.915964,
		0.519000, 0.843332, -0.139391,
		-0.760008, 0.529913, 0.376271,
		32.478165, 34.284843, 39.896126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361412, 34.549747, 39.955231>,  <33.010170, 33.913906, 39.632736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361412, 34.549747, 39.955231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016850, 34.471584, 40.142757>,  <32.810112, 34.424686, 40.255276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016850, 34.471584, 40.142757>,  <33.361412, 34.549747, 39.955231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016850, 34.471584, 40.142757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491099, -0.084901, 0.866957,
		-0.129605, 0.977041, 0.169098,
		-0.861408, -0.195406, 0.468820,
		32.758427, 34.412964, 40.283401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494343, 35.020737, 40.479439>,  <33.361412, 34.549747, 39.955231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494343, 35.020737, 40.479439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186947, 34.805164, 40.617416>,  <33.002510, 34.675823, 40.700203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186947, 34.805164, 40.617416>,  <33.494343, 35.020737, 40.479439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186947, 34.805164, 40.617416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472452, -0.114354, 0.873906,
		-0.431527, 0.834554, 0.342497,
		-0.768488, -0.538928, 0.344940,
		32.956402, 34.643486, 40.720898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276073, 35.260326, 41.232986>,  <33.494343, 35.020737, 40.479439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276073, 35.260326, 41.232986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149513, 34.885155, 41.176170>,  <33.073578, 34.660049, 41.142082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149513, 34.885155, 41.176170>,  <33.276073, 35.260326, 41.232986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149513, 34.885155, 41.176170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325932, -0.248102, 0.912258,
		-0.890876, 0.242342, 0.384201,
		-0.316399, -0.937932, -0.142042,
		33.054592, 34.603775, 41.133556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860226, 35.146851, 41.806499>,  <33.276073, 35.260326, 41.232986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860226, 35.146851, 41.806499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981472, 34.796429, 41.656483>,  <33.054218, 34.586178, 41.566475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981472, 34.796429, 41.656483>,  <32.860226, 35.146851, 41.806499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981472, 34.796429, 41.656483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243418, -0.309320, 0.919276,
		-0.921341, -0.369938, 0.119487,
		0.303116, -0.876052, -0.375039,
		33.072407, 34.533611, 41.543972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497696, 34.630379, 42.186855>,  <32.860226, 35.146851, 41.806499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497696, 34.630379, 42.186855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809464, 34.443626, 42.019749>,  <32.996525, 34.331577, 41.919487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809464, 34.443626, 42.019749>,  <32.497696, 34.630379, 42.186855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809464, 34.443626, 42.019749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172992, -0.480513, 0.859756,
		-0.602143, -0.742382, -0.293755,
		0.779421, -0.466879, -0.417764,
		33.043289, 34.303562, 41.894421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479019, 33.975906, 42.534672>,  <32.497696, 34.630379, 42.186855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479019, 33.975906, 42.534672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853317, 33.985004, 42.393898>,  <33.077896, 33.990463, 42.309433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853317, 33.985004, 42.393898>,  <32.479019, 33.975906, 42.534672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853317, 33.985004, 42.393898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306586, -0.545685, 0.779893,
		-0.174304, -0.837681, -0.517598,
		0.935747, 0.022750, -0.351936,
		33.134041, 33.991829, 42.288319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600060, 33.313900, 42.455746>,  <32.479019, 33.975906, 42.534672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600060, 33.313900, 42.455746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953442, 33.498474, 42.488197>,  <33.165470, 33.609219, 42.507668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953442, 33.498474, 42.488197>,  <32.600060, 33.313900, 42.455746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953442, 33.498474, 42.488197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316036, -0.714770, 0.623879,
		0.345872, -0.525528, -0.777298,
		0.883456, 0.461436, 0.081133,
		33.218479, 33.636906, 42.512539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054756, 32.826374, 42.378696>,  <32.600060, 33.313900, 42.455746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054756, 32.826374, 42.378696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301521, 33.089111, 42.552120>,  <33.449581, 33.246754, 42.656174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301521, 33.089111, 42.552120>,  <33.054756, 32.826374, 42.378696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301521, 33.089111, 42.552120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390431, -0.733733, 0.556057,
		0.683356, -0.173767, -0.709104,
		0.616917, 0.656842, 0.433557,
		33.486595, 33.286163, 42.682186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694492, 32.460648, 42.377228>,  <33.054756, 32.826374, 42.378696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694492, 32.460648, 42.377228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704948, 32.749676, 42.653549>,  <33.711224, 32.923092, 42.819344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704948, 32.749676, 42.653549>,  <33.694492, 32.460648, 42.377228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704948, 32.749676, 42.653549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213537, -0.679130, 0.702271,
		0.976585, 0.129156, -0.172046,
		0.026139, 0.722566, 0.690808,
		33.712791, 32.966446, 42.860790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280354, 32.314789, 42.686447>,  <33.694492, 32.460648, 42.377228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280354, 32.314789, 42.686447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094238, 32.548965, 42.952007>,  <33.982571, 32.689472, 43.111343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094238, 32.548965, 42.952007>,  <34.280354, 32.314789, 42.686447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094238, 32.548965, 42.952007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271896, -0.619248, 0.736617,
		0.842366, 0.523251, 0.128948,
		-0.465286, 0.585441, 0.663904,
		33.954651, 32.724598, 43.151180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643181, 32.262173, 43.226398>,  <34.280354, 32.314789, 42.686447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643181, 32.262173, 43.226398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290802, 32.402271, 43.353687>,  <34.079376, 32.486332, 43.430061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290802, 32.402271, 43.353687>,  <34.643181, 32.262173, 43.226398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290802, 32.402271, 43.353687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054194, -0.593364, 0.803108,
		0.470108, 0.724738, 0.503739,
		-0.880943, 0.350248, 0.318222,
		34.026520, 32.507347, 43.449154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758400, 32.356487, 43.896751>,  <34.643181, 32.262173, 43.226398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758400, 32.356487, 43.896751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358692, 32.367428, 43.886066>,  <34.118866, 32.373993, 43.879654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358692, 32.367428, 43.886066>,  <34.758400, 32.356487, 43.896751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358692, 32.367428, 43.886066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037605, -0.577091, 0.815814,
		0.006898, 0.816222, 0.577698,
		-0.999269, 0.027351, -0.026714,
		34.058910, 32.375633, 43.878052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567646, 32.486980, 44.544704>,  <34.758400, 32.356487, 43.896751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567646, 32.486980, 44.544704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264973, 32.321159, 44.342487>,  <34.083370, 32.221664, 44.221157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264973, 32.321159, 44.342487>,  <34.567646, 32.486980, 44.544704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264973, 32.321159, 44.342487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171985, -0.619806, 0.765677,
		-0.630755, 0.666321, 0.397699,
		-0.756683, -0.414557, -0.505543,
		34.037968, 32.196793, 44.190823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001003, 32.509842, 45.035248>,  <34.567646, 32.486980, 44.544704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001003, 32.509842, 45.035248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925182, 32.230320, 44.759350>,  <33.879688, 32.062607, 44.593811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925182, 32.230320, 44.759350>,  <34.001003, 32.509842, 45.035248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925182, 32.230320, 44.759350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478766, -0.547526, 0.686293,
		-0.857236, 0.460313, -0.230779,
		-0.189552, -0.698804, -0.689741,
		33.868317, 32.020679, 44.552429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486279, 32.211586, 45.291286>,  <34.001003, 32.509842, 45.035248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486279, 32.211586, 45.291286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546726, 31.948460, 44.996143>,  <33.582993, 31.790583, 44.819057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546726, 31.948460, 44.996143>,  <33.486279, 32.211586, 45.291286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546726, 31.948460, 44.996143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479093, -0.701645, 0.527414,
		-0.864659, 0.273804, -0.421185,
		0.151115, -0.657820, -0.737860,
		33.592060, 31.751114, 44.774784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826065, 31.894760, 45.185654>,  <33.486279, 32.211586, 45.291286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826065, 31.894760, 45.185654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127769, 31.664555, 45.059246>,  <33.308792, 31.526432, 44.983402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127769, 31.664555, 45.059246>,  <32.826065, 31.894760, 45.185654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127769, 31.664555, 45.059246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225445, -0.679075, 0.698592,
		-0.616649, -0.455680, -0.641950,
		0.754267, -0.575511, -0.316020,
		33.354050, 31.491901, 44.964439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689087, 31.205669, 45.225780>,  <32.826065, 31.894760, 45.185654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689087, 31.205669, 45.225780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084976, 31.154810, 45.199608>,  <33.322510, 31.124294, 45.183903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084976, 31.154810, 45.199608>,  <32.689087, 31.205669, 45.225780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084976, 31.154810, 45.199608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046212, -0.717430, 0.695096,
		-0.135325, -0.684928, -0.715933,
		0.989723, -0.127149, -0.065434,
		33.381893, 31.116665, 45.179977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793343, 30.460611, 45.420040>,  <32.689087, 31.205669, 45.225780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793343, 30.460611, 45.420040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160225, 30.619482, 45.432556>,  <33.380356, 30.714804, 45.440067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160225, 30.619482, 45.432556>,  <32.793343, 30.460611, 45.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160225, 30.619482, 45.432556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248587, -0.631907, 0.734097,
		0.311338, -0.665542, -0.678324,
		0.917209, 0.397175, 0.031292,
		33.435387, 30.738634, 45.441944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295998, 29.854061, 45.533176>,  <32.793343, 30.460611, 45.420040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295998, 29.854061, 45.533176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429138, 30.206928, 45.666439>,  <33.509022, 30.418648, 45.746399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429138, 30.206928, 45.666439>,  <33.295998, 29.854061, 45.533176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429138, 30.206928, 45.666439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146286, -0.397333, 0.905939,
		0.931565, -0.252803, -0.261300,
		0.332848, 0.882166, 0.333160,
		33.528992, 30.471579, 45.766388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019463, 29.741215, 45.866081>,  <33.295998, 29.854061, 45.533176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019463, 29.741215, 45.866081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843040, 30.069973, 46.010281>,  <33.737186, 30.267227, 46.096802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843040, 30.069973, 46.010281>,  <34.019463, 29.741215, 45.866081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843040, 30.069973, 46.010281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113341, -0.347457, 0.930821,
		0.890294, 0.451403, 0.060093,
		-0.441056, 0.821893, 0.360501,
		33.710724, 30.316542, 46.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293617, 29.718452, 46.531101>,  <34.019463, 29.741215, 45.866081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293617, 29.718452, 46.531101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023258, 30.008802, 46.582130>,  <33.861042, 30.183012, 46.612747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023258, 30.008802, 46.582130>,  <34.293617, 29.718452, 46.531101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023258, 30.008802, 46.582130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085044, -0.248753, 0.964826,
		0.732076, 0.641271, 0.229862,
		-0.675893, 0.725875, 0.127570,
		33.820492, 30.226564, 46.620403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522274, 30.098673, 47.080097>,  <34.293617, 29.718452, 46.531101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522274, 30.098673, 47.080097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123779, 30.121737, 47.054211>,  <33.884682, 30.135574, 47.038677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123779, 30.121737, 47.054211>,  <34.522274, 30.098673, 47.080097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123779, 30.121737, 47.054211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078421, -0.281556, 0.956335,
		0.036919, 0.957811, 0.285018,
		-0.996236, 0.057659, -0.064718,
		33.824909, 30.139034, 47.034794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330330, 30.264832, 47.671413>,  <34.522274, 30.098673, 47.080097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330330, 30.264832, 47.671413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978542, 30.142246, 47.525753>,  <33.767467, 30.068695, 47.438354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978542, 30.142246, 47.525753>,  <34.330330, 30.264832, 47.671413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978542, 30.142246, 47.525753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193726, -0.468366, 0.862034,
		-0.434738, 0.828682, 0.352545,
		-0.879473, -0.306462, -0.364154,
		33.714699, 30.050308, 47.416508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900887, 30.531956, 48.181915>,  <34.330330, 30.264832, 47.671413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900887, 30.531956, 48.181915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744591, 30.219141, 47.987701>,  <33.650814, 30.031452, 47.871174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744591, 30.219141, 47.987701>,  <33.900887, 30.531956, 48.181915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744591, 30.219141, 47.987701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021257, -0.519664, 0.854107,
		-0.920258, 0.344050, 0.186427,
		-0.390735, -0.782035, -0.485538,
		33.627369, 29.984529, 47.842041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258457, 30.297768, 48.688557>,  <33.900887, 30.531956, 48.181915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258457, 30.297768, 48.688557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331917, 29.998749, 48.433228>,  <33.375992, 29.819338, 48.280029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331917, 29.998749, 48.433228>,  <33.258457, 30.297768, 48.688557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331917, 29.998749, 48.433228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021549, -0.646144, 0.762911,
		-0.982756, -0.153860, -0.102552,
		0.183645, -0.747546, -0.638318,
		33.387009, 29.774485, 48.241734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802929, 29.719793, 49.043045>,  <33.258457, 30.297768, 48.688557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802929, 29.719793, 49.043045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075775, 29.566189, 48.794125>,  <33.239483, 29.474026, 48.644772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075775, 29.566189, 48.794125>,  <32.802929, 29.719793, 49.043045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075775, 29.566189, 48.794125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181842, -0.735206, 0.652997,
		-0.708273, -0.558581, -0.431668,
		0.682116, -0.384005, -0.622300,
		33.280407, 29.450987, 48.607433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630596, 28.943409, 48.942833>,  <32.802929, 29.719793, 49.043045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630596, 28.943409, 48.942833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012943, 28.998291, 48.838913>,  <33.242352, 29.031221, 48.776562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012943, 28.998291, 48.838913>,  <32.630596, 28.943409, 48.942833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012943, 28.998291, 48.838913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261470, -0.800540, 0.539230,
		-0.133992, -0.583361, -0.801084,
		0.955866, 0.137207, -0.259798,
		33.299702, 29.039454, 48.760975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922352, 28.260206, 48.832180>,  <32.630596, 28.943409, 48.942833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922352, 28.260206, 48.832180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261482, 28.467672, 48.876328>,  <33.464958, 28.592152, 48.902817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261482, 28.467672, 48.876328>,  <32.922352, 28.260206, 48.832180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261482, 28.467672, 48.876328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404523, -0.767171, 0.497806,
		0.342866, -0.377405, -0.860238,
		0.847823, 0.518667, 0.110368,
		33.515831, 28.623272, 48.909439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435421, 27.784357, 48.697361>,  <32.922352, 28.260206, 48.832180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435421, 27.784357, 48.697361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632439, 28.071760, 48.893787>,  <33.750648, 28.244202, 49.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632439, 28.071760, 48.893787>,  <33.435421, 27.784357, 48.697361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632439, 28.071760, 48.893787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514009, -0.695500, 0.502070,
		0.702275, 0.005117, -0.711887,
		0.492549, 0.718507, 0.491063,
		33.780205, 28.287312, 49.041107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181221, 27.638273, 48.590374>,  <33.435421, 27.784357, 48.697361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181221, 27.638273, 48.590374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173992, 27.891430, 48.899986>,  <34.169655, 28.043324, 49.085754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173992, 27.891430, 48.899986>,  <34.181221, 27.638273, 48.590374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173992, 27.891430, 48.899986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681440, -0.558705, 0.472745,
		0.731651, 0.535999, -0.421179,
		-0.018076, 0.632893, 0.774028,
		34.168568, 28.081297, 49.132195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844296, 27.747305, 48.780582>,  <34.181221, 27.638273, 48.590374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844296, 27.747305, 48.780582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619209, 27.841280, 49.097607>,  <34.484158, 27.897665, 49.287823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619209, 27.841280, 49.097607>,  <34.844296, 27.747305, 48.780582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619209, 27.841280, 49.097607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505748, -0.660548, 0.554883,
		0.653888, 0.713079, 0.252883,
		-0.562716, 0.234936, 0.792563,
		34.450394, 27.911760, 49.335377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328659, 27.808441, 49.265938>,  <34.844296, 27.747305, 48.780582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328659, 27.808441, 49.265938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976429, 27.734627, 49.440536>,  <34.765091, 27.690338, 49.545296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976429, 27.734627, 49.440536>,  <35.328659, 27.808441, 49.265938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976429, 27.734627, 49.440536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450840, -0.610031, 0.651618,
		0.146031, 0.770591, 0.620375,
		-0.880578, -0.184534, 0.436496,
		34.712257, 27.679266, 49.571484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469040, 27.808928, 49.982441>,  <35.328659, 27.808441, 49.265938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469040, 27.808928, 49.982441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110222, 27.634991, 49.950909>,  <34.894932, 27.530628, 49.931988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110222, 27.634991, 49.950909>,  <35.469040, 27.808928, 49.982441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110222, 27.634991, 49.950909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253723, -0.652812, 0.713766,
		-0.361840, 0.620281, 0.695934,
		-0.897049, -0.434844, -0.078834,
		34.841106, 27.504538, 49.927258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103722, 27.831978, 50.687698>,  <35.469040, 27.808928, 49.982441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103722, 27.831978, 50.687698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963455, 27.546980, 50.444592>,  <34.879295, 27.375980, 50.298725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963455, 27.546980, 50.444592>,  <35.103722, 27.831978, 50.687698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963455, 27.546980, 50.444592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016680, -0.644125, 0.764738,
		-0.936352, 0.278307, 0.213989,
		-0.350667, -0.712495, -0.607770,
		34.858253, 27.333231, 50.262260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926624, 27.301607, 51.095600>,  <35.103722, 27.831978, 50.687698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926624, 27.301607, 51.095600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903191, 27.105331, 50.747856>,  <34.889130, 26.987566, 50.539211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903191, 27.105331, 50.747856>,  <34.926624, 27.301607, 51.095600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903191, 27.105331, 50.747856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118629, -0.868109, 0.481990,
		-0.991209, -0.074892, 0.109072,
		-0.058589, -0.490691, -0.869361,
		34.885612, 26.958124, 50.487049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349720, 26.811207, 51.090134>,  <34.926624, 27.301607, 51.095600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349720, 26.811207, 51.090134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680187, 26.731787, 50.879223>,  <34.878468, 26.684135, 50.752678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680187, 26.731787, 50.879223>,  <34.349720, 26.811207, 51.090134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680187, 26.731787, 50.879223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141843, -0.832412, 0.535697,
		-0.545274, -0.517367, -0.659550,
		0.826170, -0.198550, -0.527278,
		34.928040, 26.672222, 50.721039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166527, 27.421860, 51.571369>,  <34.349720, 26.811207, 51.090134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166527, 27.421860, 51.571369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037693, 27.531368, 51.933876>,  <33.960392, 27.597073, 52.151379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037693, 27.531368, 51.933876>,  <34.166527, 27.421860, 51.571369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037693, 27.531368, 51.933876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618991, -0.785209, 0.017214,
		0.716319, -0.555425, 0.422362,
		-0.322082, 0.273769, 0.906264,
		33.941067, 27.613499, 52.205753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182537, 26.893959, 52.065075>,  <34.166527, 27.421860, 51.571369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182537, 26.893959, 52.065075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883045, 27.144407, 52.152145>,  <33.703350, 27.294676, 52.204388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883045, 27.144407, 52.152145>,  <34.182537, 26.893959, 52.065075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883045, 27.144407, 52.152145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635858, -0.771180, 0.031096,
		0.187334, -0.115126, 0.975526,
		-0.748726, 0.626121, 0.217672,
		33.658428, 27.332243, 52.217445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903008, 26.633593, 52.656498>,  <34.182537, 26.893959, 52.065075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903008, 26.633593, 52.656498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642246, 26.871378, 52.468185>,  <33.485790, 27.014050, 52.355198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642246, 26.871378, 52.468185>,  <33.903008, 26.633593, 52.656498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642246, 26.871378, 52.468185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660058, -0.750462, -0.033629,
		-0.373296, 0.288821, 0.881608,
		-0.651900, 0.594466, -0.470783,
		33.446674, 27.049717, 52.326950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822765, 26.057367, 52.176323>,  <33.903008, 26.633593, 52.656498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822765, 26.057367, 52.176323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780651, 26.160061, 51.792030>,  <33.755383, 26.221676, 51.561455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780651, 26.160061, 51.792030>,  <33.822765, 26.057367, 52.176323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780651, 26.160061, 51.792030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987542, 0.140602, -0.070650,
		0.116942, -0.956200, -0.268338,
		-0.105285, 0.256733, -0.960731,
		33.749065, 26.237082, 51.503811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671440, 25.683435, 51.561199>,  <33.822765, 26.057367, 52.176323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671440, 25.683435, 51.561199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997246, 25.451441, 51.566528>,  <34.192730, 25.312244, 51.569725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997246, 25.451441, 51.566528>,  <33.671440, 25.683435, 51.561199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997246, 25.451441, 51.566528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086657, 0.098930, -0.991314,
		0.573632, 0.808596, 0.130840,
		0.814517, -0.579987, 0.013321,
		34.241600, 25.277445, 51.570526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308571, 25.974783, 51.132511>,  <33.671440, 25.683435, 51.561199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308571, 25.974783, 51.132511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313995, 25.575655, 51.158360>,  <34.317249, 25.336178, 51.173870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313995, 25.575655, 51.158360>,  <34.308571, 25.974783, 51.132511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313995, 25.575655, 51.158360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097920, -0.062993, -0.993199,
		0.995102, 0.019798, 0.096852,
		0.013562, -0.997818, 0.064623,
		34.318066, 25.276310, 51.177746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866196, 25.550600, 50.691341>,  <34.308571, 25.974783, 51.132511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866196, 25.550600, 50.691341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614628, 25.248907, 50.766815>,  <34.463688, 25.067892, 50.812099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614628, 25.248907, 50.766815>,  <34.866196, 25.550600, 50.691341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614628, 25.248907, 50.766815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211369, -0.399413, -0.892072,
		0.748190, -0.521156, 0.410618,
		-0.628915, -0.754231, 0.188681,
		34.425953, 25.022638, 50.823418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222210, 24.796955, 50.643131>,  <34.866196, 25.550600, 50.691341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222210, 24.796955, 50.643131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846058, 24.824221, 50.509842>,  <34.620365, 24.840580, 50.429867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846058, 24.824221, 50.509842>,  <35.222210, 24.796955, 50.643131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846058, 24.824221, 50.509842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253492, -0.512755, -0.820258,
		-0.226775, -0.855825, 0.464906,
		-0.940380, 0.068164, -0.333225,
		34.563942, 24.844669, 50.409874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993500, 24.149071, 50.346771>,  <35.222210, 24.796955, 50.643131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993500, 24.149071, 50.346771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772503, 24.423185, 50.156979>,  <34.639904, 24.587654, 50.043102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772503, 24.423185, 50.156979>,  <34.993500, 24.149071, 50.346771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772503, 24.423185, 50.156979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198846, -0.444451, -0.873455,
		-0.809449, -0.576929, 0.109291,
		-0.552496, 0.685285, -0.474481,
		34.606754, 24.628771, 50.014633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796867, 23.956469, 49.662426>,  <34.993500, 24.149071, 50.346771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796867, 23.956469, 49.662426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692196, 24.335508, 49.589130>,  <34.629395, 24.562933, 49.545155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692196, 24.335508, 49.589130>,  <34.796867, 23.956469, 49.662426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692196, 24.335508, 49.589130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081926, -0.210979, -0.974051,
		-0.961672, -0.239873, 0.132841,
		-0.261676, 0.947601, -0.183241,
		34.613693, 24.619789, 49.534157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195328, 24.000839, 49.190277>,  <34.796867, 23.956469, 49.662426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195328, 24.000839, 49.190277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362564, 24.363550, 49.168533>,  <34.462906, 24.581177, 49.155487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362564, 24.363550, 49.168533>,  <34.195328, 24.000839, 49.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362564, 24.363550, 49.168533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262230, 0.063181, -0.962935,
		-0.869731, 0.416854, 0.264199,
		0.418096, 0.906775, -0.054361,
		34.487991, 24.635582, 49.152225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709763, 24.385992, 48.877480>,  <34.195328, 24.000839, 49.190277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709763, 24.385992, 48.877480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041698, 24.600634, 48.816261>,  <34.240860, 24.729418, 48.779530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041698, 24.600634, 48.816261>,  <33.709763, 24.385992, 48.877480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041698, 24.600634, 48.816261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253732, 0.118594, -0.959977,
		-0.496976, 0.835460, 0.234567,
		0.829841, 0.536602, -0.153044,
		34.290649, 24.761614, 48.770348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470474, 24.883492, 48.476856>,  <33.709763, 24.385992, 48.877480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470474, 24.883492, 48.476856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867622, 24.902779, 48.433254>,  <34.105911, 24.914351, 48.407093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867622, 24.902779, 48.433254>,  <33.470474, 24.883492, 48.476856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867622, 24.902779, 48.433254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119181, 0.412741, -0.903017,
		0.001448, 0.909571, 0.415546,
		0.992871, 0.048218, -0.109002,
		34.165485, 24.917244, 48.400555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676369, 25.524321, 48.101830>,  <33.470474, 24.883492, 48.476856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676369, 25.524321, 48.101830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984619, 25.278183, 48.035507>,  <34.169567, 25.130501, 47.995712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984619, 25.278183, 48.035507>,  <33.676369, 25.524321, 48.101830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984619, 25.278183, 48.035507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160969, 0.439682, -0.883611,
		0.616625, 0.654242, 0.437881,
		0.770624, -0.615342, -0.165806,
		34.215805, 25.093580, 47.985764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192207, 25.905689, 47.948448>,  <33.676369, 25.524321, 48.101830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192207, 25.905689, 47.948448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281475, 25.553215, 47.781738>,  <34.335033, 25.341730, 47.681713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281475, 25.553215, 47.781738>,  <34.192207, 25.905689, 47.948448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281475, 25.553215, 47.781738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175571, 0.456906, -0.872016,
		0.958838, 0.121431, 0.256677,
		0.223167, -0.881187, -0.416779,
		34.348427, 25.288858, 47.656704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657349, 26.131561, 47.557667>,  <34.192207, 25.905689, 47.948448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657349, 26.131561, 47.557667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581432, 25.771702, 47.400383>,  <34.535881, 25.555786, 47.306011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581432, 25.771702, 47.400383>,  <34.657349, 26.131561, 47.557667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581432, 25.771702, 47.400383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178640, 0.362162, -0.914837,
		0.965436, -0.243870, 0.091978,
		-0.189790, -0.899648, -0.393209,
		34.524494, 25.501808, 47.282421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140133, 25.961784, 47.112907>,  <34.657349, 26.131561, 47.557667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140133, 25.961784, 47.112907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817039, 25.758823, 46.992836>,  <34.623184, 25.637047, 46.920795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817039, 25.758823, 46.992836>,  <35.140133, 25.961784, 47.112907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817039, 25.758823, 46.992836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130008, 0.343324, -0.930176,
		0.575030, -0.790362, -0.211349,
		-0.807737, -0.507402, -0.300175,
		34.574718, 25.606604, 46.902782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324051, 25.756807, 46.482067>,  <35.140133, 25.961784, 47.112907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324051, 25.756807, 46.482067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933060, 25.682430, 46.442142>,  <34.698463, 25.637804, 46.418186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933060, 25.682430, 46.442142>,  <35.324051, 25.756807, 46.482067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933060, 25.682430, 46.442142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013012, 0.418959, -0.907912,
		0.210636, -0.888763, -0.407103,
		-0.977478, -0.185942, -0.099812,
		34.639816, 25.626648, 46.412197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191185, 25.254190, 45.937675>,  <35.324051, 25.756807, 46.482067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191185, 25.254190, 45.937675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856747, 25.466717, 45.992298>,  <34.656082, 25.594233, 46.025070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856747, 25.466717, 45.992298>,  <35.191185, 25.254190, 45.937675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856747, 25.466717, 45.992298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018671, 0.276345, -0.960877,
		-0.548265, -0.800836, -0.240971,
		-0.836096, 0.531315, 0.136558,
		34.605919, 25.626112, 46.033264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782303, 25.175611, 45.269672>,  <35.191185, 25.254190, 45.937675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782303, 25.175611, 45.269672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641308, 25.511862, 45.434158>,  <34.556709, 25.713612, 45.532848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641308, 25.511862, 45.434158>,  <34.782303, 25.175611, 45.269672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641308, 25.511862, 45.434158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074435, 0.463208, -0.883118,
		-0.932850, -0.280683, -0.225849,
		-0.352491, 0.840628, 0.411211,
		34.535561, 25.764050, 45.557522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352894, 25.420668, 44.773045>,  <34.782303, 25.175611, 45.269672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352894, 25.420668, 44.773045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410679, 25.735521, 45.012894>,  <34.445351, 25.924435, 45.156803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410679, 25.735521, 45.012894>,  <34.352894, 25.420668, 44.773045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410679, 25.735521, 45.012894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006646, 0.606737, -0.794875,
		-0.989488, 0.110846, 0.092884,
		0.144465, 0.787136, 0.599622,
		34.454018, 25.971663, 45.192780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878899, 25.892826, 44.634773>,  <34.352894, 25.420668, 44.773045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878899, 25.892826, 44.634773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114063, 26.131739, 44.852989>,  <34.255161, 26.275085, 44.983921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114063, 26.131739, 44.852989>,  <33.878899, 25.892826, 44.634773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114063, 26.131739, 44.852989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074878, 0.711691, -0.698491,
		-0.805454, 0.369800, 0.463133,
		0.587909, 0.597280, 0.545545,
		34.290436, 26.310923, 45.016651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584560, 26.591032, 44.620972>,  <33.878899, 25.892826, 44.634773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584560, 26.591032, 44.620972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975269, 26.633783, 44.695255>,  <34.209694, 26.659435, 44.739826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975269, 26.633783, 44.695255>,  <33.584560, 26.591032, 44.620972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975269, 26.633783, 44.695255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058056, 0.702282, -0.709527,
		-0.206256, 0.703830, 0.679766,
		0.976774, 0.106880, 0.185712,
		34.268303, 26.665848, 44.750969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672573, 27.356533, 44.696583>,  <33.584560, 26.591032, 44.620972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672573, 27.356533, 44.696583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010727, 27.179077, 44.577576>,  <34.213619, 27.072603, 44.506172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010727, 27.179077, 44.577576>,  <33.672573, 27.356533, 44.696583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010727, 27.179077, 44.577576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115327, 0.695428, -0.709281,
		0.521567, 0.565300, 0.639065,
		0.845380, -0.443639, -0.297518,
		34.264339, 27.045986, 44.488319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157284, 27.853165, 44.699917>,  <33.672573, 27.356533, 44.696583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157284, 27.853165, 44.699917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294132, 27.572796, 44.449585>,  <34.376240, 27.404575, 44.299385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294132, 27.572796, 44.449585>,  <34.157284, 27.853165, 44.699917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294132, 27.572796, 44.449585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094664, 0.636924, -0.765093,
		0.934876, 0.320997, 0.151553,
		0.342121, -0.700920, -0.625831,
		34.396767, 27.362520, 44.261837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422394, 28.240469, 44.218433>,  <34.157284, 27.853165, 44.699917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422394, 28.240469, 44.218433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393841, 27.876913, 44.054077>,  <34.376709, 27.658779, 43.955463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393841, 27.876913, 44.054077>,  <34.422394, 28.240469, 44.218433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393841, 27.876913, 44.054077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170524, 0.416993, -0.892770,
		0.982765, 0.006342, -0.184752,
		-0.071378, -0.908888, -0.410887,
		34.372429, 27.604246, 43.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839546, 28.233820, 43.642857>,  <34.422394, 28.240469, 44.218433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839546, 28.233820, 43.642857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575081, 27.940138, 43.581139>,  <34.416401, 27.763929, 43.544106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575081, 27.940138, 43.581139>,  <34.839546, 28.233820, 43.642857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575081, 27.940138, 43.581139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200961, 0.371461, -0.906439,
		0.722828, -0.568294, -0.393142,
		-0.661161, -0.734206, -0.154297,
		34.376732, 27.719875, 43.534851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953278, 28.107231, 42.906479>,  <34.839546, 28.233820, 43.642857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953278, 28.107231, 42.906479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613373, 27.934862, 43.027939>,  <34.409428, 27.831440, 43.100815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613373, 27.934862, 43.027939>,  <34.953278, 28.107231, 42.906479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613373, 27.934862, 43.027939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463010, 0.334728, -0.820718,
		0.252028, -0.838010, -0.483963,
		-0.849766, -0.430924, 0.303646,
		34.358444, 27.805584, 43.119034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678848, 27.674992, 42.383171>,  <34.953278, 28.107231, 42.906479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678848, 27.674992, 42.383171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379013, 27.795004, 42.619171>,  <34.199112, 27.867012, 42.760769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379013, 27.795004, 42.619171>,  <34.678848, 27.674992, 42.383171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379013, 27.795004, 42.619171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454467, 0.414756, -0.788313,
		-0.481224, -0.859045, -0.174542,
		-0.749589, 0.300031, 0.589998,
		34.154137, 27.885014, 42.796169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120201, 27.587463, 42.019600>,  <34.678848, 27.674992, 42.383171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120201, 27.587463, 42.019600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929657, 27.818235, 42.285000>,  <33.815331, 27.956697, 42.444241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929657, 27.818235, 42.285000>,  <34.120201, 27.587463, 42.019600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929657, 27.818235, 42.285000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626780, 0.306408, -0.716423,
		-0.616627, -0.757144, 0.215647,
		-0.476359, 0.576929, 0.663502,
		33.786751, 27.991314, 42.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367748, 27.483454, 41.901825>,  <34.120201, 27.587463, 42.019600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367748, 27.483454, 41.901825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417007, 27.833261, 42.089462>,  <33.446564, 28.043146, 42.202045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417007, 27.833261, 42.089462>,  <33.367748, 27.483454, 41.901825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417007, 27.833261, 42.089462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571492, 0.448940, -0.686913,
		-0.811315, -0.183495, 0.555065,
		0.123146, 0.874518, 0.469098,
		33.453953, 28.095617, 42.230190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771858, 27.776320, 41.913212>,  <33.367748, 27.483454, 41.901825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771858, 27.776320, 41.913212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000595, 28.099937, 41.967533>,  <33.137836, 28.294109, 42.000126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000595, 28.099937, 41.967533>,  <32.771858, 27.776320, 41.913212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000595, 28.099937, 41.967533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572549, 0.512145, -0.640231,
		-0.587525, 0.288359, 0.756084,
		0.571841, 0.809047, 0.135799,
		33.172146, 28.342651, 42.008274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305706, 28.249416, 42.191700>,  <32.771858, 27.776320, 41.913212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305706, 28.249416, 42.191700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612701, 28.460133, 42.045574>,  <32.796898, 28.586561, 41.957897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612701, 28.460133, 42.045574>,  <32.305706, 28.249416, 42.191700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612701, 28.460133, 42.045574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639344, 0.587283, -0.496324,
		-0.046915, 0.614485, 0.787532,
		0.767488, 0.526789, -0.365315,
		32.842949, 28.618170, 41.935978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970455, 28.865694, 42.134697>,  <32.305706, 28.249416, 42.191700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970455, 28.865694, 42.134697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299599, 28.878389, 41.907753>,  <32.497086, 28.886007, 41.771587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299599, 28.878389, 41.907753>,  <31.970455, 28.865694, 42.134697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299599, 28.878389, 41.907753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507589, 0.489909, -0.708761,
		0.255461, 0.871196, 0.419235,
		0.822857, 0.031738, -0.567362,
		32.546455, 28.887911, 41.737545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134556, 29.595287, 41.888485>,  <31.970455, 28.865694, 42.134697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134556, 29.595287, 41.888485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341057, 29.382677, 41.619869>,  <32.464958, 29.255112, 41.458702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341057, 29.382677, 41.619869>,  <32.134556, 29.595287, 41.888485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341057, 29.382677, 41.619869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218479, 0.676427, -0.703359,
		0.828098, 0.509830, 0.233083,
		0.516257, -0.531526, -0.671535,
		32.495934, 29.223219, 41.418407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561886, 30.016846, 41.538349>,  <32.134556, 29.595287, 41.888485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561886, 30.016846, 41.538349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562119, 29.710329, 41.281353>,  <32.562256, 29.526419, 41.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562119, 29.710329, 41.281353>,  <32.561886, 30.016846, 41.538349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562119, 29.710329, 41.281353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013141, 0.642433, -0.766229,
		0.999913, 0.008885, -0.009699,
		0.000577, -0.766290, -0.642494,
		32.562290, 29.480442, 41.088604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993862, 30.223499, 40.994831>,  <32.561886, 30.016846, 41.538349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993862, 30.223499, 40.994831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771652, 29.928467, 40.841282>,  <32.638325, 29.751448, 40.749153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771652, 29.928467, 40.841282>,  <32.993862, 30.223499, 40.994831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771652, 29.928467, 40.841282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092040, 0.513375, -0.853214,
		0.826388, -0.438653, -0.353082,
		-0.555528, -0.737584, -0.383873,
		32.604992, 29.707191, 40.726120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265263, 29.903542, 40.301899>,  <32.993862, 30.223499, 40.994831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265263, 29.903542, 40.301899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868740, 29.854214, 40.320225>,  <32.630825, 29.824617, 40.331223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868740, 29.854214, 40.320225>,  <33.265263, 29.903542, 40.301899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868740, 29.854214, 40.320225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106495, 0.547737, -0.829845,
		0.077238, -0.827513, -0.556109,
		-0.991309, -0.123318, 0.045820,
		32.571346, 29.817219, 40.333969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157066, 29.727137, 39.628773>,  <33.265263, 29.903542, 40.301899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157066, 29.727137, 39.628773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793846, 29.831953, 39.759483>,  <32.575916, 29.894842, 39.837910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793846, 29.831953, 39.759483>,  <33.157066, 29.727137, 39.628773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793846, 29.831953, 39.759483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093599, 0.633483, -0.768075,
		-0.408276, -0.728034, -0.550705,
		-0.908047, 0.262041, 0.326779,
		32.521431, 29.910566, 39.857517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738293, 29.600992, 39.089046>,  <33.157066, 29.727137, 39.628773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738293, 29.600992, 39.089046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562725, 29.871672, 39.325497>,  <32.457386, 30.034079, 39.467369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562725, 29.871672, 39.325497>,  <32.738293, 29.600992, 39.089046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562725, 29.871672, 39.325497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148761, 0.594078, -0.790533,
		-0.886127, -0.434916, -0.160085,
		-0.438918, 0.676698, 0.591127,
		32.431049, 30.074680, 39.502834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082272, 29.532253, 38.717022>,  <32.738293, 29.600992, 39.089046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082272, 29.532253, 38.717022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074223, 29.868160, 38.934052>,  <32.069393, 30.069706, 39.064270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074223, 29.868160, 38.934052>,  <32.082272, 29.532253, 38.717022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074223, 29.868160, 38.934052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352227, 0.501932, -0.789937,
		-0.935698, -0.207005, 0.285689,
		-0.020124, 0.839770, 0.542569,
		32.068184, 30.120090, 39.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561934, 29.928267, 38.474522>,  <32.082272, 29.532253, 38.717022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561934, 29.928267, 38.474522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784536, 30.194687, 38.673191>,  <31.918098, 30.354538, 38.792393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784536, 30.194687, 38.673191>,  <31.561934, 29.928267, 38.474522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784536, 30.194687, 38.673191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273212, 0.711246, -0.647675,
		-0.784638, 0.224739, 0.577785,
		0.556505, 0.666049, 0.496669,
		31.951488, 30.394501, 38.822193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186611, 30.417988, 38.504833>,  <31.561934, 29.928267, 38.474522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186611, 30.417988, 38.504833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514248, 30.617672, 38.617886>,  <31.710831, 30.737482, 38.685715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514248, 30.617672, 38.617886>,  <31.186611, 30.417988, 38.504833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514248, 30.617672, 38.617886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326177, 0.810563, -0.486413,
		-0.471909, 0.306230, 0.826756,
		0.819091, 0.499211, 0.282627,
		31.759975, 30.767435, 38.702675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963827, 31.155735, 38.756260>,  <31.186611, 30.417988, 38.504833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963827, 31.155735, 38.756260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336655, 31.144516, 38.611782>,  <31.560350, 31.137785, 38.525093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336655, 31.144516, 38.611782>,  <30.963827, 31.155735, 38.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336655, 31.144516, 38.611782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204123, 0.783028, -0.587538,
		0.299305, 0.621354, 0.724110,
		0.932068, -0.028045, -0.361197,
		31.616276, 31.136103, 38.503422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261564, 31.909948, 38.747349>,  <30.963827, 31.155735, 38.756260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261564, 31.909948, 38.747349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489809, 31.705978, 38.489857>,  <31.626755, 31.583597, 38.335361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489809, 31.705978, 38.489857>,  <31.261564, 31.909948, 38.747349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489809, 31.705978, 38.489857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005761, 0.786330, -0.617780,
		0.821201, 0.348803, 0.451626,
		0.570610, -0.509923, -0.643725,
		31.660992, 31.553001, 38.296738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828913, 32.362606, 38.655960>,  <31.261564, 31.909948, 38.747349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828913, 32.362606, 38.655960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863014, 32.105164, 38.351723>,  <31.883476, 31.950699, 38.169178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863014, 32.105164, 38.351723>,  <31.828913, 32.362606, 38.655960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863014, 32.105164, 38.351723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022826, 0.761914, -0.647276,
		0.996098, 0.072545, 0.050266,
		0.085255, -0.643603, -0.760597,
		31.888590, 31.912083, 38.123543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322018, 32.539440, 38.160172>,  <31.828913, 32.362606, 38.655960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322018, 32.539440, 38.160172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104744, 32.301304, 37.923351>,  <31.974380, 32.158421, 37.781258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104744, 32.301304, 37.923351>,  <32.322018, 32.539440, 38.160172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104744, 32.301304, 37.923351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051765, 0.727547, -0.684102,
		0.838020, -0.340942, -0.426006,
		-0.543179, -0.595343, -0.592050,
		31.941790, 32.122700, 37.745735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699554, 32.425869, 37.536377>,  <32.322018, 32.539440, 38.160172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699554, 32.425869, 37.536377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308449, 32.398365, 37.457138>,  <32.073784, 32.381863, 37.409595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308449, 32.398365, 37.457138>,  <32.699554, 32.425869, 37.536377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308449, 32.398365, 37.457138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093752, 0.701670, -0.706307,
		0.187567, -0.709176, -0.679624,
		-0.977768, -0.068763, -0.198097,
		32.015118, 32.377735, 37.397709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380356, 32.027538, 37.749668>,  <32.699554, 32.425869, 37.536377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380356, 32.027538, 37.749668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603886, 32.158485, 37.444893>,  <33.738003, 32.237053, 37.262028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603886, 32.158485, 37.444893>,  <33.380356, 32.027538, 37.749668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603886, 32.158485, 37.444893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770516, -0.544684, 0.331094,
		-0.306625, -0.772108, -0.556624,
		0.558825, 0.327366, -0.761936,
		33.771534, 32.256695, 37.216312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600254, 31.522913, 37.252289>,  <33.380356, 32.027538, 37.749668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600254, 31.522913, 37.252289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874096, 31.813850, 37.271442>,  <34.038399, 31.988413, 37.282936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874096, 31.813850, 37.271442>,  <33.600254, 31.522913, 37.252289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874096, 31.813850, 37.271442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671531, -0.654892, 0.346645,
		0.283491, -0.205156, -0.936773,
		0.684601, 0.727343, 0.047887,
		34.079475, 32.032055, 37.285809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237907, 31.229200, 36.944881>,  <33.600254, 31.522913, 37.252289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237907, 31.229200, 36.944881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355549, 31.548094, 37.155754>,  <34.426132, 31.739429, 37.282276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355549, 31.548094, 37.155754>,  <34.237907, 31.229200, 36.944881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355549, 31.548094, 37.155754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789025, -0.513803, 0.336818,
		0.539390, 0.316901, -0.780149,
		0.294105, 0.797233, 0.527183,
		34.443779, 31.787264, 37.313908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851898, 31.103319, 36.913494>,  <34.237907, 31.229200, 36.944881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851898, 31.103319, 36.913494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839931, 31.377270, 37.204712>,  <34.832752, 31.541641, 37.379444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839931, 31.377270, 37.204712>,  <34.851898, 31.103319, 36.913494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839931, 31.377270, 37.204712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718012, -0.492001, 0.492336,
		0.695387, 0.537474, -0.477030,
		-0.029919, 0.684877, 0.728044,
		34.830956, 31.582733, 37.423126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665318, 31.205633, 37.123772>,  <34.851898, 31.103319, 36.913494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665318, 31.205633, 37.123772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410839, 31.331240, 37.405666>,  <35.258152, 31.406603, 37.574802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410839, 31.331240, 37.405666>,  <35.665318, 31.205633, 37.123772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410839, 31.331240, 37.405666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560256, -0.439977, 0.701808,
		0.530446, 0.841318, 0.103982,
		-0.636193, 0.314014, 0.704737,
		35.219982, 31.425444, 37.617088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083778, 31.462385, 37.575840>,  <35.665318, 31.205633, 37.123772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083778, 31.462385, 37.575840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743343, 31.417847, 37.781071>,  <35.539082, 31.391123, 37.904209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743343, 31.417847, 37.781071>,  <36.083778, 31.462385, 37.575840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743343, 31.417847, 37.781071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504022, -0.446880, 0.739094,
		0.146987, 0.887637, 0.436457,
		-0.851091, -0.111347, 0.513075,
		35.488014, 31.384443, 37.934994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243385, 31.777845, 38.311779>,  <36.083778, 31.462385, 37.575840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243385, 31.777845, 38.311779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941154, 31.515911, 38.318649>,  <35.759815, 31.358751, 38.322773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941154, 31.515911, 38.318649>,  <36.243385, 31.777845, 38.311779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941154, 31.515911, 38.318649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499128, -0.558537, 0.662501,
		-0.424235, 0.509143, 0.748864,
		-0.755576, -0.654835, 0.017176,
		35.714481, 31.319460, 38.323803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103550, 31.640530, 39.048904>,  <36.243385, 31.777845, 38.311779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103550, 31.640530, 39.048904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935528, 31.323528, 38.872047>,  <35.834713, 31.133327, 38.765934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935528, 31.323528, 38.872047>,  <36.103550, 31.640530, 39.048904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935528, 31.323528, 38.872047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405346, -0.599758, 0.689916,
		-0.811938, 0.110586, 0.573172,
		-0.420060, -0.792503, -0.442141,
		35.809509, 31.085777, 38.739407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807644, 31.182846, 39.608723>,  <36.103550, 31.640530, 39.048904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807644, 31.182846, 39.608723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847927, 30.958584, 39.279961>,  <35.872097, 30.824026, 39.082703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847927, 30.958584, 39.279961>,  <35.807644, 31.182846, 39.608723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847927, 30.958584, 39.279961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443889, -0.714003, 0.541444,
		-0.890404, -0.419364, 0.176960,
		0.100712, -0.560655, -0.821902,
		35.878139, 30.790388, 39.033390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612007, 30.508373, 39.819256>,  <35.807644, 31.182846, 39.608723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612007, 30.508373, 39.819256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799149, 30.455297, 39.469742>,  <35.911434, 30.423452, 39.260033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799149, 30.455297, 39.469742>,  <35.612007, 30.508373, 39.819256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799149, 30.455297, 39.469742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327809, -0.892090, 0.310992,
		-0.820763, -0.431935, -0.373873,
		0.467856, -0.132692, -0.873787,
		35.939507, 30.415489, 39.207607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500183, 29.848242, 39.817360>,  <35.612007, 30.508373, 39.819256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500183, 29.848242, 39.817360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780407, 29.915981, 39.540077>,  <35.948540, 29.956625, 39.373707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780407, 29.915981, 39.540077>,  <35.500183, 29.848242, 39.817360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780407, 29.915981, 39.540077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508657, -0.799830, 0.318654,
		-0.500488, -0.575842, -0.646466,
		0.700557, 0.169347, -0.693211,
		35.990574, 29.966785, 39.332115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637344, 29.248667, 39.554893>,  <35.500183, 29.848242, 39.817360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637344, 29.248667, 39.554893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959530, 29.474785, 39.483715>,  <36.152843, 29.610455, 39.441010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959530, 29.474785, 39.483715>,  <35.637344, 29.248667, 39.554893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959530, 29.474785, 39.483715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591451, -0.747756, 0.301738,
		0.037510, -0.348287, -0.936637,
		0.805468, 0.565293, -0.177947,
		36.201172, 29.644373, 39.430332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175697, 28.858253, 39.177879>,  <35.637344, 29.248667, 39.554893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175697, 28.858253, 39.177879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353725, 29.165987, 39.361198>,  <36.460545, 29.350628, 39.471191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353725, 29.165987, 39.361198>,  <36.175697, 28.858253, 39.177879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353725, 29.165987, 39.361198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473646, -0.636577, 0.608629,
		0.759980, -0.053814, -0.647716,
		0.445074, 0.769333, 0.458297,
		36.487247, 29.396788, 39.498688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895962, 28.546856, 39.307762>,  <36.175697, 28.858253, 39.177879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895962, 28.546856, 39.307762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877060, 28.869963, 39.542801>,  <36.865719, 29.063828, 39.683826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877060, 28.869963, 39.542801>,  <36.895962, 28.546856, 39.307762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877060, 28.869963, 39.542801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305290, -0.548430, 0.778474,
		0.951086, 0.216179, -0.220686,
		-0.047258, 0.807769, 0.587602,
		36.862881, 29.112293, 39.719082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565067, 28.636303, 39.684456>,  <36.895962, 28.546856, 39.307762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565067, 28.636303, 39.684456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243584, 28.785509, 39.869892>,  <37.050694, 28.875032, 39.981152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243584, 28.785509, 39.869892>,  <37.565067, 28.636303, 39.684456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243584, 28.785509, 39.869892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327765, -0.372713, 0.868133,
		0.496610, 0.849674, 0.177292,
		-0.803710, 0.373014, 0.463586,
		37.002472, 28.897413, 40.008968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868286, 28.847515, 40.164589>,  <37.565067, 28.636303, 39.684456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868286, 28.847515, 40.164589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492584, 28.855553, 40.301647>,  <37.267162, 28.860374, 40.383881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492584, 28.855553, 40.301647>,  <37.868286, 28.847515, 40.164589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492584, 28.855553, 40.301647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288578, -0.494230, 0.820037,
		0.185822, 0.869099, 0.458407,
		-0.939251, 0.020095, 0.342641,
		37.210808, 28.861582, 40.404438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980045, 29.051346, 40.810825>,  <37.868286, 28.847515, 40.164589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980045, 29.051346, 40.810825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610275, 28.899023, 40.819107>,  <37.388412, 28.807629, 40.824078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610275, 28.899023, 40.819107>,  <37.980045, 29.051346, 40.810825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610275, 28.899023, 40.819107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222715, -0.494975, 0.839880,
		-0.309583, 0.781016, 0.542377,
		-0.924422, -0.380807, 0.020708,
		37.332947, 28.784781, 40.825321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748260, 29.046045, 41.456150>,  <37.980045, 29.051346, 40.810825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748260, 29.046045, 41.456150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497265, 28.769985, 41.311951>,  <37.346668, 28.604349, 41.225430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497265, 28.769985, 41.311951>,  <37.748260, 29.046045, 41.456150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497265, 28.769985, 41.311951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096316, -0.390636, 0.915493,
		-0.772649, 0.609179, 0.178646,
		-0.627484, -0.690148, -0.360498,
		37.309021, 28.562941, 41.203800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328274, 29.041718, 42.033566>,  <37.748260, 29.046045, 41.456150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328274, 29.041718, 42.033566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258472, 28.720741, 41.805309>,  <37.216591, 28.528156, 41.668354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258472, 28.720741, 41.805309>,  <37.328274, 29.041718, 42.033566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258472, 28.720741, 41.805309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144715, -0.552343, 0.820960,
		-0.973964, 0.225844, -0.019737,
		-0.174507, -0.802441, -0.570645,
		37.206120, 28.480009, 41.634117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697975, 28.810202, 42.257660>,  <37.328274, 29.041718, 42.033566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697975, 28.810202, 42.257660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827560, 28.488930, 42.057678>,  <36.905312, 28.296167, 41.937687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827560, 28.488930, 42.057678>,  <36.697975, 28.810202, 42.257660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827560, 28.488930, 42.057678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320175, -0.590350, 0.740929,
		-0.890246, -0.079957, -0.448406,
		0.323959, -0.803177, -0.499956,
		36.924747, 28.247976, 41.907692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205708, 28.191065, 42.349430>,  <36.697975, 28.810202, 42.257660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205708, 28.191065, 42.349430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561081, 28.027843, 42.265358>,  <36.774307, 27.929911, 42.214916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561081, 28.027843, 42.265358>,  <36.205708, 28.191065, 42.349430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561081, 28.027843, 42.265358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082435, -0.592311, 0.801481,
		-0.451537, -0.694739, -0.559868,
		0.888436, -0.408051, -0.210180,
		36.827610, 27.905428, 42.202305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076752, 27.487448, 42.518433>,  <36.205708, 28.191065, 42.349430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076752, 27.487448, 42.518433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475342, 27.518784, 42.506424>,  <36.714497, 27.537584, 42.499218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475342, 27.518784, 42.506424>,  <36.076752, 27.487448, 42.518433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475342, 27.518784, 42.506424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064273, -0.482871, 0.873329,
		0.053921, -0.872180, -0.486204,
		0.996475, 0.078340, -0.030021,
		36.774284, 27.542286, 42.497417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304012, 26.805069, 42.715843>,  <36.076752, 27.487448, 42.518433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304012, 26.805069, 42.715843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579971, 27.088444, 42.775375>,  <36.745548, 27.258469, 42.811096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579971, 27.088444, 42.775375>,  <36.304012, 26.805069, 42.715843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579971, 27.088444, 42.775375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167519, -0.356258, 0.919248,
		0.704253, -0.609259, -0.364460,
		0.689902, 0.708438, 0.148834,
		36.786942, 27.300976, 42.820026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821926, 26.418699, 43.118919>,  <36.304012, 26.805069, 42.715843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821926, 26.418699, 43.118919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878826, 26.810440, 43.176380>,  <36.912968, 27.045485, 43.210857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878826, 26.810440, 43.176380>,  <36.821926, 26.418699, 43.118919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878826, 26.810440, 43.176380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214154, -0.172143, 0.961511,
		0.966386, -0.106012, -0.234220,
		0.142251, 0.979351, 0.143654,
		36.921501, 27.104246, 43.219475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397350, 26.510916, 43.609859>,  <36.821926, 26.418699, 43.118919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397350, 26.510916, 43.609859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234928, 26.876104, 43.625851>,  <37.137474, 27.095217, 43.635445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234928, 26.876104, 43.625851>,  <37.397350, 26.510916, 43.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234928, 26.876104, 43.625851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115191, 0.007739, 0.993313,
		0.906557, 0.407950, -0.108309,
		-0.406060, 0.912971, 0.039976,
		37.113110, 27.149996, 43.637844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899437, 26.941525, 43.877460>,  <37.397350, 26.510916, 43.609859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899437, 26.941525, 43.877460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522953, 27.063416, 43.935795>,  <37.297062, 27.136551, 43.970795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522953, 27.063416, 43.935795>,  <37.899437, 26.941525, 43.877460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522953, 27.063416, 43.935795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075494, -0.231042, 0.970010,
		0.329282, 0.923992, 0.194454,
		-0.941209, 0.304727, 0.145834,
		37.240589, 27.154833, 43.979546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950268, 27.373758, 44.484104>,  <37.899437, 26.941525, 43.877460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950268, 27.373758, 44.484104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551609, 27.350161, 44.461433>,  <37.312412, 27.336002, 44.447830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551609, 27.350161, 44.461433>,  <37.950268, 27.373758, 44.484104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551609, 27.350161, 44.461433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051757, -0.081901, 0.995296,
		-0.063360, 0.994893, 0.078573,
		-0.996648, -0.058995, -0.056682,
		37.252613, 27.332462, 44.444427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688969, 27.821472, 44.928261>,  <37.950268, 27.373758, 44.484104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688969, 27.821472, 44.928261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402187, 27.545076, 44.891365>,  <37.230118, 27.379238, 44.869228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402187, 27.545076, 44.891365>,  <37.688969, 27.821472, 44.928261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402187, 27.545076, 44.891365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115769, -0.012465, 0.993198,
		-0.687440, 0.722757, -0.071059,
		-0.716955, -0.690990, -0.092242,
		37.187099, 27.337780, 44.863693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287300, 27.994110, 45.465157>,  <37.688969, 27.821472, 44.928261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287300, 27.994110, 45.465157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163162, 27.631733, 45.349949>,  <37.088680, 27.414307, 45.280827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163162, 27.631733, 45.349949>,  <37.287300, 27.994110, 45.465157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163162, 27.631733, 45.349949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242325, -0.217573, 0.945484,
		-0.919220, 0.363219, -0.152011,
		-0.310344, -0.905944, -0.288015,
		37.070061, 27.359949, 45.263546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612679, 27.757420, 45.826031>,  <37.287300, 27.994110, 45.465157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612679, 27.757420, 45.826031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804646, 27.421377, 45.724922>,  <36.919827, 27.219751, 45.664257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804646, 27.421377, 45.724922>,  <36.612679, 27.757420, 45.826031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804646, 27.421377, 45.724922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159437, -0.366845, 0.916518,
		-0.862702, -0.399555, -0.310001,
		0.479922, -0.840108, -0.252774,
		36.948624, 27.169346, 45.649090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179909, 27.178209, 46.109901>,  <36.612679, 27.757420, 45.826031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179909, 27.178209, 46.109901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538849, 27.011282, 46.052483>,  <36.754211, 26.911125, 46.018032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538849, 27.011282, 46.052483>,  <36.179909, 27.178209, 46.109901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538849, 27.011282, 46.052483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003381, -0.318755, 0.947831,
		-0.441305, -0.851022, -0.284624,
		0.897351, -0.417320, -0.143545,
		36.808056, 26.886086, 46.009418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057575, 26.556253, 46.334446>,  <36.179909, 27.178209, 46.109901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057575, 26.556253, 46.334446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451412, 26.626099, 46.338158>,  <36.687714, 26.668005, 46.340385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451412, 26.626099, 46.338158>,  <36.057575, 26.556253, 46.334446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451412, 26.626099, 46.338158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029939, -0.220634, 0.974897,
		0.172278, -0.959599, -0.222462,
		0.984594, 0.174614, 0.009281,
		36.746792, 26.678482, 46.340942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296398, 25.936172, 46.657463>,  <36.057575, 26.556253, 46.334446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296398, 25.936172, 46.657463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602520, 26.192625, 46.680321>,  <36.786194, 26.346497, 46.694035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602520, 26.192625, 46.680321>,  <36.296398, 25.936172, 46.657463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602520, 26.192625, 46.680321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228039, -0.353080, 0.907377,
		0.601924, -0.681385, -0.416415,
		0.765301, 0.641131, 0.057145,
		36.832111, 26.384964, 46.697464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807777, 25.627893, 47.009567>,  <36.296398, 25.936172, 46.657463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807777, 25.627893, 47.009567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947197, 26.002567, 47.023037>,  <37.030849, 26.227371, 47.031120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947197, 26.002567, 47.023037>,  <36.807777, 25.627893, 47.009567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947197, 26.002567, 47.023037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415053, -0.186464, 0.890484,
		0.840382, -0.296402, -0.453766,
		0.348553, 0.936684, 0.033678,
		37.051762, 26.283573, 47.033142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619614, 25.667261, 47.039848>,  <36.807777, 25.627893, 47.009567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619614, 25.667261, 47.039848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402893, 25.961994, 47.201603>,  <37.272861, 26.138834, 47.298656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402893, 25.961994, 47.201603>,  <37.619614, 25.667261, 47.039848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402893, 25.961994, 47.201603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310850, -0.271350, 0.910901,
		0.780912, 0.619232, -0.082026,
		-0.541802, 0.736831, 0.404389,
		37.240353, 26.183044, 47.322918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070808, 26.068104, 47.624157>,  <37.619614, 25.667261, 47.039848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070808, 26.068104, 47.624157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700489, 26.185879, 47.718994>,  <37.478298, 26.256544, 47.775898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700489, 26.185879, 47.718994>,  <38.070808, 26.068104, 47.624157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700489, 26.185879, 47.718994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146987, -0.297461, 0.943351,
		0.348283, 0.908199, 0.232110,
		-0.925794, 0.294436, 0.237094,
		37.422752, 26.274210, 47.790123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120567, 26.195951, 48.303276>,  <38.070808, 26.068104, 47.624157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120567, 26.195951, 48.303276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722919, 26.217600, 48.265762>,  <37.484329, 26.230589, 48.243256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722919, 26.217600, 48.265762>,  <38.120567, 26.195951, 48.303276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722919, 26.217600, 48.265762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101942, -0.175846, 0.979125,
		0.036498, 0.982929, 0.180329,
		-0.994121, 0.054119, -0.093784,
		37.424683, 26.233835, 48.237629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852806, 26.643301, 48.828903>,  <38.120567, 26.195951, 48.303276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852806, 26.643301, 48.828903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538887, 26.416805, 48.728130>,  <37.350536, 26.280907, 48.667667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538887, 26.416805, 48.728130>,  <37.852806, 26.643301, 48.828903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538887, 26.416805, 48.728130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106666, -0.277025, 0.954924,
		-0.610508, 0.776291, 0.157009,
		-0.784795, -0.566241, -0.251930,
		37.303448, 26.246933, 48.652550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469418, 26.537514, 49.482018>,  <37.852806, 26.643301, 48.828903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469418, 26.537514, 49.482018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321869, 26.253572, 49.242004>,  <37.233341, 26.083208, 49.097996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321869, 26.253572, 49.242004>,  <37.469418, 26.537514, 49.482018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321869, 26.253572, 49.242004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200884, -0.569419, 0.797124,
		-0.907514, 0.414571, 0.067442,
		-0.368867, -0.709854, -0.600037,
		37.211208, 26.040617, 49.061993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011627, 26.623575, 50.007122>,  <37.469418, 26.537514, 49.482018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011627, 26.623575, 50.007122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365898, 26.802114, 50.058273>,  <38.578461, 26.909239, 50.088966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365898, 26.802114, 50.058273>,  <38.011627, 26.623575, 50.007122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365898, 26.802114, 50.058273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039999, 0.347749, -0.936734,
		-0.462581, 0.824526, 0.325846,
		0.885675, 0.446348, 0.127882,
		38.631599, 26.936020, 50.096638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915245, 27.352978, 49.670944>,  <38.011627, 26.623575, 50.007122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915245, 27.352978, 49.670944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308517, 27.285959, 49.700012>,  <38.544479, 27.245749, 49.717453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308517, 27.285959, 49.700012>,  <37.915245, 27.352978, 49.670944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308517, 27.285959, 49.700012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126619, 0.338620, -0.932365,
		0.131606, 0.925886, 0.354140,
		0.983182, -0.167545, 0.072671,
		38.603474, 27.235695, 49.721813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293388, 28.024965, 49.551800>,  <37.915245, 27.352978, 49.670944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293388, 28.024965, 49.551800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530537, 27.717686, 49.455154>,  <38.672825, 27.533318, 49.397167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530537, 27.717686, 49.455154>,  <38.293388, 28.024965, 49.551800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530537, 27.717686, 49.455154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237113, 0.453249, -0.859268,
		0.769600, 0.452144, 0.450868,
		0.592869, -0.768199, -0.241611,
		38.708397, 27.487226, 49.382671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865620, 28.368526, 49.246529>,  <38.293388, 28.024965, 49.551800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865620, 28.368526, 49.246529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912506, 27.990400, 49.124783>,  <38.940636, 27.763525, 49.051735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912506, 27.990400, 49.124783>,  <38.865620, 28.368526, 49.246529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912506, 27.990400, 49.124783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202482, 0.322792, -0.924558,
		0.972246, 0.046742, 0.229245,
		0.117214, -0.945315, -0.304368,
		38.947670, 27.706806, 49.033470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503345, 28.324177, 49.048996>,  <38.865620, 28.368526, 49.246529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503345, 28.324177, 49.048996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314831, 28.028061, 48.857220>,  <39.201721, 27.850391, 48.742153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314831, 28.028061, 48.857220>,  <39.503345, 28.324177, 49.048996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314831, 28.028061, 48.857220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266715, 0.398519, -0.877523,
		0.840686, -0.541438, 0.009630,
		-0.471286, -0.740289, -0.479439,
		39.173447, 27.805975, 48.713387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999683, 28.001368, 48.557583>,  <39.503345, 28.324177, 49.048996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999683, 28.001368, 48.557583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612690, 27.997368, 48.456490>,  <39.380493, 27.994968, 48.395836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612690, 27.997368, 48.456490>,  <39.999683, 28.001368, 48.557583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612690, 27.997368, 48.456490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232465, 0.358573, -0.904093,
		0.099660, -0.933448, -0.344591,
		-0.967485, -0.009997, -0.252729,
		39.322445, 27.994370, 48.380672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065990, 27.786575, 47.872498>,  <39.999683, 28.001368, 48.557583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065990, 27.786575, 47.872498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689152, 27.910429, 47.924011>,  <39.463051, 27.984741, 47.954918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689152, 27.910429, 47.924011>,  <40.065990, 27.786575, 47.872498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689152, 27.910429, 47.924011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006823, 0.366258, -0.930488,
		-0.335279, -0.877487, -0.342937,
		-0.942094, 0.309633, 0.128786,
		39.406525, 28.003319, 47.962646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687469, 27.473452, 47.286133>,  <40.065990, 27.786575, 47.872498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687469, 27.473452, 47.286133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462234, 27.785944, 47.393921>,  <39.327095, 27.973440, 47.458591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462234, 27.785944, 47.393921>,  <39.687469, 27.473452, 47.286133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462234, 27.785944, 47.393921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055929, 0.289302, -0.955603,
		-0.824504, -0.553157, -0.119208,
		-0.563085, 0.781231, 0.269468,
		39.293308, 28.020313, 47.474762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105385, 27.488697, 46.719975>,  <39.687469, 27.473452, 47.286133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105385, 27.488697, 46.719975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078972, 27.843103, 46.903545>,  <39.063122, 28.055748, 47.013687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078972, 27.843103, 46.903545>,  <39.105385, 27.488697, 46.719975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078972, 27.843103, 46.903545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144445, 0.446597, -0.882999,
		-0.987307, -0.124600, 0.098489,
		-0.066037, 0.886017, 0.458926,
		39.059162, 28.108908, 47.041222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530838, 27.744312, 46.594704>,  <39.105385, 27.488697, 46.719975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530838, 27.744312, 46.594704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757576, 28.059309, 46.691490>,  <38.893620, 28.248308, 46.749561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757576, 28.059309, 46.691490>,  <38.530838, 27.744312, 46.594704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757576, 28.059309, 46.691490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274391, 0.457408, -0.845865,
		-0.776789, 0.413078, 0.475358,
		0.566841, 0.787493, 0.241965,
		38.927628, 28.295557, 46.764080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156178, 28.183987, 46.311501>,  <38.530838, 27.744312, 46.594704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156178, 28.183987, 46.311501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512840, 28.354448, 46.372616>,  <38.726837, 28.456726, 46.409286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512840, 28.354448, 46.372616>,  <38.156178, 28.183987, 46.311501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512840, 28.354448, 46.372616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103503, 0.520449, -0.847597,
		-0.440724, 0.739950, 0.508169,
		0.891655, 0.426154, 0.152787,
		38.780338, 28.482294, 46.418453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145714, 28.860077, 46.158009>,  <38.156178, 28.183987, 46.311501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145714, 28.860077, 46.158009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526604, 28.758245, 46.090530>,  <38.755138, 28.697145, 46.050041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526604, 28.758245, 46.090530>,  <38.145714, 28.860077, 46.158009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526604, 28.758245, 46.090530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010733, 0.579939, -0.814589,
		0.305213, 0.773860, 0.554964,
		0.952224, -0.254580, -0.168700,
		38.812271, 28.681871, 46.039921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599640, 29.448324, 45.987717>,  <38.145714, 28.860077, 46.158009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599640, 29.448324, 45.987717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789707, 29.152243, 45.797424>,  <38.903748, 28.974594, 45.683250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789707, 29.152243, 45.797424>,  <38.599640, 29.448324, 45.987717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789707, 29.152243, 45.797424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262913, 0.635404, -0.726043,
		0.839698, 0.219916, 0.496531,
		0.475167, -0.740202, -0.475729,
		38.932259, 28.930182, 45.654705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016724, 29.807028, 45.545094>,  <38.599640, 29.448324, 45.987717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016724, 29.807028, 45.545094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107452, 29.463217, 45.361893>,  <39.161888, 29.256929, 45.251972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107452, 29.463217, 45.361893>,  <39.016724, 29.807028, 45.545094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107452, 29.463217, 45.361893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012845, 0.472857, -0.881045,
		0.973852, 0.193955, 0.118294,
		0.226819, -0.859527, -0.458002,
		39.175499, 29.205359, 45.224491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963905, 30.061007, 44.963985>,  <39.016724, 29.807028, 45.545094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963905, 30.061007, 44.963985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087013, 29.690182, 44.878349>,  <39.160877, 29.467688, 44.826965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087013, 29.690182, 44.878349>,  <38.963905, 30.061007, 44.963985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087013, 29.690182, 44.878349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035450, 0.236034, -0.971098,
		0.950801, 0.291283, 0.105508,
		0.307768, -0.927061, -0.214095,
		39.179344, 29.412064, 44.814121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519695, 30.084972, 44.563526>,  <38.963905, 30.061007, 44.963985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519695, 30.084972, 44.563526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304237, 29.756229, 44.489319>,  <39.174965, 29.558983, 44.444794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304237, 29.756229, 44.489319>,  <39.519695, 30.084972, 44.563526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304237, 29.756229, 44.489319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181872, 0.328420, -0.926857,
		0.822672, -0.465501, -0.326372,
		-0.538640, -0.821857, -0.185520,
		39.142647, 29.509672, 44.433662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740593, 29.885225, 43.949966>,  <39.519695, 30.084972, 44.563526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740593, 29.885225, 43.949966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383980, 29.711756, 44.002274>,  <39.170013, 29.607674, 44.033657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383980, 29.711756, 44.002274>,  <39.740593, 29.885225, 43.949966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383980, 29.711756, 44.002274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293882, 0.334109, -0.895547,
		0.344708, -0.836827, -0.425321,
		-0.891521, -0.433696, 0.130758,
		39.116520, 29.581654, 44.041504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663746, 29.471386, 43.387894>,  <39.740593, 29.885225, 43.949966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663746, 29.471386, 43.387894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291229, 29.511417, 43.528000>,  <39.067719, 29.535437, 43.612064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291229, 29.511417, 43.528000>,  <39.663746, 29.471386, 43.387894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291229, 29.511417, 43.528000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325947, 0.200419, -0.923900,
		-0.162662, -0.974585, -0.154028,
		-0.931289, 0.100079, 0.350264,
		39.011841, 29.541441, 43.633080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186394, 29.065723, 42.861565>,  <39.663746, 29.471386, 43.387894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186394, 29.065723, 42.861565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955250, 29.313002, 43.074699>,  <38.816563, 29.461369, 43.202579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955250, 29.313002, 43.074699>,  <39.186394, 29.065723, 42.861565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955250, 29.313002, 43.074699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635447, 0.068890, -0.769065,
		-0.512139, -0.783001, 0.353021,
		-0.577859, 0.618194, 0.532836,
		38.781891, 29.498461, 43.234550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535347, 28.906500, 42.649860>,  <39.186394, 29.065723, 42.861565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535347, 28.906500, 42.649860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559330, 29.270266, 42.814480>,  <38.573719, 29.488525, 42.913250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559330, 29.270266, 42.814480>,  <38.535347, 28.906500, 42.649860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559330, 29.270266, 42.814480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494988, 0.385113, -0.778893,
		-0.866829, -0.157007, 0.473241,
		0.059959, 0.909415, 0.411544,
		38.577316, 29.543091, 42.937943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845284, 29.182135, 42.527386>,  <38.535347, 28.906500, 42.649860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845284, 29.182135, 42.527386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082600, 29.490227, 42.620983>,  <38.224987, 29.675081, 42.677143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082600, 29.490227, 42.620983>,  <37.845284, 29.182135, 42.527386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082600, 29.490227, 42.620983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454886, 0.560603, -0.691956,
		-0.664145, 0.304087, 0.682966,
		0.593287, 0.770231, 0.233997,
		38.260586, 29.721296, 42.691181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390423, 29.711393, 42.524960>,  <37.845284, 29.182135, 42.527386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390423, 29.711393, 42.524960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747494, 29.888687, 42.492298>,  <37.961739, 29.995064, 42.472702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747494, 29.888687, 42.492298>,  <37.390423, 29.711393, 42.524960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747494, 29.888687, 42.492298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327029, 0.512365, -0.794062,
		-0.310121, 0.735544, 0.602328,
		0.892680, 0.443234, -0.081649,
		38.015297, 30.021658, 42.467804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262573, 30.448452, 42.391415>,  <37.390423, 29.711393, 42.524960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262573, 30.448452, 42.391415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642044, 30.411505, 42.270428>,  <37.869724, 30.389336, 42.197834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642044, 30.411505, 42.270428>,  <37.262573, 30.448452, 42.391415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642044, 30.411505, 42.270428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128274, 0.761812, -0.634971,
		0.289075, 0.641179, 0.710863,
		0.948674, -0.092369, -0.302467,
		37.926647, 30.383795, 42.179688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375942, 31.119783, 42.297020>,  <37.262573, 30.448452, 42.391415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375942, 31.119783, 42.297020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657715, 30.922012, 42.093330>,  <37.826778, 30.803350, 41.971115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657715, 30.922012, 42.093330>,  <37.375942, 31.119783, 42.297020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657715, 30.922012, 42.093330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103131, 0.781143, -0.615776,
		0.702235, 0.381257, 0.601256,
		0.704435, -0.494428, -0.509227,
		37.869045, 30.773684, 41.940563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771511, 31.586498, 42.005314>,  <37.375942, 31.119783, 42.297020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771511, 31.586498, 42.005314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861473, 31.286230, 41.756824>,  <37.915451, 31.106070, 41.607731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861473, 31.286230, 41.756824>,  <37.771511, 31.586498, 42.005314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861473, 31.286230, 41.756824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038022, 0.643830, -0.764223,
		0.973639, 0.148256, 0.173341,
		0.224903, -0.750668, -0.621221,
		37.928944, 31.061029, 41.570457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387184, 31.835989, 41.564304>,  <37.771511, 31.586498, 42.005314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387184, 31.835989, 41.564304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219482, 31.518305, 41.388367>,  <38.118862, 31.327694, 41.282806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219482, 31.518305, 41.388367>,  <38.387184, 31.835989, 41.564304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219482, 31.518305, 41.388367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268695, 0.354223, -0.895728,
		0.867197, -0.493718, 0.064892,
		-0.419251, -0.794209, -0.439841,
		38.093708, 31.280043, 41.256413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856365, 31.731956, 41.096603>,  <38.387184, 31.835989, 41.564304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856365, 31.731956, 41.096603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532894, 31.527920, 40.979404>,  <38.338814, 31.405499, 40.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532894, 31.527920, 40.979404>,  <38.856365, 31.731956, 41.096603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532894, 31.527920, 40.979404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184416, 0.253145, -0.949688,
		0.558600, -0.822024, -0.110643,
		-0.808676, -0.510092, -0.293001,
		38.290291, 31.374893, 40.891502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982433, 31.298338, 40.542583>,  <38.856365, 31.731956, 41.096603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982433, 31.298338, 40.542583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588394, 31.348972, 40.496014>,  <38.351971, 31.379353, 40.468071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588394, 31.348972, 40.496014>,  <38.982433, 31.298338, 40.542583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588394, 31.348972, 40.496014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161436, 0.447205, -0.879742,
		-0.059300, -0.885429, -0.460977,
		-0.985100, 0.126587, -0.116421,
		38.292866, 31.386948, 40.461086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811169, 31.032492, 39.927689>,  <38.982433, 31.298338, 40.542583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811169, 31.032492, 39.927689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496273, 31.270775, 39.991428>,  <38.307335, 31.413746, 40.029671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496273, 31.270775, 39.991428>,  <38.811169, 31.032492, 39.927689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496273, 31.270775, 39.991428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039887, 0.307054, -0.950856,
		-0.615362, -0.742191, -0.265485,
		-0.787235, 0.595710, 0.159345,
		38.260101, 31.449488, 40.039230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347416, 30.852018, 39.436131>,  <38.811169, 31.032492, 39.927689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347416, 30.852018, 39.436131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275867, 31.223293, 39.566650>,  <38.232937, 31.446058, 39.644962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275867, 31.223293, 39.566650>,  <38.347416, 30.852018, 39.436131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275867, 31.223293, 39.566650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106017, 0.347900, -0.931518,
		-0.978144, -0.132028, -0.160633,
		-0.178871, 0.928189, 0.326299,
		38.222206, 31.501749, 39.664539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072060, 31.200148, 38.816555>,  <38.347416, 30.852018, 39.436131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072060, 31.200148, 38.816555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157677, 31.505793, 39.059971>,  <38.209049, 31.689178, 39.206020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157677, 31.505793, 39.059971>,  <38.072060, 31.200148, 38.816555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157677, 31.505793, 39.059971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168829, 0.584663, -0.793515,
		-0.962123, 0.272588, -0.003859,
		0.214046, 0.764110, 0.608539,
		38.221889, 31.735025, 39.242531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700867, 31.750168, 38.538254>,  <38.072060, 31.200148, 38.816555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700867, 31.750168, 38.538254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004978, 31.910402, 38.742805>,  <38.187447, 32.006542, 38.865536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004978, 31.910402, 38.742805>,  <37.700867, 31.750168, 38.538254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004978, 31.910402, 38.742805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252529, 0.543042, -0.800833,
		-0.598503, 0.737994, 0.311703,
		0.760278, 0.400587, 0.511378,
		38.233063, 32.030579, 38.896217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572933, 32.416458, 38.403500>,  <37.700867, 31.750168, 38.538254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572933, 32.416458, 38.403500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957191, 32.410240, 38.514431>,  <38.187748, 32.406509, 38.580990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957191, 32.410240, 38.514431>,  <37.572933, 32.416458, 38.403500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957191, 32.410240, 38.514431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220209, 0.651138, -0.726311,
		-0.169289, 0.758800, 0.628938,
		0.960650, -0.015542, 0.277326,
		38.245388, 32.405579, 38.597630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844303, 33.090797, 38.154572>,  <37.572933, 32.416458, 38.403500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844303, 33.090797, 38.154572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181007, 32.896423, 38.248638>,  <38.383030, 32.779797, 38.305080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181007, 32.896423, 38.248638>,  <37.844303, 33.090797, 38.154572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181007, 32.896423, 38.248638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504487, 0.552986, -0.663099,
		0.192180, 0.676810, 0.710630,
		0.841760, -0.485938, 0.235169,
		38.433537, 32.750641, 38.319187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370472, 33.530506, 38.482323>,  <37.844303, 33.090797, 38.154572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370472, 33.530506, 38.482323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579716, 33.223793, 38.333508>,  <38.705261, 33.039764, 38.244217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579716, 33.223793, 38.333508>,  <38.370472, 33.530506, 38.482323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579716, 33.223793, 38.333508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572494, 0.639516, -0.513099,
		0.631357, 0.055415, 0.773510,
		0.523105, -0.766778, -0.372038,
		38.736649, 32.993759, 38.221897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131653, 33.684368, 38.546154>,  <38.370472, 33.530506, 38.482323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131653, 33.684368, 38.546154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116547, 33.402111, 38.263130>,  <39.107483, 33.232758, 38.093315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116547, 33.402111, 38.263130>,  <39.131653, 33.684368, 38.546154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116547, 33.402111, 38.263130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565157, 0.568861, -0.597490,
		0.824118, -0.422445, 0.377319,
		-0.037765, -0.705647, -0.707556,
		39.105217, 33.190418, 38.050861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707111, 33.758766, 38.244312>,  <39.131653, 33.684368, 38.546154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707111, 33.758766, 38.244312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516983, 33.552059, 37.959492>,  <39.402905, 33.428036, 37.788597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516983, 33.552059, 37.959492>,  <39.707111, 33.758766, 38.244312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516983, 33.552059, 37.959492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412549, 0.583926, -0.699166,
		0.777093, -0.626086, -0.064362,
		-0.475321, -0.516765, -0.712056,
		39.374386, 33.397030, 37.745876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229046, 33.611431, 37.841347>,  <39.707111, 33.758766, 38.244312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229046, 33.611431, 37.841347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907455, 33.527248, 37.618877>,  <39.714500, 33.476738, 37.485397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907455, 33.527248, 37.618877>,  <40.229046, 33.611431, 37.841347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907455, 33.527248, 37.618877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466898, 0.355814, -0.809570,
		0.368280, -0.910550, -0.187800,
		-0.803975, -0.210465, -0.556173,
		39.666264, 33.464111, 37.452026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469063, 33.268330, 37.333961>,  <40.229046, 33.611431, 37.841347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469063, 33.268330, 37.333961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127796, 33.439762, 37.215015>,  <39.923038, 33.542622, 37.143646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127796, 33.439762, 37.215015>,  <40.469063, 33.268330, 37.333961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127796, 33.439762, 37.215015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487108, 0.450585, -0.748131,
		-0.186648, -0.783128, -0.593189,
		-0.853164, 0.428584, -0.297367,
		39.871845, 33.568336, 37.125805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331497, 33.143192, 36.604271>,  <40.469063, 33.268330, 37.333961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331497, 33.143192, 36.604271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144127, 33.489498, 36.674728>,  <40.031704, 33.697281, 36.717003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144127, 33.489498, 36.674728>,  <40.331497, 33.143192, 36.604271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144127, 33.489498, 36.674728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457785, 0.408362, -0.789730,
		-0.755651, -0.289295, -0.587622,
		-0.468427, 0.865765, 0.176144,
		40.003597, 33.749229, 36.727573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869579, 33.406036, 36.072315>,  <40.331497, 33.143192, 36.604271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869579, 33.406036, 36.072315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993660, 33.735722, 36.261818>,  <40.068108, 33.933533, 36.375519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993660, 33.735722, 36.261818>,  <39.869579, 33.406036, 36.072315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993660, 33.735722, 36.261818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237178, 0.415480, -0.878136,
		-0.920610, 0.384762, -0.066604,
		0.310200, 0.824218, 0.473752,
		40.086720, 33.982986, 36.403942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553368, 33.968914, 35.754776>,  <39.869579, 33.406036, 36.072315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553368, 33.968914, 35.754776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893284, 34.074081, 35.937527>,  <40.097233, 34.137180, 36.047176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893284, 34.074081, 35.937527>,  <39.553368, 33.968914, 35.754776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893284, 34.074081, 35.937527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312293, 0.447133, -0.838180,
		-0.424652, 0.854955, 0.297863,
		0.849790, 0.262914, 0.456873,
		40.148220, 34.152954, 36.074589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771236, 34.790096, 35.600433>,  <39.553368, 33.968914, 35.754776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771236, 34.790096, 35.600433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090580, 34.558578, 35.666920>,  <40.282185, 34.419670, 35.706810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090580, 34.558578, 35.666920>,  <39.771236, 34.790096, 35.600433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090580, 34.558578, 35.666920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527904, 0.539890, -0.655619,
		0.289731, 0.611162, 0.736571,
		0.798357, -0.578792, 0.166212,
		40.330086, 34.384941, 35.716782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403793, 35.194035, 35.658096>,  <39.771236, 34.790096, 35.600433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403793, 35.194035, 35.658096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487644, 34.828583, 35.518761>,  <40.537956, 34.609310, 35.435162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487644, 34.828583, 35.518761>,  <40.403793, 35.194035, 35.658096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487644, 34.828583, 35.518761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598679, 0.401597, -0.693039,
		0.773072, -0.063263, 0.631156,
		0.209627, -0.913629, -0.348337,
		40.550533, 34.554493, 35.414261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115646, 35.139400, 35.462513>,  <40.403793, 35.194035, 35.658096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115646, 35.139400, 35.462513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948776, 34.827946, 35.275032>,  <40.848652, 34.641071, 35.162544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948776, 34.827946, 35.275032>,  <41.115646, 35.139400, 35.462513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948776, 34.827946, 35.275032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605613, 0.146360, -0.782184,
		0.677639, -0.610162, 0.410496,
		-0.417179, -0.778640, -0.468702,
		40.823624, 34.594353, 35.134422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091671, 35.188061, 36.263542>,  <41.115646, 35.139400, 35.462513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091671, 35.188061, 36.263542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454899, 35.340973, 36.331974>,  <41.672836, 35.432720, 36.373035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454899, 35.340973, 36.331974>,  <41.091671, 35.188061, 36.263542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454899, 35.340973, 36.331974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149504, 0.677457, -0.720208,
		-0.391221, 0.628423, 0.672332,
		0.908072, 0.382277, 0.171084,
		41.727322, 35.455658, 36.383301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102558, 35.979641, 36.545654>,  <41.091671, 35.188061, 36.263542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102558, 35.979641, 36.545654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377693, 35.840076, 36.291050>,  <41.542774, 35.756336, 36.138287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377693, 35.840076, 36.291050>,  <41.102558, 35.979641, 36.545654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377693, 35.840076, 36.291050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257926, 0.702182, -0.663637,
		0.678495, 0.620646, 0.392992,
		0.687836, -0.348912, -0.636508,
		41.584045, 35.735401, 36.100098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618301, 36.536156, 36.379051>,  <41.102558, 35.979641, 36.545654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618301, 36.536156, 36.379051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601303, 36.297615, 36.058411>,  <41.591106, 36.154491, 35.866028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601303, 36.297615, 36.058411>,  <41.618301, 36.536156, 36.379051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601303, 36.297615, 36.058411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091279, 0.801285, -0.591278,
		0.994918, 0.048045, -0.088482,
		-0.042492, -0.596350, -0.801599,
		41.588554, 36.118710, 35.817932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918941, 36.915653, 35.984585>,  <41.618301, 36.536156, 36.379051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918941, 36.915653, 35.984585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742908, 36.655796, 35.736622>,  <41.637287, 36.499882, 35.587845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742908, 36.655796, 35.736622>,  <41.918941, 36.915653, 35.984585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742908, 36.655796, 35.736622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086974, 0.717946, -0.690644,
		0.893736, -0.250024, -0.372456,
		-0.440081, -0.649647, -0.619909,
		41.610886, 36.460903, 35.550648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237965, 36.947430, 35.270847>,  <41.918941, 36.915653, 35.984585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237965, 36.947430, 35.270847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885738, 36.768749, 35.207535>,  <41.674400, 36.661541, 35.169548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885738, 36.768749, 35.207535>,  <42.237965, 36.947430, 35.270847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885738, 36.768749, 35.207535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109966, 0.517464, -0.848610,
		0.460978, -0.729856, -0.504786,
		-0.880572, -0.446699, -0.158281,
		41.621567, 36.634739, 35.160049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246235, 36.645290, 34.690659>,  <42.237965, 36.947430, 35.270847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246235, 36.645290, 34.690659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851936, 36.680931, 34.747734>,  <41.615356, 36.702316, 34.781979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851936, 36.680931, 34.747734>,  <42.246235, 36.645290, 34.690659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851936, 36.680931, 34.747734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044897, 0.678086, -0.733610,
		-0.162125, -0.729561, -0.664421,
		-0.985748, 0.089106, 0.142689,
		41.556213, 36.707664, 34.790543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938492, 36.625603, 34.020473>,  <42.246235, 36.645290, 34.690659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938492, 36.625603, 34.020473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670914, 36.803288, 34.258865>,  <41.510368, 36.909901, 34.401901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670914, 36.803288, 34.258865>,  <41.938492, 36.625603, 34.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670914, 36.803288, 34.258865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114679, 0.730506, -0.673209,
		-0.734412, -0.518685, -0.437726,
		-0.668945, 0.444214, 0.595975,
		41.470230, 36.936550, 34.437656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458603, 37.006489, 33.514603>,  <41.938492, 36.625603, 34.020473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458603, 37.006489, 33.514603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405910, 37.164333, 33.878345>,  <41.374294, 37.259041, 34.096592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405910, 37.164333, 33.878345>,  <41.458603, 37.006489, 33.514603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405910, 37.164333, 33.878345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359473, 0.835892, -0.414805,
		-0.923811, -0.381530, 0.031743,
		-0.131727, 0.394612, 0.909356,
		41.366394, 37.282719, 34.151154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774139, 37.192944, 33.629513>,  <41.458603, 37.006489, 33.514603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774139, 37.192944, 33.629513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961056, 37.420944, 33.899841>,  <41.073204, 37.557743, 34.062038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961056, 37.420944, 33.899841>,  <40.774139, 37.192944, 33.629513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961056, 37.420944, 33.899841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214601, 0.814685, -0.538734,
		-0.857662, 0.106714, 0.503019,
		0.467292, 0.570000, 0.675824,
		41.101242, 37.591946, 34.102589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388397, 37.733467, 33.617207>,  <40.774139, 37.192944, 33.629513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388397, 37.733467, 33.617207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728893, 37.873253, 33.773800>,  <40.933193, 37.957127, 33.867756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728893, 37.873253, 33.773800>,  <40.388397, 37.733467, 33.617207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728893, 37.873253, 33.773800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178001, 0.894061, -0.411060,
		-0.493660, 0.280228, 0.823269,
		0.851243, 0.349467, 0.391481,
		40.984268, 37.978092, 33.891243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316994, 38.351673, 34.088829>,  <40.388397, 37.733467, 33.617207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316994, 38.351673, 34.088829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700584, 38.397480, 33.985096>,  <40.930740, 38.424965, 33.922855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700584, 38.397480, 33.985096>,  <40.316994, 38.351673, 34.088829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700584, 38.397480, 33.985096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186285, 0.944104, -0.271967,
		0.213691, 0.309119, 0.926705,
		0.958976, 0.114514, -0.259330,
		40.988277, 38.431835, 33.907295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594814, 39.055988, 34.387913>,  <40.316994, 38.351673, 34.088829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594814, 39.055988, 34.387913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831272, 38.926655, 34.092346>,  <40.973148, 38.849052, 33.915005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831272, 38.926655, 34.092346>,  <40.594814, 39.055988, 34.387913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831272, 38.926655, 34.092346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182320, 0.945986, -0.268085,
		0.785689, 0.023758, 0.618165,
		0.591145, -0.323335, -0.738920,
		41.008614, 38.829655, 33.870670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170616, 39.389751, 34.469341>,  <40.594814, 39.055988, 34.387913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170616, 39.389751, 34.469341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154041, 39.292858, 34.081608>,  <41.144096, 39.234722, 33.848969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154041, 39.292858, 34.081608>,  <41.170616, 39.389751, 34.469341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154041, 39.292858, 34.081608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107307, 0.963475, -0.245361,
		0.993362, -0.114184, -0.013934,
		-0.041441, -0.242237, -0.969332,
		41.141609, 39.220188, 33.790810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739880, 39.674686, 34.176144>,  <41.170616, 39.389751, 34.469341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739880, 39.674686, 34.176144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507778, 39.624447, 33.854267>,  <41.368515, 39.594303, 33.661140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507778, 39.624447, 33.854267>,  <41.739880, 39.674686, 34.176144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507778, 39.624447, 33.854267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249285, 0.913228, -0.322292,
		0.775345, -0.387609, -0.498597,
		-0.580256, -0.125595, -0.804692,
		41.333702, 39.586769, 33.612858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085556, 39.903706, 33.581642>,  <41.739880, 39.674686, 34.176144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085556, 39.903706, 33.581642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706600, 39.922291, 33.454971>,  <41.479225, 39.933441, 33.378967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706600, 39.922291, 33.454971>,  <42.085556, 39.903706, 33.581642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706600, 39.922291, 33.454971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201103, 0.856126, -0.476031,
		0.249003, -0.514674, -0.820432,
		-0.947394, 0.046458, -0.316680,
		41.422382, 39.936230, 33.359966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177124, 40.095608, 32.801418>,  <42.085556, 39.903706, 33.581642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177124, 40.095608, 32.801418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796864, 40.150715, 32.912621>,  <41.568707, 40.183781, 32.979343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796864, 40.150715, 32.912621>,  <42.177124, 40.095608, 32.801418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796864, 40.150715, 32.912621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034727, 0.843137, -0.536576,
		-0.308323, -0.519749, -0.796742,
		-0.950648, 0.137770, 0.278008,
		41.511669, 40.192047, 32.996021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745796, 40.094429, 32.157948>,  <42.177124, 40.095608, 32.801418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745796, 40.094429, 32.157948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543957, 40.282131, 32.447826>,  <41.422852, 40.394753, 32.621754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543957, 40.282131, 32.447826>,  <41.745796, 40.094429, 32.157948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543957, 40.282131, 32.447826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175389, 0.766174, -0.618236,
		-0.845350, -0.439065, -0.304310,
		-0.504601, 0.469253, 0.724693,
		41.392578, 40.422909, 32.665234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224056, 40.467876, 31.737288>,  <41.745796, 40.094429, 32.157948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224056, 40.467876, 31.737288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207676, 40.616589, 32.108253>,  <41.197845, 40.705818, 32.330833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207676, 40.616589, 32.108253>,  <41.224056, 40.467876, 31.737288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207676, 40.616589, 32.108253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143096, 0.916443, -0.373704,
		-0.988861, -0.148015, 0.015668,
		-0.040955, 0.371784, 0.927415,
		41.195389, 40.728123, 32.386478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613331, 40.943195, 31.763420>,  <41.224056, 40.467876, 31.737288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613331, 40.943195, 31.763420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854618, 41.064552, 32.058468>,  <40.999390, 41.137367, 32.235497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854618, 41.064552, 32.058468>,  <40.613331, 40.943195, 31.763420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854618, 41.064552, 32.058468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328726, 0.937194, -0.116649,
		-0.726682, -0.172109, 0.665066,
		0.603219, 0.303391, 0.737618,
		41.035583, 41.155571, 32.279755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204948, 41.278217, 32.273876>,  <40.613331, 40.943195, 31.763420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204948, 41.278217, 32.273876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574135, 41.421112, 32.331177>,  <40.795647, 41.506847, 32.365555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574135, 41.421112, 32.331177>,  <40.204948, 41.278217, 32.273876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574135, 41.421112, 32.331177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340325, 0.931310, -0.129775,
		-0.179769, 0.071026, 0.981141,
		0.922964, 0.357236, 0.143249,
		40.851025, 41.528282, 32.374153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119392, 41.898087, 32.582542>,  <40.204948, 41.278217, 32.273876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119392, 41.898087, 32.582542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491879, 41.965900, 32.453487>,  <40.715370, 42.006588, 32.376053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491879, 41.965900, 32.453487>,  <40.119392, 41.898087, 32.582542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491879, 41.965900, 32.453487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255919, 0.934447, -0.247615,
		0.259510, 0.313153, 0.913559,
		0.931214, 0.169539, -0.322641,
		40.771244, 42.016762, 32.356697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216049, 42.568752, 32.708878>,  <40.119392, 41.898087, 32.582542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216049, 42.568752, 32.708878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506054, 42.485252, 32.446342>,  <40.680058, 42.435150, 32.288822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506054, 42.485252, 32.446342>,  <40.216049, 42.568752, 32.708878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506054, 42.485252, 32.446342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087603, 0.917269, -0.388514,
		0.683139, 0.339175, 0.646747,
		0.725015, -0.208752, -0.656335,
		40.723557, 42.422626, 32.249443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773258, 43.070507, 32.801983>,  <40.216049, 42.568752, 32.708878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773258, 43.070507, 32.801983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824821, 42.952030, 32.423428>,  <40.855759, 42.880943, 32.196293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824821, 42.952030, 32.423428>,  <40.773258, 43.070507, 32.801983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824821, 42.952030, 32.423428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074736, 0.948735, -0.307109,
		0.988836, 0.110319, 0.100166,
		0.128911, -0.296195, -0.946388,
		40.863495, 42.863171, 32.139511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434055, 43.315296, 32.470665>,  <40.773258, 43.070507, 32.801983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434055, 43.315296, 32.470665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127338, 43.261562, 32.219593>,  <40.943306, 43.229321, 32.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127338, 43.261562, 32.219593>,  <41.434055, 43.315296, 32.470665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127338, 43.261562, 32.219593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051646, 0.987597, -0.148274,
		0.639809, -0.081279, -0.764224,
		-0.766797, -0.134337, -0.627675,
		40.897301, 43.221260, 32.031292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564827, 43.994583, 32.043709>,  <41.434055, 43.315296, 32.470665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564827, 43.994583, 32.043709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270966, 44.111351, 31.798738>,  <41.094650, 44.181412, 31.651756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270966, 44.111351, 31.798738>,  <41.564827, 43.994583, 32.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270966, 44.111351, 31.798738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615387, -0.666771, 0.420375,
		-0.285634, 0.685710, 0.669489,
		-0.734651, 0.291922, -0.612429,
		41.050571, 44.198929, 31.615009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272331, 44.342113, 32.366917>,  <41.564827, 43.994583, 32.043709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272331, 44.342113, 32.366917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230236, 44.101215, 32.050381>,  <42.204979, 43.956676, 31.860458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230236, 44.101215, 32.050381>,  <42.272331, 44.342113, 32.366917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230236, 44.101215, 32.050381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682991, 0.622166, -0.382665,
		0.722805, 0.500207, -0.476808,
		-0.105242, -0.602248, -0.791342,
		42.198662, 43.920540, 31.812979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402149, 43.970798, 32.947224>,  <42.272331, 44.342113, 32.366917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402149, 43.970798, 32.947224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360035, 43.751038, 33.278782>,  <42.334766, 43.619179, 33.477718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360035, 43.751038, 33.278782>,  <42.402149, 43.970798, 32.947224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360035, 43.751038, 33.278782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479637, 0.702112, 0.526296,
		-0.871128, 0.452981, 0.189592,
		-0.105287, -0.549406, 0.828895,
		42.328449, 43.586216, 33.527451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259281, 44.527309, 33.433647>,  <42.402149, 43.970798, 32.947224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259281, 44.527309, 33.433647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460247, 44.240253, 33.626549>,  <42.580826, 44.068020, 33.742290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460247, 44.240253, 33.626549>,  <42.259281, 44.527309, 33.433647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460247, 44.240253, 33.626549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547192, 0.695762, 0.465292,
		-0.669448, 0.030117, 0.742248,
		0.502415, -0.717641, 0.482256,
		42.610970, 44.024960, 33.771225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267879, 44.801281, 34.035728>,  <42.259281, 44.527309, 33.433647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267879, 44.801281, 34.035728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568245, 44.538567, 34.063332>,  <42.748463, 44.380939, 34.079895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568245, 44.538567, 34.063332>,  <42.267879, 44.801281, 34.035728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568245, 44.538567, 34.063332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587924, 0.712438, 0.383114,
		-0.300787, -0.247115, 0.921120,
		0.750914, -0.656784, 0.069008,
		42.793518, 44.341530, 34.084034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449554, 44.843098, 34.758354>,  <42.267879, 44.801281, 34.035728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449554, 44.843098, 34.758354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729008, 44.716297, 34.501785>,  <42.896679, 44.640217, 34.347843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729008, 44.716297, 34.501785>,  <42.449554, 44.843098, 34.758354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729008, 44.716297, 34.501785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662557, 0.625020, 0.412756,
		0.270056, -0.713344, 0.646692,
		0.698632, -0.317003, -0.641422,
		42.938599, 44.621197, 34.309361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078835, 44.554939, 35.097076>,  <42.449554, 44.843098, 34.758354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078835, 44.554939, 35.097076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196232, 44.683914, 34.737099>,  <43.266670, 44.761299, 34.521114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196232, 44.683914, 34.737099>,  <43.078835, 44.554939, 35.097076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196232, 44.683914, 34.737099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668282, 0.603949, 0.434332,
		0.683564, -0.728889, -0.038223,
		0.293496, 0.322438, -0.899941,
		43.284279, 44.780647, 34.467117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793701, 44.435497, 34.854862>,  <43.078835, 44.554939, 35.097076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793701, 44.435497, 34.854862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669075, 44.771839, 34.677822>,  <43.594299, 44.973644, 34.571598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669075, 44.771839, 34.677822>,  <43.793701, 44.435497, 34.854862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669075, 44.771839, 34.677822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503439, 0.541110, 0.673609,
		0.805903, -0.012953, -0.591906,
		-0.311561, 0.840852, -0.442603,
		43.575607, 45.024094, 34.545040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771111, 43.736801, 34.531403>,  <43.793701, 44.435497, 34.854862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771111, 43.736801, 34.531403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393002, 43.694546, 34.654888>,  <43.166138, 43.669193, 34.728981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393002, 43.694546, 34.654888>,  <43.771111, 43.736801, 34.531403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393002, 43.694546, 34.654888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276298, -0.762440, 0.585102,
		0.173569, 0.638377, 0.749899,
		-0.945269, -0.105640, 0.308718,
		43.109421, 43.662853, 34.747505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780468, 43.515167, 35.302814>,  <43.771111, 43.736801, 34.531403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780468, 43.515167, 35.302814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457077, 43.399422, 35.097824>,  <43.263042, 43.329975, 34.974831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457077, 43.399422, 35.097824>,  <43.780468, 43.515167, 35.302814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457077, 43.399422, 35.097824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024120, -0.886338, 0.462410,
		-0.588034, 0.361487, 0.723563,
		-0.808477, -0.289365, -0.512478,
		43.214535, 43.312611, 34.944080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388992, 43.145145, 35.748539>,  <43.780468, 43.515167, 35.302814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388992, 43.145145, 35.748539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244129, 43.024052, 35.395905>,  <43.157211, 42.951393, 35.184322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244129, 43.024052, 35.395905>,  <43.388992, 43.145145, 35.748539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244129, 43.024052, 35.395905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117290, -0.953072, 0.279102,
		-0.924710, -0.002323, 0.380666,
		-0.362153, -0.302737, -0.881587,
		43.135483, 42.933231, 35.131428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073242, 42.494678, 35.935780>,  <43.388992, 43.145145, 35.748539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073242, 42.494678, 35.935780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116444, 42.489059, 35.538158>,  <43.142365, 42.485687, 35.299587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116444, 42.489059, 35.538158>,  <43.073242, 42.494678, 35.935780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116444, 42.489059, 35.538158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044578, -0.998826, 0.018956,
		-0.993150, -0.046360, -0.107255,
		0.108008, -0.014045, -0.994051,
		43.148846, 42.484844, 35.239944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613857, 41.968533, 35.723278>,  <43.073242, 42.494678, 35.935780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613857, 41.968533, 35.723278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910908, 42.018555, 35.460110>,  <43.089138, 42.048569, 35.302208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910908, 42.018555, 35.460110>,  <42.613857, 41.968533, 35.723278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910908, 42.018555, 35.460110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099642, -0.992108, -0.076110,
		-0.662249, -0.009035, -0.749230,
		0.742629, 0.125058, -0.657923,
		43.133698, 42.056072, 35.262733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447998, 41.580826, 35.155186>,  <42.613857, 41.968533, 35.723278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447998, 41.580826, 35.155186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838055, 41.642803, 35.091816>,  <43.072086, 41.679989, 35.053795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838055, 41.642803, 35.091816>,  <42.447998, 41.580826, 35.155186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838055, 41.642803, 35.091816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123649, -0.973728, -0.191220,
		-0.183891, 0.166877, -0.968678,
		0.975139, 0.154939, -0.158425,
		43.130596, 41.689285, 35.044289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564693, 41.229755, 34.544250>,  <42.447998, 41.580826, 35.155186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564693, 41.229755, 34.544250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924919, 41.276375, 34.711769>,  <43.141056, 41.304348, 34.812283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924919, 41.276375, 34.711769>,  <42.564693, 41.229755, 34.544250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924919, 41.276375, 34.711769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200017, -0.966449, -0.161150,
		0.385965, 0.228893, -0.893666,
		0.900569, 0.116550, 0.418798,
		43.195091, 41.311340, 34.837410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075359, 40.936535, 34.045776>,  <42.564693, 41.229755, 34.544250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075359, 40.936535, 34.045776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267788, 40.926949, 34.396320>,  <43.383244, 40.921196, 34.606647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267788, 40.926949, 34.396320>,  <43.075359, 40.936535, 34.045776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267788, 40.926949, 34.396320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348701, -0.911919, -0.216357,
		0.804351, 0.409669, -0.430338,
		0.481068, -0.023967, 0.876356,
		43.412109, 40.919758, 34.659225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606670, 40.577553, 33.868271>,  <43.075359, 40.936535, 34.045776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606670, 40.577553, 33.868271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628822, 40.560566, 34.267296>,  <43.642113, 40.550373, 34.506710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628822, 40.560566, 34.267296>,  <43.606670, 40.577553, 33.868271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628822, 40.560566, 34.267296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345560, -0.936537, -0.059051,
		0.936761, 0.347988, -0.037188,
		0.055377, -0.042466, 0.997562,
		43.645435, 40.547825, 34.566563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210323, 40.123894, 34.068439>,  <43.606670, 40.577553, 33.868271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210323, 40.123894, 34.068439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979446, 40.123413, 34.395081>,  <43.840919, 40.123123, 34.591064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979446, 40.123413, 34.395081>,  <44.210323, 40.123894, 34.068439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979446, 40.123413, 34.395081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305363, -0.927769, 0.214470,
		0.757364, 0.373152, 0.535870,
		-0.577194, -0.001203, 0.816606,
		43.806290, 40.123051, 34.640064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614868, 39.876324, 34.615795>,  <44.210323, 40.123894, 34.068439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614868, 39.876324, 34.615795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242542, 39.838646, 34.757057>,  <44.019146, 39.816040, 34.841812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242542, 39.838646, 34.757057>,  <44.614868, 39.876324, 34.615795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242542, 39.838646, 34.757057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144905, -0.982145, 0.119970,
		0.335548, 0.162843, 0.927841,
		-0.930812, -0.094194, 0.353154,
		43.963299, 39.810387, 34.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701004, 39.438492, 35.145142>,  <44.614868, 39.876324, 34.615795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701004, 39.438492, 35.145142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311363, 39.410839, 35.059029>,  <44.077579, 39.394249, 35.007359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311363, 39.410839, 35.059029>,  <44.701004, 39.438492, 35.145142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311363, 39.410839, 35.059029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031554, -0.984361, 0.173316,
		-0.223901, 0.162035, 0.961048,
		-0.974101, -0.069130, -0.215287,
		44.019135, 39.390099, 34.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441532, 39.020985, 35.648514>,  <44.701004, 39.438492, 35.145142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441532, 39.020985, 35.648514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170300, 39.000443, 35.355236>,  <44.007561, 38.988117, 35.179268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170300, 39.000443, 35.355236>,  <44.441532, 39.020985, 35.648514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170300, 39.000443, 35.355236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019299, -0.995968, 0.087609,
		-0.734737, 0.073555, 0.674353,
		-0.678078, -0.051355, -0.733194,
		43.966877, 38.985035, 35.135277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947327, 38.557800, 35.923351>,  <44.441532, 39.020985, 35.648514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947327, 38.557800, 35.923351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915310, 38.547920, 35.524757>,  <43.896099, 38.541992, 35.285603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915310, 38.547920, 35.524757>,  <43.947327, 38.557800, 35.923351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915310, 38.547920, 35.524757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127445, -0.991235, 0.034802,
		-0.988611, 0.129782, 0.076192,
		-0.080041, -0.024696, -0.996486,
		43.891296, 38.540512, 35.225811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326397, 38.122784, 35.797894>,  <43.947327, 38.557800, 35.923351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326397, 38.122784, 35.797894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521976, 38.144527, 35.449646>,  <43.639324, 38.157574, 35.240700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521976, 38.144527, 35.449646>,  <43.326397, 38.122784, 35.797894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521976, 38.144527, 35.449646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098725, -0.988196, -0.117141,
		-0.866707, 0.143228, -0.477813,
		0.488950, 0.054355, -0.870616,
		43.668663, 38.160835, 35.188461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974159, 37.899269, 35.242767>,  <43.326397, 38.122784, 35.797894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974159, 37.899269, 35.242767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351391, 37.817291, 35.138004>,  <43.577732, 37.768105, 35.075146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351391, 37.817291, 35.138004>,  <42.974159, 37.899269, 35.242767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351391, 37.817291, 35.138004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255373, -0.950769, -0.175566,
		-0.213030, 0.232457, -0.948990,
		0.943081, -0.204946, -0.261906,
		43.634315, 37.755806, 35.059433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843887, 37.388771, 34.749542>,  <42.974159, 37.899269, 35.242767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843887, 37.388771, 34.749542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234283, 37.379280, 34.836140>,  <43.468521, 37.373585, 34.888100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234283, 37.379280, 34.836140>,  <42.843887, 37.388771, 34.749542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234283, 37.379280, 34.836140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037876, -0.997393, 0.061420,
		0.214476, -0.068145, -0.974349,
		0.975995, -0.023731, 0.216498,
		43.527081, 37.372162, 34.901089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204906, 37.018719, 34.209759>,  <42.843887, 37.388771, 34.749542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204906, 37.018719, 34.209759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411526, 36.994755, 34.551422>,  <43.535496, 36.980377, 34.756420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411526, 36.994755, 34.551422>,  <43.204906, 37.018719, 34.209759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411526, 36.994755, 34.551422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070863, -0.997119, -0.027078,
		0.853321, -0.046541, -0.519305,
		0.516548, -0.059906, 0.854160,
		43.566490, 36.976784, 34.807671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411152, 36.460243, 34.030315>,  <43.204906, 37.018719, 34.209759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411152, 36.460243, 34.030315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527531, 36.484264, 34.412258>,  <43.597359, 36.498676, 34.641422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527531, 36.484264, 34.412258>,  <43.411152, 36.460243, 34.030315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527531, 36.484264, 34.412258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210251, -0.977644, -0.002578,
		0.933352, 0.201509, -0.297067,
		0.290945, 0.060052, 0.954853,
		43.614815, 36.502281, 34.698715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119663, 36.101898, 34.077286>,  <43.411152, 36.460243, 34.030315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119663, 36.101898, 34.077286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970505, 36.116718, 34.448139>,  <43.881012, 36.125610, 34.670650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970505, 36.116718, 34.448139>,  <44.119663, 36.101898, 34.077286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970505, 36.116718, 34.448139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021418, -0.998593, 0.048517,
		0.927627, 0.037949, 0.371574,
		-0.372893, 0.037047, 0.927135,
		43.858635, 36.127831, 34.726280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631611, 35.883171, 34.515053>,  <44.119663, 36.101898, 34.077286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631611, 35.883171, 34.515053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300724, 35.810738, 34.727814>,  <44.102192, 35.767277, 34.855473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300724, 35.810738, 34.727814>,  <44.631611, 35.883171, 34.515053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300724, 35.810738, 34.727814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214958, -0.976622, 0.001816,
		0.519142, 0.115840, 0.846802,
		-0.827215, -0.181084, 0.531906,
		44.052559, 35.756413, 34.887386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416641, 35.860435, 34.377174>,  <44.631611, 35.883171, 34.515053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416641, 35.860435, 34.377174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527378, 36.164398, 34.141922>,  <45.593822, 36.346775, 34.000771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527378, 36.164398, 34.141922>,  <45.416641, 35.860435, 34.377174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527378, 36.164398, 34.141922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609334, -0.334428, -0.718936,
		-0.743013, 0.557400, 0.370454,
		0.276845, 0.759909, -0.588128,
		45.610432, 36.392372, 33.965485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159962, 35.607052, 34.429173>,  <45.416641, 35.860435, 34.377174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159962, 35.607052, 34.429173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504677, 35.725689, 34.593781>,  <46.711506, 35.796871, 34.692547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504677, 35.725689, 34.593781>,  <46.159962, 35.607052, 34.429173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504677, 35.725689, 34.593781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188193, -0.940298, 0.283589,
		0.471062, -0.166949, -0.866157,
		0.861791, 0.296592, 0.411520,
		46.763214, 35.814667, 34.717236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.885159, 35.388596, 34.129723>,  <46.159962, 35.607052, 34.429173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.885159, 35.388596, 34.129723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896709, 35.433010, 34.527081>,  <46.903641, 35.459660, 34.765495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896709, 35.433010, 34.527081>,  <46.885159, 35.388596, 34.129723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896709, 35.433010, 34.527081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286818, -0.952942, 0.098172,
		0.957550, 0.282089, -0.059366,
		0.028879, 0.111032, 0.993397,
		46.905373, 35.466320, 34.825100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.607708, 35.534424, 34.467567>,  <46.885159, 35.388596, 34.129723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.607708, 35.534424, 34.467567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352036, 35.323967, 34.691929>,  <47.198631, 35.197693, 34.826546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352036, 35.323967, 34.691929>,  <47.607708, 35.534424, 34.467567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352036, 35.323967, 34.691929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591351, -0.802542, -0.078932,
		0.491680, 0.281240, 0.824108,
		-0.639183, -0.526146, 0.560906,
		47.160282, 35.166122, 34.860199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911663, 35.322048, 35.129818>,  <47.607708, 35.534424, 34.467567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911663, 35.322048, 35.129818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633057, 35.053432, 35.028706>,  <47.465893, 34.892262, 34.968037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633057, 35.053432, 35.028706>,  <47.911663, 35.322048, 35.129818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.633057, 35.053432, 35.028706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706361, -0.703651, -0.077007,
		-0.126155, -0.232190, 0.964454,
		-0.696520, -0.671538, -0.252780,
		47.424099, 34.851971, 34.952873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.984898, 32.896927, 46.603489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594284, 32.891064, 46.517540>,  <36.359917, 32.887547, 46.465973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594284, 32.891064, 46.517540>,  <36.984898, 32.896927, 46.603489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594284, 32.891064, 46.517540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185439, 0.450155, -0.873484,
		0.109529, -0.892831, -0.436872,
		-0.976533, -0.014659, -0.214870,
		36.301323, 32.886665, 46.453079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947723, 32.814156, 45.879471>,  <36.984898, 32.896927, 46.603489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947723, 32.814156, 45.879471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591408, 32.973770, 45.966431>,  <36.377617, 33.069538, 46.018608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591408, 32.973770, 45.966431>,  <36.947723, 32.814156, 45.879471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591408, 32.973770, 45.966431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060957, 0.369171, -0.927360,
		-0.450308, -0.839336, -0.304530,
		-0.890790, 0.399034, 0.217404,
		36.324169, 33.093479, 46.031651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593658, 32.703747, 45.311855>,  <36.947723, 32.814156, 45.879471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593658, 32.703747, 45.311855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357647, 32.972904, 45.490330>,  <36.216038, 33.134399, 45.597412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357647, 32.972904, 45.490330>,  <36.593658, 32.703747, 45.311855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357647, 32.972904, 45.490330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315952, 0.316122, -0.894562,
		-0.742992, -0.668792, 0.026079,
		-0.590032, 0.672892, 0.446182,
		36.180637, 33.174770, 45.624184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946552, 32.749916, 44.879662>,  <36.593658, 32.703747, 45.311855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946552, 32.749916, 44.879662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969490, 33.088467, 45.091457>,  <35.983253, 33.291595, 45.218533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969490, 33.088467, 45.091457>,  <35.946552, 32.749916, 44.879662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969490, 33.088467, 45.091457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231552, 0.527175, -0.817600,
		-0.971131, -0.075715, 0.226213,
		0.057349, 0.846377, 0.529488,
		35.986694, 33.342381, 45.250305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388493, 33.074314, 44.634628>,  <35.946552, 32.749916, 44.879662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388493, 33.074314, 44.634628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611050, 33.343758, 44.829224>,  <35.744583, 33.505424, 44.945980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611050, 33.343758, 44.829224>,  <35.388493, 33.074314, 44.634628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611050, 33.343758, 44.829224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126696, 0.647415, -0.751533,
		-0.821204, 0.356511, 0.445561,
		0.556392, 0.673613, 0.486491,
		35.777966, 33.545841, 44.975170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987911, 33.644527, 44.845356>,  <35.388493, 33.074314, 44.634628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987911, 33.644527, 44.845356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366604, 33.756336, 44.781387>,  <35.593819, 33.823421, 44.743008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366604, 33.756336, 44.781387>,  <34.987911, 33.644527, 44.845356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366604, 33.756336, 44.781387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298469, 0.575137, -0.761665,
		-0.120925, 0.768821, 0.627927,
		0.946728, 0.279521, -0.159921,
		35.650623, 33.840191, 44.733410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975742, 34.433823, 44.834652>,  <34.987911, 33.644527, 44.845356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975742, 34.433823, 44.834652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300446, 34.305721, 44.639309>,  <35.495266, 34.228859, 44.522102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300446, 34.305721, 44.639309>,  <34.975742, 34.433823, 44.834652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300446, 34.305721, 44.639309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218901, 0.608402, -0.762843,
		0.541417, 0.726144, 0.423771,
		0.811757, -0.320253, -0.488353,
		35.543972, 34.209644, 44.492802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435051, 35.077965, 44.553383>,  <34.975742, 34.433823, 44.834652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435051, 35.077965, 44.553383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535934, 34.759483, 44.333397>,  <35.596462, 34.568394, 44.201405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535934, 34.759483, 44.333397>,  <35.435051, 35.077965, 44.553383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535934, 34.759483, 44.333397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060741, 0.554188, -0.830172,
		0.965766, 0.242778, 0.091407,
		0.252204, -0.796200, -0.549962,
		35.611595, 34.520622, 44.168407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893299, 35.413975, 44.104145>,  <35.435051, 35.077965, 44.553383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893299, 35.413975, 44.104145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828064, 35.050892, 43.949501>,  <35.788921, 34.833042, 43.856716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828064, 35.050892, 43.949501>,  <35.893299, 35.413975, 44.104145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828064, 35.050892, 43.949501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114420, 0.406613, -0.906407,
		0.979954, -0.103588, -0.170173,
		-0.163087, -0.907709, -0.386610,
		35.779137, 34.778580, 43.833519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317337, 35.371601, 43.500488>,  <35.893299, 35.413975, 44.104145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317337, 35.371601, 43.500488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026714, 35.105453, 43.431896>,  <35.852341, 34.945766, 43.390739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026714, 35.105453, 43.431896>,  <36.317337, 35.371601, 43.500488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026714, 35.105453, 43.431896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164525, 0.410779, -0.896767,
		0.667121, -0.623336, -0.407923,
		-0.726554, -0.665367, -0.171485,
		35.808746, 34.905842, 43.380451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538330, 35.147873, 42.921787>,  <36.317337, 35.371601, 43.500488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538330, 35.147873, 42.921787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.150921, 35.048477, 42.927582>,  <35.918476, 34.988838, 42.931057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.150921, 35.048477, 42.927582>,  <36.538330, 35.147873, 42.921787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150921, 35.048477, 42.927582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009298, -0.022033, -0.999714,
		0.248740, -0.968384, 0.019029,
		-0.968526, -0.248492, 0.014485,
		35.860363, 34.973930, 42.931927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587597, 34.682659, 42.393646>,  <36.538330, 35.147873, 42.921787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587597, 34.682659, 42.393646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.214626, 34.806007, 42.468994>,  <35.990845, 34.880016, 42.514202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.214626, 34.806007, 42.468994>,  <36.587597, 34.682659, 42.393646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214626, 34.806007, 42.468994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250667, -0.176494, -0.951849,
		-0.260284, -0.934747, 0.241868,
		-0.932426, 0.308379, 0.188371,
		35.934898, 34.898521, 42.525505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122993, 34.144997, 42.158310>,  <36.587597, 34.682659, 42.393646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122993, 34.144997, 42.158310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899246, 34.476551, 42.155357>,  <35.764999, 34.675484, 42.153587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899246, 34.476551, 42.155357>,  <36.122993, 34.144997, 42.158310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899246, 34.476551, 42.155357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340474, -0.237865, -0.909669,
		-0.755768, -0.506327, 0.415268,
		-0.559368, 0.828887, -0.007380,
		35.731434, 34.725216, 42.153145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671307, 33.965538, 41.725525>,  <36.122993, 34.144997, 42.158310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671307, 33.965538, 41.725525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642639, 34.364304, 41.738304>,  <35.625439, 34.603565, 41.745972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642639, 34.364304, 41.738304>,  <35.671307, 33.965538, 41.725525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642639, 34.364304, 41.738304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316856, 0.007614, -0.948443,
		-0.945762, -0.078100, 0.315334,
		-0.071673, 0.996916, 0.031948,
		35.621136, 34.663380, 41.747887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917328, 34.193264, 41.397255>,  <35.671307, 33.965538, 41.725525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917328, 34.193264, 41.397255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222565, 34.451759, 41.394001>,  <35.405708, 34.606857, 41.392048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222565, 34.451759, 41.394001>,  <34.917328, 34.193264, 41.397255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222565, 34.451759, 41.394001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051611, 0.048394, -0.997494,
		-0.644221, 0.761603, 0.070282,
		0.763096, 0.646234, -0.008130,
		35.451492, 34.645630, 41.391563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729195, 34.552860, 40.878838>,  <34.917328, 34.193264, 41.397255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729195, 34.552860, 40.878838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115788, 34.646660, 40.920647>,  <35.347744, 34.702938, 40.945732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115788, 34.646660, 40.920647>,  <34.729195, 34.552860, 40.878838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115788, 34.646660, 40.920647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083810, 0.096629, -0.991786,
		-0.242670, 0.967303, 0.073737,
		0.966482, 0.234496, 0.104519,
		35.405731, 34.717010, 40.952003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816257, 35.069908, 40.371109>,  <34.729195, 34.552860, 40.878838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816257, 35.069908, 40.371109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187782, 34.958725, 40.469124>,  <35.410698, 34.892017, 40.527931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187782, 34.958725, 40.469124>,  <34.816257, 35.069908, 40.371109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187782, 34.958725, 40.469124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294490, 0.152376, -0.943428,
		0.224892, 0.948432, 0.223384,
		0.928816, -0.277954, 0.245035,
		35.466427, 34.875340, 40.542633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223545, 35.681637, 40.077633>,  <34.816257, 35.069908, 40.371109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223545, 35.681637, 40.077633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448799, 35.352085, 40.103249>,  <35.583954, 35.154354, 40.118618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.448799, 35.352085, 40.103249>,  <35.223545, 35.681637, 40.077633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448799, 35.352085, 40.103249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410572, 0.211693, -0.886914,
		0.717152, 0.525749, 0.457473,
		0.563138, -0.823878, 0.064042,
		35.617741, 35.104923, 40.122459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792435, 35.939629, 39.729271>,  <35.223545, 35.681637, 40.077633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792435, 35.939629, 39.729271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793297, 35.539963, 39.745628>,  <35.793812, 35.300163, 39.755444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793297, 35.539963, 39.745628>,  <35.792435, 35.939629, 39.729271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793297, 35.539963, 39.745628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269075, -0.038806, -0.962337,
		0.963117, 0.013073, 0.268766,
		0.002151, -0.999161, 0.040893,
		35.793941, 35.240215, 39.757896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356670, 35.837543, 39.343479>,  <35.792435, 35.939629, 39.729271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356670, 35.837543, 39.343479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154465, 35.492512, 39.351536>,  <36.033142, 35.285492, 39.356369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154465, 35.492512, 39.351536>,  <36.356670, 35.837543, 39.343479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154465, 35.492512, 39.351536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042648, -0.048296, -0.997922,
		0.861764, -0.503603, 0.061202,
		-0.505513, -0.862584, 0.020142,
		36.002811, 35.233738, 39.357578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727581, 35.417969, 38.955677>,  <36.356670, 35.837543, 39.343479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727581, 35.417969, 38.955677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394009, 35.199760, 38.989063>,  <36.193867, 35.068836, 39.009094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394009, 35.199760, 38.989063>,  <36.727581, 35.417969, 38.955677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394009, 35.199760, 38.989063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030812, -0.197022, -0.979915,
		0.551012, -0.814607, 0.181111,
		-0.833928, -0.545525, 0.083462,
		36.143829, 35.036102, 39.014103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859344, 34.885395, 38.574608>,  <36.727581, 35.417969, 38.955677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859344, 34.885395, 38.574608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460709, 34.909546, 38.597073>,  <36.221527, 34.924038, 38.610554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460709, 34.909546, 38.597073>,  <36.859344, 34.885395, 38.574608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460709, 34.909546, 38.597073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050768, 0.087474, -0.994872,
		-0.064980, -0.994335, -0.084111,
		-0.996594, 0.060376, 0.056165,
		36.161732, 34.927658, 38.613922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616455, 35.084160, 38.477577>,  <36.859344, 34.885395, 38.574608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616455, 35.084160, 38.477577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013893, 35.067375, 38.435608>,  <38.252357, 35.057304, 38.410427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013893, 35.067375, 38.435608>,  <37.616455, 35.084160, 38.477577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013893, 35.067375, 38.435608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083819, -0.349028, 0.933356,
		-0.075786, -0.936172, -0.343275,
		0.993595, -0.041962, -0.104920,
		38.311970, 35.054787, 38.404133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917194, 34.375790, 38.617863>,  <37.616455, 35.084160, 38.477577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917194, 34.375790, 38.617863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172859, 34.672829, 38.697884>,  <38.326260, 34.851051, 38.745895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172859, 34.672829, 38.697884>,  <37.917194, 34.375790, 38.617863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172859, 34.672829, 38.697884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131098, -0.361515, 0.923104,
		0.757812, -0.563791, -0.328421,
		0.639166, 0.742595, 0.200049,
		38.364609, 34.895607, 38.757896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431313, 34.082096, 38.927883>,  <37.917194, 34.375790, 38.617863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431313, 34.082096, 38.927883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513241, 34.455776, 39.044716>,  <38.562397, 34.679985, 39.114815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513241, 34.455776, 39.044716>,  <38.431313, 34.082096, 38.927883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513241, 34.455776, 39.044716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228441, -0.335790, 0.913816,
		0.951768, -0.120448, -0.282188,
		0.204823, 0.934204, 0.292079,
		38.574688, 34.736038, 39.132339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262596, 34.208225, 39.265221>,  <38.431313, 34.082096, 38.927883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262596, 34.208225, 39.265221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977348, 34.464001, 39.380161>,  <38.806198, 34.617466, 39.449123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977348, 34.464001, 39.380161>,  <39.262596, 34.208225, 39.265221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977348, 34.464001, 39.380161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083651, -0.329344, 0.940497,
		0.696030, 0.694727, 0.181373,
		-0.713123, 0.639442, 0.287348,
		38.763412, 34.655834, 39.466366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564381, 34.431023, 39.753613>,  <39.262596, 34.208225, 39.265221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564381, 34.431023, 39.753613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185478, 34.541668, 39.818359>,  <38.958138, 34.608055, 39.857208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185478, 34.541668, 39.818359>,  <39.564381, 34.431023, 39.753613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185478, 34.541668, 39.818359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122641, -0.153780, 0.980465,
		0.296097, 0.948599, 0.111744,
		-0.947252, 0.276608, 0.161871,
		38.901302, 34.624649, 39.866920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602623, 34.931812, 40.198639>,  <39.564381, 34.431023, 39.753613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602623, 34.931812, 40.198639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219994, 34.821804, 40.237259>,  <38.990414, 34.755798, 40.260433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219994, 34.821804, 40.237259>,  <39.602623, 34.931812, 40.198639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219994, 34.821804, 40.237259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118939, -0.065882, 0.990713,
		-0.266106, 0.959178, 0.095731,
		-0.956578, -0.275021, 0.096552,
		38.933022, 34.739296, 40.266224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311825, 35.393898, 40.673340>,  <39.602623, 34.931812, 40.198639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311825, 35.393898, 40.673340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075211, 35.073112, 40.706673>,  <38.933243, 34.880642, 40.726673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075211, 35.073112, 40.706673>,  <39.311825, 35.393898, 40.673340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075211, 35.073112, 40.706673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233578, -0.071527, 0.969703,
		-0.771706, 0.593076, 0.229632,
		-0.591533, -0.801963, 0.083332,
		38.897751, 34.832523, 40.731670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212757, 35.296585, 41.362724>,  <39.311825, 35.393898, 40.673340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212757, 35.296585, 41.362724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.042244, 34.957653, 41.236038>,  <38.939934, 34.754292, 41.160027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.042244, 34.957653, 41.236038>,  <39.212757, 35.296585, 41.362724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042244, 34.957653, 41.236038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042690, -0.368570, 0.928619,
		-0.903581, 0.382337, 0.193288,
		-0.426285, -0.847334, -0.316711,
		38.914360, 34.703453, 41.141026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683647, 35.154972, 41.857502>,  <39.212757, 35.296585, 41.362724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683647, 35.154972, 41.857502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845863, 34.828262, 41.693348>,  <38.943192, 34.632236, 41.594856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845863, 34.828262, 41.693348>,  <38.683647, 35.154972, 41.857502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845863, 34.828262, 41.693348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081649, -0.479536, 0.873716,
		-0.910424, -0.320819, -0.261160,
		0.405540, -0.816775, -0.410386,
		38.967525, 34.583229, 41.570232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326900, 34.763573, 42.306271>,  <38.683647, 35.154972, 41.857502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326900, 34.763573, 42.306271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556141, 34.517090, 42.090183>,  <38.693687, 34.369202, 41.960529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556141, 34.517090, 42.090183>,  <38.326900, 34.763573, 42.306271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556141, 34.517090, 42.090183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057554, -0.627330, 0.776624,
		-0.817460, -0.476178, -0.324059,
		0.573103, -0.616209, -0.540223,
		38.728073, 34.332226, 41.928116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982815, 34.146343, 42.217289>,  <38.326900, 34.763573, 42.306271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982815, 34.146343, 42.217289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373306, 34.074749, 42.168400>,  <38.607601, 34.031792, 42.139065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373306, 34.074749, 42.168400>,  <37.982815, 34.146343, 42.217289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373306, 34.074749, 42.168400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010599, -0.602683, 0.797910,
		-0.216475, -0.777649, -0.590255,
		0.976231, -0.178984, -0.122224,
		38.666176, 34.021053, 42.131733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069771, 33.497646, 42.206436>,  <37.982815, 34.146343, 42.217289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069771, 33.497646, 42.206436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425297, 33.626564, 42.336746>,  <38.638615, 33.703915, 42.414932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425297, 33.626564, 42.336746>,  <38.069771, 33.497646, 42.206436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425297, 33.626564, 42.336746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047129, -0.642834, 0.764555,
		0.455830, -0.694903, -0.556173,
		0.888818, 0.322295, 0.325773,
		38.691944, 33.723251, 42.434479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639011, 32.928833, 42.395203>,  <38.069771, 33.497646, 42.206436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639011, 32.928833, 42.395203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762836, 33.253967, 42.592575>,  <38.837132, 33.449047, 42.710999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762836, 33.253967, 42.592575>,  <38.639011, 32.928833, 42.395203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762836, 33.253967, 42.592575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257840, -0.571234, 0.779237,
		0.915253, -0.113997, -0.386414,
		0.309563, 0.812832, 0.493431,
		38.855705, 33.497818, 42.740604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242821, 32.782879, 42.686398>,  <38.639011, 32.928833, 42.395203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242821, 32.782879, 42.686398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105610, 33.086941, 42.907124>,  <39.023285, 33.269379, 43.039558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105610, 33.086941, 42.907124>,  <39.242821, 32.782879, 42.686398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105610, 33.086941, 42.907124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182923, -0.522149, 0.833006,
		0.921342, 0.386683, 0.040061,
		-0.343028, 0.760156, 0.551811,
		39.002701, 33.314987, 43.072666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688316, 32.890419, 43.116501>,  <39.242821, 32.782879, 42.686398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688316, 32.890419, 43.116501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369316, 33.062611, 43.285583>,  <39.177917, 33.165928, 43.387035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369316, 33.062611, 43.285583>,  <39.688316, 32.890419, 43.116501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369316, 33.062611, 43.285583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205116, -0.465444, 0.860982,
		0.567384, 0.773335, 0.282892,
		-0.797498, 0.430482, 0.422709,
		39.130066, 33.191753, 43.412395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911678, 33.035084, 43.784897>,  <39.688316, 32.890419, 43.116501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911678, 33.035084, 43.784897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513889, 33.057060, 43.820683>,  <39.275215, 33.070248, 43.842155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513889, 33.057060, 43.820683>,  <39.911678, 33.035084, 43.784897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513889, 33.057060, 43.820683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061607, -0.384602, 0.921024,
		0.085013, 0.921446, 0.379091,
		-0.994473, 0.054944, 0.089464,
		39.215546, 33.073544, 43.847523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713825, 33.188454, 44.471481>,  <39.911678, 33.035084, 43.784897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713825, 33.188454, 44.471481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356716, 33.032654, 44.380932>,  <39.142452, 32.939175, 44.326603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356716, 33.032654, 44.380932>,  <39.713825, 33.188454, 44.471481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356716, 33.032654, 44.380932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035971, -0.439244, 0.897647,
		-0.449069, 0.809538, 0.378135,
		-0.892773, -0.389504, -0.226371,
		39.088886, 32.915802, 44.313019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326050, 33.331100, 45.020439>,  <39.713825, 33.188454, 44.471481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326050, 33.331100, 45.020439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107723, 33.045090, 44.845707>,  <38.976727, 32.873486, 44.740868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107723, 33.045090, 44.845707>,  <39.326050, 33.331100, 45.020439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107723, 33.045090, 44.845707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100838, -0.461500, 0.881391,
		-0.831814, 0.525129, 0.179794,
		-0.545818, -0.715023, -0.436835,
		38.943977, 32.830582, 44.714657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.638439, 33.205601, 45.494183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632870, 32.889175, 45.249554>,  <38.629528, 32.699322, 45.102776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632870, 32.889175, 45.249554>,  <38.638439, 33.205601, 45.494183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632870, 32.889175, 45.249554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242314, -0.590733, 0.769622,
		-0.970098, 0.158906, -0.183464,
		-0.013919, -0.791065, -0.611574,
		38.628693, 32.651855, 45.066082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003353, 32.831184, 45.516342>,  <38.638439, 33.205601, 45.494183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003353, 32.831184, 45.516342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256054, 32.554424, 45.376534>,  <38.407673, 32.388371, 45.292648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256054, 32.554424, 45.376534>,  <38.003353, 32.831184, 45.516342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256054, 32.554424, 45.376534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370884, -0.665733, 0.647491,
		-0.680689, -0.279419, -0.677191,
		0.631750, -0.691899, -0.349525,
		38.445580, 32.346855, 45.271675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656776, 32.108547, 45.468388>,  <38.003353, 32.831184, 45.516342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656776, 32.108547, 45.468388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048210, 32.029091, 45.489975>,  <38.283070, 31.981417, 45.502926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048210, 32.029091, 45.489975>,  <37.656776, 32.108547, 45.468388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048210, 32.029091, 45.489975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179844, -0.697516, 0.693633,
		-0.100143, -0.688485, -0.718304,
		0.978584, -0.198645, 0.053968,
		38.341785, 31.969498, 45.506165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663349, 31.447466, 45.561131>,  <37.656776, 32.108547, 45.468388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663349, 31.447466, 45.561131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042675, 31.535910, 45.652176>,  <38.270271, 31.588976, 45.706802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042675, 31.535910, 45.652176>,  <37.663349, 31.447466, 45.561131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042675, 31.535910, 45.652176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070598, -0.552290, 0.830657,
		0.309371, -0.803795, -0.508136,
		0.948317, 0.221108, 0.227609,
		38.327171, 31.602242, 45.720459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025585, 30.827267, 45.666611>,  <37.663349, 31.447466, 45.561131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025585, 30.827267, 45.666611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.213161, 31.119551, 45.865070>,  <38.325706, 31.294922, 45.984146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.213161, 31.119551, 45.865070>,  <38.025585, 30.827267, 45.666611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213161, 31.119551, 45.865070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051926, -0.537958, 0.841371,
		0.881703, -0.420313, -0.214326,
		0.468938, 0.730710, 0.496145,
		38.353844, 31.338764, 46.013912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398331, 30.470451, 46.100655>,  <38.025585, 30.827267, 45.666611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398331, 30.470451, 46.100655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397644, 30.837654, 46.259277>,  <38.397232, 31.057976, 46.354450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397644, 30.837654, 46.259277>,  <38.398331, 30.470451, 46.100655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397644, 30.837654, 46.259277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046621, -0.396056, 0.917042,
		0.998911, 0.020059, -0.042120,
		-0.001713, 0.918007, 0.396560,
		38.397129, 31.113056, 46.378246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821014, 30.410070, 46.647041>,  <38.398331, 30.470451, 46.100655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821014, 30.410070, 46.647041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619305, 30.749947, 46.708664>,  <38.498280, 30.953873, 46.745636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619305, 30.749947, 46.708664>,  <38.821014, 30.410070, 46.647041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619305, 30.749947, 46.708664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078983, -0.223033, 0.971606,
		0.859925, 0.477786, 0.179581,
		-0.504272, 0.849692, 0.154055,
		38.468021, 31.004854, 46.754879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197342, 30.828142, 46.946835>,  <38.821014, 30.410070, 46.647041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197342, 30.828142, 46.946835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844055, 30.986084, 47.048046>,  <38.632084, 31.080849, 47.108772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844055, 30.986084, 47.048046>,  <39.197342, 30.828142, 46.946835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844055, 30.986084, 47.048046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183976, -0.204561, 0.961409,
		0.431378, 0.895680, 0.108026,
		-0.883213, 0.394857, 0.253027,
		38.579090, 31.104542, 47.123955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257790, 31.136621, 47.545734>,  <39.197342, 30.828142, 46.946835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257790, 31.136621, 47.545734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858696, 31.159620, 47.531715>,  <38.619240, 31.173420, 47.523304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858696, 31.159620, 47.531715>,  <39.257790, 31.136621, 47.545734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858696, 31.159620, 47.531715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036731, -0.028430, 0.998921,
		0.056438, 0.997941, 0.030477,
		-0.997730, 0.057496, -0.035051,
		38.559376, 31.176868, 47.521198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067371, 31.596338, 48.150532>,  <39.257790, 31.136621, 47.545734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067371, 31.596338, 48.150532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784576, 31.335529, 48.040962>,  <38.614899, 31.179045, 47.975220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784576, 31.335529, 48.040962>,  <39.067371, 31.596338, 48.150532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784576, 31.335529, 48.040962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130878, -0.260013, 0.956694,
		-0.695011, 0.712222, 0.098491,
		-0.706987, -0.652023, -0.273926,
		38.572479, 31.139923, 47.958786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586803, 31.660643, 48.660004>,  <39.067371, 31.596338, 48.150532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586803, 31.660643, 48.660004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469368, 31.306902, 48.514824>,  <38.398907, 31.094658, 48.427715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469368, 31.306902, 48.514824>,  <38.586803, 31.660643, 48.660004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469368, 31.306902, 48.514824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208454, -0.311312, 0.927163,
		-0.932927, 0.347862, -0.092949,
		-0.293589, -0.884351, -0.362945,
		38.381290, 31.041597, 48.405941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136909, 31.463158, 49.161160>,  <38.586803, 31.660643, 48.660004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136909, 31.463158, 49.161160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241646, 31.145601, 48.941639>,  <38.304485, 30.955067, 48.809929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241646, 31.145601, 48.941639>,  <38.136909, 31.463158, 49.161160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241646, 31.145601, 48.941639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001496, -0.568303, 0.822818,
		-0.965111, -0.216264, -0.147615,
		0.261836, -0.793890, -0.548799,
		38.320198, 30.907434, 48.777000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736732, 30.982042, 49.380348>,  <38.136909, 31.463158, 49.161160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736732, 30.982042, 49.380348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050583, 30.800653, 49.211246>,  <38.238895, 30.691820, 49.109787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050583, 30.800653, 49.211246>,  <37.736732, 30.982042, 49.380348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050583, 30.800653, 49.211246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106277, -0.573422, 0.812338,
		-0.610797, -0.682308, -0.401726,
		0.784623, -0.453479, -0.422758,
		38.285973, 30.664612, 49.084419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544380, 30.207514, 49.485008>,  <37.736732, 30.982042, 49.380348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544380, 30.207514, 49.485008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933678, 30.235765, 49.397541>,  <38.167255, 30.252716, 49.345062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933678, 30.235765, 49.397541>,  <37.544380, 30.207514, 49.485008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933678, 30.235765, 49.397541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218863, -0.574866, 0.788434,
		-0.070016, -0.815194, -0.574941,
		0.973240, 0.070630, -0.218665,
		38.225651, 30.256954, 49.331940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791477, 29.481966, 49.505444>,  <37.544380, 30.207514, 49.485008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791477, 29.481966, 49.505444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123112, 29.703876, 49.533287>,  <38.322090, 29.837023, 49.549995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123112, 29.703876, 49.533287>,  <37.791477, 29.481966, 49.505444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123112, 29.703876, 49.533287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292317, -0.536213, 0.791850,
		0.476625, -0.636161, -0.606735,
		0.829084, 0.554774, 0.069612,
		38.371838, 29.870308, 49.554173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358776, 29.020971, 49.730389>,  <37.791477, 29.481966, 49.505444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358776, 29.020971, 49.730389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477318, 29.390795, 49.826195>,  <38.548443, 29.612688, 49.883678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477318, 29.390795, 49.826195>,  <38.358776, 29.020971, 49.730389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477318, 29.390795, 49.826195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565359, -0.371945, 0.736224,
		0.769769, -0.082769, -0.632934,
		0.296353, 0.924557, 0.239517,
		38.566223, 29.668161, 49.898048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036724, 28.994810, 49.894154>,  <38.358776, 29.020971, 49.730389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036724, 28.994810, 49.894154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919956, 29.320002, 50.095688>,  <38.849895, 29.515116, 50.216610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919956, 29.320002, 50.095688>,  <39.036724, 28.994810, 49.894154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919956, 29.320002, 50.095688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369391, -0.390075, 0.843440,
		0.882232, 0.432329, -0.186436,
		-0.291920, 0.812978, 0.503835,
		38.832382, 29.563894, 50.246838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511185, 29.062494, 50.369949>,  <39.036724, 28.994810, 49.894154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511185, 29.062494, 50.369949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251427, 29.324163, 50.525047>,  <39.095573, 29.481165, 50.618107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251427, 29.324163, 50.525047>,  <39.511185, 29.062494, 50.369949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251427, 29.324163, 50.525047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155701, -0.384708, 0.909812,
		0.744341, 0.651199, 0.147972,
		-0.649395, 0.654171, 0.387746,
		39.056610, 29.520414, 50.641373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847134, 29.351540, 50.961296>,  <39.511185, 29.062494, 50.369949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847134, 29.351540, 50.961296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.455376, 29.407963, 51.019100>,  <39.220322, 29.441816, 51.053783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.455376, 29.407963, 51.019100>,  <39.847134, 29.351540, 50.961296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455376, 29.407963, 51.019100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061971, -0.471121, 0.879889,
		0.192195, 0.870717, 0.452673,
		-0.979398, 0.141058, 0.144507,
		39.161556, 29.450279, 51.062450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883373, 29.601860, 51.627605>,  <39.847134, 29.351540, 50.961296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883373, 29.601860, 51.627605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.505692, 29.482634, 51.571552>,  <39.279083, 29.411097, 51.537918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.505692, 29.482634, 51.571552>,  <39.883373, 29.601860, 51.627605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505692, 29.482634, 51.571552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006482, -0.442208, 0.896889,
		-0.329303, 0.845936, 0.419465,
		-0.944202, -0.298067, -0.140137,
		39.222431, 29.393213, 51.529510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551575, 29.648012, 52.368359>,  <39.883373, 29.601860, 51.627605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551575, 29.648012, 52.368359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307552, 29.398094, 52.173439>,  <39.161137, 29.248142, 52.056488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307552, 29.398094, 52.173439>,  <39.551575, 29.648012, 52.368359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307552, 29.398094, 52.173439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214723, -0.461625, 0.860695,
		-0.762708, 0.629708, 0.147460,
		-0.610058, -0.624796, -0.487298,
		39.124535, 29.210655, 52.027248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898212, 29.562735, 52.753803>,  <39.551575, 29.648012, 52.368359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898212, 29.562735, 52.753803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923893, 29.242046, 52.516106>,  <38.939301, 29.049633, 52.373489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923893, 29.242046, 52.516106>,  <38.898212, 29.562735, 52.753803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923893, 29.242046, 52.516106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127548, -0.597178, 0.791902,
		-0.989752, 0.024952, -0.140598,
		0.064203, -0.801720, -0.594241,
		38.943153, 29.001530, 52.337833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246361, 29.119841, 52.754025>,  <38.898212, 29.562735, 52.753803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246361, 29.119841, 52.754025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544792, 28.878544, 52.641266>,  <38.723850, 28.733767, 52.573612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544792, 28.878544, 52.641266>,  <38.246361, 29.119841, 52.754025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544792, 28.878544, 52.641266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261261, -0.654617, 0.709379,
		-0.612458, -0.455607, -0.646001,
		0.746082, -0.603240, -0.281893,
		38.768616, 28.697571, 52.556698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036850, 28.359194, 52.736870>,  <38.246361, 29.119841, 52.754025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036850, 28.359194, 52.736870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.420361, 28.384304, 52.847721>,  <38.650467, 28.399370, 52.914234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.420361, 28.384304, 52.847721>,  <38.036850, 28.359194, 52.736870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420361, 28.384304, 52.847721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187508, -0.593028, 0.783045,
		0.213503, -0.802731, -0.556812,
		0.958779, 0.062776, 0.277131,
		38.707993, 28.403137, 52.930859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475948, 28.767221, 52.380665>,  <38.036850, 28.359194, 52.736870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475948, 28.767221, 52.380665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118847, 28.705383, 52.549938>,  <36.904587, 28.668282, 52.651501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118847, 28.705383, 52.549938>,  <37.475948, 28.767221, 52.380665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118847, 28.705383, 52.549938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448843, 0.386564, -0.805673,
		-0.039036, -0.909213, -0.414496,
		-0.892758, -0.154594, 0.423184,
		36.851021, 28.659004, 52.676891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023163, 28.539875, 51.857044>,  <37.475948, 28.767221, 52.380665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023163, 28.539875, 51.857044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765400, 28.678196, 52.129856>,  <36.610741, 28.761189, 52.293541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765400, 28.678196, 52.129856>,  <37.023163, 28.539875, 51.857044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765400, 28.678196, 52.129856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521362, 0.453778, -0.722681,
		-0.559392, -0.821284, -0.112131,
		-0.644409, 0.345802, 0.682026,
		36.572079, 28.781937, 52.334465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311790, 28.218548, 51.797199>,  <37.023163, 28.539875, 51.857044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311790, 28.218548, 51.797199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265076, 28.586750, 51.946350>,  <36.237045, 28.807671, 52.035839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265076, 28.586750, 51.946350>,  <36.311790, 28.218548, 51.797199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265076, 28.586750, 51.946350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674769, 0.201939, -0.709864,
		-0.728730, -0.334506, 0.597543,
		-0.116786, 0.920503, 0.372874,
		36.230042, 28.862902, 52.058212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581963, 28.317867, 51.718254>,  <36.311790, 28.218548, 51.797199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581963, 28.317867, 51.718254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751411, 28.675303, 51.777649>,  <35.853081, 28.889763, 51.813286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751411, 28.675303, 51.777649>,  <35.581963, 28.317867, 51.718254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751411, 28.675303, 51.777649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649250, 0.413828, -0.638139,
		-0.631680, 0.173924, 0.755467,
		0.423621, 0.893586, 0.148487,
		35.878498, 28.943378, 51.822193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012135, 28.780529, 51.655357>,  <35.581963, 28.317867, 51.718254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012135, 28.780529, 51.655357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341946, 29.002665, 51.611996>,  <35.539833, 29.135946, 51.585979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341946, 29.002665, 51.611996>,  <35.012135, 28.780529, 51.655357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341946, 29.002665, 51.611996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529805, 0.690477, -0.492492,
		-0.198647, 0.463508, 0.863539,
		0.824528, 0.555340, -0.108408,
		35.589302, 29.169266, 51.579472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700249, 29.396061, 51.397072>,  <35.012135, 28.780529, 51.655357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700249, 29.396061, 51.397072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087482, 29.484703, 51.350258>,  <35.319824, 29.537888, 51.322170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087482, 29.484703, 51.350258>,  <34.700249, 29.396061, 51.397072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087482, 29.484703, 51.350258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235095, 0.641306, -0.730382,
		-0.086802, 0.734588, 0.672938,
		0.968089, 0.221603, -0.117031,
		35.377911, 29.551184, 51.315147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751015, 30.036892, 51.175167>,  <34.700249, 29.396061, 51.397072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751015, 30.036892, 51.175167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108768, 29.909994, 51.049030>,  <35.323421, 29.833855, 50.973351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108768, 29.909994, 51.049030>,  <34.751015, 30.036892, 51.175167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108768, 29.909994, 51.049030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051981, 0.626482, -0.777701,
		0.444276, 0.711952, 0.543822,
		0.894381, -0.317245, -0.315339,
		35.377083, 29.814821, 50.954430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135281, 30.578342, 51.021854>,  <34.751015, 30.036892, 51.175167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135281, 30.578342, 51.021854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338955, 30.300348, 50.818787>,  <35.461159, 30.133551, 50.696945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338955, 30.300348, 50.818787>,  <35.135281, 30.578342, 51.021854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338955, 30.300348, 50.818787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064649, 0.619077, -0.782665,
		0.858226, 0.365701, 0.360155,
		0.509185, -0.694987, -0.507665,
		35.491711, 30.091852, 50.666489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697296, 30.877916, 50.716694>,  <35.135281, 30.578342, 51.021854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697296, 30.877916, 50.716694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640331, 30.553604, 50.489590>,  <35.606152, 30.359016, 50.353325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640331, 30.553604, 50.489590>,  <35.697296, 30.877916, 50.716694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640331, 30.553604, 50.489590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179638, 0.542912, -0.820352,
		0.973370, -0.218820, 0.068329,
		-0.142413, -0.810780, -0.567763,
		35.597607, 30.310369, 50.319260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288658, 30.854338, 50.330036>,  <35.697296, 30.877916, 50.716694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288658, 30.854338, 50.330036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001354, 30.652998, 50.137894>,  <35.828972, 30.532194, 50.022610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001354, 30.652998, 50.137894>,  <36.288658, 30.854338, 50.330036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001354, 30.652998, 50.137894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224519, 0.485783, -0.844752,
		0.658553, -0.714601, -0.235907,
		-0.718261, -0.503349, -0.480355,
		35.785877, 30.501993, 49.993786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551655, 30.684324, 49.690788>,  <36.288658, 30.854338, 50.330036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551655, 30.684324, 49.690788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158443, 30.656946, 49.622715>,  <35.922516, 30.640518, 49.581871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158443, 30.656946, 49.622715>,  <36.551655, 30.684324, 49.690788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158443, 30.656946, 49.622715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130486, 0.391107, -0.911048,
		0.128916, -0.917797, -0.375540,
		-0.983033, -0.068446, -0.170180,
		35.863533, 30.636412, 49.571663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300514, 30.147459, 49.210411>,  <36.551655, 30.684324, 49.690788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300514, 30.147459, 49.210411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049522, 30.458904, 49.208313>,  <35.898926, 30.645771, 49.207054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049522, 30.458904, 49.208313>,  <36.300514, 30.147459, 49.210411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049522, 30.458904, 49.208313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217004, 0.168401, -0.961536,
		-0.747781, -0.604485, -0.274631,
		-0.627482, 0.778614, -0.005249,
		35.861279, 30.692488, 49.206738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089584, 30.119942, 48.598728>,  <36.300514, 30.147459, 49.210411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089584, 30.119942, 48.598728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951630, 30.476191, 48.717281>,  <35.868855, 30.689939, 48.788414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951630, 30.476191, 48.717281>,  <36.089584, 30.119942, 48.598728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951630, 30.476191, 48.717281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158614, 0.366510, -0.916795,
		-0.925145, -0.269183, -0.267671,
		-0.344890, 0.890624, 0.296378,
		35.848164, 30.743378, 48.806194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681576, 30.309072, 48.027462>,  <36.089584, 30.119942, 48.598728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681576, 30.309072, 48.027462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695847, 30.656527, 48.225128>,  <35.704411, 30.865000, 48.343727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695847, 30.656527, 48.225128>,  <35.681576, 30.309072, 48.027462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695847, 30.656527, 48.225128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036381, 0.495278, -0.867972,
		-0.998701, 0.012988, 0.049272,
		0.035676, 0.868637, 0.494163,
		35.706551, 30.917118, 48.373379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162529, 30.767824, 47.722309>,  <35.681576, 30.309072, 48.027462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162529, 30.767824, 47.722309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422756, 31.008694, 47.907413>,  <35.578892, 31.153215, 48.018475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422756, 31.008694, 47.907413>,  <35.162529, 30.767824, 47.722309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422756, 31.008694, 47.907413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147352, 0.697847, -0.700926,
		-0.745015, 0.387812, 0.542729,
		0.650569, 0.602172, 0.462761,
		35.617928, 31.189346, 48.046242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893200, 31.413397, 47.602364>,  <35.162529, 30.767824, 47.722309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893200, 31.413397, 47.602364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267426, 31.491819, 47.719856>,  <35.491962, 31.538874, 47.790352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267426, 31.491819, 47.719856>,  <34.893200, 31.413397, 47.602364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267426, 31.491819, 47.719856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005227, 0.823961, -0.566622,
		-0.353113, 0.531648, 0.769845,
		0.935566, 0.196058, 0.293730,
		35.548096, 31.550636, 47.807976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955002, 32.154190, 47.621578>,  <34.893200, 31.413397, 47.602364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955002, 32.154190, 47.621578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.328915, 32.014004, 47.598419>,  <35.553265, 31.929892, 47.584522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.328915, 32.014004, 47.598419>,  <34.955002, 32.154190, 47.621578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328915, 32.014004, 47.598419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246348, 0.757048, -0.605137,
		0.255910, 0.551410, 0.794013,
		0.934785, -0.350465, -0.057897,
		35.609348, 31.908865, 47.581051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454773, 32.737606, 47.773926>,  <34.955002, 32.154190, 47.621578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454773, 32.737606, 47.773926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637177, 32.456326, 47.555729>,  <35.746616, 32.287556, 47.424812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637177, 32.456326, 47.555729>,  <35.454773, 32.737606, 47.773926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637177, 32.456326, 47.555729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230090, 0.685240, -0.691017,
		0.859719, 0.189597, 0.474275,
		0.456007, -0.703206, -0.545490,
		35.773979, 32.245365, 47.392082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005215, 33.042843, 47.552231>,  <35.454773, 32.737606, 47.773926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005215, 33.042843, 47.552231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007275, 32.733658, 47.298458>,  <36.008511, 32.548149, 47.146194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007275, 32.733658, 47.298458>,  <36.005215, 33.042843, 47.552231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007275, 32.733658, 47.298458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174105, 0.625448, -0.760594,
		0.984714, -0.106541, 0.137797,
		0.005151, -0.772958, -0.634436,
		36.008820, 32.501770, 47.108128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628231, 33.151142, 47.196491>,  <36.005215, 33.042843, 47.552231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628231, 33.151142, 47.196491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370239, 32.937107, 46.978252>,  <36.215443, 32.808685, 46.847309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370239, 32.937107, 46.978252>,  <36.628231, 33.151142, 47.196491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370239, 32.937107, 46.978252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029526, 0.730865, -0.681883,
		0.763627, -0.423692, -0.487194,
		-0.644982, -0.535089, -0.545599,
		36.176746, 32.776581, 46.814571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.971024, 42.345150, 30.939157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922043, 42.486244, 31.310228>,  <40.892654, 42.570900, 31.532871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922043, 42.486244, 31.310228>,  <40.971024, 42.345150, 30.939157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922043, 42.486244, 31.310228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516426, -0.775559, 0.363061,
		0.847532, 0.523533, -0.087195,
		-0.122449, 0.352736, 0.927676,
		40.885307, 42.592064, 31.588531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645988, 42.338043, 31.305182>,  <40.971024, 42.345150, 30.939157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645988, 42.338043, 31.305182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358234, 42.340115, 31.583019>,  <41.185581, 42.341358, 31.749722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358234, 42.340115, 31.583019>,  <41.645988, 42.338043, 31.305182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358234, 42.340115, 31.583019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380663, -0.833501, 0.400465,
		0.581019, 0.552494, 0.597635,
		-0.719383, 0.005180, 0.694594,
		41.142418, 42.341667, 31.791397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924873, 42.327244, 32.011280>,  <41.645988, 42.338043, 31.305182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924873, 42.327244, 32.011280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554047, 42.199417, 32.089691>,  <41.331551, 42.122723, 32.136738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554047, 42.199417, 32.089691>,  <41.924873, 42.327244, 32.011280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554047, 42.199417, 32.089691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368170, -0.874657, 0.315318,
		0.070690, 0.364491, 0.928520,
		-0.927067, -0.319563, 0.196024,
		41.275925, 42.103550, 32.148499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079418, 41.951298, 32.597866>,  <41.924873, 42.327244, 32.011280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079418, 41.951298, 32.597866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705643, 41.823803, 32.534336>,  <41.481377, 41.747307, 32.496220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705643, 41.823803, 32.534336>,  <42.079418, 41.951298, 32.597866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705643, 41.823803, 32.534336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250816, -0.905669, 0.341841,
		-0.252799, 0.279595, 0.926239,
		-0.934443, -0.318732, -0.158825,
		41.425308, 41.728184, 32.486687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826168, 41.583195, 33.169384>,  <42.079418, 41.951298, 32.597866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826168, 41.583195, 33.169384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553154, 41.454967, 32.906666>,  <41.389343, 41.378033, 32.749035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553154, 41.454967, 32.906666>,  <41.826168, 41.583195, 33.169384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553154, 41.454967, 32.906666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024615, -0.888081, 0.459027,
		-0.730436, 0.329471, 0.598258,
		-0.682538, -0.320564, -0.656796,
		41.348392, 41.358799, 32.709625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245583, 41.341488, 33.493591>,  <41.826168, 41.583195, 33.169384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245583, 41.341488, 33.493591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248787, 41.142082, 33.146854>,  <41.250710, 41.022438, 32.938812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248787, 41.142082, 33.146854>,  <41.245583, 41.341488, 33.493591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248787, 41.142082, 33.146854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039045, -0.866368, 0.497878,
		-0.999205, 0.029859, -0.026402,
		0.008008, -0.498513, -0.866845,
		41.251190, 40.992527, 32.886803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667561, 40.955765, 33.595551>,  <41.245583, 41.341488, 33.493591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667561, 40.955765, 33.595551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883347, 40.791138, 33.301720>,  <41.012817, 40.692364, 33.125423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883347, 40.791138, 33.301720>,  <40.667561, 40.955765, 33.595551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883347, 40.791138, 33.301720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286788, -0.910050, 0.299268,
		-0.791666, 0.049223, -0.608968,
		0.539461, -0.411565, -0.734572,
		41.045185, 40.667667, 33.081348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285717, 40.462200, 33.296001>,  <40.667561, 40.955765, 33.595551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285717, 40.462200, 33.296001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663406, 40.360687, 33.212070>,  <40.890022, 40.299778, 33.161713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663406, 40.360687, 33.212070>,  <40.285717, 40.462200, 33.296001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663406, 40.360687, 33.212070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184633, -0.935647, 0.300791,
		-0.272664, -0.245273, -0.930320,
		0.944227, -0.253782, -0.209832,
		40.946674, 40.284554, 33.149120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204597, 39.809025, 32.967541>,  <40.285717, 40.462200, 33.296001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204597, 39.809025, 32.967541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584824, 39.854717, 33.083042>,  <40.812958, 39.882133, 33.152344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584824, 39.854717, 33.083042>,  <40.204597, 39.809025, 32.967541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584824, 39.854717, 33.083042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115713, -0.993210, 0.011996,
		0.288162, 0.022009, -0.957329,
		0.950565, 0.114232, 0.288752,
		40.869991, 39.888988, 33.169666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675392, 39.255539, 32.582169>,  <40.204597, 39.809025, 32.967541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675392, 39.255539, 32.582169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885818, 39.358429, 32.906414>,  <41.012074, 39.420162, 33.100960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885818, 39.358429, 32.906414>,  <40.675392, 39.255539, 32.582169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885818, 39.358429, 32.906414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285250, -0.951315, 0.116755,
		0.801180, 0.169807, -0.573826,
		0.526064, 0.257225, 0.810612,
		41.043636, 39.435596, 33.149597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334423, 38.938457, 32.525280>,  <40.675392, 39.255539, 32.582169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334423, 38.938457, 32.525280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.284645, 39.004349, 32.916664>,  <41.254780, 39.043884, 33.151493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.284645, 39.004349, 32.916664>,  <41.334423, 38.938457, 32.525280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284645, 39.004349, 32.916664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252754, -0.948329, 0.191802,
		0.959494, 0.271178, 0.076378,
		-0.124444, 0.164728, 0.978457,
		41.247311, 39.053768, 33.210201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868553, 38.610107, 32.980755>,  <41.334423, 38.938457, 32.525280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868553, 38.610107, 32.980755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.617641, 38.695953, 33.280212>,  <41.467094, 38.747463, 33.459885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.617641, 38.695953, 33.280212>,  <41.868553, 38.610107, 32.980755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617641, 38.695953, 33.280212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228244, -0.868408, 0.440195,
		0.744601, 0.446997, 0.495745,
		-0.627275, 0.214619, 0.748642,
		41.429459, 38.760338, 33.504807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234436, 38.638157, 33.656113>,  <41.868553, 38.610107, 32.980755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234436, 38.638157, 33.656113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848854, 38.570400, 33.738190>,  <41.617504, 38.529747, 33.787437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848854, 38.570400, 33.738190>,  <42.234436, 38.638157, 33.656113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848854, 38.570400, 33.738190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259848, -0.765239, 0.588972,
		0.057254, 0.621059, 0.781670,
		-0.963951, -0.169394, 0.205194,
		41.559669, 38.519581, 33.799747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089207, 38.494473, 34.403309>,  <42.234436, 38.638157, 33.656113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089207, 38.494473, 34.403309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765469, 38.341499, 34.224998>,  <41.571228, 38.249718, 34.118011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765469, 38.341499, 34.224998>,  <42.089207, 38.494473, 34.403309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765469, 38.341499, 34.224998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032349, -0.728795, 0.683968,
		-0.586445, 0.567984, 0.577473,
		-0.809343, -0.382429, -0.445772,
		41.522667, 38.226772, 34.091267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701725, 38.317711, 34.989487>,  <42.089207, 38.494473, 34.403309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701725, 38.317711, 34.989487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515705, 38.108837, 34.703537>,  <41.404091, 37.983513, 34.531967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515705, 38.108837, 34.703537>,  <41.701725, 38.317711, 34.989487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515705, 38.108837, 34.703537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059513, -0.787246, 0.613760,
		-0.883280, 0.327977, 0.335035,
		-0.465054, -0.522183, -0.714878,
		41.376190, 37.952183, 34.489075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247368, 37.899761, 35.282810>,  <41.701725, 38.317711, 34.989487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247368, 37.899761, 35.282810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.283424, 37.719894, 34.927357>,  <41.305058, 37.611977, 34.714085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.283424, 37.719894, 34.927357>,  <41.247368, 37.899761, 35.282810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283424, 37.719894, 34.927357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035926, -0.893157, 0.448307,
		-0.995281, -0.008486, -0.096666,
		0.090142, -0.449664, -0.888638,
		41.310467, 37.584995, 34.660767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529961, 37.527596, 35.156940>,  <41.247368, 37.899761, 35.282810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529961, 37.527596, 35.156940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.814922, 37.347923, 34.941265>,  <40.985901, 37.240120, 34.811859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.814922, 37.347923, 34.941265>,  <40.529961, 37.527596, 35.156940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814922, 37.347923, 34.941265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178162, -0.858912, 0.480134,
		-0.678776, -0.245988, -0.691920,
		0.712405, -0.449178, -0.539183,
		41.028645, 37.213169, 34.779510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317329, 36.820248, 35.082886>,  <40.529961, 37.527596, 35.156940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317329, 36.820248, 35.082886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709465, 36.825558, 35.004131>,  <40.944744, 36.828743, 34.956879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709465, 36.825558, 35.004131>,  <40.317329, 36.820248, 35.082886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709465, 36.825558, 35.004131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109733, -0.865925, 0.487987,
		-0.164006, -0.499997, -0.850356,
		0.980337, 0.013280, -0.196883,
		41.003567, 36.829540, 34.945065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496346, 36.129391, 34.879673>,  <40.317329, 36.820248, 35.082886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496346, 36.129391, 34.879673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842522, 36.296276, 34.990631>,  <41.050228, 36.396408, 35.057205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842522, 36.296276, 34.990631>,  <40.496346, 36.129391, 34.879673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842522, 36.296276, 34.990631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233916, -0.826100, 0.512681,
		0.443056, -0.378806, -0.812531,
		0.865439, 0.417210, 0.277400,
		41.102154, 36.421440, 35.073853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967117, 35.637203, 34.799316>,  <40.496346, 36.129391, 34.879673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967117, 35.637203, 34.799316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.149075, 35.898796, 35.041103>,  <41.258251, 36.055752, 35.186176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.149075, 35.898796, 35.041103>,  <40.967117, 35.637203, 34.799316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149075, 35.898796, 35.041103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494390, -0.750012, 0.439386,
		0.740707, 0.098967, -0.664499,
		0.454897, 0.653978, 0.604468,
		41.285545, 36.094990, 35.222443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621136, 35.344025, 34.880985>,  <40.967117, 35.637203, 34.799316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621136, 35.344025, 34.880985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567780, 35.584877, 35.195858>,  <41.535767, 35.729389, 35.384781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567780, 35.584877, 35.195858>,  <41.621136, 35.344025, 34.880985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567780, 35.584877, 35.195858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431317, -0.679840, 0.593113,
		0.892285, 0.418640, -0.169023,
		-0.133393, 0.602128, 0.787177,
		41.527763, 35.765514, 35.432011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285152, 35.493855, 35.197754>,  <41.621136, 35.344025, 34.880985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285152, 35.493855, 35.197754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977623, 35.511433, 35.452934>,  <41.793106, 35.521980, 35.606041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977623, 35.511433, 35.452934>,  <42.285152, 35.493855, 35.197754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977623, 35.511433, 35.452934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522822, -0.531231, 0.666671,
		0.368194, 0.846087, 0.385449,
		-0.768824, 0.043943, 0.637949,
		41.746975, 35.524616, 35.644318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911594, 35.645626, 35.541492>,  <42.285152, 35.493855, 35.197754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911594, 35.645626, 35.541492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255295, 35.679035, 35.339615>,  <43.461514, 35.699081, 35.218487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255295, 35.679035, 35.339615>,  <42.911594, 35.645626, 35.541492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255295, 35.679035, 35.339615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027624, 0.992717, 0.117257,
		0.510814, -0.086811, 0.855297,
		0.859248, 0.083523, -0.504696,
		43.513069, 35.704094, 35.188206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323540, 36.077805, 35.887970>,  <42.911594, 35.645626, 35.541492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323540, 36.077805, 35.887970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523979, 36.103271, 35.542751>,  <43.644245, 36.118549, 35.335621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523979, 36.103271, 35.542751>,  <43.323540, 36.077805, 35.887970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523979, 36.103271, 35.542751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001652, 0.997218, 0.074522,
		0.865388, -0.038769, 0.499601,
		0.501100, 0.063665, -0.863044,
		43.674309, 36.122372, 35.283836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825195, 36.596630, 35.979038>,  <43.323540, 36.077805, 35.887970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825195, 36.596630, 35.979038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779232, 36.560944, 35.583294>,  <43.751652, 36.539532, 35.345848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779232, 36.560944, 35.583294>,  <43.825195, 36.596630, 35.979038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779232, 36.560944, 35.583294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228621, 0.966848, -0.113743,
		0.966708, -0.239261, -0.090716,
		-0.114922, -0.089216, -0.989360,
		43.744759, 36.534180, 35.286484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419727, 36.895340, 35.738686>,  <43.825195, 36.596630, 35.979038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419727, 36.895340, 35.738686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141441, 36.919762, 35.452400>,  <43.974468, 36.934414, 35.280628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141441, 36.919762, 35.452400>,  <44.419727, 36.895340, 35.738686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141441, 36.919762, 35.452400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230176, 0.962790, -0.141616,
		0.680439, -0.263266, -0.683882,
		-0.695717, 0.061052, -0.715717,
		43.932728, 36.938076, 35.237686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746037, 37.256252, 35.156452>,  <44.419727, 36.895340, 35.738686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746037, 37.256252, 35.156452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369537, 37.284393, 35.024326>,  <44.143639, 37.301277, 34.945053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369537, 37.284393, 35.024326>,  <44.746037, 37.256252, 35.156452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369537, 37.284393, 35.024326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115624, 0.986085, -0.119446,
		0.317311, -0.150620, -0.936284,
		-0.941246, 0.070356, -0.330311,
		44.087162, 37.305500, 34.925232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714024, 37.792934, 34.445698>,  <44.746037, 37.256252, 35.156452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714024, 37.792934, 34.445698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358330, 37.791981, 34.628677>,  <44.144913, 37.791409, 34.738464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358330, 37.791981, 34.628677>,  <44.714024, 37.792934, 34.445698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358330, 37.791981, 34.628677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076329, 0.986740, -0.143243,
		-0.451041, -0.162293, -0.877624,
		-0.889233, -0.002379, 0.457448,
		44.091560, 37.791267, 34.765911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328197, 38.165363, 34.082485>,  <44.714024, 37.792934, 34.445698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328197, 38.165363, 34.082485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120804, 38.174286, 34.424404>,  <43.996368, 38.179642, 34.629555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120804, 38.174286, 34.424404>,  <44.328197, 38.165363, 34.082485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120804, 38.174286, 34.424404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133053, 0.985379, -0.106423,
		-0.844672, -0.168911, -0.507935,
		-0.518484, 0.022310, 0.854796,
		43.965260, 38.180981, 34.680843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824703, 38.548759, 33.883457>,  <44.328197, 38.165363, 34.082485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824703, 38.548759, 33.883457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776657, 38.549038, 34.280560>,  <43.747829, 38.549206, 34.518822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776657, 38.549038, 34.280560>,  <43.824703, 38.548759, 33.883457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776657, 38.549038, 34.280560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156506, 0.987482, -0.019633,
		-0.980345, -0.157731, -0.118506,
		-0.120120, 0.000700, 0.992759,
		43.740620, 38.549248, 34.578388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144226, 38.773743, 34.169643>,  <43.824703, 38.548759, 33.883457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144226, 38.773743, 34.169643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390324, 38.844852, 34.476856>,  <43.537983, 38.887516, 34.661182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390324, 38.844852, 34.476856>,  <43.144226, 38.773743, 34.169643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390324, 38.844852, 34.476856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288162, 0.957537, 0.009204,
		-0.733783, -0.226980, 0.640346,
		0.615244, 0.177770, 0.768032,
		43.574898, 38.898182, 34.707264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808994, 39.162964, 34.652084>,  <43.144226, 38.773743, 34.169643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808994, 39.162964, 34.652084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190907, 39.235867, 34.746044>,  <43.420052, 39.279610, 34.802422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190907, 39.235867, 34.746044>,  <42.808994, 39.162964, 34.652084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190907, 39.235867, 34.746044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220783, 0.963783, 0.149591,
		-0.199131, -0.194689, 0.960439,
		0.954778, 0.182261, 0.234903,
		43.477341, 39.290546, 34.816517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775089, 39.558666, 35.201782>,  <42.808994, 39.162964, 34.652084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775089, 39.558666, 35.201782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148037, 39.635674, 35.079384>,  <43.371803, 39.681877, 35.005947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148037, 39.635674, 35.079384>,  <42.775089, 39.558666, 35.201782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148037, 39.635674, 35.079384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099759, 0.950562, 0.294076,
		0.347477, -0.243661, 0.905477,
		0.932366, 0.192514, -0.305991,
		43.427746, 39.693428, 34.987587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941277, 40.100811, 35.595455>,  <42.775089, 39.558666, 35.201782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941277, 40.100811, 35.595455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213409, 40.107368, 35.302368>,  <43.376690, 40.111301, 35.126514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213409, 40.107368, 35.302368>,  <42.941277, 40.100811, 35.595455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213409, 40.107368, 35.302368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018206, 0.999819, 0.005461,
		0.732674, 0.009625, 0.680512,
		0.680337, 0.016391, -0.732717,
		43.417511, 40.112286, 35.082554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602413, 40.471661, 35.878353>,  <42.941277, 40.100811, 35.595455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602413, 40.471661, 35.878353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605659, 40.501709, 35.479496>,  <43.607609, 40.519737, 35.240181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605659, 40.501709, 35.479496>,  <43.602413, 40.471661, 35.878353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605659, 40.501709, 35.479496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055602, 0.995598, 0.075456,
		0.998420, -0.056055, 0.003907,
		0.008120, 0.075120, -0.997141,
		43.608097, 40.524246, 35.180355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004841, 41.053181, 35.796146>,  <43.602413, 40.471661, 35.878353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004841, 41.053181, 35.796146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837463, 41.010834, 35.435326>,  <43.737038, 40.985424, 35.218834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837463, 41.010834, 35.435326>,  <44.004841, 41.053181, 35.796146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837463, 41.010834, 35.435326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108683, 0.991883, -0.065995,
		0.901718, 0.070422, -0.426551,
		-0.418442, -0.105867, -0.902052,
		43.711929, 40.979073, 35.164711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414776, 41.392998, 35.284966>,  <44.004841, 41.053181, 35.796146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414776, 41.392998, 35.284966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033169, 41.373421, 35.166672>,  <43.804207, 41.361675, 35.095695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033169, 41.373421, 35.166672>,  <44.414776, 41.392998, 35.284966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033169, 41.373421, 35.166672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010458, 0.980546, -0.196012,
		0.299573, -0.190092, -0.934944,
		-0.954016, -0.048942, -0.295733,
		43.746964, 41.358738, 35.077953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395729, 41.887012, 34.855659>,  <44.414776, 41.392998, 35.284966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395729, 41.887012, 34.855659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002815, 41.819138, 34.887478>,  <43.767067, 41.778412, 34.906570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002815, 41.819138, 34.887478>,  <44.395729, 41.887012, 34.855659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002815, 41.819138, 34.887478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172578, 0.984510, -0.030924,
		-0.073070, -0.044104, -0.996351,
		-0.982282, -0.169689, 0.079550,
		43.708130, 41.768230, 34.911343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989323, 42.211082, 34.347313>,  <44.395729, 41.887012, 34.855659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989323, 42.211082, 34.347313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703957, 42.134338, 34.616898>,  <43.532738, 42.088291, 34.778648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703957, 42.134338, 34.616898>,  <43.989323, 42.211082, 34.347313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703957, 42.134338, 34.616898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363100, 0.923811, -0.121376,
		-0.599328, -0.331308, -0.728725,
		-0.713417, -0.191856, 0.673964,
		43.489933, 42.076782, 34.819088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351089, 42.311577, 34.009369>,  <43.989323, 42.211082, 34.347313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351089, 42.311577, 34.009369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277672, 42.373722, 34.397633>,  <43.233620, 42.411007, 34.630589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277672, 42.373722, 34.397633>,  <43.351089, 42.311577, 34.009369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277672, 42.373722, 34.397633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394158, 0.892946, -0.217457,
		-0.900527, -0.422506, -0.102662,
		-0.183548, 0.155361, 0.970656,
		43.222607, 42.420330, 34.688828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647980, 42.542564, 33.962936>,  <43.351089, 42.311577, 34.009369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647980, 42.542564, 33.962936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772614, 42.651627, 34.327042>,  <42.847393, 42.717064, 34.545506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772614, 42.651627, 34.327042>,  <42.647980, 42.542564, 33.962936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772614, 42.651627, 34.327042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440175, 0.890384, -0.116025,
		-0.842116, -0.364522, 0.397446,
		0.311586, 0.272652, 0.910261,
		42.866089, 42.733421, 34.600121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151535, 42.893734, 34.349922>,  <42.647980, 42.542564, 33.962936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151535, 42.893734, 34.349922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.470863, 43.020588, 34.554710>,  <42.662460, 43.096699, 34.677582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.470863, 43.020588, 34.554710>,  <42.151535, 42.893734, 34.349922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470863, 43.020588, 34.554710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309578, 0.945298, -0.102824,
		-0.516573, -0.076408, 0.852827,
		0.798319, 0.317132, 0.511970,
		42.710358, 43.115726, 34.708302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.903423, 34.217834, 42.604679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542095, 34.052784, 42.557770>,  <39.325298, 33.953754, 42.529625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542095, 34.052784, 42.557770>,  <39.903423, 34.217834, 42.604679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542095, 34.052784, 42.557770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032339, 0.338118, -0.940548,
		0.427754, -0.845820, -0.318772,
		-0.903316, -0.412632, -0.117278,
		39.271099, 33.928993, 42.522587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969509, 33.817654, 42.042156>,  <39.903423, 34.217834, 42.604679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969509, 33.817654, 42.042156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576351, 33.884491, 42.073151>,  <39.340458, 33.924595, 42.091747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576351, 33.884491, 42.073151>,  <39.969509, 33.817654, 42.042156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576351, 33.884491, 42.073151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034340, 0.247079, -0.968387,
		-0.180958, -0.954480, -0.237114,
		-0.982891, 0.167095, 0.077488,
		39.281483, 33.934620, 42.096397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685551, 33.514557, 41.400497>,  <39.969509, 33.817654, 42.042156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685551, 33.514557, 41.400497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406204, 33.769848, 41.530083>,  <39.238598, 33.923023, 41.607834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406204, 33.769848, 41.530083>,  <39.685551, 33.514557, 41.400497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406204, 33.769848, 41.530083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239346, 0.218328, -0.946069,
		-0.674537, -0.738241, 0.000284,
		-0.698364, 0.638227, 0.323966,
		39.196693, 33.961315, 41.627274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048729, 33.396492, 41.002918>,  <39.685551, 33.514557, 41.400497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048729, 33.396492, 41.002918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018574, 33.766243, 41.152500>,  <39.000481, 33.988094, 41.242249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018574, 33.766243, 41.152500>,  <39.048729, 33.396492, 41.002918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018574, 33.766243, 41.152500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407750, 0.313654, -0.857532,
		-0.909976, -0.217130, 0.353269,
		-0.075392, 0.924379, 0.373952,
		38.995956, 34.043556, 41.264687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407814, 33.592499, 40.764355>,  <39.048729, 33.396492, 41.002918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407814, 33.592499, 40.764355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602104, 33.931644, 40.849388>,  <38.718678, 34.135132, 40.900406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602104, 33.931644, 40.849388>,  <38.407814, 33.592499, 40.764355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602104, 33.931644, 40.849388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390240, 0.427953, -0.815211,
		-0.782165, 0.313013, 0.538740,
		0.485727, 0.847868, 0.212580,
		38.747822, 34.186005, 40.913162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877594, 34.089409, 40.754498>,  <38.407814, 33.592499, 40.764355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877594, 34.089409, 40.754498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242840, 34.238106, 40.687523>,  <38.461987, 34.327324, 40.647339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242840, 34.238106, 40.687523>,  <37.877594, 34.089409, 40.754498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242840, 34.238106, 40.687523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344390, 0.483456, -0.804777,
		-0.218219, 0.792516, 0.569473,
		0.913113, 0.371739, -0.167435,
		38.516773, 34.349628, 40.637291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629234, 34.480400, 40.201374>,  <37.877594, 34.089409, 40.754498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629234, 34.480400, 40.201374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023987, 34.540169, 40.225815>,  <38.260838, 34.576031, 40.240479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023987, 34.540169, 40.225815>,  <37.629234, 34.480400, 40.201374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023987, 34.540169, 40.225815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043893, 0.612620, -0.789158,
		-0.155349, 0.776125, 0.611143,
		0.986884, 0.149420, 0.061103,
		38.320053, 34.584995, 40.244144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691456, 35.149120, 40.038025>,  <37.629234, 34.480400, 40.201374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691456, 35.149120, 40.038025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065598, 35.012943, 39.999626>,  <38.290081, 34.931236, 39.976585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065598, 35.012943, 39.999626>,  <37.691456, 35.149120, 40.038025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065598, 35.012943, 39.999626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124767, 0.571506, -0.811057,
		0.330981, 0.746647, 0.577036,
		0.935353, -0.340439, -0.096001,
		38.346203, 34.910812, 39.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062958, 35.687828, 39.734760>,  <37.691456, 35.149120, 40.038025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062958, 35.687828, 39.734760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291519, 35.368713, 39.657784>,  <38.428658, 35.177246, 39.611595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291519, 35.368713, 39.657784>,  <38.062958, 35.687828, 39.734760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291519, 35.368713, 39.657784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278646, 0.409171, -0.868870,
		0.771914, 0.442854, 0.456102,
		0.571406, -0.797784, -0.192445,
		38.462940, 35.129379, 39.600048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710751, 35.945930, 39.508114>,  <38.062958, 35.687828, 39.734760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710751, 35.945930, 39.508114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669861, 35.569458, 39.379284>,  <38.645329, 35.343575, 39.301987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669861, 35.569458, 39.379284>,  <38.710751, 35.945930, 39.508114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669861, 35.569458, 39.379284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266034, 0.286112, -0.920524,
		0.958528, -0.179782, 0.221138,
		-0.102223, -0.941179, -0.322075,
		38.639194, 35.287106, 39.282661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302105, 35.816422, 39.115639>,  <38.710751, 35.945930, 39.508114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302105, 35.816422, 39.115639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012608, 35.564743, 39.002285>,  <38.838909, 35.413734, 38.934273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012608, 35.564743, 39.002285>,  <39.302105, 35.816422, 39.115639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012608, 35.564743, 39.002285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211562, 0.188576, -0.959000,
		0.656842, -0.754021, -0.003366,
		-0.723741, -0.629199, -0.283387,
		38.795486, 35.375984, 38.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554459, 35.467850, 38.442726>,  <39.302105, 35.816422, 39.115639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554459, 35.467850, 38.442726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170856, 35.355431, 38.428177>,  <38.940697, 35.287979, 38.419449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170856, 35.355431, 38.428177>,  <39.554459, 35.467850, 38.442726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170856, 35.355431, 38.428177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103706, -0.228593, -0.967983,
		0.263739, -0.932070, 0.248368,
		-0.959003, -0.281052, -0.036372,
		38.883156, 35.271114, 38.417267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531216, 34.760506, 38.061592>,  <39.554459, 35.467850, 38.442726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531216, 34.760506, 38.061592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177544, 34.945221, 38.033371>,  <38.965340, 35.056049, 38.016438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177544, 34.945221, 38.033371>,  <39.531216, 34.760506, 38.061592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177544, 34.945221, 38.033371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019975, -0.188257, -0.981917,
		-0.466715, -0.866784, 0.175678,
		-0.884182, 0.461784, -0.070548,
		38.912289, 35.083755, 38.012207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114567, 34.318604, 37.682091>,  <39.531216, 34.760506, 38.061592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114567, 34.318604, 37.682091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018883, 34.702339, 37.622177>,  <38.961472, 34.932583, 37.586227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018883, 34.702339, 37.622177>,  <39.114567, 34.318604, 37.682091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018883, 34.702339, 37.622177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118809, -0.124187, -0.985120,
		-0.963671, -0.253451, -0.084271,
		-0.239214, 0.959344, -0.149788,
		38.947117, 34.990143, 37.577240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251011, 34.759933, 37.109402>,  <39.114567, 34.318604, 37.682091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251011, 34.759933, 37.109402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440506, 34.454231, 36.934368>,  <39.554203, 34.270809, 36.829346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440506, 34.454231, 36.934368>,  <39.251011, 34.759933, 37.109402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440506, 34.454231, 36.934368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514820, -0.643474, 0.566482,
		-0.714513, -0.043087, -0.698294,
		0.473742, -0.764254, -0.437588,
		39.582630, 34.224957, 36.803093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772644, 34.270599, 36.820496>,  <39.251011, 34.759933, 37.109402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772644, 34.270599, 36.820496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085503, 34.038147, 36.910416>,  <39.273220, 33.898678, 36.964367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085503, 34.038147, 36.910416>,  <38.772644, 34.270599, 36.820496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085503, 34.038147, 36.910416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594119, -0.586818, 0.550152,
		-0.187791, -0.563859, -0.804237,
		0.782149, -0.581126, 0.224800,
		39.320148, 33.863808, 36.977856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489761, 33.600864, 36.818954>,  <38.772644, 34.270599, 36.820496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489761, 33.600864, 36.818954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844086, 33.552341, 36.998123>,  <39.056679, 33.523228, 37.105625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844086, 33.552341, 36.998123>,  <38.489761, 33.600864, 36.818954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844086, 33.552341, 36.998123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407029, -0.666678, 0.624394,
		0.222874, -0.735408, -0.639923,
		0.885807, -0.121306, 0.447918,
		39.109829, 33.515949, 37.132500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552063, 32.760990, 36.989193>,  <38.489761, 33.600864, 36.818954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552063, 32.760990, 36.989193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815121, 32.969257, 37.206966>,  <38.972954, 33.094219, 37.337631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815121, 32.969257, 37.206966>,  <38.552063, 32.760990, 36.989193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815121, 32.969257, 37.206966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083476, -0.667889, 0.739565,
		0.748693, -0.531815, -0.395767,
		0.657640, 0.520670, 0.544437,
		39.012413, 33.125458, 37.370296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038261, 32.260860, 37.154099>,  <38.552063, 32.760990, 36.989193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038261, 32.260860, 37.154099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046879, 32.562393, 37.416786>,  <39.052048, 32.743313, 37.574398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046879, 32.562393, 37.416786>,  <39.038261, 32.260860, 37.154099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046879, 32.562393, 37.416786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244562, -0.632941, 0.734557,
		0.969394, -0.176434, 0.170721,
		0.021544, 0.753828, 0.656719,
		39.053341, 32.788540, 37.613800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456429, 32.055576, 37.664181>,  <39.038261, 32.260860, 37.154099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456429, 32.055576, 37.664181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248638, 32.349178, 37.839169>,  <39.123962, 32.525337, 37.944160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248638, 32.349178, 37.839169>,  <39.456429, 32.055576, 37.664181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248638, 32.349178, 37.839169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159465, -0.586255, 0.794277,
		0.839473, 0.342848, 0.421594,
		-0.519478, 0.734003, 0.437473,
		39.092796, 32.569378, 37.970409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583389, 31.980940, 38.335056>,  <39.456429, 32.055576, 37.664181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583389, 31.980940, 38.335056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270657, 32.230106, 38.345715>,  <39.083015, 32.379604, 38.352108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270657, 32.230106, 38.345715>,  <39.583389, 31.980940, 38.335056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270657, 32.230106, 38.345715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273681, -0.381275, 0.883022,
		0.560206, 0.683087, 0.468575,
		-0.781836, 0.622914, 0.026645,
		39.036106, 32.416981, 38.353706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470108, 32.308884, 38.993217>,  <39.583389, 31.980940, 38.335056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470108, 32.308884, 38.993217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091778, 32.359833, 38.873756>,  <38.864780, 32.390404, 38.802082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091778, 32.359833, 38.873756>,  <39.470108, 32.308884, 38.993217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091778, 32.359833, 38.873756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323974, -0.430820, 0.842280,
		-0.021381, 0.893404, 0.448746,
		-0.945825, 0.127373, -0.298650,
		38.808029, 32.398045, 38.784161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132938, 32.675217, 39.565578>,  <39.470108, 32.308884, 38.993217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132938, 32.675217, 39.565578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847263, 32.479176, 39.365685>,  <38.675858, 32.361549, 39.245750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847263, 32.479176, 39.365685>,  <39.132938, 32.675217, 39.565578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847263, 32.479176, 39.365685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337288, -0.384623, 0.859245,
		-0.613329, 0.782216, 0.109387,
		-0.714188, -0.490105, -0.499732,
		38.633007, 32.332146, 39.215763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539326, 32.799599, 39.985809>,  <39.132938, 32.675217, 39.565578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539326, 32.799599, 39.985809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444195, 32.485615, 39.756977>,  <38.387115, 32.297226, 39.619678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444195, 32.485615, 39.756977>,  <38.539326, 32.799599, 39.985809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444195, 32.485615, 39.756977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349110, -0.480536, 0.804492,
		-0.906399, 0.391051, -0.159751,
		-0.237831, -0.784961, -0.572077,
		38.372845, 32.250126, 39.585354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814075, 32.663963, 40.148602>,  <38.539326, 32.799599, 39.985809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814075, 32.663963, 40.148602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964367, 32.322636, 40.004009>,  <38.054543, 32.117840, 39.917255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964367, 32.322636, 40.004009>,  <37.814075, 32.663963, 40.148602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964367, 32.322636, 40.004009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442340, -0.507892, 0.739176,
		-0.814349, -0.117831, -0.568288,
		0.375727, -0.853324, -0.361480,
		38.077084, 32.066639, 39.895565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292858, 32.231998, 40.339184>,  <37.814075, 32.663963, 40.148602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292858, 32.231998, 40.339184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580860, 31.987511, 40.207729>,  <37.753662, 31.840818, 40.128857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580860, 31.987511, 40.207729>,  <37.292858, 32.231998, 40.339184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580860, 31.987511, 40.207729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231238, -0.657811, 0.716808,
		-0.654307, -0.440113, -0.614966,
		0.720008, -0.611216, -0.328639,
		37.796864, 31.804144, 40.109138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025578, 31.547134, 40.406376>,  <37.292858, 32.231998, 40.339184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025578, 31.547134, 40.406376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422993, 31.501793, 40.408634>,  <37.661442, 31.474588, 40.409988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422993, 31.501793, 40.408634>,  <37.025578, 31.547134, 40.406376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422993, 31.501793, 40.408634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074951, -0.617947, 0.782639,
		-0.085223, -0.778006, -0.622450,
		0.993539, -0.113352, 0.005649,
		37.721054, 31.467787, 40.410328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187550, 30.779877, 40.453217>,  <37.025578, 31.547134, 40.406376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187550, 30.779877, 40.453217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509983, 30.974228, 40.588364>,  <37.703442, 31.090839, 40.669453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509983, 30.974228, 40.588364>,  <37.187550, 30.779877, 40.453217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509983, 30.974228, 40.588364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030833, -0.604615, 0.795921,
		0.590999, -0.631161, -0.502350,
		0.806083, 0.485878, 0.337866,
		37.751808, 31.119991, 40.689724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345715, 30.295918, 39.857952>,  <37.187550, 30.779877, 40.453217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345715, 30.295918, 39.857952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091198, 30.006794, 39.750122>,  <36.938488, 29.833319, 39.685425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091198, 30.006794, 39.750122>,  <37.345715, 30.295918, 39.857952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091198, 30.006794, 39.750122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387525, 0.601641, -0.698465,
		0.667048, -0.339961, -0.662928,
		-0.636295, -0.722811, -0.269580,
		36.900311, 29.789951, 39.669247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266232, 30.410341, 39.164268>,  <37.345715, 30.295918, 39.857952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266232, 30.410341, 39.164268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956543, 30.165108, 39.227146>,  <36.770729, 30.017967, 39.264874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956543, 30.165108, 39.227146>,  <37.266232, 30.410341, 39.164268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956543, 30.165108, 39.227146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540511, 0.511258, -0.668178,
		0.329284, -0.602282, -0.727206,
		-0.774221, -0.613084, 0.157191,
		36.724277, 29.981182, 39.274303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069752, 30.073158, 38.488323>,  <37.266232, 30.410341, 39.164268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069752, 30.073158, 38.488323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759968, 30.043453, 38.739624>,  <36.574097, 30.025631, 38.890404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759968, 30.043453, 38.739624>,  <37.069752, 30.073158, 38.488323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759968, 30.043453, 38.739624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574661, 0.497845, -0.649551,
		-0.264534, -0.864081, -0.428235,
		-0.774459, -0.074262, 0.628250,
		36.527630, 30.021175, 38.928101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461361, 29.842403, 38.115299>,  <37.069752, 30.073158, 38.488323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461361, 29.842403, 38.115299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292908, 30.022930, 38.429996>,  <36.191833, 30.131247, 38.618813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292908, 30.022930, 38.429996>,  <36.461361, 29.842403, 38.115299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292908, 30.022930, 38.429996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705411, 0.382259, -0.596887,
		-0.570122, -0.806345, 0.157380,
		-0.421136, 0.451316, 0.786739,
		36.166565, 30.158325, 38.666019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787006, 29.995195, 37.966423>,  <36.461361, 29.842403, 38.115299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787006, 29.995195, 37.966423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827404, 30.214367, 38.298584>,  <35.851643, 30.345869, 38.497883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827404, 30.214367, 38.298584>,  <35.787006, 29.995195, 37.966423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827404, 30.214367, 38.298584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709384, 0.624877, -0.326042,
		-0.697550, -0.556149, 0.451799,
		0.100991, 0.547929, 0.830406,
		35.857700, 30.378746, 38.547707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200314, 29.965214, 38.201519>,  <35.787006, 29.995195, 37.966423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200314, 29.965214, 38.201519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366100, 30.271299, 38.398563>,  <35.465572, 30.454950, 38.516788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366100, 30.271299, 38.398563>,  <35.200314, 29.965214, 38.201519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366100, 30.271299, 38.398563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716547, 0.608095, -0.341732,
		-0.561053, -0.211344, 0.800346,
		0.414463, 0.765215, 0.492612,
		35.490440, 30.500864, 38.546349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682400, 30.444340, 38.258682>,  <35.200314, 29.965214, 38.201519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682400, 30.444340, 38.258682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988552, 30.700424, 38.284985>,  <35.172245, 30.854074, 38.300766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988552, 30.700424, 38.284985>,  <34.682400, 30.444340, 38.258682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988552, 30.700424, 38.284985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602023, 0.748336, -0.278499,
		-0.227508, 0.173568, 0.958183,
		0.765381, 0.640209, 0.065761,
		35.218166, 30.892487, 38.304714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446663, 31.079674, 38.655922>,  <34.682400, 30.444340, 38.258682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446663, 31.079674, 38.655922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760319, 31.181355, 38.429466>,  <34.948513, 31.242363, 38.293594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760319, 31.181355, 38.429466>,  <34.446663, 31.079674, 38.655922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760319, 31.181355, 38.429466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505601, 0.790667, -0.345273,
		0.359856, 0.556980, 0.748516,
		0.784137, 0.254202, -0.566136,
		34.995560, 31.257616, 38.259624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457298, 31.853958, 38.637268>,  <34.446663, 31.079674, 38.655922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457298, 31.853958, 38.637268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690273, 31.753639, 38.327980>,  <34.830059, 31.693447, 38.142406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690273, 31.753639, 38.327980>,  <34.457298, 31.853958, 38.637268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690273, 31.753639, 38.327980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361157, 0.772333, -0.522559,
		0.728238, 0.583611, 0.359259,
		0.582439, -0.250799, -0.773217,
		34.865005, 31.678400, 38.096016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737434, 32.388054, 38.418110>,  <34.457298, 31.853958, 38.637268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737434, 32.388054, 38.418110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750626, 32.156971, 38.091877>,  <34.758541, 32.018322, 37.896137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750626, 32.156971, 38.091877>,  <34.737434, 32.388054, 38.418110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750626, 32.156971, 38.091877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520691, 0.686607, -0.507398,
		0.853108, 0.441397, -0.278164,
		0.032974, -0.577703, -0.815581,
		34.760517, 31.983660, 37.847202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764423, 32.881027, 37.903599>,  <34.737434, 32.388054, 38.418110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764423, 32.881027, 37.903599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662880, 32.536842, 37.726887>,  <34.601955, 32.330334, 37.620861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662880, 32.536842, 37.726887>,  <34.764423, 32.881027, 37.903599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662880, 32.536842, 37.726887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598530, 0.498534, -0.627077,
		0.759815, 0.105231, -0.641567,
		-0.253855, -0.860459, -0.441777,
		34.586723, 32.278706, 37.594353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805119, 33.074059, 37.266808>,  <34.764423, 32.881027, 37.903599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805119, 33.074059, 37.266808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577782, 32.745026, 37.274170>,  <34.441380, 32.547604, 37.278587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577782, 32.745026, 37.274170>,  <34.805119, 33.074059, 37.266808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577782, 32.745026, 37.274170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668135, 0.448342, -0.593788,
		0.480196, -0.349765, -0.804411,
		-0.568337, -0.822590, 0.018398,
		34.407280, 32.498249, 37.279690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.037460, 27.770735, 42.621353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.646088, 27.701958, 42.575554>,  <37.411263, 27.660692, 42.548073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.646088, 27.701958, 42.575554>,  <38.037460, 27.770735, 42.621353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646088, 27.701958, 42.575554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059940, 0.294113, -0.953889,
		0.197686, -0.940178, -0.277463,
		-0.978431, -0.171940, -0.114496,
		37.352558, 27.650375, 42.541206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013226, 27.293226, 42.036282>,  <38.037460, 27.770735, 42.621353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013226, 27.293226, 42.036282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672596, 27.498487, 42.079170>,  <37.468220, 27.621643, 42.104904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672596, 27.498487, 42.079170>,  <38.013226, 27.293226, 42.036282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672596, 27.498487, 42.079170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048373, 0.280576, -0.958612,
		-0.521997, -0.811143, -0.263754,
		-0.851575, 0.513151, 0.107223,
		37.417122, 27.652433, 42.111336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621883, 27.177481, 41.415909>,  <38.013226, 27.293226, 42.036282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621883, 27.177481, 41.415909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441017, 27.505247, 41.556820>,  <37.332497, 27.701908, 41.641369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441017, 27.505247, 41.556820>,  <37.621883, 27.177481, 41.415909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441017, 27.505247, 41.556820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059219, 0.421671, -0.904813,
		-0.889967, -0.388262, -0.239190,
		-0.452164, 0.819418, 0.352281,
		37.305367, 27.751072, 41.662506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056114, 27.348330, 40.980633>,  <37.621883, 27.177481, 41.415909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056114, 27.348330, 40.980633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107471, 27.693306, 41.176472>,  <37.138287, 27.900291, 41.293976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107471, 27.693306, 41.176472>,  <37.056114, 27.348330, 40.980633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107471, 27.693306, 41.176472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247602, 0.505928, -0.826275,
		-0.960317, -0.015141, 0.278499,
		0.128390, 0.862443, 0.489600,
		37.145988, 27.952040, 41.323353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479576, 27.672573, 40.771759>,  <37.056114, 27.348330, 40.980633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479576, 27.672573, 40.771759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743416, 27.941784, 40.905602>,  <36.901722, 28.103310, 40.985909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743416, 27.941784, 40.905602>,  <36.479576, 27.672573, 40.771759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743416, 27.941784, 40.905602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249509, 0.616008, -0.747181,
		-0.708994, 0.409354, 0.574245,
		0.659601, 0.673026, 0.334608,
		36.941296, 28.143692, 41.005985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111858, 28.275383, 40.801426>,  <36.479576, 27.672573, 40.771759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111858, 28.275383, 40.801426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484882, 28.419720, 40.805965>,  <36.708698, 28.506321, 40.808689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484882, 28.419720, 40.805965>,  <36.111858, 28.275383, 40.801426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484882, 28.419720, 40.805965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299210, 0.790106, -0.534982,
		-0.202010, 0.495507, 0.844787,
		0.932559, 0.360841, 0.011348,
		36.764648, 28.527971, 40.809368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022083, 28.963982, 40.924110>,  <36.111858, 28.275383, 40.801426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022083, 28.963982, 40.924110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384354, 28.923901, 40.759327>,  <36.601715, 28.899853, 40.660458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384354, 28.923901, 40.759327>,  <36.022083, 28.963982, 40.924110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384354, 28.923901, 40.759327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201140, 0.753811, -0.625549,
		0.373221, 0.649407, 0.662553,
		0.905676, -0.100202, -0.411960,
		36.656055, 28.893841, 40.635738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358517, 29.676039, 40.829403>,  <36.022083, 28.963982, 40.924110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358517, 29.676039, 40.829403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547630, 29.433449, 40.573696>,  <36.661098, 29.287895, 40.420273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547630, 29.433449, 40.573696>,  <36.358517, 29.676039, 40.829403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547630, 29.433449, 40.573696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081859, 0.692107, -0.717138,
		0.877369, 0.391380, 0.277570,
		0.472782, -0.606473, -0.639271,
		36.689465, 29.251507, 40.381916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760170, 30.122366, 40.506790>,  <36.358517, 29.676039, 40.829403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760170, 30.122366, 40.506790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794060, 29.806059, 40.264301>,  <36.814392, 29.616274, 40.118809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794060, 29.806059, 40.264301>,  <36.760170, 30.122366, 40.506790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794060, 29.806059, 40.264301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040453, 0.605178, -0.795062,
		0.995583, 0.091882, 0.019283,
		0.084722, -0.790770, -0.606222,
		36.819477, 29.568829, 40.082436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528763, 30.248148, 40.746658>,  <36.760170, 30.122366, 40.506790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528763, 30.248148, 40.746658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764126, 30.549053, 40.865234>,  <37.905342, 30.729597, 40.936378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764126, 30.549053, 40.865234>,  <37.528763, 30.248148, 40.746658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764126, 30.549053, 40.865234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320147, -0.553413, 0.768921,
		0.742485, -0.357535, -0.566467,
		0.588406, 0.752265, 0.296437,
		37.940647, 30.774733, 40.954166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188530, 29.977537, 40.950436>,  <37.528763, 30.248148, 40.746658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188530, 29.977537, 40.950436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144543, 30.329622, 41.135101>,  <38.118153, 30.540873, 41.245899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144543, 30.329622, 41.135101>,  <38.188530, 29.977537, 40.950436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144543, 30.329622, 41.135101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200726, -0.435244, 0.877651,
		0.973456, 0.189178, -0.128820,
		-0.109964, 0.880213, 0.461664,
		38.111553, 30.593687, 41.273602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799843, 30.010536, 41.391773>,  <38.188530, 29.977537, 40.950436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799843, 30.010536, 41.391773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509834, 30.243074, 41.539490>,  <38.335827, 30.382597, 41.628120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509834, 30.243074, 41.539490>,  <38.799843, 30.010536, 41.391773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509834, 30.243074, 41.539490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137083, -0.403659, 0.904582,
		0.674944, 0.706467, 0.212970,
		-0.725024, 0.581347, 0.369291,
		38.292328, 30.417479, 41.650276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134201, 30.356405, 41.804283>,  <38.799843, 30.010536, 41.391773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134201, 30.356405, 41.804283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750832, 30.371166, 41.917458>,  <38.520809, 30.380024, 41.985363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750832, 30.371166, 41.917458>,  <39.134201, 30.356405, 41.804283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750832, 30.371166, 41.917458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251132, -0.361642, 0.897857,
		0.135457, 0.931586, 0.337340,
		-0.958428, 0.036905, 0.282939,
		38.463303, 30.382238, 42.002338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048012, 30.760965, 42.428822>,  <39.134201, 30.356405, 41.804283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048012, 30.760965, 42.428822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749393, 30.494884, 42.423523>,  <38.570221, 30.335236, 42.420345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749393, 30.494884, 42.423523>,  <39.048012, 30.760965, 42.428822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749393, 30.494884, 42.423523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218481, -0.263906, 0.939479,
		-0.628440, 0.698468, 0.342352,
		-0.746545, -0.665204, -0.013247,
		38.525429, 30.295324, 42.419548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928783, 30.756712, 43.097668>,  <39.048012, 30.760965, 42.428822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928783, 30.756712, 43.097668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722477, 30.440308, 42.966038>,  <38.598694, 30.250465, 42.887062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722477, 30.440308, 42.966038>,  <38.928783, 30.756712, 43.097668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722477, 30.440308, 42.966038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006089, -0.380710, 0.924675,
		-0.856707, 0.478920, 0.191541,
		-0.515767, -0.791009, -0.329073,
		38.567745, 30.203005, 42.867317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393200, 30.660143, 43.610241>,  <38.928783, 30.756712, 43.097668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393200, 30.660143, 43.610241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446930, 30.324371, 43.399597>,  <38.479168, 30.122908, 43.273212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446930, 30.324371, 43.399597>,  <38.393200, 30.660143, 43.610241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446930, 30.324371, 43.399597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134446, -0.541946, 0.829590,
		-0.981774, -0.040635, -0.185655,
		0.134325, -0.839430, -0.526605,
		38.487228, 30.072542, 43.241615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001816, 30.242149, 43.920315>,  <38.393200, 30.660143, 43.610241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001816, 30.242149, 43.920315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269745, 30.021284, 43.721737>,  <38.430500, 29.888765, 43.602589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269745, 30.021284, 43.721737>,  <38.001816, 30.242149, 43.920315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269745, 30.021284, 43.721737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163873, -0.542176, 0.824130,
		-0.724213, -0.633374, -0.272677,
		0.669821, -0.552162, -0.496444,
		38.470692, 29.855635, 43.572803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813988, 29.636791, 44.139938>,  <38.001816, 30.242149, 43.920315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813988, 29.636791, 44.139938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177326, 29.602461, 43.976212>,  <38.395329, 29.581863, 43.877975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177326, 29.602461, 43.976212>,  <37.813988, 29.636791, 44.139938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177326, 29.602461, 43.976212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317534, -0.495403, 0.808547,
		-0.272167, -0.864413, -0.422747,
		0.908348, -0.085824, -0.409313,
		38.449829, 29.576714, 43.853416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975296, 28.980581, 44.196274>,  <37.813988, 29.636791, 44.139938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975296, 28.980581, 44.196274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326183, 29.166880, 44.149670>,  <38.536716, 29.278658, 44.121708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326183, 29.166880, 44.149670>,  <37.975296, 28.980581, 44.196274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326183, 29.166880, 44.149670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345805, -0.444607, 0.826283,
		0.333036, -0.765118, -0.551073,
		0.877215, 0.465746, -0.116512,
		38.589348, 29.306604, 44.114716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413475, 28.470604, 44.211323>,  <37.975296, 28.980581, 44.196274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413475, 28.470604, 44.211323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.657387, 28.780920, 44.276218>,  <38.803734, 28.967110, 44.315155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.657387, 28.780920, 44.276218>,  <38.413475, 28.470604, 44.211323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657387, 28.780920, 44.276218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514448, -0.543134, 0.663587,
		0.602919, -0.321181, -0.730296,
		0.609780, 0.775789, 0.162235,
		38.840321, 29.013657, 44.324890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097595, 28.188690, 44.349705>,  <38.413475, 28.470604, 44.211323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097595, 28.188690, 44.349705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.113922, 28.567141, 44.478191>,  <39.123718, 28.794210, 44.555283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.113922, 28.567141, 44.478191>,  <39.097595, 28.188690, 44.349705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113922, 28.567141, 44.478191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383292, -0.311719, 0.869435,
		0.922725, 0.087635, -0.375365,
		0.040816, 0.946124, 0.321221,
		39.126167, 28.850979, 44.574558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833672, 28.408936, 44.497044>,  <39.097595, 28.188690, 44.349705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833672, 28.408936, 44.497044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585285, 28.619188, 44.729637>,  <39.436253, 28.745340, 44.869194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585285, 28.619188, 44.729637>,  <39.833672, 28.408936, 44.497044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585285, 28.619188, 44.729637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475412, -0.337253, 0.812554,
		0.623209, 0.781007, -0.040471,
		-0.620961, 0.525632, 0.581479,
		39.398998, 28.776878, 44.904079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932442, 28.065031, 45.260899>,  <39.833672, 28.408936, 44.497044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932442, 28.065031, 45.260899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834412, 28.450302, 45.305126>,  <39.775593, 28.681465, 45.331665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834412, 28.450302, 45.305126>,  <39.932442, 28.065031, 45.260899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834412, 28.450302, 45.305126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517202, -0.226355, 0.825388,
		0.820023, 0.145099, 0.553633,
		-0.245080, 0.963177, 0.110571,
		39.760887, 28.739256, 45.338299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.782589, 31.006523, 46.781071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109009, 30.779787, 46.735882>,  <33.304859, 30.643745, 46.708771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109009, 30.779787, 46.735882>,  <32.782589, 31.006523, 46.781071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109009, 30.779787, 46.735882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270357, 0.547103, -0.792203,
		0.510858, 0.615932, 0.599710,
		0.816046, -0.566839, -0.112971,
		33.353821, 30.609735, 46.701992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366173, 31.410658, 46.665257>,  <32.782589, 31.006523, 46.781071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366173, 31.410658, 46.665257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483578, 31.068041, 46.495464>,  <33.554020, 30.862471, 46.393589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483578, 31.068041, 46.495464>,  <33.366173, 31.410658, 46.665257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483578, 31.068041, 46.495464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230055, 0.494275, -0.838312,
		0.927860, 0.148402, 0.342128,
		0.293513, -0.856545, -0.424477,
		33.571632, 30.811077, 46.368122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024128, 31.559010, 46.307178>,  <33.366173, 31.410658, 46.665257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024128, 31.559010, 46.307178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.889416, 31.228043, 46.127419>,  <33.808590, 31.029463, 46.019562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.889416, 31.228043, 46.127419>,  <34.024128, 31.559010, 46.307178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889416, 31.228043, 46.127419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188044, 0.408565, -0.893148,
		0.922616, -0.385299, 0.017996,
		-0.336777, -0.827417, -0.449402,
		33.788383, 30.979818, 45.992599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481667, 31.444984, 45.777809>,  <34.024128, 31.559010, 46.307178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481667, 31.444984, 45.777809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159893, 31.228868, 45.679039>,  <33.966827, 31.099199, 45.619778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159893, 31.228868, 45.679039>,  <34.481667, 31.444984, 45.777809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159893, 31.228868, 45.679039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167052, 0.193150, -0.966844,
		0.570072, -0.819010, -0.065119,
		-0.804432, -0.540292, -0.246927,
		33.918564, 31.066780, 45.604961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641327, 30.997564, 45.192028>,  <34.481667, 31.444984, 45.777809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641327, 30.997564, 45.192028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.242771, 31.024120, 45.170845>,  <34.003639, 31.040054, 45.158134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.242771, 31.024120, 45.170845>,  <34.641327, 30.997564, 45.192028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242771, 31.024120, 45.170845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079588, 0.512434, -0.855031,
		-0.029631, -0.856156, -0.515867,
		-0.996387, 0.066392, -0.052956,
		33.943855, 31.044039, 45.154957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385624, 30.810978, 44.519489>,  <34.641327, 30.997564, 45.192028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385624, 30.810978, 44.519489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072193, 31.019438, 44.654789>,  <33.884136, 31.144514, 44.735970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072193, 31.019438, 44.654789>,  <34.385624, 30.810978, 44.519489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072193, 31.019438, 44.654789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132541, 0.672106, -0.728496,
		-0.606992, -0.526001, -0.595721,
		-0.783578, 0.521149, 0.338246,
		33.837120, 31.175783, 44.756264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080708, 30.894344, 43.943375>,  <34.385624, 30.810978, 44.519489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080708, 30.894344, 43.943375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.911400, 31.159307, 44.190617>,  <33.809814, 31.318287, 44.338963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.911400, 31.159307, 44.190617>,  <34.080708, 30.894344, 43.943375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911400, 31.159307, 44.190617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046562, 0.665426, -0.745010,
		-0.904805, -0.344123, -0.250814,
		-0.423273, 0.662410, 0.618104,
		33.784416, 31.358030, 44.376049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516705, 31.208723, 43.566765>,  <34.080708, 30.894344, 43.943375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516705, 31.208723, 43.566765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572723, 31.451767, 43.879482>,  <33.606335, 31.597593, 44.067112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572723, 31.451767, 43.879482>,  <33.516705, 31.208723, 43.566765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572723, 31.451767, 43.879482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118572, 0.794182, -0.595999,
		-0.983020, -0.009230, 0.183269,
		0.140048, 0.607609, 0.781791,
		33.614738, 31.634050, 44.114021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954800, 31.716467, 43.604588>,  <33.516705, 31.208723, 43.566765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954800, 31.716467, 43.604588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284412, 31.863716, 43.776844>,  <33.482182, 31.952066, 43.880199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284412, 31.863716, 43.776844>,  <32.954800, 31.716467, 43.604588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284412, 31.863716, 43.776844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033315, 0.790296, -0.611819,
		-0.565559, 0.489813, 0.663496,
		0.824035, 0.368124, 0.430641,
		33.531624, 31.974154, 43.906036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770348, 32.340218, 43.812634>,  <32.954800, 31.716467, 43.604588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770348, 32.340218, 43.812634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168655, 32.365192, 43.839600>,  <33.407639, 32.380177, 43.855778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168655, 32.365192, 43.839600>,  <32.770348, 32.340218, 43.812634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168655, 32.365192, 43.839600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021703, 0.872727, -0.487727,
		-0.089289, 0.484200, 0.870389,
		0.995769, 0.062438, 0.067416,
		33.467384, 32.383923, 43.859825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997375, 32.944820, 44.109596>,  <32.770348, 32.340218, 43.812634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997375, 32.944820, 44.109596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330070, 32.832424, 43.918072>,  <33.529686, 32.764988, 43.803158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330070, 32.832424, 43.918072>,  <32.997375, 32.944820, 44.109596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330070, 32.832424, 43.918072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014707, 0.851005, -0.524951,
		0.554977, 0.443662, 0.703679,
		0.831736, -0.280986, -0.478813,
		33.579590, 32.748127, 43.774429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304623, 33.539822, 43.966969>,  <32.997375, 32.944820, 44.109596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304623, 33.539822, 43.966969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523396, 33.301968, 43.731247>,  <33.654659, 33.159256, 43.589813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523396, 33.301968, 43.731247>,  <33.304623, 33.539822, 43.966969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523396, 33.301968, 43.731247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177797, 0.770361, -0.612317,
		0.818078, 0.230121, 0.527060,
		0.546934, -0.594633, -0.589301,
		33.687477, 33.123577, 43.554459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687111, 34.001431, 43.613308>,  <33.304623, 33.539822, 43.966969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687111, 34.001431, 43.613308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740211, 33.664806, 43.403870>,  <33.772072, 33.462830, 43.278206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740211, 33.664806, 43.403870>,  <33.687111, 34.001431, 43.613308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740211, 33.664806, 43.403870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231595, 0.539981, -0.809187,
		0.963712, -0.013843, 0.266584,
		0.132749, -0.841563, -0.523592,
		33.780037, 33.412338, 43.246792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299866, 34.138920, 43.225105>,  <33.687111, 34.001431, 43.613308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299866, 34.138920, 43.225105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064335, 33.879463, 43.032215>,  <33.923016, 33.723789, 42.916481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064335, 33.879463, 43.032215>,  <34.299866, 34.138920, 43.225105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064335, 33.879463, 43.032215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140846, 0.669845, -0.729020,
		0.795891, -0.361348, -0.485783,
		-0.588830, -0.648641, -0.482229,
		33.887688, 33.684872, 42.887547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942337, 33.969772, 43.140442>,  <34.299866, 34.138920, 43.225105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942337, 33.969772, 43.140442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226143, 34.245243, 43.200180>,  <35.396427, 34.410526, 43.236023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226143, 34.245243, 43.200180>,  <34.942337, 33.969772, 43.140442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226143, 34.245243, 43.200180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249716, -0.443890, 0.860583,
		0.658958, -0.573307, -0.486923,
		0.709518, 0.688681, 0.149341,
		35.438999, 34.451847, 43.244984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553577, 33.584633, 43.314644>,  <34.942337, 33.969772, 43.140442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553577, 33.584633, 43.314644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.618458, 33.955273, 43.450356>,  <35.657387, 34.177654, 43.531784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.618458, 33.955273, 43.450356>,  <35.553577, 33.584633, 43.314644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618458, 33.955273, 43.450356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360814, -0.375718, 0.853610,
		0.918425, -0.016037, -0.395270,
		0.162200, 0.926595, 0.339282,
		35.667118, 34.233250, 43.552139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346249, 33.630676, 43.448021>,  <35.553577, 33.584633, 43.314644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346249, 33.630676, 43.448021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098175, 33.873135, 43.647205>,  <35.949333, 34.018612, 43.766716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098175, 33.873135, 43.647205>,  <36.346249, 33.630676, 43.448021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098175, 33.873135, 43.647205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228163, -0.467953, 0.853792,
		0.750545, 0.643121, 0.151915,
		-0.620181, 0.606148, 0.497957,
		35.912121, 34.054977, 43.796593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658497, 33.761974, 44.085754>,  <36.346249, 33.630676, 43.448021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658497, 33.761974, 44.085754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307106, 33.912582, 44.203407>,  <36.096272, 34.002949, 44.273998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307106, 33.912582, 44.203407>,  <36.658497, 33.761974, 44.085754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307106, 33.912582, 44.203407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240804, -0.182809, 0.953202,
		0.412674, 0.908191, 0.069924,
		-0.878472, 0.376523, 0.294137,
		36.043564, 34.025539, 44.291649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861046, 34.219345, 44.613609>,  <36.658497, 33.761974, 44.085754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861046, 34.219345, 44.613609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483242, 34.106224, 44.680462>,  <36.256561, 34.038353, 44.720573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483242, 34.106224, 44.680462>,  <36.861046, 34.219345, 44.613609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483242, 34.106224, 44.680462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245746, -0.270677, 0.930775,
		-0.217987, 0.920194, 0.325154,
		-0.944505, -0.282803, 0.167130,
		36.199890, 34.021381, 44.730602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667137, 34.432224, 45.368511>,  <36.861046, 34.219345, 44.613609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667137, 34.432224, 45.368511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407822, 34.148685, 45.257336>,  <36.252232, 33.978561, 45.190632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407822, 34.148685, 45.257336>,  <36.667137, 34.432224, 45.368511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407822, 34.148685, 45.257336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062139, -0.413082, 0.908571,
		-0.758852, 0.571748, 0.311845,
		-0.648291, -0.708850, -0.277940,
		36.213333, 33.936031, 45.173954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134220, 34.457085, 45.929089>,  <36.667137, 34.432224, 45.368511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134220, 34.457085, 45.929089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075928, 34.124187, 45.715122>,  <36.040951, 33.924450, 45.586742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075928, 34.124187, 45.715122>,  <36.134220, 34.457085, 45.929089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075928, 34.124187, 45.715122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032448, -0.536374, 0.843357,
		-0.988792, 0.140262, 0.051163,
		-0.145733, -0.832244, -0.534913,
		36.032207, 33.874516, 45.554649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551975, 34.132587, 46.205181>,  <36.134220, 34.457085, 45.929089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551975, 34.132587, 46.205181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725487, 33.822922, 46.020786>,  <35.829594, 33.637123, 45.910149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725487, 33.822922, 46.020786>,  <35.551975, 34.132587, 46.205181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725487, 33.822922, 46.020786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063083, -0.536467, 0.841560,
		-0.898810, -0.335967, -0.281542,
		0.433775, -0.774163, -0.460988,
		35.855618, 33.590672, 45.882488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119377, 33.579456, 46.247345>,  <35.551975, 34.132587, 46.205181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119377, 33.579456, 46.247345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485840, 33.428070, 46.194550>,  <35.705719, 33.337238, 46.162872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485840, 33.428070, 46.194550>,  <35.119377, 33.579456, 46.247345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485840, 33.428070, 46.194550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187741, -0.696129, 0.692934,
		-0.354134, -0.610056, -0.708816,
		0.916156, -0.378466, -0.131990,
		35.760685, 33.314529, 46.154953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034969, 32.815826, 46.141434>,  <35.119377, 33.579456, 46.247345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034969, 32.815826, 46.141434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423935, 32.845486, 46.229900>,  <35.657314, 32.863281, 46.282982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423935, 32.845486, 46.229900>,  <35.034969, 32.815826, 46.141434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423935, 32.845486, 46.229900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120742, -0.651252, 0.749194,
		0.199588, -0.755230, -0.624333,
		0.972412, 0.074147, 0.221170,
		35.715660, 32.867729, 46.296253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236130, 32.189285, 46.189846>,  <35.034969, 32.815826, 46.141434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236130, 32.189285, 46.189846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543720, 32.353432, 46.385914>,  <35.728275, 32.451920, 46.503555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543720, 32.353432, 46.385914>,  <35.236130, 32.189285, 46.189846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543720, 32.353432, 46.385914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074961, -0.819359, 0.568358,
		0.634864, -0.400311, -0.660832,
		0.768979, 0.410367, 0.490174,
		35.774414, 32.476543, 46.532967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781776, 31.697628, 46.143536>,  <35.236130, 32.189285, 46.189846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781776, 31.697628, 46.143536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857372, 31.941263, 46.451637>,  <35.902729, 32.087444, 46.636497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857372, 31.941263, 46.451637>,  <35.781776, 31.697628, 46.143536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857372, 31.941263, 46.451637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054184, -0.789664, 0.611143,
		0.980483, -0.073765, -0.182243,
		0.188992, 0.609090, 0.770255,
		35.914070, 32.123989, 46.682713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290730, 31.343424, 46.620499>,  <35.781776, 31.697628, 46.143536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290730, 31.343424, 46.620499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125378, 31.616241, 46.861805>,  <36.026165, 31.779932, 47.006588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125378, 31.616241, 46.861805>,  <36.290730, 31.343424, 46.620499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125378, 31.616241, 46.861805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080207, -0.687227, 0.722001,
		0.907018, 0.250076, 0.338791,
		-0.413382, 0.682042, 0.603270,
		36.001362, 31.820854, 47.042786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732224, 31.309299, 47.245914>,  <36.290730, 31.343424, 46.620499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732224, 31.309299, 47.245914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387257, 31.484526, 47.347370>,  <36.180275, 31.589663, 47.408241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387257, 31.484526, 47.347370>,  <36.732224, 31.309299, 47.245914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387257, 31.484526, 47.347370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088566, -0.623918, 0.776455,
		0.498388, 0.647166, 0.576876,
		-0.862418, 0.438067, 0.253636,
		36.128532, 31.615946, 47.423462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349438, 31.406151, 46.977901>,  <36.732224, 31.309299, 47.245914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349438, 31.406151, 46.977901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732918, 31.343214, 47.072681>,  <37.963005, 31.305452, 47.129551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732918, 31.343214, 47.072681>,  <37.349438, 31.406151, 46.977901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732918, 31.343214, 47.072681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284414, 0.520212, -0.805288,
		0.003441, 0.839418, 0.543476,
		0.958695, -0.157343, 0.236952,
		38.020527, 31.296011, 47.143768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717014, 32.036919, 47.073494>,  <37.349438, 31.406151, 46.977901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717014, 32.036919, 47.073494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980522, 31.753115, 46.973396>,  <38.138626, 31.582832, 46.913338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980522, 31.753115, 46.973396>,  <37.717014, 32.036919, 47.073494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980522, 31.753115, 46.973396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242293, 0.514970, -0.822253,
		0.712263, 0.481043, 0.511155,
		0.658769, -0.709510, -0.250240,
		38.178154, 31.540262, 46.898323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379200, 32.367718, 46.828827>,  <37.717014, 32.036919, 47.073494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379200, 32.367718, 46.828827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.401833, 31.990694, 46.697144>,  <38.415413, 31.764479, 46.618134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.401833, 31.990694, 46.697144>,  <38.379200, 32.367718, 46.828827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401833, 31.990694, 46.697144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249606, 0.332618, -0.909430,
		0.966693, -0.030715, 0.254089,
		0.056582, -0.942561, -0.329206,
		38.418808, 31.707926, 46.598381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017586, 32.308228, 46.550419>,  <38.379200, 32.367718, 46.828827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017586, 32.308228, 46.550419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786919, 32.016876, 46.402412>,  <38.648518, 31.842066, 46.313606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786919, 32.016876, 46.402412>,  <39.017586, 32.308228, 46.550419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786919, 32.016876, 46.402412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197363, 0.315295, -0.928244,
		0.792779, -0.608319, -0.038066,
		-0.576671, -0.728380, -0.370019,
		38.613918, 31.798363, 46.291409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426479, 31.948759, 46.123135>,  <39.017586, 32.308228, 46.550419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426479, 31.948759, 46.123135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053745, 31.869364, 46.001621>,  <38.830105, 31.821726, 45.928715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053745, 31.869364, 46.001621>,  <39.426479, 31.948759, 46.123135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053745, 31.869364, 46.001621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226851, 0.334772, -0.914585,
		0.283231, -0.921157, -0.266926,
		-0.931836, -0.198487, -0.303784,
		38.774193, 31.809816, 45.910484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605206, 31.770178, 45.472584>,  <39.426479, 31.948759, 46.123135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605206, 31.770178, 45.472584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209358, 31.827665, 45.473347>,  <38.971851, 31.862158, 45.473804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209358, 31.827665, 45.473347>,  <39.605206, 31.770178, 45.472584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209358, 31.827665, 45.473347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057146, 0.405585, -0.912269,
		-0.131885, -0.902688, -0.409587,
		-0.989617, 0.143721, 0.001905,
		38.912472, 31.870781, 45.473919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391609, 31.622944, 44.806099>,  <39.605206, 31.770178, 45.472584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391609, 31.622944, 44.806099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077194, 31.821129, 44.953968>,  <38.888546, 31.940041, 45.042690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077194, 31.821129, 44.953968>,  <39.391609, 31.622944, 44.806099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077194, 31.821129, 44.953968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045572, 0.549933, -0.833965,
		-0.616494, -0.672376, -0.409689,
		-0.786040, 0.495464, 0.369672,
		38.841381, 31.969769, 45.064869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935085, 31.618799, 44.296825>,  <39.391609, 31.622944, 44.806099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935085, 31.618799, 44.296825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816856, 31.928324, 44.520916>,  <38.745918, 32.114037, 44.655373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816856, 31.928324, 44.520916>,  <38.935085, 31.618799, 44.296825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816856, 31.928324, 44.520916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011777, 0.583435, -0.812074,
		-0.955249, -0.246622, -0.163333,
		-0.295569, 0.773809, 0.560230,
		38.728184, 32.160465, 44.688984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282436, 31.911722, 44.070633>,  <38.935085, 31.618799, 44.296825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282436, 31.911722, 44.070633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453667, 32.208702, 44.276745>,  <38.556404, 32.386890, 44.400414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453667, 32.208702, 44.276745>,  <38.282436, 31.911722, 44.070633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453667, 32.208702, 44.276745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053422, 0.589955, -0.805667,
		-0.902161, 0.317362, 0.292211,
		0.428079, 0.742452, 0.515281,
		38.582088, 32.431438, 44.431328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954060, 32.433781, 43.822346>,  <38.282436, 31.911722, 44.070633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954060, 32.433781, 43.822346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285522, 32.581993, 43.990170>,  <38.484402, 32.670921, 44.090862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285522, 32.581993, 43.990170>,  <37.954060, 32.433781, 43.822346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285522, 32.581993, 43.990170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072964, 0.814647, -0.575350,
		-0.554975, 0.446157, 0.702101,
		0.828661, 0.370533, 0.419555,
		38.534122, 32.693153, 44.116035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849705, 33.154327, 44.026741>,  <37.954060, 32.433781, 43.822346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849705, 33.154327, 44.026741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235928, 33.102821, 43.936310>,  <38.467663, 33.071918, 43.882050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235928, 33.102821, 43.936310>,  <37.849705, 33.154327, 44.026741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235928, 33.102821, 43.936310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005796, 0.858086, -0.513474,
		0.260116, 0.497100, 0.827787,
		0.965560, -0.128765, -0.226083,
		38.525597, 33.064194, 43.868484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152996, 33.879265, 43.914738>,  <37.849705, 33.154327, 44.026741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152996, 33.879265, 43.914738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.450417, 33.654724, 43.769402>,  <38.628868, 33.520000, 43.682198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.450417, 33.654724, 43.769402>,  <38.152996, 33.879265, 43.914738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450417, 33.654724, 43.769402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182871, 0.693367, -0.696994,
		0.643190, 0.451803, 0.618207,
		0.743549, -0.561352, -0.363345,
		38.673481, 33.486320, 43.660397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669403, 34.370678, 43.698162>,  <38.152996, 33.879265, 43.914738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669403, 34.370678, 43.698162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759716, 34.032524, 43.504524>,  <38.813904, 33.829632, 43.388344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.759716, 34.032524, 43.504524>,  <38.669403, 34.370678, 43.698162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759716, 34.032524, 43.504524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143540, 0.520369, -0.841791,
		0.963546, 0.120572, 0.238834,
		0.225778, -0.845387, -0.484093,
		38.827450, 33.778908, 43.359295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257019, 34.583229, 43.367474>,  <38.669403, 34.370678, 43.698162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257019, 34.583229, 43.367474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104424, 34.263233, 43.182224>,  <39.012867, 34.071236, 43.071075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104424, 34.263233, 43.182224>,  <39.257019, 34.583229, 43.367474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104424, 34.263233, 43.182224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110970, 0.457752, -0.882127,
		0.917688, -0.387914, -0.085852,
		-0.381488, -0.799991, -0.463121,
		38.989979, 34.023235, 43.043289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.478930, 37.387260, 44.731812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.083160, 37.412994, 44.679813>,  <25.845699, 37.428436, 44.648613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.083160, 37.412994, 44.679813>,  <26.478930, 37.387260, 44.731812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083160, 37.412994, 44.679813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101611, -0.332140, -0.937741,
		-0.103509, -0.941034, 0.322090,
		-0.989425, 0.064337, -0.129999,
		25.786333, 37.432297, 44.640812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296700, 36.779507, 44.332653>,  <26.478930, 37.387260, 44.731812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296700, 36.779507, 44.332653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.987589, 37.029808, 44.290237>,  <25.802122, 37.179989, 44.264786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.987589, 37.029808, 44.290237>,  <26.296700, 36.779507, 44.332653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987589, 37.029808, 44.290237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001764, -0.164961, -0.986299,
		-0.634675, -0.762376, 0.126374,
		-0.772777, 0.625756, -0.106041,
		25.755756, 37.217533, 44.258427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823336, 36.407177, 43.881264>,  <26.296700, 36.779507, 44.332653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823336, 36.407177, 43.881264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759892, 36.801289, 43.855770>,  <25.721825, 37.037758, 43.840473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759892, 36.801289, 43.855770>,  <25.823336, 36.407177, 43.881264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759892, 36.801289, 43.855770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002036, -0.064227, -0.997933,
		-0.987339, -0.158410, 0.008181,
		-0.158608, 0.985282, -0.063737,
		25.712309, 37.096874, 43.836651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189066, 36.482735, 43.482964>,  <25.823336, 36.407177, 43.881264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189066, 36.482735, 43.482964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.422380, 36.805092, 43.442326>,  <25.562368, 36.998505, 43.417942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.422380, 36.805092, 43.442326>,  <25.189066, 36.482735, 43.482964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422380, 36.805092, 43.442326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040474, -0.096088, -0.994550,
		-0.811258, 0.584218, -0.023430,
		0.583286, 0.805888, -0.101598,
		25.597366, 37.046860, 43.411846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866882, 36.979630, 43.106697>,  <25.189066, 36.482735, 43.482964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866882, 36.979630, 43.106697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.243990, 37.095901, 43.041340>,  <25.470255, 37.165665, 43.002125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.243990, 37.095901, 43.041340>,  <24.866882, 36.979630, 43.106697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243990, 37.095901, 43.041340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225216, 0.193724, -0.954855,
		-0.245904, 0.937004, 0.248102,
		0.942767, 0.290679, -0.163391,
		25.526819, 37.183105, 42.992321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850124, 37.524292, 42.598030>,  <24.866882, 36.979630, 43.106697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850124, 37.524292, 42.598030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.236584, 37.422081, 42.583794>,  <25.468458, 37.360756, 42.575253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.236584, 37.422081, 42.583794>,  <24.850124, 37.524292, 42.598030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236584, 37.422081, 42.583794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051008, 0.324432, -0.944533,
		0.252903, 0.910741, 0.326482,
		0.966146, -0.255529, -0.035594,
		25.526428, 37.345421, 42.573116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177341, 37.992508, 42.075672>,  <24.850124, 37.524292, 42.598030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177341, 37.992508, 42.075672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467936, 37.723618, 42.132713>,  <25.642292, 37.562283, 42.166939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467936, 37.723618, 42.132713>,  <25.177341, 37.992508, 42.075672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467936, 37.723618, 42.132713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173620, -0.021229, -0.984584,
		0.664889, 0.740042, 0.101289,
		0.726484, -0.672225, 0.142601,
		25.685881, 37.521950, 42.175495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865583, 38.303028, 41.765083>,  <25.177341, 37.992508, 42.075672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865583, 38.303028, 41.765083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.889462, 37.904686, 41.792530>,  <25.903788, 37.665680, 41.808998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.889462, 37.904686, 41.792530>,  <25.865583, 38.303028, 41.765083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889462, 37.904686, 41.792530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283712, -0.048975, -0.957658,
		0.957050, 0.076632, 0.279613,
		0.059693, -0.995856, 0.068613,
		25.907370, 37.605930, 41.813114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468025, 38.215328, 41.305012>,  <25.865583, 38.303028, 41.765083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468025, 38.215328, 41.305012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.269629, 37.869625, 41.338585>,  <26.150591, 37.662201, 41.358730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.269629, 37.869625, 41.338585>,  <26.468025, 38.215328, 41.305012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269629, 37.869625, 41.338585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306881, -0.264895, -0.914142,
		0.812290, -0.427650, 0.396611,
		-0.495992, -0.864261, 0.083934,
		26.120831, 37.610348, 41.363766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940311, 37.621998, 40.937325>,  <26.468025, 38.215328, 41.305012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940311, 37.621998, 40.937325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573135, 37.464714, 40.958366>,  <26.352829, 37.370342, 40.970993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573135, 37.464714, 40.958366>,  <26.940311, 37.621998, 40.937325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573135, 37.464714, 40.958366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119242, -0.399947, -0.908748,
		0.378372, -0.827904, 0.414016,
		-0.917941, -0.393213, 0.052608,
		26.297752, 37.346748, 40.974148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991150, 36.928551, 40.707630>,  <26.940311, 37.621998, 40.937325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991150, 36.928551, 40.707630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618023, 37.055340, 40.639061>,  <26.394148, 37.131413, 40.597919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618023, 37.055340, 40.639061>,  <26.991150, 36.928551, 40.707630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618023, 37.055340, 40.639061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050164, -0.356844, -0.932816,
		-0.356844, -0.878745, 0.316970,
		0.932816, -0.316970, 0.171419,
		26.338179, 37.150433, 40.587635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766592, 36.451988, 40.172611>,  <26.991150, 36.928551, 40.707630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766592, 36.451988, 40.172611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482977, 36.732639, 40.144360>,  <26.312807, 36.901028, 40.127407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482977, 36.732639, 40.144360>,  <26.766592, 36.451988, 40.172611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482977, 36.732639, 40.144360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201233, -0.297317, -0.933332,
		-0.675848, -0.647554, 0.351999,
		-0.709038, 0.701624, -0.070631,
		26.270266, 36.943127, 40.123169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066868, 36.132984, 39.864243>,  <26.766592, 36.451988, 40.172611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066868, 36.132984, 39.864243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.960688, 36.502968, 39.755436>,  <25.896980, 36.724957, 39.690151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.960688, 36.502968, 39.755436>,  <26.066868, 36.132984, 39.864243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960688, 36.502968, 39.755436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331717, -0.352531, -0.875035,
		-0.905263, -0.142046, 0.400403,
		-0.265449, 0.924957, -0.272014,
		25.881052, 36.780457, 39.673832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288643, 36.154510, 39.702530>,  <26.066868, 36.132984, 39.864243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288643, 36.154510, 39.702530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.469090, 36.464371, 39.525257>,  <25.577356, 36.650288, 39.418892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.469090, 36.464371, 39.525257>,  <25.288643, 36.154510, 39.702530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469090, 36.464371, 39.525257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369047, -0.290219, -0.882937,
		-0.812588, 0.561862, 0.154960,
		0.451116, 0.774651, -0.443182,
		25.604424, 36.696766, 39.392303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.704376, 36.488323, 39.227200>,  <25.288643, 36.154510, 39.702530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.704376, 36.488323, 39.227200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.051563, 36.623756, 39.081875>,  <25.259874, 36.705017, 38.994678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.051563, 36.623756, 39.081875>,  <24.704376, 36.488323, 39.227200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051563, 36.623756, 39.081875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294757, -0.237558, -0.925572,
		-0.399691, 0.910454, -0.106393,
		0.867966, 0.338583, -0.363313,
		25.311953, 36.725330, 38.972881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.533730, 36.877850, 38.633080>,  <24.704376, 36.488323, 39.227200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.533730, 36.877850, 38.633080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.917543, 36.809540, 38.543526>,  <25.147833, 36.768555, 38.489792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.917543, 36.809540, 38.543526>,  <24.533730, 36.877850, 38.633080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917543, 36.809540, 38.543526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254130, -0.182755, -0.949747,
		0.121280, 0.968212, -0.218760,
		0.959536, -0.170778, -0.223888,
		25.205404, 36.758305, 38.476360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655323, 37.199860, 37.950806>,  <24.533730, 36.877850, 38.633080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655323, 37.199860, 37.950806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.971506, 36.963207, 38.014229>,  <25.161217, 36.821217, 38.052284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.971506, 36.963207, 38.014229>,  <24.655323, 37.199860, 37.950806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.971506, 36.963207, 38.014229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034390, -0.301331, -0.952899,
		0.611547, 0.747776, -0.258536,
		0.790460, -0.591634, 0.158562,
		25.208645, 36.785717, 38.061798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072933, 37.345467, 37.301750>,  <24.655323, 37.199860, 37.950806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072933, 37.345467, 37.301750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.172338, 37.000423, 37.477997>,  <25.231981, 36.793396, 37.583744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.172338, 37.000423, 37.477997>,  <25.072933, 37.345467, 37.301750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172338, 37.000423, 37.477997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041903, -0.464036, -0.884825,
		0.967721, 0.201430, -0.151466,
		0.248515, -0.862611, 0.440616,
		25.246893, 36.741642, 37.610180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609314, 37.030106, 36.778484>,  <25.072933, 37.345467, 37.301750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609314, 37.030106, 36.778484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463589, 36.723194, 36.989601>,  <25.376154, 36.539047, 37.116272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463589, 36.723194, 36.989601>,  <25.609314, 37.030106, 36.778484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463589, 36.723194, 36.989601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153838, -0.509372, -0.846684,
		0.918483, -0.389652, 0.067534,
		-0.364312, -0.767276, 0.527792,
		25.354296, 36.493011, 37.147938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834129, 36.469421, 36.380306>,  <25.609314, 37.030106, 36.778484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834129, 36.469421, 36.380306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.599600, 36.263798, 36.630733>,  <25.458881, 36.140423, 36.780991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.599600, 36.263798, 36.630733>,  <25.834129, 36.469421, 36.380306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599600, 36.263798, 36.630733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225463, -0.638759, -0.735631,
		0.778069, -0.572473, 0.258616,
		-0.586323, -0.514064, 0.626070,
		25.423702, 36.109577, 36.818554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047483, 35.717445, 36.458931>,  <25.834129, 36.469421, 36.380306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047483, 35.717445, 36.458931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.659204, 35.747307, 36.550297>,  <25.426237, 35.765224, 36.605118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.659204, 35.747307, 36.550297>,  <26.047483, 35.717445, 36.458931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659204, 35.747307, 36.550297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222476, -0.638474, -0.736787,
		0.090836, -0.766015, 0.636373,
		-0.970697, 0.074651, 0.228416,
		25.367996, 35.769703, 36.618820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574831, 35.197590, 36.266747>,  <26.047483, 35.717445, 36.458931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574831, 35.197590, 36.266747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937590, 35.039165, 36.209236>,  <27.155245, 34.944111, 36.174728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937590, 35.039165, 36.209236>,  <26.574831, 35.197590, 36.266747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937590, 35.039165, 36.209236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328961, 0.452315, 0.828973,
		-0.263290, -0.799091, 0.540492,
		0.906898, -0.396061, -0.143780,
		27.209660, 34.920345, 36.166103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961935, 34.943718, 36.845314>,  <26.574831, 35.197590, 36.266747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961935, 34.943718, 36.845314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257839, 35.085152, 36.616322>,  <27.435381, 35.170013, 36.478928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257839, 35.085152, 36.616322>,  <26.961935, 34.943718, 36.845314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257839, 35.085152, 36.616322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422819, 0.417572, 0.804274,
		0.523431, -0.837025, 0.159401,
		0.739759, 0.353584, -0.572481,
		27.479767, 35.191227, 36.444576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597488, 34.725204, 37.165081>,  <26.961935, 34.943718, 36.845314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597488, 34.725204, 37.165081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675041, 35.036884, 36.926666>,  <27.721573, 35.223892, 36.783615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675041, 35.036884, 36.926666>,  <27.597488, 34.725204, 37.165081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675041, 35.036884, 36.926666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399844, 0.492048, 0.773313,
		0.895842, -0.388255, -0.216158,
		0.193883, 0.779197, -0.596039,
		27.733206, 35.270645, 36.747856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297636, 34.834240, 37.247501>,  <27.597488, 34.725204, 37.165081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297636, 34.834240, 37.247501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136522, 35.174557, 37.112499>,  <28.039854, 35.378746, 37.031498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136522, 35.174557, 37.112499>,  <28.297636, 34.834240, 37.247501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136522, 35.174557, 37.112499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478765, 0.510113, 0.714541,
		0.780096, 0.126220, -0.612796,
		-0.402785, 0.850796, -0.337507,
		28.015686, 35.429794, 37.011246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741341, 35.272343, 37.471424>,  <28.297636, 34.834240, 37.247501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741341, 35.272343, 37.471424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484581, 35.538799, 37.319515>,  <28.330526, 35.698673, 37.228371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484581, 35.538799, 37.319515>,  <28.741341, 35.272343, 37.471424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484581, 35.538799, 37.319515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257293, 0.653670, 0.711699,
		0.722336, 0.359126, -0.590982,
		-0.641897, 0.666141, -0.379769,
		28.292011, 35.738640, 37.205585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081753, 35.985516, 37.328651>,  <28.741341, 35.272343, 37.471424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081753, 35.985516, 37.328651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688169, 36.024563, 37.388378>,  <28.452019, 36.047993, 37.424213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688169, 36.024563, 37.388378>,  <29.081753, 35.985516, 37.328651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688169, 36.024563, 37.388378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164904, 0.817000, 0.552556,
		-0.068047, 0.568314, -0.819993,
		-0.983959, 0.097620, 0.149312,
		28.392982, 36.053848, 37.433170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037577, 36.670399, 37.447281>,  <29.081753, 35.985516, 37.328651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037577, 36.670399, 37.447281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677242, 36.543762, 37.566120>,  <28.461042, 36.467781, 37.637424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677242, 36.543762, 37.566120>,  <29.037577, 36.670399, 37.447281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677242, 36.543762, 37.566120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011305, 0.701176, 0.712898,
		-0.434014, 0.638845, -0.635224,
		-0.900835, -0.316589, 0.297098,
		28.406992, 36.448784, 37.655251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796869, 37.217945, 37.688023>,  <29.037577, 36.670399, 37.447281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796869, 37.217945, 37.688023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553354, 36.942326, 37.845291>,  <28.407246, 36.776955, 37.939651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553354, 36.942326, 37.845291>,  <28.796869, 37.217945, 37.688023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553354, 36.942326, 37.845291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069627, 0.447276, 0.891681,
		-0.790273, 0.570219, -0.224319,
		-0.608786, -0.689053, 0.393173,
		28.370718, 36.735611, 37.963242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279512, 37.575394, 37.978149>,  <28.796869, 37.217945, 37.688023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279512, 37.575394, 37.978149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297085, 37.227940, 38.175552>,  <28.307629, 37.019466, 38.293995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297085, 37.227940, 38.175552>,  <28.279512, 37.575394, 37.978149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297085, 37.227940, 38.175552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143795, 0.494340, 0.857293,
		-0.988632, 0.033302, 0.146622,
		0.043931, -0.868631, 0.493509,
		28.310265, 36.967350, 38.323605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777613, 37.661861, 38.456955>,  <28.279512, 37.575394, 37.978149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777613, 37.661861, 38.456955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005821, 37.359592, 38.585617>,  <28.142746, 37.178230, 38.662815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005821, 37.359592, 38.585617>,  <27.777613, 37.661861, 38.456955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005821, 37.359592, 38.585617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100649, 0.324364, 0.940562,
		-0.815092, -0.568985, 0.108998,
		0.570521, -0.755674, 0.321654,
		28.176977, 37.132889, 38.682114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496187, 37.400818, 39.109238>,  <27.777613, 37.661861, 38.456955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496187, 37.400818, 39.109238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874569, 37.271141, 39.105869>,  <28.101597, 37.193333, 39.103848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874569, 37.271141, 39.105869>,  <27.496187, 37.400818, 39.109238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874569, 37.271141, 39.105869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152891, 0.422915, 0.893178,
		-0.286002, -0.846192, 0.449624,
		0.945953, -0.324194, -0.008421,
		28.158356, 37.173882, 39.103344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591406, 37.143208, 39.771488>,  <27.496187, 37.400818, 39.109238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591406, 37.143208, 39.771488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967882, 37.199169, 39.648468>,  <28.193768, 37.232746, 39.574657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967882, 37.199169, 39.648468>,  <27.591406, 37.143208, 39.771488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967882, 37.199169, 39.648468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214155, 0.457037, 0.863282,
		0.261337, -0.878376, 0.400198,
		0.941191, 0.139903, -0.307549,
		28.250240, 37.241138, 39.556202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059444, 36.984848, 40.352425>,  <27.591406, 37.143208, 39.771488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059444, 36.984848, 40.352425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295292, 37.201824, 40.113056>,  <28.436800, 37.332012, 39.969437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295292, 37.201824, 40.113056>,  <28.059444, 36.984848, 40.352425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295292, 37.201824, 40.113056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433994, 0.412081, 0.801148,
		0.681175, -0.732081, 0.007553,
		0.589618, 0.542445, -0.598419,
		28.472178, 37.364559, 39.933529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705366, 36.995869, 40.720325>,  <28.059444, 36.984848, 40.352425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705366, 36.995869, 40.720325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740910, 37.314175, 40.480709>,  <28.762236, 37.505157, 40.336937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740910, 37.314175, 40.480709>,  <28.705366, 36.995869, 40.720325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740910, 37.314175, 40.480709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291734, 0.554256, 0.779546,
		0.952363, -0.244031, -0.182903,
		0.088859, 0.795769, -0.599045,
		28.767567, 37.552906, 40.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313366, 37.430798, 40.919205>,  <28.705366, 36.995869, 40.720325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313366, 37.430798, 40.919205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.093023, 37.690105, 40.708946>,  <28.960817, 37.845692, 40.582790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.093023, 37.690105, 40.708946>,  <29.313366, 37.430798, 40.919205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093023, 37.690105, 40.708946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216719, 0.719318, 0.660011,
		0.805970, 0.249656, -0.536735,
		-0.550859, 0.648270, -0.525643,
		28.927765, 37.884586, 40.551254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691925, 38.120941, 40.988144>,  <29.313366, 37.430798, 40.919205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691925, 38.120941, 40.988144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320045, 38.180790, 40.853519>,  <29.096918, 38.216698, 40.772747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320045, 38.180790, 40.853519>,  <29.691925, 38.120941, 40.988144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320045, 38.180790, 40.853519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176375, 0.621337, 0.763434,
		0.323339, 0.769126, -0.551269,
		-0.929701, 0.149618, -0.336558,
		29.041136, 38.225674, 40.752552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574593, 38.863686, 40.883465>,  <29.691925, 38.120941, 40.988144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574593, 38.863686, 40.883465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215849, 38.709709, 40.970608>,  <29.000603, 38.617325, 41.022896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215849, 38.709709, 40.970608>,  <29.574593, 38.863686, 40.883465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215849, 38.709709, 40.970608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149185, 0.726946, 0.670293,
		-0.416394, 0.568658, -0.709397,
		-0.896861, -0.384938, 0.217861,
		28.946791, 38.594227, 41.035965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279707, 39.419460, 41.258896>,  <29.574593, 38.863686, 40.883465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279707, 39.419460, 41.258896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985006, 39.150841, 41.290462>,  <28.808186, 38.989670, 41.309402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985006, 39.150841, 41.290462>,  <29.279707, 39.419460, 41.258896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985006, 39.150841, 41.290462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383784, 0.511402, 0.768881,
		-0.556696, 0.536186, -0.634503,
		-0.736749, -0.671545, 0.078915,
		28.763981, 38.949379, 41.314137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634909, 39.864864, 41.441486>,  <29.279707, 39.419460, 41.258896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634909, 39.864864, 41.441486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589678, 39.494614, 41.585945>,  <28.562540, 39.272461, 41.672619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589678, 39.494614, 41.585945>,  <28.634909, 39.864864, 41.441486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589678, 39.494614, 41.585945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324479, 0.377949, 0.867103,
		-0.939110, -0.019136, -0.343083,
		-0.113075, -0.925629, 0.361145,
		28.555756, 39.216927, 41.694290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004992, 39.882332, 41.780437>,  <28.634909, 39.864864, 41.441486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004992, 39.882332, 41.780437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228840, 39.591183, 41.938942>,  <28.363150, 39.416492, 42.034046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228840, 39.591183, 41.938942>,  <28.004992, 39.882332, 41.780437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228840, 39.591183, 41.938942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103793, 0.412825, 0.904877,
		-0.822222, -0.547519, 0.155478,
		0.559623, -0.727872, 0.396263,
		28.396727, 39.372822, 42.057819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706953, 39.596989, 42.485966>,  <28.004992, 39.882332, 41.780437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706953, 39.596989, 42.485966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105330, 39.590668, 42.450523>,  <28.344355, 39.586876, 42.429260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105330, 39.590668, 42.450523>,  <27.706953, 39.596989, 42.485966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105330, 39.590668, 42.450523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083757, 0.522982, 0.848219,
		0.032937, -0.852198, 0.522182,
		0.995942, -0.015799, -0.088603,
		28.404112, 39.585930, 42.423943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.406319, 28.571400, 45.984001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805092, 28.597013, 45.966042>,  <41.044357, 28.612381, 45.955265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805092, 28.597013, 45.966042>,  <40.406319, 28.571400, 45.984001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805092, 28.597013, 45.966042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073797, -0.960291, 0.269064,
		-0.025886, -0.271554, -0.962075,
		0.996937, 0.064033, -0.044898,
		41.104172, 28.616224, 45.952572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037998, 28.947012, 46.623768>,  <40.406319, 28.571400, 45.984001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037998, 28.947012, 46.623768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650623, 28.873089, 46.556862>,  <39.418198, 28.828735, 46.516720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650623, 28.873089, 46.556862>,  <40.037998, 28.947012, 46.623768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650623, 28.873089, 46.556862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087367, -0.376803, 0.922164,
		-0.233450, 0.907670, 0.348764,
		-0.968436, -0.184808, -0.167265,
		39.360092, 28.817646, 46.506683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616859, 29.315147, 47.116650>,  <40.037998, 28.947012, 46.623768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616859, 29.315147, 47.116650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425503, 28.985548, 46.995213>,  <39.310688, 28.787788, 46.922352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425503, 28.985548, 46.995213>,  <39.616859, 29.315147, 47.116650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425503, 28.985548, 46.995213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121151, -0.280481, 0.952183,
		-0.869751, 0.492295, 0.034350,
		-0.478389, -0.824001, -0.303590,
		39.281986, 28.738348, 46.904137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035892, 29.279486, 47.617847>,  <39.616859, 29.315147, 47.116650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035892, 29.279486, 47.617847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052048, 28.920532, 47.442089>,  <39.061741, 28.705160, 47.336636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052048, 28.920532, 47.442089>,  <39.035892, 29.279486, 47.617847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052048, 28.920532, 47.442089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162840, -0.439788, 0.883216,
		-0.985826, 0.035879, -0.163893,
		0.040389, -0.897385, -0.439397,
		39.064163, 28.651318, 47.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444916, 28.884647, 47.884216>,  <39.035892, 29.279486, 47.617847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444916, 28.884647, 47.884216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.714725, 28.621233, 47.750744>,  <38.876610, 28.463184, 47.670662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.714725, 28.621233, 47.750744>,  <38.444916, 28.884647, 47.884216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714725, 28.621233, 47.750744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161245, -0.572494, 0.803897,
		-0.720428, -0.488444, -0.492347,
		0.674525, -0.658538, -0.333682,
		38.917084, 28.423672, 47.650639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086155, 28.235571, 47.854935>,  <38.444916, 28.884647, 47.884216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086155, 28.235571, 47.854935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479225, 28.182089, 47.906258>,  <38.715069, 28.150000, 47.937050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479225, 28.182089, 47.906258>,  <38.086155, 28.235571, 47.854935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479225, 28.182089, 47.906258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180926, -0.542536, 0.820317,
		-0.040070, -0.829324, -0.557330,
		0.982680, -0.133705, 0.128307,
		38.774029, 28.141977, 47.944748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225693, 27.490042, 47.870548>,  <38.086155, 28.235571, 47.854935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225693, 27.490042, 47.870548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543331, 27.668398, 48.035763>,  <38.733913, 27.775412, 48.134892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543331, 27.668398, 48.035763>,  <38.225693, 27.490042, 47.870548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543331, 27.668398, 48.035763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068882, -0.609166, 0.790046,
		0.603880, -0.655820, -0.453021,
		0.794093, 0.445888, 0.413037,
		38.781559, 27.802164, 48.159676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581966, 26.829531, 48.135872>,  <38.225693, 27.490042, 47.870548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581966, 26.829531, 48.135872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774113, 27.129745, 48.317394>,  <38.889400, 27.309874, 48.426308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774113, 27.129745, 48.317394>,  <38.581966, 26.829531, 48.135872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774113, 27.129745, 48.317394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036406, -0.534030, 0.844681,
		0.876310, -0.389239, -0.283856,
		0.480370, 0.750536, 0.453806,
		38.918224, 27.354906, 48.453537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141754, 26.545477, 48.532532>,  <38.581966, 26.829531, 48.135872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141754, 26.545477, 48.532532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107765, 26.904737, 48.705090>,  <39.087372, 27.120295, 48.808624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107765, 26.904737, 48.705090>,  <39.141754, 26.545477, 48.532532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107765, 26.904737, 48.705090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105470, -0.422419, 0.900243,
		0.990785, 0.121997, -0.058834,
		-0.084974, 0.898153, 0.431394,
		39.082272, 27.174183, 48.834507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511276, 26.513281, 49.160049>,  <39.141754, 26.545477, 48.532532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511276, 26.513281, 49.160049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283039, 26.835443, 49.224228>,  <39.146095, 27.028742, 49.262733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283039, 26.835443, 49.224228>,  <39.511276, 26.513281, 49.160049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283039, 26.835443, 49.224228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028783, -0.175638, 0.984034,
		0.820728, 0.566102, 0.077036,
		-0.570594, 0.805407, 0.160445,
		39.111862, 27.077066, 49.272362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878620, 26.880627, 49.714489>,  <39.511276, 26.513281, 49.160049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878620, 26.880627, 49.714489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.492290, 26.984306, 49.714619>,  <39.260494, 27.046515, 49.714695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.492290, 26.984306, 49.714619>,  <39.878620, 26.880627, 49.714489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492290, 26.984306, 49.714619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025185, -0.095083, 0.995151,
		0.257971, 0.961133, 0.098361,
		-0.965824, 0.259198, 0.000322,
		39.202541, 27.062065, 49.714714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786507, 27.491570, 50.173138>,  <39.878620, 26.880627, 49.714489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786507, 27.491570, 50.173138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435452, 27.301502, 50.147919>,  <39.224819, 27.187462, 50.132790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435452, 27.301502, 50.147919>,  <39.786507, 27.491570, 50.173138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435452, 27.301502, 50.147919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026078, -0.083996, 0.996125,
		-0.478621, 0.875877, 0.061327,
		-0.877634, -0.475167, -0.063044,
		39.172161, 27.158953, 50.129005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301556, 27.818270, 50.601620>,  <39.786507, 27.491570, 50.173138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301556, 27.818270, 50.601620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215591, 27.428104, 50.582119>,  <39.164013, 27.194004, 50.570419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215591, 27.428104, 50.582119>,  <39.301556, 27.818270, 50.601620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215591, 27.428104, 50.582119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053176, -0.061534, 0.996687,
		-0.975184, 0.211611, 0.065093,
		-0.214915, -0.975415, -0.048754,
		39.151115, 27.135479, 50.567493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765629, 27.715870, 51.034611>,  <39.301556, 27.818270, 50.601620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765629, 27.715870, 51.034611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.028961, 27.417276, 50.995899>,  <39.186958, 27.238121, 50.972672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.028961, 27.417276, 50.995899>,  <38.765629, 27.715870, 51.034611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028961, 27.417276, 50.995899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189804, 0.040207, 0.980998,
		-0.728408, -0.664189, 0.168155,
		0.658329, -0.746483, -0.096779,
		39.226460, 27.193331, 50.966866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145798, 28.174835, 51.380424>,  <38.765629, 27.715870, 51.034611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145798, 28.174835, 51.380424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068577, 28.410294, 51.694424>,  <39.022243, 28.551569, 51.882824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068577, 28.410294, 51.694424>,  <39.145798, 28.174835, 51.380424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068577, 28.410294, 51.694424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256461, 0.741967, -0.619445,
		-0.947080, -0.320905, 0.007729,
		-0.193049, 0.588646, 0.785002,
		39.010662, 28.586887, 51.929924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460064, 28.359634, 51.303593>,  <39.145798, 28.174835, 51.380424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460064, 28.359634, 51.303593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651402, 28.630190, 51.527622>,  <38.766205, 28.792522, 51.662041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651402, 28.630190, 51.527622>,  <38.460064, 28.359634, 51.303593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651402, 28.630190, 51.527622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247544, 0.715767, -0.652993,
		-0.842560, 0.173713, 0.509820,
		0.478345, 0.676389, 0.560075,
		38.794907, 28.833107, 51.695644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029835, 28.995996, 51.451550>,  <38.460064, 28.359634, 51.303593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029835, 28.995996, 51.451550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406597, 29.129541, 51.466270>,  <38.632652, 29.209667, 51.475101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406597, 29.129541, 51.466270>,  <38.029835, 28.995996, 51.451550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406597, 29.129541, 51.466270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193124, 0.627957, -0.753905,
		-0.274811, 0.702999, 0.655951,
		0.941903, 0.333861, 0.036803,
		38.689167, 29.229700, 51.477310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906338, 29.757511, 51.269894>,  <38.029835, 28.995996, 51.451550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906338, 29.757511, 51.269894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296032, 29.675894, 51.231461>,  <38.529850, 29.626925, 51.208401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296032, 29.675894, 51.231461>,  <37.906338, 29.757511, 51.269894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296032, 29.675894, 51.231461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038207, 0.569174, -0.821329,
		0.222272, 0.796497, 0.562306,
		0.974236, -0.204042, -0.096080,
		38.588303, 29.614681, 51.202637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197956, 30.338854, 51.148140>,  <37.906338, 29.757511, 51.269894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197956, 30.338854, 51.148140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418209, 30.057526, 50.968300>,  <38.550362, 29.888729, 50.860397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418209, 30.057526, 50.968300>,  <38.197956, 30.338854, 51.148140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418209, 30.057526, 50.968300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068123, 0.574669, -0.815545,
		0.831961, 0.418441, 0.364346,
		0.550636, -0.703322, -0.449597,
		38.583401, 29.846529, 50.833420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582405, 30.717358, 50.757336>,  <38.197956, 30.338854, 51.148140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582405, 30.717358, 50.757336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625530, 30.353592, 50.596668>,  <38.651405, 30.135332, 50.500267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625530, 30.353592, 50.596668>,  <38.582405, 30.717358, 50.757336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625530, 30.353592, 50.596668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038311, 0.407524, -0.912390,
		0.993433, 0.082980, 0.078777,
		0.107814, -0.909417, -0.401668,
		38.657875, 30.080767, 50.476170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073372, 30.795248, 50.217804>,  <38.582405, 30.717358, 50.757336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073372, 30.795248, 50.217804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885128, 30.453266, 50.130550>,  <38.772182, 30.248077, 50.078197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885128, 30.453266, 50.130550>,  <39.073372, 30.795248, 50.217804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885128, 30.453266, 50.130550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115576, 0.185356, -0.975851,
		0.874739, -0.484455, 0.011582,
		-0.470610, -0.854954, -0.218130,
		38.743946, 30.196779, 50.065113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524670, 30.503296, 49.795170>,  <39.073372, 30.795248, 50.217804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524670, 30.503296, 49.795170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172714, 30.328260, 49.721073>,  <38.961540, 30.223238, 49.676617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172714, 30.328260, 49.721073>,  <39.524670, 30.503296, 49.795170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172714, 30.328260, 49.721073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112681, 0.186571, -0.975958,
		0.461631, -0.879605, -0.114853,
		-0.879886, -0.437591, -0.185242,
		38.908749, 30.196983, 49.665501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478508, 30.182394, 49.123192>,  <39.524670, 30.503296, 49.795170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478508, 30.182394, 49.123192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.082649, 30.206020, 49.175507>,  <38.845135, 30.220196, 49.206898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.082649, 30.206020, 49.175507>,  <39.478508, 30.182394, 49.123192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082649, 30.206020, 49.175507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097024, 0.396157, -0.913042,
		-0.105742, -0.916281, -0.386326,
		-0.989649, 0.059064, 0.130792,
		38.785755, 30.223740, 49.214745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263298, 30.069706, 48.541000>,  <39.478508, 30.182394, 49.123192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263298, 30.069706, 48.541000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924633, 30.212795, 48.698578>,  <38.721432, 30.298649, 48.793125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924633, 30.212795, 48.698578>,  <39.263298, 30.069706, 48.541000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924633, 30.212795, 48.698578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276238, 0.337290, -0.899960,
		-0.454809, -0.870788, -0.186756,
		-0.846665, 0.357721, 0.393947,
		38.670635, 30.320112, 48.816761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722343, 29.916292, 48.066673>,  <39.263298, 30.069706, 48.541000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722343, 29.916292, 48.066673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558231, 30.203682, 48.291336>,  <38.459763, 30.376116, 48.426136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558231, 30.203682, 48.291336>,  <38.722343, 29.916292, 48.066673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558231, 30.203682, 48.291336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370828, 0.431233, -0.822511,
		-0.833161, -0.545739, 0.089505,
		-0.410280, 0.718476, 0.561662,
		38.435146, 30.419224, 48.459835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953930, 30.000250, 47.836819>,  <38.722343, 29.916292, 48.066673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953930, 30.000250, 47.836819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068787, 30.341232, 48.011570>,  <38.137703, 30.545822, 48.116421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068787, 30.341232, 48.011570>,  <37.953930, 30.000250, 47.836819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068787, 30.341232, 48.011570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242573, 0.505934, -0.827761,
		-0.926664, 0.131712, 0.352060,
		0.287145, 0.852457, 0.436881,
		38.154930, 30.596970, 48.142635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413521, 30.558365, 47.746365>,  <37.953930, 30.000250, 47.836819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413521, 30.558365, 47.746365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772949, 30.723778, 47.805099>,  <37.988605, 30.823027, 47.840340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772949, 30.723778, 47.805099>,  <37.413521, 30.558365, 47.746365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772949, 30.723778, 47.805099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157591, 0.616377, -0.771521,
		-0.409555, 0.670126, 0.619027,
		0.898571, 0.413534, 0.146835,
		38.042519, 30.847837, 47.849152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351395, 31.306002, 47.705299>,  <37.413521, 30.558365, 47.746365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351395, 31.306002, 47.705299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729427, 31.201797, 47.626350>,  <37.956245, 31.139275, 47.578983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729427, 31.201797, 47.626350>,  <37.351395, 31.306002, 47.705299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729427, 31.201797, 47.626350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021804, 0.552281, -0.833373,
		0.326107, 0.791909, 0.516270,
		0.945081, -0.260512, -0.197369,
		38.012951, 31.123644, 47.567139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799999, 31.655073, 48.083027>,  <37.351395, 31.306002, 47.705299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799999, 31.655073, 48.083027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411415, 31.631945, 47.991005>,  <36.178265, 31.618067, 47.935791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411415, 31.631945, 47.991005>,  <36.799999, 31.655073, 48.083027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411415, 31.631945, 47.991005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189875, -0.391783, 0.900252,
		-0.142187, 0.918239, 0.369622,
		-0.971458, -0.057822, -0.230057,
		36.119976, 31.614597, 47.921989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419674, 32.008148, 48.600018>,  <36.799999, 31.655073, 48.083027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419674, 32.008148, 48.600018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161648, 31.754606, 48.429321>,  <36.006832, 31.602480, 48.326904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161648, 31.754606, 48.429321>,  <36.419674, 32.008148, 48.600018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161648, 31.754606, 48.429321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185604, -0.411776, 0.892184,
		-0.741241, 0.654724, 0.147977,
		-0.645068, -0.633858, -0.426745,
		35.968128, 31.564449, 48.301296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788914, 32.102837, 48.903271>,  <36.419674, 32.008148, 48.600018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788914, 32.102837, 48.903271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768444, 31.733406, 48.751274>,  <35.756161, 31.511747, 48.660076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768444, 31.733406, 48.751274>,  <35.788914, 32.102837, 48.903271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768444, 31.733406, 48.751274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273021, -0.353054, 0.894882,
		-0.960646, 0.149543, -0.234086,
		-0.051178, -0.923575, -0.379988,
		35.753090, 31.456333, 48.637280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208225, 31.811476, 49.169292>,  <35.788914, 32.102837, 48.903271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208225, 31.811476, 49.169292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413746, 31.483749, 49.067528>,  <35.537060, 31.287113, 49.006470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413746, 31.483749, 49.067528>,  <35.208225, 31.811476, 49.169292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413746, 31.483749, 49.067528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264945, -0.433593, 0.861279,
		-0.815974, -0.375119, -0.439855,
		0.513800, -0.819318, -0.254415,
		35.567886, 31.237953, 48.991203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762917, 31.243097, 49.340534>,  <35.208225, 31.811476, 49.169292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762917, 31.243097, 49.340534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139339, 31.108648, 49.325424>,  <35.365192, 31.027979, 49.316357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139339, 31.108648, 49.325424>,  <34.762917, 31.243097, 49.340534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139339, 31.108648, 49.325424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191141, -0.620619, 0.760459,
		-0.279052, -0.708417, -0.648287,
		0.941061, -0.336121, -0.037777,
		35.421658, 31.007812, 49.314091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589905, 30.582451, 49.402397>,  <34.762917, 31.243097, 49.340534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589905, 30.582451, 49.402397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985210, 30.605141, 49.459133>,  <35.222393, 30.618753, 49.493176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985210, 30.605141, 49.459133>,  <34.589905, 30.582451, 49.402397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985210, 30.605141, 49.459133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057962, -0.719842, 0.691714,
		0.141339, -0.691817, -0.708105,
		0.988263, 0.056723, 0.141841,
		35.281689, 30.622158, 49.501686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772575, 29.875597, 49.483677>,  <34.589905, 30.582451, 49.402397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772575, 29.875597, 49.483677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073261, 30.086851, 49.641663>,  <35.253674, 30.213604, 49.736454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073261, 30.086851, 49.641663>,  <34.772575, 29.875597, 49.483677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073261, 30.086851, 49.641663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022525, -0.619113, 0.784979,
		0.659104, -0.581183, -0.477292,
		0.751714, 0.528134, 0.394969,
		35.298775, 30.245291, 49.760155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474678, 29.457232, 49.016342>,  <34.772575, 29.875597, 49.483677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474678, 29.457232, 49.016342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197926, 29.169006, 48.998047>,  <34.031876, 28.996071, 48.987068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197926, 29.169006, 48.998047>,  <34.474678, 29.457232, 49.016342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197926, 29.169006, 48.998047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478566, 0.505105, -0.718223,
		0.540635, -0.475027, -0.694308,
		-0.691873, -0.720568, -0.045745,
		33.990364, 28.952837, 48.984325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561390, 29.078020, 48.394775>,  <34.474678, 29.457232, 49.016342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561390, 29.078020, 48.394775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182873, 29.070938, 48.523907>,  <33.955761, 29.066689, 48.601387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182873, 29.070938, 48.523907>,  <34.561390, 29.078020, 48.394775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182873, 29.070938, 48.523907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285574, 0.513916, -0.808911,
		-0.151585, -0.857658, -0.491370,
		-0.946292, -0.017704, 0.322827,
		33.898987, 29.065626, 48.620754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163105, 28.864687, 47.827633>,  <34.561390, 29.078020, 48.394775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163105, 28.864687, 47.827633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884563, 29.039986, 48.054974>,  <33.717438, 29.145164, 48.191380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884563, 29.039986, 48.054974>,  <34.163105, 28.864687, 47.827633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884563, 29.039986, 48.054974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313765, 0.526332, -0.790270,
		-0.645476, -0.728639, -0.229008,
		-0.696356, 0.438246, 0.568356,
		33.675655, 29.171459, 48.225479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620075, 28.748795, 47.483490>,  <34.163105, 28.864687, 47.827633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620075, 28.748795, 47.483490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513203, 29.065968, 47.702534>,  <33.449078, 29.256271, 47.833961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513203, 29.065968, 47.702534>,  <33.620075, 28.748795, 47.483490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513203, 29.065968, 47.702534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139542, 0.530442, -0.836157,
		-0.953490, -0.299820, -0.031077,
		-0.267181, 0.792931, 0.547609,
		33.433048, 29.303846, 47.866817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078747, 29.064054, 47.149876>,  <33.620075, 28.748795, 47.483490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078747, 29.064054, 47.149876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192692, 29.367468, 47.384304>,  <33.261059, 29.549515, 47.524963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192692, 29.367468, 47.384304>,  <33.078747, 29.064054, 47.149876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192692, 29.367468, 47.384304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108333, 0.632964, -0.766564,
		-0.952426, 0.154878, 0.262484,
		0.284867, 0.758531, 0.586073,
		33.278152, 29.595028, 47.560127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522476, 29.566221, 47.155560>,  <33.078747, 29.064054, 47.149876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522476, 29.566221, 47.155560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877968, 29.731079, 47.235863>,  <33.091263, 29.829994, 47.284046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877968, 29.731079, 47.235863>,  <32.522476, 29.566221, 47.155560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877968, 29.731079, 47.235863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015369, 0.410882, -0.911559,
		-0.458182, 0.813211, 0.358827,
		0.888725, 0.412145, 0.200757,
		33.144585, 29.854723, 47.296089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559551, 30.344913, 47.052055>,  <32.522476, 29.566221, 47.155560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559551, 30.344913, 47.052055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954311, 30.282146, 47.037075>,  <33.191166, 30.244486, 47.028088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954311, 30.282146, 47.037075>,  <32.559551, 30.344913, 47.052055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954311, 30.282146, 47.037075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081112, 0.683295, -0.725623,
		0.139451, 0.713081, 0.687073,
		0.986901, -0.156919, -0.037447,
		33.250381, 30.235071, 47.025841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.825993, 25.005047, 48.364445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.929684, 25.335138, 48.565163>,  <36.991898, 25.533194, 48.685593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.929684, 25.335138, 48.565163>,  <36.825993, 25.005047, 48.364445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929684, 25.335138, 48.565163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024110, 0.524923, -0.850808,
		-0.965514, 0.208459, 0.155973,
		0.259232, 0.825228, 0.501795,
		37.007454, 25.582706, 48.715702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304409, 25.427921, 48.294159>,  <36.825993, 25.005047, 48.364445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304409, 25.427921, 48.294159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617111, 25.658550, 48.389175>,  <36.804733, 25.796928, 48.446186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617111, 25.658550, 48.389175>,  <36.304409, 25.427921, 48.294159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617111, 25.658550, 48.389175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224210, 0.615341, -0.755702,
		-0.581888, 0.537512, 0.610317,
		0.781752, 0.576573, 0.237544,
		36.851635, 25.831522, 48.460438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095474, 26.149189, 48.265938>,  <36.304409, 25.427921, 48.294159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095474, 26.149189, 48.265938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495190, 26.155071, 48.252003>,  <36.735020, 26.158600, 48.243641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495190, 26.155071, 48.252003>,  <36.095474, 26.149189, 48.265938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495190, 26.155071, 48.252003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036684, 0.600357, -0.798890,
		0.009165, 0.799597, 0.600467,
		0.999285, 0.014706, -0.034834,
		36.794975, 26.159483, 48.241554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299973, 26.806776, 48.116909>,  <36.095474, 26.149189, 48.265938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299973, 26.806776, 48.116909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647919, 26.645340, 48.003460>,  <36.856686, 26.548477, 47.935390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647919, 26.645340, 48.003460>,  <36.299973, 26.806776, 48.116909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647919, 26.645340, 48.003460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007979, 0.563375, -0.826163,
		0.493217, 0.720917, 0.486843,
		0.869870, -0.403592, -0.283618,
		36.908878, 26.524261, 47.918373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789669, 27.269983, 47.831081>,  <36.299973, 26.806776, 48.116909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789669, 27.269983, 47.831081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933350, 26.931036, 47.674648>,  <37.019558, 26.727669, 47.580788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933350, 26.931036, 47.674648>,  <36.789669, 27.269983, 47.831081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933350, 26.931036, 47.674648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037300, 0.405680, -0.913254,
		0.932516, 0.342626, 0.114112,
		0.359197, -0.847367, -0.391083,
		37.041107, 26.676826, 47.557323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371403, 27.543695, 47.329533>,  <36.789669, 27.269983, 47.831081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371403, 27.543695, 47.329533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.310120, 27.155191, 47.256672>,  <37.273350, 26.922089, 47.212955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.310120, 27.155191, 47.256672>,  <37.371403, 27.543695, 47.329533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310120, 27.155191, 47.256672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028995, 0.188666, -0.981613,
		0.987769, -0.145108, -0.057066,
		-0.153207, -0.971262, -0.182151,
		37.264156, 26.863813, 47.202026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759586, 27.278555, 46.827820>,  <37.371403, 27.543695, 47.329533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759586, 27.278555, 46.827820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.473942, 26.999947, 46.799809>,  <37.302555, 26.832781, 46.783001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.473942, 26.999947, 46.799809>,  <37.759586, 27.278555, 46.827820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473942, 26.999947, 46.799809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013630, 0.086179, -0.996187,
		0.699901, -0.712342, -0.052047,
		-0.714110, -0.696522, -0.070026,
		37.259708, 26.790991, 46.778801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012150, 26.866114, 46.277996>,  <37.759586, 27.278555, 46.827820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012150, 26.866114, 46.277996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.623177, 26.778975, 46.311268>,  <37.389793, 26.726692, 46.331230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.623177, 26.778975, 46.311268>,  <38.012150, 26.866114, 46.277996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623177, 26.778975, 46.311268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123414, 0.178163, -0.976231,
		0.197867, -0.959580, -0.200138,
		-0.972429, -0.217864, 0.083173,
		37.331448, 26.713621, 46.336220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883926, 26.250568, 45.832329>,  <38.012150, 26.866114, 46.277996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883926, 26.250568, 45.832329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.560013, 26.478914, 45.886524>,  <37.365665, 26.615923, 45.919041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.560013, 26.478914, 45.886524>,  <37.883926, 26.250568, 45.832329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560013, 26.478914, 45.886524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156537, 0.012346, -0.987595,
		-0.565457, -0.820950, 0.079364,
		-0.809787, 0.570866, 0.135491,
		37.317078, 26.650173, 45.927170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399708, 25.952509, 45.377354>,  <37.883926, 26.250568, 45.832329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399708, 25.952509, 45.377354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.285095, 26.326937, 45.459011>,  <37.216328, 26.551594, 45.508003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.285095, 26.326937, 45.459011>,  <37.399708, 25.952509, 45.377354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285095, 26.326937, 45.459011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102922, 0.241916, -0.964823,
		-0.952527, -0.255439, -0.165658,
		-0.286529, 0.936071, 0.204141,
		37.199135, 26.607758, 45.520252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890835, 26.101513, 44.861160>,  <37.399708, 25.952509, 45.377354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890835, 26.101513, 44.861160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.937046, 26.472748, 45.002758>,  <36.964771, 26.695488, 45.087715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.937046, 26.472748, 45.002758>,  <36.890835, 26.101513, 44.861160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937046, 26.472748, 45.002758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188438, 0.370382, -0.909565,
		-0.975267, 0.038372, 0.217675,
		0.115524, 0.928087, 0.353990,
		36.971703, 26.751173, 45.108955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301247, 26.485067, 44.706829>,  <36.890835, 26.101513, 44.861160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301247, 26.485067, 44.706829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.606262, 26.741402, 44.742298>,  <36.789272, 26.895203, 44.763580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.606262, 26.741402, 44.742298>,  <36.301247, 26.485067, 44.706829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606262, 26.741402, 44.742298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119302, 0.274006, -0.954300,
		-0.635846, 0.717112, 0.285393,
		0.762540, 0.640836, 0.088672,
		36.835026, 26.933653, 44.768898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555359, 26.722710, 44.868198>,  <36.301247, 26.485067, 44.706829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555359, 26.722710, 44.868198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156605, 26.717903, 44.837032>,  <34.917351, 26.715019, 44.818333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156605, 26.717903, 44.837032>,  <35.555359, 26.722710, 44.868198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156605, 26.717903, 44.837032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063858, -0.456444, 0.887457,
		-0.046226, 0.889671, 0.454257,
		-0.996888, -0.012016, -0.077912,
		34.857540, 26.714298, 44.813660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273827, 26.922821, 45.481346>,  <35.555359, 26.722710, 44.868198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273827, 26.922821, 45.481346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.959629, 26.729378, 45.326881>,  <34.771111, 26.613312, 45.234203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.959629, 26.729378, 45.326881>,  <35.273827, 26.922821, 45.481346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959629, 26.729378, 45.326881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091240, -0.526666, 0.845162,
		-0.612104, 0.699105, 0.369570,
		-0.785496, -0.483607, -0.386160,
		34.723980, 26.584295, 45.211033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644833, 27.054337, 45.905468>,  <35.273827, 26.922821, 45.481346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644833, 27.054337, 45.905468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.597847, 26.719713, 45.691414>,  <34.569656, 26.518938, 45.562981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.597847, 26.719713, 45.691414>,  <34.644833, 27.054337, 45.905468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597847, 26.719713, 45.691414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263852, -0.493208, 0.828931,
		-0.957384, 0.238566, -0.162794,
		-0.117464, -0.836559, -0.535136,
		34.562607, 26.468746, 45.530872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945148, 26.779190, 46.085106>,  <34.644833, 27.054337, 45.905468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945148, 26.779190, 46.085106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.151939, 26.478943, 45.920521>,  <34.276016, 26.298794, 45.821770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.151939, 26.478943, 45.920521>,  <33.945148, 26.779190, 46.085106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151939, 26.478943, 45.920521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331456, -0.618726, 0.712260,
		-0.789220, -0.231841, -0.568666,
		0.516979, -0.750618, -0.411466,
		34.307034, 26.253757, 45.797081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483128, 26.205023, 46.165291>,  <33.945148, 26.779190, 46.085106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483128, 26.205023, 46.165291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849598, 26.050076, 46.124180>,  <34.069481, 25.957108, 46.099514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849598, 26.050076, 46.124180>,  <33.483128, 26.205023, 46.165291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849598, 26.050076, 46.124180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196676, -0.658020, 0.726863,
		-0.349194, -0.645722, -0.679049,
		0.916178, -0.387368, -0.102779,
		34.124451, 25.933865, 46.093346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353374, 25.554386, 46.325790>,  <33.483128, 26.205023, 46.165291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353374, 25.554386, 46.325790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751278, 25.566069, 46.364990>,  <33.990021, 25.573078, 46.388512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751278, 25.566069, 46.364990>,  <33.353374, 25.554386, 46.325790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751278, 25.566069, 46.364990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055193, -0.653427, 0.754975,
		0.086089, -0.756426, -0.648389,
		0.994757, 0.029209, 0.098002,
		34.049706, 25.574831, 46.394390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600830, 24.851786, 46.529976>,  <33.353374, 25.554386, 46.325790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600830, 24.851786, 46.529976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.910046, 25.080992, 46.638836>,  <34.095573, 25.218515, 46.704151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.910046, 25.080992, 46.638836>,  <33.600830, 24.851786, 46.529976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910046, 25.080992, 46.638836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090782, -0.524527, 0.846540,
		0.627831, -0.629701, -0.457499,
		0.773037, 0.573017, 0.272148,
		34.141956, 25.252897, 46.720482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132141, 24.374083, 46.741585>,  <33.600830, 24.851786, 46.529976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132141, 24.374083, 46.741585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.247890, 24.725418, 46.893784>,  <34.317341, 24.936220, 46.985104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.247890, 24.725418, 46.893784>,  <34.132141, 24.374083, 46.741585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247890, 24.725418, 46.893784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347259, -0.466755, 0.813358,
		0.892006, -0.103232, -0.440078,
		0.289373, 0.878341, 0.380500,
		34.334702, 24.988920, 47.007935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611916, 24.101858, 47.220943>,  <34.132141, 24.374083, 46.741585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611916, 24.101858, 47.220943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.551144, 24.481430, 47.331539>,  <34.514679, 24.709173, 47.397896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.551144, 24.481430, 47.331539>,  <34.611916, 24.101858, 47.220943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551144, 24.481430, 47.331539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336462, -0.213375, 0.917205,
		0.929360, 0.232383, -0.286860,
		-0.151934, 0.948931, 0.276491,
		34.505562, 24.766109, 47.414486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110981, 24.180431, 47.761982>,  <34.611916, 24.101858, 47.220943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110981, 24.180431, 47.761982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.843201, 24.472881, 47.814575>,  <34.682533, 24.648352, 47.846130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.843201, 24.472881, 47.814575>,  <35.110981, 24.180431, 47.761982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843201, 24.472881, 47.814575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150391, -0.039944, 0.987819,
		0.727470, 0.681075, -0.083214,
		-0.669455, 0.731123, 0.131486,
		34.642365, 24.692219, 47.854019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486656, 24.684355, 48.132214>,  <35.110981, 24.180431, 47.761982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486656, 24.684355, 48.132214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.101753, 24.759672, 48.210804>,  <34.870811, 24.804863, 48.257957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.101753, 24.759672, 48.210804>,  <35.486656, 24.684355, 48.132214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101753, 24.759672, 48.210804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217426, 0.097771, 0.971168,
		0.163655, 0.977234, -0.135021,
		-0.962259, 0.188294, 0.196475,
		34.813076, 24.816160, 48.269745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435822, 25.302240, 48.503559>,  <35.486656, 24.684355, 48.132214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435822, 25.302240, 48.503559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.084110, 25.131449, 48.588001>,  <34.873085, 25.028975, 48.638664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.084110, 25.131449, 48.588001>,  <35.435822, 25.302240, 48.503559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084110, 25.131449, 48.588001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177598, 0.117354, 0.977081,
		-0.441967, 0.896614, -0.027356,
		-0.879275, -0.426979, 0.211104,
		34.820328, 25.003355, 48.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216423, 25.696665, 49.001362>,  <35.435822, 25.302240, 48.503559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216423, 25.696665, 49.001362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012218, 25.354679, 49.038055>,  <34.889698, 25.149487, 49.060070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012218, 25.354679, 49.038055>,  <35.216423, 25.696665, 49.001362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012218, 25.354679, 49.038055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260686, -0.052229, 0.964010,
		-0.819404, 0.516049, 0.249541,
		-0.510509, -0.854966, 0.091730,
		34.859066, 25.098190, 49.065575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207615, 26.152451, 49.555691>,  <35.216423, 25.696665, 49.001362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207615, 26.152451, 49.555691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070820, 26.233196, 49.922798>,  <34.988743, 26.281645, 50.143063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070820, 26.233196, 49.922798>,  <35.207615, 26.152451, 49.555691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070820, 26.233196, 49.922798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421192, 0.840126, -0.341739,
		-0.840025, -0.503426, -0.202289,
		-0.341989, 0.201866, 0.917765,
		34.968224, 26.293756, 50.198128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512852, 26.182556, 49.533279>,  <35.207615, 26.152451, 49.555691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512852, 26.182556, 49.533279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628990, 26.421354, 49.832424>,  <34.698673, 26.564632, 50.011909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628990, 26.421354, 49.832424>,  <34.512852, 26.182556, 49.533279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628990, 26.421354, 49.832424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600608, 0.722110, -0.343260,
		-0.744963, -0.349508, 0.568220,
		0.290345, 0.596994, 0.747862,
		34.716095, 26.600452, 50.056782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993935, 26.625587, 49.456566>,  <34.512852, 26.182556, 49.533279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993935, 26.625587, 49.456566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245449, 26.788885, 49.721283>,  <34.396358, 26.886864, 49.880112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245449, 26.788885, 49.721283>,  <33.993935, 26.625587, 49.456566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245449, 26.788885, 49.721283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314682, 0.911881, -0.263531,
		-0.711061, -0.042551, 0.701842,
		0.628782, 0.408243, 0.661793,
		34.434082, 26.911358, 49.919823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681015, 26.880009, 49.879177>,  <33.993935, 26.625587, 49.456566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681015, 26.880009, 49.879177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.023502, 27.083174, 49.916950>,  <34.228996, 27.205072, 49.939613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.023502, 27.083174, 49.916950>,  <33.681015, 26.880009, 49.879177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023502, 27.083174, 49.916950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469465, 0.841258, -0.268117,
		-0.215626, 0.185232, 0.958747,
		0.856217, 0.507911, 0.094437,
		34.280369, 27.235548, 49.945282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631294, 27.453011, 50.265209>,  <33.681015, 26.880009, 49.879177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631294, 27.453011, 50.265209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.944565, 27.526045, 50.027454>,  <34.132526, 27.569864, 49.884800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.944565, 27.526045, 50.027454>,  <33.631294, 27.453011, 50.265209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944565, 27.526045, 50.027454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375037, 0.901174, -0.217331,
		0.495967, 0.393126, 0.774253,
		0.783175, 0.182585, -0.594390,
		34.179516, 27.580820, 49.849136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776321, 28.200842, 50.345779>,  <33.631294, 27.453011, 50.265209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776321, 28.200842, 50.345779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033871, 28.141705, 50.045494>,  <34.188400, 28.106222, 49.865322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033871, 28.141705, 50.045494>,  <33.776321, 28.200842, 50.345779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033871, 28.141705, 50.045494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267579, 0.875693, -0.401950,
		0.716822, 0.459679, 0.524273,
		0.643870, -0.147842, -0.750716,
		34.227032, 28.097351, 49.820278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241791, 28.801889, 50.250805>,  <33.776321, 28.200842, 50.345779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241791, 28.801889, 50.250805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.185757, 28.591602, 49.915188>,  <34.152134, 28.465429, 49.713818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.185757, 28.591602, 49.915188>,  <34.241791, 28.801889, 50.250805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185757, 28.591602, 49.915188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299097, 0.830282, -0.470290,
		0.943884, 0.185073, -0.273554,
		-0.140089, -0.525719, -0.839044,
		34.143730, 28.433887, 49.663475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424194, 29.211607, 49.692398>,  <34.241791, 28.801889, 50.250805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424194, 29.211607, 49.692398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.225967, 28.930876, 49.487713>,  <34.107033, 28.762436, 49.364902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.225967, 28.930876, 49.487713>,  <34.424194, 29.211607, 49.692398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225967, 28.930876, 49.487713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338540, 0.698626, -0.630327,
		0.799881, -0.139128, -0.583810,
		-0.495561, -0.701829, -0.511717,
		34.077297, 28.720327, 49.334198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236935, 29.225513, 49.720108>,  <34.424194, 29.211607, 49.692398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236935, 29.225513, 49.720108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345295, 29.571310, 49.889469>,  <35.410309, 29.778788, 49.991085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345295, 29.571310, 49.889469>,  <35.236935, 29.225513, 49.720108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345295, 29.571310, 49.889469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082614, -0.459110, 0.884530,
		0.959057, -0.204637, -0.195791,
		0.270897, 0.864489, 0.423407,
		35.426563, 29.830656, 50.016491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910221, 29.154043, 49.971642>,  <35.236935, 29.225513, 49.720108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910221, 29.154043, 49.971642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747620, 29.439001, 50.200462>,  <35.650059, 29.609976, 50.337757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747620, 29.439001, 50.200462>,  <35.910221, 29.154043, 49.971642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747620, 29.439001, 50.200462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277467, -0.500291, 0.820196,
		0.870497, 0.492141, 0.005706,
		-0.406506, 0.712395, 0.572055,
		35.625668, 29.652719, 50.372078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380260, 29.260088, 50.359062>,  <35.910221, 29.154043, 49.971642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380260, 29.260088, 50.359062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.093651, 29.447187, 50.566059>,  <35.921684, 29.559446, 50.690258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.093651, 29.447187, 50.566059>,  <36.380260, 29.260088, 50.359062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093651, 29.447187, 50.566059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404009, -0.326496, 0.854504,
		0.568652, 0.821348, 0.044969,
		-0.716527, 0.467748, 0.517495,
		35.878693, 29.587511, 50.721306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687878, 29.546873, 51.000282>,  <36.380260, 29.260088, 50.359062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687878, 29.546873, 51.000282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.294621, 29.553026, 51.073151>,  <36.058666, 29.556719, 51.116871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.294621, 29.553026, 51.073151>,  <36.687878, 29.546873, 51.000282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294621, 29.553026, 51.073151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169051, -0.302873, 0.937918,
		0.069602, 0.952907, 0.295168,
		-0.983147, 0.015382, 0.182170,
		35.999676, 29.557640, 51.127800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579887, 30.021633, 51.479202>,  <36.687878, 29.546873, 51.000282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579887, 30.021633, 51.479202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.279095, 29.758335, 51.493282>,  <36.098621, 29.600357, 51.501732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.279095, 29.758335, 51.493282>,  <36.579887, 30.021633, 51.479202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279095, 29.758335, 51.493282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256957, -0.243535, 0.935235,
		-0.607042, 0.712322, 0.352274,
		-0.751980, -0.658246, 0.035200,
		36.053501, 29.560862, 51.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274399, 30.148684, 52.014637>,  <36.579887, 30.021633, 51.479202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274399, 30.148684, 52.014637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179901, 29.764837, 51.953545>,  <36.123203, 29.534529, 51.916889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179901, 29.764837, 51.953545>,  <36.274399, 30.148684, 52.014637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179901, 29.764837, 51.953545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329736, -0.227024, 0.916370,
		-0.914036, 0.166127, 0.370053,
		-0.236245, -0.959616, -0.152730,
		36.109028, 29.476954, 51.907726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928665, 29.917097, 52.684574>,  <36.274399, 30.148684, 52.014637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928665, 29.917097, 52.684574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.036831, 29.591278, 52.479286>,  <36.101730, 29.395786, 52.356113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.036831, 29.591278, 52.479286>,  <35.928665, 29.917097, 52.684574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036831, 29.591278, 52.479286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169338, -0.484524, 0.858231,
		-0.947735, -0.318984, 0.006912,
		0.270413, -0.814546, -0.513217,
		36.117954, 29.346914, 52.325321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754448, 29.419779, 53.090958>,  <35.928665, 29.917097, 52.684574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754448, 29.419779, 53.090958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.027695, 29.234962, 52.864731>,  <36.191643, 29.124073, 52.728996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.027695, 29.234962, 52.864731>,  <35.754448, 29.419779, 53.090958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027695, 29.234962, 52.864731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228587, -0.600238, 0.766460,
		-0.693612, -0.652865, -0.304418,
		0.683119, -0.462040, -0.565569,
		36.232632, 29.096352, 52.695061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803436, 28.696384, 53.379742>,  <35.754448, 29.419779, 53.090958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803436, 28.696384, 53.379742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.120220, 28.672619, 53.136669>,  <36.310291, 28.658360, 52.990826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.120220, 28.672619, 53.136669>,  <35.803436, 28.696384, 53.379742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120220, 28.672619, 53.136669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493599, -0.523526, 0.694464,
		-0.359396, -0.849936, -0.385284,
		0.791956, -0.059411, -0.607681,
		36.357807, 28.654795, 52.954365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.900738, 34.960312, 38.617374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299187, 34.925350, 38.621231>,  <35.538258, 34.904373, 38.623547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299187, 34.925350, 38.621231>,  <34.900738, 34.960312, 38.617374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299187, 34.925350, 38.621231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024283, -0.167983, 0.985491,
		-0.084513, -0.981908, -0.169455,
		0.996126, -0.087402, 0.009647,
		35.598026, 34.899128, 38.624126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026077, 34.425331, 39.102375>,  <34.900738, 34.960312, 38.617374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026077, 34.425331, 39.102375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377808, 34.611206, 39.060688>,  <35.588844, 34.722729, 39.035675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377808, 34.611206, 39.060688>,  <35.026077, 34.425331, 39.102375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377808, 34.611206, 39.060688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211132, -0.184232, 0.959939,
		0.426868, -0.866099, -0.260109,
		0.879322, 0.464684, -0.104218,
		35.641605, 34.750610, 39.029423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482140, 34.046547, 39.444401>,  <35.026077, 34.425331, 39.102375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482140, 34.046547, 39.444401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636345, 34.414478, 39.415276>,  <35.728867, 34.635235, 39.397800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636345, 34.414478, 39.415276>,  <35.482140, 34.046547, 39.444401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636345, 34.414478, 39.415276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076935, 0.046597, 0.995946,
		0.919491, -0.389548, -0.052803,
		0.385509, 0.919826, -0.072816,
		35.751999, 34.690426, 39.393433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003902, 33.985027, 39.765198>,  <35.482140, 34.046547, 39.444401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003902, 33.985027, 39.765198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931927, 34.378376, 39.774963>,  <35.888741, 34.614388, 39.780823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931927, 34.378376, 39.774963>,  <36.003902, 33.985027, 39.765198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931927, 34.378376, 39.774963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113987, -0.003807, 0.993475,
		0.977052, 0.181546, -0.111407,
		-0.179937, 0.983375, 0.024413,
		35.877945, 34.673389, 39.782288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460724, 34.149067, 40.301033>,  <36.003902, 33.985027, 39.765198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460724, 34.149067, 40.301033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208546, 34.456306, 40.256214>,  <36.057240, 34.640652, 40.229321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208546, 34.456306, 40.256214>,  <36.460724, 34.149067, 40.301033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208546, 34.456306, 40.256214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012904, 0.133960, 0.990903,
		0.776125, 0.626157, -0.074543,
		-0.630447, 0.768103, -0.112049,
		36.019413, 34.686737, 40.222599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637005, 34.507519, 40.831272>,  <36.460724, 34.149067, 40.301033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637005, 34.507519, 40.831272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268711, 34.622818, 40.726074>,  <36.047737, 34.691998, 40.662956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268711, 34.622818, 40.726074>,  <36.637005, 34.507519, 40.831272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268711, 34.622818, 40.726074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234918, 0.128671, 0.963461,
		0.311557, 0.948871, -0.050756,
		-0.920731, 0.288249, -0.262996,
		35.992493, 34.709293, 40.647175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605553, 35.162743, 41.153725>,  <36.637005, 34.507519, 40.831272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605553, 35.162743, 41.153725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233273, 35.030960, 41.090157>,  <36.009903, 34.951889, 41.052017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233273, 35.030960, 41.090157>,  <36.605553, 35.162743, 41.153725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233273, 35.030960, 41.090157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201793, 0.100086, 0.974301,
		-0.305085, 0.938851, -0.159632,
		-0.930700, -0.329457, -0.158919,
		35.954063, 34.932121, 41.042480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191010, 35.736748, 41.422920>,  <36.605553, 35.162743, 41.153725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191010, 35.736748, 41.422920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002689, 35.384186, 41.407528>,  <35.889698, 35.172649, 41.398293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002689, 35.384186, 41.407528>,  <36.191010, 35.736748, 41.422920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002689, 35.384186, 41.407528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305058, 0.121708, 0.944525,
		-0.827823, 0.456417, -0.326179,
		-0.470796, -0.881402, -0.038481,
		35.861450, 35.119766, 41.395985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612869, 35.940083, 41.710342>,  <36.191010, 35.736748, 41.422920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612869, 35.940083, 41.710342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615154, 35.540287, 41.722980>,  <35.616524, 35.300411, 41.730564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615154, 35.540287, 41.722980>,  <35.612869, 35.940083, 41.710342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615154, 35.540287, 41.722980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273902, 0.028823, 0.961326,
		-0.961741, -0.014145, -0.273596,
		0.005712, -0.999485, 0.031594,
		35.616867, 35.240440, 41.732460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069843, 35.813599, 42.160988>,  <35.612869, 35.940083, 41.710342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069843, 35.813599, 42.160988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289970, 35.479622, 42.162674>,  <35.422047, 35.279236, 42.163685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289970, 35.479622, 42.162674>,  <35.069843, 35.813599, 42.160988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289970, 35.479622, 42.162674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147991, -0.092575, 0.984647,
		-0.821732, -0.542496, -0.174510,
		0.550322, -0.834942, 0.004213,
		35.455067, 35.229141, 42.163937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654392, 35.401638, 42.671921>,  <35.069843, 35.813599, 42.160988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654392, 35.401638, 42.671921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016323, 35.241066, 42.615158>,  <35.233482, 35.144722, 42.581100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016323, 35.241066, 42.615158>,  <34.654392, 35.401638, 42.671921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016323, 35.241066, 42.615158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039754, -0.252178, 0.966864,
		-0.423910, -0.880490, -0.212221,
		0.904831, -0.401427, -0.141904,
		35.287773, 35.120640, 42.572586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605232, 34.718128, 42.911144>,  <34.654392, 35.401638, 42.671921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605232, 34.718128, 42.911144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997890, 34.791576, 42.931740>,  <35.233486, 34.835644, 42.944099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997890, 34.791576, 42.931740>,  <34.605232, 34.718128, 42.911144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997890, 34.791576, 42.931740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047078, -0.494989, 0.867623,
		0.184799, -0.849277, -0.494549,
		0.981648, 0.183618, 0.051491,
		35.292385, 34.846661, 42.947186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409943, 34.230103, 42.421085>,  <34.605232, 34.718128, 42.911144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409943, 34.230103, 42.421085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055317, 34.046856, 42.446777>,  <33.842541, 33.936909, 42.462193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055317, 34.046856, 42.446777>,  <34.409943, 34.230103, 42.421085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055317, 34.046856, 42.446777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272066, 0.404072, -0.873330,
		0.374128, -0.791745, -0.482875,
		-0.886571, -0.458111, 0.064233,
		33.789345, 33.909420, 42.466045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351627, 33.913052, 41.812370>,  <34.409943, 34.230103, 42.421085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351627, 33.913052, 41.812370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978020, 33.924637, 41.954788>,  <33.753853, 33.931587, 42.040237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978020, 33.924637, 41.954788>,  <34.351627, 33.913052, 41.812370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978020, 33.924637, 41.954788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323201, 0.355974, -0.876826,
		-0.152140, -0.934047, -0.323125,
		-0.934021, 0.028966, 0.356042,
		33.697815, 33.933327, 42.061600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991444, 33.633827, 41.302441>,  <34.351627, 33.913052, 41.812370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991444, 33.633827, 41.302441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709408, 33.838936, 41.498367>,  <33.540188, 33.962002, 41.615925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709408, 33.838936, 41.498367>,  <33.991444, 33.633827, 41.302441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709408, 33.838936, 41.498367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382795, 0.306226, -0.871604,
		-0.596927, -0.802056, -0.019631,
		-0.705086, 0.512769, 0.489817,
		33.497883, 33.992767, 41.645313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279953, 33.374538, 41.051849>,  <33.991444, 33.633827, 41.302441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279953, 33.374538, 41.051849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241219, 33.743607, 41.201141>,  <33.217979, 33.965046, 41.290718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241219, 33.743607, 41.201141>,  <33.279953, 33.374538, 41.051849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241219, 33.743607, 41.201141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472348, 0.287472, -0.833215,
		-0.876077, -0.256978, 0.407985,
		-0.096834, 0.922671, 0.373231,
		33.212170, 34.020409, 41.313110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660736, 33.322571, 41.033237>,  <33.279953, 33.374538, 41.051849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660736, 33.322571, 41.033237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749748, 33.709755, 41.079765>,  <32.803158, 33.942066, 41.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749748, 33.709755, 41.079765>,  <32.660736, 33.322571, 41.033237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749748, 33.709755, 41.079765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717480, 0.243382, -0.652677,
		-0.660077, 0.061782, 0.748653,
		0.222533, 0.967961, 0.116323,
		32.816509, 34.000145, 41.114662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062164, 33.687542, 41.055588>,  <32.660736, 33.322571, 41.033237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062164, 33.687542, 41.055588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321594, 33.975979, 40.958118>,  <32.477253, 34.149040, 40.899639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321594, 33.975979, 40.958118>,  <32.062164, 33.687542, 41.055588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321594, 33.975979, 40.958118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531349, 0.199715, -0.823275,
		-0.544994, 0.663429, 0.512683,
		0.648575, 0.721093, -0.243669,
		32.516167, 34.192307, 40.885017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636721, 34.295742, 40.913975>,  <32.062164, 33.687542, 41.055588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636721, 34.295742, 40.913975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979445, 34.316753, 40.708794>,  <32.185078, 34.329361, 40.585686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979445, 34.316753, 40.708794>,  <31.636721, 34.295742, 40.913975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979445, 34.316753, 40.708794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504867, 0.287683, -0.813848,
		0.104821, 0.956284, 0.273007,
		0.856809, 0.052524, -0.512952,
		32.236488, 34.332512, 40.554909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437607, 34.796764, 40.531792>,  <31.636721, 34.295742, 40.913975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437607, 34.796764, 40.531792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740553, 34.641926, 40.321438>,  <31.922321, 34.549023, 40.195225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740553, 34.641926, 40.321438>,  <31.437607, 34.796764, 40.531792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740553, 34.641926, 40.321438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452853, 0.268848, -0.850085,
		0.470446, 0.881974, 0.028320,
		0.757367, -0.387094, -0.525883,
		31.967764, 34.525799, 40.163673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650227, 35.214386, 40.016811>,  <31.437607, 34.796764, 40.531792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650227, 35.214386, 40.016811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844482, 34.907383, 39.849438>,  <31.961037, 34.723183, 39.749016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844482, 34.907383, 39.849438>,  <31.650227, 35.214386, 40.016811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844482, 34.907383, 39.849438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247076, 0.338633, -0.907899,
		0.838515, 0.544296, -0.025180,
		0.485640, -0.767509, -0.418431,
		31.990173, 34.677132, 39.723907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040291, 35.528618, 39.540619>,  <31.650227, 35.214386, 40.016811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040291, 35.528618, 39.540619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976507, 35.144554, 39.448818>,  <31.938236, 34.914116, 39.393738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976507, 35.144554, 39.448818>,  <32.040291, 35.528618, 39.540619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976507, 35.144554, 39.448818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493347, 0.278870, -0.823918,
		0.855091, -0.018160, -0.518160,
		-0.159462, -0.960157, -0.229500,
		31.928669, 34.856506, 39.379967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258553, 35.390263, 38.798084>,  <32.040291, 35.528618, 39.540619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258553, 35.390263, 38.798084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032829, 35.072514, 38.887993>,  <31.897394, 34.881863, 38.941936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032829, 35.072514, 38.887993>,  <32.258553, 35.390263, 38.798084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032829, 35.072514, 38.887993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403175, 0.027594, -0.914707,
		0.720417, -0.606801, -0.335844,
		-0.564313, -0.794374, 0.224768,
		31.863535, 34.834202, 38.955421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318916, 34.876453, 38.208542>,  <32.258553, 35.390263, 38.798084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318916, 34.876453, 38.208542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974825, 34.801929, 38.398403>,  <31.768370, 34.757217, 38.512318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974825, 34.801929, 38.398403>,  <32.318916, 34.876453, 38.208542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974825, 34.801929, 38.398403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455415, -0.137960, -0.879525,
		0.229345, -0.972757, 0.033830,
		-0.860232, -0.186308, 0.474649,
		31.716755, 34.746037, 38.540798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092010, 34.426880, 37.818913>,  <32.318916, 34.876453, 38.208542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092010, 34.426880, 37.818913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763092, 34.516083, 38.028328>,  <31.565741, 34.569603, 38.153976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763092, 34.516083, 38.028328>,  <32.092010, 34.426880, 37.818913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763092, 34.516083, 38.028328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569053, -0.321881, -0.756684,
		-0.000228, -0.920142, 0.391584,
		-0.822301, 0.223005, 0.523537,
		31.516401, 34.582985, 38.185390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672062, 33.854038, 37.850464>,  <32.092010, 34.426880, 37.818913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672062, 33.854038, 37.850464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402617, 34.145325, 37.900982>,  <31.240950, 34.320095, 37.931293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402617, 34.145325, 37.900982>,  <31.672062, 33.854038, 37.850464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402617, 34.145325, 37.900982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556969, -0.387839, -0.734416,
		-0.485831, -0.565053, 0.666846,
		-0.673612, 0.728215, 0.126293,
		31.200533, 34.363789, 37.938869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117615, 33.406132, 37.460186>,  <31.672062, 33.854038, 37.850464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117615, 33.406132, 37.460186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803675, 33.404060, 37.212318>,  <31.615311, 33.402817, 37.063599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803675, 33.404060, 37.212318>,  <32.117615, 33.406132, 37.460186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803675, 33.404060, 37.212318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114342, -0.981585, 0.153023,
		-0.609048, 0.190953, 0.769803,
		-0.784848, -0.005178, -0.619667,
		31.568220, 33.402508, 37.026417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648409, 33.120533, 37.825035>,  <32.117615, 33.406132, 37.460186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648409, 33.120533, 37.825035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562922, 33.035019, 37.443748>,  <31.511629, 32.983711, 37.214977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562922, 33.035019, 37.443748>,  <31.648409, 33.120533, 37.825035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562922, 33.035019, 37.443748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120399, -0.962556, 0.242879,
		-0.969447, 0.166674, 0.179977,
		-0.213719, -0.213790, -0.953215,
		31.498806, 32.970882, 37.157784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023336, 32.670738, 37.725243>,  <31.648409, 33.120533, 37.825035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023336, 32.670738, 37.725243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279522, 32.611706, 37.423775>,  <31.433233, 32.576286, 37.242893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279522, 32.611706, 37.423775>,  <31.023336, 32.670738, 37.725243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279522, 32.611706, 37.423775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023534, -0.977130, 0.211335,
		-0.767627, -0.153090, -0.622345,
		0.640465, -0.147579, -0.753674,
		31.471661, 32.567432, 37.197674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860857, 31.999088, 37.396732>,  <31.023336, 32.670738, 37.725243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860857, 31.999088, 37.396732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242294, 32.094208, 37.322853>,  <31.471157, 32.151279, 37.278526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242294, 32.094208, 37.322853>,  <30.860857, 31.999088, 37.396732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242294, 32.094208, 37.322853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286477, -0.905381, 0.313394,
		-0.092695, -0.351761, -0.931489,
		0.953592, 0.237800, -0.184696,
		31.528372, 32.165546, 37.267445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221386, 31.386084, 37.038769>,  <30.860857, 31.999088, 37.396732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221386, 31.386084, 37.038769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460789, 31.602669, 37.274940>,  <31.604429, 31.732620, 37.416645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460789, 31.602669, 37.274940>,  <31.221386, 31.386084, 37.038769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460789, 31.602669, 37.274940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236610, -0.823606, 0.515450,
		0.765380, -0.168798, -0.621048,
		0.598506, 0.541461, 0.590433,
		31.640341, 31.765106, 37.452072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839262, 30.970093, 37.144970>,  <31.221386, 31.386084, 37.038769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839262, 30.970093, 37.144970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858160, 31.258274, 37.421726>,  <31.869499, 31.431183, 37.587780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858160, 31.258274, 37.421726>,  <31.839262, 30.970093, 37.144970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858160, 31.258274, 37.421726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204407, -0.684982, 0.699298,
		0.977745, 0.108389, -0.179627,
		0.047246, 0.720452, 0.691894,
		31.872334, 31.474409, 37.629295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494541, 31.010054, 37.472076>,  <31.839262, 30.970093, 37.144970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494541, 31.010054, 37.472076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239552, 31.169256, 37.735958>,  <32.086555, 31.264778, 37.894287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239552, 31.169256, 37.735958>,  <32.494541, 31.010054, 37.472076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239552, 31.169256, 37.735958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213278, -0.731626, 0.647484,
		0.740362, 0.553457, 0.381509,
		-0.637477, 0.398005, 0.659708,
		32.048309, 31.288658, 37.933872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850281, 31.229824, 38.082092>,  <32.494541, 31.010054, 37.472076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850281, 31.229824, 38.082092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478458, 31.201765, 38.226868>,  <32.255363, 31.184929, 38.313732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478458, 31.201765, 38.226868>,  <32.850281, 31.229824, 38.082092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478458, 31.201765, 38.226868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358449, -0.401564, 0.842770,
		0.086222, 0.913141, 0.398422,
		-0.929559, -0.070149, 0.361938,
		32.199593, 31.180721, 38.335449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899448, 31.322924, 38.840008>,  <32.850281, 31.229824, 38.082092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899448, 31.322924, 38.840008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537441, 31.157066, 38.802017>,  <32.320236, 31.057552, 38.779221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537441, 31.157066, 38.802017>,  <32.899448, 31.322924, 38.840008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537441, 31.157066, 38.802017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195481, -0.603700, 0.772874,
		-0.377805, 0.680895, 0.627411,
		-0.905014, -0.414643, -0.094979,
		32.265938, 31.032673, 38.773525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673946, 31.241341, 39.469574>,  <32.899448, 31.322924, 38.840008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673946, 31.241341, 39.469574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410839, 31.001345, 39.287434>,  <32.252975, 30.857347, 39.178150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410839, 31.001345, 39.287434>,  <32.673946, 31.241341, 39.469574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410839, 31.001345, 39.287434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088934, -0.662183, 0.744046,
		-0.747948, 0.448916, 0.488925,
		-0.657772, -0.599990, -0.455354,
		32.213509, 30.821348, 39.150826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152836, 31.216284, 39.872261>,  <32.673946, 31.241341, 39.469574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152836, 31.216284, 39.872261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119904, 30.888559, 39.645298>,  <32.100143, 30.691925, 39.509121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119904, 30.888559, 39.645298>,  <32.152836, 31.216284, 39.872261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119904, 30.888559, 39.645298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047057, -0.565512, 0.823396,
		-0.995493, 0.094493, 0.008006,
		-0.082333, -0.819309, -0.567410,
		32.095203, 30.642767, 39.475075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545521, 30.801434, 40.071255>,  <32.152836, 31.216284, 39.872261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545521, 30.801434, 40.071255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837914, 30.578705, 39.913460>,  <32.013348, 30.445068, 39.818783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837914, 30.578705, 39.913460>,  <31.545521, 30.801434, 40.071255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837914, 30.578705, 39.913460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175257, -0.711881, 0.680081,
		-0.659507, -0.427991, -0.617959,
		0.730982, -0.556820, -0.394482,
		32.057209, 30.411659, 39.795116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327198, 30.158463, 40.138992>,  <31.545521, 30.801434, 40.071255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327198, 30.158463, 40.138992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716339, 30.085526, 40.081993>,  <31.949823, 30.041763, 40.047794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716339, 30.085526, 40.081993>,  <31.327198, 30.158463, 40.138992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716339, 30.085526, 40.081993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040627, -0.740782, 0.670516,
		-0.227825, -0.646525, -0.728080,
		0.972854, -0.182340, -0.142502,
		32.008194, 30.030823, 40.039242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382679, 29.425959, 40.236282>,  <31.327198, 30.158463, 40.138992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382679, 29.425959, 40.236282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753531, 29.568884, 40.281460>,  <31.976042, 29.654638, 40.308567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753531, 29.568884, 40.281460>,  <31.382679, 29.425959, 40.236282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753531, 29.568884, 40.281460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197878, -0.722743, 0.662183,
		0.318233, -0.591582, -0.740782,
		0.927131, 0.357313, 0.112939,
		32.031670, 29.676077, 40.315342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790409, 28.853651, 40.249905>,  <31.382679, 29.425959, 40.236282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790409, 28.853651, 40.249905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066570, 29.112387, 40.379486>,  <32.232265, 29.267628, 40.457233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066570, 29.112387, 40.379486>,  <31.790409, 28.853651, 40.249905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066570, 29.112387, 40.379486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373713, -0.702319, 0.605876,
		0.619422, -0.297233, -0.726615,
		0.690402, 0.646839, 0.323952,
		32.273689, 29.306438, 40.476673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549599, 28.486885, 40.207111>,  <31.790409, 28.853651, 40.249905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549599, 28.486885, 40.207111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544807, 28.787004, 40.471508>,  <32.541935, 28.967075, 40.630146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544807, 28.787004, 40.471508>,  <32.549599, 28.486885, 40.207111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544807, 28.787004, 40.471508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556430, -0.544236, 0.627848,
		0.830808, 0.375314, -0.410971,
		-0.011975, 0.750298, 0.660991,
		32.541214, 29.012094, 40.669804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163116, 28.503304, 40.577488>,  <32.549599, 28.486885, 40.207111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163116, 28.503304, 40.577488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965286, 28.742586, 40.829689>,  <32.846588, 28.886156, 40.981010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965286, 28.742586, 40.829689>,  <33.163116, 28.503304, 40.577488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965286, 28.742586, 40.829689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590302, -0.301252, 0.748860,
		0.637916, 0.742559, -0.204132,
		-0.494577, 0.598209, 0.630507,
		32.816914, 28.922049, 41.018841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618328, 28.915707, 40.917606>,  <33.163116, 28.503304, 40.577488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618328, 28.915707, 40.917606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298527, 28.893139, 41.156811>,  <33.106647, 28.879599, 41.300331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298527, 28.893139, 41.156811>,  <33.618328, 28.915707, 40.917606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298527, 28.893139, 41.156811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571736, -0.376720, 0.728834,
		0.184162, 0.924607, 0.333445,
		-0.799501, -0.056419, 0.598009,
		33.058678, 28.876213, 41.336212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835770, 29.267897, 41.471210>,  <33.618328, 28.915707, 40.917606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835770, 29.267897, 41.471210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525066, 29.049082, 41.596050>,  <33.338646, 28.917793, 41.670956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525066, 29.049082, 41.596050>,  <33.835770, 29.267897, 41.471210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525066, 29.049082, 41.596050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560060, -0.373294, 0.739584,
		-0.288073, 0.749269, 0.596330,
		-0.776754, -0.547035, 0.312099,
		33.292042, 28.884972, 41.689678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943600, 29.359238, 42.150112>,  <33.835770, 29.267897, 41.471210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943600, 29.359238, 42.150112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713070, 29.033567, 42.121910>,  <33.574753, 28.838165, 42.104988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713070, 29.033567, 42.121910>,  <33.943600, 29.359238, 42.150112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713070, 29.033567, 42.121910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468105, -0.399604, 0.788159,
		-0.669875, 0.421228, 0.611420,
		-0.576321, -0.814177, -0.070506,
		33.540173, 28.789314, 42.100758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593853, 29.221972, 42.852314>,  <33.943600, 29.359238, 42.150112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593853, 29.221972, 42.852314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554485, 28.877506, 42.652832>,  <33.530865, 28.670828, 42.533142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554485, 28.877506, 42.652832>,  <33.593853, 29.221972, 42.852314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554485, 28.877506, 42.652832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244016, -0.506727, 0.826852,
		-0.964764, -0.040311, 0.260011,
		-0.098423, -0.861164, -0.498708,
		33.524960, 28.619158, 42.503220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200542, 28.793728, 43.352692>,  <33.593853, 29.221972, 42.852314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200542, 28.793728, 43.352692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384434, 28.556999, 43.087845>,  <33.494770, 28.414963, 42.928936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384434, 28.556999, 43.087845>,  <33.200542, 28.793728, 43.352692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384434, 28.556999, 43.087845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278643, -0.611797, 0.740312,
		-0.843213, -0.524836, -0.116354,
		0.459728, -0.591820, -0.662117,
		33.522350, 28.379454, 42.889210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062668, 28.077459, 43.462200>,  <33.200542, 28.793728, 43.352692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062668, 28.077459, 43.462200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399895, 28.026363, 43.253231>,  <33.602230, 27.995705, 43.127850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399895, 28.026363, 43.253231>,  <33.062668, 28.077459, 43.462200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399895, 28.026363, 43.253231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343606, -0.619337, 0.705943,
		-0.413731, -0.774663, -0.478250,
		0.843067, -0.127741, -0.522418,
		33.652813, 27.988041, 43.096504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208866, 27.302952, 43.457634>,  <33.062668, 28.077459, 43.462200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208866, 27.302952, 43.457634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566673, 27.463297, 43.378498>,  <33.781357, 27.559504, 43.331017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566673, 27.463297, 43.378498>,  <33.208866, 27.302952, 43.457634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566673, 27.463297, 43.378498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445075, -0.757390, 0.477774,
		0.041681, -0.515432, -0.855916,
		0.894522, 0.400861, -0.197838,
		33.835030, 27.583555, 43.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607437, 26.736780, 43.313484>,  <33.208866, 27.302952, 43.457634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607437, 26.736780, 43.313484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860744, 27.041136, 43.370079>,  <34.012730, 27.223749, 43.404037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860744, 27.041136, 43.370079>,  <33.607437, 26.736780, 43.313484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860744, 27.041136, 43.370079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567007, -0.580562, 0.584338,
		0.526761, -0.289815, -0.799080,
		0.633266, 0.760890, 0.141491,
		34.050724, 27.269403, 43.412525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358192, 26.513687, 43.239235>,  <33.607437, 26.736780, 43.313484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358192, 26.513687, 43.239235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354481, 26.844776, 43.463661>,  <34.352253, 27.043428, 43.598316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354481, 26.844776, 43.463661>,  <34.358192, 26.513687, 43.239235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354481, 26.844776, 43.463661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470579, -0.491458, 0.732819,
		0.882309, 0.270826, -0.384947,
		-0.009281, 0.827721, 0.561063,
		34.351696, 27.093092, 43.631981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941490, 26.407932, 43.565575>,  <34.358192, 26.513687, 43.239235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941490, 26.407932, 43.565575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762722, 26.697592, 43.775669>,  <34.655460, 26.871387, 43.901726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762722, 26.697592, 43.775669>,  <34.941490, 26.407932, 43.565575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762722, 26.697592, 43.775669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346718, -0.401027, 0.847917,
		0.824651, 0.561061, -0.071847,
		-0.446920, 0.724147, 0.525237,
		34.628647, 26.914835, 43.933239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451427, 26.600866, 44.135750>,  <34.941490, 26.407932, 43.565575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451427, 26.600866, 44.135750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093029, 26.740543, 44.245476>,  <34.877991, 26.824348, 44.311314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093029, 26.740543, 44.245476>,  <35.451427, 26.600866, 44.135750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093029, 26.740543, 44.245476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118544, -0.407246, 0.905593,
		0.427940, 0.843929, 0.323498,
		-0.895999, 0.349190, 0.274320,
		34.824230, 26.845301, 44.327770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956211, 27.140179, 44.268177>,  <35.451427, 26.600866, 44.135750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956211, 27.140179, 44.268177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346912, 27.190975, 44.337254>,  <36.581333, 27.221453, 44.378700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346912, 27.190975, 44.337254>,  <35.956211, 27.140179, 44.268177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346912, 27.190975, 44.337254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120092, 0.343133, -0.931578,
		-0.177559, 0.930663, 0.319906,
		0.976755, 0.126992, 0.172692,
		36.639938, 27.229073, 44.389061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142391, 27.858273, 44.047737>,  <35.956211, 27.140179, 44.268177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142391, 27.858273, 44.047737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466740, 27.625055, 44.027557>,  <36.661350, 27.485125, 44.015450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466740, 27.625055, 44.027557>,  <36.142391, 27.858273, 44.047737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466740, 27.625055, 44.027557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252375, 0.426163, -0.868730,
		0.528007, 0.691698, 0.492710,
		0.810874, -0.583043, -0.050449,
		36.710003, 27.450142, 44.012421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552307, 28.297955, 43.687496>,  <36.142391, 27.858273, 44.047737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552307, 28.297955, 43.687496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744026, 27.948139, 43.657951>,  <36.859058, 27.738251, 43.640224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744026, 27.948139, 43.657951>,  <36.552307, 28.297955, 43.687496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744026, 27.948139, 43.657951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165179, 0.172540, -0.971054,
		0.861967, 0.453226, 0.227153,
		0.479300, -0.874538, -0.073861,
		36.887817, 27.685778, 43.635792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101921, 28.412088, 43.330013>,  <36.552307, 28.297955, 43.687496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101921, 28.412088, 43.330013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055248, 28.015551, 43.305950>,  <37.027245, 27.777628, 43.291512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055248, 28.015551, 43.305950>,  <37.101921, 28.412088, 43.330013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055248, 28.015551, 43.305950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057159, 0.053766, -0.996916,
		0.991524, -0.119757, 0.050392,
		-0.116678, -0.991346, -0.060155,
		37.020245, 27.718147, 43.287903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723572, 28.112097, 43.210243>,  <37.101921, 28.412088, 43.330013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723572, 28.112097, 43.210243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449383, 27.857283, 43.069210>,  <37.284870, 27.704393, 42.984589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449383, 27.857283, 43.069210>,  <37.723572, 28.112097, 43.210243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449383, 27.857283, 43.069210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258604, 0.239663, -0.935781,
		0.680628, -0.732629, 0.000459,
		-0.685470, -0.637037, -0.352582,
		37.243740, 27.666172, 42.963436>
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
