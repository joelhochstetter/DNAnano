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
	<24.564621, 35.573532, 34.835064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583450, 35.205772, 34.991261>,  <24.594748, 34.985115, 35.084980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583450, 35.205772, 34.991261>,  <24.564621, 35.573532, 34.835064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583450, 35.205772, 34.991261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202667, 0.374004, 0.905012,
		-0.978116, -0.121740, -0.168728,
		0.047071, -0.919402, 0.390492,
		24.597572, 34.929951, 35.108410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220589, 35.136803, 35.012691>,  <24.564621, 35.573532, 34.835064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220589, 35.136803, 35.012691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096643, 35.502571, 35.116859>,  <25.022276, 35.722031, 35.179359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096643, 35.502571, 35.116859>,  <25.220589, 35.136803, 35.012691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096643, 35.502571, 35.116859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326168, -0.155044, 0.932510,
		0.893083, 0.373893, -0.250212,
		-0.309865, 0.914421, 0.260419,
		25.003683, 35.776897, 35.194984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752983, 35.429268, 35.397556>,  <25.220589, 35.136803, 35.012691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752983, 35.429268, 35.397556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399914, 35.591553, 35.492451>,  <25.188072, 35.688923, 35.549389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399914, 35.591553, 35.492451>,  <25.752983, 35.429268, 35.397556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399914, 35.591553, 35.492451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201805, -0.128699, 0.970933,
		0.424456, 0.904893, 0.031723,
		-0.882673, 0.405716, 0.237239,
		25.135113, 35.713268, 35.563622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929714, 35.819248, 36.047100>,  <25.752983, 35.429268, 35.397556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929714, 35.819248, 36.047100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550659, 35.701164, 35.998375>,  <25.323227, 35.630314, 35.969139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550659, 35.701164, 35.998375>,  <25.929714, 35.819248, 36.047100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550659, 35.701164, 35.998375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027862, -0.303561, 0.952405,
		-0.318133, 0.905927, 0.279440,
		-0.947636, -0.295206, -0.121814,
		25.266369, 35.612602, 35.961830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531097, 35.399673, 35.876194>,  <25.929714, 35.819248, 36.047100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531097, 35.399673, 35.876194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894796, 35.279285, 35.991219>,  <27.113016, 35.207054, 36.060234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894796, 35.279285, 35.991219>,  <26.531097, 35.399673, 35.876194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894796, 35.279285, 35.991219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356501, -0.919666, 0.164690,
		0.214892, -0.252259, -0.943497,
		0.909246, -0.300967, 0.287560,
		27.167570, 35.188995, 36.077488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560713, 34.722435, 35.585464>,  <26.531097, 35.399673, 35.876194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560713, 34.722435, 35.585464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810043, 34.775551, 35.893707>,  <26.959642, 34.807419, 36.078651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810043, 34.775551, 35.893707>,  <26.560713, 34.722435, 35.585464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810043, 34.775551, 35.893707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379908, -0.809928, 0.446864,
		0.683471, -0.571301, -0.454403,
		0.623327, 0.132788, 0.770604,
		26.997042, 34.815388, 36.124889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774685, 33.997574, 35.728874>,  <26.560713, 34.722435, 35.585464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774685, 33.997574, 35.728874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853647, 34.211742, 36.057350>,  <26.901026, 34.340244, 36.254436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853647, 34.211742, 36.057350>,  <26.774685, 33.997574, 35.728874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853647, 34.211742, 36.057350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303975, -0.762957, 0.570522,
		0.932003, -0.362247, 0.012141,
		0.197407, 0.535419, 0.821193,
		26.912870, 34.372368, 36.303707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217815, 33.642979, 36.203175>,  <26.774685, 33.997574, 35.728874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217815, 33.642979, 36.203175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073788, 33.927769, 36.444317>,  <26.987371, 34.098644, 36.589005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073788, 33.927769, 36.444317>,  <27.217815, 33.642979, 36.203175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073788, 33.927769, 36.444317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364094, -0.702203, 0.611838,
		0.858944, 0.000806, 0.512069,
		-0.360070, 0.711976, 0.602860,
		26.965767, 34.141361, 36.625175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324657, 33.450966, 36.946239>,  <27.217815, 33.642979, 36.203175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324657, 33.450966, 36.946239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024887, 33.715099, 36.926971>,  <26.845026, 33.873581, 36.915409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024887, 33.715099, 36.926971>,  <27.324657, 33.450966, 36.946239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024887, 33.715099, 36.926971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578836, -0.618131, 0.531849,
		0.321421, 0.426464, 0.845468,
		-0.749425, 0.660335, -0.048172,
		26.800060, 33.913200, 36.912521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157349, 33.490494, 37.624012>,  <27.324657, 33.450966, 36.946239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157349, 33.490494, 37.624012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826342, 33.587597, 37.421513>,  <26.627737, 33.645859, 37.300014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826342, 33.587597, 37.421513>,  <27.157349, 33.490494, 37.624012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826342, 33.587597, 37.421513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556091, -0.478591, 0.679495,
		-0.077335, 0.843813, 0.531036,
		-0.827516, 0.242756, -0.506248,
		26.578087, 33.660423, 37.269638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721458, 33.769020, 38.126892>,  <27.157349, 33.490494, 37.624012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721458, 33.769020, 38.126892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478806, 33.641258, 37.835693>,  <26.333214, 33.564602, 37.660973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478806, 33.641258, 37.835693>,  <26.721458, 33.769020, 38.126892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478806, 33.641258, 37.835693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500408, -0.558144, 0.661866,
		-0.617727, 0.765805, 0.178758,
		-0.606634, -0.319401, -0.727996,
		26.296816, 33.545437, 37.617294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018719, 33.802914, 38.447807>,  <26.721458, 33.769020, 38.126892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018719, 33.802914, 38.447807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945969, 33.579559, 38.124046>,  <25.902319, 33.445545, 37.929790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945969, 33.579559, 38.124046>,  <26.018719, 33.802914, 38.447807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945969, 33.579559, 38.124046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492557, -0.660683, 0.566468,
		-0.851064, 0.501701, -0.154876,
		-0.181874, -0.558385, -0.809400,
		25.891407, 33.412045, 37.881226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304333, 33.705238, 38.467213>,  <26.018719, 33.802914, 38.447807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304333, 33.705238, 38.467213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468250, 33.415993, 38.244801>,  <25.566601, 33.242447, 38.111351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468250, 33.415993, 38.244801>,  <25.304333, 33.705238, 38.467213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468250, 33.415993, 38.244801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466469, -0.689960, 0.553501,
		-0.783887, 0.032554, -0.620049,
		0.409790, -0.723115, -0.556036,
		25.591188, 33.199059, 38.077991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725224, 33.200279, 38.290390>,  <25.304333, 33.705238, 38.467213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725224, 33.200279, 38.290390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089870, 33.038597, 38.260525>,  <25.308659, 32.941589, 38.242607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089870, 33.038597, 38.260525>,  <24.725224, 33.200279, 38.290390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089870, 33.038597, 38.260525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289189, -0.759781, 0.582326,
		-0.292104, -0.509267, -0.809520,
		0.911617, -0.404204, -0.074661,
		25.363356, 32.917336, 38.238125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588926, 32.533970, 38.445992>,  <24.725224, 33.200279, 38.290390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588926, 32.533970, 38.445992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987627, 32.504181, 38.458233>,  <25.226849, 32.486305, 38.465580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987627, 32.504181, 38.458233>,  <24.588926, 32.533970, 38.445992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987627, 32.504181, 38.458233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079464, -0.848498, 0.523198,
		-0.012995, -0.523931, -0.851661,
		0.996753, -0.074475, 0.030608,
		25.286654, 32.481838, 38.467415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621771, 31.837120, 38.458191>,  <24.588926, 32.533970, 38.445992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621771, 31.837120, 38.458191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969263, 31.982473, 38.592812>,  <25.177757, 32.069687, 38.673584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969263, 31.982473, 38.592812>,  <24.621771, 31.837120, 38.458191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969263, 31.982473, 38.592812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023892, -0.647960, 0.761299,
		0.494712, -0.669403, -0.554220,
		0.868728, 0.363383, 0.336547,
		25.229881, 32.091488, 38.693775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970840, 31.255503, 38.646580>,  <24.621771, 31.837120, 38.458191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970840, 31.255503, 38.646580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146101, 31.566040, 38.827827>,  <25.251257, 31.752363, 38.936577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146101, 31.566040, 38.827827>,  <24.970840, 31.255503, 38.646580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146101, 31.566040, 38.827827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030736, -0.516723, 0.855601,
		0.898375, -0.360956, -0.250265,
		0.438152, 0.776343, 0.453116,
		25.277546, 31.798943, 38.963764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446199, 30.970860, 39.008709>,  <24.970840, 31.255503, 38.646580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446199, 30.970860, 39.008709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409931, 31.324278, 39.192501>,  <25.388170, 31.536329, 39.302776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409931, 31.324278, 39.192501>,  <25.446199, 30.970860, 39.008709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409931, 31.324278, 39.192501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034588, -0.458311, 0.888119,
		0.995280, 0.096421, 0.010996,
		-0.090673, 0.883547, 0.459482,
		25.382729, 31.589342, 39.330345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935785, 30.935257, 39.622990>,  <25.446199, 30.970860, 39.008709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935785, 30.935257, 39.622990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659910, 31.211239, 39.710892>,  <25.494385, 31.376827, 39.763634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659910, 31.211239, 39.710892>,  <25.935785, 30.935257, 39.622990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659910, 31.211239, 39.710892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098816, -0.390325, 0.915359,
		0.717332, 0.609597, 0.337381,
		-0.689689, 0.689954, 0.219755,
		25.453003, 31.418224, 39.776817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124063, 31.207697, 40.235657>,  <25.935785, 30.935257, 39.622990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124063, 31.207697, 40.235657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740454, 31.320951, 40.231598>,  <25.510288, 31.388905, 40.229160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740454, 31.320951, 40.231598>,  <26.124063, 31.207697, 40.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740454, 31.320951, 40.231598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084595, -0.251978, 0.964029,
		0.270393, 0.925387, 0.265605,
		-0.959026, 0.283135, -0.010151,
		25.452745, 31.405891, 40.228554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042219, 31.437546, 40.856815>,  <26.124063, 31.207697, 40.235657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042219, 31.437546, 40.856815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663324, 31.394463, 40.736057>,  <25.435987, 31.368612, 40.663605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663324, 31.394463, 40.736057>,  <26.042219, 31.437546, 40.856815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663324, 31.394463, 40.736057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223017, -0.455030, 0.862097,
		-0.230223, 0.883938, 0.407001,
		-0.947238, -0.107706, -0.301892,
		25.379152, 31.362150, 40.645489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625732, 31.705853, 41.370647>,  <26.042219, 31.437546, 40.856815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625732, 31.705853, 41.370647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382280, 31.458607, 41.171650>,  <25.236208, 31.310259, 41.052250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382280, 31.458607, 41.171650>,  <25.625732, 31.705853, 41.370647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382280, 31.458607, 41.171650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258556, -0.438278, 0.860849,
		-0.750145, 0.652571, 0.106933,
		-0.608631, -0.618113, -0.497498,
		25.199692, 31.273172, 41.022400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088934, 31.620399, 41.794914>,  <25.625732, 31.705853, 41.370647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088934, 31.620399, 41.794914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046051, 31.310463, 41.545715>,  <25.020321, 31.124500, 41.396194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046051, 31.310463, 41.545715>,  <25.088934, 31.620399, 41.794914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046051, 31.310463, 41.545715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314462, -0.568018, 0.760572,
		-0.943197, 0.277450, -0.182761,
		-0.107209, -0.774841, -0.623000,
		25.013889, 31.078011, 41.358814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.317629, 31.184099, 41.969604>,  <25.088934, 31.620399, 41.794914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.317629, 31.184099, 41.969604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587242, 30.958921, 41.778282>,  <24.749010, 30.823814, 41.663490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587242, 30.958921, 41.778282>,  <24.317629, 31.184099, 41.969604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587242, 30.958921, 41.778282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079939, -0.699273, 0.710371,
		-0.734364, -0.440578, -0.516334,
		0.674033, -0.562946, -0.478301,
		24.789452, 30.790037, 41.634792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.039276, 30.557102, 41.892483>,  <24.317629, 31.184099, 41.969604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.039276, 30.557102, 41.892483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432682, 30.485979, 41.879307>,  <24.668726, 30.443306, 41.871403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432682, 30.485979, 41.879307>,  <24.039276, 30.557102, 41.892483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432682, 30.485979, 41.879307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109891, -0.732327, 0.672028,
		-0.143613, -0.657329, -0.739793,
		0.983514, -0.177808, -0.032937,
		24.727736, 30.432636, 41.869427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215740, 29.793476, 41.709034>,  <24.039276, 30.557102, 41.892483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215740, 29.793476, 41.709034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498047, 29.977018, 41.924938>,  <24.667431, 30.087143, 42.054482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498047, 29.977018, 41.924938>,  <24.215740, 29.793476, 41.709034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498047, 29.977018, 41.924938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048311, -0.728955, 0.682854,
		0.706794, -0.508013, -0.492305,
		0.705767, 0.458854, 0.539764,
		24.709778, 30.114674, 42.086868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689632, 29.352188, 42.074169>,  <24.215740, 29.793476, 41.709034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689632, 29.352188, 42.074169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677002, 29.679649, 42.303535>,  <24.669424, 29.876127, 42.441154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677002, 29.679649, 42.303535>,  <24.689632, 29.352188, 42.074169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677002, 29.679649, 42.303535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244312, -0.562623, 0.789789,
		0.969182, -0.115152, 0.217774,
		-0.031579, 0.818655, 0.573417,
		24.667528, 29.925245, 42.475559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784773, 28.898048, 41.613560>,  <24.689632, 29.352188, 42.074169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784773, 28.898048, 41.613560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506115, 28.791185, 41.347233>,  <24.338921, 28.727068, 41.187435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506115, 28.791185, 41.347233>,  <24.784773, 28.898048, 41.613560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506115, 28.791185, 41.347233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620271, -0.690634, -0.371871,
		-0.360490, -0.672050, 0.646835,
		-0.696643, -0.267157, -0.665820,
		24.297123, 28.711039, 41.147488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763262, 28.221437, 41.674007>,  <24.784773, 28.898048, 41.613560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763262, 28.221437, 41.674007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650351, 28.320040, 41.303158>,  <24.582603, 28.379200, 41.080650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650351, 28.320040, 41.303158>,  <24.763262, 28.221437, 41.674007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650351, 28.320040, 41.303158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547168, -0.752444, -0.366654,
		-0.787990, -0.610789, 0.077516,
		-0.282275, 0.246505, -0.927122,
		24.565668, 28.393991, 41.025021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.383945, 27.646744, 41.304588>,  <24.763262, 28.221437, 41.674007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.383945, 27.646744, 41.304588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580690, 27.890911, 41.056244>,  <24.698736, 28.037411, 40.907238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580690, 27.890911, 41.056244>,  <24.383945, 27.646744, 41.304588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.580690, 27.890911, 41.056244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654092, -0.729703, -0.199243,
		-0.574662, -0.308097, -0.758182,
		0.491861, 0.610418, -0.620856,
		24.728249, 28.074036, 40.869987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.413960, 27.431046, 40.549393>,  <24.383945, 27.646744, 41.304588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.413960, 27.431046, 40.549393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725441, 27.636219, 40.693901>,  <24.912331, 27.759323, 40.780605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725441, 27.636219, 40.693901>,  <24.413960, 27.431046, 40.549393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725441, 27.636219, 40.693901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553117, -0.833050, -0.009460,
		0.296106, 0.207193, -0.932412,
		0.778706, 0.512932, 0.361273,
		24.959053, 27.790098, 40.802284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075302, 27.468660, 40.109497>,  <24.413960, 27.431046, 40.549393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075302, 27.468660, 40.109497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121517, 27.476496, 40.506741>,  <25.149246, 27.481197, 40.745087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121517, 27.476496, 40.506741>,  <25.075302, 27.468660, 40.109497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121517, 27.476496, 40.506741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574987, -0.816584, -0.050790,
		0.809963, 0.576894, -0.105610,
		0.115540, 0.019586, 0.993110,
		25.156179, 27.482372, 40.804672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832405, 27.479452, 40.260170>,  <25.075302, 27.468660, 40.109497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832405, 27.479452, 40.260170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206514, 27.445366, 40.397575>,  <26.430981, 27.424913, 40.480019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206514, 27.445366, 40.397575>,  <25.832405, 27.479452, 40.260170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206514, 27.445366, 40.397575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341113, 0.475812, -0.810707,
		-0.094362, 0.875409, 0.474082,
		0.935274, -0.085216, 0.343512,
		26.487097, 27.419802, 40.500629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111549, 28.172091, 40.502388>,  <25.832405, 27.479452, 40.260170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111549, 28.172091, 40.502388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410748, 27.940641, 40.372345>,  <26.590267, 27.801771, 40.294319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410748, 27.940641, 40.372345>,  <26.111549, 28.172091, 40.502388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410748, 27.940641, 40.372345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267497, 0.711120, -0.650195,
		0.607409, 0.399379, 0.686695,
		0.747997, -0.578624, -0.325108,
		26.635147, 27.767054, 40.274811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808971, 28.553534, 40.363335>,  <26.111549, 28.172091, 40.502388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808971, 28.553534, 40.363335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794035, 28.234106, 40.123035>,  <26.785072, 28.042450, 39.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794035, 28.234106, 40.123035>,  <26.808971, 28.553534, 40.363335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794035, 28.234106, 40.123035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401565, 0.538501, -0.740785,
		0.915069, -0.268901, 0.300568,
		-0.037341, -0.798567, -0.600747,
		26.782833, 27.994535, 39.942810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584793, 28.268087, 40.177876>,  <26.808971, 28.553534, 40.363335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584793, 28.268087, 40.177876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304796, 28.216908, 39.896835>,  <27.136799, 28.186199, 39.728210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304796, 28.216908, 39.896835>,  <27.584793, 28.268087, 40.177876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304796, 28.216908, 39.896835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416643, 0.725870, -0.547285,
		0.580017, -0.675827, -0.454794,
		-0.699992, -0.127948, -0.702596,
		27.094799, 28.178522, 39.686058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956148, 28.170319, 39.575417>,  <27.584793, 28.268087, 40.177876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956148, 28.170319, 39.575417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599781, 28.286894, 39.436089>,  <27.385960, 28.356838, 39.352493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599781, 28.286894, 39.436089>,  <27.956148, 28.170319, 39.575417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599781, 28.286894, 39.436089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452562, 0.634009, -0.627073,
		0.038085, -0.716307, -0.696745,
		-0.890919, 0.291438, -0.348320,
		27.332504, 28.374325, 39.331593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114658, 28.401659, 38.848194>,  <27.956148, 28.170319, 39.575417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114658, 28.401659, 38.848194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769777, 28.540842, 38.995453>,  <27.562849, 28.624352, 39.083809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769777, 28.540842, 38.995453>,  <28.114658, 28.401659, 38.848194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769777, 28.540842, 38.995453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183210, 0.891756, -0.413771,
		-0.472272, -0.289306, -0.832623,
		-0.862203, 0.347957, 0.368147,
		27.511116, 28.645229, 39.105896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833248, 28.772993, 38.245171>,  <28.114658, 28.401659, 38.848194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833248, 28.772993, 38.245171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672728, 28.918182, 38.581554>,  <27.576414, 29.005297, 38.783382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672728, 28.918182, 38.581554>,  <27.833248, 28.772993, 38.245171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672728, 28.918182, 38.581554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190115, 0.931142, -0.311178,
		-0.895998, 0.035002, -0.442676,
		-0.401303, 0.362974, 0.840956,
		27.552338, 29.027075, 38.833839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388914, 29.358080, 37.968330>,  <27.833248, 28.772993, 38.245171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388914, 29.358080, 37.968330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433252, 29.399639, 38.363686>,  <27.459856, 29.424574, 38.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433252, 29.399639, 38.363686>,  <27.388914, 29.358080, 37.968330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433252, 29.399639, 38.363686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240686, 0.962109, -0.128127,
		-0.964253, 0.252094, 0.081640,
		0.110846, 0.103898, 0.988392,
		27.466507, 29.430809, 38.660202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921381, 29.856215, 38.079453>,  <27.388914, 29.358080, 37.968330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921381, 29.856215, 38.079453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211849, 29.841478, 38.354061>,  <27.386131, 29.832636, 38.518826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211849, 29.841478, 38.354061>,  <26.921381, 29.856215, 38.079453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211849, 29.841478, 38.354061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213097, 0.961447, -0.173808,
		-0.653653, 0.272511, 0.706028,
		0.726173, -0.036842, 0.686524,
		27.429701, 29.830425, 38.560017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843311, 30.487133, 38.469952>,  <26.921381, 29.856215, 38.079453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843311, 30.487133, 38.469952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215618, 30.383913, 38.573555>,  <27.439003, 30.321981, 38.635715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215618, 30.383913, 38.573555>,  <26.843311, 30.487133, 38.469952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215618, 30.383913, 38.573555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311974, 0.929949, -0.194596,
		-0.190647, 0.261926, 0.946070,
		0.930766, -0.258050, 0.259006,
		27.494848, 30.306498, 38.651257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090162, 30.951872, 38.910118>,  <26.843311, 30.487133, 38.469952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090162, 30.951872, 38.910118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425777, 30.807217, 38.747524>,  <27.627146, 30.720423, 38.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425777, 30.807217, 38.747524>,  <27.090162, 30.951872, 38.910118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425777, 30.807217, 38.747524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334372, 0.932121, -0.139092,
		0.429197, -0.019214, 0.903007,
		0.839038, -0.361638, -0.406488,
		27.677488, 30.698725, 38.625576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491413, 31.478043, 39.077286>,  <27.090162, 30.951872, 38.910118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491413, 31.478043, 39.077286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730289, 31.274616, 38.829182>,  <27.873615, 31.152561, 38.680321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730289, 31.274616, 38.829182>,  <27.491413, 31.478043, 39.077286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730289, 31.274616, 38.829182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448794, 0.852781, -0.267109,
		0.664790, -0.118854, 0.737515,
		0.597192, -0.508564, -0.620261,
		27.909447, 31.122047, 38.643105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269514, 31.679495, 39.221085>,  <27.491413, 31.478043, 39.077286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269514, 31.679495, 39.221085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217964, 31.544682, 38.848034>,  <28.187035, 31.463793, 38.624203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217964, 31.544682, 38.848034>,  <28.269514, 31.679495, 39.221085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217964, 31.544682, 38.848034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532419, 0.769913, -0.351800,
		0.836613, -0.541888, 0.080222,
		-0.128872, -0.337033, -0.932631,
		28.179302, 31.443571, 38.568245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925043, 31.750172, 38.858921>,  <28.269514, 31.679495, 39.221085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925043, 31.750172, 38.858921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654989, 31.728977, 38.564606>,  <28.492958, 31.716261, 38.388016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654989, 31.728977, 38.564606>,  <28.925043, 31.750172, 38.858921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654989, 31.728977, 38.564606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475603, 0.731185, -0.489051,
		0.563912, -0.680119, -0.468447,
		-0.675134, -0.052987, -0.735790,
		28.452450, 31.713081, 38.343868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304911, 31.693022, 38.175323>,  <28.925043, 31.750172, 38.858921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304911, 31.693022, 38.175323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943012, 31.839977, 38.089108>,  <28.725874, 31.928150, 38.037376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943012, 31.839977, 38.089108>,  <29.304911, 31.693022, 38.175323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943012, 31.839977, 38.089108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424067, 0.729381, -0.536815,
		-0.040008, -0.577085, -0.815703,
		-0.904746, 0.367390, -0.215542,
		28.671589, 31.950193, 38.024445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381636, 31.958599, 37.557503>,  <29.304911, 31.693022, 38.175323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381636, 31.958599, 37.557503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032495, 32.122982, 37.662762>,  <28.823011, 32.221611, 37.725918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032495, 32.122982, 37.662762>,  <29.381636, 31.958599, 37.557503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032495, 32.122982, 37.662762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245964, 0.836238, -0.490110,
		-0.421466, -0.363069, -0.830992,
		-0.872850, 0.410959, 0.263144,
		28.770639, 32.246269, 37.741703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201441, 32.288879, 36.916336>,  <29.381636, 31.958599, 37.557503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201441, 32.288879, 36.916336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002554, 32.439129, 37.229176>,  <28.883223, 32.529278, 37.416878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002554, 32.439129, 37.229176>,  <29.201441, 32.288879, 36.916336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002554, 32.439129, 37.229176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253919, 0.924955, -0.282812,
		-0.829639, 0.057971, -0.555282,
		-0.497217, 0.375628, 0.782099,
		28.853390, 32.551819, 37.463806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711382, 32.824390, 36.650913>,  <29.201441, 32.288879, 36.916336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711382, 32.824390, 36.650913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741732, 32.923927, 37.037140>,  <28.759941, 32.983650, 37.268875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741732, 32.923927, 37.037140>,  <28.711382, 32.824390, 36.650913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741732, 32.923927, 37.037140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256944, 0.930776, -0.260070,
		-0.963443, 0.267829, 0.006682,
		0.075874, 0.248846, 0.965567,
		28.764494, 32.998581, 37.326809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379236, 33.368465, 36.750179>,  <28.711382, 32.824390, 36.650913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379236, 33.368465, 36.750179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643623, 33.380116, 37.050117>,  <28.802256, 33.387104, 37.230080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643623, 33.380116, 37.050117>,  <28.379236, 33.368465, 36.750179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643623, 33.380116, 37.050117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169775, 0.967534, -0.187227,
		-0.730955, 0.251057, 0.634567,
		0.660970, 0.029121, 0.749847,
		28.841915, 33.388851, 37.275070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261883, 33.934784, 37.137753>,  <28.379236, 33.368465, 36.750179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261883, 33.934784, 37.137753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643147, 33.838142, 37.210537>,  <28.871904, 33.780155, 37.254208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643147, 33.838142, 37.210537>,  <28.261883, 33.934784, 37.137753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643147, 33.838142, 37.210537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267716, 0.953878, -0.135812,
		-0.140759, 0.178166, 0.973881,
		0.953161, -0.241607, 0.181965,
		28.929094, 33.765659, 37.265125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491657, 34.446350, 37.678341>,  <28.261883, 33.934784, 37.137753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491657, 34.446350, 37.678341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796457, 34.287853, 37.473461>,  <28.979338, 34.192757, 37.350533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796457, 34.287853, 37.473461>,  <28.491657, 34.446350, 37.678341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796457, 34.287853, 37.473461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466927, 0.884232, 0.010598,
		0.448702, -0.247235, 0.858802,
		0.762001, -0.396243, -0.512198,
		29.025057, 34.168980, 37.319801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023418, 34.925518, 37.946190>,  <28.491657, 34.446350, 37.678341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023418, 34.925518, 37.946190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157204, 34.730064, 37.623856>,  <29.237474, 34.612793, 37.430454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157204, 34.730064, 37.623856>,  <29.023418, 34.925518, 37.946190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157204, 34.730064, 37.623856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401352, 0.847515, -0.347324,
		0.852673, -0.207258, 0.479576,
		0.334462, -0.488633, -0.805837,
		29.257542, 34.583473, 37.382103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676149, 35.171612, 37.885700>,  <29.023418, 34.925518, 37.946190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676149, 35.171612, 37.885700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590469, 35.016647, 37.527031>,  <29.539061, 34.923668, 37.311829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590469, 35.016647, 37.527031>,  <29.676149, 35.171612, 37.885700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590469, 35.016647, 37.527031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355045, 0.824316, -0.440960,
		0.909979, -0.412815, -0.039022,
		-0.214202, -0.387410, -0.896678,
		29.526209, 34.900425, 37.258026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208439, 35.470768, 37.513988>,  <29.676149, 35.171612, 37.885700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208439, 35.470768, 37.513988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932987, 35.346516, 37.251907>,  <29.767715, 35.271965, 37.094658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932987, 35.346516, 37.251907>,  <30.208439, 35.470768, 37.513988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932987, 35.346516, 37.251907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265603, 0.732734, -0.626543,
		0.674718, -0.605481, -0.422077,
		-0.688630, -0.310634, -0.655206,
		29.726398, 35.253326, 37.055347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466499, 35.172756, 36.828976>,  <30.208439, 35.470768, 37.513988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466499, 35.172756, 36.828976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123405, 35.373993, 36.786671>,  <29.917549, 35.494736, 36.761288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123405, 35.373993, 36.786671>,  <30.466499, 35.172756, 36.828976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123405, 35.373993, 36.786671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436735, 0.604561, -0.666160,
		-0.271202, -0.617579, -0.738272,
		-0.857737, 0.503093, -0.105760,
		29.866085, 35.524921, 36.754944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970924, 35.666004, 36.978092>,  <30.466499, 35.172756, 36.828976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970924, 35.666004, 36.978092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335245, 35.789806, 37.087379>,  <31.553839, 35.864086, 37.152950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335245, 35.789806, 37.087379>,  <30.970924, 35.666004, 36.978092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335245, 35.789806, 37.087379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074529, -0.774184, 0.628558,
		0.406059, -0.552130, -0.728196,
		0.910803, 0.309503, 0.273215,
		31.608486, 35.882656, 37.169342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605619, 35.216946, 36.972866>,  <30.970924, 35.666004, 36.978092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605619, 35.216946, 36.972866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625467, 35.484173, 37.269844>,  <31.637377, 35.644508, 37.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625467, 35.484173, 37.269844>,  <31.605619, 35.216946, 36.972866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625467, 35.484173, 37.269844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138845, -0.740754, 0.657271,
		0.989070, 0.070470, -0.129515,
		0.049621, 0.668070, 0.742443,
		31.640354, 35.684593, 37.492577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029984, 34.990536, 37.500576>,  <31.605619, 35.216946, 36.972866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029984, 34.990536, 37.500576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903339, 35.282440, 37.742970>,  <31.827353, 35.457581, 37.888405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903339, 35.282440, 37.742970>,  <32.029984, 34.990536, 37.500576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903339, 35.282440, 37.742970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241025, -0.555984, 0.795480,
		0.917424, 0.397912, 0.000139,
		-0.316608, 0.729758, 0.605980,
		31.808357, 35.501369, 37.924763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597786, 35.102615, 37.972443>,  <32.029984, 34.990536, 37.500576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597786, 35.102615, 37.972443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250626, 35.226635, 38.127678>,  <32.042328, 35.301044, 38.220821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250626, 35.226635, 38.127678>,  <32.597786, 35.102615, 37.972443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250626, 35.226635, 38.127678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228392, -0.444732, 0.866055,
		0.441113, 0.840289, 0.315173,
		-0.867904, 0.310045, 0.388092,
		31.990255, 35.319649, 38.244106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717655, 35.430172, 38.609646>,  <32.597786, 35.102615, 37.972443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717655, 35.430172, 38.609646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329746, 35.341759, 38.651012>,  <32.097000, 35.288712, 38.675835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329746, 35.341759, 38.651012>,  <32.717655, 35.430172, 38.609646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329746, 35.341759, 38.651012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196327, -0.454976, 0.868592,
		-0.144932, 0.862637, 0.484615,
		-0.969768, -0.221030, 0.103418,
		32.038815, 35.275448, 38.682037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363304, 35.749836, 39.204960>,  <32.717655, 35.430172, 38.609646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363304, 35.749836, 39.204960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238483, 35.380199, 39.116703>,  <32.163589, 35.158417, 39.063747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238483, 35.380199, 39.116703>,  <32.363304, 35.749836, 39.204960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238483, 35.380199, 39.116703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165573, -0.281581, 0.945144,
		-0.935525, 0.258404, 0.240873,
		-0.312054, -0.924089, -0.220641,
		32.144867, 35.102974, 39.050510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775084, 35.623081, 39.582970>,  <32.363304, 35.749836, 39.204960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775084, 35.623081, 39.582970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996923, 35.301331, 39.497738>,  <32.130028, 35.108280, 39.446598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996923, 35.301331, 39.497738>,  <31.775084, 35.623081, 39.582970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996923, 35.301331, 39.497738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199294, -0.120219, 0.972538,
		-0.807900, -0.581834, 0.093633,
		0.554599, -0.804373, -0.213081,
		32.163303, 35.060020, 39.433815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599081, 35.084290, 40.136559>,  <31.775084, 35.623081, 39.582970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599081, 35.084290, 40.136559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940004, 34.932312, 39.992775>,  <32.144558, 34.841125, 39.906506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940004, 34.932312, 39.992775>,  <31.599081, 35.084290, 40.136559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940004, 34.932312, 39.992775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219994, -0.363082, 0.905414,
		-0.474523, -0.850770, -0.225871,
		0.852309, -0.379949, -0.359455,
		32.195698, 34.818329, 39.884937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658766, 34.492294, 40.457684>,  <31.599081, 35.084290, 40.136559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658766, 34.492294, 40.457684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030510, 34.572399, 40.333630>,  <32.253555, 34.620464, 40.259197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030510, 34.572399, 40.333630>,  <31.658766, 34.492294, 40.457684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030510, 34.572399, 40.333630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367163, -0.413754, 0.833066,
		0.038512, -0.888089, -0.458055,
		0.929359, 0.200264, -0.310139,
		32.309319, 34.632477, 40.240589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051640, 33.930542, 40.721291>,  <31.658766, 34.492294, 40.457684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051640, 33.930542, 40.721291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329979, 34.202606, 40.629051>,  <32.496983, 34.365845, 40.573708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329979, 34.202606, 40.629051>,  <32.051640, 33.930542, 40.721291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329979, 34.202606, 40.629051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524428, -0.261838, 0.810195,
		0.490683, -0.684706, -0.538895,
		0.695849, 0.680161, -0.230599,
		32.538734, 34.406654, 40.559872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720493, 33.546589, 40.826813>,  <32.051640, 33.930542, 40.721291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720493, 33.546589, 40.826813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789906, 33.940491, 40.821812>,  <32.831551, 34.176830, 40.818810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789906, 33.940491, 40.821812>,  <32.720493, 33.546589, 40.826813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789906, 33.940491, 40.821812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536864, -0.083941, 0.839483,
		0.825631, -0.152386, -0.543243,
		0.173526, 0.984750, -0.012506,
		32.841965, 34.235916, 40.818058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439697, 33.586990, 41.006054>,  <32.720493, 33.546589, 40.826813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439697, 33.586990, 41.006054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293804, 33.951443, 41.082798>,  <33.206268, 34.170113, 41.128845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293804, 33.951443, 41.082798>,  <33.439697, 33.586990, 41.006054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293804, 33.951443, 41.082798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531067, 0.034306, 0.846635,
		0.764814, 0.410686, -0.496384,
		-0.364730, 0.911131, 0.191864,
		33.184383, 34.224781, 41.140358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027138, 33.917053, 41.200428>,  <33.439697, 33.586990, 41.006054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027138, 33.917053, 41.200428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747826, 34.148426, 41.369102>,  <33.580238, 34.287251, 41.470306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747826, 34.148426, 41.369102>,  <34.027138, 33.917053, 41.200428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747826, 34.148426, 41.369102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573540, 0.099615, 0.813098,
		0.428315, 0.809627, -0.401312,
		-0.698283, 0.578430, 0.421687,
		33.538342, 34.321957, 41.495609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411991, 34.281189, 41.680847>,  <34.027138, 33.917053, 41.200428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411991, 34.281189, 41.680847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052067, 34.411747, 41.796646>,  <33.836113, 34.490082, 41.866127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052067, 34.411747, 41.796646>,  <34.411991, 34.281189, 41.680847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052067, 34.411747, 41.796646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264961, -0.118338, 0.956970,
		0.346611, 0.937796, 0.019999,
		-0.899809, 0.326398, 0.289496,
		33.782124, 34.509666, 41.883495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559612, 34.793533, 42.148441>,  <34.411991, 34.281189, 41.680847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559612, 34.793533, 42.148441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190838, 34.673637, 42.246571>,  <33.969574, 34.601700, 42.305450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190838, 34.673637, 42.246571>,  <34.559612, 34.793533, 42.148441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190838, 34.673637, 42.246571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291333, -0.119218, 0.949164,
		-0.255257, 0.946542, 0.197237,
		-0.921938, -0.299742, 0.245328,
		33.914257, 34.583714, 42.320168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363499, 35.130474, 42.787163>,  <34.559612, 34.793533, 42.148441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363499, 35.130474, 42.787163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172470, 34.779041, 42.788925>,  <34.057854, 34.568180, 42.789982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172470, 34.779041, 42.788925>,  <34.363499, 35.130474, 42.787163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172470, 34.779041, 42.788925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169982, -0.087469, 0.981558,
		-0.861995, 0.469510, 0.191116,
		-0.477567, -0.878584, 0.004410,
		34.029202, 34.515465, 42.790249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952801, 35.200867, 43.400352>,  <34.363499, 35.130474, 42.787163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952801, 35.200867, 43.400352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945438, 34.815704, 43.292667>,  <33.941021, 34.584606, 43.228058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945438, 34.815704, 43.292667>,  <33.952801, 35.200867, 43.400352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945438, 34.815704, 43.292667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061954, -0.267639, 0.961525,
		-0.997909, 0.034378, -0.054730,
		-0.018407, -0.962906, -0.269209,
		33.939915, 34.526833, 43.211906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644676, 35.026157, 43.928318>,  <33.952801, 35.200867, 43.400352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644676, 35.026157, 43.928318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808285, 34.690086, 43.785881>,  <33.906448, 34.488441, 43.700420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808285, 34.690086, 43.785881>,  <33.644676, 35.026157, 43.928318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808285, 34.690086, 43.785881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048575, -0.369623, 0.927912,
		-0.911232, -0.396832, -0.110371,
		0.409020, -0.840181, -0.356088,
		33.930992, 34.438034, 43.679054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211918, 34.500359, 44.106636>,  <33.644676, 35.026157, 43.928318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211918, 34.500359, 44.106636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570404, 34.327930, 44.064732>,  <33.785496, 34.224472, 44.039589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570404, 34.327930, 44.064732>,  <33.211918, 34.500359, 44.106636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570404, 34.327930, 44.064732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060915, -0.353495, 0.933451,
		-0.439415, -0.830192, -0.343067,
		0.896216, -0.431070, -0.104760,
		33.839268, 34.198608, 44.033302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163513, 33.907646, 44.391338>,  <33.211918, 34.500359, 44.106636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163513, 33.907646, 44.391338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563068, 33.917015, 44.374962>,  <33.802803, 33.922634, 44.365135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563068, 33.917015, 44.374962>,  <33.163513, 33.907646, 44.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563068, 33.917015, 44.374962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046927, -0.406146, 0.912602,
		0.004745, -0.913508, -0.406793,
		0.998887, 0.023420, -0.040941,
		33.862736, 33.924042, 44.362679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452606, 33.313099, 44.356892>,  <33.163513, 33.907646, 44.391338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452606, 33.313099, 44.356892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808231, 33.459423, 44.466976>,  <34.021606, 33.547218, 44.533028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808231, 33.459423, 44.466976>,  <33.452606, 33.313099, 44.356892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808231, 33.459423, 44.466976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027504, -0.642798, 0.765541,
		0.456949, -0.673048, -0.581552,
		0.889067, 0.365809, 0.275215,
		34.074951, 33.569164, 44.549541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831676, 32.728447, 44.420727>,  <33.452606, 33.313099, 44.356892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831676, 32.728447, 44.420727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960423, 33.045742, 44.627483>,  <34.037670, 33.236118, 44.751537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960423, 33.045742, 44.627483>,  <33.831676, 32.728447, 44.420727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960423, 33.045742, 44.627483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095580, -0.570379, 0.815802,
		0.941949, -0.213174, -0.259402,
		0.321865, 0.793237, 0.516892,
		34.056980, 33.283714, 44.782551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368134, 32.516182, 44.927784>,  <33.831676, 32.728447, 44.420727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368134, 32.516182, 44.927784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266453, 32.860817, 45.103531>,  <34.205444, 33.067600, 45.208977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266453, 32.860817, 45.103531>,  <34.368134, 32.516182, 44.927784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266453, 32.860817, 45.103531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135344, -0.418124, 0.898250,
		0.957633, 0.287806, -0.010321,
		-0.254207, 0.861591, 0.439363,
		34.190189, 33.119293, 45.235340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857254, 32.550392, 45.510872>,  <34.368134, 32.516182, 44.927784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857254, 32.550392, 45.510872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543198, 32.781387, 45.600376>,  <34.354763, 32.919983, 45.654079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543198, 32.781387, 45.600376>,  <34.857254, 32.550392, 45.510872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543198, 32.781387, 45.600376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050514, -0.300388, 0.952479,
		0.617259, 0.759129, 0.206674,
		-0.785137, 0.577486, 0.223763,
		34.307655, 32.954632, 45.667503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921589, 32.972084, 46.222881>,  <34.857254, 32.550392, 45.510872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921589, 32.972084, 46.222881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525787, 32.985336, 46.166630>,  <34.288307, 32.993290, 46.132877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525787, 32.985336, 46.166630>,  <34.921589, 32.972084, 46.222881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525787, 32.985336, 46.166630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144477, -0.222392, 0.964193,
		0.000671, 0.974394, 0.224846,
		-0.989508, 0.033132, -0.140628,
		34.228935, 32.995277, 46.124443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671192, 33.330791, 46.858898>,  <34.921589, 32.972084, 46.222881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671192, 33.330791, 46.858898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330769, 33.201847, 46.693111>,  <34.126514, 33.124481, 46.593639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330769, 33.201847, 46.693111>,  <34.671192, 33.330791, 46.858898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330769, 33.201847, 46.693111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370689, -0.190174, 0.909078,
		-0.371874, 0.927317, 0.042353,
		-0.851058, -0.322363, -0.414467,
		34.075451, 33.105137, 46.568771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070038, 33.754417, 47.027855>,  <34.671192, 33.330791, 46.858898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070038, 33.754417, 47.027855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928959, 33.384331, 46.971870>,  <33.844311, 33.162281, 46.938282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928959, 33.384331, 46.971870>,  <34.070038, 33.754417, 47.027855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928959, 33.384331, 46.971870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312508, -0.024517, 0.949599,
		-0.882012, 0.378658, -0.280489,
		-0.352696, -0.925212, -0.139958,
		33.823151, 33.106766, 46.929882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385735, 33.717110, 47.054726>,  <34.070038, 33.754417, 47.027855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385735, 33.717110, 47.054726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429661, 33.323734, 47.112396>,  <33.456017, 33.087708, 47.146999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429661, 33.323734, 47.112396>,  <33.385735, 33.717110, 47.054726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429661, 33.323734, 47.112396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557297, 0.059189, 0.828201,
		-0.823019, -0.171300, -0.541568,
		0.109816, -0.983439, 0.144179,
		33.462605, 33.028702, 47.155651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744976, 33.461063, 47.357212>,  <33.385735, 33.717110, 47.054726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744976, 33.461063, 47.357212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016575, 33.180374, 47.443508>,  <33.179535, 33.011959, 47.495285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016575, 33.180374, 47.443508>,  <32.744976, 33.461063, 47.357212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016575, 33.180374, 47.443508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391339, -0.097337, 0.915084,
		-0.621137, -0.705769, -0.340703,
		0.679001, -0.701723, 0.215736,
		33.220276, 32.969856, 47.508228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269894, 33.039696, 47.720287>,  <32.744976, 33.461063, 47.357212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269894, 33.039696, 47.720287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653896, 32.948429, 47.785194>,  <32.884296, 32.893669, 47.824139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653896, 32.948429, 47.785194>,  <32.269894, 33.039696, 47.720287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653896, 32.948429, 47.785194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204200, -0.174064, 0.963329,
		-0.191557, -0.957936, -0.213694,
		0.960005, -0.228169, 0.162268,
		32.941898, 32.879978, 47.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301701, 32.371105, 48.013618>,  <32.269894, 33.039696, 47.720287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301701, 32.371105, 48.013618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645473, 32.550831, 48.111179>,  <32.851738, 32.658665, 48.169716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645473, 32.550831, 48.111179>,  <32.301701, 32.371105, 48.013618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645473, 32.550831, 48.111179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106784, -0.308784, 0.945119,
		0.499968, -0.838313, -0.217401,
		0.859435, 0.449314, 0.243900,
		32.903305, 32.685627, 48.184349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685719, 31.863287, 48.503025>,  <32.301701, 32.371105, 48.013618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685719, 31.863287, 48.503025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870979, 32.213333, 48.559124>,  <32.982136, 32.423359, 48.592785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870979, 32.213333, 48.559124>,  <32.685719, 31.863287, 48.503025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870979, 32.213333, 48.559124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169688, -0.242875, 0.955101,
		0.869884, -0.418555, -0.260984,
		0.463149, 0.875113, 0.140249,
		33.009926, 32.475868, 48.601200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335003, 31.658028, 48.789650>,  <32.685719, 31.863287, 48.503025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335003, 31.658028, 48.789650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286720, 32.040661, 48.895763>,  <33.257751, 32.270241, 48.959431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286720, 32.040661, 48.895763>,  <33.335003, 31.658028, 48.789650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286720, 32.040661, 48.895763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041899, -0.262093, 0.964133,
		0.991804, 0.127492, -0.008444,
		-0.120706, 0.956584, 0.265287,
		33.250507, 32.327637, 48.975349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848324, 31.807045, 49.309772>,  <33.335003, 31.658028, 48.789650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848324, 31.807045, 49.309772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577087, 32.096088, 49.363487>,  <33.414345, 32.269516, 49.395714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577087, 32.096088, 49.363487>,  <33.848324, 31.807045, 49.309772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577087, 32.096088, 49.363487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102856, -0.087609, 0.990831,
		0.727746, 0.685685, -0.014917,
		-0.678091, 0.722607, 0.134284,
		33.373661, 32.312870, 49.403774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082920, 32.148422, 49.865551>,  <33.848324, 31.807045, 49.309772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082920, 32.148422, 49.865551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692932, 32.224396, 49.819321>,  <33.458939, 32.269978, 49.791580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692932, 32.224396, 49.819321>,  <34.082920, 32.148422, 49.865551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692932, 32.224396, 49.819321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128651, -0.057966, 0.989994,
		0.181331, 0.980085, 0.080950,
		-0.974971, 0.189931, -0.115578,
		33.400440, 32.281376, 49.784649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917706, 32.538643, 50.399036>,  <34.082920, 32.148422, 49.865551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917706, 32.538643, 50.399036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549225, 32.432793, 50.284939>,  <33.328136, 32.369282, 50.216480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549225, 32.432793, 50.284939>,  <33.917706, 32.538643, 50.399036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549225, 32.432793, 50.284939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281333, -0.053416, 0.958122,
		-0.268778, 0.962871, -0.025240,
		-0.921200, -0.264623, -0.285245,
		33.272865, 32.353405, 50.199364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508892, 32.962364, 50.777737>,  <33.917706, 32.538643, 50.399036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508892, 32.962364, 50.777737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348148, 32.612812, 50.668308>,  <33.251701, 32.403080, 50.602654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348148, 32.612812, 50.668308>,  <33.508892, 32.962364, 50.777737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348148, 32.612812, 50.668308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004983, -0.300833, 0.953664,
		-0.915688, 0.381875, 0.125247,
		-0.401858, -0.873883, -0.273567,
		33.227592, 32.350647, 50.586239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075420, 32.897259, 51.282852>,  <33.508892, 32.962364, 50.777737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075420, 32.897259, 51.282852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141254, 32.548584, 51.098213>,  <33.180756, 32.339378, 50.987431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141254, 32.548584, 51.098213>,  <33.075420, 32.897259, 51.282852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141254, 32.548584, 51.098213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141348, -0.483993, 0.863580,
		-0.976183, -0.076886, -0.202869,
		0.164584, -0.871688, -0.461598,
		33.190628, 32.287079, 50.959732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550571, 32.553078, 51.535347>,  <33.075420, 32.897259, 51.282852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550571, 32.553078, 51.535347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818722, 32.284813, 51.408348>,  <32.979614, 32.123852, 51.332150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818722, 32.284813, 51.408348>,  <32.550571, 32.553078, 51.535347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818722, 32.284813, 51.408348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189233, -0.568254, 0.800798,
		-0.717485, -0.476756, -0.507857,
		0.670377, -0.670664, -0.317496,
		33.019836, 32.083614, 51.313099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283531, 31.951101, 51.666142>,  <32.550571, 32.553078, 51.535347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283531, 31.951101, 51.666142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670170, 31.863091, 51.613564>,  <32.902153, 31.810284, 51.582016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670170, 31.863091, 51.613564>,  <32.283531, 31.951101, 51.666142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670170, 31.863091, 51.613564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011872, -0.473866, 0.880517,
		-0.256023, -0.852666, -0.455425,
		0.966597, -0.220026, -0.131444,
		32.960148, 31.797083, 51.574131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307762, 31.261618, 51.843258>,  <32.283531, 31.951101, 51.666142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307762, 31.261618, 51.843258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697472, 31.351326, 51.852146>,  <32.931297, 31.405151, 51.857479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697472, 31.351326, 51.852146>,  <32.307762, 31.261618, 51.843258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697472, 31.351326, 51.852146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164097, -0.773504, 0.612180,
		0.154481, -0.592784, -0.790407,
		0.974273, 0.224273, 0.022218,
		32.989754, 31.418608, 51.858810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853703, 30.594397, 51.777969>,  <32.307762, 31.261618, 51.843258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853703, 30.594397, 51.777969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057873, 30.880369, 51.969112>,  <33.180374, 31.051952, 52.083797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057873, 30.880369, 51.969112>,  <32.853703, 30.594397, 51.777969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057873, 30.880369, 51.969112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198764, -0.638733, 0.743312,
		0.836637, -0.284423, -0.468125,
		0.510422, 0.714930, 0.477855,
		33.210999, 31.094849, 52.112469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596691, 30.337967, 51.968662>,  <32.853703, 30.594397, 51.777969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596691, 30.337967, 51.968662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508293, 30.637005, 52.219185>,  <33.455254, 30.816427, 52.369499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508293, 30.637005, 52.219185>,  <33.596691, 30.337967, 51.968662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508293, 30.637005, 52.219185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325052, -0.549007, 0.770021,
		0.919512, 0.373754, -0.121680,
		-0.220995, 0.747596, 0.626308,
		33.441994, 30.861284, 52.407078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173649, 30.430048, 52.440510>,  <33.596691, 30.337967, 51.968662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173649, 30.430048, 52.440510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889259, 30.632532, 52.635757>,  <33.718624, 30.754023, 52.752907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889259, 30.632532, 52.635757>,  <34.173649, 30.430048, 52.440510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889259, 30.632532, 52.635757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315222, -0.391067, 0.864698,
		0.628609, 0.768646, 0.118470,
		-0.710976, 0.506212, 0.488122,
		33.675968, 30.784395, 52.782192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533306, 30.835691, 52.983753>,  <34.173649, 30.430048, 52.440510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533306, 30.835691, 52.983753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155510, 30.804245, 53.111351>,  <33.928833, 30.785378, 53.187912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155510, 30.804245, 53.111351>,  <34.533306, 30.835691, 52.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155510, 30.804245, 53.111351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324175, -0.380790, 0.865973,
		0.053389, 0.921313, 0.385138,
		-0.944489, -0.078618, 0.318997,
		33.872162, 30.780659, 53.207050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607628, 30.687592, 53.628014>,  <34.533306, 30.835691, 52.983753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607628, 30.687592, 53.628014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210651, 30.641670, 53.610699>,  <33.972466, 30.614117, 53.600311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210651, 30.641670, 53.610699>,  <34.607628, 30.687592, 53.628014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210651, 30.641670, 53.610699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004477, -0.318679, 0.947852,
		-0.122612, 0.940884, 0.315757,
		-0.992444, -0.114805, -0.043286,
		33.912918, 30.607229, 53.597713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289173, 31.075783, 54.205154>,  <34.607628, 30.687592, 53.628014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289173, 31.075783, 54.205154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052330, 30.775660, 54.087547>,  <33.910225, 30.595585, 54.016983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052330, 30.775660, 54.087547>,  <34.289173, 31.075783, 54.205154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052330, 30.775660, 54.087547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084539, -0.304998, 0.948593,
		-0.801412, 0.586525, 0.117161,
		-0.592108, -0.750309, -0.294014,
		33.874699, 30.550568, 53.999344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651825, 31.064970, 54.648754>,  <34.289173, 31.075783, 54.205154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651825, 31.064970, 54.648754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748440, 30.704578, 54.504589>,  <33.806408, 30.488342, 54.418091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748440, 30.704578, 54.504589>,  <33.651825, 31.064970, 54.648754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748440, 30.704578, 54.504589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266878, -0.295407, 0.917339,
		-0.932972, -0.317754, 0.169101,
		0.241534, -0.900981, -0.360408,
		33.820900, 30.434284, 54.396465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359287, 30.525892, 55.139191>,  <33.651825, 31.064970, 54.648754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359287, 30.525892, 55.139191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669609, 30.377287, 54.935192>,  <33.855804, 30.288124, 54.812794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669609, 30.377287, 54.935192>,  <33.359287, 30.525892, 55.139191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669609, 30.377287, 54.935192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382455, -0.365992, 0.848397,
		-0.501844, -0.853246, -0.141854,
		0.775810, -0.371511, -0.510000,
		33.902351, 30.265833, 54.782192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500751, 29.762583, 55.401081>,  <33.359287, 30.525892, 55.139191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500751, 29.762583, 55.401081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802986, 29.955265, 55.223522>,  <33.984325, 30.070875, 55.116985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802986, 29.955265, 55.223522>,  <33.500751, 29.762583, 55.401081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802986, 29.955265, 55.223522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568690, -0.146081, 0.809477,
		0.325085, -0.864071, -0.384319,
		0.755587, 0.481707, -0.443900,
		34.029663, 30.099777, 55.090351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133369, 29.316685, 55.306465>,  <33.500751, 29.762583, 55.401081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133369, 29.316685, 55.306465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182652, 29.709585, 55.363045>,  <34.212223, 29.945326, 55.396992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182652, 29.709585, 55.363045>,  <34.133369, 29.316685, 55.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182652, 29.709585, 55.363045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563759, -0.186578, 0.804590,
		0.816698, -0.019389, -0.576739,
		0.123207, 0.982249, 0.141447,
		34.219612, 30.004259, 55.405479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783344, 29.556408, 55.215176>,  <34.133369, 29.316685, 55.306465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783344, 29.556408, 55.215176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014740, 29.243374, 55.123165>,  <35.153576, 29.055553, 55.067959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014740, 29.243374, 55.123165>,  <34.783344, 29.556408, 55.215176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014740, 29.243374, 55.123165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447833, 0.069014, 0.891450,
		-0.681760, -0.618707, 0.390392,
		0.578489, -0.782585, -0.230026,
		35.188286, 29.008598, 55.054157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659252, 28.880363, 55.740196>,  <34.783344, 29.556408, 55.215176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659252, 28.880363, 55.740196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021221, 28.936745, 55.579575>,  <35.238403, 28.970573, 55.483200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021221, 28.936745, 55.579575>,  <34.659252, 28.880363, 55.740196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021221, 28.936745, 55.579575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354376, 0.272907, 0.894394,
		0.235651, -0.951659, 0.197011,
		0.904924, 0.140949, -0.401556,
		35.292698, 28.979031, 55.459106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181358, 28.655956, 56.131149>,  <34.659252, 28.880363, 55.740196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181358, 28.655956, 56.131149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370171, 28.943562, 55.927109>,  <35.483459, 29.116125, 55.804684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370171, 28.943562, 55.927109>,  <35.181358, 28.655956, 56.131149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370171, 28.943562, 55.927109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707758, 0.035903, 0.705542,
		0.525607, -0.694070, -0.491939,
		0.472034, 0.719012, -0.510104,
		35.511780, 29.159266, 55.774078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822189, 28.129999, 55.833324>,  <35.181358, 28.655956, 56.131149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822189, 28.129999, 55.833324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431858, 28.144457, 55.919540>,  <34.197659, 28.153131, 55.971268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431858, 28.144457, 55.919540>,  <34.822189, 28.129999, 55.833324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431858, 28.144457, 55.919540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191534, -0.616410, -0.763776,
		0.105252, -0.786595, 0.608432,
		-0.975827, 0.036146, 0.215538,
		34.139111, 28.155300, 55.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450378, 27.509243, 56.090744>,  <34.822189, 28.129999, 55.833324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450378, 27.509243, 56.090744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210186, 27.736345, 55.865509>,  <34.066071, 27.872606, 55.730366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210186, 27.736345, 55.865509>,  <34.450378, 27.509243, 56.090744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210186, 27.736345, 55.865509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006533, -0.700675, -0.713451,
		-0.799612, -0.432093, 0.417033,
		-0.600481, 0.567759, -0.563091,
		34.030041, 27.906673, 55.696583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408081, 27.128746, 55.526363>,  <34.450378, 27.509243, 56.090744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408081, 27.128746, 55.526363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162708, 27.422861, 55.411087>,  <34.015484, 27.599331, 55.341923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162708, 27.422861, 55.411087>,  <34.408081, 27.128746, 55.526363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162708, 27.422861, 55.411087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195106, -0.494697, -0.846881,
		-0.765269, -0.463275, 0.446922,
		-0.613430, 0.735289, -0.288188,
		33.978680, 27.643448, 55.324631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787365, 26.824804, 55.334438>,  <34.408081, 27.128746, 55.526363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787365, 26.824804, 55.334438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845844, 27.178198, 55.156414>,  <33.880932, 27.390234, 55.049599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845844, 27.178198, 55.156414>,  <33.787365, 26.824804, 55.334438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845844, 27.178198, 55.156414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074891, -0.438720, -0.895498,
		-0.986416, 0.164254, 0.002023,
		0.146202, 0.883485, -0.445062,
		33.889706, 27.443243, 55.022896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815739, 26.657757, 54.600788>,  <33.787365, 26.824804, 55.334438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815739, 26.657757, 54.600788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801678, 27.051390, 54.531105>,  <33.793240, 27.287569, 54.489296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801678, 27.051390, 54.531105>,  <33.815739, 26.657757, 54.600788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801678, 27.051390, 54.531105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109972, -0.169450, -0.979384,
		-0.993313, -0.053588, -0.102264,
		-0.035155, 0.984081, -0.174210,
		33.791130, 27.346615, 54.478844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290745, 26.686399, 54.021927>,  <33.815739, 26.657757, 54.600788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290745, 26.686399, 54.021927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543301, 26.995375, 54.049301>,  <33.694836, 27.180759, 54.065727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543301, 26.995375, 54.049301>,  <33.290745, 26.686399, 54.021927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543301, 26.995375, 54.049301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320420, -0.179505, -0.930112,
		-0.706171, 0.609192, -0.360843,
		0.631391, 0.772439, 0.068436,
		33.732719, 27.227106, 54.069832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280895, 27.012877, 53.455090>,  <33.290745, 26.686399, 54.021927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280895, 27.012877, 53.455090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624020, 27.195717, 53.549084>,  <33.829895, 27.305422, 53.605480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624020, 27.195717, 53.549084>,  <33.280895, 27.012877, 53.455090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624020, 27.195717, 53.549084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147162, 0.219622, -0.964422,
		-0.492446, 0.861873, 0.121126,
		0.857811, 0.457101, 0.234987,
		33.881363, 27.332848, 53.619579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275791, 27.632008, 53.024586>,  <33.280895, 27.012877, 53.455090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275791, 27.632008, 53.024586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657597, 27.575199, 53.129452>,  <33.886681, 27.541115, 53.192371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657597, 27.575199, 53.129452>,  <33.275791, 27.632008, 53.024586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657597, 27.575199, 53.129452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267556, 0.019934, -0.963336,
		0.131586, 0.989663, 0.057025,
		0.954515, -0.142019, 0.262167,
		33.943951, 27.532593, 53.208103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628372, 28.175711, 52.701309>,  <33.275791, 27.632008, 53.024586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628372, 28.175711, 52.701309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904762, 27.895334, 52.772003>,  <34.070595, 27.727108, 52.814419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904762, 27.895334, 52.772003>,  <33.628372, 28.175711, 52.701309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904762, 27.895334, 52.772003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458015, 0.235359, -0.857221,
		0.559264, 0.673267, 0.483668,
		0.690975, -0.700941, 0.176739,
		34.112053, 27.685053, 52.825024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421844, 28.487236, 52.660690>,  <33.628372, 28.175711, 52.701309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421844, 28.487236, 52.660690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437817, 28.093880, 52.589867>,  <34.447399, 27.857866, 52.547375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437817, 28.093880, 52.589867>,  <34.421844, 28.487236, 52.660690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437817, 28.093880, 52.589867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540323, 0.170303, -0.824044,
		0.840510, -0.062765, 0.538148,
		0.039927, -0.983391, -0.177055,
		34.449795, 27.798862, 52.536751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084877, 28.501701, 52.165245>,  <34.421844, 28.487236, 52.660690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084877, 28.501701, 52.165245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906738, 28.146328, 52.120789>,  <34.799854, 27.933104, 52.094112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906738, 28.146328, 52.120789>,  <35.084877, 28.501701, 52.165245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906738, 28.146328, 52.120789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324880, -0.044671, -0.944700,
		0.834337, -0.456829, 0.308528,
		-0.445348, -0.888432, -0.111144,
		34.773132, 27.879799, 52.087444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634159, 28.089512, 51.919827>,  <35.084877, 28.501701, 52.165245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634159, 28.089512, 51.919827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278412, 27.939430, 51.815327>,  <35.064964, 27.849380, 51.752628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278412, 27.939430, 51.815327>,  <35.634159, 28.089512, 51.919827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278412, 27.939430, 51.815327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309078, -0.072359, -0.948280,
		0.336897, -0.924113, 0.180322,
		-0.889366, -0.375206, -0.261245,
		35.011600, 27.826868, 51.736954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797501, 27.616922, 51.450737>,  <35.634159, 28.089512, 51.919827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797501, 27.616922, 51.450737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408165, 27.680256, 51.384361>,  <35.174564, 27.718256, 51.344536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408165, 27.680256, 51.384361>,  <35.797501, 27.616922, 51.450737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408165, 27.680256, 51.384361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150296, -0.106190, -0.982922,
		-0.173254, -0.981658, 0.079561,
		-0.973342, 0.158338, -0.165937,
		35.116161, 27.727757, 51.334579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680157, 27.096119, 50.882389>,  <35.797501, 27.616922, 51.450737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680157, 27.096119, 50.882389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386578, 27.367619, 50.892368>,  <35.210430, 27.530519, 50.898357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386578, 27.367619, 50.892368>,  <35.680157, 27.096119, 50.882389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386578, 27.367619, 50.892368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106296, 0.151066, -0.982792,
		-0.670840, -0.718663, -0.183023,
		-0.733945, 0.678751, 0.024950,
		35.166393, 27.571243, 50.899853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225471, 26.805620, 50.303024>,  <35.680157, 27.096119, 50.882389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225471, 26.805620, 50.303024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131870, 27.184969, 50.388657>,  <35.075710, 27.412579, 50.440037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131870, 27.184969, 50.388657>,  <35.225471, 26.805620, 50.303024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131870, 27.184969, 50.388657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141108, 0.184736, -0.972605,
		-0.961941, -0.257804, 0.090594,
		-0.234005, 0.948372, 0.214083,
		35.061668, 27.469481, 50.452881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611195, 26.996944, 49.974400>,  <35.225471, 26.805620, 50.303024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611195, 26.996944, 49.974400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834507, 27.326029, 50.017231>,  <34.968494, 27.523479, 50.042931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834507, 27.326029, 50.017231>,  <34.611195, 26.996944, 49.974400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834507, 27.326029, 50.017231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103177, 0.196914, -0.974976,
		-0.823208, 0.533267, 0.194819,
		0.558285, 0.822710, 0.107081,
		35.001991, 27.572842, 50.049355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515434, 27.318184, 49.421135>,  <34.611195, 26.996944, 49.974400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515434, 27.318184, 49.421135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802258, 27.567528, 49.545879>,  <34.974350, 27.717134, 49.620724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802258, 27.567528, 49.545879>,  <34.515434, 27.318184, 49.421135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802258, 27.567528, 49.545879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062137, 0.502805, -0.862164,
		-0.694241, 0.598841, 0.399273,
		0.717055, 0.623359, 0.311857,
		35.017376, 27.754536, 49.639435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236172, 28.053713, 49.426319>,  <34.515434, 27.318184, 49.421135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236172, 28.053713, 49.426319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635044, 28.074408, 49.404594>,  <34.874367, 28.086824, 49.391560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635044, 28.074408, 49.404594>,  <34.236172, 28.053713, 49.426319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635044, 28.074408, 49.404594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073398, 0.523893, -0.848616,
		-0.015455, 0.850211, 0.526215,
		0.997183, 0.051739, -0.054307,
		34.934200, 28.089930, 49.388302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292679, 28.676149, 49.271187>,  <34.236172, 28.053713, 49.426319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292679, 28.676149, 49.271187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631252, 28.510334, 49.137497>,  <34.834396, 28.410845, 49.057281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631252, 28.510334, 49.137497>,  <34.292679, 28.676149, 49.271187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631252, 28.510334, 49.137497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022515, 0.599243, -0.800250,
		0.532020, 0.684883, 0.497886,
		0.846433, -0.414539, -0.334229,
		34.885181, 28.385973, 49.037228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699623, 29.296591, 48.901150>,  <34.292679, 28.676149, 49.271187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699623, 29.296591, 48.901150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841606, 28.945522, 48.772343>,  <34.926796, 28.734880, 48.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841606, 28.945522, 48.772343>,  <34.699623, 29.296591, 48.901150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841606, 28.945522, 48.772343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308358, 0.435088, -0.845940,
		0.882565, 0.200973, 0.425074,
		0.354956, -0.877672, -0.322022,
		34.948093, 28.682220, 48.675735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233093, 29.458508, 48.590622>,  <34.699623, 29.296591, 48.901150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233093, 29.458508, 48.590622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142155, 29.099888, 48.438564>,  <35.087589, 28.884716, 48.347328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142155, 29.099888, 48.438564>,  <35.233093, 29.458508, 48.590622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142155, 29.099888, 48.438564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226992, 0.330822, -0.915987,
		0.946988, -0.294538, 0.128298,
		-0.227349, -0.896551, -0.380143,
		35.073952, 28.830923, 48.324520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803616, 29.171618, 48.140213>,  <35.233093, 29.458508, 48.590622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803616, 29.171618, 48.140213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462223, 29.005686, 48.014046>,  <35.257389, 28.906126, 47.938343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462223, 29.005686, 48.014046>,  <35.803616, 29.171618, 48.140213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462223, 29.005686, 48.014046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140827, 0.399153, -0.906004,
		0.501743, -0.817673, -0.282248,
		-0.853476, -0.414833, -0.315423,
		35.206181, 28.881237, 47.919418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078381, 28.903952, 47.501209>,  <35.803616, 29.171618, 48.140213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078381, 28.903952, 47.501209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683235, 28.856255, 47.461407>,  <35.446148, 28.827637, 47.437523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683235, 28.856255, 47.461407>,  <36.078381, 28.903952, 47.501209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683235, 28.856255, 47.461407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062677, 0.280139, -0.957911,
		0.142097, -0.952525, -0.269266,
		-0.987866, -0.119240, -0.099508,
		35.386875, 28.820482, 47.431553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908588, 28.536749, 46.853104>,  <36.078381, 28.903952, 47.501209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908588, 28.536749, 46.853104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569866, 28.731487, 46.938801>,  <35.366634, 28.848331, 46.990219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569866, 28.731487, 46.938801>,  <35.908588, 28.536749, 46.853104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569866, 28.731487, 46.938801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132299, 0.197342, -0.971367,
		-0.515186, -0.850903, -0.102701,
		-0.846806, 0.486847, 0.214241,
		35.315823, 28.877541, 47.003075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393284, 28.303690, 46.339592>,  <35.908588, 28.536749, 46.853104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393284, 28.303690, 46.339592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263889, 28.649111, 46.494324>,  <35.186253, 28.856363, 46.587162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263889, 28.649111, 46.494324>,  <35.393284, 28.303690, 46.339592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263889, 28.649111, 46.494324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207081, 0.334287, -0.919440,
		-0.923296, -0.377527, 0.070690,
		-0.323482, 0.863554, 0.386825,
		35.166843, 28.908176, 46.610371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850723, 28.422764, 46.002289>,  <35.393284, 28.303690, 46.339592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850723, 28.422764, 46.002289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942455, 28.786760, 46.140457>,  <34.997494, 29.005159, 46.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942455, 28.786760, 46.140457>,  <34.850723, 28.422764, 46.002289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942455, 28.786760, 46.140457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156439, 0.384730, -0.909676,
		-0.960694, 0.154580, 0.230589,
		0.229332, 0.909994, 0.345425,
		35.011253, 29.059759, 46.244083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271408, 28.741161, 45.786343>,  <34.850723, 28.422764, 46.002289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271408, 28.741161, 45.786343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567402, 29.000574, 45.857704>,  <34.744999, 29.156221, 45.900520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567402, 29.000574, 45.857704>,  <34.271408, 28.741161, 45.786343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567402, 29.000574, 45.857704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188926, 0.454957, -0.870242,
		-0.645542, 0.610264, 0.459187,
		0.739988, 0.648530, 0.178399,
		34.789398, 29.195133, 45.911224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903820, 29.279135, 45.635414>,  <34.271408, 28.741161, 45.786343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903820, 29.279135, 45.635414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286297, 29.393017, 45.608181>,  <34.515785, 29.461346, 45.591843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286297, 29.393017, 45.608181>,  <33.903820, 29.279135, 45.635414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286297, 29.393017, 45.608181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228614, 0.581011, -0.781128,
		-0.182834, 0.762475, 0.620647,
		0.956194, 0.284705, -0.068084,
		34.573154, 29.478428, 45.587757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906162, 29.936249, 45.548073>,  <33.903820, 29.279135, 45.635414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906162, 29.936249, 45.548073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271568, 29.864365, 45.402088>,  <34.490810, 29.821234, 45.314495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271568, 29.864365, 45.402088>,  <33.906162, 29.936249, 45.548073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271568, 29.864365, 45.402088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158458, 0.669097, -0.726085,
		0.374683, 0.721119, 0.582752,
		0.913512, -0.179710, -0.364966,
		34.545620, 29.810452, 45.292599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258160, 30.627615, 45.428505>,  <33.906162, 29.936249, 45.548073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258160, 30.627615, 45.428505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409756, 30.332609, 45.204922>,  <34.500713, 30.155605, 45.070770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409756, 30.332609, 45.204922>,  <34.258160, 30.627615, 45.428505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409756, 30.332609, 45.204922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122536, 0.558707, -0.820263,
		0.917252, 0.379364, 0.121372,
		0.378990, -0.737516, -0.558961,
		34.523453, 30.111355, 45.037235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514053, 31.004700, 44.983887>,  <34.258160, 30.627615, 45.428505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514053, 31.004700, 44.983887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541420, 30.658157, 44.785999>,  <34.557838, 30.450232, 44.667267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541420, 30.658157, 44.785999>,  <34.514053, 31.004700, 44.983887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541420, 30.658157, 44.785999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247834, 0.465580, -0.849596,
		0.966384, 0.180732, -0.182860,
		0.068414, -0.866355, -0.494721,
		34.561943, 30.398251, 44.637585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763538, 31.211069, 44.417507>,  <34.514053, 31.004700, 44.983887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763538, 31.211069, 44.417507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620663, 30.847271, 44.332439>,  <34.534935, 30.628992, 44.281399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620663, 30.847271, 44.332439>,  <34.763538, 31.211069, 44.417507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620663, 30.847271, 44.332439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272128, 0.319143, -0.907796,
		0.893510, -0.266387, -0.361495,
		-0.357194, -0.909498, -0.212666,
		34.513504, 30.574421, 44.268639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116821, 30.965500, 43.871418>,  <34.763538, 31.211069, 44.417507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116821, 30.965500, 43.871418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777878, 30.753113, 43.874607>,  <34.574512, 30.625681, 43.876518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777878, 30.753113, 43.874607>,  <35.116821, 30.965500, 43.871418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777878, 30.753113, 43.874607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127416, 0.188726, -0.973729,
		0.515513, -0.826110, -0.227572,
		-0.847355, -0.530967, 0.007969,
		34.523670, 30.593822, 43.876999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148273, 30.648685, 43.228565>,  <35.116821, 30.965500, 43.871418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148273, 30.648685, 43.228565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762165, 30.625917, 43.330547>,  <34.530499, 30.612257, 43.391739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762165, 30.625917, 43.330547>,  <35.148273, 30.648685, 43.228565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762165, 30.625917, 43.330547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259352, 0.325734, -0.909194,
		-0.031300, -0.943747, -0.329185,
		-0.965275, -0.056917, 0.254958,
		34.472584, 30.608843, 43.407036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795952, 30.239325, 42.705784>,  <35.148273, 30.648685, 43.228565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795952, 30.239325, 42.705784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512714, 30.465944, 42.874367>,  <34.342773, 30.601917, 42.975517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512714, 30.465944, 42.874367>,  <34.795952, 30.239325, 42.705784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512714, 30.465944, 42.874367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242446, 0.365513, -0.898677,
		-0.663195, -0.738525, -0.121458,
		-0.708090, 0.566551, 0.421459,
		34.300289, 30.635910, 43.000805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305096, 30.200598, 42.249947>,  <34.795952, 30.239325, 42.705784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305096, 30.200598, 42.249947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199604, 30.528946, 42.452576>,  <34.136307, 30.725954, 42.574154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199604, 30.528946, 42.452576>,  <34.305096, 30.200598, 42.249947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199604, 30.528946, 42.452576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290313, 0.433269, -0.853227,
		-0.919872, -0.372088, 0.124043,
		-0.263732, 0.820871, 0.506574,
		34.120483, 30.775208, 42.604549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633701, 30.365250, 42.099586>,  <34.305096, 30.200598, 42.249947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633701, 30.365250, 42.099586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750080, 30.719576, 42.244186>,  <33.819908, 30.932171, 42.330944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750080, 30.719576, 42.244186>,  <33.633701, 30.365250, 42.099586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750080, 30.719576, 42.244186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380974, 0.453864, -0.805523,
		-0.877614, 0.096647, 0.469524,
		0.290951, 0.885814, 0.361497,
		33.837364, 30.985321, 42.352634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021832, 30.842264, 41.934978>,  <33.633701, 30.365250, 42.099586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021832, 30.842264, 41.934978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381989, 31.013540, 41.965824>,  <33.598083, 31.116306, 41.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381989, 31.013540, 41.965824>,  <33.021832, 30.842264, 41.934978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381989, 31.013540, 41.965824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155841, 0.482891, -0.861702,
		-0.406211, 0.763852, 0.501521,
		0.900392, 0.428190, 0.077116,
		33.652107, 31.141998, 41.988960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931164, 31.394585, 41.514385>,  <33.021832, 30.842264, 41.934978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931164, 31.394585, 41.514385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327923, 31.410995, 41.562492>,  <33.565979, 31.420843, 41.591358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327923, 31.410995, 41.562492>,  <32.931164, 31.394585, 41.514385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327923, 31.410995, 41.562492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076651, 0.561712, -0.823775,
		-0.101355, 0.826315, 0.554013,
		0.991893, 0.041029, 0.120270,
		33.625492, 31.423304, 41.598572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128090, 32.073112, 41.535728>,  <32.931164, 31.394585, 41.514385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128090, 32.073112, 41.535728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453598, 31.868462, 41.425438>,  <33.648903, 31.745670, 41.359264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453598, 31.868462, 41.425438>,  <33.128090, 32.073112, 41.535728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453598, 31.868462, 41.425438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137128, 0.630034, -0.764365,
		0.564784, 0.584205, 0.582859,
		0.813766, -0.511627, -0.275722,
		33.697727, 31.714973, 41.342720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771137, 32.576691, 41.473118>,  <33.128090, 32.073112, 41.535728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771137, 32.576691, 41.473118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840248, 32.256027, 41.244213>,  <33.881714, 32.063629, 41.106869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840248, 32.256027, 41.244213>,  <33.771137, 32.576691, 41.473118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840248, 32.256027, 41.244213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122284, 0.593965, -0.795143,
		0.977340, 0.067405, 0.200655,
		0.172779, -0.801662, -0.572263,
		33.892082, 32.015530, 41.072533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232635, 32.818783, 41.051350>,  <33.771137, 32.576691, 41.473118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232635, 32.818783, 41.051350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116043, 32.477337, 40.878662>,  <34.046089, 32.272469, 40.775047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116043, 32.477337, 40.878662>,  <34.232635, 32.818783, 41.051350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116043, 32.477337, 40.878662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056598, 0.435139, -0.898582,
		0.954901, -0.286354, -0.078522,
		-0.291480, -0.853613, -0.431722,
		34.028599, 32.221252, 40.749146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672909, 32.694412, 40.457302>,  <34.232635, 32.818783, 41.051350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672909, 32.694412, 40.457302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381981, 32.445637, 40.341232>,  <34.207424, 32.296371, 40.271591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381981, 32.445637, 40.341232>,  <34.672909, 32.694412, 40.457302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381981, 32.445637, 40.341232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036008, 0.387649, -0.921104,
		0.685355, -0.680384, -0.259549,
		-0.727318, -0.621937, -0.290176,
		34.163784, 32.259056, 40.254181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984539, 32.419235, 39.809681>,  <34.672909, 32.694412, 40.457302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984539, 32.419235, 39.809681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589172, 32.360485, 39.794361>,  <34.351952, 32.325237, 39.785168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589172, 32.360485, 39.794361>,  <34.984539, 32.419235, 39.809681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589172, 32.360485, 39.794361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028724, 0.428775, -0.902955,
		0.149041, -0.891393, -0.428026,
		-0.988414, -0.146872, -0.038300,
		34.292648, 32.316425, 39.782871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718842, 32.345764, 39.845802>,  <34.984539, 32.419235, 39.809681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718842, 32.345764, 39.845802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083008, 32.481216, 39.750755>,  <36.301510, 32.562489, 39.693726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083008, 32.481216, 39.750755>,  <35.718842, 32.345764, 39.845802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083008, 32.481216, 39.750755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405621, -0.617870, 0.673578,
		0.081277, -0.709623, -0.699878,
		0.910420, 0.338632, -0.237619,
		36.356133, 32.582806, 39.679470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091679, 31.830481, 39.993877>,  <35.718842, 32.345764, 39.845802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091679, 31.830481, 39.993877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361774, 32.125519, 39.994560>,  <36.523830, 32.302544, 39.994968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361774, 32.125519, 39.994560>,  <36.091679, 31.830481, 39.993877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361774, 32.125519, 39.994560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499877, -0.459315, 0.734271,
		0.542380, -0.494955, -0.678855,
		0.675239, 0.737598, 0.001707,
		36.564346, 32.346798, 39.995071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922871, 31.551991, 39.886948>,  <36.091679, 31.830481, 39.993877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922871, 31.551991, 39.886948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909306, 31.902191, 40.079758>,  <36.901165, 32.112312, 40.195442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909306, 31.902191, 40.079758>,  <36.922871, 31.551991, 39.886948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909306, 31.902191, 40.079758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427716, -0.423185, 0.798732,
		0.903277, 0.233255, -0.360116,
		-0.033912, 0.875504, 0.482020,
		36.899132, 32.164841, 40.224365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541042, 31.560423, 40.219223>,  <36.922871, 31.551991, 39.886948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541042, 31.560423, 40.219223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338722, 31.843622, 40.416363>,  <37.217331, 32.013542, 40.534649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338722, 31.843622, 40.416363>,  <37.541042, 31.560423, 40.219223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338722, 31.843622, 40.416363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336044, -0.364481, 0.868463,
		0.794506, 0.604889, -0.053564,
		-0.505801, 0.707999, 0.492851,
		37.186981, 32.056023, 40.564217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977386, 31.844456, 40.696873>,  <37.541042, 31.560423, 40.219223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977386, 31.844456, 40.696873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620964, 31.943462, 40.849060>,  <37.407112, 32.002865, 40.940372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620964, 31.943462, 40.849060>,  <37.977386, 31.844456, 40.696873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620964, 31.943462, 40.849060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235871, -0.463653, 0.854044,
		0.387795, 0.850742, 0.354759,
		-0.891055, 0.247516, 0.380468,
		37.353649, 32.017715, 40.963200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261906, 31.807772, 41.394604>,  <37.977386, 31.844456, 40.696873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261906, 31.807772, 41.394604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865314, 31.837599, 41.437347>,  <37.627361, 31.855495, 41.462994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865314, 31.837599, 41.437347>,  <38.261906, 31.807772, 41.394604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865314, 31.837599, 41.437347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083154, -0.269307, 0.959458,
		0.100323, 0.960163, 0.260810,
		-0.991474, 0.074568, 0.106860,
		37.567871, 31.859970, 41.469406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114017, 32.201862, 42.005497>,  <38.261906, 31.807772, 41.394604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114017, 32.201862, 42.005497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774124, 31.998184, 41.950844>,  <37.570187, 31.875977, 41.918053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774124, 31.998184, 41.950844>,  <38.114017, 32.201862, 42.005497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774124, 31.998184, 41.950844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050988, -0.337328, 0.940005,
		-0.524739, 0.791789, 0.312602,
		-0.849735, -0.509196, -0.136637,
		37.519203, 31.845425, 41.909851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716114, 32.303860, 42.685692>,  <38.114017, 32.201862, 42.005497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716114, 32.303860, 42.685692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568325, 31.976236, 42.510132>,  <37.479652, 31.779661, 42.404797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568325, 31.976236, 42.510132>,  <37.716114, 32.303860, 42.685692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568325, 31.976236, 42.510132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008873, -0.469185, 0.883056,
		-0.929199, 0.330160, 0.166084,
		-0.369473, -0.819060, -0.438895,
		37.457481, 31.730518, 42.378464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042831, 32.242828, 42.964214>,  <37.716114, 32.303860, 42.685692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042831, 32.242828, 42.964214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196262, 31.901270, 42.823513>,  <37.288322, 31.696335, 42.739090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196262, 31.901270, 42.823513>,  <37.042831, 32.242828, 42.964214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196262, 31.901270, 42.823513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015393, -0.386749, 0.922057,
		-0.923379, -0.348268, -0.161493,
		0.383580, -0.853894, -0.351755,
		37.311337, 31.645102, 42.717987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838207, 31.788803, 43.504128>,  <37.042831, 32.242828, 42.964214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838207, 31.788803, 43.504128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076130, 31.561205, 43.276989>,  <37.218884, 31.424646, 43.140705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076130, 31.561205, 43.276989>,  <36.838207, 31.788803, 43.504128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076130, 31.561205, 43.276989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047067, -0.680525, 0.731212,
		-0.802489, -0.461657, -0.378000,
		0.594808, -0.568998, -0.567842,
		37.254574, 31.390505, 43.106636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479050, 31.186153, 43.475212>,  <36.838207, 31.788803, 43.504128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479050, 31.186153, 43.475212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866936, 31.119045, 43.404217>,  <37.099667, 31.078781, 43.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866936, 31.119045, 43.404217>,  <36.479050, 31.186153, 43.475212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866936, 31.119045, 43.404217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051652, -0.569396, 0.820439,
		-0.238704, -0.804762, -0.543488,
		0.969718, -0.167770, -0.177484,
		37.157852, 31.068714, 43.350971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730469, 30.456329, 43.562321>,  <36.479050, 31.186153, 43.475212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730469, 30.456329, 43.562321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072155, 30.658243, 43.612137>,  <37.277164, 30.779392, 43.642029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072155, 30.658243, 43.612137>,  <36.730469, 30.456329, 43.562321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072155, 30.658243, 43.612137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174437, -0.503908, 0.845960,
		0.489786, -0.700906, -0.518498,
		0.854214, 0.504785, 0.124543,
		37.328419, 30.809679, 43.649498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395752, 30.034492, 43.507000>,  <36.730469, 30.456329, 43.562321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395752, 30.034492, 43.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475475, 30.349512, 43.740253>,  <37.523308, 30.538525, 43.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475475, 30.349512, 43.740253>,  <37.395752, 30.034492, 43.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475475, 30.349512, 43.740253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118474, -0.610073, 0.783438,
		0.972749, -0.087058, -0.214895,
		0.199306, 0.787548, 0.583134,
		37.535267, 30.585777, 43.915192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991863, 29.833382, 43.875877>,  <37.395752, 30.034492, 43.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991863, 29.833382, 43.875877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855595, 30.143919, 44.088005>,  <37.773834, 30.330242, 44.215282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855595, 30.143919, 44.088005>,  <37.991863, 29.833382, 43.875877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855595, 30.143919, 44.088005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279402, -0.454976, 0.845536,
		0.897707, 0.436221, -0.061915,
		-0.340670, 0.776343, 0.530316,
		37.753395, 30.376822, 44.247101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446770, 29.975313, 44.380997>,  <37.991863, 29.833382, 43.875877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446770, 29.975313, 44.380997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116360, 30.149979, 44.523552>,  <37.918114, 30.254778, 44.609085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116360, 30.149979, 44.523552>,  <38.446770, 29.975313, 44.380997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116360, 30.149979, 44.523552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235229, -0.307524, 0.922007,
		0.512204, 0.845431, 0.151306,
		-0.826023, 0.436664, 0.356385,
		37.868553, 30.280977, 44.630466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718307, 30.218660, 45.072704>,  <38.446770, 29.975313, 44.380997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718307, 30.218660, 45.072704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319466, 30.196611, 45.093678>,  <38.080162, 30.183382, 45.106262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319466, 30.196611, 45.093678>,  <38.718307, 30.218660, 45.072704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319466, 30.196611, 45.093678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066500, -0.296748, 0.952638,
		-0.036955, 0.953364, 0.299553,
		-0.997102, -0.055125, 0.052432,
		38.020336, 30.180075, 45.109406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620338, 30.347321, 45.765148>,  <38.718307, 30.218660, 45.072704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620338, 30.347321, 45.765148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276062, 30.174171, 45.657936>,  <38.069496, 30.070282, 45.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276062, 30.174171, 45.657936>,  <38.620338, 30.347321, 45.765148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276062, 30.174171, 45.657936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090665, -0.387714, 0.917310,
		-0.500997, 0.813817, 0.294454,
		-0.860687, -0.432873, -0.268028,
		38.017857, 30.044310, 45.577526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181129, 30.482361, 46.365349>,  <38.620338, 30.347321, 45.765148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181129, 30.482361, 46.365349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984226, 30.196396, 46.166721>,  <37.866085, 30.024817, 46.047546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984226, 30.196396, 46.166721>,  <38.181129, 30.482361, 46.365349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984226, 30.196396, 46.166721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126288, -0.505782, 0.853367,
		-0.861237, 0.482791, 0.158693,
		-0.492262, -0.714911, -0.496569,
		37.836548, 29.981922, 46.017750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475616, 30.337812, 46.699772>,  <38.181129, 30.482361, 46.365349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475616, 30.337812, 46.699772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597530, 30.007992, 46.509102>,  <37.670681, 29.810099, 46.394699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597530, 30.007992, 46.509102>,  <37.475616, 30.337812, 46.699772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597530, 30.007992, 46.509102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214318, -0.547027, 0.809215,
		-0.927993, -0.144480, -0.343444,
		0.304789, -0.824553, -0.476672,
		37.688969, 29.760626, 46.366100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009415, 29.876904, 46.804466>,  <37.475616, 30.337812, 46.699772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009415, 29.876904, 46.804466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310474, 29.637848, 46.693943>,  <37.491112, 29.494415, 46.627628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310474, 29.637848, 46.693943>,  <37.009415, 29.876904, 46.804466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310474, 29.637848, 46.693943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232197, -0.633616, 0.737981,
		-0.616117, -0.491284, -0.615661,
		0.752651, -0.597637, -0.276307,
		37.536270, 29.458555, 46.611050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675041, 29.294956, 46.877567>,  <37.009415, 29.876904, 46.804466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675041, 29.294956, 46.877567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063789, 29.200886, 46.882614>,  <37.297039, 29.144444, 46.885643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063789, 29.200886, 46.882614>,  <36.675041, 29.294956, 46.877567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063789, 29.200886, 46.882614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161944, -0.628442, 0.760812,
		-0.170996, -0.741454, -0.648850,
		0.971871, -0.235174, 0.012613,
		37.355350, 29.130333, 46.886398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763783, 28.624981, 46.832737>,  <36.675041, 29.294956, 46.877567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763783, 28.624981, 46.832737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080975, 28.766956, 47.030807>,  <37.271290, 28.852142, 47.149651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080975, 28.766956, 47.030807>,  <36.763783, 28.624981, 46.832737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080975, 28.766956, 47.030807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200504, -0.615455, 0.762242,
		0.575308, -0.703728, -0.416878,
		0.792981, 0.354938, 0.495177,
		37.318871, 28.873438, 47.179359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010715, 28.027941, 47.159210>,  <36.763783, 28.624981, 46.832737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010715, 28.027941, 47.159210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199078, 28.324144, 47.350998>,  <37.312096, 28.501867, 47.466072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199078, 28.324144, 47.350998>,  <37.010715, 28.027941, 47.159210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199078, 28.324144, 47.350998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114607, -0.487548, 0.865542,
		0.874707, -0.462540, -0.144722,
		0.470906, 0.740509, 0.479471,
		37.340351, 28.546297, 47.494839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505989, 27.700748, 47.620129>,  <37.010715, 28.027941, 47.159210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505989, 27.700748, 47.620129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485668, 28.070955, 47.770241>,  <37.473476, 28.293079, 47.860306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485668, 28.070955, 47.770241>,  <37.505989, 27.700748, 47.620129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485668, 28.070955, 47.770241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144928, -0.364953, 0.919677,
		0.988137, 0.101110, -0.115593,
		-0.050802, 0.925519, 0.375277,
		37.470428, 28.348612, 47.882824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986046, 27.643192, 48.248264>,  <37.505989, 27.700748, 47.620129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986046, 27.643192, 48.248264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730576, 27.949163, 48.281689>,  <37.577293, 28.132746, 48.301743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730576, 27.949163, 48.281689>,  <37.986046, 27.643192, 48.248264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730576, 27.949163, 48.281689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089361, -0.181593, 0.979305,
		0.764273, 0.617987, 0.184333,
		-0.638671, 0.764929, 0.083562,
		37.538975, 28.178642, 48.306759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248806, 28.091711, 48.714779>,  <37.986046, 27.643192, 48.248264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248806, 28.091711, 48.714779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852448, 28.145447, 48.711433>,  <37.614632, 28.177689, 48.709427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852448, 28.145447, 48.711433>,  <38.248806, 28.091711, 48.714779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852448, 28.145447, 48.711433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034559, -0.193839, 0.980425,
		0.130089, 0.971792, 0.196717,
		-0.990900, 0.134340, -0.008368,
		37.555176, 28.185749, 48.708923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224369, 28.460564, 49.307480>,  <38.248806, 28.091711, 48.714779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224369, 28.460564, 49.307480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868893, 28.292070, 49.235054>,  <37.655605, 28.190975, 49.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868893, 28.292070, 49.235054>,  <38.224369, 28.460564, 49.307480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868893, 28.292070, 49.235054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215328, 0.034788, 0.975922,
		-0.404792, 0.906285, -0.121619,
		-0.888694, -0.421234, -0.181067,
		37.602283, 28.165701, 49.180733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735004, 28.962212, 49.408161>,  <38.224369, 28.460564, 49.307480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735004, 28.962212, 49.408161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599693, 28.594416, 49.488266>,  <37.518505, 28.373739, 49.536327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599693, 28.594416, 49.488266>,  <37.735004, 28.962212, 49.408161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599693, 28.594416, 49.488266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022785, 0.220750, 0.975065,
		-0.940769, 0.325284, -0.095626,
		-0.338282, -0.919489, 0.200263,
		37.498207, 28.318569, 49.548344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407055, 29.032724, 50.043522>,  <37.735004, 28.962212, 49.408161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407055, 29.032724, 50.043522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421600, 28.632990, 50.043720>,  <37.430328, 28.393148, 50.043839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421600, 28.632990, 50.043720>,  <37.407055, 29.032724, 50.043522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421600, 28.632990, 50.043720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108075, -0.003436, 0.994137,
		-0.993477, -0.036209, -0.108128,
		0.036368, -0.999338, 0.000500,
		37.432510, 28.333189, 50.043869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920734, 28.817305, 50.425411>,  <37.407055, 29.032724, 50.043522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920734, 28.817305, 50.425411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150990, 28.490528, 50.439522>,  <37.289143, 28.294462, 50.447987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150990, 28.490528, 50.439522>,  <36.920734, 28.817305, 50.425411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150990, 28.490528, 50.439522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052363, 0.006221, 0.998609,
		-0.816026, -0.576685, -0.039197,
		0.575638, -0.816943, 0.035274,
		37.323681, 28.245445, 50.450104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590427, 28.186169, 50.813736>,  <36.920734, 28.817305, 50.425411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590427, 28.186169, 50.813736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988567, 28.149860, 50.826664>,  <37.227451, 28.128075, 50.834419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988567, 28.149860, 50.826664>,  <36.590427, 28.186169, 50.813736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988567, 28.149860, 50.826664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040297, -0.087522, 0.995347,
		-0.087522, -0.992018, -0.090773,
		-0.995347, 0.090773, -0.032316,
		37.287170, 28.122629, 50.836357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761707, 27.517574, 51.114971>,  <36.590427, 28.186169, 50.813736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761707, 27.517574, 51.114971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090961, 27.737703, 51.170963>,  <37.288513, 27.869781, 51.204559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090961, 27.737703, 51.170963>,  <36.761707, 27.517574, 51.114971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090961, 27.737703, 51.170963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090443, -0.116310, 0.989086,
		0.560598, -0.826811, -0.045966,
		0.823134, 0.550323, 0.139982,
		37.337902, 27.902800, 51.212959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946156, 27.210304, 51.688164>,  <36.761707, 27.517574, 51.114971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946156, 27.210304, 51.688164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206753, 27.511606, 51.652016>,  <37.363110, 27.692389, 51.630329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206753, 27.511606, 51.652016>,  <36.946156, 27.210304, 51.688164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206753, 27.511606, 51.652016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245522, -0.096633, 0.964562,
		0.717830, -0.650590, -0.247897,
		0.651490, 0.753256, -0.090368,
		37.402199, 27.737583, 51.624905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604496, 26.959314, 52.002274>,  <36.946156, 27.210304, 51.688164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604496, 26.959314, 52.002274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620697, 27.358900, 51.994015>,  <37.630417, 27.598652, 51.989059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620697, 27.358900, 51.994015>,  <37.604496, 26.959314, 52.002274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620697, 27.358900, 51.994015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148557, 0.014417, 0.988799,
		0.988074, -0.043120, -0.147819,
		0.040506, 0.998966, -0.020651,
		37.632851, 27.658590, 51.987820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210629, 27.090033, 52.379448>,  <37.604496, 26.959314, 52.002274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210629, 27.090033, 52.379448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981255, 27.417360, 52.395077>,  <37.843632, 27.613756, 52.404453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981255, 27.417360, 52.395077>,  <38.210629, 27.090033, 52.379448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981255, 27.417360, 52.395077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114596, 0.032891, 0.992868,
		0.811196, 0.573824, -0.112637,
		-0.573436, 0.818318, 0.039076,
		37.809223, 27.662855, 52.406799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549435, 27.571764, 52.839897>,  <38.210629, 27.090033, 52.379448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549435, 27.571764, 52.839897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178719, 27.721996, 52.840569>,  <37.956287, 27.812136, 52.840973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178719, 27.721996, 52.840569>,  <38.549435, 27.571764, 52.839897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178719, 27.721996, 52.840569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033274, 0.077644, 0.996426,
		0.374106, 0.923532, -0.084457,
		-0.926789, 0.375579, 0.001682,
		37.900681, 27.834671, 52.841072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594330, 28.108253, 53.209038>,  <38.549435, 27.571764, 52.839897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594330, 28.108253, 53.209038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202625, 28.028688, 53.224434>,  <37.967602, 27.980949, 53.233673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202625, 28.028688, 53.224434>,  <38.594330, 28.108253, 53.209038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202625, 28.028688, 53.224434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025115, 0.069356, 0.997276,
		-0.201042, 0.977560, -0.062922,
		-0.979261, -0.198914, 0.038495,
		37.908848, 27.969013, 53.235981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235382, 28.643236, 53.554867>,  <38.594330, 28.108253, 53.209038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235382, 28.643236, 53.554867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023804, 28.304913, 53.582642>,  <37.896858, 28.101919, 53.599308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023804, 28.304913, 53.582642>,  <38.235382, 28.643236, 53.554867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023804, 28.304913, 53.582642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031392, 0.062262, 0.997566,
		-0.848074, 0.529839, -0.006382,
		-0.528947, -0.845810, 0.069436,
		37.865120, 28.051170, 53.603474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563652, 28.944330, 53.361462>,  <38.235382, 28.643236, 53.554867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563652, 28.944330, 53.361462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748936, 29.160751, 53.642231>,  <37.860107, 29.290604, 53.810692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748936, 29.160751, 53.642231>,  <37.563652, 28.944330, 53.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748936, 29.160751, 53.642231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306115, 0.645596, -0.699642,
		-0.831704, 0.538950, 0.133421,
		0.463208, 0.541053, 0.701926,
		37.887897, 29.323067, 53.852810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288399, 29.631033, 53.256180>,  <37.563652, 28.944330, 53.361462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288399, 29.631033, 53.256180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636536, 29.644787, 53.452675>,  <37.845417, 29.653038, 53.570572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636536, 29.644787, 53.452675>,  <37.288399, 29.631033, 53.256180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636536, 29.644787, 53.452675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282244, 0.782617, -0.554841,
		-0.403529, 0.621553, 0.671443,
		0.870346, 0.034384, 0.491238,
		37.897640, 29.655102, 53.600048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396313, 30.299704, 53.395355>,  <37.288399, 29.631033, 53.256180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396313, 30.299704, 53.395355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751076, 30.116581, 53.370651>,  <37.963932, 30.006708, 53.355831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751076, 30.116581, 53.370651>,  <37.396313, 30.299704, 53.395355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751076, 30.116581, 53.370651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338295, 0.734701, -0.588024,
		0.314573, 0.500629, 0.806483,
		0.886905, -0.457805, -0.061757,
		38.017147, 29.979240, 53.352123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876270, 30.838753, 53.314369>,  <37.396313, 30.299704, 53.395355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876270, 30.838753, 53.314369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082687, 30.515251, 53.201504>,  <38.206539, 30.321150, 53.133785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082687, 30.515251, 53.201504>,  <37.876270, 30.838753, 53.314369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082687, 30.515251, 53.201504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600222, 0.576436, -0.554486,
		0.611090, 0.116782, 0.782899,
		0.516045, -0.808754, -0.282160,
		38.237499, 30.272625, 53.116856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526722, 31.126587, 53.354736>,  <37.876270, 30.838753, 53.314369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526722, 31.126587, 53.354736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525604, 30.802700, 53.120010>,  <38.524933, 30.608368, 52.979176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525604, 30.802700, 53.120010>,  <38.526722, 31.126587, 53.354736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525604, 30.802700, 53.120010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545647, 0.490527, -0.679450,
		0.838010, -0.322092, 0.440449,
		-0.002793, -0.809716, -0.586815,
		38.524765, 30.559786, 52.943966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260902, 31.133692, 52.937248>,  <38.526722, 31.126587, 53.354736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260902, 31.133692, 52.937248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041763, 30.879200, 52.719967>,  <38.910278, 30.726505, 52.589596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041763, 30.879200, 52.719967>,  <39.260902, 31.133692, 52.937248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041763, 30.879200, 52.719967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377926, 0.391067, -0.839189,
		0.746346, -0.665042, 0.026200,
		-0.547850, -0.636228, -0.543208,
		38.877407, 30.688332, 52.557003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719028, 30.847025, 52.307987>,  <39.260902, 31.133692, 52.937248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719028, 30.847025, 52.307987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335018, 30.794825, 52.208927>,  <39.104614, 30.763504, 52.149490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335018, 30.794825, 52.208927>,  <39.719028, 30.847025, 52.307987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335018, 30.794825, 52.208927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174306, 0.413555, -0.893638,
		0.219034, -0.901078, -0.374275,
		-0.960021, -0.130499, -0.247646,
		39.047012, 30.755674, 52.134632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799717, 30.769899, 51.638065>,  <39.719028, 30.847025, 52.307987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799717, 30.769899, 51.638065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400230, 30.789982, 51.635143>,  <39.160538, 30.802031, 51.633389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400230, 30.789982, 51.635143>,  <39.799717, 30.769899, 51.638065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400230, 30.789982, 51.635143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014745, 0.149395, -0.988668,
		-0.048546, -0.987502, -0.149943,
		-0.998712, 0.050207, -0.007308,
		39.100616, 30.805044, 51.632950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565872, 30.417717, 51.008240>,  <39.799717, 30.769899, 51.638065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565872, 30.417717, 51.008240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251884, 30.639805, 51.118187>,  <39.063492, 30.773058, 51.184155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251884, 30.639805, 51.118187>,  <39.565872, 30.417717, 51.008240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251884, 30.639805, 51.118187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268881, 0.094396, -0.958537,
		-0.558145, -0.826329, 0.075190,
		-0.784970, 0.555220, 0.274871,
		39.016392, 30.806370, 51.200649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877079, 30.148718, 50.781239>,  <39.565872, 30.417717, 51.008240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877079, 30.148718, 50.781239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854099, 30.544895, 50.831398>,  <38.840309, 30.782600, 50.861492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854099, 30.544895, 50.831398>,  <38.877079, 30.148718, 50.781239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854099, 30.544895, 50.831398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254716, 0.106906, -0.961088,
		-0.965308, -0.087157, 0.246140,
		-0.057451, 0.990442, 0.125397,
		38.836864, 30.842028, 50.869019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381413, 30.388510, 50.352692>,  <38.877079, 30.148718, 50.781239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381413, 30.388510, 50.352692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559616, 30.738178, 50.429993>,  <38.666538, 30.947979, 50.476372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559616, 30.738178, 50.429993>,  <38.381413, 30.388510, 50.352692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559616, 30.738178, 50.429993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270716, 0.337288, -0.901637,
		-0.853367, 0.349371, 0.386917,
		0.445508, 0.874172, 0.193250,
		38.693268, 31.000429, 50.487968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913094, 30.805285, 50.262794>,  <38.381413, 30.388510, 50.352692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913094, 30.805285, 50.262794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249634, 31.017447, 50.221218>,  <38.451557, 31.144743, 50.196270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249634, 31.017447, 50.221218>,  <37.913094, 30.805285, 50.262794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249634, 31.017447, 50.221218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365179, 0.416058, -0.832790,
		-0.398469, 0.738625, 0.543743,
		0.841348, 0.530404, -0.103944,
		38.502037, 31.176567, 50.190033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761204, 31.500998, 50.142509>,  <37.913094, 30.805285, 50.262794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761204, 31.500998, 50.142509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118629, 31.441549, 49.973061>,  <38.333084, 31.405880, 49.871391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118629, 31.441549, 49.973061>,  <37.761204, 31.500998, 50.142509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118629, 31.441549, 49.973061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281443, 0.549712, -0.786516,
		0.349762, 0.822028, 0.449374,
		0.893564, -0.148619, -0.423622,
		38.386700, 31.396963, 49.845974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006775, 32.156998, 49.838490>,  <37.761204, 31.500998, 50.142509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006775, 32.156998, 49.838490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183861, 31.862585, 49.633648>,  <38.290112, 31.685936, 49.510742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183861, 31.862585, 49.633648>,  <38.006775, 32.156998, 49.838490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183861, 31.862585, 49.633648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056123, 0.547258, -0.835080,
		0.894902, 0.398447, 0.200972,
		0.442719, -0.736036, -0.512105,
		38.316677, 31.641775, 49.480015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425804, 32.493561, 49.392090>,  <38.006775, 32.156998, 49.838490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425804, 32.493561, 49.392090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389435, 32.128578, 49.232517>,  <38.367615, 31.909588, 49.136772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389435, 32.128578, 49.232517>,  <38.425804, 32.493561, 49.392090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389435, 32.128578, 49.232517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066041, 0.394188, -0.916654,
		0.993666, -0.109691, 0.024420,
		-0.090922, -0.912460, -0.398936,
		38.362160, 31.854839, 49.112835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849667, 32.585915, 48.818935>,  <38.425804, 32.493561, 49.392090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849667, 32.585915, 48.818935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644684, 32.251240, 48.741646>,  <38.521694, 32.050434, 48.695271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644684, 32.251240, 48.741646>,  <38.849667, 32.585915, 48.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644684, 32.251240, 48.741646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052255, 0.254989, -0.965531,
		0.857122, -0.484695, -0.174392,
		-0.512456, -0.836691, -0.193229,
		38.490948, 32.000233, 48.683678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297764, 32.289665, 48.226547>,  <38.849667, 32.585915, 48.818935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297764, 32.289665, 48.226547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944530, 32.102444, 48.213318>,  <38.732590, 31.990110, 48.205379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944530, 32.102444, 48.213318>,  <39.297764, 32.289665, 48.226547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944530, 32.102444, 48.213318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042053, -0.008749, -0.999077,
		0.467331, -0.883657, 0.027409,
		-0.883082, -0.468052, -0.033071,
		38.679607, 31.962029, 48.203396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391621, 31.704262, 47.835552>,  <39.297764, 32.289665, 48.226547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391621, 31.704262, 47.835552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010014, 31.821682, 47.811306>,  <38.781048, 31.892134, 47.796757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010014, 31.821682, 47.811306>,  <39.391621, 31.704262, 47.835552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010014, 31.821682, 47.811306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082267, 0.061958, -0.994682,
		-0.288236, -0.953933, -0.083259,
		-0.954019, 0.293553, -0.060619,
		38.723808, 31.909748, 47.793121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107189, 31.383747, 47.212826>,  <39.391621, 31.704262, 47.835552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107189, 31.383747, 47.212826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833847, 31.666700, 47.285080>,  <38.669842, 31.836473, 47.328430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833847, 31.666700, 47.285080>,  <39.107189, 31.383747, 47.212826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833847, 31.666700, 47.285080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017830, 0.231171, -0.972750,
		-0.729865, -0.667957, -0.145360,
		-0.683358, 0.707384, 0.180633,
		38.628841, 31.878916, 47.339272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508224, 31.258890, 46.789211>,  <39.107189, 31.383747, 47.212826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508224, 31.258890, 46.789211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509014, 31.646822, 46.886723>,  <38.509487, 31.879581, 46.945229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509014, 31.646822, 46.886723>,  <38.508224, 31.258890, 46.789211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509014, 31.646822, 46.886723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106188, 0.242601, -0.964297,
		-0.994344, -0.023984, 0.103463,
		0.001972, 0.969830, 0.243776,
		38.509605, 31.937771, 46.959854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065865, 31.438704, 46.329224>,  <38.508224, 31.258890, 46.789211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065865, 31.438704, 46.329224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240475, 31.776548, 46.453205>,  <38.345242, 31.979256, 46.527596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240475, 31.776548, 46.453205>,  <38.065865, 31.438704, 46.329224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240475, 31.776548, 46.453205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032907, 0.329292, -0.943655,
		-0.899089, 0.422132, 0.115951,
		0.436528, 0.844613, 0.309954,
		38.371433, 32.029934, 46.546192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752346, 31.940977, 45.973007>,  <38.065865, 31.438704, 46.329224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752346, 31.940977, 45.973007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066677, 32.136776, 46.124199>,  <38.255276, 32.254257, 46.214912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066677, 32.136776, 46.124199>,  <37.752346, 31.940977, 45.973007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066677, 32.136776, 46.124199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267093, 0.282616, -0.921298,
		-0.557796, 0.824936, 0.091346,
		0.785828, 0.489499, 0.377976,
		38.302425, 32.283627, 46.237591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790665, 32.695484, 45.682484>,  <37.752346, 31.940977, 45.973007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790665, 32.695484, 45.682484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162888, 32.580227, 45.772842>,  <38.386223, 32.511070, 45.827057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162888, 32.580227, 45.772842>,  <37.790665, 32.695484, 45.682484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162888, 32.580227, 45.772842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325224, 0.367111, -0.871469,
		0.168184, 0.884421, 0.435332,
		0.930561, -0.288148, 0.225893,
		38.442055, 32.493782, 45.840611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101154, 33.075043, 45.252556>,  <37.790665, 32.695484, 45.682484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101154, 33.075043, 45.252556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377083, 32.810135, 45.369549>,  <38.542641, 32.651188, 45.439743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377083, 32.810135, 45.369549>,  <38.101154, 33.075043, 45.252556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377083, 32.810135, 45.369549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481802, 0.118398, -0.868245,
		0.540385, 0.739850, 0.400757,
		0.689820, -0.662271, 0.292481,
		38.584030, 32.611454, 45.457294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826530, 33.421993, 45.092728>,  <38.101154, 33.075043, 45.252556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826530, 33.421993, 45.092728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889729, 33.027027, 45.089981>,  <38.927647, 32.790047, 45.088333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889729, 33.027027, 45.089981>,  <38.826530, 33.421993, 45.092728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889729, 33.027027, 45.089981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528329, 0.090409, -0.844212,
		0.834209, 0.129756, 0.535965,
		0.157998, -0.987415, -0.006866,
		38.937126, 32.730801, 45.087921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630383, 33.302719, 44.888638>,  <38.826530, 33.421993, 45.092728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630383, 33.302719, 44.888638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445293, 32.953690, 44.826031>,  <39.334240, 32.744270, 44.788467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445293, 32.953690, 44.826031>,  <39.630383, 33.302719, 44.888638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445293, 32.953690, 44.826031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359941, -0.023574, -0.932677,
		0.810144, -0.487906, 0.324985,
		-0.462720, -0.872578, -0.156519,
		39.306477, 32.691917, 44.779076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075150, 32.865208, 44.679184>,  <39.630383, 33.302719, 44.888638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075150, 32.865208, 44.679184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729111, 32.743690, 44.519527>,  <39.521488, 32.670780, 44.423733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729111, 32.743690, 44.519527>,  <40.075150, 32.865208, 44.679184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729111, 32.743690, 44.519527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448841, -0.113588, -0.886363,
		0.223935, -0.945942, 0.234620,
		-0.865098, -0.303795, -0.399141,
		39.469582, 32.652554, 44.399784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259007, 32.408226, 44.179386>,  <40.075150, 32.865208, 44.679184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259007, 32.408226, 44.179386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880375, 32.481735, 44.073399>,  <39.653194, 32.525841, 44.009808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880375, 32.481735, 44.073399>,  <40.259007, 32.408226, 44.179386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880375, 32.481735, 44.073399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263507, -0.032763, -0.964101,
		-0.185861, -0.982422, -0.017413,
		-0.946583, 0.183777, -0.264965,
		39.596401, 32.536869, 43.993908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148273, 31.979877, 43.670940>,  <40.259007, 32.408226, 44.179386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148273, 31.979877, 43.670940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897060, 32.287045, 43.620541>,  <39.746334, 32.471344, 43.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897060, 32.287045, 43.620541>,  <40.148273, 31.979877, 43.670940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897060, 32.287045, 43.620541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265834, 0.059531, -0.962179,
		-0.731374, -0.637775, -0.241527,
		-0.628032, 0.767919, -0.126003,
		39.708652, 32.517422, 43.582741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773933, 31.918011, 43.050247>,  <40.148273, 31.979877, 43.670940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773933, 31.918011, 43.050247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744091, 32.312668, 43.108173>,  <39.726185, 32.549461, 43.142929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744091, 32.312668, 43.108173>,  <39.773933, 31.918011, 43.050247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744091, 32.312668, 43.108173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283477, 0.160215, -0.945501,
		-0.956072, -0.029488, -0.291644,
		-0.074607, 0.986642, 0.144818,
		39.721710, 32.608662, 43.151619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377468, 31.990953, 42.485714>,  <39.773933, 31.918011, 43.050247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377468, 31.990953, 42.485714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530582, 32.341274, 42.603321>,  <39.622452, 32.551468, 42.673885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530582, 32.341274, 42.603321>,  <39.377468, 31.990953, 42.485714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530582, 32.341274, 42.603321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167729, 0.247085, -0.954367,
		-0.908484, 0.414632, -0.052317,
		0.382784, 0.875802, 0.294019,
		39.645416, 32.604015, 42.691528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077724, 32.514446, 42.085049>,  <39.377468, 31.990953, 42.485714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077724, 32.514446, 42.085049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408142, 32.688869, 42.227882>,  <39.606392, 32.793522, 42.313583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408142, 32.688869, 42.227882>,  <39.077724, 32.514446, 42.085049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408142, 32.688869, 42.227882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266276, 0.256463, -0.929152,
		-0.496741, 0.862602, 0.095738,
		0.826042, 0.436055, 0.357086,
		39.655956, 32.819687, 42.335007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057461, 33.240627, 41.843624>,  <39.077724, 32.514446, 42.085049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057461, 33.240627, 41.843624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443768, 33.191730, 41.935150>,  <39.675552, 33.162392, 41.990067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443768, 33.191730, 41.935150>,  <39.057461, 33.240627, 41.843624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443768, 33.191730, 41.935150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256452, 0.316779, -0.913172,
		0.039145, 0.940589, 0.337283,
		0.965764, -0.122242, 0.228815,
		39.733498, 33.155056, 42.003796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415905, 33.889835, 41.742550>,  <39.057461, 33.240627, 41.843624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415905, 33.889835, 41.742550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710907, 33.621101, 41.715046>,  <39.887909, 33.459862, 41.698544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710907, 33.621101, 41.715046>,  <39.415905, 33.889835, 41.742550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710907, 33.621101, 41.715046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397256, 0.513903, -0.760323,
		0.546149, 0.533424, 0.645895,
		0.737502, -0.671835, -0.068762,
		39.932159, 33.419552, 41.694416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949051, 34.253944, 41.569740>,  <39.415905, 33.889835, 41.742550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949051, 34.253944, 41.569740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085678, 33.890709, 41.472824>,  <40.167656, 33.672768, 41.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085678, 33.890709, 41.472824>,  <39.949051, 34.253944, 41.569740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085678, 33.890709, 41.472824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456378, 0.385618, -0.801884,
		0.821614, 0.163321, 0.546147,
		0.341569, -0.908088, -0.242293,
		40.188148, 33.618282, 41.400135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582672, 34.426479, 41.288300>,  <39.949051, 34.253944, 41.569740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582672, 34.426479, 41.288300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502674, 34.053234, 41.168762>,  <40.454674, 33.829288, 41.097038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502674, 34.053234, 41.168762>,  <40.582672, 34.426479, 41.288300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502674, 34.053234, 41.168762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431891, 0.189816, -0.881725,
		0.879471, -0.305412, 0.365039,
		-0.199999, -0.933109, -0.298843,
		40.442673, 33.773300, 41.079109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136856, 34.184330, 41.170551>,  <40.582672, 34.426479, 41.288300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136856, 34.184330, 41.170551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887054, 33.958187, 40.955006>,  <40.737175, 33.822502, 40.825680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887054, 33.958187, 40.955006>,  <41.136856, 34.184330, 41.170551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887054, 33.958187, 40.955006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377172, 0.385854, -0.841937,
		0.683916, -0.729034, -0.027730,
		-0.624500, -0.565355, -0.538863,
		40.699703, 33.788582, 40.793346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526176, 33.899353, 40.589500>,  <41.136856, 34.184330, 41.170551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526176, 33.899353, 40.589500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148712, 33.865452, 40.461555>,  <40.922234, 33.845112, 40.384789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148712, 33.865452, 40.461555>,  <41.526176, 33.899353, 40.589500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148712, 33.865452, 40.461555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291819, 0.242578, -0.925201,
		0.156003, -0.966423, -0.204181,
		-0.943666, -0.084750, -0.319863,
		40.865612, 33.840027, 40.365597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469593, 33.418777, 39.930466>,  <41.526176, 33.899353, 40.589500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469593, 33.418777, 39.930466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143311, 33.650116, 39.935028>,  <40.947540, 33.788921, 39.937763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143311, 33.650116, 39.935028>,  <41.469593, 33.418777, 39.930466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143311, 33.650116, 39.935028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165216, 0.251825, -0.953566,
		-0.554366, -0.775949, -0.300969,
		-0.815709, 0.578350, 0.011404,
		40.898598, 33.823620, 39.938450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127880, 33.149025, 39.301834>,  <41.469593, 33.418777, 39.930466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127880, 33.149025, 39.301834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008823, 33.510693, 39.424404>,  <40.937389, 33.727692, 39.497944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008823, 33.510693, 39.424404>,  <41.127880, 33.149025, 39.301834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008823, 33.510693, 39.424404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234841, 0.380450, -0.894487,
		-0.925342, -0.194278, -0.325573,
		-0.297643, 0.904164, 0.306423,
		40.919529, 33.781940, 39.516331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495815, 33.478580, 38.973618>,  <41.127880, 33.149025, 39.301834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495815, 33.478580, 38.973618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774986, 33.737484, 39.096218>,  <40.942490, 33.892826, 39.169781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774986, 33.737484, 39.096218>,  <40.495815, 33.478580, 38.973618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774986, 33.737484, 39.096218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004081, 0.431569, -0.902071,
		-0.716156, 0.628330, 0.303846,
		0.697929, 0.647263, 0.306506,
		40.984364, 33.931664, 39.188171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280464, 34.114117, 38.632687>,  <40.495815, 33.478580, 38.973618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280464, 34.114117, 38.632687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674213, 34.142544, 38.697132>,  <40.910461, 34.159599, 38.735802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674213, 34.142544, 38.697132>,  <40.280464, 34.114117, 38.632687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674213, 34.142544, 38.697132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114178, 0.438968, -0.891219,
		-0.134065, 0.895688, 0.423993,
		0.984373, 0.071071, 0.161118,
		40.969524, 34.163864, 38.745468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554512, 34.807487, 38.246250>,  <40.280464, 34.114117, 38.632687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554512, 34.807487, 38.246250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836266, 34.540718, 38.343460>,  <41.005318, 34.380657, 38.401787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836266, 34.540718, 38.343460>,  <40.554512, 34.807487, 38.246250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836266, 34.540718, 38.343460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275017, -0.059213, -0.959614,
		0.654376, 0.742773, 0.141705,
		0.704385, -0.666919, 0.243023,
		41.047581, 34.340641, 38.416367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582859, 34.265789, 37.878086>,  <40.554512, 34.807487, 38.246250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582859, 34.265789, 37.878086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399246, 34.285107, 37.523243>,  <40.289078, 34.296700, 37.310337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399246, 34.285107, 37.523243>,  <40.582859, 34.265789, 37.878086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399246, 34.285107, 37.523243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520434, 0.823876, -0.224445,
		0.720024, -0.564708, -0.403325,
		-0.459036, 0.048298, -0.887104,
		40.261536, 34.299595, 37.257111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166294, 34.168533, 37.243656>,  <40.582859, 34.265789, 37.878086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166294, 34.168533, 37.243656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845280, 34.388039, 37.150021>,  <40.652672, 34.519741, 37.093842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845280, 34.388039, 37.150021>,  <41.166294, 34.168533, 37.243656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845280, 34.388039, 37.150021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587366, 0.657947, -0.471283,
		-0.104608, -0.515714, -0.850351,
		-0.802533, 0.548767, -0.234086,
		40.604519, 34.552670, 37.079796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126682, 34.233471, 36.464954>,  <41.166294, 34.168533, 37.243656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126682, 34.233471, 36.464954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981689, 34.543709, 36.671665>,  <40.894695, 34.729851, 36.795692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981689, 34.543709, 36.671665>,  <41.126682, 34.233471, 36.464954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981689, 34.543709, 36.671665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631290, 0.612236, -0.476068,
		-0.685624, 0.153669, -0.711551,
		-0.362481, 0.775599, 0.516773,
		40.872944, 34.776390, 36.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970097, 34.276814, 36.472713>,  <41.126682, 34.233471, 36.464954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970097, 34.276814, 36.472713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289879, 34.042625, 36.418911>,  <42.481747, 33.902111, 36.386631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289879, 34.042625, 36.418911>,  <41.970097, 34.276814, 36.472713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289879, 34.042625, 36.418911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370665, 0.304571, 0.877407,
		-0.472732, -0.751305, 0.460506,
		0.799457, -0.585472, -0.134502,
		42.529716, 33.866985, 36.378559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072231, 33.693943, 37.067772>,  <41.970097, 34.276814, 36.472713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072231, 33.693943, 37.067772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412731, 33.819366, 36.899464>,  <42.617031, 33.894623, 36.798477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412731, 33.819366, 36.899464>,  <42.072231, 33.693943, 37.067772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412731, 33.819366, 36.899464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353911, 0.248977, 0.901531,
		0.387450, -0.916345, 0.100969,
		0.851252, 0.313564, -0.420770,
		42.668106, 33.913437, 36.773232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548260, 33.642075, 37.658253>,  <42.072231, 33.693943, 37.067772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548260, 33.642075, 37.658253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769470, 33.828533, 37.382030>,  <42.902195, 33.940411, 37.216297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769470, 33.828533, 37.382030>,  <42.548260, 33.642075, 37.658253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769470, 33.828533, 37.382030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503469, 0.473421, 0.722767,
		0.663843, -0.747381, 0.027120,
		0.553021, 0.466149, -0.690560,
		42.935375, 33.968376, 37.174862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227543, 33.746716, 37.951298>,  <42.548260, 33.642075, 37.658253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227543, 33.746716, 37.951298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290192, 34.005253, 37.652580>,  <43.327782, 34.160378, 37.473351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290192, 34.005253, 37.652580>,  <43.227543, 33.746716, 37.951298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290192, 34.005253, 37.652580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475344, 0.613467, 0.630639,
		0.865748, -0.453755, -0.211157,
		0.156618, 0.646346, -0.746798,
		43.337177, 34.199158, 37.428539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990570, 33.862270, 37.912796>,  <43.227543, 33.746716, 37.951298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990570, 33.862270, 37.912796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754486, 34.164574, 37.799320>,  <43.612835, 34.345955, 37.731236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754486, 34.164574, 37.799320>,  <43.990570, 33.862270, 37.912796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754486, 34.164574, 37.799320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413587, 0.584900, 0.697737,
		0.693252, 0.294481, -0.657786,
		-0.590210, 0.755759, -0.283690,
		43.577423, 34.391300, 37.714214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474682, 34.396168, 37.908470>,  <43.990570, 33.862270, 37.912796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474682, 34.396168, 37.908470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116982, 34.572994, 37.936436>,  <43.902363, 34.679092, 37.953213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116982, 34.572994, 37.936436>,  <44.474682, 34.396168, 37.908470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116982, 34.572994, 37.936436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391862, 0.697878, 0.599508,
		0.216237, 0.563506, -0.797309,
		-0.894252, 0.442071, 0.069910,
		43.848705, 34.705616, 37.957409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627972, 35.140499, 37.879837>,  <44.474682, 34.396168, 37.908470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627972, 35.140499, 37.879837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258297, 35.116295, 38.030682>,  <44.036491, 35.101772, 38.121189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258297, 35.116295, 38.030682>,  <44.627972, 35.140499, 37.879837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258297, 35.116295, 38.030682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255373, 0.636292, 0.727954,
		-0.284003, 0.769071, -0.572600,
		-0.924190, -0.060515, 0.377110,
		43.981041, 35.098141, 38.143814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412270, 35.863384, 37.946571>,  <44.627972, 35.140499, 37.879837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412270, 35.863384, 37.946571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182083, 35.663300, 38.205379>,  <44.043972, 35.543251, 38.360664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182083, 35.663300, 38.205379>,  <44.412270, 35.863384, 37.946571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182083, 35.663300, 38.205379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115666, 0.733410, 0.669874,
		-0.809605, 0.460328, -0.364196,
		-0.575466, -0.500209, 0.647016,
		44.009441, 35.513237, 38.399483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863659, 36.369541, 38.237907>,  <44.412270, 35.863384, 37.946571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863659, 36.369541, 38.237907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899029, 36.072937, 38.503944>,  <43.920250, 35.894974, 38.663567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899029, 36.072937, 38.503944>,  <43.863659, 36.369541, 38.237907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899029, 36.072937, 38.503944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305381, 0.655731, 0.690478,
		-0.948116, 0.142050, 0.284425,
		0.088424, -0.741511, 0.665089,
		43.925556, 35.850483, 38.703472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522655, 36.548332, 38.908947>,  <43.863659, 36.369541, 38.237907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522655, 36.548332, 38.908947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772659, 36.249146, 38.998314>,  <43.922661, 36.069633, 39.051933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772659, 36.249146, 38.998314>,  <43.522655, 36.548332, 38.908947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772659, 36.249146, 38.998314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143767, 0.391602, 0.908834,
		-0.767268, -0.535905, 0.352286,
		0.625005, -0.747966, 0.223418,
		43.960159, 36.024757, 39.065338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434361, 36.569138, 39.661137>,  <43.522655, 36.548332, 38.908947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434361, 36.569138, 39.661137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753357, 36.331333, 39.620018>,  <43.944756, 36.188648, 39.595348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753357, 36.331333, 39.620018>,  <43.434361, 36.569138, 39.661137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753357, 36.331333, 39.620018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266562, 0.194346, 0.944020,
		-0.541256, -0.780245, 0.313463,
		0.797488, -0.594514, -0.102793,
		43.992603, 36.152981, 39.589180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440735, 36.114655, 40.292938>,  <43.434361, 36.569138, 39.661137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440735, 36.114655, 40.292938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813896, 36.121422, 40.149048>,  <44.037792, 36.125481, 40.062714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813896, 36.121422, 40.149048>,  <43.440735, 36.114655, 40.292938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813896, 36.121422, 40.149048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356509, 0.097733, 0.929166,
		0.050873, -0.995069, 0.085146,
		0.932906, 0.016914, -0.359723,
		44.093769, 36.126495, 40.041130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771965, 35.595196, 40.691444>,  <43.440735, 36.114655, 40.292938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771965, 35.595196, 40.691444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062923, 35.836105, 40.559895>,  <44.237499, 35.980652, 40.480965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062923, 35.836105, 40.559895>,  <43.771965, 35.595196, 40.691444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062923, 35.836105, 40.559895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313172, 0.135076, 0.940041,
		0.610584, -0.786780, -0.090360,
		0.727400, 0.602272, -0.328873,
		44.281143, 36.016788, 40.461231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318714, 35.463821, 41.107647>,  <43.771965, 35.595196, 40.691444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318714, 35.463821, 41.107647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386635, 35.832722, 40.968727>,  <44.427387, 36.054062, 40.885376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386635, 35.832722, 40.968727>,  <44.318714, 35.463821, 41.107647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386635, 35.832722, 40.968727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352468, 0.272270, 0.895341,
		0.920289, -0.274446, -0.278831,
		0.169806, 0.922252, -0.347301,
		44.437576, 36.109398, 40.864536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017929, 35.572491, 41.299267>,  <44.318714, 35.463821, 41.107647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017929, 35.572491, 41.299267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857388, 35.930347, 41.220745>,  <44.761063, 36.145061, 41.173634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857388, 35.930347, 41.220745>,  <45.017929, 35.572491, 41.299267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857388, 35.930347, 41.220745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298798, 0.330485, 0.895265,
		0.865814, 0.300664, -0.399958,
		-0.401354, 0.894640, -0.196301,
		44.736980, 36.198738, 41.161854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537273, 36.027145, 41.587776>,  <45.017929, 35.572491, 41.299267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537273, 36.027145, 41.587776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217823, 36.263020, 41.539654>,  <45.026154, 36.404545, 41.510780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217823, 36.263020, 41.539654>,  <45.537273, 36.027145, 41.587776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217823, 36.263020, 41.539654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234712, 0.489243, 0.839971,
		0.554174, 0.642585, -0.529127,
		-0.798625, 0.589683, -0.120303,
		44.978237, 36.439926, 41.503563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777958, 36.775047, 41.759464>,  <45.537273, 36.027145, 41.587776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777958, 36.775047, 41.759464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381676, 36.759624, 41.811634>,  <45.143906, 36.750370, 41.842934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381676, 36.759624, 41.811634>,  <45.777958, 36.775047, 41.759464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381676, 36.759624, 41.811634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066974, 0.696316, 0.714604,
		-0.118366, 0.716699, -0.687264,
		-0.990709, -0.038556, 0.130420,
		45.084461, 36.748058, 41.850761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596214, 37.440712, 41.923668>,  <45.777958, 36.775047, 41.759464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596214, 37.440712, 41.923668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295612, 37.228275, 42.080219>,  <45.115250, 37.100811, 42.174149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295612, 37.228275, 42.080219>,  <45.596214, 37.440712, 41.923668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295612, 37.228275, 42.080219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052975, 0.542750, 0.838222,
		-0.657597, 0.650661, -0.379744,
		-0.751505, -0.531096, 0.391380,
		45.070160, 37.068947, 42.197632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259777, 37.958126, 42.334236>,  <45.596214, 37.440712, 41.923668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259777, 37.958126, 42.334236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095024, 37.615669, 42.459053>,  <44.996174, 37.410194, 42.533943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095024, 37.615669, 42.459053>,  <45.259777, 37.958126, 42.334236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095024, 37.615669, 42.459053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040776, 0.324780, 0.944910,
		-0.910326, 0.401911, -0.098860,
		-0.411878, -0.856146, 0.312044,
		44.971462, 37.358826, 42.552666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879177, 38.160110, 42.814133>,  <45.259777, 37.958126, 42.334236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879177, 38.160110, 42.814133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951118, 37.772129, 42.879677>,  <44.994282, 37.539341, 42.919003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951118, 37.772129, 42.879677>,  <44.879177, 38.160110, 42.814133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951118, 37.772129, 42.879677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276750, 0.209739, 0.937773,
		-0.943961, -0.123315, 0.306156,
		0.179855, -0.969950, 0.163858,
		45.005074, 37.481144, 42.928833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544437, 37.996281, 43.396492>,  <44.879177, 38.160110, 42.814133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544437, 37.996281, 43.396492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827713, 37.714859, 43.372875>,  <44.997677, 37.546005, 43.358707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827713, 37.714859, 43.372875>,  <44.544437, 37.996281, 43.396492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827713, 37.714859, 43.372875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337420, 0.263815, 0.903631,
		-0.620178, -0.659859, 0.424224,
		0.708186, -0.703553, -0.059038,
		45.040169, 37.503792, 43.355164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635677, 37.911354, 44.007965>,  <44.544437, 37.996281, 43.396492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635677, 37.911354, 44.007965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929131, 37.692757, 43.846409>,  <45.105202, 37.561600, 43.749474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929131, 37.692757, 43.846409>,  <44.635677, 37.911354, 44.007965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929131, 37.692757, 43.846409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571981, 0.175698, 0.801229,
		-0.366903, -0.818826, 0.441482,
		0.733634, -0.546493, -0.403889,
		45.149220, 37.528809, 43.725243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858444, 37.363426, 44.489819>,  <44.635677, 37.911354, 44.007965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858444, 37.363426, 44.489819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169437, 37.519966, 44.292896>,  <45.356033, 37.613892, 44.174744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169437, 37.519966, 44.292896>,  <44.858444, 37.363426, 44.489819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169437, 37.519966, 44.292896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288650, 0.473426, 0.832195,
		0.558756, -0.789119, 0.255114,
		0.777478, 0.391355, -0.492309,
		45.402679, 37.637371, 44.145203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464985, 37.159386, 44.900421>,  <44.858444, 37.363426, 44.489819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464985, 37.159386, 44.900421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498447, 37.486736, 44.672997>,  <45.518524, 37.683147, 44.536541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498447, 37.486736, 44.672997>,  <45.464985, 37.159386, 44.900421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498447, 37.486736, 44.672997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480092, 0.466877, 0.742656,
		0.873220, -0.335090, -0.353838,
		0.083657, 0.818377, -0.568561,
		45.523544, 37.732250, 44.502430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228664, 37.358337, 44.707951>,  <45.464985, 37.159386, 44.900421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228664, 37.358337, 44.707951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967461, 37.656242, 44.762947>,  <45.810738, 37.834988, 44.795944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967461, 37.656242, 44.762947>,  <46.228664, 37.358337, 44.707951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967461, 37.656242, 44.762947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645763, 0.452695, 0.614863,
		0.395689, 0.490297, -0.776556,
		-0.653008, 0.744766, 0.137489,
		45.771557, 37.879673, 44.804195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534119, 37.898956, 44.329674>,  <46.228664, 37.358337, 44.707951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534119, 37.898956, 44.329674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321655, 37.982185, 44.658203>,  <46.194180, 38.032124, 44.855320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321655, 37.982185, 44.658203>,  <46.534119, 37.898956, 44.329674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321655, 37.982185, 44.658203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825736, 0.344311, 0.446778,
		-0.189829, 0.915508, -0.354697,
		-0.531155, 0.208074, 0.821328,
		46.162308, 38.044609, 44.904602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761158, 38.174004, 43.679966>,  <46.534119, 37.898956, 44.329674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761158, 38.174004, 43.679966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077530, 37.970669, 43.543724>,  <47.267353, 37.848667, 43.461979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077530, 37.970669, 43.543724>,  <46.761158, 38.174004, 43.679966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.077530, 37.970669, 43.543724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145067, 0.384996, -0.911446,
		0.594458, 0.770304, 0.230763,
		0.790933, -0.508340, -0.340609,
		47.314812, 37.818169, 43.441540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.280354, 38.639305, 43.482769>,  <46.761158, 38.174004, 43.679966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.280354, 38.639305, 43.482769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234531, 38.300335, 43.275410>,  <47.207039, 38.096951, 43.150993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234531, 38.300335, 43.275410>,  <47.280354, 38.639305, 43.482769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234531, 38.300335, 43.275410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382747, 0.519199, -0.764157,
		0.916724, 0.110880, -0.383828,
		-0.114553, -0.847430, -0.518401,
		47.200165, 38.046104, 43.119888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.678963, 38.643578, 42.829559>,  <47.280354, 38.639305, 43.482769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.678963, 38.643578, 42.829559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338711, 38.434093, 42.811024>,  <47.134560, 38.308403, 42.799904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338711, 38.434093, 42.811024>,  <47.678963, 38.643578, 42.829559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338711, 38.434093, 42.811024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204179, 0.410272, -0.888813,
		0.484495, -0.746592, -0.455922,
		-0.850632, -0.523715, -0.046337,
		47.083519, 38.276978, 42.797123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575211, 38.551380, 42.115490>,  <47.678963, 38.643578, 42.829559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575211, 38.551380, 42.115490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228027, 38.466782, 42.295231>,  <47.019718, 38.416023, 42.403076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228027, 38.466782, 42.295231>,  <47.575211, 38.551380, 42.115490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228027, 38.466782, 42.295231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491509, 0.495566, -0.716124,
		-0.071226, -0.842427, -0.534083,
		-0.867955, -0.211500, 0.449357,
		46.967640, 38.403332, 42.430038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994663, 38.990650, 42.426136>,  <47.575211, 38.551380, 42.115490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994663, 38.990650, 42.426136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350060, 39.149246, 42.333729>,  <47.563297, 39.244404, 42.278282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350060, 39.149246, 42.333729>,  <46.994663, 38.990650, 42.426136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350060, 39.149246, 42.333729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373839, 0.917368, 0.136678,
		0.266124, -0.035073, 0.963301,
		0.888494, 0.396493, -0.231021,
		47.616608, 39.268192, 42.264423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028698, 39.734314, 42.179211>,  <46.994663, 38.990650, 42.426136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028698, 39.734314, 42.179211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840500, 39.766682, 41.827736>,  <46.727581, 39.786102, 41.616852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840500, 39.766682, 41.827736>,  <47.028698, 39.734314, 42.179211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840500, 39.766682, 41.827736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739216, -0.579927, 0.342410,
		-0.481863, 0.810639, 0.332675,
		-0.470498, 0.080924, -0.878682,
		46.699352, 39.790958, 41.564133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012783, 39.182262, 41.613560>,  <47.028698, 39.734314, 42.179211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012783, 39.182262, 41.613560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616001, 39.145973, 41.578224>,  <46.377934, 39.124199, 41.557022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616001, 39.145973, 41.578224>,  <47.012783, 39.182262, 41.613560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.616001, 39.145973, 41.578224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121922, -0.495840, -0.859813,
		0.034201, -0.863662, 0.502910,
		-0.991950, -0.090722, -0.088341,
		46.318417, 39.118755, 41.551723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874741, 38.466084, 41.516109>,  <47.012783, 39.182262, 41.613560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874741, 38.466084, 41.516109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.557938, 38.656174, 41.362808>,  <46.367855, 38.770229, 41.270828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.557938, 38.656174, 41.362808>,  <46.874741, 38.466084, 41.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557938, 38.656174, 41.362808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113120, -0.502649, -0.857057,
		-0.599939, -0.722149, 0.344344,
		-0.792008, 0.475230, -0.383249,
		46.320335, 38.798744, 41.247833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533218, 37.899494, 41.199841>,  <46.874741, 38.466084, 41.516109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533218, 37.899494, 41.199841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396492, 38.232349, 41.025158>,  <46.314457, 38.432060, 40.920349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396492, 38.232349, 41.025158>,  <46.533218, 37.899494, 41.199841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396492, 38.232349, 41.025158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035346, -0.475754, -0.878868,
		-0.939102, -0.284976, 0.192033,
		-0.341817, 0.832134, -0.436708,
		46.293945, 38.481991, 40.894146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913414, 37.779411, 40.823921>,  <46.533218, 37.899494, 41.199841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913414, 37.779411, 40.823921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067402, 38.095295, 40.632858>,  <46.159794, 38.284824, 40.518219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067402, 38.095295, 40.632858>,  <45.913414, 37.779411, 40.823921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067402, 38.095295, 40.632858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027666, -0.527188, -0.849298,
		-0.922514, 0.313740, -0.224800,
		0.384970, 0.789709, -0.477659,
		46.182892, 38.332207, 40.489559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708740, 37.661663, 40.101212>,  <45.913414, 37.779411, 40.823921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708740, 37.661663, 40.101212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947212, 37.980400, 40.062008>,  <46.090294, 38.171642, 40.038486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947212, 37.980400, 40.062008>,  <45.708740, 37.661663, 40.101212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947212, 37.980400, 40.062008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226102, -0.283779, -0.931852,
		-0.770354, 0.533393, -0.349352,
		0.596181, 0.796845, -0.098009,
		46.126068, 38.219452, 40.032604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340424, 38.084621, 39.556988>,  <45.708740, 37.661663, 40.101212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340424, 38.084621, 39.556988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726536, 38.188843, 39.564491>,  <45.958202, 38.251377, 39.568993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726536, 38.188843, 39.564491>,  <45.340424, 38.084621, 39.556988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726536, 38.188843, 39.564491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114575, -0.357742, -0.926765,
		-0.234764, 0.896734, -0.375173,
		0.965276, 0.260557, 0.018758,
		46.016117, 38.267010, 39.570118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454967, 38.405849, 38.922462>,  <45.340424, 38.084621, 39.556988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454967, 38.405849, 38.922462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810822, 38.302399, 39.073013>,  <46.024334, 38.240326, 39.163345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810822, 38.302399, 39.073013>,  <45.454967, 38.405849, 38.922462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.810822, 38.302399, 39.073013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314880, -0.249536, -0.915741,
		0.330758, 0.933189, -0.140559,
		0.889635, -0.258629, 0.376379,
		46.077713, 38.224812, 39.185928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919060, 38.711178, 38.498901>,  <45.454967, 38.405849, 38.922462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919060, 38.711178, 38.498901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116455, 38.408161, 38.669827>,  <46.234894, 38.226353, 38.772381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116455, 38.408161, 38.669827>,  <45.919060, 38.711178, 38.498901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116455, 38.408161, 38.669827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349088, -0.277482, -0.895065,
		0.796621, 0.590878, 0.127513,
		0.493491, -0.757541, 0.427316,
		46.264503, 38.180901, 38.798019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436337, 38.695499, 38.063156>,  <45.919060, 38.711178, 38.498901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436337, 38.695499, 38.063156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440266, 38.336948, 38.240425>,  <46.442623, 38.121819, 38.346786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440266, 38.336948, 38.240425>,  <46.436337, 38.695499, 38.063156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440266, 38.336948, 38.240425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196830, -0.432794, -0.879743,
		0.980388, 0.095875, 0.172182,
		0.009826, -0.896380, 0.443177,
		46.443214, 38.068035, 38.373379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845356, 38.403015, 37.646805>,  <46.436337, 38.695499, 38.063156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845356, 38.403015, 37.646805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651360, 38.107010, 37.833206>,  <46.534962, 37.929405, 37.945049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651360, 38.107010, 37.833206>,  <46.845356, 38.403015, 37.646805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651360, 38.107010, 37.833206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020082, -0.542154, -0.840039,
		0.874291, -0.398050, 0.277799,
		-0.484987, -0.740018, 0.466006,
		46.505863, 37.885006, 37.973007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142677, 37.762184, 37.379646>,  <46.845356, 38.403015, 37.646805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142677, 37.762184, 37.379646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794506, 37.628250, 37.524002>,  <46.585602, 37.547890, 37.610615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794506, 37.628250, 37.524002>,  <47.142677, 37.762184, 37.379646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794506, 37.628250, 37.524002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070126, -0.641267, -0.764107,
		0.487273, -0.690409, 0.534697,
		-0.870429, -0.334833, 0.360888,
		46.533379, 37.527802, 37.632267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183479, 37.027298, 37.469627>,  <47.142677, 37.762184, 37.379646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183479, 37.027298, 37.469627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795052, 37.117535, 37.438324>,  <46.561993, 37.171677, 37.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795052, 37.117535, 37.438324>,  <47.183479, 37.027298, 37.469627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795052, 37.117535, 37.438324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128065, -0.768674, -0.626689,
		-0.201532, -0.598539, 0.775330,
		-0.971074, 0.225591, -0.078260,
		46.503731, 37.185211, 37.414845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838181, 36.464184, 37.516884>,  <47.183479, 37.027298, 37.469627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838181, 36.464184, 37.516884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574924, 36.701733, 37.331772>,  <46.416973, 36.844261, 37.220703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574924, 36.701733, 37.331772>,  <46.838181, 36.464184, 37.516884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574924, 36.701733, 37.331772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250459, -0.752357, -0.609286,
		-0.710014, -0.285089, 0.643898,
		-0.658141, 0.593872, -0.462781,
		46.377483, 36.879894, 37.192936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224945, 36.132824, 37.558521>,  <46.838181, 36.464184, 37.516884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224945, 36.132824, 37.558521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189808, 36.381397, 37.247112>,  <46.168724, 36.530540, 37.060265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189808, 36.381397, 37.247112>,  <46.224945, 36.132824, 37.558521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189808, 36.381397, 37.247112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345728, -0.751987, -0.561238,
		-0.934214, 0.219856, 0.280906,
		-0.087846, 0.621433, -0.778527,
		46.163452, 36.567825, 37.013554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686985, 35.849426, 37.240154>,  <46.224945, 36.132824, 37.558521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686985, 35.849426, 37.240154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786781, 36.111202, 36.954647>,  <45.846661, 36.268269, 36.783344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786781, 36.111202, 36.954647>,  <45.686985, 35.849426, 37.240154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786781, 36.111202, 36.954647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293083, -0.651478, -0.699771,
		-0.922960, 0.383781, 0.029266,
		0.249493, 0.654438, -0.713768,
		45.861629, 36.307533, 36.740517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062580, 35.945332, 36.960419>,  <45.686985, 35.849426, 37.240154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062580, 35.945332, 36.960419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367119, 36.016472, 36.711029>,  <45.549843, 36.059155, 36.561398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367119, 36.016472, 36.711029>,  <45.062580, 35.945332, 36.960419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367119, 36.016472, 36.711029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399527, -0.628658, -0.667209,
		-0.510610, 0.757073, -0.407575,
		0.761351, 0.177847, -0.623470,
		45.595524, 36.069824, 36.523987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787113, 36.074074, 36.164150>,  <45.062580, 35.945332, 36.960419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787113, 36.074074, 36.164150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164158, 35.941723, 36.146248>,  <45.390385, 35.862312, 36.135506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164158, 35.941723, 36.146248>,  <44.787113, 36.074074, 36.164150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164158, 35.941723, 36.146248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243492, -0.589488, -0.770205,
		0.228465, 0.736900, -0.636225,
		0.942611, -0.330881, -0.044752,
		45.446941, 35.842457, 36.132824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831848, 36.066467, 35.469727>,  <44.787113, 36.074074, 36.164150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831848, 36.066467, 35.469727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135166, 35.845390, 35.608017>,  <45.317158, 35.712746, 35.690990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135166, 35.845390, 35.608017>,  <44.831848, 36.066467, 35.469727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135166, 35.845390, 35.608017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191826, -0.696008, -0.691936,
		0.623052, 0.458372, -0.633799,
		0.758293, -0.552691, 0.345722,
		45.362656, 35.679585, 35.711735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136539, 35.853844, 34.830975>,  <44.831848, 36.066467, 35.469727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136539, 35.853844, 34.830975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273029, 35.608448, 35.115845>,  <45.354923, 35.461212, 35.286766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273029, 35.608448, 35.115845>,  <45.136539, 35.853844, 34.830975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273029, 35.608448, 35.115845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129688, -0.781131, -0.610750,
		0.930992, 0.116043, -0.346104,
		0.341226, -0.613488, 0.712178,
		45.375397, 35.424400, 35.329498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540638, 35.451721, 34.540680>,  <45.136539, 35.853844, 34.830975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540638, 35.451721, 34.540680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445934, 35.232300, 34.861439>,  <45.389114, 35.100647, 35.053894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445934, 35.232300, 34.861439>,  <45.540638, 35.451721, 34.540680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445934, 35.232300, 34.861439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070806, -0.813425, -0.577345,
		0.968986, -0.193469, 0.153743,
		-0.236757, -0.548553, 0.801895,
		45.374908, 35.067734, 35.102009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017723, 34.784401, 34.686932>,  <45.540638, 35.451721, 34.540680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017723, 34.784401, 34.686932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660393, 34.717911, 34.853947>,  <45.445995, 34.678017, 34.954155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660393, 34.717911, 34.853947>,  <46.017723, 34.784401, 34.686932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660393, 34.717911, 34.853947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040663, -0.955166, -0.293266,
		0.447571, -0.245003, 0.860032,
		-0.893324, -0.166228, 0.417542,
		45.392395, 34.668041, 34.979210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455421, 34.122921, 34.870270>,  <46.017723, 34.784401, 34.686932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455421, 34.122921, 34.870270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466301, 34.521969, 34.895596>,  <46.472828, 34.761398, 34.910793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466301, 34.521969, 34.895596>,  <46.455421, 34.122921, 34.870270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466301, 34.521969, 34.895596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969555, -0.041748, 0.241288,
		0.243358, 0.054829, -0.968386,
		0.027199, 0.997623, 0.063319,
		46.474461, 34.821255, 34.914593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970535, 34.376205, 34.388508>,  <46.455421, 34.122921, 34.870270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970535, 34.376205, 34.388508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.908047, 34.602177, 34.712597>,  <46.870552, 34.737759, 34.907051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.908047, 34.602177, 34.712597>,  <46.970535, 34.376205, 34.388508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908047, 34.602177, 34.712597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987342, 0.066558, 0.143967,
		0.027404, 0.822454, -0.568172,
		-0.156222, 0.564925, 0.810219,
		46.861179, 34.771656, 34.955662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526852, 34.991425, 34.469532>,  <46.970535, 34.376205, 34.388508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526852, 34.991425, 34.469532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362747, 34.954704, 34.832466>,  <47.264282, 34.932671, 35.050228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362747, 34.954704, 34.832466>,  <47.526852, 34.991425, 34.469532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362747, 34.954704, 34.832466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902844, -0.181264, 0.389893,
		0.128673, 0.979140, 0.157251,
		-0.410264, -0.091805, 0.907334,
		47.239670, 34.927162, 35.104668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.180428, 35.237049, 34.784348>,  <47.526852, 34.991425, 34.469532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.180428, 35.237049, 34.784348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.904369, 35.042435, 34.998631>,  <47.738735, 34.925667, 35.127201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.904369, 35.042435, 34.998631>,  <48.180428, 35.237049, 34.784348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.904369, 35.042435, 34.998631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722420, -0.506731, 0.470460,
		0.042564, 0.711691, 0.701202,
		-0.690143, -0.486538, 0.535708,
		47.697327, 34.896473, 35.159344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.971481, 35.419739, 48.402828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704212, 35.123848, 48.434708>,  <36.543850, 34.946312, 48.453835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704212, 35.123848, 48.434708>,  <36.971481, 35.419739, 48.402828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704212, 35.123848, 48.434708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213689, 0.088195, -0.972913,
		0.712660, -0.667103, -0.217001,
		-0.668171, -0.739727, 0.079699,
		36.503761, 34.901932, 48.458618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125317, 35.033157, 47.884109>,  <36.971481, 35.419739, 48.402828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125317, 35.033157, 47.884109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748287, 34.924614, 47.961994>,  <36.522068, 34.859486, 48.008724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748287, 34.924614, 47.961994>,  <37.125317, 35.033157, 47.884109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748287, 34.924614, 47.961994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159723, -0.145748, -0.976343,
		0.293319, -0.951378, 0.094037,
		-0.942577, -0.271360, 0.194708,
		36.465515, 34.843204, 48.020405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923988, 34.365250, 47.572334>,  <37.125317, 35.033157, 47.884109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923988, 34.365250, 47.572334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578205, 34.556114, 47.635616>,  <36.370735, 34.670635, 47.673588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578205, 34.556114, 47.635616>,  <36.923988, 34.365250, 47.572334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578205, 34.556114, 47.635616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256615, -0.148229, -0.955079,
		-0.432281, -0.866222, 0.250585,
		-0.864454, 0.477167, 0.158209,
		36.318867, 34.699265, 47.683079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556313, 34.023251, 47.206837>,  <36.923988, 34.365250, 47.572334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556313, 34.023251, 47.206837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378147, 34.374916, 47.274563>,  <36.271248, 34.585915, 47.315201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378147, 34.374916, 47.274563>,  <36.556313, 34.023251, 47.206837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378147, 34.374916, 47.274563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211997, 0.080174, -0.973976,
		-0.869863, -0.469720, 0.150670,
		-0.445416, 0.879168, 0.169319,
		36.244522, 34.638668, 47.325359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968578, 34.051266, 46.777431>,  <36.556313, 34.023251, 47.206837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968578, 34.051266, 46.777431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029072, 34.436203, 46.867786>,  <36.065369, 34.667164, 46.922001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029072, 34.436203, 46.867786>,  <35.968578, 34.051266, 46.777431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029072, 34.436203, 46.867786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176733, 0.251163, -0.951674,
		-0.972570, 0.104005, 0.208062,
		0.151237, 0.962341, 0.225892,
		36.074444, 34.724907, 46.935555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363400, 34.302467, 46.455593>,  <35.968578, 34.051266, 46.777431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363400, 34.302467, 46.455593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622704, 34.604454, 46.495159>,  <35.778286, 34.785645, 46.518898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622704, 34.604454, 46.495159>,  <35.363400, 34.302467, 46.455593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622704, 34.604454, 46.495159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197737, 0.292373, -0.935638,
		-0.735295, 0.586978, 0.338819,
		0.648260, 0.754967, 0.098913,
		35.817181, 34.830944, 46.524834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119495, 34.977558, 46.101864>,  <35.363400, 34.302467, 46.455593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119495, 34.977558, 46.101864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512527, 35.018639, 46.163803>,  <35.748348, 35.043289, 46.200966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512527, 35.018639, 46.163803>,  <35.119495, 34.977558, 46.101864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512527, 35.018639, 46.163803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110758, 0.345423, -0.931888,
		-0.149199, 0.932810, 0.328032,
		0.982585, 0.102705, 0.154853,
		35.807304, 35.049450, 46.210258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161678, 35.610664, 45.786839>,  <35.119495, 34.977558, 46.101864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161678, 35.610664, 45.786839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.499718, 35.400307, 45.825279>,  <35.702541, 35.274090, 45.848343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.499718, 35.400307, 45.825279>,  <35.161678, 35.610664, 45.786839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499718, 35.400307, 45.825279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191979, 0.130758, -0.972649,
		0.498947, 0.840437, 0.211464,
		0.845101, -0.525897, 0.096105,
		35.753246, 35.242538, 45.854111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670277, 36.065666, 45.492001>,  <35.161678, 35.610664, 45.786839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670277, 36.065666, 45.492001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802689, 35.689053, 45.466885>,  <35.882137, 35.463085, 45.451817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802689, 35.689053, 45.466885>,  <35.670277, 36.065666, 45.492001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802689, 35.689053, 45.466885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471536, 0.222690, -0.853266,
		0.817358, 0.252847, 0.517681,
		0.331029, -0.941529, -0.062791,
		35.901997, 35.406593, 45.448048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333302, 36.144985, 45.360760>,  <35.670277, 36.065666, 45.492001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333302, 36.144985, 45.360760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247608, 35.766655, 45.263176>,  <36.196194, 35.539658, 45.204628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247608, 35.766655, 45.263176>,  <36.333302, 36.144985, 45.360760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247608, 35.766655, 45.263176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768535, -0.009066, -0.639743,
		0.602875, -0.324541, 0.728845,
		-0.214230, -0.945828, -0.243956,
		36.183338, 35.482906, 45.189991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948891, 35.789478, 45.139286>,  <36.333302, 36.144985, 45.360760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948891, 35.789478, 45.139286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657516, 35.561333, 44.987461>,  <36.482693, 35.424446, 44.896366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657516, 35.561333, 44.987461>,  <36.948891, 35.789478, 45.139286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657516, 35.561333, 44.987461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563435, -0.183540, -0.805515,
		0.389773, -0.800623, 0.455061,
		-0.728436, -0.570365, -0.379560,
		36.438984, 35.390224, 44.873592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254944, 35.225761, 44.909496>,  <36.948891, 35.789478, 45.139286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254944, 35.225761, 44.909496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900322, 35.221210, 44.724506>,  <36.687550, 35.218479, 44.613514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900322, 35.221210, 44.724506>,  <37.254944, 35.225761, 44.909496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900322, 35.221210, 44.724506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456262, -0.186622, -0.870056,
		-0.076412, -0.982366, 0.170641,
		-0.886559, -0.011375, -0.462476,
		36.634354, 35.217796, 44.585762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435669, 34.897717, 44.387699>,  <37.254944, 35.225761, 44.909496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435669, 34.897717, 44.387699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082405, 35.020863, 44.246136>,  <36.870445, 35.094749, 44.161198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082405, 35.020863, 44.246136>,  <37.435669, 34.897717, 44.387699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082405, 35.020863, 44.246136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268266, -0.287409, -0.919472,
		-0.384794, -0.906979, 0.171236,
		-0.883157, 0.307871, -0.353905,
		36.817459, 35.113224, 44.139965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207623, 34.380150, 43.948288>,  <37.435669, 34.897717, 44.387699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207623, 34.380150, 43.948288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015903, 34.715927, 43.845840>,  <36.900871, 34.917393, 43.784370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015903, 34.715927, 43.845840>,  <37.207623, 34.380150, 43.948288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015903, 34.715927, 43.845840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149879, -0.209252, -0.966307,
		-0.864759, -0.501539, -0.025521,
		-0.479300, 0.839448, -0.256122,
		36.872112, 34.967762, 43.769005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670425, 34.233261, 43.367176>,  <37.207623, 34.380150, 43.948288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670425, 34.233261, 43.367176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782387, 34.617058, 43.354347>,  <36.849564, 34.847336, 43.346649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782387, 34.617058, 43.354347>,  <36.670425, 34.233261, 43.367176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782387, 34.617058, 43.354347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265801, -0.109557, -0.957782,
		-0.922498, 0.259563, -0.285699,
		0.279906, 0.959491, -0.032074,
		36.866360, 34.904903, 43.344727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665806, 34.293407, 42.777946>,  <36.670425, 34.233261, 43.367176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665806, 34.293407, 42.777946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839153, 34.647980, 42.842976>,  <36.943161, 34.860722, 42.881992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839153, 34.647980, 42.842976>,  <36.665806, 34.293407, 42.777946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839153, 34.647980, 42.842976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253214, 0.053364, -0.965937,
		-0.864911, 0.459778, -0.201330,
		0.433373, 0.886429, 0.162578,
		36.969166, 34.913910, 42.891750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413361, 34.728340, 42.352036>,  <36.665806, 34.293407, 42.777946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413361, 34.728340, 42.352036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767437, 34.880302, 42.459446>,  <36.979885, 34.971481, 42.523891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767437, 34.880302, 42.459446>,  <36.413361, 34.728340, 42.352036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767437, 34.880302, 42.459446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253642, 0.089763, -0.963124,
		-0.389999, 0.920660, -0.016902,
		0.885193, 0.379905, 0.268525,
		37.032993, 34.994274, 42.540005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527149, 35.312210, 41.926361>,  <36.413361, 34.728340, 42.352036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527149, 35.312210, 41.926361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891541, 35.228085, 42.068287>,  <37.110176, 35.177608, 42.153442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891541, 35.228085, 42.068287>,  <36.527149, 35.312210, 41.926361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891541, 35.228085, 42.068287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394405, 0.192463, -0.898556,
		0.120688, 0.958503, 0.258277,
		0.910977, -0.210310, 0.354811,
		37.164833, 35.164993, 42.174728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879532, 35.872890, 41.855350>,  <36.527149, 35.312210, 41.926361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879532, 35.872890, 41.855350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167027, 35.595093, 41.868553>,  <37.339523, 35.428413, 41.876472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167027, 35.595093, 41.868553>,  <36.879532, 35.872890, 41.855350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167027, 35.595093, 41.868553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206213, 0.167597, -0.964047,
		0.663998, 0.699702, 0.263673,
		0.718737, -0.694499, 0.033004,
		37.382648, 35.386742, 41.878456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455833, 36.156822, 41.565174>,  <36.879532, 35.872890, 41.855350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455833, 36.156822, 41.565174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545433, 35.767681, 41.541927>,  <37.599194, 35.534195, 41.527977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545433, 35.767681, 41.541927>,  <37.455833, 36.156822, 41.565174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545433, 35.767681, 41.541927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443834, 0.154920, -0.882616,
		0.867661, 0.171910, 0.466487,
		0.223999, -0.972855, -0.058119,
		37.612633, 35.475826, 41.524490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122295, 36.129707, 41.449150>,  <37.455833, 36.156822, 41.565174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122295, 36.129707, 41.449150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980598, 35.785164, 41.303505>,  <37.895580, 35.578438, 41.216118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980598, 35.785164, 41.303505>,  <38.122295, 36.129707, 41.449150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980598, 35.785164, 41.303505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372119, 0.227374, -0.899905,
		0.857928, -0.454279, 0.239981,
		-0.354243, -0.861355, -0.364116,
		37.874325, 35.526756, 41.194271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691502, 35.828709, 41.071785>,  <38.122295, 36.129707, 41.449150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691502, 35.828709, 41.071785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085236, 35.774338, 41.026855>,  <39.321476, 35.741714, 40.999897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085236, 35.774338, 41.026855>,  <38.691502, 35.828709, 41.071785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085236, 35.774338, 41.026855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125062, 0.089131, 0.988137,
		-0.124302, -0.986702, 0.104734,
		0.984332, -0.135926, -0.112320,
		39.380535, 35.733559, 40.993160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943802, 35.312481, 41.559795>,  <38.691502, 35.828709, 41.071785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943802, 35.312481, 41.559795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234566, 35.565544, 41.452953>,  <39.409023, 35.717381, 41.388847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234566, 35.565544, 41.452953>,  <38.943802, 35.312481, 41.559795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234566, 35.565544, 41.452953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276191, 0.086784, 0.957176,
		0.628747, -0.769553, -0.111651,
		0.726908, 0.632658, -0.267109,
		39.452637, 35.755341, 41.372822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400066, 35.111389, 42.014099>,  <38.943802, 35.312481, 41.559795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400066, 35.111389, 42.014099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507652, 35.477093, 41.892914>,  <39.572205, 35.696514, 41.820202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507652, 35.477093, 41.892914>,  <39.400066, 35.111389, 42.014099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507652, 35.477093, 41.892914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346601, 0.201604, 0.916092,
		0.898624, -0.351404, -0.262659,
		0.268965, 0.914260, -0.302963,
		39.588341, 35.751369, 41.802025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095196, 35.077023, 42.028244>,  <39.400066, 35.111389, 42.014099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095196, 35.077023, 42.028244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.982250, 35.460651, 42.036758>,  <39.914482, 35.690830, 42.041866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.982250, 35.460651, 42.036758>,  <40.095196, 35.077023, 42.028244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982250, 35.460651, 42.036758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402705, 0.098359, 0.910030,
		0.870690, 0.265530, -0.413996,
		-0.282360, 0.959072, 0.021290,
		39.897541, 35.748375, 42.043144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668892, 35.447506, 42.399384>,  <40.095196, 35.077023, 42.028244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668892, 35.447506, 42.399384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360294, 35.701958, 42.404091>,  <40.175137, 35.854630, 42.406914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360294, 35.701958, 42.404091>,  <40.668892, 35.447506, 42.399384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360294, 35.701958, 42.404091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204888, 0.230888, 0.951163,
		0.602346, 0.736226, -0.308464,
		-0.771492, 0.636130, 0.011770,
		40.128845, 35.892796, 42.407623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889133, 36.026371, 42.831703>,  <40.668892, 35.447506, 42.399384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889133, 36.026371, 42.831703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489780, 36.005554, 42.822552>,  <40.250168, 35.993065, 42.817062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489780, 36.005554, 42.822552>,  <40.889133, 36.026371, 42.831703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489780, 36.005554, 42.822552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022432, -0.009136, 0.999707,
		-0.052235, 0.998603, 0.007954,
		-0.998383, -0.052041, -0.022878,
		40.190266, 35.989941, 42.815689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675102, 36.473511, 43.321041>,  <40.889133, 36.026371, 42.831703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675102, 36.473511, 43.321041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.362656, 36.226917, 43.281429>,  <40.175190, 36.078960, 43.257664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.362656, 36.226917, 43.281429>,  <40.675102, 36.473511, 43.321041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362656, 36.226917, 43.281429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109006, -0.021518, 0.993808,
		-0.614800, 0.787071, -0.050393,
		-0.781114, -0.616486, -0.099025,
		40.128323, 36.041973, 43.251720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449505, 36.458256, 43.926392>,  <40.675102, 36.473511, 43.321041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449505, 36.458256, 43.926392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144127, 36.224880, 43.815575>,  <39.960899, 36.084854, 43.749084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144127, 36.224880, 43.815575>,  <40.449505, 36.458256, 43.926392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144127, 36.224880, 43.815575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135794, -0.274357, 0.951992,
		-0.631436, 0.764414, 0.130230,
		-0.763445, -0.583438, -0.277042,
		39.915092, 36.049850, 43.732464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959229, 36.677311, 44.379688>,  <40.449505, 36.458256, 43.926392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959229, 36.677311, 44.379688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853718, 36.316475, 44.243073>,  <39.790413, 36.099972, 44.161102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853718, 36.316475, 44.243073>,  <39.959229, 36.677311, 44.379688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853718, 36.316475, 44.243073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136055, -0.315743, 0.939040,
		-0.954940, 0.294165, -0.039449,
		-0.263777, -0.902094, -0.341538,
		39.774586, 36.045845, 44.140610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288120, 36.520294, 44.660618>,  <39.959229, 36.677311, 44.379688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288120, 36.520294, 44.660618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452557, 36.170620, 44.557228>,  <39.551216, 35.960815, 44.495193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452557, 36.170620, 44.557228>,  <39.288120, 36.520294, 44.660618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452557, 36.170620, 44.557228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136531, -0.339384, 0.930687,
		-0.901313, -0.347306, -0.258870,
		0.411089, -0.874184, -0.258473,
		39.575882, 35.908363, 44.479687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790089, 35.988914, 44.785706>,  <39.288120, 36.520294, 44.660618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790089, 35.988914, 44.785706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160946, 35.839710, 44.799957>,  <39.383461, 35.750187, 44.808506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160946, 35.839710, 44.799957>,  <38.790089, 35.988914, 44.785706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160946, 35.839710, 44.799957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096922, -0.146883, 0.984394,
		-0.361958, -0.916126, -0.172334,
		0.927142, -0.373012, 0.035627,
		39.439087, 35.727806, 44.810646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743271, 35.486546, 45.305450>,  <38.790089, 35.988914, 44.785706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743271, 35.486546, 45.305450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141365, 35.507854, 45.272804>,  <39.380222, 35.520641, 45.253216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141365, 35.507854, 45.272804>,  <38.743271, 35.486546, 45.305450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141365, 35.507854, 45.272804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091528, -0.223232, 0.970459,
		0.033481, -0.973309, -0.227045,
		0.995239, 0.053273, -0.081611,
		39.439938, 35.523834, 45.248322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923695, 34.921440, 45.638615>,  <38.743271, 35.486546, 45.305450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923695, 34.921440, 45.638615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245579, 35.158905, 45.637562>,  <39.438709, 35.301384, 45.636932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245579, 35.158905, 45.637562>,  <38.923695, 34.921440, 45.638615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245579, 35.158905, 45.637562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259333, -0.347541, 0.901089,
		0.534026, -0.725800, -0.433626,
		0.804713, 0.593658, -0.002628,
		39.486992, 35.337002, 45.636772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533474, 34.596592, 45.829235>,  <38.923695, 34.921440, 45.638615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533474, 34.596592, 45.829235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.589256, 34.977818, 45.936733>,  <39.622726, 35.206554, 46.001232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.589256, 34.977818, 45.936733>,  <39.533474, 34.596592, 45.829235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589256, 34.977818, 45.936733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166547, -0.290101, 0.942393,
		0.976123, -0.086661, -0.199185,
		0.139452, 0.953064, 0.268741,
		39.631092, 35.263737, 46.017357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746342, 34.486553, 46.463867>,  <39.533474, 34.596592, 45.829235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746342, 34.486553, 46.463867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715900, 34.884983, 46.481945>,  <39.697636, 35.124043, 46.492790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715900, 34.884983, 46.481945>,  <39.746342, 34.486553, 46.463867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715900, 34.884983, 46.481945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211629, -0.028158, 0.976945,
		0.974382, 0.083918, -0.208656,
		-0.076108, 0.996075, 0.045196,
		39.693069, 35.183807, 46.495502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259457, 34.640186, 46.745205>,  <39.746342, 34.486553, 46.463867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259457, 34.640186, 46.745205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030888, 34.959076, 46.823082>,  <39.893745, 35.150410, 46.869808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030888, 34.959076, 46.823082>,  <40.259457, 34.640186, 46.745205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030888, 34.959076, 46.823082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120854, -0.152905, 0.980823,
		0.811705, 0.583998, -0.008973,
		-0.571427, 0.797224, 0.194692,
		39.859459, 35.198242, 46.881489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471970, 34.860477, 47.337490>,  <40.259457, 34.640186, 46.745205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471970, 34.860477, 47.337490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129463, 35.066795, 47.326458>,  <39.923958, 35.190586, 47.319839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129463, 35.066795, 47.326458>,  <40.471970, 34.860477, 47.337490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129463, 35.066795, 47.326458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033701, -0.002501, 0.999429,
		0.515431, 0.856709, 0.019524,
		-0.856268, 0.515795, -0.027582,
		39.872581, 35.221535, 47.318184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469658, 35.299511, 47.938461>,  <40.471970, 34.860477, 47.337490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469658, 35.299511, 47.938461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.082024, 35.271038, 47.843967>,  <39.849442, 35.253952, 47.787273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.082024, 35.271038, 47.843967>,  <40.469658, 35.299511, 47.938461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082024, 35.271038, 47.843967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230577, -0.079367, 0.969812,
		-0.087785, 0.994301, 0.060500,
		-0.969086, -0.071185, -0.236231,
		39.791298, 35.249683, 47.773098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177532, 35.839870, 48.252979>,  <40.469658, 35.299511, 47.938461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177532, 35.839870, 48.252979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.880878, 35.581841, 48.179382>,  <39.702885, 35.427021, 48.135223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.880878, 35.581841, 48.179382>,  <40.177532, 35.839870, 48.252979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880878, 35.581841, 48.179382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429664, 0.246185, 0.868782,
		-0.515137, 0.723372, -0.459746,
		-0.741635, -0.645078, -0.183988,
		39.658386, 35.388317, 48.124187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.173553, 36.030571, 48.122974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379368, 35.696594, 48.201069>,  <38.502857, 35.496208, 48.247925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379368, 35.696594, 48.201069>,  <38.173553, 36.030571, 48.122974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379368, 35.696594, 48.201069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589420, -0.179039, 0.787737,
		-0.622764, -0.520394, -0.584256,
		0.514538, -0.834946, 0.195232,
		38.533730, 35.446110, 48.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798080, 35.745216, 48.585369>,  <38.173553, 36.030571, 48.122974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798080, 35.745216, 48.585369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119003, 35.512241, 48.637619>,  <38.311558, 35.372456, 48.668968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119003, 35.512241, 48.637619>,  <37.798080, 35.745216, 48.585369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119003, 35.512241, 48.637619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364184, -0.304244, 0.880230,
		-0.472939, -0.753790, -0.456213,
		0.802309, -0.582441, 0.130629,
		38.359695, 35.337509, 48.676807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630630, 34.990402, 48.765797>,  <37.798080, 35.745216, 48.585369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630630, 34.990402, 48.765797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985580, 35.091011, 48.920357>,  <38.198551, 35.151379, 49.013092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985580, 35.091011, 48.920357>,  <37.630630, 34.990402, 48.765797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985580, 35.091011, 48.920357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293970, -0.336958, 0.894450,
		0.355176, -0.907301, -0.225067,
		0.887374, 0.251524, 0.386398,
		38.251793, 35.166470, 49.036278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711460, 34.505699, 49.208481>,  <37.630630, 34.990402, 48.765797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711460, 34.505699, 49.208481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976906, 34.769989, 49.348801>,  <38.136173, 34.928562, 49.432995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976906, 34.769989, 49.348801>,  <37.711460, 34.505699, 49.208481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976906, 34.769989, 49.348801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264056, -0.231866, 0.936223,
		0.699921, -0.713923, 0.020597,
		0.663616, 0.660721, 0.350803,
		38.175991, 34.968204, 49.454041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262661, 34.108551, 49.637253>,  <37.711460, 34.505699, 49.208481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262661, 34.108551, 49.637253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238064, 34.490295, 49.754154>,  <38.223305, 34.719341, 49.824295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238064, 34.490295, 49.754154>,  <38.262661, 34.108551, 49.637253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238064, 34.490295, 49.754154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189295, -0.298645, 0.935403,
		0.979993, 0.002203, 0.199022,
		-0.061498, 0.954362, 0.292253,
		38.219616, 34.776604, 49.841831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529022, 34.001228, 50.228508>,  <38.262661, 34.108551, 49.637253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529022, 34.001228, 50.228508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410740, 34.380985, 50.270870>,  <38.339771, 34.608841, 50.296288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410740, 34.380985, 50.270870>,  <38.529022, 34.001228, 50.228508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410740, 34.380985, 50.270870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190989, -0.167381, 0.967216,
		0.935994, 0.265781, 0.230818,
		-0.295702, 0.949392, 0.105907,
		38.322029, 34.665802, 50.302643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897125, 34.314774, 50.808491>,  <38.529022, 34.001228, 50.228508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897125, 34.314774, 50.808491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.579376, 34.554115, 50.766644>,  <38.388725, 34.697720, 50.741535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.579376, 34.554115, 50.766644>,  <38.897125, 34.314774, 50.808491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579376, 34.554115, 50.766644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302554, -0.240407, 0.922315,
		0.526716, 0.764317, 0.372006,
		-0.794374, 0.598351, -0.104621,
		38.341064, 34.733620, 50.735256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931091, 34.730576, 51.335384>,  <38.897125, 34.314774, 50.808491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931091, 34.730576, 51.335384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.552048, 34.693138, 51.213226>,  <38.324619, 34.670677, 51.139931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.552048, 34.693138, 51.213226>,  <38.931091, 34.730576, 51.335384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552048, 34.693138, 51.213226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277611, -0.231584, 0.932363,
		-0.157989, 0.968302, 0.193470,
		-0.947614, -0.093593, -0.305399,
		38.267765, 34.665062, 51.121605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584301, 35.008350, 51.911057>,  <38.931091, 34.730576, 51.335384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584301, 35.008350, 51.911057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309452, 34.793095, 51.715805>,  <38.144543, 34.663940, 51.598652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309452, 34.793095, 51.715805>,  <38.584301, 35.008350, 51.911057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309452, 34.793095, 51.715805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363612, -0.326955, 0.872288,
		-0.629007, 0.776860, 0.028985,
		-0.687122, -0.538136, -0.488132,
		38.103317, 34.631653, 51.569366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010769, 35.129997, 52.245522>,  <38.584301, 35.008350, 51.911057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010769, 35.129997, 52.245522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880783, 34.816757, 52.033428>,  <37.802792, 34.628815, 51.906170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880783, 34.816757, 52.033428>,  <38.010769, 35.129997, 52.245522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880783, 34.816757, 52.033428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471885, -0.351624, 0.808508,
		-0.819588, 0.512945, -0.255270,
		-0.324961, -0.783102, -0.530238,
		37.783295, 34.581825, 51.874355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259480, 34.978539, 52.336105>,  <38.010769, 35.129997, 52.245522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259480, 34.978539, 52.336105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400578, 34.626297, 52.209545>,  <37.485237, 34.414951, 52.133610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400578, 34.626297, 52.209545>,  <37.259480, 34.978539, 52.336105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400578, 34.626297, 52.209545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312575, -0.429604, 0.847194,
		-0.881969, -0.199943, -0.426794,
		0.352743, -0.880604, -0.316400,
		37.506401, 34.362114, 52.114624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729130, 34.556355, 52.645821>,  <37.259480, 34.978539, 52.336105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729130, 34.556355, 52.645821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051804, 34.339878, 52.550842>,  <37.245407, 34.209991, 52.493855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051804, 34.339878, 52.550842>,  <36.729130, 34.556355, 52.645821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051804, 34.339878, 52.550842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172751, -0.600159, 0.781003,
		-0.565169, -0.589006, -0.577630,
		0.806685, -0.541184, -0.237440,
		37.293808, 34.177521, 52.479610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541679, 33.837536, 52.520412>,  <36.729130, 34.556355, 52.645821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541679, 33.837536, 52.520412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929493, 33.823231, 52.617340>,  <37.162182, 33.814648, 52.675495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929493, 33.823231, 52.617340>,  <36.541679, 33.837536, 52.520412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929493, 33.823231, 52.617340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213513, -0.608213, 0.764519,
		0.120040, -0.792967, -0.597322,
		0.969537, -0.035763, 0.242318,
		37.220356, 33.812500, 52.690037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677532, 33.223572, 52.713810>,  <36.541679, 33.837536, 52.520412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677532, 33.223572, 52.713810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981216, 33.410667, 52.894840>,  <37.163425, 33.522923, 53.003456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981216, 33.410667, 52.894840>,  <36.677532, 33.223572, 52.713810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981216, 33.410667, 52.894840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071997, -0.630739, 0.772648,
		0.646850, -0.619187, -0.445188,
		0.759211, 0.467736, 0.452573,
		37.208981, 33.550987, 53.030613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054852, 32.775398, 53.056183>,  <36.677532, 33.223572, 52.713810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054852, 32.775398, 53.056183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229984, 33.089813, 53.230743>,  <37.335064, 33.278461, 53.335480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229984, 33.089813, 53.230743>,  <37.054852, 32.775398, 53.056183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229984, 33.089813, 53.230743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085037, -0.447016, 0.890475,
		0.895027, -0.426988, -0.128875,
		0.437831, 0.786040, 0.436401,
		37.361332, 33.325626, 53.361664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539902, 32.483875, 53.425808>,  <37.054852, 32.775398, 53.056183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539902, 32.483875, 53.425808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488628, 32.839390, 53.601822>,  <37.457863, 33.052700, 53.707428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488628, 32.839390, 53.601822>,  <37.539902, 32.483875, 53.425808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488628, 32.839390, 53.601822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010124, -0.442496, 0.896713,
		0.991699, 0.119398, 0.047723,
		-0.128183, 0.888786, 0.440032,
		37.450172, 33.106026, 53.733833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086071, 32.542564, 53.941322>,  <37.539902, 32.483875, 53.425808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086071, 32.542564, 53.941322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827435, 32.835114, 54.028057>,  <37.672253, 33.010643, 54.080097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827435, 32.835114, 54.028057>,  <38.086071, 32.542564, 53.941322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827435, 32.835114, 54.028057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092902, -0.206642, 0.973996,
		0.757158, 0.649922, 0.065667,
		-0.646592, 0.731369, 0.216840,
		37.633457, 33.054523, 54.093109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406055, 32.964870, 54.411011>,  <38.086071, 32.542564, 53.941322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406055, 32.964870, 54.411011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010601, 32.993698, 54.463772>,  <37.773327, 33.010994, 54.495430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010601, 32.993698, 54.463772>,  <38.406055, 32.964870, 54.411011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010601, 32.993698, 54.463772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101340, -0.328526, 0.939042,
		0.111010, 0.941741, 0.317491,
		-0.988639, 0.072069, 0.131906,
		37.714008, 33.015320, 54.503345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376225, 33.030910, 55.117031>,  <38.406055, 32.964870, 54.411011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376225, 33.030910, 55.117031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003487, 32.930130, 55.012577>,  <37.779842, 32.869663, 54.949905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003487, 32.930130, 55.012577>,  <38.376225, 33.030910, 55.117031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003487, 32.930130, 55.012577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092932, -0.529945, 0.842924,
		-0.350759, 0.809741, 0.470412,
		-0.931843, -0.251947, -0.261134,
		37.723934, 32.854546, 54.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932980, 33.133785, 55.652252>,  <38.376225, 33.030910, 55.117031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932980, 33.133785, 55.652252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727386, 32.863743, 55.440571>,  <37.604031, 32.701717, 55.313560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727386, 32.863743, 55.440571>,  <37.932980, 33.133785, 55.652252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727386, 32.863743, 55.440571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240400, -0.478842, 0.844344,
		-0.823423, 0.561202, 0.083824,
		-0.513986, -0.675102, -0.529203,
		37.573189, 32.661213, 55.281811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482487, 32.875931, 56.162178>,  <37.932980, 33.133785, 55.652252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482487, 32.875931, 56.162178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421658, 32.609379, 55.870201>,  <37.385159, 32.449448, 55.695015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421658, 32.609379, 55.870201>,  <37.482487, 32.875931, 56.162178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421658, 32.609379, 55.870201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143706, -0.715775, 0.683385,
		-0.977866, 0.208821, 0.013087,
		-0.152073, -0.666378, -0.729941,
		37.376038, 32.409466, 55.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774220, 32.522533, 56.216564>,  <37.482487, 32.875931, 56.162178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774220, 32.522533, 56.216564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041973, 32.288986, 56.032814>,  <37.202625, 32.148857, 55.922562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041973, 32.288986, 56.032814>,  <36.774220, 32.522533, 56.216564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041973, 32.288986, 56.032814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266875, -0.766049, 0.584761,
		-0.693325, -0.268835, -0.668602,
		0.669386, -0.583863, -0.459376,
		37.242790, 32.113827, 55.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320301, 32.606033, 55.652023>,  <36.774220, 32.522533, 56.216564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320301, 32.606033, 55.652023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468361, 32.897438, 55.882591>,  <36.557198, 33.072281, 56.020931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468361, 32.897438, 55.882591>,  <36.320301, 32.606033, 55.652023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468361, 32.897438, 55.882591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092069, 0.588670, -0.803113,
		-0.924398, 0.350343, 0.150824,
		0.370151, 0.728510, 0.576421,
		36.579407, 33.115990, 56.055519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984245, 33.250751, 55.545399>,  <36.320301, 32.606033, 55.652023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984245, 33.250751, 55.545399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365829, 33.294868, 55.656960>,  <36.594780, 33.321339, 55.723896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365829, 33.294868, 55.656960>,  <35.984245, 33.250751, 55.545399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365829, 33.294868, 55.656960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158024, 0.605547, -0.779962,
		-0.254911, 0.788130, 0.560242,
		0.953964, 0.110289, 0.278905,
		36.652020, 33.327957, 55.740631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309963, 33.132992, 55.729206>,  <35.984245, 33.250751, 55.545399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309963, 33.132992, 55.729206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945374, 32.997414, 55.822441>,  <34.726620, 32.916065, 55.878380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945374, 32.997414, 55.822441>,  <35.309963, 33.132992, 55.729206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945374, 32.997414, 55.822441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150352, -0.252917, -0.955734,
		0.382896, -0.906172, 0.179566,
		-0.911474, -0.338949, 0.233085,
		34.671932, 32.895729, 55.892368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248283, 32.590195, 55.313709>,  <35.309963, 33.132992, 55.729206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248283, 32.590195, 55.313709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874416, 32.707428, 55.394199>,  <34.650093, 32.777767, 55.442493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874416, 32.707428, 55.394199>,  <35.248283, 32.590195, 55.313709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874416, 32.707428, 55.394199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234871, -0.084170, -0.968376,
		-0.266878, -0.952375, 0.147508,
		-0.934672, 0.293084, 0.201222,
		34.594013, 32.795353, 55.454567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887909, 32.119774, 54.872013>,  <35.248283, 32.590195, 55.313709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887909, 32.119774, 54.872013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625206, 32.411057, 54.950386>,  <34.467587, 32.585827, 54.997410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625206, 32.411057, 54.950386>,  <34.887909, 32.119774, 54.872013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625206, 32.411057, 54.950386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306987, -0.020854, -0.951485,
		-0.688790, -0.685043, 0.237245,
		-0.656755, 0.728205, 0.195935,
		34.428181, 32.629517, 55.009167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365047, 32.012901, 54.432182>,  <34.887909, 32.119774, 54.872013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365047, 32.012901, 54.432182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301285, 32.392818, 54.539871>,  <34.263027, 32.620770, 54.604485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301285, 32.392818, 54.539871>,  <34.365047, 32.012901, 54.432182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301285, 32.392818, 54.539871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180305, 0.240115, -0.953853,
		-0.970608, -0.200593, 0.132976,
		-0.159407, 0.949793, 0.269226,
		34.253464, 32.677757, 54.620640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937077, 32.302029, 53.919285>,  <34.365047, 32.012901, 54.432182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937077, 32.302029, 53.919285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056286, 32.642056, 54.092983>,  <34.127811, 32.846073, 54.197201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056286, 32.642056, 54.092983>,  <33.937077, 32.302029, 53.919285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056286, 32.642056, 54.092983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137375, 0.488376, -0.861752,
		-0.944621, 0.197170, 0.262327,
		0.298026, 0.850066, 0.434244,
		34.145695, 32.897076, 54.223255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331059, 32.812233, 53.785965>,  <33.937077, 32.302029, 53.919285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331059, 32.812233, 53.785965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687550, 32.984436, 53.843067>,  <33.901443, 33.087757, 53.877327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687550, 32.984436, 53.843067>,  <33.331059, 32.812233, 53.785965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687550, 32.984436, 53.843067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088447, 0.473670, -0.876250,
		-0.444849, 0.768312, 0.460225,
		0.891228, 0.430504, 0.142756,
		33.954918, 33.113586, 53.885895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262268, 33.353970, 53.324272>,  <33.331059, 32.812233, 53.785965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262268, 33.353970, 53.324272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645340, 33.300228, 53.426090>,  <33.875183, 33.267982, 53.487183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645340, 33.300228, 53.426090>,  <33.262268, 33.353970, 53.324272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645340, 33.300228, 53.426090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277668, 0.198319, -0.939984,
		0.075808, 0.970886, 0.227232,
		0.957681, -0.134353, 0.254549,
		33.932644, 33.259922, 53.502457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633312, 34.025082, 53.168903>,  <33.262268, 33.353970, 53.324272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633312, 34.025082, 53.168903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904591, 33.731148, 53.172234>,  <34.067356, 33.554787, 53.174232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904591, 33.731148, 53.172234>,  <33.633312, 34.025082, 53.168903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904591, 33.731148, 53.172234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412249, 0.371044, -0.832092,
		0.608359, 0.567755, 0.554575,
		0.678196, -0.734834, 0.008329,
		34.108047, 33.510696, 53.174732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234280, 34.276852, 52.862923>,  <33.633312, 34.025082, 53.168903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234280, 34.276852, 52.862923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327003, 33.888378, 52.840786>,  <34.382637, 33.655293, 52.827503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327003, 33.888378, 52.840786>,  <34.234280, 34.276852, 52.862923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327003, 33.888378, 52.840786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581197, 0.183895, -0.792712,
		0.780048, 0.151591, 0.607079,
		0.231807, -0.971186, -0.055343,
		34.396545, 33.597023, 52.824184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960056, 34.232967, 52.829838>,  <34.234280, 34.276852, 52.862923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960056, 34.232967, 52.829838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814831, 33.892963, 52.677170>,  <34.727695, 33.688961, 52.585567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814831, 33.892963, 52.677170>,  <34.960056, 34.232967, 52.829838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814831, 33.892963, 52.677170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575983, 0.117245, -0.809010,
		0.732412, -0.513561, 0.447021,
		-0.363065, -0.850006, -0.381674,
		34.705910, 33.637962, 52.562668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578346, 33.859257, 52.515301>,  <34.960056, 34.232967, 52.829838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578346, 33.859257, 52.515301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262489, 33.687500, 52.339989>,  <35.072975, 33.584446, 52.234802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262489, 33.687500, 52.339989>,  <35.578346, 33.859257, 52.515301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262489, 33.687500, 52.339989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544251, -0.160353, -0.823455,
		0.283307, -0.888767, 0.360320,
		-0.789638, -0.429395, -0.438283,
		35.025597, 33.558681, 52.208504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929443, 33.375278, 52.166245>,  <35.578346, 33.859257, 52.515301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929443, 33.375278, 52.166245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574722, 33.405659, 51.983898>,  <35.361889, 33.423889, 51.874489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574722, 33.405659, 51.983898>,  <35.929443, 33.375278, 52.166245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574722, 33.405659, 51.983898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450337, -0.079606, -0.889303,
		-0.103844, -0.993928, 0.036386,
		-0.886800, 0.075963, -0.455869,
		35.308681, 33.428444, 51.847137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824696, 32.830780, 51.684010>,  <35.929443, 33.375278, 52.166245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824696, 32.830780, 51.684010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569725, 33.108646, 51.550659>,  <35.416744, 33.275364, 51.470650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569725, 33.108646, 51.550659>,  <35.824696, 32.830780, 51.684010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569725, 33.108646, 51.550659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367597, -0.106083, -0.923915,
		-0.677175, -0.711470, -0.187736,
		-0.637422, 0.694663, -0.333371,
		35.378498, 33.317047, 51.450649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649494, 32.757343, 50.900654>,  <35.824696, 32.830780, 51.684010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649494, 32.757343, 50.900654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512844, 33.130520, 50.946102>,  <35.430855, 33.354427, 50.973370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512844, 33.130520, 50.946102>,  <35.649494, 32.757343, 50.900654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512844, 33.130520, 50.946102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368994, 0.244326, -0.896743,
		-0.864371, -0.264424, -0.427718,
		-0.341623, 0.932944, 0.113618,
		35.410358, 33.410404, 50.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568562, 33.057823, 50.203815>,  <35.649494, 32.757343, 50.900654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568562, 33.057823, 50.203815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565319, 33.391987, 50.423641>,  <35.563374, 33.592484, 50.555538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565319, 33.391987, 50.423641>,  <35.568562, 33.057823, 50.203815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565319, 33.391987, 50.423641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267911, 0.531307, -0.803702,
		-0.963410, 0.140721, -0.228122,
		-0.008105, 0.835410, 0.549567,
		35.562889, 33.642609, 50.588512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182030, 33.539326, 49.749672>,  <35.568562, 33.057823, 50.203815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182030, 33.539326, 49.749672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405094, 33.758877, 49.998749>,  <35.538933, 33.890610, 50.148197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405094, 33.758877, 49.998749>,  <35.182030, 33.539326, 49.749672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405094, 33.758877, 49.998749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299635, 0.566480, -0.767671,
		-0.774104, 0.614678, 0.151438,
		0.557657, 0.548882, 0.622694,
		35.572392, 33.923542, 50.185558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122883, 34.303776, 49.634056>,  <35.182030, 33.539326, 49.749672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122883, 34.303776, 49.634056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494366, 34.266819, 49.777702>,  <35.717255, 34.244644, 49.863892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494366, 34.266819, 49.777702>,  <35.122883, 34.303776, 49.634056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494366, 34.266819, 49.777702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360936, 0.447262, -0.818341,
		-0.085012, 0.889618, 0.448723,
		0.928708, -0.092392, 0.359118,
		35.772980, 34.239101, 49.885437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446598, 34.998508, 49.627445>,  <35.122883, 34.303776, 49.634056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446598, 34.998508, 49.627445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746628, 34.733971, 49.628735>,  <35.926647, 34.575249, 49.629509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746628, 34.733971, 49.628735>,  <35.446598, 34.998508, 49.627445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746628, 34.733971, 49.628735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443771, 0.499686, -0.743896,
		0.490359, 0.559411, 0.668287,
		0.750077, -0.661343, 0.003225,
		35.971649, 34.535568, 49.629704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104290, 35.397453, 49.609547>,  <35.446598, 34.998508, 49.627445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104290, 35.397453, 49.609547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218052, 35.036556, 49.479885>,  <36.286308, 34.820019, 49.402088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218052, 35.036556, 49.479885>,  <36.104290, 35.397453, 49.609547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218052, 35.036556, 49.479885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128000, 0.370824, -0.919840,
		0.950121, 0.220115, 0.220951,
		0.284405, -0.902241, -0.324153,
		36.303375, 34.765884, 49.382641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510468, 35.525742, 49.097340>,  <36.104290, 35.397453, 49.609547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510468, 35.525742, 49.097340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443924, 35.141296, 49.009171>,  <36.403996, 34.910629, 48.956268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443924, 35.141296, 49.009171>,  <36.510468, 35.525742, 49.097340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443924, 35.141296, 49.009171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059991, 0.213259, -0.975152,
		0.984238, -0.175453, 0.022180,
		-0.166363, -0.961112, -0.220423,
		36.394016, 34.852962, 48.943043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.204006, 37.162647, 43.081673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895031, 37.252766, 43.319187>,  <45.709648, 37.306835, 43.461697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895031, 37.252766, 43.319187>,  <46.204006, 37.162647, 43.081673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895031, 37.252766, 43.319187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634905, -0.296640, -0.713372,
		0.015421, -0.928034, 0.372177,
		-0.772436, 0.225297, 0.593788,
		45.663300, 37.320354, 43.497322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861904, 36.533333, 43.269913>,  <46.204006, 37.162647, 43.081673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861904, 36.533333, 43.269913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605526, 36.837799, 43.309566>,  <45.451698, 37.020477, 43.333359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605526, 36.837799, 43.309566>,  <45.861904, 36.533333, 43.269913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605526, 36.837799, 43.309566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579717, -0.395362, -0.712473,
		-0.503112, -0.514124, 0.694662,
		-0.640942, 0.761161, 0.099136,
		45.413242, 37.066147, 43.339306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200306, 36.227230, 43.263840>,  <45.861904, 36.533333, 43.269913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200306, 36.227230, 43.263840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126549, 36.606441, 43.160114>,  <45.082294, 36.833969, 43.097878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126549, 36.606441, 43.160114>,  <45.200306, 36.227230, 43.263840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126549, 36.606441, 43.160114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539758, -0.318165, -0.779379,
		-0.821378, -0.003742, 0.570372,
		-0.184389, 0.948028, -0.259314,
		45.071232, 36.890850, 43.082321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469578, 36.206753, 43.082363>,  <45.200306, 36.227230, 43.263840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469578, 36.206753, 43.082363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649593, 36.523010, 42.916302>,  <44.757603, 36.712765, 42.816666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649593, 36.523010, 42.916302>,  <44.469578, 36.206753, 43.082363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649593, 36.523010, 42.916302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338024, -0.279479, -0.898683,
		-0.826564, 0.544770, 0.141481,
		0.450035, 0.790643, -0.415153,
		44.784603, 36.760204, 42.791756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965492, 36.436718, 42.464638>,  <44.469578, 36.206753, 43.082363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965492, 36.436718, 42.464638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302006, 36.627892, 42.363579>,  <44.503914, 36.742596, 42.302944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302006, 36.627892, 42.363579>,  <43.965492, 36.436718, 42.464638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302006, 36.627892, 42.363579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195581, -0.166604, -0.966432,
		-0.503980, 0.862453, -0.046687,
		0.841280, 0.477931, -0.252645,
		44.554390, 36.771271, 42.287785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802055, 36.736134, 41.930382>,  <43.965492, 36.436718, 42.464638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802055, 36.736134, 41.930382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200874, 36.731773, 41.899982>,  <44.440166, 36.729156, 41.881741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200874, 36.731773, 41.899982>,  <43.802055, 36.736134, 41.930382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200874, 36.731773, 41.899982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076775, -0.132867, -0.988156,
		0.000676, 0.991074, -0.133312,
		0.997048, -0.010903, -0.076000,
		44.499989, 36.728504, 41.877182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862778, 37.175625, 41.446014>,  <43.802055, 36.736134, 41.930382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862778, 37.175625, 41.446014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201462, 36.962807, 41.446011>,  <44.404675, 36.835114, 41.446007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201462, 36.962807, 41.446011>,  <43.862778, 37.175625, 41.446014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201462, 36.962807, 41.446011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066020, -0.105039, -0.992274,
		0.527938, 0.840173, -0.124064,
		0.846713, -0.532050, -0.000014,
		44.455475, 36.803192, 41.446007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293041, 37.399364, 40.909714>,  <43.862778, 37.175625, 41.446014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293041, 37.399364, 40.909714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405994, 37.025471, 40.996002>,  <44.473766, 36.801136, 41.047775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405994, 37.025471, 40.996002>,  <44.293041, 37.399364, 40.909714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405994, 37.025471, 40.996002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064030, -0.206005, -0.976454,
		0.957162, 0.289548, 0.001678,
		0.282385, -0.934732, 0.215720,
		44.490711, 36.745052, 41.060719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807632, 37.246780, 40.356598>,  <44.293041, 37.399364, 40.909714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807632, 37.246780, 40.356598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700901, 36.901508, 40.528049>,  <44.636864, 36.694344, 40.630920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700901, 36.901508, 40.528049>,  <44.807632, 37.246780, 40.356598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700901, 36.901508, 40.528049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109412, -0.469010, -0.876389,
		0.957514, -0.186947, 0.219587,
		-0.266827, -0.863180, 0.428630,
		44.620853, 36.642555, 40.656639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255173, 36.845428, 40.118122>,  <44.807632, 37.246780, 40.356598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255173, 36.845428, 40.118122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947727, 36.610996, 40.220688>,  <44.763260, 36.470337, 40.282227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947727, 36.610996, 40.220688>,  <45.255173, 36.845428, 40.118122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947727, 36.610996, 40.220688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059280, -0.333849, -0.940761,
		0.636963, -0.738280, 0.221857,
		-0.768612, -0.586078, 0.256415,
		44.717144, 36.435173, 40.297611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343983, 36.224812, 39.738419>,  <45.255173, 36.845428, 40.118122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343983, 36.224812, 39.738419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954414, 36.178463, 39.816441>,  <44.720673, 36.150654, 39.863255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954414, 36.178463, 39.816441>,  <45.343983, 36.224812, 39.738419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954414, 36.178463, 39.816441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154244, -0.292335, -0.943795,
		0.166379, -0.949271, 0.266840,
		-0.973923, -0.115869, 0.195057,
		44.662239, 36.143703, 39.874958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108288, 35.579300, 39.431793>,  <45.343983, 36.224812, 39.738419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108288, 35.579300, 39.431793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739498, 35.718513, 39.499710>,  <44.518223, 35.802044, 39.540462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739498, 35.718513, 39.499710>,  <45.108288, 35.579300, 39.431793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739498, 35.718513, 39.499710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335976, -0.500877, -0.797648,
		-0.192565, -0.792459, 0.578729,
		-0.921975, 0.348038, 0.169796,
		44.462906, 35.822926, 39.550648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625584, 34.987885, 39.332840>,  <45.108288, 35.579300, 39.431793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625584, 34.987885, 39.332840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421955, 35.323025, 39.253990>,  <44.299778, 35.524109, 39.206680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421955, 35.323025, 39.253990>,  <44.625584, 34.987885, 39.332840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421955, 35.323025, 39.253990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538489, -0.488685, -0.686453,
		-0.671474, -0.243305, 0.699947,
		-0.509071, 0.837848, -0.197122,
		44.269234, 35.574379, 39.194855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924480, 34.773876, 39.497032>,  <44.625584, 34.987885, 39.332840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924480, 34.773876, 39.497032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.936810, 35.090099, 39.252384>,  <43.944206, 35.279831, 39.105595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.936810, 35.090099, 39.252384>,  <43.924480, 34.773876, 39.497032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936810, 35.090099, 39.252384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576375, -0.485865, -0.657058,
		-0.816603, 0.372772, 0.440681,
		0.030822, 0.790554, -0.611616,
		43.946056, 35.327267, 39.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352310, 34.794224, 39.189598>,  <43.924480, 34.773876, 39.497032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352310, 34.794224, 39.189598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541092, 35.045155, 38.941818>,  <43.654362, 35.195713, 38.793152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541092, 35.045155, 38.941818>,  <43.352310, 34.794224, 39.189598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541092, 35.045155, 38.941818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430690, -0.449020, -0.782871,
		-0.769264, 0.636268, 0.058269,
		0.471952, 0.627331, -0.619450,
		43.682678, 35.233353, 38.755981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888828, 35.129303, 38.791740>,  <43.352310, 34.794224, 39.189598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888828, 35.129303, 38.791740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225040, 35.125656, 38.575062>,  <43.426765, 35.123466, 38.445057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225040, 35.125656, 38.575062>,  <42.888828, 35.129303, 38.791740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225040, 35.125656, 38.575062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495501, -0.417245, -0.761831,
		-0.219073, 0.908748, -0.355223,
		0.840527, -0.009117, -0.541693,
		43.477200, 35.122921, 38.412556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677910, 35.225330, 38.111755>,  <42.888828, 35.129303, 38.791740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677910, 35.225330, 38.111755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043442, 35.069523, 38.065823>,  <43.262760, 34.976040, 38.038265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043442, 35.069523, 38.065823>,  <42.677910, 35.225330, 38.111755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043442, 35.069523, 38.065823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265741, -0.359779, -0.894394,
		0.307069, 0.847842, -0.432289,
		0.913833, -0.389517, -0.114829,
		43.317593, 34.952667, 38.031372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938473, 35.447937, 37.422592>,  <42.677910, 35.225330, 38.111755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938473, 35.447937, 37.422592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118584, 35.103889, 37.518467>,  <43.226650, 34.897461, 37.575993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118584, 35.103889, 37.518467>,  <42.938473, 35.447937, 37.422592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118584, 35.103889, 37.518467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261982, -0.383887, -0.885436,
		0.853592, 0.335896, -0.398190,
		0.450274, -0.860119, 0.239684,
		43.253666, 34.845852, 37.590374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007690, 35.128605, 36.696571>,  <42.938473, 35.447937, 37.422592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007690, 35.128605, 36.696571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138348, 34.828201, 36.926105>,  <43.216740, 34.647961, 37.063828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138348, 34.828201, 36.926105>,  <43.007690, 35.128605, 36.696571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138348, 34.828201, 36.926105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050369, -0.620112, -0.782895,
		0.943805, 0.226822, -0.240382,
		0.326641, -0.751008, 0.573840,
		43.236340, 34.602898, 37.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585461, 34.760834, 36.378792>,  <43.007690, 35.128605, 36.696571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585461, 34.760834, 36.378792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.407448, 34.501465, 36.625851>,  <43.300640, 34.345844, 36.774086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.407448, 34.501465, 36.625851>,  <43.585461, 34.760834, 36.378792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407448, 34.501465, 36.625851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187373, -0.607024, -0.772277,
		0.875692, -0.459420, 0.148648,
		-0.445032, -0.648425, 0.617650,
		43.273937, 34.306938, 36.811146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838543, 34.155361, 36.275272>,  <43.585461, 34.760834, 36.378792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838543, 34.155361, 36.275272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472801, 34.089954, 36.423443>,  <43.253357, 34.050713, 36.512344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472801, 34.089954, 36.423443>,  <43.838543, 34.155361, 36.275272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472801, 34.089954, 36.423443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279079, -0.408345, -0.869120,
		0.293375, -0.898063, 0.327740,
		-0.914355, -0.163513, 0.370429,
		43.198494, 34.040901, 36.534573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388992, 34.284409, 35.729004>,  <43.838543, 34.155361, 36.275272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388992, 34.284409, 35.729004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704620, 34.395710, 35.509937>,  <44.893997, 34.462490, 35.378498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704620, 34.395710, 35.509937>,  <44.388992, 34.284409, 35.729004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704620, 34.395710, 35.509937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269756, 0.644023, 0.715867,
		0.551898, -0.712609, 0.433124,
		0.789075, 0.278248, -0.547666,
		44.941341, 34.479183, 35.345638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977428, 34.472233, 36.162910>,  <44.388992, 34.284409, 35.729004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977428, 34.472233, 36.162910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107826, 34.654774, 35.831738>,  <45.186066, 34.764297, 35.633034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107826, 34.654774, 35.831738>,  <44.977428, 34.472233, 36.162910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107826, 34.654774, 35.831738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344927, 0.757985, 0.553610,
		0.880200, -0.466050, 0.089692,
		0.325996, 0.456351, -0.827932,
		45.205624, 34.791679, 35.583359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681686, 34.701309, 36.388817>,  <44.977428, 34.472233, 36.162910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681686, 34.701309, 36.388817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611588, 34.914040, 36.057407>,  <45.569527, 35.041679, 35.858562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611588, 34.914040, 36.057407>,  <45.681686, 34.701309, 36.388817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611588, 34.914040, 36.057407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589401, 0.730751, 0.344397,
		0.788603, -0.427977, -0.441522,
		-0.175249, 0.531826, -0.828522,
		45.559013, 35.073586, 35.808849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386784, 35.065105, 36.186733>,  <45.681686, 34.701309, 36.388817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386784, 35.065105, 36.186733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.075481, 35.268471, 36.039314>,  <45.888699, 35.390491, 35.950863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.075481, 35.268471, 36.039314>,  <46.386784, 35.065105, 36.186733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.075481, 35.268471, 36.039314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419473, 0.857676, 0.297380,
		0.467284, 0.076844, -0.880761,
		-0.778260, 0.508416, -0.368544,
		45.842003, 35.420994, 35.928753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709286, 35.695499, 35.984303>,  <46.386784, 35.065105, 36.186733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709286, 35.695499, 35.984303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.314377, 35.751423, 36.014648>,  <46.077431, 35.784977, 36.032856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.314377, 35.751423, 36.014648>,  <46.709286, 35.695499, 35.984303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314377, 35.751423, 36.014648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158936, 0.847749, 0.506025,
		0.006429, 0.511640, -0.859176,
		-0.987268, 0.139807, 0.075867,
		46.018196, 35.793365, 36.037407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464058, 36.357460, 35.617352>,  <46.709286, 35.695499, 35.984303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464058, 36.357460, 35.617352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.194492, 36.278004, 35.901993>,  <46.032753, 36.230331, 36.072777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.194492, 36.278004, 35.901993>,  <46.464058, 36.357460, 35.617352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194492, 36.278004, 35.901993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217946, 0.866865, 0.448381,
		-0.705928, 0.457263, -0.540903,
		-0.673918, -0.198637, 0.711603,
		45.992317, 36.218414, 36.115475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366386, 37.024269, 35.822224>,  <46.464058, 36.357460, 35.617352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366386, 37.024269, 35.822224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.193989, 36.806625, 36.110165>,  <46.090549, 36.676041, 36.282928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.193989, 36.806625, 36.110165>,  <46.366386, 37.024269, 35.822224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.193989, 36.806625, 36.110165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081350, 0.771074, 0.631527,
		-0.898680, 0.330746, -0.288066,
		-0.430995, -0.544107, 0.719855,
		46.064690, 36.643394, 36.326122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904537, 37.427395, 36.070084>,  <46.366386, 37.024269, 35.822224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904537, 37.427395, 36.070084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.001190, 37.157398, 36.348938>,  <46.059181, 36.995399, 36.516251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.001190, 37.157398, 36.348938>,  <45.904537, 37.427395, 36.070084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001190, 37.157398, 36.348938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055741, 0.726895, 0.684482,
		-0.968767, -0.126531, 0.213263,
		0.241628, -0.674991, 0.697139,
		46.073677, 36.954903, 36.558079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428379, 37.564297, 36.637630>,  <45.904537, 37.427395, 36.070084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428379, 37.564297, 36.637630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.715675, 37.340168, 36.802635>,  <45.888054, 37.205688, 36.901638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.715675, 37.340168, 36.802635>,  <45.428379, 37.564297, 36.637630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715675, 37.340168, 36.802635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050472, 0.633260, 0.772292,
		-0.693960, -0.533872, 0.483114,
		0.718242, -0.560324, 0.412511,
		45.931149, 37.172070, 36.926388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307537, 37.734375, 37.279652>,  <45.428379, 37.564297, 36.637630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307537, 37.734375, 37.279652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655495, 37.545177, 37.335598>,  <45.864269, 37.431660, 37.369164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655495, 37.545177, 37.335598>,  <45.307537, 37.734375, 37.279652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655495, 37.545177, 37.335598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096152, 0.440735, 0.892473,
		-0.483775, -0.762909, 0.428872,
		0.869894, -0.472993, 0.139861,
		45.916462, 37.403278, 37.377556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362709, 37.200310, 37.947353>,  <45.307537, 37.734375, 37.279652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362709, 37.200310, 37.947353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730511, 37.329758, 37.858109>,  <45.951191, 37.407425, 37.804562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730511, 37.329758, 37.858109>,  <45.362709, 37.200310, 37.947353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730511, 37.329758, 37.858109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174495, 0.172552, 0.969421,
		0.352219, -0.930322, 0.102193,
		0.919507, 0.323616, -0.223113,
		46.006363, 37.426842, 37.791176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800732, 36.860085, 38.377125>,  <45.362709, 37.200310, 37.947353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800732, 36.860085, 38.377125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.986553, 37.194881, 38.261448>,  <46.098045, 37.395760, 38.192043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.986553, 37.194881, 38.261448>,  <45.800732, 36.860085, 38.377125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.986553, 37.194881, 38.261448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269614, 0.177382, 0.946490,
		0.843503, -0.517667, -0.143261,
		0.464555, 0.836992, -0.289192,
		46.125919, 37.445980, 38.174690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294411, 36.954384, 38.967403>,  <45.800732, 36.860085, 38.377125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294411, 36.954384, 38.967403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.341316, 37.310215, 38.790813>,  <46.369461, 37.523712, 38.684860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.341316, 37.310215, 38.790813>,  <46.294411, 36.954384, 38.967403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341316, 37.310215, 38.790813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163149, 0.421249, 0.892150,
		0.979608, -0.176644, -0.095736,
		0.117264, 0.889576, -0.441478,
		46.376495, 37.577087, 38.658371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919971, 37.222744, 39.262882>,  <46.294411, 36.954384, 38.967403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919971, 37.222744, 39.262882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.717506, 37.534874, 39.115974>,  <46.596027, 37.722153, 39.027832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.717506, 37.534874, 39.115974>,  <46.919971, 37.222744, 39.262882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717506, 37.534874, 39.115974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198166, 0.519685, 0.831059,
		0.839361, 0.347874, -0.417681,
		-0.506166, 0.780328, -0.367266,
		46.565659, 37.768974, 39.005795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177315, 37.787189, 39.629562>,  <46.919971, 37.222744, 39.262882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177315, 37.787189, 39.629562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.836151, 37.933456, 39.480522>,  <46.631451, 38.021217, 39.391098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.836151, 37.933456, 39.480522>,  <47.177315, 37.787189, 39.629562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836151, 37.933456, 39.480522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039064, 0.667011, 0.744023,
		0.520593, 0.649141, -0.554616,
		-0.852911, 0.365667, -0.372599,
		46.580276, 38.043156, 39.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.335072, 38.546734, 39.614201>,  <47.177315, 37.787189, 39.629562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.335072, 38.546734, 39.614201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.944553, 38.460945, 39.602516>,  <46.710243, 38.409470, 39.595505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.944553, 38.460945, 39.602516>,  <47.335072, 38.546734, 39.614201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944553, 38.460945, 39.602516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152805, 0.587327, 0.794794,
		-0.153307, 0.780416, -0.606175,
		-0.976293, -0.214474, -0.029210,
		46.651665, 38.396603, 39.593754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031357, 39.149929, 39.844555>,  <47.335072, 38.546734, 39.614201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031357, 39.149929, 39.844555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737980, 38.882339, 39.892784>,  <46.561954, 38.721786, 39.921722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737980, 38.882339, 39.892784>,  <47.031357, 39.149929, 39.844555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737980, 38.882339, 39.892784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264832, 0.444580, 0.855694,
		-0.626041, 0.595670, -0.503239,
		-0.733441, -0.668974, 0.120573,
		46.517948, 38.681648, 39.928955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492119, 39.453808, 40.040466>,  <47.031357, 39.149929, 39.844555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492119, 39.453808, 40.040466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.352459, 39.099438, 40.162598>,  <46.268661, 38.886814, 40.235878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.352459, 39.099438, 40.162598>,  <46.492119, 39.453808, 40.040466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352459, 39.099438, 40.162598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372516, 0.430207, 0.822286,
		-0.859841, 0.173360, -0.480229,
		-0.349150, -0.885928, 0.305330,
		46.247715, 38.833660, 40.254196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871983, 39.589340, 40.323112>,  <46.492119, 39.453808, 40.040466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871983, 39.589340, 40.323112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.989182, 39.239140, 40.476818>,  <46.059502, 39.029018, 40.569042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.989182, 39.239140, 40.476818>,  <45.871983, 39.589340, 40.323112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989182, 39.239140, 40.476818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435426, 0.235623, 0.868842,
		-0.851210, -0.421884, -0.312178,
		0.292994, -0.875498, 0.384264,
		46.077080, 38.976490, 40.592098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268101, 39.263535, 40.694153>,  <45.871983, 39.589340, 40.323112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268101, 39.263535, 40.694153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584564, 39.117035, 40.890087>,  <45.774441, 39.029137, 41.007648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584564, 39.117035, 40.890087>,  <45.268101, 39.263535, 40.694153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584564, 39.117035, 40.890087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340748, 0.401131, 0.850285,
		-0.507899, -0.839619, 0.192560,
		0.791157, -0.366245, 0.489832,
		45.821911, 39.007160, 41.037037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066254, 39.099022, 41.315178>,  <45.268101, 39.263535, 40.694153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066254, 39.099022, 41.315178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457867, 39.110035, 41.395908>,  <45.692833, 39.116642, 41.444347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457867, 39.110035, 41.395908>,  <45.066254, 39.099022, 41.315178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457867, 39.110035, 41.395908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203324, 0.192092, 0.960083,
		-0.012339, -0.980991, 0.193662,
		0.979034, 0.027530, 0.201829,
		45.751575, 39.118294, 41.456455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.575951, 36.120270, 45.619812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267792, 35.866291, 45.642876>,  <40.082897, 35.713905, 45.656715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267792, 35.866291, 45.642876>,  <40.575951, 36.120270, 45.619812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267792, 35.866291, 45.642876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014132, -0.107429, -0.994112,
		0.637403, -0.765050, 0.091737,
		-0.770401, -0.634946, 0.057664,
		40.036671, 35.675808, 45.660175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750305, 35.601662, 45.228889>,  <40.575951, 36.120270, 45.619812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750305, 35.601662, 45.228889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351360, 35.576286, 45.243042>,  <40.111996, 35.561062, 45.251534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351360, 35.576286, 45.243042>,  <40.750305, 35.601662, 45.228889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351360, 35.576286, 45.243042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032333, -0.048437, -0.998303,
		0.065042, -0.996810, 0.046258,
		-0.997358, -0.063436, 0.035380,
		40.052155, 35.557255, 45.253654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486691, 34.947605, 44.855789>,  <40.750305, 35.601662, 45.228889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486691, 34.947605, 44.855789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203842, 35.230309, 44.847137>,  <40.034134, 35.399929, 44.841946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203842, 35.230309, 44.847137>,  <40.486691, 34.947605, 44.855789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203842, 35.230309, 44.847137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075320, -0.105709, -0.991540,
		-0.703067, -0.699512, 0.127983,
		-0.707123, 0.706759, -0.021633,
		39.991707, 35.442337, 44.840649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198620, 34.732147, 44.296875>,  <40.486691, 34.947605, 44.855789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198620, 34.732147, 44.296875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002441, 35.075790, 44.355373>,  <39.884735, 35.281979, 44.390472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002441, 35.075790, 44.355373>,  <40.198620, 34.732147, 44.296875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002441, 35.075790, 44.355373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302664, -0.010549, -0.953039,
		-0.817223, -0.511682, 0.265195,
		-0.490451, 0.859110, 0.146247,
		39.855305, 35.333523, 44.399246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876358, 34.739120, 43.681492>,  <40.198620, 34.732147, 44.296875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876358, 34.739120, 43.681492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814507, 35.108612, 43.821671>,  <39.777397, 35.330307, 43.905777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814507, 35.108612, 43.821671>,  <39.876358, 34.739120, 43.681492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814507, 35.108612, 43.821671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202647, 0.317521, -0.926345,
		-0.966967, -0.214253, 0.138095,
		-0.154624, 0.923729, 0.350450,
		39.768120, 35.385731, 43.926807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260620, 34.904285, 43.427483>,  <39.876358, 34.739120, 43.681492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260620, 34.904285, 43.427483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442196, 35.253944, 43.496525>,  <39.551144, 35.463741, 43.537952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442196, 35.253944, 43.496525>,  <39.260620, 34.904285, 43.427483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442196, 35.253944, 43.496525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098385, 0.241706, -0.965349,
		-0.885582, 0.421232, 0.195724,
		0.453944, 0.874152, 0.172608,
		39.578381, 35.516190, 43.548306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964443, 35.514736, 43.020947>,  <39.260620, 34.904285, 43.427483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964443, 35.514736, 43.020947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319695, 35.679913, 43.101662>,  <39.532845, 35.779018, 43.150089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319695, 35.679913, 43.101662>,  <38.964443, 35.514736, 43.020947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319695, 35.679913, 43.101662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003424, 0.444975, -0.895536,
		-0.459591, 0.794656, 0.396607,
		0.888124, 0.412939, 0.201786,
		39.586132, 35.803795, 43.162197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830158, 36.204823, 42.881905>,  <38.964443, 35.514736, 43.020947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830158, 36.204823, 42.881905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220886, 36.127457, 42.845196>,  <39.455322, 36.081039, 42.823170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220886, 36.127457, 42.845196>,  <38.830158, 36.204823, 42.881905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220886, 36.127457, 42.845196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016748, 0.358341, -0.933440,
		0.213426, 0.913336, 0.346794,
		0.976816, -0.193412, -0.091776,
		39.513931, 36.069431, 42.817661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106339, 36.726788, 42.535755>,  <38.830158, 36.204823, 42.881905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106339, 36.726788, 42.535755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399071, 36.455631, 42.507782>,  <39.574711, 36.292938, 42.490997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399071, 36.455631, 42.507782>,  <39.106339, 36.726788, 42.535755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399071, 36.455631, 42.507782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120762, 0.229989, -0.965672,
		0.670702, 0.698262, 0.250176,
		0.731830, -0.677890, -0.069931,
		39.618618, 36.252266, 42.486801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516716, 36.983910, 42.082069>,  <39.106339, 36.726788, 42.535755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516716, 36.983910, 42.082069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610157, 36.595318, 42.065792>,  <39.666222, 36.362164, 42.056026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610157, 36.595318, 42.065792>,  <39.516716, 36.983910, 42.082069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610157, 36.595318, 42.065792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015101, 0.045475, -0.998851,
		0.972214, 0.232722, 0.025294,
		0.233605, -0.971479, -0.040697,
		39.680237, 36.303875, 42.053581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944977, 36.947006, 41.500454>,  <39.516716, 36.983910, 42.082069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944977, 36.947006, 41.500454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835159, 36.569866, 41.575981>,  <39.769268, 36.343582, 41.621296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835159, 36.569866, 41.575981>,  <39.944977, 36.947006, 41.500454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835159, 36.569866, 41.575981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038427, -0.185445, -0.981903,
		0.960806, -0.276832, 0.014682,
		-0.274545, -0.942854, 0.188814,
		39.752796, 36.287010, 41.632626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363335, 36.606285, 41.076611>,  <39.944977, 36.947006, 41.500454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363335, 36.606285, 41.076611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057171, 36.362053, 41.157940>,  <39.873474, 36.215511, 41.206738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057171, 36.362053, 41.157940>,  <40.363335, 36.606285, 41.076611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057171, 36.362053, 41.157940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107501, -0.190193, -0.975843,
		0.634505, -0.768774, 0.079937,
		-0.765406, -0.610585, 0.203322,
		39.827549, 36.178879, 41.218937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446018, 35.910175, 40.563129>,  <40.363335, 36.606285, 41.076611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446018, 35.910175, 40.563129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070721, 35.949963, 40.695675>,  <39.845543, 35.973835, 40.775204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070721, 35.949963, 40.695675>,  <40.446018, 35.910175, 40.563129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070721, 35.949963, 40.695675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344311, -0.174771, -0.922445,
		-0.033842, -0.979572, 0.198226,
		-0.938246, 0.099469, 0.331363,
		39.789246, 35.979801, 40.795082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145657, 35.304714, 40.311241>,  <40.446018, 35.910175, 40.563129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145657, 35.304714, 40.311241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893684, 35.611134, 40.362400>,  <39.742500, 35.794983, 40.393093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893684, 35.611134, 40.362400>,  <40.145657, 35.304714, 40.311241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893684, 35.611134, 40.362400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437987, -0.214408, -0.873039,
		-0.641366, -0.605973, 0.470581,
		-0.629934, 0.766046, 0.127894,
		39.704704, 35.840946, 40.400768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551292, 34.954166, 39.884346>,  <40.145657, 35.304714, 40.311241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551292, 34.954166, 39.884346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666775, 34.587978, 39.772228>,  <40.736065, 34.368267, 39.704956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666775, 34.587978, 39.772228>,  <40.551292, 34.954166, 39.884346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666775, 34.587978, 39.772228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545080, -0.397845, 0.737975,
		-0.787108, -0.060273, -0.613863,
		0.288703, -0.915471, -0.280293,
		40.753387, 34.313335, 39.688141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879959, 34.568184, 40.011551>,  <40.551292, 34.954166, 39.884346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879959, 34.568184, 40.011551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205982, 34.337654, 39.987789>,  <40.401596, 34.199337, 39.973530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205982, 34.337654, 39.987789>,  <39.879959, 34.568184, 40.011551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205982, 34.337654, 39.987789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406240, -0.641587, 0.650642,
		-0.413094, -0.506179, -0.757057,
		0.815060, -0.576323, -0.059406,
		40.450500, 34.164757, 39.969967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662094, 33.910961, 39.960678>,  <39.879959, 34.568184, 40.011551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662094, 33.910961, 39.960678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036438, 33.870388, 40.095661>,  <40.261044, 33.846043, 40.176651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036438, 33.870388, 40.095661>,  <39.662094, 33.910961, 39.960678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036438, 33.870388, 40.095661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309145, -0.695944, 0.648144,
		0.169111, -0.710896, -0.682663,
		0.935859, -0.101434, 0.337462,
		40.317196, 33.839958, 40.196899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765263, 33.170467, 40.112312>,  <39.662094, 33.910961, 39.960678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765263, 33.170467, 40.112312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028591, 33.367767, 40.339756>,  <40.186588, 33.486149, 40.476223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028591, 33.367767, 40.339756>,  <39.765263, 33.170467, 40.112312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028591, 33.367767, 40.339756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258713, -0.561107, 0.786274,
		0.706881, -0.664727, -0.241777,
		0.658321, 0.493252, 0.568610,
		40.226086, 33.515743, 40.510338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151688, 32.648380, 40.504002>,  <39.765263, 33.170467, 40.112312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151688, 32.648380, 40.504002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230595, 32.994907, 40.687561>,  <40.277939, 33.202824, 40.797695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230595, 32.994907, 40.687561>,  <40.151688, 32.648380, 40.504002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230595, 32.994907, 40.687561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194472, -0.424211, 0.884435,
		0.960867, -0.263715, 0.084789,
		0.197271, 0.866313, 0.458895,
		40.289776, 33.254803, 40.825230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391750, 32.392090, 41.135761>,  <40.151688, 32.648380, 40.504002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391750, 32.392090, 41.135761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339005, 32.783043, 41.201889>,  <40.307358, 33.017616, 41.241566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339005, 32.783043, 41.201889>,  <40.391750, 32.392090, 41.135761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339005, 32.783043, 41.201889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098974, -0.178924, 0.978872,
		0.986314, 0.112716, 0.120329,
		-0.131864, 0.977385, 0.165320,
		40.299446, 33.076260, 41.251484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709007, 32.422146, 41.799736>,  <40.391750, 32.392090, 41.135761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709007, 32.422146, 41.799736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497192, 32.758747, 41.756920>,  <40.370102, 32.960709, 41.731232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497192, 32.758747, 41.756920>,  <40.709007, 32.422146, 41.799736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497192, 32.758747, 41.756920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164985, 0.021606, 0.986060,
		0.832088, 0.539816, 0.127394,
		-0.529538, 0.841506, -0.107039,
		40.338329, 33.011200, 41.724808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965603, 32.941238, 42.257610>,  <40.709007, 32.422146, 41.799736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965603, 32.941238, 42.257610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585384, 33.025154, 42.166008>,  <40.357254, 33.075504, 42.111046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585384, 33.025154, 42.166008>,  <40.965603, 32.941238, 42.257610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585384, 33.025154, 42.166008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236204, -0.009568, 0.971656,
		0.201652, 0.977700, 0.058648,
		-0.950549, 0.209789, -0.229008,
		40.300220, 33.088089, 42.097305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680740, 33.446159, 42.753857>,  <40.965603, 32.941238, 42.257610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680740, 33.446159, 42.753857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366501, 33.230705, 42.632072>,  <40.177956, 33.101433, 42.559002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366501, 33.230705, 42.632072>,  <40.680740, 33.446159, 42.753857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366501, 33.230705, 42.632072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359271, -0.003505, 0.933227,
		-0.503740, 0.842529, -0.190763,
		-0.785602, -0.538639, -0.304462,
		40.130821, 33.069115, 42.540733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158730, 33.720753, 43.048840>,  <40.680740, 33.446159, 42.753857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158730, 33.720753, 43.048840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007374, 33.361488, 42.959290>,  <39.916561, 33.145927, 42.905560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007374, 33.361488, 42.959290>,  <40.158730, 33.720753, 43.048840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007374, 33.361488, 42.959290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598067, 0.052624, 0.799717,
		-0.706495, 0.436500, -0.557074,
		-0.378392, -0.898163, -0.223878,
		39.893856, 33.092041, 42.892128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509220, 33.796391, 43.382240>,  <40.158730, 33.720753, 43.048840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509220, 33.796391, 43.382240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608078, 33.413124, 43.324493>,  <39.667393, 33.183167, 43.289845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608078, 33.413124, 43.324493>,  <39.509220, 33.796391, 43.382240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608078, 33.413124, 43.324493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581187, -0.265795, 0.769139,
		-0.775333, -0.106186, -0.622562,
		0.247146, -0.958164, -0.144365,
		39.682220, 33.125675, 43.281185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792477, 33.432938, 43.441166>,  <39.509220, 33.796391, 43.382240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792477, 33.432938, 43.441166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042278, 33.123478, 43.483978>,  <39.192158, 32.937801, 43.509666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042278, 33.123478, 43.483978>,  <38.792477, 33.432938, 43.441166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042278, 33.123478, 43.483978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512636, -0.302653, 0.803496,
		-0.589235, -0.556652, -0.585611,
		0.624504, -0.773654, 0.107026,
		39.229630, 32.891380, 43.516087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377579, 32.812675, 43.586002>,  <38.792477, 33.432938, 43.441166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377579, 32.812675, 43.586002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748730, 32.734756, 43.713184>,  <38.971420, 32.688004, 43.789494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748730, 32.734756, 43.713184>,  <38.377579, 32.812675, 43.586002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748730, 32.734756, 43.713184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366207, -0.315437, 0.875438,
		-0.070238, -0.928738, -0.364023,
		0.927879, -0.194797, 0.317955,
		39.027092, 32.676315, 43.808571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294743, 32.244934, 44.015133>,  <38.377579, 32.812675, 43.586002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294743, 32.244934, 44.015133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655853, 32.377079, 44.125298>,  <38.872520, 32.456367, 44.191399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655853, 32.377079, 44.125298>,  <38.294743, 32.244934, 44.015133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655853, 32.377079, 44.125298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197932, -0.249404, 0.947956,
		0.381858, -0.910307, -0.159767,
		0.902778, 0.330362, 0.275416,
		38.926685, 32.476189, 44.207924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373531, 31.530554, 43.877869>,  <38.294743, 32.244934, 44.015133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373531, 31.530554, 43.877869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031593, 31.330647, 43.822052>,  <37.826431, 31.210703, 43.788563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031593, 31.330647, 43.822052>,  <38.373531, 31.530554, 43.877869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031593, 31.330647, 43.822052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062946, 0.366818, -0.928161,
		0.515050, -0.784651, -0.345031,
		-0.854846, -0.499768, -0.139539,
		37.775139, 31.180716, 43.780190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421501, 31.204794, 43.215088>,  <38.373531, 31.530554, 43.877869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421501, 31.204794, 43.215088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030525, 31.139551, 43.268768>,  <37.795940, 31.100407, 43.300976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030525, 31.139551, 43.268768>,  <38.421501, 31.204794, 43.215088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030525, 31.139551, 43.268768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151778, 0.100522, -0.983290,
		0.146888, -0.981475, -0.123009,
		-0.977439, -0.163104, 0.134201,
		37.737293, 31.090620, 43.309029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234901, 30.863180, 42.565983>,  <38.421501, 31.204794, 43.215088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234901, 30.863180, 42.565983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896210, 31.000494, 42.728561>,  <37.692993, 31.082882, 42.826107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896210, 31.000494, 42.728561>,  <38.234901, 30.863180, 42.565983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896210, 31.000494, 42.728561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345685, 0.225722, -0.910798,
		-0.404408, -0.911704, -0.072457,
		-0.846733, 0.343286, 0.406445,
		37.642189, 31.103479, 42.850494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741188, 30.525576, 42.219769>,  <38.234901, 30.863180, 42.565983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741188, 30.525576, 42.219769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618107, 30.873142, 42.374844>,  <37.544258, 31.081682, 42.467888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618107, 30.873142, 42.374844>,  <37.741188, 30.525576, 42.219769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618107, 30.873142, 42.374844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321112, 0.288715, -0.901960,
		-0.895660, -0.402025, 0.190182,
		-0.307702, 0.868919, 0.387685,
		37.525795, 31.133818, 42.491150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066216, 30.622768, 41.845913>,  <37.741188, 30.525576, 42.219769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066216, 30.622768, 41.845913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196426, 30.966249, 42.004234>,  <37.274555, 31.172338, 42.099228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196426, 30.966249, 42.004234>,  <37.066216, 30.622768, 41.845913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196426, 30.966249, 42.004234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257001, 0.483199, -0.836940,
		-0.909934, 0.170728, 0.377984,
		0.325531, 0.858703, 0.395802,
		37.294086, 31.223860, 42.122974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528637, 31.083269, 41.747601>,  <37.066216, 30.622768, 41.845913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528637, 31.083269, 41.747601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853081, 31.316502, 41.766029>,  <37.047745, 31.456440, 41.777088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853081, 31.316502, 41.766029>,  <36.528637, 31.083269, 41.747601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853081, 31.316502, 41.766029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286608, 0.464887, -0.837697,
		-0.509864, 0.666256, 0.544189,
		0.811107, 0.583080, 0.046074,
		37.096413, 31.491426, 41.779850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217968, 31.637259, 41.479340>,  <36.528637, 31.083269, 41.747601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217968, 31.637259, 41.479340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611450, 31.706074, 41.458435>,  <36.847538, 31.747362, 41.445892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611450, 31.706074, 41.458435>,  <36.217968, 31.637259, 41.479340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611450, 31.706074, 41.458435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160632, 0.710310, -0.685316,
		-0.080780, 0.682542, 0.726369,
		0.983703, 0.172038, -0.052259,
		36.906563, 31.757685, 41.442757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349957, 32.451530, 41.560173>,  <36.217968, 31.637259, 41.479340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349957, 32.451530, 41.560173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649494, 32.285698, 41.353348>,  <36.829216, 32.186199, 41.229252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649494, 32.285698, 41.353348>,  <36.349957, 32.451530, 41.560173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649494, 32.285698, 41.353348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097561, 0.702725, -0.704740,
		0.655530, 0.578183, 0.485782,
		0.748840, -0.414585, -0.517066,
		36.874146, 32.161324, 41.198227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532604, 33.006760, 41.233891>,  <36.349957, 32.451530, 41.560173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532604, 33.006760, 41.233891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725986, 32.723099, 41.028610>,  <36.842014, 32.552902, 40.905441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725986, 32.723099, 41.028610>,  <36.532604, 33.006760, 41.233891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725986, 32.723099, 41.028610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088365, 0.543739, -0.834589,
		0.870899, 0.448833, 0.200208,
		0.483452, -0.709152, -0.513203,
		36.871021, 32.510353, 40.874649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989902, 33.311298, 40.771996>,  <36.532604, 33.006760, 41.233891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989902, 33.311298, 40.771996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963112, 32.949093, 40.604397>,  <36.947037, 32.731770, 40.503838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963112, 32.949093, 40.604397>,  <36.989902, 33.311298, 40.771996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963112, 32.949093, 40.604397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110818, 0.424089, -0.898815,
		0.991581, -0.013770, -0.128753,
		-0.066979, -0.905516, -0.418993,
		36.943020, 32.677437, 40.478699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378056, 33.389259, 40.127140>,  <36.989902, 33.311298, 40.771996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378056, 33.389259, 40.127140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132229, 33.076122, 40.088211>,  <36.984734, 32.888241, 40.064854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132229, 33.076122, 40.088211>,  <37.378056, 33.389259, 40.127140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132229, 33.076122, 40.088211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272797, 0.326657, -0.904918,
		0.740196, -0.529583, -0.414309,
		-0.614566, -0.782839, -0.097321,
		36.947861, 32.841270, 40.059013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559952, 33.001476, 39.512615>,  <37.378056, 33.389259, 40.127140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559952, 33.001476, 39.512615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176945, 32.934479, 39.606510>,  <36.947140, 32.894279, 39.662846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176945, 32.934479, 39.606510>,  <37.559952, 33.001476, 39.512615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176945, 32.934479, 39.606510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283706, 0.401441, -0.870837,
		0.051623, -0.900440, -0.431906,
		-0.957521, -0.167489, 0.234736,
		36.889687, 32.884232, 39.676929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.656208, 28.788084, 46.977406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268665, 28.876661, 46.933075>,  <38.036140, 28.929808, 46.906475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268665, 28.876661, 46.933075>,  <38.656208, 28.788084, 46.977406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268665, 28.876661, 46.933075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186782, 0.359669, -0.914194,
		-0.162579, -0.906423, -0.389828,
		-0.968855, 0.221441, -0.110829,
		37.978008, 28.943094, 46.899826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418839, 28.550074, 46.226818>,  <38.656208, 28.788084, 46.977406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418839, 28.550074, 46.226818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144302, 28.817162, 46.342113>,  <37.979580, 28.977415, 46.411293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144302, 28.817162, 46.342113>,  <38.418839, 28.550074, 46.226818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144302, 28.817162, 46.342113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084466, 0.466831, -0.880304,
		-0.722356, -0.579845, -0.376806,
		-0.686344, 0.667720, 0.288241,
		37.938400, 29.017477, 46.428585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988308, 28.668249, 45.594677>,  <38.418839, 28.550074, 46.226818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988308, 28.668249, 45.594677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869068, 28.978525, 45.817188>,  <37.797523, 29.164690, 45.950695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869068, 28.978525, 45.817188>,  <37.988308, 28.668249, 45.594677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869068, 28.978525, 45.817188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159327, 0.534164, -0.830231,
		-0.941145, -0.336118, -0.035643,
		-0.298095, 0.775689, 0.556279,
		37.779640, 29.211231, 45.984074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417480, 29.001081, 45.271561>,  <37.988308, 28.668249, 45.594677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417480, 29.001081, 45.271561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536892, 29.293510, 45.516972>,  <37.608540, 29.468967, 45.664219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536892, 29.293510, 45.516972>,  <37.417480, 29.001081, 45.271561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536892, 29.293510, 45.516972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029897, 0.649687, -0.759614,
		-0.953932, 0.208426, 0.215809,
		0.298532, 0.731072, 0.613525,
		37.626450, 29.512833, 45.701031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891689, 29.579556, 45.172264>,  <37.417480, 29.001081, 45.271561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891689, 29.579556, 45.172264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235451, 29.735401, 45.304707>,  <37.441708, 29.828909, 45.384171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235451, 29.735401, 45.304707>,  <36.891689, 29.579556, 45.172264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235451, 29.735401, 45.304707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066363, 0.727093, -0.683324,
		-0.506978, 0.565276, 0.650720,
		0.859401, 0.389614, 0.331106,
		37.493271, 29.852285, 45.404037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755379, 30.248404, 45.357376>,  <36.891689, 29.579556, 45.172264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755379, 30.248404, 45.357376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135567, 30.203131, 45.241581>,  <37.363678, 30.175968, 45.172104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135567, 30.203131, 45.241581>,  <36.755379, 30.248404, 45.357376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135567, 30.203131, 45.241581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150179, 0.648215, -0.746501,
		0.272141, 0.752999, 0.599109,
		0.950466, -0.113180, -0.289491,
		37.420708, 30.169176, 45.154736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875950, 30.920078, 45.136059>,  <36.755379, 30.248404, 45.357376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875950, 30.920078, 45.136059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164364, 30.694197, 44.975449>,  <37.337410, 30.558668, 44.879082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164364, 30.694197, 44.975449>,  <36.875950, 30.920078, 45.136059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164364, 30.694197, 44.975449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070799, 0.516410, -0.853410,
		0.689274, 0.643764, 0.332368,
		0.721033, -0.564703, -0.401526,
		37.380672, 30.524786, 44.854992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139057, 31.398911, 44.834690>,  <36.875950, 30.920078, 45.136059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139057, 31.398911, 44.834690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301212, 31.087149, 44.643616>,  <37.398506, 30.900091, 44.528969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301212, 31.087149, 44.643616>,  <37.139057, 31.398911, 44.834690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301212, 31.087149, 44.643616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097706, 0.482617, -0.870365,
		0.908907, 0.399511, 0.119495,
		0.405390, -0.779405, -0.477688,
		37.422829, 30.853327, 44.500309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723488, 31.665388, 44.580677>,  <37.139057, 31.398911, 44.834690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723488, 31.665388, 44.580677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.626720, 31.345129, 44.361427>,  <37.568661, 31.152973, 44.229877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.626720, 31.345129, 44.361427>,  <37.723488, 31.665388, 44.580677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626720, 31.345129, 44.361427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223023, 0.503898, -0.834475,
		0.944319, -0.324117, 0.056662,
		-0.241916, -0.800647, -0.548126,
		37.554146, 31.104935, 44.196991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532894, 31.665686, 44.610672>,  <37.723488, 31.665388, 44.580677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532894, 31.665686, 44.610672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803875, 31.955803, 44.659683>,  <38.966461, 32.129871, 44.689091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803875, 31.955803, 44.659683>,  <38.532894, 31.665686, 44.610672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803875, 31.955803, 44.659683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027849, -0.191748, 0.981049,
		0.735042, -0.661199, -0.150098,
		0.677450, 0.725292, 0.122529,
		39.007111, 32.173389, 44.696442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092789, 31.416225, 45.119781>,  <38.532894, 31.665686, 44.610672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092789, 31.416225, 45.119781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075169, 31.815836, 45.118492>,  <39.064598, 32.055603, 45.117718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075169, 31.815836, 45.118492>,  <39.092789, 31.416225, 45.119781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075169, 31.815836, 45.118492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126304, -0.002367, 0.991989,
		0.991013, 0.044104, 0.126285,
		-0.044050, 0.999024, -0.003224,
		39.061954, 32.115543, 45.117523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307076, 31.608902, 45.707397>,  <39.092789, 31.416225, 45.119781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307076, 31.608902, 45.707397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.094746, 31.939175, 45.631004>,  <38.967346, 32.137337, 45.585167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.094746, 31.939175, 45.631004>,  <39.307076, 31.608902, 45.707397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094746, 31.939175, 45.631004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067881, 0.183209, 0.980728,
		0.844757, 0.533562, -0.041204,
		-0.530828, 0.825680, -0.190985,
		38.935497, 32.186878, 45.573708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630653, 32.137333, 46.136864>,  <39.307076, 31.608902, 45.707397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630653, 32.137333, 46.136864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263527, 32.250416, 46.025375>,  <39.043251, 32.318268, 45.958481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263527, 32.250416, 46.025375>,  <39.630653, 32.137333, 46.136864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263527, 32.250416, 46.025375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179374, 0.331008, 0.926423,
		0.354168, 0.900283, -0.253094,
		-0.917818, 0.282710, -0.278719,
		38.988182, 32.335228, 45.941761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481972, 32.785358, 46.506775>,  <39.630653, 32.137333, 46.136864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481972, 32.785358, 46.506775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131496, 32.613903, 46.418636>,  <38.921211, 32.511028, 46.365753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131496, 32.613903, 46.418636>,  <39.481972, 32.785358, 46.506775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131496, 32.613903, 46.418636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310341, 0.151987, 0.938397,
		-0.368748, 0.890598, -0.266195,
		-0.876193, -0.428643, -0.220344,
		38.868637, 32.485310, 46.352531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995258, 33.249245, 46.896362>,  <39.481972, 32.785358, 46.506775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995258, 33.249245, 46.896362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847286, 32.887531, 46.811119>,  <38.758503, 32.670502, 46.759975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847286, 32.887531, 46.811119>,  <38.995258, 33.249245, 46.896362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847286, 32.887531, 46.811119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359870, -0.071996, 0.930220,
		-0.856530, 0.420809, -0.298792,
		-0.369933, -0.904288, -0.213104,
		38.736305, 32.616245, 46.747189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365311, 33.191010, 47.229866>,  <38.995258, 33.249245, 46.896362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365311, 33.191010, 47.229866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441296, 32.807114, 47.147106>,  <38.486885, 32.576775, 47.097450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441296, 32.807114, 47.147106>,  <38.365311, 33.191010, 47.229866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441296, 32.807114, 47.147106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351868, -0.263289, 0.898258,
		-0.916572, -0.097831, -0.387718,
		0.189960, -0.959743, -0.206899,
		38.498283, 32.519192, 47.085037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787418, 32.817806, 47.446262>,  <38.365311, 33.191010, 47.229866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787418, 32.817806, 47.446262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062935, 32.528717, 47.423508>,  <38.228245, 32.355263, 47.409855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062935, 32.528717, 47.423508>,  <37.787418, 32.817806, 47.446262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062935, 32.528717, 47.423508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301012, -0.356497, 0.884478,
		-0.659514, -0.592097, -0.463101,
		0.688791, -0.722725, -0.056887,
		38.269573, 32.311901, 47.406441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463387, 32.193779, 47.711143>,  <37.787418, 32.817806, 47.446262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463387, 32.193779, 47.711143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852921, 32.104820, 47.729847>,  <38.086639, 32.051445, 47.741070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.852921, 32.104820, 47.729847>,  <37.463387, 32.193779, 47.711143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852921, 32.104820, 47.729847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119550, -0.326334, 0.937664,
		-0.193268, -0.918721, -0.344383,
		0.973835, -0.222391, 0.046764,
		38.145073, 32.038101, 47.743877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485008, 31.531256, 48.080914>,  <37.463387, 32.193779, 47.711143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485008, 31.531256, 48.080914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857437, 31.671997, 48.119484>,  <38.080894, 31.756443, 48.142628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857437, 31.671997, 48.119484>,  <37.485008, 31.531256, 48.080914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857437, 31.671997, 48.119484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073355, -0.439462, 0.895261,
		0.357379, -0.826481, -0.434983,
		0.931074, 0.351855, 0.096428,
		38.136761, 31.777554, 48.148411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828362, 30.923498, 48.308727>,  <37.485008, 31.531256, 48.080914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828362, 30.923498, 48.308727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022026, 31.248440, 48.438751>,  <38.138226, 31.443405, 48.516766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022026, 31.248440, 48.438751>,  <37.828362, 30.923498, 48.308727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022026, 31.248440, 48.438751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186652, -0.458847, 0.868689,
		0.854838, -0.359913, -0.373784,
		0.484162, 0.812356, 0.325061,
		38.167274, 31.492147, 48.536270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424240, 30.619232, 48.688087>,  <37.828362, 30.923498, 48.308727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424240, 30.619232, 48.688087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.409370, 31.004396, 48.794991>,  <38.400448, 31.235495, 48.859131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.409370, 31.004396, 48.794991>,  <38.424240, 30.619232, 48.688087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409370, 31.004396, 48.794991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390038, -0.232245, 0.891029,
		0.920048, 0.137364, -0.366937,
		-0.037176, 0.962909, 0.267253,
		38.398216, 31.293268, 48.875168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130806, 30.806187, 48.886848>,  <38.424240, 30.619232, 48.688087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130806, 30.806187, 48.886848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859589, 31.045799, 49.057220>,  <38.696857, 31.189566, 49.159443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859589, 31.045799, 49.057220>,  <39.130806, 30.806187, 48.886848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859589, 31.045799, 49.057220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469866, -0.092361, 0.877893,
		0.565223, 0.795382, -0.218839,
		-0.678048, 0.599030, 0.425927,
		38.656174, 31.225508, 49.184998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534786, 31.365774, 49.232468>,  <39.130806, 30.806187, 48.886848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534786, 31.365774, 49.232468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179005, 31.335432, 49.412739>,  <38.965534, 31.317226, 49.520901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179005, 31.335432, 49.412739>,  <39.534786, 31.365774, 49.232468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179005, 31.335432, 49.412739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457015, -0.151886, 0.876395,
		0.001973, 0.985483, 0.169763,
		-0.889457, -0.075855, 0.450680,
		38.912167, 31.312675, 49.547943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.574417, 33.284771, 49.607208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809299, 32.967812, 49.541119>,  <32.950230, 32.777637, 49.501465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809299, 32.967812, 49.541119>,  <32.574417, 33.284771, 49.607208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809299, 32.967812, 49.541119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040459, 0.232595, -0.971732,
		0.808425, 0.563924, 0.168641,
		0.587208, -0.792395, -0.165220,
		32.985462, 32.730095, 49.491554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047440, 33.636978, 49.210121>,  <32.574417, 33.284771, 49.607208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047440, 33.636978, 49.210121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095154, 33.242653, 49.162876>,  <33.123783, 33.006058, 49.134529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095154, 33.242653, 49.162876>,  <33.047440, 33.636978, 49.210121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095154, 33.242653, 49.162876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098277, 0.130098, -0.986619,
		0.987984, 0.106082, 0.112401,
		0.119286, -0.985810, -0.118109,
		33.130939, 32.946911, 49.127445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615837, 33.571903, 48.854210>,  <33.047440, 33.636978, 49.210121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615837, 33.571903, 48.854210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418793, 33.231930, 48.779427>,  <33.300568, 33.027946, 48.734558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418793, 33.231930, 48.779427>,  <33.615837, 33.571903, 48.854210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418793, 33.231930, 48.779427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184008, 0.108246, -0.976946,
		0.850575, -0.515654, 0.103071,
		-0.492609, -0.849932, -0.186956,
		33.271011, 32.976952, 48.723339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083828, 33.085361, 48.537720>,  <33.615837, 33.571903, 48.854210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083828, 33.085361, 48.537720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714760, 32.978138, 48.426846>,  <33.493320, 32.913803, 48.360321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714760, 32.978138, 48.426846>,  <34.083828, 33.085361, 48.537720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714760, 32.978138, 48.426846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351609, -0.289800, -0.890161,
		0.158287, -0.918783, 0.361641,
		-0.922668, -0.268057, -0.277181,
		33.437958, 32.897720, 48.343693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212009, 32.563049, 48.103786>,  <34.083828, 33.085361, 48.537720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212009, 32.563049, 48.103786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825394, 32.638027, 48.033737>,  <33.593426, 32.683014, 47.991707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825394, 32.638027, 48.033737>,  <34.212009, 32.563049, 48.103786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825394, 32.638027, 48.033737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070633, -0.461814, -0.884160,
		-0.246609, -0.866943, 0.433120,
		-0.966537, 0.187449, -0.175122,
		33.535431, 32.694263, 47.981201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979530, 31.990999, 47.725243>,  <34.212009, 32.563049, 48.103786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979530, 31.990999, 47.725243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727116, 32.293198, 47.654789>,  <33.575668, 32.474518, 47.612518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727116, 32.293198, 47.654789>,  <33.979530, 31.990999, 47.725243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727116, 32.293198, 47.654789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144152, -0.108891, -0.983546,
		-0.762245, -0.646039, -0.040193,
		-0.631032, 0.755497, -0.176130,
		33.537807, 32.519848, 47.601952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626041, 31.713085, 47.198536>,  <33.979530, 31.990999, 47.725243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626041, 31.713085, 47.198536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615391, 32.112862, 47.206577>,  <33.609001, 32.352730, 47.211403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615391, 32.112862, 47.206577>,  <33.626041, 31.713085, 47.198536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615391, 32.112862, 47.206577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243902, 0.026000, -0.969451,
		-0.969434, -0.020907, -0.244458,
		-0.026625, 0.999443, 0.020106,
		33.607403, 32.412693, 47.212608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378143, 31.893934, 46.555595>,  <33.626041, 31.713085, 47.198536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378143, 31.893934, 46.555595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523479, 32.239731, 46.694530>,  <33.610680, 32.447208, 46.777893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523479, 32.239731, 46.694530>,  <33.378143, 31.893934, 46.555595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523479, 32.239731, 46.694530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194620, 0.294162, -0.935730,
		-0.911103, 0.407585, -0.061367,
		0.363337, 0.864490, 0.347337,
		33.632481, 32.499077, 46.798733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054153, 32.483444, 46.045414>,  <33.378143, 31.893934, 46.555595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054153, 32.483444, 46.045414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.362244, 32.685818, 46.200737>,  <33.547096, 32.807243, 46.293930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.362244, 32.685818, 46.200737>,  <33.054153, 32.483444, 46.045414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362244, 32.685818, 46.200737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223137, 0.356599, -0.907219,
		-0.597466, 0.785408, 0.161768,
		0.770223, 0.505936, 0.388309,
		33.593311, 32.837597, 46.317230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999039, 33.173153, 45.818111>,  <33.054153, 32.483444, 46.045414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999039, 33.173153, 45.818111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384159, 33.127743, 45.916195>,  <33.615231, 33.100494, 45.975044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384159, 33.127743, 45.916195>,  <32.999039, 33.173153, 45.818111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384159, 33.127743, 45.916195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269673, 0.461068, -0.845395,
		-0.017081, 0.880072, 0.474532,
		0.962800, -0.113528, 0.245208,
		33.673000, 33.093685, 45.989758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319839, 33.830387, 45.820469>,  <32.999039, 33.173153, 45.818111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319839, 33.830387, 45.820469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610985, 33.558994, 45.780708>,  <33.785671, 33.396160, 45.756851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610985, 33.558994, 45.780708>,  <33.319839, 33.830387, 45.820469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610985, 33.558994, 45.780708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349129, 0.491430, -0.797875,
		0.590193, 0.546038, 0.594571,
		0.727860, -0.678483, -0.099401,
		33.829342, 33.355450, 45.750889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970890, 34.172634, 45.881432>,  <33.319839, 33.830387, 45.820469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970890, 34.172634, 45.881432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068279, 33.853771, 45.660431>,  <34.126713, 33.662453, 45.527832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068279, 33.853771, 45.660431>,  <33.970890, 34.172634, 45.881432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068279, 33.853771, 45.660431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251006, 0.602021, -0.758002,
		0.936866, 0.045871, 0.346668,
		0.243471, -0.797162, -0.552499,
		34.141319, 33.614624, 45.494682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566196, 34.421101, 45.451084>,  <33.970890, 34.172634, 45.881432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566196, 34.421101, 45.451084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418121, 34.088810, 45.284782>,  <34.329277, 33.889435, 45.185001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418121, 34.088810, 45.284782>,  <34.566196, 34.421101, 45.451084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418121, 34.088810, 45.284782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252923, 0.340514, -0.905583,
		0.893864, -0.440388, 0.084057,
		-0.370185, -0.830728, -0.415757,
		34.307064, 33.839592, 45.160057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175392, 34.105755, 44.993980>,  <34.566196, 34.421101, 45.451084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175392, 34.105755, 44.993980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831615, 33.944965, 44.867626>,  <34.625351, 33.848492, 44.791813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831615, 33.944965, 44.867626>,  <35.175392, 34.105755, 44.993980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831615, 33.944965, 44.867626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162715, 0.370675, -0.914398,
		0.484657, -0.837267, -0.253164,
		-0.859437, -0.401976, -0.315886,
		34.573784, 33.824371, 44.772861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931965, 34.174496, 44.947273>,  <35.175392, 34.105755, 44.993980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931965, 34.174496, 44.947273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990711, 34.564693, 45.012802>,  <36.025959, 34.798813, 45.052120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990711, 34.564693, 45.012802>,  <35.931965, 34.174496, 44.947273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990711, 34.564693, 45.012802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249874, -0.123657, 0.960350,
		0.957075, -0.181980, 0.225590,
		0.146869, 0.975496, 0.163821,
		36.034771, 34.857342, 45.061947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379780, 34.214512, 45.525631>,  <35.931965, 34.174496, 44.947273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379780, 34.214512, 45.525631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.245956, 34.590733, 45.502205>,  <36.165665, 34.816467, 45.488148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.245956, 34.590733, 45.502205>,  <36.379780, 34.214512, 45.525631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245956, 34.590733, 45.502205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075837, 0.035072, 0.996503,
		0.939320, 0.337826, 0.059595,
		-0.334554, 0.940555, -0.058564,
		36.145592, 34.872898, 45.484634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896164, 34.610279, 45.939079>,  <36.379780, 34.214512, 45.525631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896164, 34.610279, 45.939079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544056, 34.797615, 45.908642>,  <36.332790, 34.910015, 45.890377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544056, 34.797615, 45.908642>,  <36.896164, 34.610279, 45.939079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544056, 34.797615, 45.908642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029993, 0.105135, 0.994006,
		0.473528, 0.877274, -0.078500,
		-0.880268, 0.468335, -0.076096,
		36.279976, 34.938114, 45.885815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041389, 35.343174, 46.273521>,  <36.896164, 34.610279, 45.939079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041389, 35.343174, 46.273521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655369, 35.241745, 46.247086>,  <36.423756, 35.180889, 46.231224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655369, 35.241745, 46.247086>,  <37.041389, 35.343174, 46.273521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655369, 35.241745, 46.247086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080312, 0.046159, 0.995700,
		-0.249433, 0.966214, -0.064911,
		-0.965056, -0.253574, -0.066085,
		36.365852, 35.165672, 46.227261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713974, 35.874756, 46.762497>,  <37.041389, 35.343174, 46.273521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713974, 35.874756, 46.762497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479237, 35.561554, 46.680012>,  <36.338394, 35.373634, 46.630520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479237, 35.561554, 46.680012>,  <36.713974, 35.874756, 46.762497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479237, 35.561554, 46.680012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259930, -0.059017, 0.963822,
		-0.766844, 0.619214, -0.168892,
		-0.586844, -0.783002, -0.206209,
		36.303185, 35.326653, 46.618149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086761, 35.973747, 47.150051>,  <36.713974, 35.874756, 46.762497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086761, 35.973747, 47.150051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105083, 35.583351, 47.064880>,  <36.116077, 35.349113, 47.013779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105083, 35.583351, 47.064880>,  <36.086761, 35.973747, 47.150051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105083, 35.583351, 47.064880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199881, -0.217791, 0.955308,
		-0.978749, -0.001195, -0.205058,
		0.045801, -0.975995, -0.212924,
		36.118824, 35.290554, 47.001003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471745, 35.645336, 47.459122>,  <36.086761, 35.973747, 47.150051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471745, 35.645336, 47.459122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704914, 35.323334, 47.414993>,  <35.844814, 35.130131, 47.388515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704914, 35.323334, 47.414993>,  <35.471745, 35.645336, 47.459122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704914, 35.323334, 47.414993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086264, -0.196317, 0.976738,
		-0.807937, -0.559844, -0.183880,
		0.582920, -0.805005, -0.110318,
		35.879791, 35.081833, 47.381897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136600, 35.124008, 47.937336>,  <35.471745, 35.645336, 47.459122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136600, 35.124008, 47.937336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503616, 34.979294, 47.871326>,  <35.723827, 34.892464, 47.831722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503616, 34.979294, 47.871326>,  <35.136600, 35.124008, 47.937336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503616, 34.979294, 47.871326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072726, -0.255320, 0.964118,
		-0.390939, -0.896617, -0.207954,
		0.917539, -0.361788, -0.165022,
		35.778877, 34.870758, 47.821819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199169, 34.687569, 48.427670>,  <35.136600, 35.124008, 47.937336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199169, 34.687569, 48.427670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578308, 34.712540, 48.302647>,  <35.805790, 34.727524, 48.227634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578308, 34.712540, 48.302647>,  <35.199169, 34.687569, 48.427670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578308, 34.712540, 48.302647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318728, -0.186300, 0.929357,
		-0.000210, -0.980507, -0.196482,
		0.947846, 0.062429, -0.312555,
		35.862663, 34.731270, 48.208881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515182, 34.031788, 48.571770>,  <35.199169, 34.687569, 48.427670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515182, 34.031788, 48.571770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812664, 34.297070, 48.538143>,  <35.991154, 34.456238, 48.517967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812664, 34.297070, 48.538143>,  <35.515182, 34.031788, 48.571770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812664, 34.297070, 48.538143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385864, -0.323161, 0.864104,
		0.545909, -0.675076, -0.496242,
		0.743702, 0.663204, -0.084071,
		36.035774, 34.496029, 48.512920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107464, 33.620449, 48.701397>,  <35.515182, 34.031788, 48.571770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107464, 33.620449, 48.701397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201752, 34.001492, 48.778320>,  <36.258324, 34.230118, 48.824474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201752, 34.001492, 48.778320>,  <36.107464, 33.620449, 48.701397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201752, 34.001492, 48.778320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430081, -0.279709, 0.858367,
		0.871473, -0.119629, -0.475630,
		0.235724, 0.952603, 0.192308,
		36.272469, 34.287273, 48.836014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744129, 33.575573, 49.067062>,  <36.107464, 33.620449, 48.701397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744129, 33.575573, 49.067062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582928, 33.931187, 49.153973>,  <36.486206, 34.144554, 49.206120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582928, 33.931187, 49.153973>,  <36.744129, 33.575573, 49.067062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582928, 33.931187, 49.153973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079390, -0.202549, 0.976049,
		0.911747, 0.410605, 0.011049,
		-0.403008, 0.889032, 0.217271,
		36.462025, 34.197895, 49.219154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968349, 33.715641, 49.747490>,  <36.744129, 33.575573, 49.067062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968349, 33.715641, 49.747490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680489, 33.991581, 49.715946>,  <36.507774, 34.157143, 49.697021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680489, 33.991581, 49.715946>,  <36.968349, 33.715641, 49.747490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680489, 33.991581, 49.715946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305149, -0.212212, 0.928359,
		0.623691, 0.692155, 0.363224,
		-0.719649, 0.689846, -0.078856,
		36.464596, 34.198536, 49.692291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932491, 34.282761, 50.337418>,  <36.968349, 33.715641, 49.747490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932491, 34.282761, 50.337418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564148, 34.219982, 50.194653>,  <36.343143, 34.182316, 50.108994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564148, 34.219982, 50.194653>,  <36.932491, 34.282761, 50.337418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564148, 34.219982, 50.194653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330586, -0.171058, 0.928144,
		-0.206722, 0.972680, 0.105636,
		-0.920858, -0.156946, -0.356916,
		36.287891, 34.172897, 50.087578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985256, 34.821785, 50.876442>,  <36.932491, 34.282761, 50.337418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985256, 34.821785, 50.876442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373470, 34.769089, 50.957142>,  <37.606400, 34.737469, 51.005562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373470, 34.769089, 50.957142>,  <36.985256, 34.821785, 50.876442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373470, 34.769089, 50.957142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233564, 0.308585, -0.922075,
		0.059221, 0.942029, 0.330264,
		0.970536, -0.131744, 0.201750,
		37.664631, 34.729565, 51.017666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276951, 35.371628, 50.525230>,  <36.985256, 34.821785, 50.876442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276951, 35.371628, 50.525230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617283, 35.173683, 50.595882>,  <37.821484, 35.054916, 50.638275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617283, 35.173683, 50.595882>,  <37.276951, 35.371628, 50.525230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617283, 35.173683, 50.595882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375187, 0.336829, -0.863586,
		0.367864, 0.801034, 0.472251,
		0.850829, -0.494865, 0.176630,
		37.872532, 35.025223, 50.648872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862484, 35.853313, 50.547112>,  <37.276951, 35.371628, 50.525230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862484, 35.853313, 50.547112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.987568, 35.488686, 50.440342>,  <38.062618, 35.269909, 50.376282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.987568, 35.488686, 50.440342>,  <37.862484, 35.853313, 50.547112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987568, 35.488686, 50.440342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340418, 0.369903, -0.864458,
		0.886751, 0.179463, 0.425989,
		0.312712, -0.911573, -0.266920,
		38.081383, 35.215214, 50.360268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304733, 36.031914, 50.004917>,  <37.862484, 35.853313, 50.547112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304733, 36.031914, 50.004917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.282211, 35.633041, 49.985088>,  <38.268696, 35.393719, 49.973190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.282211, 35.633041, 49.985088>,  <38.304733, 36.031914, 50.004917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282211, 35.633041, 49.985088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526052, 0.012567, -0.850359,
		0.848586, -0.073960, 0.523862,
		-0.056309, -0.997182, -0.049571,
		38.265320, 35.333885, 49.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000336, 35.819218, 49.922794>,  <38.304733, 36.031914, 50.004917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000336, 35.819218, 49.922794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.736065, 35.561432, 49.768826>,  <38.577503, 35.406761, 49.676445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.736065, 35.561432, 49.768826>,  <39.000336, 35.819218, 49.922794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736065, 35.561432, 49.768826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486045, 0.023521, -0.873617,
		0.572071, -0.764270, 0.297700,
		-0.660677, -0.644467, -0.384925,
		38.537861, 35.368092, 49.653347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426773, 35.390564, 49.483276>,  <39.000336, 35.819218, 49.922794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426773, 35.390564, 49.483276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.063152, 35.327839, 49.328857>,  <38.844978, 35.290203, 49.236206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.063152, 35.327839, 49.328857>,  <39.426773, 35.390564, 49.483276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063152, 35.327839, 49.328857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379250, 0.072410, -0.922457,
		0.172604, -0.984971, -0.006354,
		-0.909053, -0.156810, -0.386048,
		38.790436, 35.280796, 49.213043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428970, 34.687977, 49.027466>,  <39.426773, 35.390564, 49.483276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428970, 34.687977, 49.027466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129112, 34.922909, 48.905426>,  <38.949200, 35.063866, 48.832203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129112, 34.922909, 48.905426>,  <39.428970, 34.687977, 49.027466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129112, 34.922909, 48.905426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332121, -0.064912, -0.941001,
		-0.572478, -0.806743, -0.146403,
		-0.749643, 0.587326, -0.305097,
		38.904221, 35.099106, 48.813896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172955, 34.336399, 48.440197>,  <39.428970, 34.687977, 49.027466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172955, 34.336399, 48.440197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.132465, 34.734314, 48.445034>,  <39.108170, 34.973064, 48.447937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.132465, 34.734314, 48.445034>,  <39.172955, 34.336399, 48.440197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132465, 34.734314, 48.445034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389971, 0.050862, -0.919422,
		-0.915247, -0.088351, -0.393088,
		-0.101225, 0.994790, 0.012096,
		39.102097, 35.032749, 48.448662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794285, 34.444962, 47.836079>,  <39.172955, 34.336399, 48.440197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794285, 34.444962, 47.836079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030903, 34.749763, 47.941475>,  <39.172874, 34.932644, 48.004711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030903, 34.749763, 47.941475>,  <38.794285, 34.444962, 47.836079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030903, 34.749763, 47.941475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370268, 0.033558, -0.928318,
		-0.716223, 0.646704, -0.262294,
		0.591545, 0.762002, 0.263489,
		39.208366, 34.978363, 48.020523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519054, 35.058750, 47.530834>,  <38.794285, 34.444962, 47.836079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519054, 35.058750, 47.530834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913540, 35.083221, 47.592342>,  <39.150230, 35.097904, 47.629246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913540, 35.083221, 47.592342>,  <38.519054, 35.058750, 47.530834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913540, 35.083221, 47.592342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132854, 0.261340, -0.956060,
		-0.098675, 0.963306, 0.249608,
		0.986211, 0.061178, 0.153767,
		39.209404, 35.101574, 47.638474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673252, 35.775734, 47.260994>,  <38.519054, 35.058750, 47.530834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673252, 35.775734, 47.260994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.036266, 35.610664, 47.292191>,  <39.254074, 35.511623, 47.310909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.036266, 35.610664, 47.292191>,  <38.673252, 35.775734, 47.260994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036266, 35.610664, 47.292191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250485, 0.382793, -0.889229,
		0.337103, 0.826542, 0.450765,
		0.907535, -0.412671, 0.077996,
		39.308525, 35.486862, 47.315590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163944, 36.282993, 47.063141>,  <38.673252, 35.775734, 47.260994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163944, 36.282993, 47.063141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.337276, 35.927967, 47.000576>,  <39.441277, 35.714951, 46.963039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.337276, 35.927967, 47.000576>,  <39.163944, 36.282993, 47.063141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337276, 35.927967, 47.000576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326532, 0.316375, -0.890665,
		0.840003, 0.334877, 0.426911,
		0.433327, -0.887561, -0.156408,
		39.467274, 35.661697, 46.953655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713856, 36.460361, 46.626587>,  <39.163944, 36.282993, 47.063141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713856, 36.460361, 46.626587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707573, 36.062878, 46.582233>,  <39.703804, 35.824387, 46.555622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707573, 36.062878, 46.582233>,  <39.713856, 36.460361, 46.626587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707573, 36.062878, 46.582233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427823, 0.093557, -0.899008,
		0.903726, -0.061564, 0.423661,
		-0.015710, -0.993709, -0.110888,
		39.702858, 35.764767, 46.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257011, 36.345238, 46.210999>,  <39.713856, 36.460361, 46.626587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257011, 36.345238, 46.210999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060307, 35.998283, 46.180500>,  <39.942284, 35.790112, 46.162201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060307, 35.998283, 46.180500>,  <40.257011, 36.345238, 46.210999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060307, 35.998283, 46.180500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128393, 0.014371, -0.991619,
		0.861209, -0.497434, 0.104299,
		-0.491766, -0.867383, -0.076244,
		39.912777, 35.738068, 46.157627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.926439, 30.216024, 41.447746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.549965, 30.235924, 41.581429>,  <25.324080, 30.247864, 41.661640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.549965, 30.235924, 41.581429>,  <25.926439, 30.216024, 41.447746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549965, 30.235924, 41.581429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296068, 0.355226, -0.886656,
		-0.162831, -0.933455, -0.319604,
		-0.941185, 0.049751, 0.334208,
		25.267609, 30.250849, 41.681690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460649, 30.027956, 40.847839>,  <25.926439, 30.216024, 41.447746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460649, 30.027956, 40.847839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.251867, 30.234325, 41.119541>,  <25.126598, 30.358147, 41.282562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.251867, 30.234325, 41.119541>,  <25.460649, 30.027956, 40.847839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251867, 30.234325, 41.119541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362675, 0.586535, -0.724185,
		-0.772030, -0.624341, -0.119032,
		-0.521955, 0.515922, 0.679255,
		25.095282, 30.389103, 41.323318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782005, 30.031343, 40.724281>,  <25.460649, 30.027956, 40.847839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782005, 30.031343, 40.724281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.847382, 30.367867, 40.930386>,  <24.886608, 30.569780, 41.054047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.847382, 30.367867, 40.930386>,  <24.782005, 30.031343, 40.724281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.847382, 30.367867, 40.930386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191520, 0.539403, -0.819979,
		-0.967785, 0.035335, 0.249287,
		0.163440, 0.841306, 0.515258,
		24.896414, 30.620258, 41.084965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328508, 30.527239, 40.518368>,  <24.782005, 30.031343, 40.724281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328508, 30.527239, 40.518368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.618231, 30.767561, 40.653667>,  <24.792065, 30.911755, 40.734848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.618231, 30.767561, 40.653667>,  <24.328508, 30.527239, 40.518368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.618231, 30.767561, 40.653667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006922, 0.484231, -0.874913,
		-0.689445, 0.636045, 0.346572,
		0.724305, 0.600805, 0.338254,
		24.835522, 30.947802, 40.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068758, 31.209011, 40.255745>,  <24.328508, 30.527239, 40.518368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068758, 31.209011, 40.255745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.453478, 31.239616, 40.360878>,  <24.684311, 31.257978, 40.423958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.453478, 31.239616, 40.360878>,  <24.068758, 31.209011, 40.255745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453478, 31.239616, 40.360878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146945, 0.665788, -0.731529,
		-0.230965, 0.742208, 0.629113,
		0.961802, 0.076512, 0.262837,
		24.742018, 31.262569, 40.439728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.182318, 31.789198, 40.137577>,  <24.068758, 31.209011, 40.255745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.182318, 31.789198, 40.137577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.566086, 31.688044, 40.187473>,  <24.796347, 31.627352, 40.217411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.566086, 31.688044, 40.187473>,  <24.182318, 31.789198, 40.137577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566086, 31.688044, 40.187473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259795, 0.620746, -0.739716,
		0.109630, 0.742107, 0.661255,
		0.959421, -0.252886, 0.124743,
		24.853912, 31.612179, 40.224895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558010, 32.395588, 40.095867>,  <24.182318, 31.789198, 40.137577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558010, 32.395588, 40.095867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.828615, 32.115135, 40.005764>,  <24.990978, 31.946863, 39.951702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.828615, 32.115135, 40.005764>,  <24.558010, 32.395588, 40.095867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828615, 32.115135, 40.005764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409259, 0.612239, -0.676514,
		0.612239, 0.365481, 0.701133,
		0.676514, -0.701133, -0.225260,
		25.031569, 31.904795, 39.938187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169903, 32.690140, 39.959118>,  <24.558010, 32.395588, 40.095867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169903, 32.690140, 39.959118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.212076, 32.354713, 39.745319>,  <25.237381, 32.153458, 39.617039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.212076, 32.354713, 39.745319>,  <25.169903, 32.690140, 39.959118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212076, 32.354713, 39.745319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483552, 0.512902, -0.709302,
		0.868943, -0.183674, 0.459568,
		0.105433, -0.838567, -0.534499,
		25.243706, 32.103142, 39.584969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708588, 32.828453, 39.601864>,  <25.169903, 32.690140, 39.959118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708588, 32.828453, 39.601864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584949, 32.503677, 39.403786>,  <25.510767, 32.308811, 39.284939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584949, 32.503677, 39.403786>,  <25.708588, 32.828453, 39.601864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584949, 32.503677, 39.403786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466356, 0.324386, -0.822973,
		0.828838, -0.485311, 0.278388,
		-0.309093, -0.811940, -0.495192,
		25.492222, 32.260094, 39.255230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281706, 32.611122, 39.268829>,  <25.708588, 32.828453, 39.601864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281706, 32.611122, 39.268829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.954737, 32.455063, 39.099308>,  <25.758556, 32.361427, 38.997597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.954737, 32.455063, 39.099308>,  <26.281706, 32.611122, 39.268829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954737, 32.455063, 39.099308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340328, 0.266494, -0.901753,
		0.464758, -0.881342, -0.085059,
		-0.817420, -0.390149, -0.423801,
		25.709511, 32.338017, 38.972168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582666, 32.385231, 38.643215>,  <26.281706, 32.611122, 39.268829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582666, 32.385231, 38.643215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.187027, 32.417282, 38.593788>,  <25.949644, 32.436512, 38.564133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.187027, 32.417282, 38.593788>,  <26.582666, 32.385231, 38.643215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187027, 32.417282, 38.593788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141652, 0.288102, -0.947065,
		-0.040288, -0.954241, -0.296311,
		-0.989096, 0.080129, -0.123563,
		25.890299, 32.441322, 38.556721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440666, 32.225685, 37.876667>,  <26.582666, 32.385231, 38.643215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440666, 32.225685, 37.876667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.106909, 32.416611, 37.986908>,  <25.906654, 32.531166, 38.053055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.106909, 32.416611, 37.986908>,  <26.440666, 32.225685, 37.876667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106909, 32.416611, 37.986908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018145, 0.523550, -0.851802,
		-0.550873, -0.705735, -0.445507,
		-0.834392, 0.477318, 0.275604,
		25.856592, 32.559807, 38.069588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098879, 32.281315, 37.292980>,  <26.440666, 32.225685, 37.876667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098879, 32.281315, 37.292980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959585, 32.566479, 37.536453>,  <25.876009, 32.737576, 37.682537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959585, 32.566479, 37.536453>,  <26.098879, 32.281315, 37.292980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959585, 32.566479, 37.536453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113478, 0.676609, -0.727546,
		-0.930513, -0.184286, -0.316519,
		-0.348236, 0.712909, 0.608681,
		25.855114, 32.780350, 37.719059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708801, 32.670925, 36.829933>,  <26.098879, 32.281315, 37.292980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708801, 32.670925, 36.829933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760017, 32.899429, 37.154221>,  <25.790747, 33.036533, 37.348793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760017, 32.899429, 37.154221>,  <25.708801, 32.670925, 36.829933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760017, 32.899429, 37.154221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350452, 0.738651, -0.575829,
		-0.927787, 0.357848, -0.105622,
		0.128041, 0.571262, 0.810719,
		25.798429, 33.070808, 37.397438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530176, 33.324123, 36.603882>,  <25.708801, 32.670925, 36.829933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530176, 33.324123, 36.603882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.772800, 33.376633, 36.917530>,  <25.918375, 33.408138, 37.105721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.772800, 33.376633, 36.917530>,  <25.530176, 33.324123, 36.603882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772800, 33.376633, 36.917530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469629, 0.736653, -0.486612,
		-0.641507, 0.663407, 0.385176,
		0.606563, 0.131275, 0.784123,
		25.954769, 33.416016, 37.152767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573618, 34.037697, 36.557980>,  <25.530176, 33.324123, 36.603882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573618, 34.037697, 36.557980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.880381, 33.927486, 36.789818>,  <26.064438, 33.861359, 36.928921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.880381, 33.927486, 36.789818>,  <25.573618, 34.037697, 36.557980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880381, 33.927486, 36.789818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502368, 0.819746, -0.275032,
		-0.399346, 0.502096, 0.767087,
		0.766909, -0.275527, 0.579599,
		26.110453, 33.844830, 36.963699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751165, 34.684662, 36.953079>,  <25.573618, 34.037697, 36.557980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751165, 34.684662, 36.953079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074860, 34.449696, 36.956703>,  <26.269075, 34.308716, 36.958878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074860, 34.449696, 36.956703>,  <25.751165, 34.684662, 36.953079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074860, 34.449696, 36.956703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566647, 0.776367, -0.275982,
		0.155085, 0.228466, 0.961120,
		0.809234, -0.587416, 0.009057,
		26.317631, 34.273472, 36.959419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294739, 34.994450, 37.295849>,  <25.751165, 34.684662, 36.953079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294739, 34.994450, 37.295849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502789, 34.721283, 37.090675>,  <26.627619, 34.557384, 36.967571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502789, 34.721283, 37.090675>,  <26.294739, 34.994450, 37.295849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502789, 34.721283, 37.090675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695323, 0.687324, -0.210027,
		0.495982, -0.247416, 0.832338,
		0.520122, -0.682914, -0.512934,
		26.658825, 34.516407, 36.936794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055843, 35.050804, 37.354595>,  <26.294739, 34.994450, 37.295849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055843, 35.050804, 37.354595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027069, 34.845577, 37.012463>,  <27.009804, 34.722443, 36.807182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027069, 34.845577, 37.012463>,  <27.055843, 35.050804, 37.354595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027069, 34.845577, 37.012463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709223, 0.576654, -0.405551,
		0.701304, -0.635795, 0.322393,
		-0.071938, -0.513063, -0.855331,
		27.005487, 34.691658, 36.755863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804043, 35.038345, 37.079117>,  <27.055843, 35.050804, 37.354595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804043, 35.038345, 37.079117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568003, 34.924114, 36.777065>,  <27.426378, 34.855576, 36.595833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568003, 34.924114, 36.777065>,  <27.804043, 35.038345, 37.079117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568003, 34.924114, 36.777065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566279, 0.520250, -0.639272,
		0.575421, -0.804850, -0.145282,
		-0.590101, -0.285581, -0.755133,
		27.390972, 34.838440, 36.550526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251593, 34.660748, 36.491726>,  <27.804043, 35.038345, 37.079117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251593, 34.660748, 36.491726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.927372, 34.845425, 36.347591>,  <27.732840, 34.956230, 36.261112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.927372, 34.845425, 36.347591>,  <28.251593, 34.660748, 36.491726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927372, 34.845425, 36.347591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570873, 0.485431, -0.662164,
		-0.130801, -0.742423, -0.657037,
		-0.810552, 0.461697, -0.360334,
		27.684206, 34.983932, 36.239491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854120, 34.933090, 36.161797>,  <28.251593, 34.660748, 36.491726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854120, 34.933090, 36.161797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140934, 35.027691, 36.424072>,  <29.313023, 35.084450, 36.581440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140934, 35.027691, 36.424072>,  <28.854120, 34.933090, 36.161797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140934, 35.027691, 36.424072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051482, -0.920145, 0.388179,
		0.695135, -0.312094, -0.647599,
		0.717033, 0.236498, 0.655692,
		29.356045, 35.098640, 36.620781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303619, 34.367020, 36.095726>,  <28.854120, 34.933090, 36.161797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303619, 34.367020, 36.095726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383142, 34.545719, 36.444641>,  <29.430857, 34.652939, 36.653992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383142, 34.545719, 36.444641>,  <29.303619, 34.367020, 36.095726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383142, 34.545719, 36.444641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093601, -0.894646, 0.436861,
		0.975558, -0.005205, -0.219680,
		0.198809, 0.446745, 0.872292,
		29.442785, 34.679741, 36.706329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891541, 34.062172, 36.423542>,  <29.303619, 34.367020, 36.095726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891541, 34.062172, 36.423542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645725, 34.204567, 36.705143>,  <29.498236, 34.290005, 36.874104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645725, 34.204567, 36.705143>,  <29.891541, 34.062172, 36.423542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645725, 34.204567, 36.705143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055246, -0.870787, 0.488546,
		0.786951, 0.339123, 0.515465,
		-0.614537, 0.355985, 0.704001,
		29.461365, 34.311363, 36.916344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165268, 33.810135, 36.985767>,  <29.891541, 34.062172, 36.423542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165268, 33.810135, 36.985767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784611, 33.893562, 37.075993>,  <29.556217, 33.943619, 37.130127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784611, 33.893562, 37.075993>,  <30.165268, 33.810135, 36.985767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784611, 33.893562, 37.075993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074987, -0.869710, 0.487834,
		0.297919, 0.447329, 0.843292,
		-0.951641, 0.208571, 0.225559,
		29.499119, 33.956135, 37.143661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090496, 33.416260, 37.633389>,  <30.165268, 33.810135, 36.985767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090496, 33.416260, 37.633389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.727049, 33.520481, 37.502838>,  <29.508980, 33.583015, 37.424507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.727049, 33.520481, 37.502838>,  <30.090496, 33.416260, 37.633389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727049, 33.520481, 37.502838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371955, -0.860247, 0.348746,
		-0.189893, 0.438274, 0.878554,
		-0.908620, 0.260558, -0.326373,
		29.454462, 33.598648, 37.404926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700045, 33.278904, 38.204952>,  <30.090496, 33.416260, 37.633389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700045, 33.278904, 38.204952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420952, 33.320518, 37.921448>,  <29.253496, 33.345486, 37.751343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420952, 33.320518, 37.921448>,  <29.700045, 33.278904, 38.204952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420952, 33.320518, 37.921448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457986, -0.825568, 0.329675,
		-0.550837, 0.554629, 0.623671,
		-0.697730, 0.104036, -0.708766,
		29.211634, 33.351730, 37.708817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021423, 33.303543, 38.544758>,  <29.700045, 33.278904, 38.204952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021423, 33.303543, 38.544758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946671, 33.213764, 38.162197>,  <28.901819, 33.159897, 37.932663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946671, 33.213764, 38.162197>,  <29.021423, 33.303543, 38.544758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946671, 33.213764, 38.162197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533325, -0.794413, 0.290642,
		-0.825008, 0.564388, 0.028762,
		-0.186884, -0.224442, -0.956399,
		28.890606, 33.146431, 37.875278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238888, 33.073132, 38.505653>,  <29.021423, 33.303543, 38.544758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238888, 33.073132, 38.505653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434427, 32.917809, 38.193180>,  <28.551750, 32.824615, 38.005695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434427, 32.917809, 38.193180>,  <28.238888, 33.073132, 38.505653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434427, 32.917809, 38.193180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542063, -0.836825, 0.076758,
		-0.683517, 0.385925, -0.619570,
		0.488849, -0.388311, -0.781179,
		28.581081, 32.801315, 37.958828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677872, 32.777313, 38.164547>,  <28.238888, 33.073132, 38.505653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677872, 32.777313, 38.164547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014408, 32.613033, 38.023994>,  <28.216330, 32.514465, 37.939663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014408, 32.613033, 38.023994>,  <27.677872, 32.777313, 38.164547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014408, 32.613033, 38.023994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421553, -0.905480, 0.048976,
		-0.338283, 0.106920, -0.934951,
		0.841343, -0.410699, -0.351380,
		28.266811, 32.489822, 37.918579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405817, 32.198395, 37.806545>,  <27.677872, 32.777313, 38.164547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405817, 32.198395, 37.806545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797129, 32.126804, 37.848381>,  <28.031916, 32.083851, 37.873482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797129, 32.126804, 37.848381>,  <27.405817, 32.198395, 37.806545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797129, 32.126804, 37.848381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193093, -0.970301, 0.145708,
		0.075404, -0.162738, -0.983784,
		0.978279, -0.178975, 0.104588,
		28.090612, 32.073112, 37.879757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595135, 31.550964, 37.390789>,  <27.405817, 32.198395, 37.806545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595135, 31.550964, 37.390789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865086, 31.594049, 37.682800>,  <28.027056, 31.619900, 37.858006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865086, 31.594049, 37.682800>,  <27.595135, 31.550964, 37.390789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865086, 31.594049, 37.682800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004848, -0.988621, 0.150346,
		0.737913, -0.105005, -0.666677,
		0.674878, 0.107710, 0.730026,
		28.067549, 31.626362, 37.901810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112501, 30.933430, 37.330055>,  <27.595135, 31.550964, 37.390789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112501, 30.933430, 37.330055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.127081, 31.087919, 37.698730>,  <28.135830, 31.180613, 37.919933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.127081, 31.087919, 37.698730>,  <28.112501, 30.933430, 37.330055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127081, 31.087919, 37.698730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047932, -0.920560, 0.387649,
		0.998185, -0.058308, -0.015043,
		0.036451, 0.386225, 0.921684,
		28.138016, 31.203787, 37.975235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565622, 30.482210, 37.702599>,  <28.112501, 30.933430, 37.330055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565622, 30.482210, 37.702599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360260, 30.675402, 37.986328>,  <28.237041, 30.791317, 38.156567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360260, 30.675402, 37.986328>,  <28.565622, 30.482210, 37.702599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360260, 30.675402, 37.986328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209544, -0.872117, 0.442157,
		0.832168, 0.078372, 0.548957,
		-0.513407, 0.482980, 0.709326,
		28.206238, 30.820295, 38.199127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782799, 30.129644, 38.293030>,  <28.565622, 30.482210, 37.702599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782799, 30.129644, 38.293030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440683, 30.313086, 38.389496>,  <28.235415, 30.423151, 38.447376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440683, 30.313086, 38.389496>,  <28.782799, 30.129644, 38.293030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440683, 30.313086, 38.389496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334715, -0.844301, 0.418476,
		0.395530, 0.277198, 0.875624,
		-0.855291, 0.458605, 0.241164,
		28.184095, 30.450666, 38.461845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697500, 29.931541, 39.002804>,  <28.782799, 30.129644, 38.293030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697500, 29.931541, 39.002804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336332, 30.014799, 38.852383>,  <28.119633, 30.064754, 38.762131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336332, 30.014799, 38.852383>,  <28.697500, 29.931541, 39.002804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336332, 30.014799, 38.852383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384102, -0.783383, 0.488648,
		-0.192881, 0.585651, 0.787280,
		-0.902919, 0.208145, -0.376050,
		28.065456, 30.077242, 38.739567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312239, 29.995579, 39.546535>,  <28.697500, 29.931541, 39.002804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312239, 29.995579, 39.546535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050358, 29.908337, 39.257042>,  <27.893229, 29.855991, 39.083344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050358, 29.908337, 39.257042>,  <28.312239, 29.995579, 39.546535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050358, 29.908337, 39.257042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256893, -0.836275, 0.484406,
		-0.710894, 0.503065, 0.491483,
		-0.654703, -0.218103, -0.723737,
		27.853947, 29.842905, 39.039921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818796, 29.674654, 39.859459>,  <28.312239, 29.995579, 39.546535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818796, 29.674654, 39.859459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687128, 29.602692, 39.488670>,  <27.608128, 29.559515, 39.266197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687128, 29.602692, 39.488670>,  <27.818796, 29.674654, 39.859459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687128, 29.602692, 39.488670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472887, -0.818303, 0.326737,
		-0.817328, 0.545906, 0.184285,
		-0.329169, -0.179906, -0.926974,
		27.588377, 29.548719, 39.210579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133423, 29.506096, 39.952156>,  <27.818796, 29.674654, 39.859459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133423, 29.506096, 39.952156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246778, 29.347679, 39.602795>,  <27.314793, 29.252630, 39.393177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246778, 29.347679, 39.602795>,  <27.133423, 29.506096, 39.952156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246778, 29.347679, 39.602795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469480, -0.851439, 0.233750,
		-0.836229, 0.343805, -0.427223,
		0.283390, -0.396041, -0.873408,
		27.331795, 29.228867, 39.340771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490307, 29.236219, 39.629379>,  <27.133423, 29.506096, 39.952156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490307, 29.236219, 39.629379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801210, 29.046734, 39.463745>,  <26.987753, 28.933043, 39.364365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801210, 29.046734, 39.463745>,  <26.490307, 29.236219, 39.629379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801210, 29.046734, 39.463745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451858, -0.878246, 0.156551,
		-0.437830, 0.065429, -0.896673,
		0.777257, -0.473712, -0.414087,
		27.034388, 28.904619, 39.339520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132967, 28.836250, 39.117245>,  <26.490307, 29.236219, 39.629379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132967, 28.836250, 39.117245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494928, 28.690220, 39.204762>,  <26.712105, 28.602602, 39.257271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494928, 28.690220, 39.204762>,  <26.132967, 28.836250, 39.117245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494928, 28.690220, 39.204762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411268, -0.882375, 0.228631,
		0.109587, -0.296871, -0.948609,
		0.904903, -0.365077, 0.218790,
		26.766399, 28.580696, 39.270397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068853, 28.104643, 38.864330>,  <26.132967, 28.836250, 39.117245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068853, 28.104643, 38.864330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383059, 28.134653, 39.110043>,  <26.571581, 28.152658, 39.257469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383059, 28.134653, 39.110043>,  <26.068853, 28.104643, 38.864330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383059, 28.134653, 39.110043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245268, -0.873594, 0.420331,
		0.568168, -0.480838, -0.667817,
		0.785512, 0.075025, 0.614282,
		26.618711, 28.157160, 39.294327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.580063, 31.940758, 50.016045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283779, 31.676174, 50.063072>,  <39.106010, 31.517424, 50.091290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283779, 31.676174, 50.063072>,  <39.580063, 31.940758, 50.016045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283779, 31.676174, 50.063072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151447, 0.006095, 0.988446,
		-0.654534, 0.749956, 0.095662,
		-0.740708, -0.661460, 0.117568,
		39.061565, 31.477736, 50.098343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341850, 32.037209, 50.821880>,  <39.580063, 31.940758, 50.016045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341850, 32.037209, 50.821880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121208, 31.723370, 50.708641>,  <38.988823, 31.535067, 50.640697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121208, 31.723370, 50.708641>,  <39.341850, 32.037209, 50.821880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121208, 31.723370, 50.708641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091844, -0.280209, 0.955535,
		-0.829034, 0.553079, 0.082504,
		-0.551605, -0.784593, -0.283100,
		38.955727, 31.487991, 50.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719852, 32.075588, 51.197674>,  <39.341850, 32.037209, 50.821880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719852, 32.075588, 51.197674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800556, 31.698891, 51.090034>,  <38.848980, 31.472872, 51.025452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800556, 31.698891, 51.090034>,  <38.719852, 32.075588, 51.197674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800556, 31.698891, 51.090034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064624, -0.286946, 0.955765,
		-0.977300, -0.175448, -0.118754,
		0.201763, -0.941743, -0.269094,
		38.861084, 31.416368, 51.009308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119038, 31.688124, 51.401257>,  <38.719852, 32.075588, 51.197674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119038, 31.688124, 51.401257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397030, 31.406559, 51.342598>,  <38.563828, 31.237619, 51.307404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397030, 31.406559, 51.342598>,  <38.119038, 31.688124, 51.401257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397030, 31.406559, 51.342598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190294, -0.376742, 0.906561,
		-0.693387, -0.602140, -0.395780,
		0.694984, -0.703912, -0.146644,
		38.605526, 31.195385, 51.298603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831554, 30.987650, 51.564064>,  <38.119038, 31.688124, 51.401257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831554, 30.987650, 51.564064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227467, 30.957802, 51.612682>,  <38.465012, 30.939894, 51.641853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227467, 30.957802, 51.612682>,  <37.831554, 30.987650, 51.564064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227467, 30.957802, 51.612682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142445, -0.474386, 0.868716,
		-0.007162, -0.877149, -0.480165,
		0.989777, -0.074619, 0.121548,
		38.524399, 30.935415, 51.649147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890106, 30.360098, 51.746780>,  <37.831554, 30.987650, 51.564064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890106, 30.360098, 51.746780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246159, 30.492516, 51.872051>,  <38.459789, 30.571966, 51.947212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246159, 30.492516, 51.872051>,  <37.890106, 30.360098, 51.746780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246159, 30.492516, 51.872051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080877, -0.561556, 0.823477,
		0.448472, -0.758330, -0.473085,
		0.890131, 0.331044, 0.313173,
		38.513199, 30.591829, 51.966003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223675, 29.771761, 51.940849>,  <37.890106, 30.360098, 51.746780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223675, 29.771761, 51.940849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430946, 30.054102, 52.134037>,  <38.555309, 30.223507, 52.249950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430946, 30.054102, 52.134037>,  <38.223675, 29.771761, 51.940849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430946, 30.054102, 52.134037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104229, -0.508375, 0.854805,
		0.848895, -0.493285, -0.189861,
		0.518183, 0.705851, 0.482971,
		38.586403, 30.265858, 52.278927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610600, 29.377884, 52.339336>,  <38.223675, 29.771761, 51.940849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610600, 29.377884, 52.339336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620499, 29.744740, 52.498455>,  <38.626438, 29.964853, 52.593925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620499, 29.744740, 52.498455>,  <38.610600, 29.377884, 52.339336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620499, 29.744740, 52.498455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076105, -0.395034, 0.915509,
		0.996793, -0.052928, 0.060024,
		0.024745, 0.917140, 0.397796,
		38.627922, 30.019882, 52.617794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169090, 29.505890, 52.894245>,  <38.610600, 29.377884, 52.339336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169090, 29.505890, 52.894245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.855888, 29.741837, 52.973206>,  <38.667969, 29.883404, 53.020580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.855888, 29.741837, 52.973206>,  <39.169090, 29.505890, 52.894245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855888, 29.741837, 52.973206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138267, -0.474467, 0.869347,
		0.606456, 0.653407, 0.453068,
		-0.783003, 0.589864, 0.197398,
		38.620987, 29.918797, 53.032425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144547, 29.382399, 53.603542>,  <39.169090, 29.505890, 52.894245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144547, 29.382399, 53.603542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827175, 29.609653, 53.516182>,  <38.636753, 29.746006, 53.463764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827175, 29.609653, 53.516182>,  <39.144547, 29.382399, 53.603542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827175, 29.609653, 53.516182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371572, -0.167899, 0.913096,
		0.482092, 0.805626, 0.344318,
		-0.793424, 0.568135, -0.218405,
		38.589149, 29.780094, 53.450661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113033, 29.796782, 54.118725>,  <39.144547, 29.382399, 53.603542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113033, 29.796782, 54.118725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743755, 29.759228, 53.969646>,  <38.522190, 29.736696, 53.880199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743755, 29.759228, 53.969646>,  <39.113033, 29.796782, 54.118725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743755, 29.759228, 53.969646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330705, -0.300045, 0.894767,
		-0.195830, 0.949294, 0.245951,
		-0.923193, -0.093885, -0.372694,
		38.466797, 29.731062, 53.857838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683033, 30.027382, 54.674397>,  <39.113033, 29.796782, 54.118725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683033, 30.027382, 54.674397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441391, 29.814404, 54.437225>,  <38.296406, 29.686617, 54.294922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441391, 29.814404, 54.437225>,  <38.683033, 30.027382, 54.674397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441391, 29.814404, 54.437225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599413, -0.186698, 0.778363,
		-0.525135, 0.825618, -0.206371,
		-0.604101, -0.532447, -0.592927,
		38.260162, 29.654669, 54.259346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866005, 30.642155, 54.962959>,  <38.683033, 30.027382, 54.674397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866005, 30.642155, 54.962959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.895634, 30.941099, 55.227070>,  <38.913410, 31.120466, 55.385536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.895634, 30.941099, 55.227070>,  <38.866005, 30.642155, 54.962959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895634, 30.941099, 55.227070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360600, 0.597223, -0.716444,
		-0.929775, 0.291162, -0.225264,
		0.074068, 0.747362, 0.660276,
		38.917854, 31.165308, 55.425152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202023, 30.847143, 55.353165>,  <38.866005, 30.642155, 54.962959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202023, 30.847143, 55.353165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187527, 30.607498, 55.033226>,  <38.178829, 30.463711, 54.841263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187527, 30.607498, 55.033226>,  <38.202023, 30.847143, 55.353165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187527, 30.607498, 55.033226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814324, 0.481647, -0.323872,
		0.579278, 0.639593, -0.505329,
		-0.036244, -0.599113, -0.799843,
		38.176655, 30.427765, 54.793274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046116, 31.456615, 55.179047>,  <38.202023, 30.847143, 55.353165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046116, 31.456615, 55.179047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771965, 31.639626, 55.405651>,  <37.607475, 31.749432, 55.541615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771965, 31.639626, 55.405651>,  <38.046116, 31.456615, 55.179047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771965, 31.639626, 55.405651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209712, 0.620992, -0.755242,
		-0.697337, -0.636429, -0.329666,
		-0.685378, 0.457523, 0.566507,
		37.566353, 31.776882, 55.575603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465862, 31.503983, 54.722763>,  <38.046116, 31.456615, 55.179047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465862, 31.503983, 54.722763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416393, 31.773741, 55.013939>,  <37.386711, 31.935596, 55.188644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416393, 31.773741, 55.013939>,  <37.465862, 31.503983, 54.722763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416393, 31.773741, 55.013939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181918, 0.705730, -0.684726,
		-0.975506, -0.217106, 0.035407,
		-0.123670, 0.674396, 0.727940,
		37.379292, 31.976059, 55.232323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836044, 31.921356, 54.579021>,  <37.465862, 31.503983, 54.722763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836044, 31.921356, 54.579021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079453, 32.129997, 54.818230>,  <37.225498, 32.255180, 54.961754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079453, 32.129997, 54.818230>,  <36.836044, 31.921356, 54.579021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079453, 32.129997, 54.818230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088109, 0.793370, -0.602330,
		-0.788630, 0.313840, 0.528741,
		0.608522, 0.521603, 0.598023,
		37.262009, 32.286476, 54.997635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542927, 32.480282, 54.514797>,  <36.836044, 31.921356, 54.579021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542927, 32.480282, 54.514797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881336, 32.624645, 54.671764>,  <37.084381, 32.711266, 54.765945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881336, 32.624645, 54.671764>,  <36.542927, 32.480282, 54.514797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881336, 32.624645, 54.671764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012969, 0.749747, -0.661598,
		-0.532991, 0.554637, 0.638983,
		0.846022, 0.360912, 0.392415,
		37.135143, 32.732918, 54.789490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449558, 33.183167, 54.745380>,  <36.542927, 32.480282, 54.514797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449558, 33.183167, 54.745380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830509, 33.118565, 54.641918>,  <37.059078, 33.079803, 54.579842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830509, 33.118565, 54.641918>,  <36.449558, 33.183167, 54.745380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830509, 33.118565, 54.641918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066236, 0.718418, -0.692451,
		0.297656, 0.676603, 0.673505,
		0.952373, -0.161502, -0.258657,
		37.116222, 33.070114, 54.564320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718117, 33.827339, 54.572319>,  <36.449558, 33.183167, 54.745380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718117, 33.827339, 54.572319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004036, 33.587078, 54.429050>,  <37.175587, 33.442921, 54.343090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004036, 33.587078, 54.429050>,  <36.718117, 33.827339, 54.572319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004036, 33.587078, 54.429050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161051, 0.639774, -0.751499,
		0.680535, 0.479486, 0.554044,
		0.714797, -0.600651, -0.358167,
		37.218475, 33.406883, 54.321602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413235, 34.173073, 54.497593>,  <36.718117, 33.827339, 54.572319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413235, 34.173073, 54.497593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392273, 33.880314, 54.225834>,  <37.379696, 33.704659, 54.062778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392273, 33.880314, 54.225834>,  <37.413235, 34.173073, 54.497593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392273, 33.880314, 54.225834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309115, 0.635026, -0.707947,
		0.949580, -0.247112, 0.192962,
		-0.052406, -0.731900, -0.679394,
		37.376553, 33.660744, 54.022015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883541, 34.301533, 54.026207>,  <37.413235, 34.173073, 54.497593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883541, 34.301533, 54.026207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713066, 34.007767, 53.814922>,  <37.610779, 33.831509, 53.688152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713066, 34.007767, 53.814922>,  <37.883541, 34.301533, 54.026207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713066, 34.007767, 53.814922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345264, 0.407640, -0.845353,
		0.836155, -0.542652, 0.079834,
		-0.426189, -0.734410, -0.528208,
		37.585209, 33.787445, 53.656460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355858, 34.051163, 53.545280>,  <37.883541, 34.301533, 54.026207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355858, 34.051163, 53.545280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995594, 33.954224, 53.401016>,  <37.779434, 33.896061, 53.314457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995594, 33.954224, 53.401016>,  <38.355858, 34.051163, 53.545280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995594, 33.954224, 53.401016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332517, 0.149915, -0.931106,
		0.279719, -0.958538, -0.054438,
		-0.900661, -0.242346, -0.360664,
		37.725395, 33.881519, 53.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481400, 33.663124, 52.996025>,  <38.355858, 34.051163, 53.545280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481400, 33.663124, 52.996025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095051, 33.705875, 52.901642>,  <37.863243, 33.731525, 52.845013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095051, 33.705875, 52.901642>,  <38.481400, 33.663124, 52.996025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095051, 33.705875, 52.901642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234459, -0.026574, -0.971763,
		-0.110135, -0.993917, 0.000607,
		-0.965867, 0.106883, -0.235959,
		37.805290, 33.737938, 52.830853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362251, 33.460625, 52.307747>,  <38.481400, 33.663124, 52.996025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362251, 33.460625, 52.307747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008389, 33.646049, 52.327728>,  <37.796070, 33.757305, 52.339718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008389, 33.646049, 52.327728>,  <38.362251, 33.460625, 52.307747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008389, 33.646049, 52.327728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086644, 0.268730, -0.959311,
		-0.458120, -0.844333, -0.277899,
		-0.884657, 0.463557, 0.049954,
		37.742992, 33.785118, 52.342716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978222, 33.258259, 51.699974>,  <38.362251, 33.460625, 52.307747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978222, 33.258259, 51.699974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814674, 33.601807, 51.823376>,  <37.716545, 33.807934, 51.897415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814674, 33.601807, 51.823376>,  <37.978222, 33.258259, 51.699974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814674, 33.601807, 51.823376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041178, 0.355067, -0.933934,
		-0.911663, -0.369155, -0.180543,
		-0.408871, 0.858867, 0.308500,
		37.692013, 33.859467, 51.915924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577618, 33.505878, 51.195969>,  <37.978222, 33.258259, 51.699974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577618, 33.505878, 51.195969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616840, 33.838661, 51.414413>,  <37.640373, 34.038330, 51.545479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616840, 33.838661, 51.414413>,  <37.577618, 33.505878, 51.195969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616840, 33.838661, 51.414413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145752, 0.530829, -0.834851,
		-0.984450, 0.161460, -0.069207,
		0.098058, 0.831956, 0.546108,
		37.646259, 34.088249, 51.578247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063286, 34.117466, 51.056305>,  <37.577618, 33.505878, 51.195969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063286, 34.117466, 51.056305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387234, 34.300133, 51.203583>,  <37.581604, 34.409733, 51.291950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387234, 34.300133, 51.203583>,  <37.063286, 34.117466, 51.056305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387234, 34.300133, 51.203583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009753, 0.638057, -0.769927,
		-0.586531, 0.619949, 0.521196,
		0.809868, 0.456670, 0.368193,
		37.630196, 34.437134, 51.314041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370338, 34.488575, 51.045742>,  <37.063286, 34.117466, 51.056305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370338, 34.488575, 51.045742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100391, 34.334705, 50.793846>,  <35.938423, 34.242382, 50.642708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100391, 34.334705, 50.793846>,  <36.370338, 34.488575, 51.045742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100391, 34.334705, 50.793846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556871, -0.294465, 0.776649,
		-0.484196, 0.874822, -0.015490,
		-0.674869, -0.384677, -0.629743,
		35.897930, 34.219303, 50.604923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711536, 34.753670, 51.287193>,  <36.370338, 34.488575, 51.045742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711536, 34.753670, 51.287193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653534, 34.414864, 51.082630>,  <35.618732, 34.211578, 50.959892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653534, 34.414864, 51.082630>,  <35.711536, 34.753670, 51.287193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653534, 34.414864, 51.082630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654215, -0.305684, 0.691780,
		-0.742278, 0.434883, -0.509804,
		-0.145004, -0.847015, -0.511410,
		35.610031, 34.160759, 50.929207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032791, 34.634480, 51.299126>,  <35.711536, 34.753670, 51.287193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032791, 34.634480, 51.299126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173409, 34.274723, 51.195190>,  <35.257778, 34.058868, 51.132832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173409, 34.274723, 51.195190>,  <35.032791, 34.634480, 51.299126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173409, 34.274723, 51.195190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622448, -0.431869, 0.652723,
		-0.699268, -0.067727, -0.711645,
		0.351544, -0.899390, -0.259836,
		35.278873, 34.004906, 51.117241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500160, 34.278633, 51.151527>,  <35.032791, 34.634480, 51.299126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500160, 34.278633, 51.151527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774757, 33.997677, 51.226761>,  <34.939518, 33.829105, 51.271900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774757, 33.997677, 51.226761>,  <34.500160, 34.278633, 51.151527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774757, 33.997677, 51.226761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541813, -0.321615, 0.776532,
		-0.484936, -0.634993, -0.601350,
		0.686495, -0.702387, 0.188085,
		34.980705, 33.786961, 51.283188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169495, 33.671898, 51.298283>,  <34.500160, 34.278633, 51.151527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169495, 33.671898, 51.298283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515514, 33.568203, 51.470085>,  <34.723129, 33.505985, 51.573166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515514, 33.568203, 51.470085>,  <34.169495, 33.671898, 51.298283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515514, 33.568203, 51.470085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501302, -0.413490, 0.760080,
		-0.019440, -0.872825, -0.487646,
		0.865054, -0.259233, 0.429511,
		34.775032, 33.490433, 51.598938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176952, 32.999996, 51.491806>,  <34.169495, 33.671898, 51.298283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176952, 32.999996, 51.491806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448067, 33.148098, 51.745899>,  <34.610737, 33.236958, 51.898354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448067, 33.148098, 51.745899>,  <34.176952, 32.999996, 51.491806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448067, 33.148098, 51.745899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444417, -0.481979, 0.755110,
		0.585749, -0.794110, -0.162132,
		0.677784, 0.370251, 0.635235,
		34.651402, 33.259174, 51.936470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321526, 32.513226, 51.940742>,  <34.176952, 32.999996, 51.491806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321526, 32.513226, 51.940742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428787, 32.850601, 52.126953>,  <34.493145, 33.053024, 52.238678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428787, 32.850601, 52.126953>,  <34.321526, 32.513226, 51.940742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428787, 32.850601, 52.126953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468993, -0.307803, 0.827830,
		0.841511, -0.440309, 0.313029,
		0.268149, 0.843436, 0.465522,
		34.509232, 33.103634, 52.266609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186722, 31.849184, 51.934124>,  <34.321526, 32.513226, 51.940742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186722, 31.849184, 51.934124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814816, 31.703211, 51.914661>,  <33.591671, 31.615627, 51.902985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814816, 31.703211, 51.914661>,  <34.186722, 31.849184, 51.934124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814816, 31.703211, 51.914661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067754, 0.299511, -0.951684,
		0.361879, -0.881541, -0.303199,
		-0.929760, -0.364938, -0.048659,
		33.535889, 31.593731, 51.900063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152630, 31.466494, 51.318169>,  <34.186722, 31.849184, 51.934124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152630, 31.466494, 51.318169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782177, 31.588696, 51.406654>,  <33.559906, 31.662018, 51.459747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782177, 31.588696, 51.406654>,  <34.152630, 31.466494, 51.318169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782177, 31.588696, 51.406654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107376, 0.348675, -0.931072,
		-0.361581, -0.886054, -0.290117,
		-0.926137, 0.305507, 0.221216,
		33.504337, 31.680347, 51.473019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894955, 31.313734, 50.718613>,  <34.152630, 31.466494, 51.318169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894955, 31.313734, 50.718613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628464, 31.536558, 50.916939>,  <33.468571, 31.670252, 51.035934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628464, 31.536558, 50.916939>,  <33.894955, 31.313734, 50.718613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628464, 31.536558, 50.916939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349859, 0.353683, -0.867472,
		-0.658594, -0.751395, -0.040740,
		-0.666223, 0.557058, 0.495816,
		33.428596, 31.703676, 51.065685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282516, 31.101599, 50.511463>,  <33.894955, 31.313734, 50.718613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282516, 31.101599, 50.511463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233772, 31.468533, 50.663067>,  <33.204525, 31.688694, 50.754028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233772, 31.468533, 50.663067>,  <33.282516, 31.101599, 50.511463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233772, 31.468533, 50.663067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617887, 0.228722, -0.752264,
		-0.776766, -0.325855, 0.538937,
		-0.121862, 0.917335, 0.379005,
		33.197212, 31.743732, 50.776768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520653, 31.314688, 50.283367>,  <33.282516, 31.101599, 50.511463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520653, 31.314688, 50.283367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.762760, 31.626944, 50.345665>,  <32.908024, 31.814297, 50.383045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.762760, 31.626944, 50.345665>,  <32.520653, 31.314688, 50.283367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762760, 31.626944, 50.345665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459504, 0.502403, -0.732425,
		-0.650007, 0.371745, 0.662794,
		0.605266, 0.780638, 0.155747,
		32.944340, 31.861135, 50.392387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209919, 31.770525, 49.852768>,  <32.520653, 31.314688, 50.283367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209919, 31.770525, 49.852768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533951, 31.974459, 49.968590>,  <32.728371, 32.096821, 50.038082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533951, 31.974459, 49.968590>,  <32.209919, 31.770525, 49.852768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533951, 31.974459, 49.968590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006961, 0.485448, -0.874238,
		-0.586281, 0.710216, 0.389701,
		0.810078, 0.509837, 0.289553,
		32.776974, 32.127411, 50.055454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150867, 32.489796, 49.645496>,  <32.209919, 31.770525, 49.852768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150867, 32.489796, 49.645496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539143, 32.411377, 49.701103>,  <32.772106, 32.364326, 49.734467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539143, 32.411377, 49.701103>,  <32.150867, 32.489796, 49.645496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539143, 32.411377, 49.701103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217800, 0.472994, -0.853721,
		0.101615, 0.858977, 0.501830,
		0.970689, -0.196049, 0.139022,
		32.830349, 32.352562, 49.742809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.973045, 27.148064, 53.850395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270985, 27.406197, 53.782566>,  <37.449749, 27.561075, 53.741871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270985, 27.406197, 53.782566>,  <36.973045, 27.148064, 53.850395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270985, 27.406197, 53.782566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289075, 0.083057, -0.953697,
		-0.601365, 0.759375, 0.248414,
		0.744846, 0.645330, -0.169568,
		37.494438, 27.599796, 53.731697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674805, 27.541365, 53.285751>,  <36.973045, 27.148064, 53.850395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674805, 27.541365, 53.285751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.059536, 27.649385, 53.268059>,  <37.290375, 27.714197, 53.257442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.059536, 27.649385, 53.268059>,  <36.674805, 27.541365, 53.285751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059536, 27.649385, 53.268059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130233, 0.309556, -0.941921,
		-0.240675, 0.911727, 0.332910,
		0.961829, 0.270053, -0.044235,
		37.348083, 27.730402, 53.254787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689281, 28.252813, 52.904480>,  <36.674805, 27.541365, 53.285751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689281, 28.252813, 52.904480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.056309, 28.095390, 52.881908>,  <37.276524, 28.000937, 52.868366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.056309, 28.095390, 52.881908>,  <36.689281, 28.252813, 52.904480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056309, 28.095390, 52.881908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033884, 0.218815, -0.975178,
		0.396135, 0.892879, 0.214113,
		0.917567, -0.393557, -0.056426,
		37.331577, 27.977324, 52.864979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966545, 28.657341, 52.400684>,  <36.689281, 28.252813, 52.904480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966545, 28.657341, 52.400684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.224743, 28.352011, 52.411102>,  <37.379662, 28.168814, 52.417355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.224743, 28.352011, 52.411102>,  <36.966545, 28.657341, 52.400684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224743, 28.352011, 52.411102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184700, 0.122912, -0.975079,
		0.741099, 0.634215, 0.220325,
		0.645490, -0.763324, 0.026049,
		37.418388, 28.123013, 52.418919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621933, 28.940611, 52.069626>,  <36.966545, 28.657341, 52.400684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621933, 28.940611, 52.069626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.620571, 28.542690, 52.028908>,  <37.619755, 28.303938, 52.004478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.620571, 28.542690, 52.028908>,  <37.621933, 28.940611, 52.069626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620571, 28.542690, 52.028908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258387, 0.097463, -0.961113,
		0.966036, -0.029574, 0.256711,
		-0.003405, -0.994800, -0.101795,
		37.619549, 28.244251, 51.998371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256939, 28.753212, 51.678959>,  <37.621933, 28.940611, 52.069626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256939, 28.753212, 51.678959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.992653, 28.456299, 51.634300>,  <37.834080, 28.278151, 51.607506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.992653, 28.456299, 51.634300>,  <38.256939, 28.753212, 51.678959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992653, 28.456299, 51.634300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245209, -0.072862, -0.966728,
		0.709452, -0.666113, 0.230156,
		-0.660720, -0.742284, -0.111645,
		37.794437, 28.233614, 51.600807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546486, 28.324772, 51.184444>,  <38.256939, 28.753212, 51.678959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546486, 28.324772, 51.184444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.160748, 28.220968, 51.205227>,  <37.929306, 28.158686, 51.217697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.160748, 28.220968, 51.205227>,  <38.546486, 28.324772, 51.184444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160748, 28.220968, 51.205227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005386, -0.177041, -0.984189,
		0.264608, -0.949374, 0.169330,
		-0.964341, -0.259512, 0.051960,
		37.871445, 28.143114, 51.220814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480587, 27.717865, 50.797779>,  <38.546486, 28.324772, 51.184444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480587, 27.717865, 50.797779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.125206, 27.900600, 50.815472>,  <37.911980, 28.010241, 50.826088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.125206, 27.900600, 50.815472>,  <38.480587, 27.717865, 50.797779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125206, 27.900600, 50.815472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147533, -0.193006, -0.970043,
		-0.434616, -0.868360, 0.238874,
		-0.888450, 0.456838, 0.044228,
		37.858669, 28.037651, 50.828739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149582, 27.268173, 50.398041>,  <38.480587, 27.717865, 50.797779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149582, 27.268173, 50.398041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.926765, 27.599518, 50.421791>,  <37.793076, 27.798325, 50.436039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.926765, 27.599518, 50.421791>,  <38.149582, 27.268173, 50.398041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926765, 27.599518, 50.421791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207571, -0.069648, -0.975737,
		-0.804129, -0.555846, 0.210741,
		-0.557038, 0.828362, 0.059371,
		37.759655, 27.848026, 50.439602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508236, 27.067812, 50.110405>,  <38.149582, 27.268173, 50.398041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508236, 27.067812, 50.110405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470997, 27.463280, 50.063309>,  <37.448654, 27.700562, 50.035049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470997, 27.463280, 50.063309>,  <37.508236, 27.067812, 50.110405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470997, 27.463280, 50.063309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316583, -0.141510, -0.937950,
		-0.943985, -0.050047, 0.326170,
		-0.093098, 0.988671, -0.117739,
		37.443066, 27.759880, 50.027988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949280, 27.153923, 49.741035>,  <37.508236, 27.067812, 50.110405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949280, 27.153923, 49.741035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.121704, 27.508024, 49.671154>,  <37.225159, 27.720484, 49.629227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.121704, 27.508024, 49.671154>,  <36.949280, 27.153923, 49.741035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121704, 27.508024, 49.671154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197849, -0.096175, -0.975503,
		-0.880367, 0.455062, 0.133690,
		0.431057, 0.885251, -0.174703,
		37.251022, 27.773600, 49.618744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560162, 27.372917, 49.091908>,  <36.949280, 27.153923, 49.741035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560162, 27.372917, 49.091908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.882652, 27.608089, 49.118248>,  <37.076145, 27.749193, 49.134052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.882652, 27.608089, 49.118248>,  <36.560162, 27.372917, 49.091908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882652, 27.608089, 49.118248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067759, 0.018804, -0.997524,
		-0.587713, 0.808693, -0.024677,
		0.806227, 0.587930, 0.065848,
		37.124519, 27.784468, 49.138004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222271, 28.050695, 49.241032>,  <36.560162, 27.372917, 49.091908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222271, 28.050695, 49.241032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822990, 28.045010, 49.264339>,  <35.583424, 28.041597, 49.278324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822990, 28.045010, 49.264339>,  <36.222271, 28.050695, 49.241032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822990, 28.045010, 49.264339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059481, -0.359193, 0.931366,
		0.007689, 0.933155, 0.359392,
		-0.998200, -0.014216, 0.058267,
		35.523529, 28.040745, 49.281818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067055, 28.338263, 49.879711>,  <36.222271, 28.050695, 49.241032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067055, 28.338263, 49.879711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.705257, 28.173620, 49.835026>,  <35.488178, 28.074835, 49.808216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.705257, 28.173620, 49.835026>,  <36.067055, 28.338263, 49.879711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705257, 28.173620, 49.835026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075689, -0.102857, 0.991812,
		-0.419728, 0.905538, 0.061879,
		-0.904489, -0.411608, -0.111711,
		35.433910, 28.050138, 49.801514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595345, 28.656710, 50.422043>,  <36.067055, 28.338263, 49.879711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595345, 28.656710, 50.422043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.403870, 28.326950, 50.301231>,  <35.288982, 28.129095, 50.228745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.403870, 28.326950, 50.301231>,  <35.595345, 28.656710, 50.422043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403870, 28.326950, 50.301231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211777, -0.225432, 0.950963,
		-0.852059, 0.519182, -0.066676,
		-0.478692, -0.824397, -0.302032,
		35.260262, 28.079632, 50.210621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818260, 28.786011, 50.688675>,  <35.595345, 28.656710, 50.422043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818260, 28.786011, 50.688675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.881210, 28.400808, 50.601173>,  <34.918980, 28.169687, 50.548672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.881210, 28.400808, 50.601173>,  <34.818260, 28.786011, 50.688675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881210, 28.400808, 50.601173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112867, -0.237602, 0.964783,
		-0.981068, -0.127143, -0.146084,
		0.157375, -0.963006, -0.218753,
		34.928421, 28.111906, 50.535549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219906, 28.442364, 50.873074>,  <34.818260, 28.786011, 50.688675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219906, 28.442364, 50.873074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.497551, 28.154442, 50.876865>,  <34.664139, 27.981688, 50.879139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.497551, 28.154442, 50.876865>,  <34.219906, 28.442364, 50.873074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497551, 28.154442, 50.876865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348097, -0.324091, 0.879655,
		-0.630111, -0.613875, -0.475517,
		0.694110, -0.719807, 0.009475,
		34.705784, 27.938499, 50.879707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905437, 27.834076, 51.070641>,  <34.219906, 28.442364, 50.873074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905437, 27.834076, 51.070641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294014, 27.821167, 51.164677>,  <34.527161, 27.813421, 51.221096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294014, 27.821167, 51.164677>,  <33.905437, 27.834076, 51.070641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294014, 27.821167, 51.164677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230525, -0.363275, 0.902713,
		0.056269, -0.931123, -0.360338,
		0.971438, -0.032273, 0.235088,
		34.585445, 27.811485, 51.235203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940296, 27.159271, 51.406147>,  <33.905437, 27.834076, 51.070641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940296, 27.159271, 51.406147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.268822, 27.361397, 51.512051>,  <34.465939, 27.482672, 51.575592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.268822, 27.361397, 51.512051>,  <33.940296, 27.159271, 51.406147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268822, 27.361397, 51.512051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187730, -0.198841, 0.961883,
		0.538697, -0.839715, -0.068449,
		0.821318, 0.505313, 0.264755,
		34.515217, 27.512991, 51.591476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043583, 26.802605, 51.925068>,  <33.940296, 27.159271, 51.406147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043583, 26.802605, 51.925068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.286724, 27.113935, 51.987961>,  <34.432610, 27.300734, 52.025696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.286724, 27.113935, 51.987961>,  <34.043583, 26.802605, 51.925068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286724, 27.113935, 51.987961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127034, -0.100145, 0.986830,
		0.783823, -0.619820, 0.038001,
		0.607852, 0.778327, 0.157234,
		34.469078, 27.347433, 52.035130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615719, 26.568403, 52.354923>,  <34.043583, 26.802605, 51.925068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615719, 26.568403, 52.354923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579815, 26.962662, 52.412117>,  <34.558273, 27.199217, 52.446434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579815, 26.962662, 52.412117>,  <34.615719, 26.568403, 52.354923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579815, 26.962662, 52.412117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009629, -0.142698, 0.989719,
		0.995917, 0.090216, 0.003318,
		-0.089762, 0.985646, 0.142984,
		34.552887, 27.258356, 52.455013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079029, 26.847668, 53.046661>,  <34.615719, 26.568403, 52.354923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079029, 26.847668, 53.046661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773884, 27.095943, 52.974243>,  <34.590797, 27.244909, 52.930790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773884, 27.095943, 52.974243>,  <35.079029, 26.847668, 53.046661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773884, 27.095943, 52.974243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247420, -0.021545, 0.968669,
		0.597342, 0.783760, 0.170007,
		-0.762867, 0.620690, -0.181048,
		34.545025, 27.282150, 52.919930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098194, 27.231094, 53.668663>,  <35.079029, 26.847668, 53.046661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098194, 27.231094, 53.668663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.743092, 27.339102, 53.519543>,  <34.530029, 27.403906, 53.430073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.743092, 27.339102, 53.519543>,  <35.098194, 27.231094, 53.668663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743092, 27.339102, 53.519543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311996, 0.242501, 0.918614,
		0.338445, 0.931818, -0.131038,
		-0.887758, 0.270017, -0.372797,
		34.476765, 27.420107, 53.407703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011875, 27.960711, 53.853458>,  <35.098194, 27.231094, 53.668663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011875, 27.960711, 53.853458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658012, 27.782173, 53.799549>,  <34.445694, 27.675051, 53.767204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658012, 27.782173, 53.799549>,  <35.011875, 27.960711, 53.853458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658012, 27.782173, 53.799549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283235, 0.284863, 0.915768,
		-0.370355, 0.848311, -0.378425,
		-0.884655, -0.446343, -0.134771,
		34.392616, 27.648270, 53.759117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485958, 28.316858, 54.155392>,  <35.011875, 27.960711, 53.853458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485958, 28.316858, 54.155392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260506, 27.988529, 54.118355>,  <34.125237, 27.791533, 54.096134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260506, 27.988529, 54.118355>,  <34.485958, 28.316858, 54.155392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260506, 27.988529, 54.118355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325724, 0.117840, 0.938092,
		-0.759097, 0.558895, -0.333780,
		-0.563628, -0.820823, -0.092594,
		34.091419, 27.742283, 54.090576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889481, 28.604153, 54.279556>,  <34.485958, 28.316858, 54.155392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889481, 28.604153, 54.279556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870201, 28.211678, 54.354340>,  <33.858635, 27.976192, 54.399208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870201, 28.211678, 54.354340>,  <33.889481, 28.604153, 54.279556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870201, 28.211678, 54.354340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226688, 0.193033, 0.954647,
		-0.972774, 0.003633, -0.231727,
		-0.048199, -0.981185, 0.186955,
		33.855740, 27.917322, 54.410427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842033, 29.307116, 53.897690>,  <33.889481, 28.604153, 54.279556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842033, 29.307116, 53.897690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.782879, 29.662313, 54.071861>,  <33.747387, 29.875431, 54.176365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.782879, 29.662313, 54.071861>,  <33.842033, 29.307116, 53.897690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782879, 29.662313, 54.071861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001792, 0.440510, -0.897746,
		-0.989004, -0.131980, -0.066735,
		-0.147881, 0.887993, 0.435430,
		33.738514, 29.928711, 54.202492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145298, 29.485193, 53.707466>,  <33.842033, 29.307116, 53.897690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145298, 29.485193, 53.707466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371265, 29.808386, 53.774448>,  <33.506844, 30.002300, 53.814636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371265, 29.808386, 53.774448>,  <33.145298, 29.485193, 53.707466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371265, 29.808386, 53.774448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107492, 0.273267, -0.955913,
		-0.818118, 0.522010, 0.241223,
		0.564915, 0.807980, 0.167453,
		33.540741, 30.050779, 53.824684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805706, 30.077032, 53.436169>,  <33.145298, 29.485193, 53.707466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805706, 30.077032, 53.436169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.161552, 30.253143, 53.484734>,  <33.375061, 30.358810, 53.513870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.161552, 30.253143, 53.484734>,  <32.805706, 30.077032, 53.436169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161552, 30.253143, 53.484734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254175, 0.698150, -0.669314,
		-0.379447, 0.564572, 0.732992,
		0.889615, 0.440278, 0.121411,
		33.428436, 30.385227, 53.521156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644917, 30.899708, 53.515156>,  <32.805706, 30.077032, 53.436169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644917, 30.899708, 53.515156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.027367, 30.838062, 53.415493>,  <33.256836, 30.801075, 53.355698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.027367, 30.838062, 53.415493>,  <32.644917, 30.899708, 53.515156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027367, 30.838062, 53.415493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128391, 0.544006, -0.829200,
		0.263333, 0.824807, 0.500350,
		0.956123, -0.154115, -0.249152,
		33.314205, 30.791828, 53.340748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806171, 31.526337, 53.355000>,  <32.644917, 30.899708, 53.515156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806171, 31.526337, 53.355000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.063076, 31.280912, 53.171242>,  <33.217220, 31.133657, 53.060989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.063076, 31.280912, 53.171242>,  <32.806171, 31.526337, 53.355000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063076, 31.280912, 53.171242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100060, 0.661336, -0.743386,
		0.759925, 0.431483, 0.486145,
		0.642263, -0.613562, -0.459391,
		33.255756, 31.096844, 53.033424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372383, 31.906790, 53.170971>,  <32.806171, 31.526337, 53.355000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372383, 31.906790, 53.170971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353188, 31.583584, 52.936089>,  <33.341671, 31.389660, 52.795158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353188, 31.583584, 52.936089>,  <33.372383, 31.906790, 53.170971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353188, 31.583584, 52.936089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053015, 0.584989, -0.809306,
		0.997440, -0.069972, 0.014761,
		-0.047993, -0.808017, -0.587201,
		33.338791, 31.341179, 52.759930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926193, 32.004082, 52.665657>,  <33.372383, 31.906790, 53.170971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926193, 32.004082, 52.665657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672985, 31.734478, 52.513344>,  <33.521061, 31.572716, 52.421955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672985, 31.734478, 52.513344>,  <33.926193, 32.004082, 52.665657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672985, 31.734478, 52.513344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122227, 0.398697, -0.908901,
		0.764429, -0.621891, -0.169999,
		-0.633016, -0.674012, -0.380788,
		33.483082, 31.532274, 52.399109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604069, 32.344173, 52.657070>,  <33.926193, 32.004082, 52.665657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604069, 32.344173, 52.657070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541534, 32.736336, 52.704998>,  <34.504013, 32.971634, 52.733757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541534, 32.736336, 52.704998>,  <34.604069, 32.344173, 52.657070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541534, 32.736336, 52.704998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216232, -0.152343, 0.964384,
		0.963745, 0.124857, 0.235812,
		-0.156335, 0.980409, 0.119821,
		34.494633, 33.030460, 52.740944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009460, 32.601433, 53.265335>,  <34.604069, 32.344173, 52.657070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009460, 32.601433, 53.265335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709999, 32.865162, 53.237602>,  <34.530323, 33.023399, 53.220963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709999, 32.865162, 53.237602>,  <35.009460, 32.601433, 53.265335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709999, 32.865162, 53.237602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137035, -0.051576, 0.989223,
		0.648643, 0.750087, 0.128963,
		-0.748654, 0.659325, -0.069334,
		34.485401, 33.062958, 53.216801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199127, 33.063225, 53.808479>,  <35.009460, 32.601433, 53.265335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199127, 33.063225, 53.808479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811378, 33.116417, 53.725887>,  <34.578728, 33.148331, 53.676331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811378, 33.116417, 53.725887>,  <35.199127, 33.063225, 53.808479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811378, 33.116417, 53.725887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185754, 0.153029, 0.970607,
		0.160666, 0.979234, -0.123641,
		-0.969372, 0.132977, -0.206483,
		34.520565, 33.156311, 53.663944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112663, 33.752651, 54.077042>,  <35.199127, 33.063225, 53.808479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112663, 33.752651, 54.077042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780132, 33.535412, 54.029808>,  <34.580616, 33.405067, 54.001469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780132, 33.535412, 54.029808>,  <35.112663, 33.752651, 54.077042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780132, 33.535412, 54.029808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115754, -0.038616, 0.992527,
		-0.543599, 0.838781, -0.030763,
		-0.831325, -0.543098, -0.118084,
		34.530735, 33.372482, 53.994385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788391, 33.946003, 54.605476>,  <35.112663, 33.752651, 54.077042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788391, 33.946003, 54.605476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.572155, 33.626850, 54.498775>,  <34.442413, 33.435360, 54.434757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.572155, 33.626850, 54.498775>,  <34.788391, 33.946003, 54.605476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572155, 33.626850, 54.498775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144798, -0.224099, 0.963749,
		-0.828732, 0.559617, 0.005614,
		-0.540589, -0.797877, -0.266750,
		34.409977, 33.387486, 54.418751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188519, 33.912724, 54.950005>,  <34.788391, 33.946003, 54.605476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188519, 33.912724, 54.950005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.199844, 33.526783, 54.845501>,  <34.206638, 33.295219, 54.782799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.199844, 33.526783, 54.845501>,  <34.188519, 33.912724, 54.950005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199844, 33.526783, 54.845501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241800, -0.260208, 0.934786,
		-0.969913, 0.036708, -0.240668,
		0.028310, -0.964854, -0.261255,
		34.208336, 33.237328, 54.767124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669456, 33.647690, 55.413494>,  <34.188519, 33.912724, 54.950005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669456, 33.647690, 55.413494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898754, 33.349228, 55.278053>,  <34.036331, 33.170151, 55.196789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898754, 33.349228, 55.278053>,  <33.669456, 33.647690, 55.413494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898754, 33.349228, 55.278053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059590, -0.374184, 0.925438,
		-0.817216, -0.550677, -0.170035,
		0.573242, -0.746151, -0.338603,
		34.070728, 33.125381, 55.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342098, 33.025036, 55.808338>,  <33.669456, 33.647690, 55.413494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342098, 33.025036, 55.808338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721794, 32.948330, 55.708599>,  <33.949612, 32.902306, 55.648758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721794, 32.948330, 55.708599>,  <33.342098, 33.025036, 55.808338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721794, 32.948330, 55.708599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174199, -0.339555, 0.924314,
		-0.261915, -0.920831, -0.288914,
		0.949239, -0.191763, -0.249343,
		34.006565, 32.890800, 55.633797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503429, 32.428627, 56.199368>,  <33.342098, 33.025036, 55.808338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503429, 32.428627, 56.199368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.861771, 32.569710, 56.091263>,  <34.076775, 32.654362, 56.026402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.861771, 32.569710, 56.091263>,  <33.503429, 32.428627, 56.199368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861771, 32.569710, 56.091263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355639, -0.204499, 0.911976,
		0.266395, -0.913113, -0.308639,
		0.895854, 0.352710, -0.270261,
		34.130527, 32.675522, 56.010185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.305885, 34.864983, 40.279171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605732, 35.017597, 40.495510>,  <37.785641, 35.109165, 40.625313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605732, 35.017597, 40.495510>,  <37.305885, 34.864983, 40.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605732, 35.017597, 40.495510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437004, -0.328410, 0.837361,
		0.497100, -0.864048, -0.079449,
		0.749613, 0.381533, 0.540845,
		37.830616, 35.132057, 40.657764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532005, 34.341011, 40.823143>,  <37.305885, 34.864983, 40.279171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532005, 34.341011, 40.823143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630615, 34.708866, 40.945454>,  <37.689781, 34.929577, 41.018841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630615, 34.708866, 40.945454>,  <37.532005, 34.341011, 40.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630615, 34.708866, 40.945454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331526, -0.216455, 0.918279,
		0.910668, -0.327751, 0.251521,
		0.246523, 0.919634, 0.305777,
		37.704571, 34.984756, 41.037186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918034, 34.246761, 41.410870>,  <37.532005, 34.341011, 40.823143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918034, 34.246761, 41.410870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842987, 34.636948, 41.456936>,  <37.797958, 34.871059, 41.484573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842987, 34.636948, 41.456936>,  <37.918034, 34.246761, 41.410870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842987, 34.636948, 41.456936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146341, -0.143695, 0.978742,
		0.971280, 0.166775, 0.169710,
		-0.187617, 0.975468, 0.115162,
		37.786701, 34.929588, 41.491486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267750, 34.446091, 42.045368>,  <37.918034, 34.246761, 41.410870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267750, 34.446091, 42.045368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000374, 34.739311, 41.995056>,  <37.839951, 34.915245, 41.964867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000374, 34.739311, 41.995056>,  <38.267750, 34.446091, 42.045368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000374, 34.739311, 41.995056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154310, 0.028752, 0.987604,
		0.727586, 0.679560, 0.093899,
		-0.668437, 0.733056, -0.125782,
		37.799843, 34.959229, 41.957321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364151, 34.924347, 42.647038>,  <38.267750, 34.446091, 42.045368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364151, 34.924347, 42.647038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004311, 35.012997, 42.496521>,  <37.788406, 35.066185, 42.406212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004311, 35.012997, 42.496521>,  <38.364151, 34.924347, 42.647038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004311, 35.012997, 42.496521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339716, 0.186291, 0.921894,
		0.274413, 0.957172, -0.092300,
		-0.899606, 0.221624, -0.376287,
		37.734428, 35.079483, 42.383636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197433, 35.523384, 42.978176>,  <38.364151, 34.924347, 42.647038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197433, 35.523384, 42.978176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858063, 35.352306, 42.853439>,  <37.654442, 35.249660, 42.778595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858063, 35.352306, 42.853439>,  <38.197433, 35.523384, 42.978176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858063, 35.352306, 42.853439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494582, 0.430666, 0.754928,
		-0.188580, 0.794733, -0.576920,
		-0.848426, -0.427699, -0.311846,
		37.603535, 35.223995, 42.759884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678253, 35.898548, 43.361847>,  <38.197433, 35.523384, 42.978176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678253, 35.898548, 43.361847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450882, 35.609756, 43.204044>,  <37.314457, 35.436481, 43.109364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450882, 35.609756, 43.204044>,  <37.678253, 35.898548, 43.361847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450882, 35.609756, 43.204044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715951, 0.197840, 0.669532,
		-0.405338, 0.663030, -0.629359,
		-0.568432, -0.721977, -0.394505,
		37.280354, 35.393162, 43.085693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987938, 36.183437, 43.373333>,  <37.678253, 35.898548, 43.361847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987938, 36.183437, 43.373333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964794, 35.784416, 43.357677>,  <36.950909, 35.545002, 43.348286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964794, 35.784416, 43.357677>,  <36.987938, 36.183437, 43.373333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964794, 35.784416, 43.357677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651630, 0.008033, 0.758494,
		-0.756327, 0.069387, -0.650503,
		-0.057855, -0.997557, -0.039139,
		36.947437, 35.485149, 43.345936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276405, 36.036293, 43.362476>,  <36.987938, 36.183437, 43.373333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276405, 36.036293, 43.362476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467106, 35.714615, 43.504448>,  <36.581524, 35.521606, 43.589630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467106, 35.714615, 43.504448>,  <36.276405, 36.036293, 43.362476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467106, 35.714615, 43.504448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554412, 0.038252, 0.831363,
		-0.682158, -0.593128, -0.427621,
		0.476747, -0.804199, 0.354931,
		36.610130, 35.473354, 43.610928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784512, 35.736332, 43.760090>,  <36.276405, 36.036293, 43.362476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784512, 35.736332, 43.760090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115768, 35.547874, 43.881550>,  <36.314522, 35.434799, 43.954426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115768, 35.547874, 43.881550>,  <35.784512, 35.736332, 43.760090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115768, 35.547874, 43.881550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414301, -0.149641, 0.897754,
		-0.377532, -0.869272, -0.319119,
		0.828145, -0.471142, 0.303646,
		36.364212, 35.406532, 43.972645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480179, 35.135105, 43.964241>,  <35.784512, 35.736332, 43.760090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480179, 35.135105, 43.964241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832920, 35.165009, 44.150467>,  <36.044563, 35.182949, 44.262203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832920, 35.165009, 44.150467>,  <35.480179, 35.135105, 43.964241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832920, 35.165009, 44.150467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453823, -0.133497, 0.881035,
		0.128017, -0.988226, -0.083797,
		0.881848, 0.074758, 0.465570,
		36.097473, 35.187435, 44.290138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547565, 34.565701, 44.461929>,  <35.480179, 35.135105, 43.964241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547565, 34.565701, 44.461929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822952, 34.829334, 44.583008>,  <35.988182, 34.987514, 44.655655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822952, 34.829334, 44.583008>,  <35.547565, 34.565701, 44.461929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822952, 34.829334, 44.583008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237341, -0.189636, 0.952737,
		0.685337, -0.727766, 0.025871,
		0.688463, 0.659086, 0.302693,
		36.029491, 35.027061, 44.673817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113602, 33.956345, 44.260429>,  <35.547565, 34.565701, 44.461929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113602, 33.956345, 44.260429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715279, 33.941620, 44.293930>,  <34.476284, 33.932785, 44.314030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715279, 33.941620, 44.293930>,  <35.113602, 33.956345, 44.260429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715279, 33.941620, 44.293930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090667, 0.274991, -0.957162,
		0.012204, -0.960742, -0.277175,
		-0.995806, -0.036812, 0.083751,
		34.416538, 33.930576, 44.319054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838364, 33.404129, 43.799061>,  <35.113602, 33.956345, 44.260429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838364, 33.404129, 43.799061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544765, 33.669693, 43.856304>,  <34.368607, 33.829033, 43.890648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544765, 33.669693, 43.856304>,  <34.838364, 33.404129, 43.799061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544765, 33.669693, 43.856304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106931, 0.095112, -0.989707,
		-0.670687, -0.741739, 0.001181,
		-0.733992, 0.663910, 0.143105,
		34.324570, 33.868866, 43.899235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509296, 33.350178, 43.235123>,  <34.838364, 33.404129, 43.799061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509296, 33.350178, 43.235123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307869, 33.673462, 43.357250>,  <34.187012, 33.867432, 43.430527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307869, 33.673462, 43.357250>,  <34.509296, 33.350178, 43.235123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307869, 33.673462, 43.357250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208754, 0.229103, -0.950754,
		-0.838355, -0.542508, 0.053347,
		-0.503570, 0.808206, 0.305321,
		34.156799, 33.915924, 43.448845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799419, 33.277645, 42.936623>,  <34.509296, 33.350178, 43.235123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799419, 33.277645, 42.936623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846275, 33.666096, 43.019760>,  <33.874390, 33.899166, 43.069641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846275, 33.666096, 43.019760>,  <33.799419, 33.277645, 42.936623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846275, 33.666096, 43.019760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110743, 0.220749, -0.969023,
		-0.986922, 0.090494, 0.133404,
		0.117139, 0.971124, 0.207841,
		33.881416, 33.957432, 43.082111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146133, 33.677376, 42.959232>,  <33.799419, 33.277645, 42.936623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146133, 33.677376, 42.959232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394989, 33.972996, 42.855892>,  <33.544300, 34.150368, 42.793888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394989, 33.972996, 42.855892>,  <33.146133, 33.677376, 42.959232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394989, 33.972996, 42.855892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578832, 0.212006, -0.787405,
		-0.527161, 0.639417, 0.559684,
		0.622137, 0.739053, -0.258354,
		33.581631, 34.194710, 42.778385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725197, 34.032124, 42.506744>,  <33.146133, 33.677376, 42.959232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725197, 34.032124, 42.506744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073925, 34.220078, 42.451401>,  <33.283161, 34.332851, 42.418194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073925, 34.220078, 42.451401>,  <32.725197, 34.032124, 42.506744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073925, 34.220078, 42.451401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289538, 0.266503, -0.919317,
		-0.395100, 0.841537, 0.368391,
		0.871816, 0.469885, -0.138361,
		33.335468, 34.361042, 42.409893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578331, 34.612999, 42.326878>,  <32.725197, 34.032124, 42.506744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578331, 34.612999, 42.326878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952019, 34.581158, 42.187790>,  <33.176231, 34.562054, 42.104340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952019, 34.581158, 42.187790>,  <32.578331, 34.612999, 42.326878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952019, 34.581158, 42.187790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314856, 0.274141, -0.908687,
		0.167655, 0.958389, 0.231043,
		0.934215, -0.079601, -0.347716,
		33.232285, 34.557278, 42.083477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645031, 35.171787, 41.934097>,  <32.578331, 34.612999, 42.326878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645031, 35.171787, 41.934097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918419, 34.912624, 41.799583>,  <33.082451, 34.757126, 41.718876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918419, 34.912624, 41.799583>,  <32.645031, 35.171787, 41.934097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918419, 34.912624, 41.799583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343173, 0.121419, -0.931391,
		0.644289, 0.751978, -0.139359,
		0.683465, -0.647909, -0.336287,
		33.123459, 34.718250, 41.698696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819653, 35.462360, 41.295227>,  <32.645031, 35.171787, 41.934097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819653, 35.462360, 41.295227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943493, 35.084114, 41.255310>,  <33.017799, 34.857166, 41.231361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943493, 35.084114, 41.255310>,  <32.819653, 35.462360, 41.295227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943493, 35.084114, 41.255310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273881, 0.011816, -0.961691,
		0.910568, 0.325076, -0.255328,
		0.309605, -0.945614, -0.099792,
		33.036373, 34.800430, 41.225372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254566, 35.487640, 40.743763>,  <32.819653, 35.462360, 41.295227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254566, 35.487640, 40.743763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112198, 35.118061, 40.799809>,  <33.026775, 34.896313, 40.833435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112198, 35.118061, 40.799809>,  <33.254566, 35.487640, 40.743763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112198, 35.118061, 40.799809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240570, -0.054286, -0.969113,
		0.903020, -0.378635, -0.202954,
		-0.355923, -0.923953, 0.140110,
		33.005421, 34.840874, 40.841843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467999, 35.247166, 40.153030>,  <33.254566, 35.487640, 40.743763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467999, 35.247166, 40.153030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193756, 34.983463, 40.276527>,  <33.029209, 34.825241, 40.350624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193756, 34.983463, 40.276527>,  <33.467999, 35.247166, 40.153030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193756, 34.983463, 40.276527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299734, -0.130846, -0.945007,
		0.663402, -0.740443, -0.107893,
		-0.685607, -0.659259, 0.308739,
		32.988075, 34.785686, 40.369148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523914, 34.661221, 39.800293>,  <33.467999, 35.247166, 40.153030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523914, 34.661221, 39.800293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144951, 34.653255, 39.928051>,  <32.917572, 34.648476, 40.004704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144951, 34.653255, 39.928051>,  <33.523914, 34.661221, 39.800293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144951, 34.653255, 39.928051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319694, 0.014300, -0.947413,
		0.014300, -0.999700, -0.019915,
		0.947413, 0.019915, -0.319394,
		32.860725, 34.647282, 40.023869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243206, 34.185291, 39.354870>,  <33.523914, 34.661221, 39.800293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243206, 34.185291, 39.354870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942017, 34.401573, 39.504894>,  <32.761303, 34.531342, 39.594910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942017, 34.401573, 39.504894>,  <33.243206, 34.185291, 39.354870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942017, 34.401573, 39.504894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500873, -0.101256, -0.859577,
		-0.426797, -0.835099, 0.347066,
		-0.752974, 0.540701, 0.375063,
		32.716125, 34.563782, 39.617413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683060, 33.937611, 39.029263>,  <33.243206, 34.185291, 39.354870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683060, 33.937611, 39.029263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522877, 34.270397, 39.182873>,  <32.426769, 34.470070, 39.275040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522877, 34.270397, 39.182873>,  <32.683060, 33.937611, 39.029263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522877, 34.270397, 39.182873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603855, 0.075612, -0.793500,
		-0.689200, -0.549653, 0.472107,
		-0.400453, 0.831964, 0.384023,
		32.402740, 34.519985, 39.298080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701626, 33.358131, 39.316311>,  <32.683060, 33.937611, 39.029263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701626, 33.358131, 39.316311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996552, 33.466309, 39.068691>,  <33.173508, 33.531216, 38.920120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996552, 33.466309, 39.068691>,  <32.701626, 33.358131, 39.316311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996552, 33.466309, 39.068691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650544, -0.531238, 0.542750,
		-0.182081, -0.802900, -0.567625,
		0.737319, 0.270441, -0.619050,
		33.217747, 33.547440, 38.882977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261257, 32.823505, 39.348503>,  <32.701626, 33.358131, 39.316311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261257, 32.823505, 39.348503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575237, 32.575958, 39.360146>,  <33.763626, 32.427429, 39.367130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575237, 32.575958, 39.360146>,  <33.261257, 32.823505, 39.348503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575237, 32.575958, 39.360146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172677, -0.173422, 0.969591,
		-0.595005, -0.766109, -0.242993,
		0.784953, -0.618871, 0.029102,
		33.810722, 32.390297, 39.368877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961090, 32.379364, 39.830460>,  <33.261257, 32.823505, 39.348503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961090, 32.379364, 39.830460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356491, 32.327984, 39.798561>,  <33.593731, 32.297153, 39.779423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356491, 32.327984, 39.798561>,  <32.961090, 32.379364, 39.830460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356491, 32.327984, 39.798561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012913, -0.453769, 0.891026,
		-0.150640, -0.881812, -0.446894,
		0.988504, -0.128454, -0.079743,
		33.653042, 32.289448, 39.774639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161407, 31.589819, 39.887711>,  <32.961090, 32.379364, 39.830460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161407, 31.589819, 39.887711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479176, 31.795952, 40.016293>,  <33.669834, 31.919632, 40.093441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479176, 31.795952, 40.016293>,  <33.161407, 31.589819, 39.887711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479176, 31.795952, 40.016293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051162, -0.584148, 0.810033,
		0.605213, -0.627059, -0.490424,
		0.794418, 0.515333, 0.321452,
		33.717503, 31.950552, 40.112728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546749, 31.100712, 40.267906>,  <33.161407, 31.589819, 39.887711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546749, 31.100712, 40.267906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688438, 31.450155, 40.401371>,  <33.773453, 31.659821, 40.481449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688438, 31.450155, 40.401371>,  <33.546749, 31.100712, 40.267906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688438, 31.450155, 40.401371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305112, -0.445239, 0.841825,
		0.883985, -0.196393, -0.424265,
		0.354228, 0.873609, 0.333662,
		33.794708, 31.712238, 40.501469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296043, 30.984463, 40.405331>,  <33.546749, 31.100712, 40.267906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296043, 30.984463, 40.405331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173515, 31.291939, 40.629932>,  <34.099998, 31.476423, 40.764694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173515, 31.291939, 40.629932>,  <34.296043, 30.984463, 40.405331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173515, 31.291939, 40.629932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238981, -0.508872, 0.827005,
		0.921443, 0.387515, -0.027826,
		-0.306317, 0.768688, 0.561505,
		34.081619, 31.522545, 40.798386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707397, 30.955997, 41.047531>,  <34.296043, 30.984463, 40.405331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707397, 30.955997, 41.047531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412685, 31.207403, 41.147232>,  <34.235859, 31.358248, 41.207054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412685, 31.207403, 41.147232>,  <34.707397, 30.955997, 41.047531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412685, 31.207403, 41.147232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281508, -0.050021, 0.958254,
		0.614747, 0.776186, -0.140078,
		-0.736777, 0.628517, 0.249252,
		34.191654, 31.395958, 41.222008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908302, 31.251890, 41.633041>,  <34.707397, 30.955997, 41.047531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908302, 31.251890, 41.633041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515251, 31.326115, 41.634331>,  <34.279419, 31.370649, 41.635105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515251, 31.326115, 41.634331>,  <34.908302, 31.251890, 41.633041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515251, 31.326115, 41.634331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026184, -0.155796, 0.987442,
		0.183733, 0.970204, 0.157948,
		-0.982628, 0.185561, 0.003221,
		34.220463, 31.381783, 41.635296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762959, 31.844515, 42.129242>,  <34.908302, 31.251890, 41.633041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762959, 31.844515, 42.129242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440525, 31.609001, 42.105347>,  <34.247066, 31.467693, 42.091011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440525, 31.609001, 42.105347>,  <34.762959, 31.844515, 42.129242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440525, 31.609001, 42.105347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013333, -0.082842, 0.996473,
		-0.591657, 0.804033, 0.058927,
		-0.806080, -0.588785, -0.059734,
		34.198700, 31.432365, 42.087425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297344, 32.096375, 42.661835>,  <34.762959, 31.844515, 42.129242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297344, 32.096375, 42.661835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178272, 31.727360, 42.563602>,  <34.106831, 31.505951, 42.504665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178272, 31.727360, 42.563602>,  <34.297344, 32.096375, 42.661835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178272, 31.727360, 42.563602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020404, -0.251033, 0.967764,
		-0.954448, 0.293092, 0.055904,
		-0.297678, -0.922540, -0.245578,
		34.088970, 31.450598, 42.489929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859745, 31.856613, 43.276375>,  <34.297344, 32.096375, 42.661835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859745, 31.856613, 43.276375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931381, 31.521868, 43.069462>,  <33.974361, 31.321020, 42.945312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931381, 31.521868, 43.069462>,  <33.859745, 31.856613, 43.276375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931381, 31.521868, 43.069462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032142, -0.530483, 0.847086,
		-0.983307, -0.135079, -0.121903,
		0.179091, -0.836864, -0.517286,
		33.985107, 31.270809, 42.914276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367371, 31.343987, 43.525654>,  <33.859745, 31.856613, 43.276375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367371, 31.343987, 43.525654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654190, 31.123678, 43.354774>,  <33.826283, 30.991493, 43.252247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654190, 31.123678, 43.354774>,  <33.367371, 31.343987, 43.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654190, 31.123678, 43.354774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067893, -0.554783, 0.829220,
		-0.693713, -0.623591, -0.360411,
		0.717045, -0.550772, -0.427198,
		33.869305, 30.958447, 43.226616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217876, 30.748495, 43.725723>,  <33.367371, 31.343987, 43.525654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217876, 30.748495, 43.725723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590519, 30.670650, 43.602936>,  <33.814106, 30.623943, 43.529263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590519, 30.670650, 43.602936>,  <33.217876, 30.748495, 43.725723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590519, 30.670650, 43.602936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128452, -0.613785, 0.778953,
		-0.340007, -0.765111, -0.546809,
		0.931609, -0.194611, -0.306971,
		33.870003, 30.612267, 43.510845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310345, 30.064598, 44.038792>,  <33.217876, 30.748495, 43.725723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310345, 30.064598, 44.038792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677040, 30.196121, 43.948032>,  <33.897057, 30.275034, 43.893578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677040, 30.196121, 43.948032>,  <33.310345, 30.064598, 44.038792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677040, 30.196121, 43.948032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379163, -0.537218, 0.753414,
		0.125831, -0.776713, -0.617157,
		0.916734, 0.328806, -0.226903,
		33.952061, 30.294764, 43.879963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786652, 29.488396, 44.067364>,  <33.310345, 30.064598, 44.038792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786652, 29.488396, 44.067364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021011, 29.809637, 44.110733>,  <34.161625, 30.002382, 44.136753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021011, 29.809637, 44.110733>,  <33.786652, 29.488396, 44.067364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021011, 29.809637, 44.110733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424549, -0.418145, 0.803065,
		0.690279, -0.424480, -0.585945,
		0.585895, 0.803101, 0.108424,
		34.196781, 30.050568, 44.143261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454903, 29.199341, 44.222889>,  <33.786652, 29.488396, 44.067364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454903, 29.199341, 44.222889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508591, 29.583046, 44.322330>,  <34.540802, 29.813269, 44.381996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508591, 29.583046, 44.322330>,  <34.454903, 29.199341, 44.222889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508591, 29.583046, 44.322330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512011, -0.281925, 0.811396,
		0.848428, 0.018384, -0.528992,
		0.134219, 0.959260, 0.248605,
		34.548855, 29.870825, 44.396912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196941, 29.266666, 44.300472>,  <34.454903, 29.199341, 44.222889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196941, 29.266666, 44.300472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001347, 29.532944, 44.525948>,  <34.883991, 29.692709, 44.661232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001347, 29.532944, 44.525948>,  <35.196941, 29.266666, 44.300472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001347, 29.532944, 44.525948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524753, -0.291718, 0.799709,
		0.696799, 0.686845, -0.206678,
		-0.488985, 0.665691, 0.563692,
		34.854652, 29.732651, 44.695057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700962, 29.478004, 44.788300>,  <35.196941, 29.266666, 44.300472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700962, 29.478004, 44.788300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345089, 29.576834, 44.941883>,  <35.131565, 29.636131, 45.034031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345089, 29.576834, 44.941883>,  <35.700962, 29.478004, 44.788300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345089, 29.576834, 44.941883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363790, -0.124568, 0.923114,
		0.275906, 0.960957, 0.020943,
		-0.889681, 0.247074, 0.383955,
		35.078186, 29.650955, 45.057068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801289, 29.813986, 45.388088>,  <35.700962, 29.478004, 44.788300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801289, 29.813986, 45.388088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422878, 29.696899, 45.443737>,  <35.195831, 29.626648, 45.477127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422878, 29.696899, 45.443737>,  <35.801289, 29.813986, 45.388088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422878, 29.696899, 45.443737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206794, -0.214669, 0.954543,
		-0.249547, 0.931790, 0.263615,
		-0.946025, -0.292718, 0.139119,
		35.139072, 29.609083, 45.485474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710411, 30.126661, 46.033295>,  <35.801289, 29.813986, 45.388088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710411, 30.126661, 46.033295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424725, 29.848404, 46.002380>,  <35.253311, 29.681450, 45.983833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424725, 29.848404, 46.002380>,  <35.710411, 30.126661, 46.033295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424725, 29.848404, 46.002380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010240, -0.100017, 0.994933,
		-0.699847, 0.711392, 0.064310,
		-0.714220, -0.695642, -0.077281,
		35.210457, 29.639711, 45.979195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272285, 30.263969, 46.611713>,  <35.710411, 30.126661, 46.033295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272285, 30.263969, 46.611713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182026, 29.887564, 46.510853>,  <35.127869, 29.661720, 46.450336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182026, 29.887564, 46.510853>,  <35.272285, 30.263969, 46.611713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182026, 29.887564, 46.510853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070457, -0.273909, 0.959171,
		-0.971657, 0.198671, 0.128108,
		-0.225650, -0.941012, -0.252148,
		35.114330, 29.605261, 46.435207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639095, 29.980698, 47.047009>,  <35.272285, 30.263969, 46.611713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639095, 29.980698, 47.047009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825420, 29.652479, 46.914509>,  <34.937214, 29.455549, 46.835007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825420, 29.652479, 46.914509>,  <34.639095, 29.980698, 47.047009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825420, 29.652479, 46.914509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204086, -0.463874, 0.862073,
		-0.861028, -0.333958, -0.383538,
		0.465810, -0.820544, -0.331252,
		34.965164, 29.406317, 46.815132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210533, 29.480083, 47.394840>,  <34.639095, 29.980698, 47.047009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210533, 29.480083, 47.394840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529579, 29.272465, 47.271938>,  <34.721008, 29.147894, 47.198196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529579, 29.272465, 47.271938>,  <34.210533, 29.480083, 47.394840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529579, 29.272465, 47.271938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070400, -0.586024, 0.807229,
		-0.599052, -0.622223, -0.503959,
		0.797609, -0.519051, -0.307255,
		34.768864, 29.116751, 47.179764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071331, 28.829296, 47.491173>,  <34.210533, 29.480083, 47.394840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071331, 28.829296, 47.491173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468311, 28.816660, 47.443764>,  <34.706497, 28.809078, 47.415318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468311, 28.816660, 47.443764>,  <34.071331, 28.829296, 47.491173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468311, 28.816660, 47.443764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072727, -0.626541, 0.775988,
		-0.098772, -0.778748, -0.619512,
		0.992449, -0.031591, -0.118520,
		34.766045, 28.807182, 47.408207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253151, 28.162483, 47.478222>,  <34.071331, 28.829296, 47.491173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253151, 28.162483, 47.478222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550381, 28.395971, 47.609135>,  <34.728718, 28.536064, 47.687683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550381, 28.395971, 47.609135>,  <34.253151, 28.162483, 47.478222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550381, 28.395971, 47.609135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120505, -0.597770, 0.792559,
		0.658270, -0.549491, -0.514529,
		0.743074, 0.583721, 0.327278,
		34.773304, 28.571087, 47.707317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818401, 27.721626, 47.652275>,  <34.253151, 28.162483, 47.478222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818401, 27.721626, 47.652275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836910, 28.057505, 47.868710>,  <34.848015, 28.259031, 47.998569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836910, 28.057505, 47.868710>,  <34.818401, 27.721626, 47.652275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836910, 28.057505, 47.868710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028767, -0.542557, 0.839526,
		0.998515, -0.023278, -0.049258,
		0.046268, 0.839696, 0.541082,
		34.850792, 28.309414, 48.031033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257290, 27.518343, 48.174599>,  <34.818401, 27.721626, 47.652275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257290, 27.518343, 48.174599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153419, 27.877218, 48.317493>,  <35.091099, 28.092545, 48.403233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153419, 27.877218, 48.317493>,  <35.257290, 27.518343, 48.174599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153419, 27.877218, 48.317493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283795, -0.282697, 0.916266,
		0.923055, 0.339312, -0.181209,
		-0.259673, 0.897190, 0.357240,
		35.075516, 28.146376, 48.424667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927490, 27.842062, 48.534973>,  <35.257290, 27.518343, 48.174599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927490, 27.842062, 48.534973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628757, 28.028427, 48.724781>,  <35.449516, 28.140245, 48.838665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628757, 28.028427, 48.724781>,  <35.927490, 27.842062, 48.534973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628757, 28.028427, 48.724781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294467, -0.408090, 0.864148,
		0.596261, 0.785105, 0.167580,
		-0.746835, 0.465911, 0.474515,
		35.404709, 28.168200, 48.867134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252487, 28.553457, 48.579426>,  <35.927490, 27.842062, 48.534973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252487, 28.553457, 48.579426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641567, 28.486368, 48.643585>,  <36.875015, 28.446114, 48.682083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641567, 28.486368, 48.643585>,  <36.252487, 28.553457, 48.579426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641567, 28.486368, 48.643585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220901, 0.457209, -0.861489,
		0.071156, 0.873401, 0.481776,
		0.972697, -0.167725, 0.160402,
		36.933376, 28.436050, 48.691708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662560, 29.155380, 48.424904>,  <36.252487, 28.553457, 48.579426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662560, 29.155380, 48.424904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930943, 28.860210, 48.395828>,  <37.091972, 28.683109, 48.378384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930943, 28.860210, 48.395828>,  <36.662560, 29.155380, 48.424904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930943, 28.860210, 48.395828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393271, 0.437254, -0.808793,
		0.628612, 0.514079, 0.583584,
		0.670958, -0.737924, -0.072691,
		37.132229, 28.638834, 48.374020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329407, 29.475153, 48.438976>,  <36.662560, 29.155380, 48.424904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329407, 29.475153, 48.438976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370834, 29.116983, 48.265778>,  <37.395691, 28.902082, 48.161858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370834, 29.116983, 48.265778>,  <37.329407, 29.475153, 48.438976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370834, 29.116983, 48.265778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346773, 0.440533, -0.828057,
		0.932213, -0.064389, 0.356136,
		0.103572, -0.895424, -0.432999,
		37.401905, 28.848356, 48.135880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045841, 29.473759, 48.060982>,  <37.329407, 29.475153, 48.438976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045841, 29.473759, 48.060982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813049, 29.195883, 47.891888>,  <37.673374, 29.029158, 47.790432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813049, 29.195883, 47.891888>,  <38.045841, 29.473759, 48.060982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813049, 29.195883, 47.891888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325899, 0.277031, -0.903905,
		0.745047, -0.663821, 0.065174,
		-0.581975, -0.694691, -0.422739,
		37.638458, 28.987476, 47.765064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532440, 29.172277, 47.625160>,  <38.045841, 29.473759, 48.060982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532440, 29.172277, 47.625160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172150, 29.068336, 47.485928>,  <37.955975, 29.005972, 47.402390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172150, 29.068336, 47.485928>,  <38.532440, 29.172277, 47.625160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172150, 29.068336, 47.485928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302575, 0.199616, -0.931988,
		0.311663, -0.944791, -0.101175,
		-0.900730, -0.259853, -0.348083,
		37.901932, 28.990381, 47.381504>
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
