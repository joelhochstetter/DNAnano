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
	<24.357763, 35.156590, 35.175873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416302, 34.922489, 34.856857>,  <24.451426, 34.782028, 34.665447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416302, 34.922489, 34.856857>,  <24.357763, 35.156590, 35.175873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416302, 34.922489, 34.856857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639535, 0.671054, -0.375075,
		0.754703, -0.455163, 0.472493,
		0.146348, -0.585246, -0.797539,
		24.460205, 34.746914, 34.617596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707859, 35.169460, 35.972069>,  <24.357763, 35.156590, 35.175873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707859, 35.169460, 35.972069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358290, 35.318974, 35.847786>,  <24.148548, 35.408680, 35.773216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358290, 35.318974, 35.847786>,  <24.707859, 35.169460, 35.972069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358290, 35.318974, 35.847786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134780, -0.427824, -0.893757,
		-0.467004, -0.822953, 0.323507,
		-0.873923, 0.373785, -0.310713,
		24.096111, 35.431107, 35.754574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734962, 35.511116, 36.593918>,  <24.707859, 35.169460, 35.972069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734962, 35.511116, 36.593918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389444, 35.597252, 36.776119>,  <24.182133, 35.648933, 36.885441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389444, 35.597252, 36.776119>,  <24.734962, 35.511116, 36.593918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389444, 35.597252, 36.776119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055222, -0.858153, 0.510416,
		0.500804, 0.466050, 0.729378,
		-0.863797, 0.215341, 0.455503,
		24.130304, 35.661854, 36.912769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169722, 35.197922, 37.053856>,  <24.734962, 35.511116, 36.593918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169722, 35.197922, 37.053856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484863, 34.990223, 37.186321>,  <25.673948, 34.865604, 37.265800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484863, 34.990223, 37.186321>,  <25.169722, 35.197922, 37.053856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484863, 34.990223, 37.186321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578971, 0.441155, -0.685693,
		0.209950, 0.731960, 0.648194,
		0.787854, -0.519247, 0.331163,
		25.721220, 34.834450, 37.285671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605118, 35.566936, 37.425533>,  <25.169722, 35.197922, 37.053856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605118, 35.566936, 37.425533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795153, 35.290047, 37.208237>,  <25.909174, 35.123913, 37.077858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795153, 35.290047, 37.208237>,  <25.605118, 35.566936, 37.425533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795153, 35.290047, 37.208237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582035, 0.710227, -0.395997,
		0.659944, -0.128050, 0.740323,
		0.475090, -0.692229, -0.543239,
		25.937679, 35.082378, 37.045265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145788, 35.295353, 37.865196>,  <25.605118, 35.566936, 37.425533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145788, 35.295353, 37.865196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288708, 35.180611, 38.220734>,  <26.374460, 35.111763, 38.434055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288708, 35.180611, 38.220734>,  <26.145788, 35.295353, 37.865196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288708, 35.180611, 38.220734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042372, -0.945709, -0.322241,
		0.933028, 0.152799, -0.325748,
		0.357301, -0.286858, 0.888847,
		26.395899, 35.094555, 38.487389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681814, 34.921219, 37.823414>,  <26.145788, 35.295353, 37.865196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681814, 34.921219, 37.823414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538235, 34.802303, 38.177311>,  <26.452087, 34.730953, 38.389648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538235, 34.802303, 38.177311>,  <26.681814, 34.921219, 37.823414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538235, 34.802303, 38.177311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037063, -0.951710, -0.304752,
		0.932622, -0.076598, 0.352631,
		-0.358946, -0.297288, 0.884747,
		26.430552, 34.713116, 38.442734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996202, 34.318821, 37.914597>,  <26.681814, 34.921219, 37.823414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996202, 34.318821, 37.914597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657494, 34.316738, 38.127369>,  <26.454269, 34.315487, 38.255032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657494, 34.316738, 38.127369>,  <26.996202, 34.318821, 37.914597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657494, 34.316738, 38.127369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131368, -0.966933, -0.218595,
		0.515482, -0.254979, 0.818085,
		-0.846771, -0.005211, 0.531933,
		26.403461, 34.315174, 38.286949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023998, 33.801823, 38.347355>,  <26.996202, 34.318821, 37.914597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023998, 33.801823, 38.347355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631310, 33.874157, 38.323616>,  <26.395697, 33.917557, 38.309372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631310, 33.874157, 38.323616>,  <27.023998, 33.801823, 38.347355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631310, 33.874157, 38.323616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150415, -0.928224, -0.340257,
		-0.116619, -0.325111, 0.938458,
		-0.981720, 0.180838, -0.059348,
		26.336794, 33.928410, 38.305813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668077, 33.287464, 38.619358>,  <27.023998, 33.801823, 38.347355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668077, 33.287464, 38.619358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376598, 33.451118, 38.399681>,  <26.201710, 33.549309, 38.267876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376598, 33.451118, 38.399681>,  <26.668077, 33.287464, 38.619358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376598, 33.451118, 38.399681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237474, -0.903131, -0.357714,
		-0.642342, -0.130248, 0.755270,
		-0.728699, 0.409132, -0.549189,
		26.157988, 33.573856, 38.234924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201511, 32.823917, 38.679565>,  <26.668077, 33.287464, 38.619358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201511, 32.823917, 38.679565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097406, 33.020725, 38.347256>,  <26.034945, 33.138809, 38.147869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097406, 33.020725, 38.347256>,  <26.201511, 32.823917, 38.679565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097406, 33.020725, 38.347256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210409, -0.868646, -0.448533,
		-0.942333, 0.058066, 0.329600,
		-0.260261, 0.492018, -0.830772,
		26.019327, 33.168331, 38.098022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502033, 32.629192, 38.430676>,  <26.201511, 32.823917, 38.679565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502033, 32.629192, 38.430676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745913, 32.738804, 38.133171>,  <25.892241, 32.804569, 37.954670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745913, 32.738804, 38.133171>,  <25.502033, 32.629192, 38.430676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745913, 32.738804, 38.133171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047580, -0.923995, -0.379432,
		-0.791206, 0.266726, -0.550318,
		0.609696, 0.274025, -0.743761,
		25.928822, 32.821011, 37.910042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398359, 32.406116, 37.665379>,  <25.502033, 32.629192, 38.430676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398359, 32.406116, 37.665379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780033, 32.456722, 37.773838>,  <26.009037, 32.487087, 37.838913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780033, 32.456722, 37.773838>,  <25.398359, 32.406116, 37.665379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780033, 32.456722, 37.773838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168772, -0.975864, -0.138584,
		0.247076, 0.177998, -0.952507,
		0.954185, 0.126516, 0.271153,
		26.066288, 32.494678, 37.855183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062069, 32.131065, 37.504116>,  <25.398359, 32.406116, 37.665379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062069, 32.131065, 37.504116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891470, 32.276493, 37.172836>,  <25.789110, 32.363750, 36.974068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891470, 32.276493, 37.172836>,  <26.062069, 32.131065, 37.504116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891470, 32.276493, 37.172836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286940, 0.813973, 0.505087,
		0.857769, 0.453061, -0.242834,
		-0.426495, 0.363569, -0.828202,
		25.763521, 32.385563, 36.924377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396156, 32.705887, 37.164719>,  <26.062069, 32.131065, 37.504116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396156, 32.705887, 37.164719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996765, 32.726940, 37.171345>,  <25.757132, 32.739574, 37.175320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996765, 32.726940, 37.171345>,  <26.396156, 32.705887, 37.164719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996765, 32.726940, 37.171345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052635, 0.818357, 0.572295,
		0.016567, 0.572295, -0.819880,
		-0.998476, 0.052635, 0.016565,
		25.697222, 32.742729, 37.176315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254332, 33.330856, 36.968674>,  <26.396156, 32.705887, 37.164719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254332, 33.330856, 36.968674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983673, 33.197838, 37.231445>,  <25.821278, 33.118027, 37.389111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983673, 33.197838, 37.231445>,  <26.254332, 33.330856, 36.968674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983673, 33.197838, 37.231445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067531, 0.860409, 0.505110,
		-0.733203, 0.386145, -0.559737,
		-0.676648, -0.332548, 0.656931,
		25.780678, 33.098072, 37.428524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701481, 33.810978, 37.119560>,  <26.254332, 33.330856, 36.968674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701481, 33.810978, 37.119560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743601, 33.591793, 37.451500>,  <25.768873, 33.460281, 37.650665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743601, 33.591793, 37.451500>,  <25.701481, 33.810978, 37.119560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743601, 33.591793, 37.451500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087170, 0.826189, 0.556609,
		-0.990612, -0.130949, 0.039233,
		0.105301, -0.547964, 0.829848,
		25.775190, 33.427402, 37.700455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100157, 33.977940, 37.604156>,  <25.701481, 33.810978, 37.119560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100157, 33.977940, 37.604156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420456, 33.861435, 37.813526>,  <25.612635, 33.791531, 37.939148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420456, 33.861435, 37.813526>,  <25.100157, 33.977940, 37.604156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420456, 33.861435, 37.813526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101284, 0.795400, 0.597562,
		-0.590378, -0.531510, 0.607413,
		0.800747, -0.291266, 0.523420,
		25.660681, 33.774055, 37.970551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020327, 34.229103, 38.229427>,  <25.100157, 33.977940, 37.604156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020327, 34.229103, 38.229427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409666, 34.142220, 38.258846>,  <25.643270, 34.090088, 38.276497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409666, 34.142220, 38.258846>,  <25.020327, 34.229103, 38.229427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409666, 34.142220, 38.258846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146134, 0.834662, 0.531022,
		-0.176728, -0.506123, 0.844161,
		0.973351, -0.217207, 0.073546,
		25.701672, 34.077057, 38.280910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236088, 34.250889, 38.966000>,  <25.020327, 34.229103, 38.229427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236088, 34.250889, 38.966000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550106, 34.325855, 38.729839>,  <25.738518, 34.370834, 38.588142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550106, 34.325855, 38.729839>,  <25.236088, 34.250889, 38.966000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550106, 34.325855, 38.729839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198602, 0.826661, 0.526487,
		0.586737, -0.530572, 0.611746,
		0.785046, 0.187415, -0.590405,
		25.785620, 34.382080, 38.552719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731956, 34.593861, 39.408619>,  <25.236088, 34.250889, 38.966000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731956, 34.593861, 39.408619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831921, 34.676125, 39.030148>,  <25.891899, 34.725483, 38.803066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831921, 34.676125, 39.030148>,  <25.731956, 34.593861, 39.408619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831921, 34.676125, 39.030148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335644, 0.898196, 0.283879,
		0.908234, -0.388522, 0.155439,
		0.249908, 0.205656, -0.946177,
		25.906893, 34.737820, 38.746296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036692, 35.296356, 39.539238>,  <25.731956, 34.593861, 39.408619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036692, 35.296356, 39.539238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069096, 35.248653, 39.143417>,  <26.088537, 35.220032, 38.905926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069096, 35.248653, 39.143417>,  <26.036692, 35.296356, 39.539238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069096, 35.248653, 39.143417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200440, 0.974483, -0.101030,
		0.976351, -0.190162, 0.102844,
		0.081007, -0.119255, -0.989554,
		26.093397, 35.212875, 38.846550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754086, 35.461346, 39.188339>,  <26.036692, 35.296356, 39.539238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754086, 35.461346, 39.188339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459896, 35.522934, 38.924408>,  <26.283382, 35.559887, 38.766048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459896, 35.522934, 38.924408>,  <26.754086, 35.461346, 39.188339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459896, 35.522934, 38.924408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372664, 0.905231, -0.204150,
		0.565862, -0.396041, -0.723153,
		-0.735473, 0.153972, -0.659827,
		26.239254, 35.569126, 38.726460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085953, 35.646839, 38.547779>,  <26.754086, 35.461346, 39.188339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085953, 35.646839, 38.547779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718313, 35.803654, 38.563568>,  <26.497728, 35.897743, 38.573040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718313, 35.803654, 38.563568>,  <27.085953, 35.646839, 38.547779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718313, 35.803654, 38.563568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336427, 0.832954, -0.439323,
		-0.205112, -0.390502, -0.897461,
		-0.919100, 0.392041, 0.039473,
		26.442583, 35.921265, 38.575409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811483, 35.958355, 37.867798>,  <27.085953, 35.646839, 38.547779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811483, 35.958355, 37.867798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649313, 36.160919, 38.172211>,  <26.552011, 36.282459, 38.354858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649313, 36.160919, 38.172211>,  <26.811483, 35.958355, 37.867798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649313, 36.160919, 38.172211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270722, 0.861696, -0.429173,
		-0.873121, 0.032032, -0.486451,
		-0.405426, 0.506412, 0.761037,
		26.527685, 36.312843, 38.400520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186275, 36.344486, 37.701820>,  <26.811483, 35.958355, 37.867798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186275, 36.344486, 37.701820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374762, 36.527229, 38.003613>,  <26.487852, 36.636875, 38.184689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374762, 36.527229, 38.003613>,  <26.186275, 36.344486, 37.701820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374762, 36.527229, 38.003613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052802, 0.868476, -0.492912,
		-0.880437, 0.192429, 0.433361,
		0.471214, 0.456861, 0.754477,
		26.516127, 36.664288, 38.229958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792542, 36.936413, 37.874084>,  <26.186275, 36.344486, 37.701820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792542, 36.936413, 37.874084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174995, 37.007046, 37.967571>,  <26.404469, 37.049423, 38.023663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174995, 37.007046, 37.967571>,  <25.792542, 36.936413, 37.874084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174995, 37.007046, 37.967571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029462, 0.851805, -0.523031,
		-0.291435, 0.493203, 0.819644,
		0.956137, 0.176578, 0.233715,
		26.461836, 37.060020, 38.037685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991661, 37.655571, 38.202892>,  <25.792542, 36.936413, 37.874084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991661, 37.655571, 38.202892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322613, 37.550026, 38.004570>,  <26.521185, 37.486698, 37.885578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322613, 37.550026, 38.004570>,  <25.991661, 37.655571, 38.202892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322613, 37.550026, 38.004570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080174, 0.929218, -0.360729,
		0.555890, 0.258710, 0.789972,
		0.827380, -0.263861, -0.495801,
		26.570827, 37.470867, 37.855831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634716, 38.109928, 38.356041>,  <25.991661, 37.655571, 38.202892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634716, 38.109928, 38.356041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677752, 38.010185, 37.971073>,  <26.703573, 37.950340, 37.740093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677752, 38.010185, 37.971073>,  <26.634716, 38.109928, 38.356041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677752, 38.010185, 37.971073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220066, 0.949995, -0.221541,
		0.969534, -0.187959, 0.157086,
		0.107591, -0.249361, -0.962415,
		26.710030, 37.935375, 37.682350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344059, 38.209133, 38.159103>,  <26.634716, 38.109928, 38.356041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344059, 38.209133, 38.159103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078655, 38.249672, 37.862595>,  <26.919413, 38.273994, 37.684689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078655, 38.249672, 37.862595>,  <27.344059, 38.209133, 38.159103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078655, 38.249672, 37.862595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315507, 0.936277, -0.154405,
		0.678389, -0.336326, -0.653202,
		-0.663508, 0.101343, -0.741273,
		26.879602, 38.280075, 37.640213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688297, 38.371452, 37.488693>,  <27.344059, 38.209133, 38.159103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688297, 38.371452, 37.488693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328779, 38.538040, 37.543419>,  <27.113068, 38.637993, 37.576252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328779, 38.538040, 37.543419>,  <27.688297, 38.371452, 37.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328779, 38.538040, 37.543419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416301, 0.908689, -0.031251,
		-0.137334, 0.028867, -0.990104,
		-0.898795, 0.416473, 0.136812,
		27.059141, 38.662983, 37.584461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955864, 38.625507, 38.125813>,  <27.688297, 38.371452, 37.488693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955864, 38.625507, 38.125813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279251, 38.718086, 38.342262>,  <28.473284, 38.773636, 38.472130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279251, 38.718086, 38.342262>,  <27.955864, 38.625507, 38.125813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279251, 38.718086, 38.342262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569579, 0.076197, 0.818397,
		0.148188, -0.969858, 0.193433,
		0.808468, 0.231452, 0.541119,
		28.521791, 38.787521, 38.504597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940586, 38.246765, 38.715431>,  <27.955864, 38.625507, 38.125813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940586, 38.246765, 38.715431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150120, 38.578262, 38.794209>,  <28.275841, 38.777161, 38.841476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150120, 38.578262, 38.794209>,  <27.940586, 38.246765, 38.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150120, 38.578262, 38.794209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685363, 0.272752, 0.675192,
		0.505843, -0.488666, 0.710865,
		0.523833, 0.828741, 0.196943,
		28.307270, 38.826885, 38.853291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117702, 38.270264, 39.413761>,  <27.940586, 38.246765, 38.715431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117702, 38.270264, 39.413761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134136, 38.645683, 39.276688>,  <28.143997, 38.870937, 39.194443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134136, 38.645683, 39.276688>,  <28.117702, 38.270264, 39.413761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134136, 38.645683, 39.276688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641936, 0.287615, 0.710771,
		0.765656, 0.190776, 0.614309,
		0.041086, 0.938553, -0.342680,
		28.146461, 38.927250, 39.173885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373203, 38.760365, 39.969906>,  <28.117702, 38.270264, 39.413761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373203, 38.760365, 39.969906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133726, 38.926922, 39.696209>,  <27.990040, 39.026855, 39.531990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133726, 38.926922, 39.696209>,  <28.373203, 38.760365, 39.969906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133726, 38.926922, 39.696209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682662, 0.181583, 0.707814,
		0.418977, 0.890866, 0.175546,
		-0.598692, 0.416396, -0.684239,
		27.954119, 39.051842, 39.490936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208389, 39.501225, 40.144028>,  <28.373203, 38.760365, 39.969906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208389, 39.501225, 40.144028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906141, 39.357491, 39.924969>,  <27.724792, 39.271252, 39.793533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906141, 39.357491, 39.924969>,  <28.208389, 39.501225, 40.144028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906141, 39.357491, 39.924969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641772, 0.238905, 0.728734,
		-0.131023, 0.902111, -0.411132,
		-0.755620, -0.359333, -0.547647,
		27.679455, 39.249691, 39.760674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571630, 39.853996, 40.123558>,  <28.208389, 39.501225, 40.144028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571630, 39.853996, 40.123558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473782, 39.466148, 40.122620>,  <27.415071, 39.233440, 40.122055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473782, 39.466148, 40.122620>,  <27.571630, 39.853996, 40.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473782, 39.466148, 40.122620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775208, 0.194121, 0.601140,
		-0.582418, 0.148874, -0.799140,
		-0.244624, -0.969615, -0.002348,
		27.400394, 39.175262, 40.121914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008825, 40.016689, 39.405899>,  <27.571630, 39.853996, 40.123558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008825, 40.016689, 39.405899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367191, 40.155514, 39.516811>,  <28.582211, 40.238808, 39.583359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367191, 40.155514, 39.516811>,  <28.008825, 40.016689, 39.405899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367191, 40.155514, 39.516811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295525, -0.931681, 0.211272,
		0.331665, -0.107337, -0.937271,
		0.895915, 0.347058, 0.277286,
		28.635965, 40.259632, 39.599998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572390, 39.877743, 38.800621>,  <28.008825, 40.016689, 39.405899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572390, 39.877743, 38.800621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777126, 39.684143, 39.084526>,  <27.899969, 39.567986, 39.254868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777126, 39.684143, 39.084526>,  <27.572390, 39.877743, 38.800621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777126, 39.684143, 39.084526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677525, -0.280538, -0.679896,
		0.528183, 0.828882, 0.184328,
		0.511842, -0.483996, 0.709764,
		27.930679, 39.538944, 39.297455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311411, 40.100391, 38.727947>,  <27.572390, 39.877743, 38.800621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311411, 40.100391, 38.727947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266989, 39.745323, 38.906704>,  <28.240335, 39.532284, 39.013958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266989, 39.745323, 38.906704>,  <28.311411, 40.100391, 38.727947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266989, 39.745323, 38.906704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710656, -0.385272, -0.588670,
		0.694719, 0.252209, 0.673614,
		-0.111057, -0.887669, 0.446890,
		28.233671, 39.479023, 39.040771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961643, 39.895351, 39.055267>,  <28.311411, 40.100391, 38.727947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961643, 39.895351, 39.055267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759861, 39.555222, 38.995304>,  <28.638792, 39.351143, 38.959324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759861, 39.555222, 38.995304>,  <28.961643, 39.895351, 39.055267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759861, 39.555222, 38.995304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794981, -0.389651, -0.464948,
		0.336945, -0.353721, 0.872554,
		-0.504453, -0.850326, -0.149911,
		28.608524, 39.300125, 38.950333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460791, 39.301147, 39.171604>,  <28.961643, 39.895351, 39.055267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460791, 39.301147, 39.171604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166174, 39.160965, 38.940197>,  <28.989405, 39.076855, 38.801353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166174, 39.160965, 38.940197>,  <29.460791, 39.301147, 39.171604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166174, 39.160965, 38.940197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676314, -0.394622, -0.621991,
		-0.010316, -0.849384, 0.527675,
		-0.736541, -0.350457, -0.578521,
		28.945211, 39.055828, 38.766640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629950, 38.597992, 38.919704>,  <29.460791, 39.301147, 39.171604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629950, 38.597992, 38.919704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394588, 38.754482, 38.636658>,  <29.253372, 38.848377, 38.466827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394588, 38.754482, 38.636658>,  <29.629950, 38.597992, 38.919704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394588, 38.754482, 38.636658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645851, -0.299132, -0.702422,
		-0.486475, -0.870325, -0.076660,
		-0.588404, 0.391222, -0.707620,
		29.218067, 38.871849, 38.424370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714108, 37.870464, 39.094532>,  <29.629950, 38.597992, 38.919704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714108, 37.870464, 39.094532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887243, 37.536236, 38.959198>,  <29.991125, 37.335701, 38.877998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887243, 37.536236, 38.959198>,  <29.714108, 37.870464, 39.094532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887243, 37.536236, 38.959198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215320, 0.460282, -0.861265,
		0.875378, 0.299940, 0.379143,
		0.432841, -0.835570, -0.338338,
		30.017096, 37.285564, 38.857697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421352, 37.972092, 38.823627>,  <29.714108, 37.870464, 39.094532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421352, 37.972092, 38.823627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336571, 37.616127, 38.662064>,  <30.285702, 37.402550, 38.565125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336571, 37.616127, 38.662064>,  <30.421352, 37.972092, 38.823627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336571, 37.616127, 38.662064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543974, 0.235923, -0.805253,
		0.811891, -0.390390, 0.434083,
		-0.211953, -0.889908, -0.403906,
		30.272985, 37.349155, 38.540894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064550, 37.763691, 38.634144>,  <30.421352, 37.972092, 38.823627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064550, 37.763691, 38.634144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757339, 37.596279, 38.440250>,  <30.573013, 37.495831, 38.323914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757339, 37.596279, 38.440250>,  <31.064550, 37.763691, 38.634144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757339, 37.596279, 38.440250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477481, 0.130197, -0.868942,
		0.426790, -0.898822, 0.099846,
		-0.768025, -0.418531, -0.484737,
		30.526932, 37.470718, 38.294830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418646, 37.622314, 38.124176>,  <31.064550, 37.763691, 38.634144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418646, 37.622314, 38.124176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052414, 37.511127, 38.007935>,  <30.832674, 37.444416, 37.938190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052414, 37.511127, 38.007935>,  <31.418646, 37.622314, 38.124176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052414, 37.511127, 38.007935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305528, -0.010971, -0.952120,
		0.261472, -0.960528, 0.094972,
		-0.915579, -0.277969, -0.290599,
		30.777740, 37.427738, 37.920753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023409, 37.475292, 37.498383>,  <31.418646, 37.622314, 38.124176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023409, 37.475292, 37.498383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347233, 37.240494, 37.495632>,  <31.541527, 37.099613, 37.493980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347233, 37.240494, 37.495632>,  <31.023409, 37.475292, 37.498383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347233, 37.240494, 37.495632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123446, 0.158777, 0.979567,
		-0.573909, -0.793868, 0.201002,
		0.809561, -0.586995, -0.006877,
		31.590101, 37.064396, 37.493568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062321, 36.965591, 38.092354>,  <31.023409, 37.475292, 37.498383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062321, 36.965591, 38.092354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451864, 37.009426, 38.012768>,  <31.685591, 37.035728, 37.965015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451864, 37.009426, 38.012768>,  <31.062321, 36.965591, 38.092354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451864, 37.009426, 38.012768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193415, 0.059243, 0.979327,
		0.119115, -0.992210, 0.036497,
		0.973859, 0.109594, -0.198965,
		31.744022, 37.042305, 37.953079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368225, 36.627079, 38.617165>,  <31.062321, 36.965591, 38.092354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368225, 36.627079, 38.617165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639196, 36.888721, 38.482563>,  <31.801779, 37.045708, 38.401802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639196, 36.888721, 38.482563>,  <31.368225, 36.627079, 38.617165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639196, 36.888721, 38.482563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330371, 0.138183, 0.933681,
		0.657229, -0.743671, -0.122489,
		0.677426, 0.654109, -0.336505,
		31.842424, 37.084953, 38.381611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067120, 36.426327, 38.906342>,  <31.368225, 36.627079, 38.617165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067120, 36.426327, 38.906342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098122, 36.809315, 38.795177>,  <32.116722, 37.039108, 38.728477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098122, 36.809315, 38.795177>,  <32.067120, 36.426327, 38.906342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098122, 36.809315, 38.795177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469558, 0.210846, 0.857356,
		0.879494, -0.196944, -0.433248,
		0.077503, 0.957474, -0.277915,
		32.121372, 37.096558, 38.711803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710598, 36.584400, 39.034412>,  <32.067120, 36.426327, 38.906342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710598, 36.584400, 39.034412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507149, 36.928753, 39.028996>,  <32.385078, 37.135365, 39.025745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507149, 36.928753, 39.028996>,  <32.710598, 36.584400, 39.034412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507149, 36.928753, 39.028996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424744, 0.264568, 0.865792,
		0.748929, 0.434608, -0.500220,
		-0.508623, 0.860883, -0.013545,
		32.354561, 37.187019, 39.024933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247662, 36.988064, 39.331036>,  <32.710598, 36.584400, 39.034412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247662, 36.988064, 39.331036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920322, 37.216187, 39.359501>,  <32.723919, 37.353058, 39.376579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920322, 37.216187, 39.359501>,  <33.247662, 36.988064, 39.331036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920322, 37.216187, 39.359501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374804, 0.435697, 0.818346,
		0.435697, 0.696363, -0.570303,
		-0.818346, 0.570303, 0.071168,
		32.674820, 37.387276, 39.380852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367832, 37.739330, 39.270267>,  <33.247662, 36.988064, 39.331036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367832, 37.739330, 39.270267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034554, 37.674793, 39.481834>,  <32.834587, 37.636070, 39.608776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034554, 37.674793, 39.481834>,  <33.367832, 37.739330, 39.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034554, 37.674793, 39.481834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471191, 0.293465, 0.831780,
		-0.289423, 0.942256, -0.168489,
		-0.833195, -0.161346, 0.528918,
		32.784595, 37.626389, 39.640511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079735, 38.396740, 39.604538>,  <33.367832, 37.739330, 39.270267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079735, 38.396740, 39.604538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991173, 38.063705, 39.807625>,  <32.938034, 37.863884, 39.929478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991173, 38.063705, 39.807625>,  <33.079735, 38.396740, 39.604538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991173, 38.063705, 39.807625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596516, 0.296239, 0.745930,
		-0.771458, 0.468013, 0.431065,
		-0.221406, -0.832591, 0.507713,
		32.924751, 37.813927, 39.959938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736248, 38.520073, 40.317856>,  <33.079735, 38.396740, 39.604538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736248, 38.520073, 40.317856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998352, 38.218464, 40.336098>,  <33.155613, 38.037498, 40.347042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998352, 38.218464, 40.336098>,  <32.736248, 38.520073, 40.317856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998352, 38.218464, 40.336098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520771, 0.494642, 0.695792,
		-0.547202, -0.432176, 0.716794,
		0.655262, -0.754024, 0.045605,
		33.194931, 37.992256, 40.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299896, 38.431572, 40.757172>,  <32.736248, 38.520073, 40.317856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299896, 38.431572, 40.757172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535141, 38.370270, 40.439522>,  <33.676289, 38.333488, 40.248932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535141, 38.370270, 40.439522>,  <33.299896, 38.431572, 40.757172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535141, 38.370270, 40.439522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748452, -0.475235, -0.462570,
		-0.306508, 0.866410, -0.394192,
		0.588109, -0.153253, -0.794129,
		33.711575, 38.324295, 40.201283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149345, 37.829353, 41.131603>,  <33.299896, 38.431572, 40.757172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149345, 37.829353, 41.131603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812599, 38.024078, 41.038425>,  <32.610550, 38.140915, 40.982517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812599, 38.024078, 41.038425>,  <33.149345, 37.829353, 41.131603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812599, 38.024078, 41.038425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076015, -0.534300, -0.841870,
		-0.534300, -0.691038, 0.486816,
		0.841870, -0.486816, 0.232947,
		32.560040, 38.170124, 40.968540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554989, 37.417110, 40.964905>,  <33.149345, 37.829353, 41.131603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554989, 37.417110, 40.964905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529728, 37.765732, 40.770420>,  <32.514572, 37.974907, 40.653728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529728, 37.765732, 40.770420>,  <32.554989, 37.417110, 40.964905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529728, 37.765732, 40.770420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044361, -0.484250, -0.873804,
		-0.997018, -0.076747, -0.008084,
		-0.063148, 0.871557, -0.486211,
		32.510784, 38.027199, 40.624557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994921, 37.410297, 40.541088>,  <32.554989, 37.417110, 40.964905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994921, 37.410297, 40.541088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243820, 37.661125, 40.353645>,  <32.393162, 37.811623, 40.241180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243820, 37.661125, 40.353645>,  <31.994921, 37.410297, 40.541088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243820, 37.661125, 40.353645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343414, -0.319279, -0.883248,
		-0.703471, 0.710528, 0.016672,
		0.622250, 0.627065, -0.468609,
		32.430496, 37.849243, 40.213062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622541, 37.856270, 40.096127>,  <31.994921, 37.410297, 40.541088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622541, 37.856270, 40.096127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987806, 37.842403, 39.933678>,  <32.206966, 37.834084, 39.836208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987806, 37.842403, 39.933678>,  <31.622541, 37.856270, 40.096127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987806, 37.842403, 39.933678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398230, -0.288246, -0.870820,
		-0.086877, 0.956929, -0.277020,
		0.913162, -0.034664, -0.406120,
		32.261757, 37.832005, 39.811840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503771, 37.963829, 39.477322>,  <31.622541, 37.856270, 40.096127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503771, 37.963829, 39.477322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871702, 37.808804, 39.452938>,  <32.092461, 37.715790, 39.438309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871702, 37.808804, 39.452938>,  <31.503771, 37.963829, 39.477322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871702, 37.808804, 39.452938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145419, -0.192501, -0.970462,
		0.364379, 0.901521, -0.233427,
		0.919827, -0.387561, -0.060955,
		32.147652, 37.692535, 39.434650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905359, 38.398979, 38.963257>,  <31.503771, 37.963829, 39.477322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905359, 38.398979, 38.963257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044849, 38.025425, 38.994896>,  <32.128544, 37.801292, 39.013878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044849, 38.025425, 38.994896>,  <31.905359, 38.398979, 38.963257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044849, 38.025425, 38.994896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104258, -0.122527, -0.986974,
		0.931408, 0.335936, -0.140093,
		0.348725, -0.933881, 0.079098,
		32.149467, 37.745262, 39.018627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361908, 38.317497, 38.396561>,  <31.905359, 38.398979, 38.963257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361908, 38.317497, 38.396561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261173, 37.945671, 38.504246>,  <32.200733, 37.722576, 38.568859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261173, 37.945671, 38.504246>,  <32.361908, 38.317497, 38.396561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261173, 37.945671, 38.504246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045367, -0.289216, -0.956188,
		0.966705, -0.228593, 0.115008,
		-0.251840, -0.929569, 0.269215,
		32.185619, 37.666801, 38.585011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695976, 37.917511, 37.928860>,  <32.361908, 38.317497, 38.396561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695976, 37.917511, 37.928860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420441, 37.662258, 38.066433>,  <32.255119, 37.509106, 38.148975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420441, 37.662258, 38.066433>,  <32.695976, 37.917511, 37.928860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420441, 37.662258, 38.066433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097081, -0.388969, -0.916122,
		0.718383, -0.664451, 0.205988,
		-0.688841, -0.638129, 0.343934,
		32.213787, 37.470821, 38.169613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974007, 37.239906, 37.737160>,  <32.695976, 37.917511, 37.928860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974007, 37.239906, 37.737160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580952, 37.286705, 37.794762>,  <32.345119, 37.314785, 37.829323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580952, 37.286705, 37.794762>,  <32.974007, 37.239906, 37.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580952, 37.286705, 37.794762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173889, -0.310016, -0.934694,
		-0.064713, -0.943505, 0.324978,
		-0.982637, 0.116996, 0.144003,
		32.286160, 37.321804, 37.837963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578262, 36.622173, 37.536278>,  <32.974007, 37.239906, 37.737160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578262, 36.622173, 37.536278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345703, 36.940754, 37.469776>,  <32.206169, 37.131905, 37.429874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345703, 36.940754, 37.469776>,  <32.578262, 36.622173, 37.536278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345703, 36.940754, 37.469776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245883, -0.366776, -0.897227,
		-0.775577, -0.480766, 0.409077,
		-0.581396, 0.796454, -0.166251,
		32.171284, 37.179691, 37.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760460, 36.516659, 37.336323>,  <32.578262, 36.622173, 37.536278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760460, 36.516659, 37.336323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942343, 36.811993, 37.137081>,  <32.051472, 36.989193, 37.017536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942343, 36.811993, 37.137081>,  <31.760460, 36.516659, 37.336323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942343, 36.811993, 37.137081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316452, -0.388844, -0.865250,
		-0.832527, 0.551061, 0.056837,
		0.454705, 0.738330, -0.498108,
		32.078754, 37.033493, 36.987648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259724, 36.782619, 36.957954>,  <31.760460, 36.516659, 37.336323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259724, 36.782619, 36.957954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590878, 36.913189, 36.775501>,  <31.789570, 36.991531, 36.666027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590878, 36.913189, 36.775501>,  <31.259724, 36.782619, 36.957954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590878, 36.913189, 36.775501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417556, -0.184321, -0.889760,
		-0.374510, 0.927080, -0.016298,
		0.827882, 0.326419, -0.456138,
		31.839243, 37.011116, 36.638660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961975, 37.227676, 36.445965>,  <31.259724, 36.782619, 36.957954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961975, 37.227676, 36.445965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334751, 37.119217, 36.349663>,  <31.558416, 37.054142, 36.291882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334751, 37.119217, 36.349663>,  <30.961975, 37.227676, 36.445965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334751, 37.119217, 36.349663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305240, -0.228214, -0.924525,
		0.195738, 0.935092, -0.295447,
		0.931942, -0.271147, -0.240758,
		31.614334, 37.037872, 36.277435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220203, 37.703556, 35.979324>,  <30.961975, 37.227676, 36.445965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220203, 37.703556, 35.979324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452188, 37.383804, 35.916534>,  <31.591379, 37.191952, 35.878860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452188, 37.383804, 35.916534>,  <31.220203, 37.703556, 35.979324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452188, 37.383804, 35.916534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323636, -0.049254, -0.944899,
		0.747600, 0.598806, -0.287273,
		0.579960, -0.799378, -0.156972,
		31.626177, 37.143990, 35.869442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455221, 37.747528, 35.272041>,  <31.220203, 37.703556, 35.979324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455221, 37.747528, 35.272041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475206, 37.366982, 35.393639>,  <31.487198, 37.138653, 35.466599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475206, 37.366982, 35.393639>,  <31.455221, 37.747528, 35.272041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475206, 37.366982, 35.393639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268313, -0.305970, -0.913450,
		0.962035, -0.035925, -0.270550,
		0.049964, -0.951363, 0.303993,
		31.490196, 37.081573, 35.484837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628304, 37.431004, 34.760696>,  <31.455221, 37.747528, 35.272041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628304, 37.431004, 34.760696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493288, 37.114639, 34.964863>,  <31.412279, 36.924820, 35.087364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493288, 37.114639, 34.964863>,  <31.628304, 37.431004, 34.760696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493288, 37.114639, 34.964863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509441, -0.302480, -0.805590,
		0.791542, -0.531946, -0.300824,
		-0.337537, -0.790911, 0.510420,
		31.392027, 36.877365, 35.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827848, 36.793911, 34.351860>,  <31.628304, 37.431004, 34.760696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827848, 36.793911, 34.351860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514448, 36.732655, 34.592751>,  <31.326408, 36.695900, 34.737286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514448, 36.732655, 34.592751>,  <31.827848, 36.793911, 34.351860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514448, 36.732655, 34.592751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570070, -0.208515, -0.794696,
		0.247273, -0.965955, 0.076071,
		-0.783502, -0.153141, 0.602222,
		31.279398, 36.686714, 34.773418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562725, 36.251789, 34.025974>,  <31.827848, 36.793911, 34.351860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562725, 36.251789, 34.025974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268969, 36.377239, 34.266743>,  <31.092714, 36.452507, 34.411205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268969, 36.377239, 34.266743>,  <31.562725, 36.251789, 34.025974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268969, 36.377239, 34.266743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675651, -0.253485, -0.692272,
		-0.064533, -0.915088, 0.398056,
		-0.734392, 0.313622, 0.601922,
		31.048651, 36.471325, 34.447319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064796, 35.711239, 34.071213>,  <31.562725, 36.251789, 34.025974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064796, 35.711239, 34.071213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871042, 36.039974, 34.191177>,  <30.754789, 36.237217, 34.263157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871042, 36.039974, 34.191177>,  <31.064796, 35.711239, 34.071213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871042, 36.039974, 34.191177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717183, -0.176698, -0.674112,
		-0.501019, -0.541621, 0.675001,
		-0.484385, 0.821842, 0.299912,
		30.725727, 36.286526, 34.281151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440565, 35.486240, 34.096161>,  <31.064796, 35.711239, 34.071213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440565, 35.486240, 34.096161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427553, 35.879864, 34.026234>,  <30.419746, 36.116039, 33.984276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427553, 35.879864, 34.026234>,  <30.440565, 35.486240, 34.096161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427553, 35.879864, 34.026234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450230, -0.170590, -0.876465,
		-0.892320, 0.050200, 0.448604,
		-0.032529, 0.984062, -0.174823,
		30.417795, 36.175083, 33.973785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892632, 35.542797, 33.742172>,  <30.440565, 35.486240, 34.096161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892632, 35.542797, 33.742172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078545, 35.883621, 33.645859>,  <30.190092, 36.088116, 33.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078545, 35.883621, 33.645859>,  <29.892632, 35.542797, 33.742172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078545, 35.883621, 33.645859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269560, -0.122866, -0.955113,
		-0.843394, 0.508826, 0.172574,
		0.464783, 0.852056, -0.240784,
		30.217979, 36.139236, 33.573624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435469, 35.824810, 33.234631>,  <29.892632, 35.542797, 33.742172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435469, 35.824810, 33.234631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802168, 35.976116, 33.183270>,  <30.022188, 36.066902, 33.152454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802168, 35.976116, 33.183270>,  <29.435469, 35.824810, 33.234631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802168, 35.976116, 33.183270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107770, -0.075309, -0.991319,
		-0.384655, 0.922628, -0.028273,
		0.916748, 0.378269, -0.128399,
		30.077192, 36.089596, 33.144749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308105, 36.193707, 32.631470>,  <29.435469, 35.824810, 33.234631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308105, 36.193707, 32.631470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707264, 36.196022, 32.657291>,  <29.946760, 36.197411, 32.672787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707264, 36.196022, 32.657291>,  <29.308105, 36.193707, 32.631470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707264, 36.196022, 32.657291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064126, 0.056879, -0.996320,
		-0.009437, 0.998364, 0.056388,
		0.997897, 0.005787, 0.064558,
		30.006634, 36.197758, 32.676659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587797, 36.758713, 32.250626>,  <29.308105, 36.193707, 32.631470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587797, 36.758713, 32.250626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903584, 36.516827, 32.292698>,  <30.093056, 36.371696, 32.317940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903584, 36.516827, 32.292698>,  <29.587797, 36.758713, 32.250626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903584, 36.516827, 32.292698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195856, 0.085782, -0.976874,
		0.581706, 0.791810, 0.186159,
		0.789468, -0.604713, 0.105181,
		30.140425, 36.335411, 32.324253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245935, 37.008278, 31.763550>,  <29.587797, 36.758713, 32.250626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245935, 37.008278, 31.763550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292267, 36.619812, 31.846895>,  <30.320065, 36.386730, 31.896902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292267, 36.619812, 31.846895>,  <30.245935, 37.008278, 31.763550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292267, 36.619812, 31.846895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054059, -0.203300, -0.977623,
		0.991797, 0.124499, 0.028953,
		0.115827, -0.971169, 0.208362,
		30.327015, 36.328461, 31.909405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822020, 36.718063, 31.317337>,  <30.245935, 37.008278, 31.763550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822020, 36.718063, 31.317337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588228, 36.406574, 31.408529>,  <30.447954, 36.219681, 31.463245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588228, 36.406574, 31.408529>,  <30.822020, 36.718063, 31.317337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588228, 36.406574, 31.408529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046356, -0.312556, -0.948768,
		0.810084, -0.543966, 0.218781,
		-0.584478, -0.778723, 0.227981,
		30.412884, 36.172958, 31.476923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215614, 36.137619, 31.031807>,  <30.822020, 36.718063, 31.317337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215614, 36.137619, 31.031807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825546, 36.060558, 31.075495>,  <30.591505, 36.014320, 31.101707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825546, 36.060558, 31.075495>,  <31.215614, 36.137619, 31.031807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825546, 36.060558, 31.075495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016774, -0.427507, -0.903857,
		0.220821, -0.883246, 0.413660,
		-0.975170, -0.192652, 0.109218,
		30.532995, 36.002762, 31.108259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081636, 35.679619, 30.517405>,  <31.215614, 36.137619, 31.031807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081636, 35.679619, 30.517405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705496, 35.773521, 30.615900>,  <30.479813, 35.829861, 30.674997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705496, 35.773521, 30.615900>,  <31.081636, 35.679619, 30.517405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705496, 35.773521, 30.615900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304068, -0.255302, -0.917804,
		-0.152591, -0.937930, 0.311454,
		-0.940350, 0.234752, 0.246238,
		30.423391, 35.843948, 30.689772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634642, 35.169182, 30.160559>,  <31.081636, 35.679619, 30.517405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634642, 35.169182, 30.160559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414135, 35.493458, 30.239435>,  <30.281832, 35.688023, 30.286760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414135, 35.493458, 30.239435>,  <30.634642, 35.169182, 30.160559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414135, 35.493458, 30.239435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370989, -0.026485, -0.928259,
		-0.747311, -0.584872, 0.315358,
		-0.551265, 0.810693, 0.197189,
		30.248755, 35.736664, 30.298592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046959, 35.083145, 29.718725>,  <30.634642, 35.169182, 30.160559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046959, 35.083145, 29.718725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016123, 35.470787, 29.812449>,  <29.997622, 35.703373, 29.868683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016123, 35.470787, 29.812449>,  <30.046959, 35.083145, 29.718725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016123, 35.470787, 29.812449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292787, 0.202642, -0.934458,
		-0.953065, -0.140640, 0.268118,
		-0.077090, 0.969101, 0.234309,
		29.992996, 35.761517, 29.882742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389692, 35.299801, 29.550732>,  <30.046959, 35.083145, 29.718725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389692, 35.299801, 29.550732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575991, 35.653568, 29.562565>,  <29.687771, 35.865829, 29.569664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575991, 35.653568, 29.562565>,  <29.389692, 35.299801, 29.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575991, 35.653568, 29.562565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381626, 0.230904, -0.895011,
		-0.798399, 0.405561, 0.445062,
		0.465748, 0.884423, 0.029581,
		29.715715, 35.918896, 29.571440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920792, 35.779514, 29.302286>,  <29.389692, 35.299801, 29.550732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920792, 35.779514, 29.302286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278152, 35.951725, 29.250940>,  <29.492569, 36.055050, 29.220133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278152, 35.951725, 29.250940>,  <28.920792, 35.779514, 29.302286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278152, 35.951725, 29.250940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221200, 0.172850, -0.959788,
		-0.391026, 0.885872, 0.249657,
		0.893403, 0.430527, -0.128366,
		29.546173, 36.080883, 29.212431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738474, 36.347858, 28.971045>,  <28.920792, 35.779514, 29.302286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738474, 36.347858, 28.971045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130461, 36.301147, 28.906515>,  <29.365654, 36.273121, 28.867798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130461, 36.301147, 28.906515>,  <28.738474, 36.347858, 28.971045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130461, 36.301147, 28.906515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145712, 0.131747, -0.980516,
		0.135759, 0.984381, 0.112091,
		0.979968, -0.116781, -0.161322,
		29.424452, 36.266113, 28.858118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784260, 36.746925, 28.371300>,  <28.738474, 36.347858, 28.971045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784260, 36.746925, 28.371300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149794, 36.585121, 28.385590>,  <29.369114, 36.488037, 28.394163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149794, 36.585121, 28.385590>,  <28.784260, 36.746925, 28.371300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149794, 36.585121, 28.385590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068802, 0.067527, -0.995342,
		0.400215, 0.912036, 0.089540,
		0.913835, -0.404512, 0.035725,
		29.423944, 36.463768, 28.396307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205738, 37.173824, 28.056696>,  <28.784260, 36.746925, 28.371300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205738, 37.173824, 28.056696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360121, 36.805630, 28.032238>,  <29.452751, 36.584713, 28.017563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360121, 36.805630, 28.032238>,  <29.205738, 37.173824, 28.056696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360121, 36.805630, 28.032238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061742, 0.091907, -0.993851,
		0.920448, 0.379810, 0.092305,
		0.385958, -0.920487, -0.061145,
		29.475908, 36.529484, 28.013895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814211, 37.264523, 27.605473>,  <29.205738, 37.173824, 28.056696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814211, 37.264523, 27.605473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738543, 36.872425, 27.628559>,  <29.693142, 36.637165, 27.642410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738543, 36.872425, 27.628559>,  <29.814211, 37.264523, 27.605473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738543, 36.872425, 27.628559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244725, -0.103988, -0.964000,
		0.950959, -0.168237, 0.259563,
		-0.189172, -0.980246, 0.057717,
		29.681791, 36.578350, 27.645874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408405, 36.854012, 27.354958>,  <29.814211, 37.264523, 27.605473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408405, 36.854012, 27.354958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101933, 36.600800, 27.310711>,  <29.918049, 36.448872, 27.284163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101933, 36.600800, 27.310711>,  <30.408405, 36.854012, 27.354958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101933, 36.600800, 27.310711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168846, -0.032223, -0.985116,
		0.620048, -0.773453, 0.131574,
		-0.766180, -0.633035, -0.110614,
		29.872078, 36.410889, 27.277527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703678, 36.399326, 26.876688>,  <30.408405, 36.854012, 27.354958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703678, 36.399326, 26.876688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305273, 36.376354, 26.849369>,  <30.066231, 36.362572, 26.832977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305273, 36.376354, 26.849369>,  <30.703678, 36.399326, 26.876688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305273, 36.376354, 26.849369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077365, -0.174330, -0.981643,
		0.044473, -0.983011, 0.178078,
		-0.996010, -0.057434, -0.068298,
		30.006470, 36.359123, 26.828880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598724, 35.808228, 26.465736>,  <30.703678, 36.399326, 26.876688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598724, 35.808228, 26.465736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273088, 36.039536, 26.444345>,  <30.077707, 36.178322, 26.431511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273088, 36.039536, 26.444345>,  <30.598724, 35.808228, 26.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273088, 36.039536, 26.444345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045398, -0.155172, -0.986844,
		-0.578959, -0.800953, 0.152577,
		-0.814091, 0.578269, -0.053476,
		30.028860, 36.213017, 26.428303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055384, 35.448364, 26.198566>,  <30.598724, 35.808228, 26.465736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055384, 35.448364, 26.198566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953047, 35.827259, 26.121319>,  <29.891645, 36.054596, 26.074970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953047, 35.827259, 26.121319>,  <30.055384, 35.448364, 26.198566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953047, 35.827259, 26.121319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101396, -0.224957, -0.969079,
		-0.961386, -0.228350, 0.153599,
		-0.255843, 0.947233, -0.193117,
		29.876293, 36.111427, 26.063383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465406, 35.380943, 25.846424>,  <30.055384, 35.448364, 26.198566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465406, 35.380943, 25.846424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576534, 35.745075, 25.723711>,  <29.643211, 35.963554, 25.650084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576534, 35.745075, 25.723711>,  <29.465406, 35.380943, 25.846424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576534, 35.745075, 25.723711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262445, -0.235279, -0.935824,
		-0.924087, 0.340506, 0.173546,
		0.277822, 0.910329, -0.306783,
		29.659882, 36.018173, 25.631676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018280, 35.547523, 25.375731>,  <29.465406, 35.380943, 25.846424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018280, 35.547523, 25.375731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287384, 35.833263, 25.298683>,  <29.448847, 36.004707, 25.252455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287384, 35.833263, 25.298683>,  <29.018280, 35.547523, 25.375731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287384, 35.833263, 25.298683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221348, -0.054087, -0.973694,
		-0.705972, 0.697699, 0.121732,
		0.672761, 0.714346, -0.192618,
		29.489212, 36.047565, 25.240898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760891, 36.021915, 24.797403>,  <29.018280, 35.547523, 25.375731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760891, 36.021915, 24.797403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160522, 36.038593, 24.801485>,  <29.400301, 36.048599, 24.803934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160522, 36.038593, 24.801485>,  <28.760891, 36.021915, 24.797403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160522, 36.038593, 24.801485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006945, 0.077633, -0.996958,
		-0.042356, 0.996110, 0.077272,
		0.999078, 0.041691, 0.010206,
		29.460245, 36.051102, 24.804546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948448, 36.433285, 24.230568>,  <28.760891, 36.021915, 24.797403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948448, 36.433285, 24.230568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298922, 36.259491, 24.314022>,  <29.509205, 36.155212, 24.364094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298922, 36.259491, 24.314022>,  <28.948448, 36.433285, 24.230568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298922, 36.259491, 24.314022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226012, -0.011953, -0.974051,
		0.425705, 0.900599, 0.087727,
		0.876181, -0.434486, 0.208635,
		29.561775, 36.129147, 24.376612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433723, 36.806030, 23.898945>,  <28.948448, 36.433285, 24.230568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433723, 36.806030, 23.898945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590422, 36.438400, 23.916115>,  <29.684441, 36.217823, 23.926416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590422, 36.438400, 23.916115>,  <29.433723, 36.806030, 23.898945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590422, 36.438400, 23.916115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223945, 0.049995, -0.973319,
		0.892403, 0.390906, 0.225407,
		0.391745, -0.919072, 0.042926,
		29.707945, 36.162678, 23.928993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045830, 36.939610, 23.576431>,  <29.433723, 36.806030, 23.898945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045830, 36.939610, 23.576431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031017, 36.539886, 23.575018>,  <30.022129, 36.300053, 23.574171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031017, 36.539886, 23.575018>,  <30.045830, 36.939610, 23.576431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031017, 36.539886, 23.575018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091261, 0.000138, -0.995827,
		0.995138, -0.037201, 0.091193,
		-0.037033, -0.999308, -0.003532,
		30.019907, 36.240093, 23.573957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622517, 36.699791, 23.108053>,  <30.045830, 36.939610, 23.576431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622517, 36.699791, 23.108053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325472, 36.432301, 23.122633>,  <30.147245, 36.271805, 23.131382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325472, 36.432301, 23.122633>,  <30.622517, 36.699791, 23.108053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325472, 36.432301, 23.122633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010714, -0.066284, -0.997743,
		0.669638, -0.740544, 0.056388,
		-0.742611, -0.668731, 0.036452,
		30.102688, 36.231682, 23.133568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724838, 36.214073, 22.546572>,  <30.622517, 36.699791, 23.108053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724838, 36.214073, 22.546572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342329, 36.119003, 22.614754>,  <30.112823, 36.061962, 22.655663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342329, 36.119003, 22.614754>,  <30.724838, 36.214073, 22.546572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342329, 36.119003, 22.614754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166236, -0.037836, -0.985360,
		0.240644, -0.970608, -0.003329,
		-0.956272, -0.237674, 0.170454,
		30.055447, 36.047703, 22.665890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632008, 35.563828, 22.286043>,  <30.724838, 36.214073, 22.546572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632008, 35.563828, 22.286043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287714, 35.767448, 22.286470>,  <30.081139, 35.889622, 22.286726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287714, 35.767448, 22.286470>,  <30.632008, 35.563828, 22.286043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287714, 35.767448, 22.286470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053507, 0.092557, -0.994269,
		-0.506236, -0.855744, -0.106905,
		-0.860734, 0.509054, 0.001067,
		30.029493, 35.920166, 22.286791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180399, 35.354107, 21.707537>,  <30.632008, 35.563828, 22.286043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180399, 35.354107, 21.707537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040146, 35.712147, 21.817705>,  <29.955994, 35.926971, 21.883806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040146, 35.712147, 21.817705>,  <30.180399, 35.354107, 21.707537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040146, 35.712147, 21.817705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257610, 0.190563, -0.947271,
		-0.900385, -0.403097, 0.163768,
		-0.350634, 0.895096, 0.275422,
		29.934956, 35.980675, 21.900331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717207, 35.394009, 21.246216>,  <30.180399, 35.354107, 21.707537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717207, 35.394009, 21.246216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764116, 35.761341, 21.397429>,  <29.792263, 35.981743, 21.488155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764116, 35.761341, 21.397429>,  <29.717207, 35.394009, 21.246216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764116, 35.761341, 21.397429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163720, 0.393328, -0.904703,
		-0.979511, 0.044207, 0.196477,
		0.117275, 0.918335, 0.378032,
		29.799299, 36.036842, 21.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120186, 35.837048, 21.125072>,  <29.717207, 35.394009, 21.246216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120186, 35.837048, 21.125072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430157, 36.083210, 21.182720>,  <29.616138, 36.230907, 21.217308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430157, 36.083210, 21.182720>,  <29.120186, 35.837048, 21.125072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430157, 36.083210, 21.182720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209162, 0.464856, -0.860326,
		-0.596441, 0.636544, 0.488947,
		0.774925, 0.615403, 0.144118,
		29.662634, 36.267830, 21.225956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914717, 36.459629, 20.799994>,  <29.120186, 35.837048, 21.125072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914717, 36.459629, 20.799994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308826, 36.506241, 20.850042>,  <29.545292, 36.534210, 20.880072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308826, 36.506241, 20.850042>,  <28.914717, 36.459629, 20.799994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308826, 36.506241, 20.850042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039254, 0.558068, -0.828867,
		-0.166416, 0.821572, 0.545275,
		0.985274, 0.116533, 0.125122,
		29.604408, 36.541199, 20.887579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196682, 37.116035, 20.903845>,  <28.914717, 36.459629, 20.799994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196682, 37.116035, 20.903845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482491, 36.908249, 20.716393>,  <29.653976, 36.783577, 20.603922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482491, 36.908249, 20.716393>,  <29.196682, 37.116035, 20.903845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482491, 36.908249, 20.716393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007700, 0.663960, -0.747729,
		0.699572, 0.537877, 0.470413,
		0.714521, -0.519467, -0.468629,
		29.696846, 36.752407, 20.575804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968954, 37.610420, 21.324835>,  <29.196682, 37.116035, 20.903845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968954, 37.610420, 21.324835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069044, 37.810913, 21.656172>,  <29.129099, 37.931210, 21.854975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069044, 37.810913, 21.656172>,  <28.968954, 37.610420, 21.324835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069044, 37.810913, 21.656172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691284, 0.506526, -0.515323,
		-0.677874, 0.701568, -0.219748,
		0.250226, 0.501233, 0.828343,
		29.144112, 37.961285, 21.904675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941032, 38.396671, 21.261549>,  <28.968954, 37.610420, 21.324835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941032, 38.396671, 21.261549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218527, 38.252056, 21.510715>,  <29.385023, 38.165287, 21.660215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218527, 38.252056, 21.510715>,  <28.941032, 38.396671, 21.261549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218527, 38.252056, 21.510715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705390, 0.515726, -0.486263,
		-0.145451, 0.776736, 0.612801,
		0.693735, -0.361537, 0.622915,
		29.426647, 38.143597, 21.697590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505959, 38.726254, 20.938915>,  <28.941032, 38.396671, 21.261549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505959, 38.726254, 20.938915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838161, 38.781155, 21.154848>,  <30.037483, 38.814095, 21.284409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838161, 38.781155, 21.154848>,  <29.505959, 38.726254, 20.938915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838161, 38.781155, 21.154848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346052, 0.632295, -0.693146,
		-0.436468, 0.762473, 0.477630,
		0.830508, 0.137251, 0.539832,
		30.087315, 38.822330, 21.316797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686213, 39.485996, 21.129513>,  <29.505959, 38.726254, 20.938915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686213, 39.485996, 21.129513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008978, 39.255890, 21.075907>,  <30.202637, 39.117825, 21.043743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008978, 39.255890, 21.075907>,  <29.686213, 39.485996, 21.129513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008978, 39.255890, 21.075907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403768, 0.702799, -0.585700,
		0.431122, 0.418496, 0.799372,
		0.806911, -0.575269, -0.134017,
		30.251051, 39.083309, 21.035702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276205, 39.827251, 21.311279>,  <29.686213, 39.485996, 21.129513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276205, 39.827251, 21.311279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374451, 39.568153, 21.022808>,  <30.433397, 39.412693, 20.849726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374451, 39.568153, 21.022808>,  <30.276205, 39.827251, 21.311279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374451, 39.568153, 21.022808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317405, 0.756695, -0.571547,
		0.915930, -0.088527, 0.391452,
		0.245612, -0.647746, -0.721179,
		30.448133, 39.373829, 20.806454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952946, 39.713764, 21.188747>,  <30.276205, 39.827251, 21.311279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952946, 39.713764, 21.188747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773779, 39.659115, 20.835318>,  <30.666279, 39.626324, 20.623260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773779, 39.659115, 20.835318>,  <30.952946, 39.713764, 21.188747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773779, 39.659115, 20.835318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444691, 0.823303, -0.352736,
		0.775643, -0.550914, -0.308014,
		-0.447916, -0.136626, -0.883575,
		30.639404, 39.618126, 20.570246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431881, 39.709488, 20.768318>,  <30.952946, 39.713764, 21.188747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431881, 39.709488, 20.768318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103336, 39.841614, 20.582306>,  <30.906210, 39.920891, 20.470699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103336, 39.841614, 20.582306>,  <31.431881, 39.709488, 20.768318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103336, 39.841614, 20.582306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508915, 0.792575, -0.335900,
		0.257618, -0.512557, -0.819096,
		-0.821364, 0.330317, -0.465030,
		30.856928, 39.940708, 20.442797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399059, 38.972595, 21.130737>,  <31.431881, 39.709488, 20.768318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399059, 38.972595, 21.130737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027149, 39.087009, 21.223436>,  <30.804003, 39.155659, 21.279055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027149, 39.087009, 21.223436>,  <31.399059, 38.972595, 21.130737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027149, 39.087009, 21.223436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107772, -0.813429, 0.571593,
		0.352004, 0.506476, 0.787131,
		-0.929773, 0.286034, 0.231747,
		30.748217, 39.172821, 21.292961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313137, 39.036716, 21.865456>,  <31.399059, 38.972595, 21.130737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313137, 39.036716, 21.865456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950071, 38.956150, 21.718174>,  <30.732231, 38.907810, 21.629805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950071, 38.956150, 21.718174>,  <31.313137, 39.036716, 21.865456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950071, 38.956150, 21.718174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068120, -0.794988, 0.602789,
		-0.414128, 0.572213, 0.707863,
		-0.907666, -0.201412, -0.368206,
		30.677771, 38.895725, 21.607712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764475, 39.145351, 22.408596>,  <31.313137, 39.036716, 21.865456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764475, 39.145351, 22.408596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726707, 38.858910, 22.131964>,  <30.704046, 38.687046, 21.965984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726707, 38.858910, 22.131964>,  <30.764475, 39.145351, 22.408596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726707, 38.858910, 22.131964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252989, -0.689136, 0.679035,
		-0.962851, -0.110849, 0.246234,
		-0.094418, -0.716103, -0.691579,
		30.698381, 38.644077, 21.924490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182709, 38.639511, 22.542418>,  <30.764475, 39.145351, 22.408596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182709, 38.639511, 22.542418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533409, 38.520710, 22.391104>,  <30.743830, 38.449429, 22.300316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533409, 38.520710, 22.391104>,  <30.182709, 38.639511, 22.542418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533409, 38.520710, 22.391104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263769, -0.360756, 0.894584,
		-0.402166, -0.884105, -0.237952,
		0.876749, -0.297007, -0.378283,
		30.796434, 38.431610, 22.277618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195480, 38.026634, 22.871658>,  <30.182709, 38.639511, 22.542418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195480, 38.026634, 22.871658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555450, 38.139202, 22.738426>,  <30.771433, 38.206741, 22.658487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555450, 38.139202, 22.738426>,  <30.195480, 38.026634, 22.871658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555450, 38.139202, 22.738426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398329, -0.219790, 0.890520,
		0.177403, -0.934075, -0.309892,
		0.899923, 0.281420, -0.333078,
		30.825428, 38.223629, 22.638502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679066, 37.527481, 23.176239>,  <30.195480, 38.026634, 22.871658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679066, 37.527481, 23.176239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917116, 37.826157, 23.057394>,  <31.059946, 38.005363, 22.986086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917116, 37.826157, 23.057394>,  <30.679066, 37.527481, 23.176239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917116, 37.826157, 23.057394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516981, -0.072664, 0.852907,
		0.615271, -0.661187, -0.429270,
		0.595124, 0.746693, -0.297113,
		31.095654, 38.050163, 22.968260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353825, 37.335960, 23.398888>,  <30.679066, 37.527481, 23.176239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353825, 37.335960, 23.398888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377323, 37.724827, 23.308161>,  <31.391422, 37.958145, 23.253723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377323, 37.724827, 23.308161>,  <31.353825, 37.335960, 23.398888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377323, 37.724827, 23.308161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463640, 0.174649, 0.868640,
		0.884074, -0.156193, -0.440474,
		0.058747, 0.972163, -0.226819,
		31.394947, 38.016476, 23.240114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124424, 37.603256, 23.410227>,  <31.353825, 37.335960, 23.398888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124424, 37.603256, 23.410227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872032, 37.904961, 23.482847>,  <31.720598, 38.085983, 23.526419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872032, 37.904961, 23.482847>,  <32.124424, 37.603256, 23.410227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872032, 37.904961, 23.482847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557340, 0.277920, 0.782389,
		0.539669, 0.594854, -0.595741,
		-0.630975, 0.754261, 0.181551,
		31.682739, 38.131237, 23.537312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613655, 38.144371, 23.593885>,  <32.124424, 37.603256, 23.410227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613655, 38.144371, 23.593885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269382, 38.301449, 23.723515>,  <32.062820, 38.395695, 23.801292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269382, 38.301449, 23.723515>,  <32.613655, 38.144371, 23.593885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269382, 38.301449, 23.723515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477850, 0.403293, 0.780393,
		0.175761, 0.826526, -0.534755,
		-0.860678, 0.392696, 0.324073,
		32.011181, 38.419258, 23.820736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817192, 38.776131, 23.932449>,  <32.613655, 38.144371, 23.593885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817192, 38.776131, 23.932449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457867, 38.683651, 24.081890>,  <32.242271, 38.628162, 24.171555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457867, 38.683651, 24.081890>,  <32.817192, 38.776131, 23.932449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457867, 38.683651, 24.081890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299681, 0.299397, 0.905843,
		-0.321283, 0.925694, -0.199668,
		-0.898314, -0.231195, 0.373604,
		32.188374, 38.614292, 24.193972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534935, 39.350163, 24.212624>,  <32.817192, 38.776131, 23.932449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534935, 39.350163, 24.212624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359650, 39.035290, 24.386208>,  <32.254478, 38.846367, 24.490358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359650, 39.035290, 24.386208>,  <32.534935, 39.350163, 24.212624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359650, 39.035290, 24.386208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175508, 0.398558, 0.900193,
		-0.881570, 0.470640, -0.036497,
		-0.438213, -0.787178, 0.433958,
		32.228184, 38.799137, 24.516396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212559, 39.742413, 24.805367>,  <32.534935, 39.350163, 24.212624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212559, 39.742413, 24.805367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172588, 39.349510, 24.868856>,  <32.148605, 39.113770, 24.906950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172588, 39.349510, 24.868856>,  <32.212559, 39.742413, 24.805367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172588, 39.349510, 24.868856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085476, 0.150458, 0.984914,
		-0.991317, 0.111984, 0.068924,
		-0.099925, -0.982253, 0.158723,
		32.142612, 39.054832, 24.916473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667898, 39.620419, 25.172272>,  <32.212559, 39.742413, 24.805367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667898, 39.620419, 25.172272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901983, 39.303711, 25.242281>,  <32.042435, 39.113686, 25.284286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901983, 39.303711, 25.242281>,  <31.667898, 39.620419, 25.172272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901983, 39.303711, 25.242281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005564, 0.219762, 0.975538,
		-0.810860, -0.569924, 0.133014,
		0.585214, -0.791764, 0.175025,
		32.077549, 39.066181, 25.294788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506954, 39.366909, 25.806690>,  <31.667898, 39.620419, 25.172272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506954, 39.366909, 25.806690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874559, 39.214619, 25.765778>,  <32.095123, 39.123245, 25.741230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874559, 39.214619, 25.765778>,  <31.506954, 39.366909, 25.806690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874559, 39.214619, 25.765778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152142, 0.103175, 0.982959,
		-0.363685, -0.918914, 0.152743,
		0.919013, -0.380726, -0.102282,
		32.150265, 39.100399, 25.735092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637672, 38.950249, 26.396057>,  <31.506954, 39.366909, 25.806690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637672, 38.950249, 26.396057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006813, 39.000523, 26.250427>,  <32.228298, 39.030689, 26.163050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006813, 39.000523, 26.250427>,  <31.637672, 38.950249, 26.396057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006813, 39.000523, 26.250427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324583, 0.255095, 0.910808,
		0.207349, -0.958712, 0.194620,
		0.922850, 0.125685, -0.364076,
		32.283669, 39.038227, 26.141205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144958, 38.463646, 26.705595>,  <31.637672, 38.950249, 26.396057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144958, 38.463646, 26.705595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361130, 38.778515, 26.586737>,  <32.490833, 38.967438, 26.515421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361130, 38.778515, 26.586737>,  <32.144958, 38.463646, 26.705595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361130, 38.778515, 26.586737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407722, 0.063922, 0.910866,
		0.736005, -0.613408, -0.286404,
		0.540425, 0.787175, -0.297147,
		32.523258, 39.014668, 26.497593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876663, 38.361904, 26.849030>,  <32.144958, 38.463646, 26.705595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876663, 38.361904, 26.849030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806881, 38.755753, 26.845413>,  <32.765011, 38.992062, 26.843245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806881, 38.755753, 26.845413>,  <32.876663, 38.361904, 26.849030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806881, 38.755753, 26.845413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541681, 0.103635, 0.834171,
		0.822281, 0.140633, -0.551432,
		-0.174459, 0.984623, -0.009039,
		32.754543, 39.051140, 26.842701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430653, 38.608646, 27.163534>,  <32.876663, 38.361904, 26.849030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430653, 38.608646, 27.163534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172592, 38.913174, 27.189392>,  <33.017757, 39.095890, 27.204906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172592, 38.913174, 27.189392>,  <33.430653, 38.608646, 27.163534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172592, 38.913174, 27.189392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268363, 0.146571, 0.952102,
		0.715376, 0.631597, -0.298869,
		-0.645150, 0.761316, 0.064644,
		32.979046, 39.141567, 27.208786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742676, 38.943954, 27.696558>,  <33.430653, 38.608646, 27.163534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742676, 38.943954, 27.696558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389709, 39.123993, 27.641783>,  <33.177929, 39.232014, 27.608917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389709, 39.123993, 27.641783>,  <33.742676, 38.943954, 27.696558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389709, 39.123993, 27.641783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057399, 0.185901, 0.980891,
		0.466949, 0.873417, -0.138208,
		-0.882420, 0.450093, -0.136940,
		33.124985, 39.259022, 27.600700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834568, 39.539219, 28.112131>,  <33.742676, 38.943954, 27.696558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834568, 39.539219, 28.112131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449963, 39.462429, 28.033510>,  <33.219200, 39.416355, 27.986338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449963, 39.462429, 28.033510>,  <33.834568, 39.539219, 28.112131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449963, 39.462429, 28.033510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215993, 0.086016, 0.972599,
		-0.169803, 0.977624, -0.124170,
		-0.961516, -0.191970, -0.196554,
		33.161507, 39.404839, 27.974545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491913, 39.926224, 28.574924>,  <33.834568, 39.539219, 28.112131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491913, 39.926224, 28.574924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175571, 39.697365, 28.488020>,  <32.985767, 39.560051, 28.435877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175571, 39.697365, 28.488020>,  <33.491913, 39.926224, 28.574924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175571, 39.697365, 28.488020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358257, 0.144979, 0.922298,
		-0.496188, 0.807238, -0.319632,
		-0.790854, -0.572143, -0.217262,
		32.938316, 39.525723, 28.422842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944950, 40.235096, 28.848097>,  <33.491913, 39.926224, 28.574924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944950, 40.235096, 28.848097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864246, 39.845127, 28.810524>,  <32.815823, 39.611145, 28.787981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864246, 39.845127, 28.810524>,  <32.944950, 40.235096, 28.848097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864246, 39.845127, 28.810524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234293, -0.045078, 0.971120,
		-0.950999, 0.217943, -0.219322,
		-0.201762, -0.974920, -0.093932,
		32.803719, 39.552650, 28.782345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376362, 40.126213, 29.213003>,  <32.944950, 40.235096, 28.848097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376362, 40.126213, 29.213003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503014, 39.747494, 29.189955>,  <32.579002, 39.520264, 29.176126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503014, 39.747494, 29.189955>,  <32.376362, 40.126213, 29.213003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503014, 39.747494, 29.189955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140225, -0.106798, 0.984343,
		-0.938128, -0.303591, -0.166580,
		0.316628, -0.946798, -0.057619,
		32.598003, 39.463455, 29.172668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866522, 39.700939, 29.508266>,  <32.376362, 40.126213, 29.213003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866522, 39.700939, 29.508266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190292, 39.466377, 29.520613>,  <32.384556, 39.325638, 29.528021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190292, 39.466377, 29.520613>,  <31.866522, 39.700939, 29.508266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190292, 39.466377, 29.520613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167672, -0.180424, 0.969192,
		-0.562774, -0.789665, -0.244364,
		0.809426, -0.586409, 0.030867,
		32.433121, 39.290455, 29.529873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650753, 39.084484, 29.956406>,  <31.866522, 39.700939, 29.508266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650753, 39.084484, 29.956406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049366, 39.117367, 29.951212>,  <32.288532, 39.137096, 29.948095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049366, 39.117367, 29.951212>,  <31.650753, 39.084484, 29.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049366, 39.117367, 29.951212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030089, -0.210405, 0.977151,
		0.077601, -0.974151, -0.212149,
		0.996530, 0.082211, -0.012984,
		32.348324, 39.142029, 29.947317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930162, 38.548031, 30.363146>,  <31.650753, 39.084484, 29.956406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930162, 38.548031, 30.363146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248684, 38.789978, 30.361103>,  <32.439796, 38.935146, 30.359879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248684, 38.789978, 30.361103>,  <31.930162, 38.548031, 30.363146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248684, 38.789978, 30.361103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114013, -0.141797, 0.983308,
		0.594052, -0.783596, -0.181877,
		0.796306, 0.604873, -0.005105,
		32.487576, 38.971439, 30.359571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517941, 38.176125, 30.667383>,  <31.930162, 38.548031, 30.363146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517941, 38.176125, 30.667383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537186, 38.573204, 30.711620>,  <32.548733, 38.811451, 30.738163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537186, 38.573204, 30.711620>,  <32.517941, 38.176125, 30.667383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537186, 38.573204, 30.711620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157497, -0.116874, 0.980579,
		0.986347, -0.029760, -0.161971,
		0.048112, 0.992701, 0.110591,
		32.551620, 38.871014, 30.744799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951389, 38.164761, 31.189022>,  <32.517941, 38.176125, 30.667383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951389, 38.164761, 31.189022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868435, 38.555843, 31.175863>,  <32.818661, 38.790493, 31.167969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868435, 38.555843, 31.175863>,  <32.951389, 38.164761, 31.189022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868435, 38.555843, 31.175863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235555, 0.082546, 0.968349,
		0.949476, 0.193074, -0.247423,
		-0.207387, 0.977706, -0.032896,
		32.806217, 38.849155, 31.165995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543598, 38.550274, 31.536005>,  <32.951389, 38.164761, 31.189022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543598, 38.550274, 31.536005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218040, 38.782608, 31.541740>,  <33.022705, 38.922009, 31.545181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218040, 38.782608, 31.541740>,  <33.543598, 38.550274, 31.536005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218040, 38.782608, 31.541740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110894, 0.131076, 0.985151,
		0.570327, 0.803401, -0.171093,
		-0.813897, 0.580832, 0.014337,
		32.973869, 38.956856, 31.546041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708527, 39.150860, 31.834309>,  <33.543598, 38.550274, 31.536005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708527, 39.150860, 31.834309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315575, 39.153008, 31.909039>,  <33.079803, 39.154297, 31.953876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315575, 39.153008, 31.909039>,  <33.708527, 39.150860, 31.834309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315575, 39.153008, 31.909039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180143, 0.293549, 0.938817,
		-0.049803, 0.955929, -0.289343,
		-0.982379, 0.005367, 0.186824,
		33.020863, 39.154617, 31.965086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514030, 39.805489, 32.199352>,  <33.708527, 39.150860, 31.834309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514030, 39.805489, 32.199352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200241, 39.572998, 32.285858>,  <33.011967, 39.433502, 32.337761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200241, 39.572998, 32.285858>,  <33.514030, 39.805489, 32.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200241, 39.572998, 32.285858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006914, 0.340514, 0.940214,
		-0.620118, 0.739072, -0.263107,
		-0.784478, -0.581225, 0.216269,
		32.964897, 39.398632, 32.350739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004509, 40.170757, 32.631462>,  <33.514030, 39.805489, 32.199352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004509, 40.170757, 32.631462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854111, 39.807953, 32.707302>,  <32.763870, 39.590271, 32.752808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854111, 39.807953, 32.707302>,  <33.004509, 40.170757, 32.631462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854111, 39.807953, 32.707302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254842, 0.297947, 0.919937,
		-0.890889, 0.297574, -0.343172,
		-0.375997, -0.907016, 0.189603,
		32.741310, 39.535847, 32.764183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563240, 40.286129, 33.115173>,  <33.004509, 40.170757, 32.631462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563240, 40.286129, 33.115173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603981, 39.892120, 33.170837>,  <32.628426, 39.655716, 33.204235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603981, 39.892120, 33.170837>,  <32.563240, 40.286129, 33.115173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603981, 39.892120, 33.170837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120744, 0.126616, 0.984576,
		-0.987445, -0.117082, -0.106039,
		0.101850, -0.985018, 0.139163,
		32.634537, 39.596615, 33.212585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010441, 39.973690, 33.589836>,  <32.563240, 40.286129, 33.115173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010441, 39.973690, 33.589836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337711, 39.744335, 33.606915>,  <32.534073, 39.606724, 33.617161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337711, 39.744335, 33.606915>,  <32.010441, 39.973690, 33.589836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337711, 39.744335, 33.606915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051142, 0.001396, 0.998690,
		-0.572692, -0.819286, -0.028181,
		0.818174, -0.573383, 0.042699,
		32.583164, 39.572319, 33.619724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937096, 39.672649, 34.155933>,  <32.010441, 39.973690, 33.589836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937096, 39.672649, 34.155933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325500, 39.625778, 34.072598>,  <32.558544, 39.597656, 34.022598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325500, 39.625778, 34.072598>,  <31.937096, 39.672649, 34.155933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325500, 39.625778, 34.072598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192607, -0.132600, 0.972275,
		-0.141572, -0.984217, -0.106183,
		0.971010, -0.117196, -0.208340,
		32.616806, 39.590626, 34.010098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163197, 38.984364, 34.373348>,  <31.937096, 39.672649, 34.155933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163197, 38.984364, 34.373348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473068, 39.237301, 34.374466>,  <32.658993, 39.389065, 34.375137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473068, 39.237301, 34.374466>,  <32.163197, 38.984364, 34.373348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473068, 39.237301, 34.374466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178646, -0.223092, 0.958288,
		0.606590, -0.741871, -0.285791,
		0.774683, 0.632343, 0.002793,
		32.705475, 39.427002, 34.375305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673195, 38.520435, 34.756008>,  <32.163197, 38.984364, 34.373348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673195, 38.520435, 34.756008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820724, 38.892216, 34.759815>,  <32.909245, 39.115284, 34.762100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820724, 38.892216, 34.759815>,  <32.673195, 38.520435, 34.756008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820724, 38.892216, 34.759815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202581, -0.090378, 0.975086,
		0.907153, -0.357710, -0.221623,
		0.368828, 0.929449, 0.009522,
		32.931374, 39.171051, 34.762672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200390, 38.510349, 35.287472>,  <32.673195, 38.520435, 34.756008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200390, 38.510349, 35.287472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146507, 38.902435, 35.229465>,  <33.114178, 39.137688, 35.194660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146507, 38.902435, 35.229465>,  <33.200390, 38.510349, 35.287472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146507, 38.902435, 35.229465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088835, 0.157711, 0.983481,
		0.986896, 0.119597, -0.108322,
		-0.134705, 0.980216, -0.145020,
		33.106094, 39.196499, 35.185959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775723, 38.962490, 35.693321>,  <33.200390, 38.510349, 35.287472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775723, 38.962490, 35.693321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469402, 39.212654, 35.633446>,  <33.285610, 39.362755, 35.597519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469402, 39.212654, 35.633446>,  <33.775723, 38.962490, 35.693321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469402, 39.212654, 35.633446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158863, 0.409546, 0.898351,
		0.623146, 0.664178, -0.412986,
		-0.765801, 0.625412, -0.149693,
		33.239662, 39.400276, 35.588539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950550, 39.587112, 35.748432>,  <33.775723, 38.962490, 35.693321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950550, 39.587112, 35.748432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564720, 39.619267, 35.848946>,  <33.333221, 39.638557, 35.909252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564720, 39.619267, 35.848946>,  <33.950550, 39.587112, 35.748432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564720, 39.619267, 35.848946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262726, 0.379507, 0.887102,
		-0.024052, 0.921690, -0.387181,
		-0.964571, 0.080386, 0.251280,
		33.275349, 39.643383, 35.924328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950199, 40.220772, 36.222958>,  <33.950550, 39.587112, 35.748432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950199, 40.220772, 36.222958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590443, 40.063477, 36.299324>,  <33.374588, 39.969097, 36.345146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590443, 40.063477, 36.299324>,  <33.950199, 40.220772, 36.222958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590443, 40.063477, 36.299324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048073, 0.345123, 0.937325,
		-0.434484, 0.852204, -0.291498,
		-0.899396, -0.393240, 0.190919,
		33.320625, 39.945503, 36.356598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354160, 40.308289, 35.559029>,  <33.950199, 40.220772, 36.222958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354160, 40.308289, 35.559029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751831, 40.269276, 35.577393>,  <34.990433, 40.245869, 35.588409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751831, 40.269276, 35.577393>,  <34.354160, 40.308289, 35.559029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751831, 40.269276, 35.577393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042628, -0.035448, -0.998462,
		0.099010, 0.994601, -0.031083,
		0.994173, -0.097532, 0.045908,
		35.050083, 40.240017, 35.591164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642742, 40.901482, 35.211380>,  <34.354160, 40.308289, 35.559029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642742, 40.901482, 35.211380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922924, 40.616089, 35.204445>,  <35.091034, 40.444855, 35.200283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922924, 40.616089, 35.204445>,  <34.642742, 40.901482, 35.211380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922924, 40.616089, 35.204445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100601, 0.122752, -0.987325,
		0.706568, 0.689836, 0.157759,
		0.700458, -0.713483, -0.017334,
		35.133060, 40.402042, 35.199245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198257, 41.157200, 34.893017>,  <34.642742, 40.901482, 35.211380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198257, 41.157200, 34.893017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263088, 40.765392, 34.845215>,  <35.301987, 40.530308, 34.816536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263088, 40.765392, 34.845215>,  <35.198257, 41.157200, 34.893017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263088, 40.765392, 34.845215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184734, 0.149081, -0.971415,
		0.969332, 0.135367, 0.205112,
		0.162076, -0.979515, -0.119502,
		35.311710, 40.471539, 34.809364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724258, 41.157108, 34.476345>,  <35.198257, 41.157200, 34.893017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724258, 41.157108, 34.476345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560764, 40.792191, 34.466091>,  <35.462669, 40.573238, 34.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560764, 40.792191, 34.466091>,  <35.724258, 41.157108, 34.476345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560764, 40.792191, 34.466091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206933, -0.065281, -0.976175,
		0.888885, -0.404298, 0.215466,
		-0.408732, -0.912294, -0.025636,
		35.438145, 40.518501, 34.458401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174175, 40.780880, 34.104176>,  <35.724258, 41.157108, 34.476345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174175, 40.780880, 34.104176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841660, 40.564793, 34.051830>,  <35.642151, 40.435139, 34.020424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841660, 40.564793, 34.051830>,  <36.174175, 40.780880, 34.104176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841660, 40.564793, 34.051830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226503, -0.114234, -0.967288,
		0.507599, -0.833735, 0.217322,
		-0.831288, -0.540219, -0.130858,
		35.592274, 40.402725, 34.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361504, 40.178192, 33.698215>,  <36.174175, 40.780880, 34.104176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361504, 40.178192, 33.698215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965118, 40.194828, 33.647217>,  <35.727287, 40.204811, 33.616615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965118, 40.194828, 33.647217>,  <36.361504, 40.178192, 33.698215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965118, 40.194828, 33.647217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109169, -0.302057, -0.947018,
		-0.077899, -0.952382, 0.294788,
		-0.990966, 0.041590, -0.127501,
		35.667828, 40.207306, 33.608967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079338, 39.535221, 33.232460>,  <36.361504, 40.178192, 33.698215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079338, 39.535221, 33.232460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809998, 39.830349, 33.213589>,  <35.648396, 40.007427, 33.202267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809998, 39.830349, 33.213589>,  <36.079338, 39.535221, 33.232460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809998, 39.830349, 33.213589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002362, -0.061670, -0.998093,
		-0.739322, -0.672175, 0.039783,
		-0.673348, 0.737819, -0.047182,
		35.607994, 40.051693, 33.199432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649052, 39.235672, 32.744942>,  <36.079338, 39.535221, 33.232460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649052, 39.235672, 32.744942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526711, 39.615913, 32.766151>,  <35.453308, 39.844059, 32.778877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526711, 39.615913, 32.766151>,  <35.649052, 39.235672, 32.744942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526711, 39.615913, 32.766151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068196, 0.077428, -0.994663,
		-0.949635, -0.300600, -0.088508,
		-0.305848, 0.950602, 0.053028,
		35.434956, 39.901093, 32.782059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047413, 39.352718, 32.323669>,  <35.649052, 39.235672, 32.744942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047413, 39.352718, 32.323669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207756, 39.717060, 32.362957>,  <35.303963, 39.935665, 32.386532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207756, 39.717060, 32.362957>,  <35.047413, 39.352718, 32.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207756, 39.717060, 32.362957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037912, 0.090630, -0.995163,
		-0.915355, 0.402645, 0.001797,
		0.400860, 0.910859, 0.098224,
		35.328014, 39.990318, 32.392426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779037, 39.696922, 31.854040>,  <35.047413, 39.352718, 32.323669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779037, 39.696922, 31.854040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107388, 39.903400, 31.951784>,  <35.304398, 40.027287, 32.010429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107388, 39.903400, 31.951784>,  <34.779037, 39.696922, 31.854040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107388, 39.903400, 31.951784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136775, 0.237734, -0.961653,
		-0.554490, 0.822817, 0.124547,
		0.820873, 0.516192, 0.244362,
		35.353649, 40.058258, 32.025093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688629, 40.266922, 31.494640>,  <34.779037, 39.696922, 31.854040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688629, 40.266922, 31.494640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079102, 40.281025, 31.580263>,  <35.313385, 40.289486, 31.631638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079102, 40.281025, 31.580263>,  <34.688629, 40.266922, 31.494640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079102, 40.281025, 31.580263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202969, 0.199974, -0.958548,
		-0.076603, 0.979167, 0.188055,
		0.976184, 0.035258, 0.214059,
		35.371956, 40.291603, 31.644482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996479, 40.889805, 31.186695>,  <34.688629, 40.266922, 31.494640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996479, 40.889805, 31.186695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305416, 40.639935, 31.232759>,  <35.490780, 40.490013, 31.260399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305416, 40.639935, 31.232759>,  <34.996479, 40.889805, 31.186695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305416, 40.639935, 31.232759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309787, 0.212152, -0.926835,
		0.554542, 0.751511, 0.357372,
		0.772344, -0.624678, 0.115161,
		35.537121, 40.452530, 31.267307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632862, 41.254051, 31.044260>,  <34.996479, 40.889805, 31.186695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632862, 41.254051, 31.044260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686359, 40.862648, 30.981468>,  <35.718456, 40.627808, 30.943794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686359, 40.862648, 30.981468>,  <35.632862, 41.254051, 31.044260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686359, 40.862648, 30.981468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144562, 0.175970, -0.973723,
		0.980416, 0.107536, 0.164989,
		0.133743, -0.978504, -0.156978,
		35.726482, 40.569096, 30.934376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197956, 41.183594, 30.591591>,  <35.632862, 41.254051, 31.044260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197956, 41.183594, 30.591591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987328, 40.844513, 30.565899>,  <35.860950, 40.641064, 30.550484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987328, 40.844513, 30.565899>,  <36.197956, 41.183594, 30.591591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987328, 40.844513, 30.565899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086373, 0.128509, -0.987940,
		0.845731, -0.514675, -0.140888,
		-0.526573, -0.847700, -0.064230,
		35.829357, 40.590202, 30.546631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533951, 40.837963, 30.050365>,  <36.197956, 41.183594, 30.591591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533951, 40.837963, 30.050365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196949, 40.623692, 30.073112>,  <35.994747, 40.495129, 30.086761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196949, 40.623692, 30.073112>,  <36.533951, 40.837963, 30.050365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196949, 40.623692, 30.073112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044477, -0.036035, -0.998360,
		0.536853, -0.843651, 0.006534,
		-0.842503, -0.535682, 0.056868,
		35.944199, 40.462986, 30.090174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589066, 40.266056, 29.600546>,  <36.533951, 40.837963, 30.050365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589066, 40.266056, 29.600546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196865, 40.308483, 29.666719>,  <35.961544, 40.333939, 29.706425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196865, 40.308483, 29.666719>,  <36.589066, 40.266056, 29.600546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196865, 40.308483, 29.666719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173491, -0.071798, -0.982215,
		-0.092312, -0.991763, 0.088801,
		-0.980499, 0.106076, 0.165434,
		35.902714, 40.340302, 29.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335976, 39.826530, 29.141832>,  <36.589066, 40.266056, 29.600546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335976, 39.826530, 29.141832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010311, 40.047371, 29.213745>,  <35.814911, 40.179874, 29.256893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010311, 40.047371, 29.213745>,  <36.335976, 39.826530, 29.141832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010311, 40.047371, 29.213745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210062, 0.008585, -0.977651,
		-0.541305, -0.833733, 0.108985,
		-0.814164, 0.552101, 0.179783,
		35.766060, 40.213001, 29.267679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774048, 39.393970, 29.054184>,  <36.335976, 39.826530, 29.141832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774048, 39.393970, 29.054184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649944, 39.770477, 29.000885>,  <35.575481, 39.996384, 28.968906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649944, 39.770477, 29.000885>,  <35.774048, 39.393970, 29.054184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649944, 39.770477, 29.000885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262735, -0.219603, -0.939545,
		-0.913625, -0.256491, 0.315437,
		-0.310256, 0.941269, -0.133245,
		35.556866, 40.052856, 28.960911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086609, 39.353027, 28.683783>,  <35.774048, 39.393970, 29.054184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086609, 39.353027, 28.683783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197472, 39.731739, 28.618298>,  <35.263988, 39.958965, 28.579006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197472, 39.731739, 28.618298>,  <35.086609, 39.353027, 28.683783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197472, 39.731739, 28.618298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310968, -0.072830, -0.947626,
		-0.909112, 0.313548, 0.274232,
		0.277154, 0.946775, -0.163714,
		35.280617, 40.015770, 28.569183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475140, 39.802856, 28.452127>,  <35.086609, 39.353027, 28.683783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475140, 39.802856, 28.452127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820354, 39.932682, 28.297297>,  <35.027485, 40.010578, 28.204399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820354, 39.932682, 28.297297>,  <34.475140, 39.802856, 28.452127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820354, 39.932682, 28.297297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412401, 0.010205, -0.910945,
		-0.291706, 0.945810, 0.142656,
		0.863037, 0.324560, -0.387076,
		35.079266, 40.030048, 28.181173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166454, 40.280853, 27.998789>,  <34.475140, 39.802856, 28.452127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166454, 40.280853, 27.998789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553211, 40.212200, 27.923246>,  <34.785263, 40.171009, 27.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553211, 40.212200, 27.923246>,  <34.166454, 40.280853, 27.998789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553211, 40.212200, 27.923246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195256, -0.021053, -0.980526,
		0.164315, 0.984936, -0.053868,
		0.966890, -0.171633, -0.188855,
		34.843277, 40.160709, 27.866590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343231, 40.597546, 27.367506>,  <34.166454, 40.280853, 27.998789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343231, 40.597546, 27.367506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627480, 40.319424, 27.410542>,  <34.798027, 40.152550, 27.436363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627480, 40.319424, 27.410542>,  <34.343231, 40.597546, 27.367506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627480, 40.319424, 27.410542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045703, -0.198210, -0.979094,
		0.702090, 0.690847, -0.172629,
		0.710620, -0.695301, 0.107587,
		34.840664, 40.110832, 27.442818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912445, 40.703388, 26.867714>,  <34.343231, 40.597546, 27.367506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912445, 40.703388, 26.867714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947666, 40.317390, 26.966532>,  <34.968800, 40.085793, 27.025822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947666, 40.317390, 26.966532>,  <34.912445, 40.703388, 26.867714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947666, 40.317390, 26.966532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000383, -0.248039, -0.968750,
		0.996116, 0.085207, -0.022210,
		0.088053, -0.964995, 0.247043,
		34.974083, 40.027893, 27.040646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223278, 40.444149, 26.322445>,  <34.912445, 40.703388, 26.867714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223278, 40.444149, 26.322445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096748, 40.099308, 26.480793>,  <35.020828, 39.892403, 26.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096748, 40.099308, 26.480793>,  <35.223278, 40.444149, 26.322445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096748, 40.099308, 26.480793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044041, -0.430193, -0.901662,
		0.947627, -0.267786, 0.174050,
		-0.316328, -0.862105, 0.395869,
		35.001850, 39.840675, 26.599554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506683, 39.944389, 25.902006>,  <35.223278, 40.444149, 26.322445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506683, 39.944389, 25.902006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207043, 39.765408, 26.097404>,  <35.027256, 39.658016, 26.214643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207043, 39.765408, 26.097404>,  <35.506683, 39.944389, 25.902006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207043, 39.765408, 26.097404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210470, -0.538437, -0.815958,
		0.628130, -0.714050, 0.309169,
		-0.749103, -0.447457, 0.488494,
		34.982311, 39.631172, 26.243952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554634, 39.295235, 25.717264>,  <35.506683, 39.944389, 25.902006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554634, 39.295235, 25.717264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170662, 39.302776, 25.829102>,  <34.940277, 39.307301, 25.896204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170662, 39.302776, 25.829102>,  <35.554634, 39.295235, 25.717264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170662, 39.302776, 25.829102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253444, -0.484089, -0.837511,
		0.119562, -0.874816, 0.469470,
		-0.959933, 0.018850, 0.279595,
		34.882683, 39.308430, 25.912981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302967, 38.542831, 25.762976>,  <35.554634, 39.295235, 25.717264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302967, 38.542831, 25.762976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006916, 38.808224, 25.719162>,  <34.829285, 38.967461, 25.692873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006916, 38.808224, 25.719162>,  <35.302967, 38.542831, 25.762976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006916, 38.808224, 25.719162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379329, -0.546425, -0.746679,
		-0.555260, -0.511091, 0.656104,
		-0.740133, 0.663480, -0.109536,
		34.784878, 39.007267, 25.686300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638802, 38.149639, 25.696676>,  <35.302967, 38.542831, 25.762976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638802, 38.149639, 25.696676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634834, 38.497108, 25.498564>,  <34.632454, 38.705589, 25.379696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634834, 38.497108, 25.498564>,  <34.638802, 38.149639, 25.696676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634834, 38.497108, 25.498564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325952, -0.471062, -0.819669,
		-0.945334, 0.153307, 0.287819,
		-0.009920, 0.868676, -0.495281,
		34.631859, 38.757710, 25.349979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024052, 38.133915, 25.279612>,  <34.638802, 38.149639, 25.696676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024052, 38.133915, 25.279612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220177, 38.441715, 25.115927>,  <34.337852, 38.626396, 25.017715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220177, 38.441715, 25.115927>,  <34.024052, 38.133915, 25.279612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220177, 38.441715, 25.115927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162961, -0.380299, -0.910393,
		-0.856174, 0.513066, -0.061067,
		0.490316, 0.769504, -0.409212,
		34.367271, 38.672565, 24.993162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607643, 38.432037, 24.718136>,  <34.024052, 38.133915, 25.279612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607643, 38.432037, 24.718136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980862, 38.538597, 24.621422>,  <34.204792, 38.602531, 24.563395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980862, 38.538597, 24.621422>,  <33.607643, 38.432037, 24.718136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980862, 38.538597, 24.621422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179904, -0.236505, -0.954830,
		-0.311548, 0.934397, -0.172744,
		0.933045, 0.266398, -0.241784,
		34.260777, 38.618515, 24.548887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580929, 38.667240, 23.989330>,  <33.607643, 38.432037, 24.718136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580929, 38.667240, 23.989330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968338, 38.601196, 24.063852>,  <34.200783, 38.561569, 24.108564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968338, 38.601196, 24.063852>,  <33.580929, 38.667240, 23.989330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968338, 38.601196, 24.063852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141133, -0.252305, -0.957300,
		0.205068, 0.953457, -0.221059,
		0.968519, -0.165113, 0.186304,
		34.258892, 38.551662, 24.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971661, 39.040119, 23.514278>,  <33.580929, 38.667240, 23.989330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971661, 39.040119, 23.514278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196434, 38.729317, 23.627760>,  <34.331299, 38.542835, 23.695848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196434, 38.729317, 23.627760>,  <33.971661, 39.040119, 23.514278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196434, 38.729317, 23.627760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085192, -0.286786, -0.954199,
		0.822784, 0.560365, -0.094959,
		0.561933, -0.777010, 0.283702,
		34.365013, 38.496212, 23.712870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528469, 39.015430, 23.062101>,  <33.971661, 39.040119, 23.514278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528469, 39.015430, 23.062101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562874, 38.660515, 23.243351>,  <34.583515, 38.447567, 23.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562874, 38.660515, 23.243351>,  <34.528469, 39.015430, 23.062101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562874, 38.660515, 23.243351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179703, -0.433532, -0.883038,
		0.979953, 0.157379, 0.122160,
		0.086012, -0.887289, 0.453123,
		34.588676, 38.394329, 23.379288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122028, 38.778870, 22.722868>,  <34.528469, 39.015430, 23.062101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122028, 38.778870, 22.722868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916821, 38.478687, 22.889540>,  <34.793694, 38.298576, 22.989542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916821, 38.478687, 22.889540>,  <35.122028, 38.778870, 22.722868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916821, 38.478687, 22.889540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206971, -0.579253, -0.788435,
		0.833049, -0.318245, 0.452493,
		-0.513023, -0.750457, 0.416679,
		34.762913, 38.253551, 23.014544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580235, 38.164280, 22.600155>,  <35.122028, 38.778870, 22.722868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580235, 38.164280, 22.600155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202194, 38.040131, 22.641037>,  <34.975368, 37.965641, 22.665567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202194, 38.040131, 22.641037>,  <35.580235, 38.164280, 22.600155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202194, 38.040131, 22.641037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100489, -0.573686, -0.812888,
		0.310931, -0.757994, 0.573382,
		-0.945105, -0.310371, 0.102206,
		34.918663, 37.947018, 22.671700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707664, 37.459354, 22.409203>,  <35.580235, 38.164280, 22.600155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707664, 37.459354, 22.409203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315231, 37.530437, 22.378504>,  <35.079769, 37.573090, 22.360085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315231, 37.530437, 22.378504>,  <35.707664, 37.459354, 22.409203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315231, 37.530437, 22.378504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029592, -0.529501, -0.847793,
		-0.191298, -0.829487, 0.524745,
		-0.981086, 0.177710, -0.076746,
		35.020905, 37.583752, 22.355480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426899, 36.805466, 22.289745>,  <35.707664, 37.459354, 22.409203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426899, 36.805466, 22.289745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154198, 37.064098, 22.152842>,  <34.990578, 37.219280, 22.070700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154198, 37.064098, 22.152842>,  <35.426899, 36.805466, 22.289745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154198, 37.064098, 22.152842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204874, -0.617853, -0.759134,
		-0.702313, -0.447419, 0.553690,
		-0.681750, 0.646586, -0.342262,
		34.949673, 37.258076, 22.050163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216015, 36.070423, 22.065763>,  <35.426899, 36.805466, 22.289745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216015, 36.070423, 22.065763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006325, 35.749725, 21.950941>,  <34.880512, 35.557308, 21.882048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006325, 35.749725, 21.950941>,  <35.216015, 36.070423, 22.065763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006325, 35.749725, 21.950941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249510, -0.466898, 0.848381,
		-0.814207, 0.373119, 0.444802,
		-0.524224, -0.801741, -0.287055,
		34.849056, 35.509205, 21.864824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534065, 35.928043, 22.364698>,  <35.216015, 36.070423, 22.065763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534065, 35.928043, 22.364698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734310, 35.588474, 22.296917>,  <34.854458, 35.384731, 22.256248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734310, 35.588474, 22.296917>,  <34.534065, 35.928043, 22.364698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734310, 35.588474, 22.296917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210804, -0.070309, 0.974997,
		-0.839614, -0.523814, 0.143759,
		0.500609, -0.848926, -0.169455,
		34.884495, 35.333797, 22.246080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224651, 35.410950, 22.718027>,  <34.534065, 35.928043, 22.364698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224651, 35.410950, 22.718027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604557, 35.294289, 22.672611>,  <34.832500, 35.224293, 22.645361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604557, 35.294289, 22.672611>,  <34.224651, 35.410950, 22.718027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604557, 35.294289, 22.672611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152080, 0.113001, 0.981887,
		-0.273541, -0.949826, 0.151678,
		0.949761, -0.291654, -0.113540,
		34.889484, 35.206791, 22.638550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296711, 34.959137, 23.206379>,  <34.224651, 35.410950, 22.718027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296711, 34.959137, 23.206379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664700, 35.078426, 23.104631>,  <34.885494, 35.150002, 23.043583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664700, 35.078426, 23.104631>,  <34.296711, 34.959137, 23.206379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664700, 35.078426, 23.104631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242970, 0.075366, 0.967102,
		0.307589, -0.951514, -0.003126,
		0.919976, 0.298229, -0.254371,
		34.940693, 35.167896, 23.028320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689053, 34.549770, 23.535349>,  <34.296711, 34.959137, 23.206379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689053, 34.549770, 23.535349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936928, 34.854820, 23.461180>,  <35.085655, 35.037849, 23.416677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936928, 34.854820, 23.461180>,  <34.689053, 34.549770, 23.535349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936928, 34.854820, 23.461180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260731, 0.022799, 0.965142,
		0.740271, -0.646437, -0.184712,
		0.619692, 0.762627, -0.185424,
		35.122837, 35.083607, 23.405552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366520, 34.399063, 23.937508>,  <34.689053, 34.549770, 23.535349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366520, 34.399063, 23.937508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389095, 34.793133, 23.872704>,  <35.402641, 35.029575, 23.833820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389095, 34.793133, 23.872704>,  <35.366520, 34.399063, 23.937508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389095, 34.793133, 23.872704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343397, 0.133217, 0.929694,
		0.937493, -0.108101, -0.330788,
		0.056434, 0.985174, -0.162012,
		35.406025, 35.088684, 23.824100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014225, 34.561043, 24.167799>,  <35.366520, 34.399063, 23.937508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014225, 34.561043, 24.167799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811749, 34.905266, 24.145126>,  <35.690262, 35.111797, 24.131523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811749, 34.905266, 24.145126>,  <36.014225, 34.561043, 24.167799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811749, 34.905266, 24.145126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399454, 0.292199, 0.868940,
		0.764334, 0.417209, -0.491661,
		-0.506193, 0.860556, -0.056682,
		35.659889, 35.163433, 24.128122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531071, 35.081348, 24.316284>,  <36.014225, 34.561043, 24.167799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531071, 35.081348, 24.316284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176052, 35.257416, 24.370716>,  <35.963043, 35.363056, 24.403376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176052, 35.257416, 24.370716>,  <36.531071, 35.081348, 24.316284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176052, 35.257416, 24.370716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353209, 0.460421, 0.814405,
		0.295821, 0.770885, -0.564116,
		-0.887544, 0.440168, 0.136082,
		35.909790, 35.389465, 24.411541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663074, 35.712212, 24.275034>,  <36.531071, 35.081348, 24.316284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663074, 35.712212, 24.275034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325779, 35.686451, 24.488501>,  <36.123402, 35.670994, 24.616581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325779, 35.686451, 24.488501>,  <36.663074, 35.712212, 24.275034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325779, 35.686451, 24.488501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427902, 0.520469, 0.738927,
		-0.325346, 0.851449, -0.411321,
		-0.843238, -0.064402, 0.533669,
		36.072807, 35.667130, 24.648602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661648, 36.288517, 24.692858>,  <36.663074, 35.712212, 24.275034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661648, 36.288517, 24.692858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367184, 36.070675, 24.853590>,  <36.190506, 35.939968, 24.950029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367184, 36.070675, 24.853590>,  <36.661648, 36.288517, 24.692858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367184, 36.070675, 24.853590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222334, 0.366171, 0.903596,
		-0.639242, 0.754535, -0.148477,
		-0.736164, -0.544605, 0.401831,
		36.146336, 35.907291, 24.974138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323891, 36.782169, 24.988403>,  <36.661648, 36.288517, 24.692858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323891, 36.782169, 24.988403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206017, 36.435284, 25.148956>,  <36.135292, 36.227154, 25.245287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206017, 36.435284, 25.148956>,  <36.323891, 36.782169, 24.988403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206017, 36.435284, 25.148956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136737, 0.377444, 0.915881,
		-0.945761, 0.324778, 0.007354,
		-0.294683, -0.867211, 0.401381,
		36.117611, 36.175121, 25.269371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894867, 36.962513, 25.519991>,  <36.323891, 36.782169, 24.988403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894867, 36.962513, 25.519991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008602, 36.596626, 25.634848>,  <36.076843, 36.377094, 25.703762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008602, 36.596626, 25.634848>,  <35.894867, 36.962513, 25.519991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008602, 36.596626, 25.634848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044168, 0.311682, 0.949159,
		-0.957706, -0.257200, 0.129025,
		0.284338, -0.914714, 0.287139,
		36.093903, 36.322212, 25.720989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553734, 36.848183, 26.207954>,  <35.894867, 36.962513, 25.519991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553734, 36.848183, 26.207954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841972, 36.571754, 26.185492>,  <36.014915, 36.405895, 26.172014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841972, 36.571754, 26.185492>,  <35.553734, 36.848183, 26.207954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841972, 36.571754, 26.185492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157892, 0.084692, 0.983818,
		-0.675135, -0.717805, 0.170144,
		0.720599, -0.691074, -0.056157,
		36.058151, 36.364433, 26.168644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598808, 36.412506, 26.750120>,  <35.553734, 36.848183, 26.207954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598808, 36.412506, 26.750120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972752, 36.376518, 26.612753>,  <36.197117, 36.354923, 26.530333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972752, 36.376518, 26.612753>,  <35.598808, 36.412506, 26.750120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972752, 36.376518, 26.612753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354351, 0.177512, 0.918110,
		-0.021645, -0.979997, 0.197832,
		0.934862, -0.089974, -0.343420,
		36.253212, 36.349525, 26.509727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949303, 35.949688, 27.227053>,  <35.598808, 36.412506, 26.750120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949303, 35.949688, 27.227053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231213, 36.178200, 27.058798>,  <36.400356, 36.315308, 26.957846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231213, 36.178200, 27.058798>,  <35.949303, 35.949688, 27.227053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231213, 36.178200, 27.058798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309534, 0.285888, 0.906894,
		0.638346, -0.769355, 0.024655,
		0.704772, 0.571281, -0.420637,
		36.442646, 36.349583, 26.932608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484955, 35.834888, 27.655203>,  <35.949303, 35.949688, 27.227053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484955, 35.834888, 27.655203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607056, 36.158596, 27.454441>,  <36.680317, 36.352821, 27.333984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607056, 36.158596, 27.454441>,  <36.484955, 35.834888, 27.655203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607056, 36.158596, 27.454441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543441, 0.284768, 0.789670,
		0.781980, -0.513803, -0.352863,
		0.305251, 0.809267, -0.501905,
		36.698631, 36.401375, 27.303869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217594, 35.940739, 27.876427>,  <36.484955, 35.834888, 27.655203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217594, 35.940739, 27.876427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085114, 36.282616, 27.716524>,  <37.005627, 36.487743, 27.620583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085114, 36.282616, 27.716524>,  <37.217594, 35.940739, 27.876427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085114, 36.282616, 27.716524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345927, 0.504159, 0.791302,
		0.877862, 0.123793, -0.462639,
		-0.331201, 0.854693, -0.399758,
		36.985752, 36.539024, 27.596596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763779, 36.447521, 28.068062>,  <37.217594, 35.940739, 27.876427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763779, 36.447521, 28.068062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441856, 36.667007, 27.977554>,  <37.248703, 36.798698, 27.923250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441856, 36.667007, 27.977554>,  <37.763779, 36.447521, 28.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441856, 36.667007, 27.977554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069821, 0.466098, 0.881974,
		0.589414, 0.694021, -0.413432,
		-0.804808, 0.548714, -0.226268,
		37.200413, 36.831623, 27.909674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921902, 37.123444, 28.295458>,  <37.763779, 36.447521, 28.068062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921902, 37.123444, 28.295458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522045, 37.129917, 28.286913>,  <37.282131, 37.133801, 28.281786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522045, 37.129917, 28.286913>,  <37.921902, 37.123444, 28.295458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522045, 37.129917, 28.286913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012825, 0.410904, 0.911589,
		0.023534, 0.911535, -0.410548,
		-0.999641, 0.016188, -0.021361,
		37.222153, 37.134773, 28.280504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738098, 37.825985, 28.501331>,  <37.921902, 37.123444, 28.295458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738098, 37.825985, 28.501331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404533, 37.611576, 28.553892>,  <37.204395, 37.482929, 28.585428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404533, 37.611576, 28.553892>,  <37.738098, 37.825985, 28.501331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404533, 37.611576, 28.553892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093752, 0.372219, 0.923398,
		-0.543877, 0.757713, -0.360651,
		-0.833912, -0.536027, 0.131404,
		37.154362, 37.450768, 28.593313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225636, 38.282875, 28.671339>,  <37.738098, 37.825985, 28.501331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225636, 38.282875, 28.671339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092743, 37.931320, 28.808270>,  <37.013008, 37.720387, 28.890427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092743, 37.931320, 28.808270>,  <37.225636, 38.282875, 28.671339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092743, 37.931320, 28.808270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151787, 0.408029, 0.900263,
		-0.930904, 0.247136, -0.268964,
		-0.332232, -0.878883, 0.342324,
		36.993073, 37.667656, 28.910967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637547, 38.396893, 29.002571>,  <37.225636, 38.282875, 28.671339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637547, 38.396893, 29.002571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785015, 38.054649, 29.147907>,  <36.873497, 37.849304, 29.235109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785015, 38.054649, 29.147907>,  <36.637547, 38.396893, 29.002571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785015, 38.054649, 29.147907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218068, 0.300356, 0.928565,
		-0.903618, -0.421572, -0.075846,
		0.368676, -0.855607, 0.363338,
		36.895618, 37.797966, 29.256908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213367, 38.386124, 29.629766>,  <36.637547, 38.396893, 29.002571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213367, 38.386124, 29.629766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497467, 38.110897, 29.689247>,  <36.667927, 37.945763, 29.724936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497467, 38.110897, 29.689247>,  <36.213367, 38.386124, 29.629766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497467, 38.110897, 29.689247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030202, 0.240831, 0.970097,
		-0.703303, -0.684519, 0.191830,
		0.710248, -0.688066, 0.148703,
		36.710541, 37.904476, 29.733858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920498, 38.017254, 30.108412>,  <36.213367, 38.386124, 29.629766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920498, 38.017254, 30.108412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316715, 37.978436, 30.147188>,  <36.554447, 37.955143, 30.170454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316715, 37.978436, 30.147188>,  <35.920498, 38.017254, 30.108412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316715, 37.978436, 30.147188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074943, 0.209037, 0.975032,
		-0.114892, -0.973080, 0.199788,
		0.990547, -0.097051, 0.096942,
		36.613880, 37.949322, 30.176271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049812, 37.648632, 30.643341>,  <35.920498, 38.017254, 30.108412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049812, 37.648632, 30.643341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397556, 37.841545, 30.600241>,  <36.606201, 37.957294, 30.574381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397556, 37.841545, 30.600241>,  <36.049812, 37.648632, 30.643341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397556, 37.841545, 30.600241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068880, 0.097658, 0.992834,
		0.489354, -0.870553, 0.051680,
		0.869361, 0.482287, -0.107753,
		36.658363, 37.986233, 30.567915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479820, 37.350151, 31.182102>,  <36.049812, 37.648632, 30.643341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479820, 37.350151, 31.182102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659161, 37.691986, 31.077290>,  <36.766766, 37.897087, 31.014402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659161, 37.691986, 31.077290>,  <36.479820, 37.350151, 31.182102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659161, 37.691986, 31.077290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171315, 0.205558, 0.963534,
		0.877288, -0.476889, -0.054242,
		0.448349, 0.854590, -0.262032,
		36.793667, 37.948364, 30.998680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020199, 37.371632, 31.576004>,  <36.479820, 37.350151, 31.182102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020199, 37.371632, 31.576004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985367, 37.753841, 31.463301>,  <36.964466, 37.983170, 31.395679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985367, 37.753841, 31.463301>,  <37.020199, 37.371632, 31.576004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985367, 37.753841, 31.463301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311336, 0.294768, 0.903428,
		0.946301, -0.009047, -0.323159,
		-0.087083, 0.955526, -0.281756,
		36.959240, 38.040501, 31.378775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587948, 37.597408, 31.741613>,  <37.020199, 37.371632, 31.576004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587948, 37.597408, 31.741613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357864, 37.923954, 31.720892>,  <37.219814, 38.119881, 31.708460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357864, 37.923954, 31.720892>,  <37.587948, 37.597408, 31.741613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357864, 37.923954, 31.720892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317296, 0.281041, 0.905726,
		0.753960, 0.504547, -0.420686,
		-0.575211, 0.816363, -0.051803,
		37.185303, 38.168861, 31.705351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094700, 38.183361, 31.821146>,  <37.587948, 37.597408, 31.741613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094700, 38.183361, 31.821146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719112, 38.277374, 31.921618>,  <37.493759, 38.333782, 31.981901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719112, 38.277374, 31.921618>,  <38.094700, 38.183361, 31.821146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719112, 38.277374, 31.921618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313443, 0.283752, 0.906222,
		0.141720, 0.929648, -0.340104,
		-0.938972, 0.235033, 0.251178,
		37.437420, 38.347885, 31.996971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103077, 38.702103, 32.305538>,  <38.094700, 38.183361, 31.821146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103077, 38.702103, 32.305538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721447, 38.599480, 32.367405>,  <37.492470, 38.537907, 32.404526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721447, 38.599480, 32.367405>,  <38.103077, 38.702103, 32.305538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721447, 38.599480, 32.367405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125454, 0.126657, 0.983981,
		-0.272034, 0.958195, -0.088654,
		-0.954075, -0.256555, 0.154665,
		37.435226, 38.522514, 32.413803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832008, 39.177273, 32.788361>,  <38.103077, 38.702103, 32.305538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832008, 39.177273, 32.788361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604424, 38.848804, 32.806080>,  <37.467873, 38.651726, 32.816711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604424, 38.848804, 32.806080>,  <37.832008, 39.177273, 32.788361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604424, 38.848804, 32.806080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186672, -0.076499, 0.979439,
		-0.800894, 0.565537, 0.196815,
		-0.568965, -0.821167, 0.044303,
		37.433735, 38.602455, 32.819370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516113, 39.188374, 33.442226>,  <37.832008, 39.177273, 32.788361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516113, 39.188374, 33.442226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461010, 38.809830, 33.325314>,  <37.427948, 38.582703, 33.255165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461010, 38.809830, 33.325314>,  <37.516113, 39.188374, 33.442226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461010, 38.809830, 33.325314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134644, -0.310253, 0.941071,
		-0.981272, 0.090284, 0.170160,
		-0.137756, -0.946357, -0.292286,
		37.419682, 38.525921, 33.237629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002705, 38.846779, 33.934544>,  <37.516113, 39.188374, 33.442226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002705, 38.846779, 33.934544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231663, 38.568935, 33.760239>,  <37.369038, 38.402229, 33.655655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231663, 38.568935, 33.760239>,  <37.002705, 38.846779, 33.934544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231663, 38.568935, 33.760239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259771, -0.350450, 0.899835,
		-0.777745, -0.628256, -0.020155,
		0.572390, -0.694607, -0.435764,
		37.403381, 38.360554, 33.629509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958298, 38.243282, 34.353992>,  <37.002705, 38.846779, 33.934544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958298, 38.243282, 34.353992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303150, 38.200085, 34.155975>,  <37.510059, 38.174164, 34.037163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303150, 38.200085, 34.155975>,  <36.958298, 38.243282, 34.353992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303150, 38.200085, 34.155975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456674, -0.257639, 0.851511,
		-0.219506, -0.960186, -0.172797,
		0.862129, -0.108000, -0.495046,
		37.561790, 38.167686, 34.007462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088516, 37.671207, 34.514214>,  <36.958298, 38.243282, 34.353992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088516, 37.671207, 34.514214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446541, 37.802097, 34.393032>,  <37.661358, 37.880630, 34.320324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446541, 37.802097, 34.393032>,  <37.088516, 37.671207, 34.514214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446541, 37.802097, 34.393032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426100, -0.427200, 0.797458,
		0.131528, -0.842866, -0.521803,
		0.895064, 0.327228, -0.302957,
		37.715061, 37.900265, 34.302143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398972, 37.171219, 34.782658>,  <37.088516, 37.671207, 34.514214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398972, 37.171219, 34.782658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702503, 37.398743, 34.655769>,  <37.884621, 37.535259, 34.579636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702503, 37.398743, 34.655769>,  <37.398972, 37.171219, 34.782658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702503, 37.398743, 34.655769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612328, -0.457144, 0.645038,
		0.221890, -0.683718, -0.695195,
		0.758828, 0.568814, -0.317223,
		37.930153, 37.569386, 34.560604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898056, 36.731346, 34.485241>,  <37.398972, 37.171219, 34.782658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898056, 36.731346, 34.485241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066650, 37.068977, 34.617836>,  <38.167805, 37.271557, 34.697392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066650, 37.068977, 34.617836>,  <37.898056, 36.731346, 34.485241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066650, 37.068977, 34.617836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618625, -0.534905, 0.575482,
		0.663065, -0.037491, -0.747622,
		0.421483, 0.844080, 0.331484,
		38.193096, 37.322201, 34.717281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649220, 36.679512, 34.355373>,  <37.898056, 36.731346, 34.485241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649220, 36.679512, 34.355373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617336, 36.947449, 34.650658>,  <38.598206, 37.108212, 34.827827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617336, 36.947449, 34.650658>,  <38.649220, 36.679512, 34.355373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617336, 36.947449, 34.650658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663683, -0.516893, 0.540690,
		0.743755, 0.533036, -0.403363,
		-0.079711, 0.669846, 0.738209,
		38.593422, 37.148403, 34.872120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299198, 36.798241, 34.635914>,  <38.649220, 36.679512, 34.355373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299198, 36.798241, 34.635914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061050, 36.954433, 34.916786>,  <38.918163, 37.048149, 35.085312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061050, 36.954433, 34.916786>,  <39.299198, 36.798241, 34.635914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061050, 36.954433, 34.916786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602605, -0.361032, 0.711704,
		0.531415, 0.846867, -0.020357,
		-0.595369, 0.390477, 0.702184,
		38.882439, 37.071575, 35.127441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682858, 37.181923, 35.183876>,  <39.299198, 36.798241, 34.635914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682858, 37.181923, 35.183876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338844, 37.087326, 35.364727>,  <39.132435, 37.030567, 35.473236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338844, 37.087326, 35.364727>,  <39.682858, 37.181923, 35.183876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338844, 37.087326, 35.364727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510060, -0.421920, 0.749548,
		0.013498, 0.875246, 0.483490,
		-0.860033, -0.236492, 0.452123,
		39.080833, 37.016380, 35.500362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549068, 37.450821, 35.893444>,  <39.682858, 37.181923, 35.183876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549068, 37.450821, 35.893444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358326, 37.101086, 35.857361>,  <39.243881, 36.891243, 35.835712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358326, 37.101086, 35.857361>,  <39.549068, 37.450821, 35.893444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358326, 37.101086, 35.857361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615588, -0.405453, 0.675765,
		-0.627422, 0.266715, 0.731577,
		-0.476857, -0.874340, -0.090204,
		39.215267, 36.838783, 35.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330612, 37.150322, 36.536251>,  <39.549068, 37.450821, 35.893444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330612, 37.150322, 36.536251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395550, 36.835136, 36.298679>,  <39.434513, 36.646023, 36.156136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395550, 36.835136, 36.298679>,  <39.330612, 37.150322, 36.536251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395550, 36.835136, 36.298679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409987, -0.493635, 0.766965,
		-0.897528, -0.368013, 0.242920,
		0.162339, -0.787966, -0.593932,
		39.444252, 36.598747, 36.120499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108295, 36.583084, 36.930382>,  <39.330612, 37.150322, 36.536251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108295, 36.583084, 36.930382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361633, 36.441750, 36.654984>,  <39.513634, 36.356949, 36.489742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361633, 36.441750, 36.654984>,  <39.108295, 36.583084, 36.930382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361633, 36.441750, 36.654984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587819, -0.359005, 0.724972,
		-0.503335, -0.863867, -0.019672,
		0.633342, -0.353340, -0.688498,
		39.551636, 36.335747, 36.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466038, 36.014481, 37.208515>,  <39.108295, 36.583084, 36.930382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466038, 36.014481, 37.208515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708912, 36.097553, 36.901741>,  <39.854637, 36.147396, 36.717674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708912, 36.097553, 36.901741>,  <39.466038, 36.014481, 37.208515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708912, 36.097553, 36.901741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789670, -0.264668, 0.553508,
		-0.088029, -0.941710, -0.324705,
		0.607183, 0.207685, -0.766939,
		39.891068, 36.159859, 36.671658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824673, 35.471470, 36.978542>,  <39.466038, 36.014481, 37.208515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824673, 35.471470, 36.978542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049572, 35.791306, 36.894135>,  <40.184513, 35.983208, 36.843491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049572, 35.791306, 36.894135>,  <39.824673, 35.471470, 36.978542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049572, 35.791306, 36.894135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749440, -0.384794, 0.538770,
		0.349597, -0.461070, -0.815596,
		0.562247, 0.799592, -0.211021,
		40.218246, 36.031185, 36.830830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472553, 35.234062, 36.957794>,  <39.824673, 35.471470, 36.978542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472553, 35.234062, 36.957794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569981, 35.620926, 36.928730>,  <40.628437, 35.853043, 36.911293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569981, 35.620926, 36.928730>,  <40.472553, 35.234062, 36.957794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569981, 35.620926, 36.928730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811548, -0.162210, 0.561319,
		0.531099, -0.195683, -0.824404,
		0.243568, 0.967159, -0.072657,
		40.643051, 35.911072, 36.906933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140099, 35.288124, 36.848091>,  <40.472553, 35.234062, 36.957794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140099, 35.288124, 36.848091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069324, 35.643940, 37.016575>,  <41.026859, 35.857430, 37.117664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069324, 35.643940, 37.016575>,  <41.140099, 35.288124, 36.848091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069324, 35.643940, 37.016575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847542, -0.079866, 0.524684,
		0.500368, 0.449823, -0.739791,
		-0.176931, 0.889540, 0.421207,
		41.016247, 35.910801, 37.142937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750340, 35.633011, 36.785439>,  <41.140099, 35.288124, 36.848091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750340, 35.633011, 36.785439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573444, 35.810139, 37.097424>,  <41.467308, 35.916416, 37.284615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573444, 35.810139, 37.097424>,  <41.750340, 35.633011, 36.785439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573444, 35.810139, 37.097424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802306, -0.193408, 0.564710,
		0.400916, 0.875502, -0.269745,
		-0.442234, 0.442819, 0.779961,
		41.440773, 35.942986, 37.331413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319679, 35.842964, 37.102486>,  <41.750340, 35.633011, 36.785439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319679, 35.842964, 37.102486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038704, 35.897182, 37.381973>,  <41.870117, 35.929714, 37.549664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038704, 35.897182, 37.381973>,  <42.319679, 35.842964, 37.102486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038704, 35.897182, 37.381973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627775, -0.344585, 0.697968,
		0.335373, 0.928918, 0.156959,
		-0.702441, 0.135545, 0.698716,
		41.827972, 35.937847, 37.591587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635235, 36.218418, 37.580544>,  <42.319679, 35.842964, 37.102486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635235, 36.218418, 37.580544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344303, 36.000477, 37.747463>,  <42.169746, 35.869713, 37.847614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344303, 36.000477, 37.747463>,  <42.635235, 36.218418, 37.580544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344303, 36.000477, 37.747463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583920, -0.171800, 0.793424,
		-0.360605, 0.820746, 0.443102,
		-0.727325, -0.544849, 0.417298,
		42.126106, 35.837021, 37.872654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676262, 36.422081, 38.358337>,  <42.635235, 36.218418, 37.580544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676262, 36.422081, 38.358337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466545, 36.081619, 38.348186>,  <42.340714, 35.877342, 38.342094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466545, 36.081619, 38.348186>,  <42.676262, 36.422081, 38.358337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466545, 36.081619, 38.348186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453855, -0.304534, 0.837421,
		-0.720508, 0.427537, 0.545968,
		-0.524294, -0.851159, -0.025379,
		42.309258, 35.826271, 38.340572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548855, 36.226555, 39.062107>,  <42.676262, 36.422081, 38.358337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548855, 36.226555, 39.062107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485310, 35.887154, 38.860195>,  <42.447182, 35.683514, 38.739048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485310, 35.887154, 38.860195>,  <42.548855, 36.226555, 39.062107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485310, 35.887154, 38.860195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323831, -0.527770, 0.785233,
		-0.932681, -0.038717, 0.358617,
		-0.158865, -0.848504, -0.504779,
		42.437649, 35.632603, 38.708763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199787, 35.920731, 39.566170>,  <42.548855, 36.226555, 39.062107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199787, 35.920731, 39.566170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287670, 35.641335, 39.293747>,  <42.340401, 35.473698, 39.130295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287670, 35.641335, 39.293747>,  <42.199787, 35.920731, 39.566170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287670, 35.641335, 39.293747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353631, -0.593612, 0.722890,
		-0.909217, -0.399663, 0.116591,
		0.219703, -0.698494, -0.681056,
		42.353580, 35.431786, 39.089432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181953, 35.408192, 39.883816>,  <42.199787, 35.920731, 39.566170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181953, 35.408192, 39.883816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360535, 35.224449, 39.576656>,  <42.467686, 35.114204, 39.392361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360535, 35.224449, 39.576656>,  <42.181953, 35.408192, 39.883816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360535, 35.224449, 39.576656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262765, -0.753033, 0.603238,
		-0.855355, -0.471095, -0.215491,
		0.446454, -0.459359, -0.767898,
		42.494473, 35.086643, 39.346287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126335, 34.596504, 39.778271>,  <42.181953, 35.408192, 39.883816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126335, 34.596504, 39.778271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474724, 34.709614, 39.617550>,  <42.683758, 34.777481, 39.521118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474724, 34.709614, 39.617550>,  <42.126335, 34.596504, 39.778271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474724, 34.709614, 39.617550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490039, -0.559283, 0.668629,
		-0.035651, -0.779256, -0.625691,
		0.870971, 0.282776, -0.401804,
		42.736015, 34.794445, 39.497009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438217, 34.004478, 39.742096>,  <42.126335, 34.596504, 39.778271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438217, 34.004478, 39.742096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706196, 34.301315, 39.750725>,  <42.866985, 34.479416, 39.755901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706196, 34.301315, 39.750725>,  <42.438217, 34.004478, 39.742096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706196, 34.301315, 39.750725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508729, -0.480049, 0.714666,
		0.540705, -0.467814, -0.699133,
		0.669949, 0.742093, 0.021574,
		42.907181, 34.523945, 39.757198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952183, 33.667877, 39.856987>,  <42.438217, 34.004478, 39.742096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952183, 33.667877, 39.856987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081280, 34.037987, 39.936684>,  <43.158737, 34.260052, 39.984501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081280, 34.037987, 39.936684>,  <42.952183, 33.667877, 39.856987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081280, 34.037987, 39.936684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617539, -0.365387, 0.696518,
		0.717274, -0.101756, -0.689322,
		0.322744, 0.925277, 0.199244,
		43.178104, 34.315571, 39.996456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708687, 33.808281, 39.799019>,  <42.952183, 33.667877, 39.856987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708687, 33.808281, 39.799019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603443, 34.097858, 40.054104>,  <43.540298, 34.271606, 40.207153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603443, 34.097858, 40.054104>,  <43.708687, 33.808281, 39.799019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603443, 34.097858, 40.054104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709426, -0.302783, 0.636425,
		0.653826, 0.619857, -0.433922,
		-0.263108, 0.723947, 0.637711,
		43.524509, 34.315044, 40.245419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288662, 34.105011, 40.052940>,  <43.708687, 33.808281, 39.799019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288662, 34.105011, 40.052940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048130, 34.238708, 40.343231>,  <43.903809, 34.318928, 40.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048130, 34.238708, 40.343231>,  <44.288662, 34.105011, 40.052940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048130, 34.238708, 40.343231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666299, -0.291498, 0.686349,
		0.440958, 0.896274, -0.047422,
		-0.601333, 0.334248, 0.725725,
		43.867729, 34.338982, 40.560947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727604, 34.483345, 40.492310>,  <44.288662, 34.105011, 40.052940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727604, 34.483345, 40.492310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412704, 34.361362, 40.706688>,  <44.223763, 34.288174, 40.835316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412704, 34.361362, 40.706688>,  <44.727604, 34.483345, 40.492310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412704, 34.361362, 40.706688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614193, -0.465035, 0.637581,
		0.054801, 0.831111, 0.553400,
		-0.787251, -0.304955, 0.535947,
		44.176529, 34.269875, 40.867474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656971, 34.851967, 41.152119>,  <44.727604, 34.483345, 40.492310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656971, 34.851967, 41.152119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511276, 34.482079, 41.196350>,  <44.423859, 34.260147, 41.222889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511276, 34.482079, 41.196350>,  <44.656971, 34.851967, 41.152119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511276, 34.482079, 41.196350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606347, -0.145348, 0.781803,
		-0.706875, 0.351811, 0.613642,
		-0.364239, -0.924718, 0.110577,
		44.402004, 34.204662, 41.229523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592861, 34.700169, 41.874233>,  <44.656971, 34.851967, 41.152119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592861, 34.700169, 41.874233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649498, 34.351234, 41.687050>,  <44.683479, 34.141872, 41.574741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649498, 34.351234, 41.687050>,  <44.592861, 34.700169, 41.874233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649498, 34.351234, 41.687050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692168, -0.250713, 0.676791,
		-0.707712, -0.419729, 0.568305,
		0.141588, -0.872336, -0.467956,
		44.691975, 34.089535, 41.546661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497868, 34.157257, 42.331966>,  <44.592861, 34.700169, 41.874233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497868, 34.157257, 42.331966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758389, 34.074963, 42.039806>,  <44.914700, 34.025585, 41.864510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758389, 34.074963, 42.039806>,  <44.497868, 34.157257, 42.331966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758389, 34.074963, 42.039806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751446, 0.041023, 0.658518,
		-0.105518, -0.977747, 0.181317,
		0.651302, -0.205736, -0.730395,
		44.953781, 34.013241, 41.820686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986526, 33.481537, 42.373280>,  <44.497868, 34.157257, 42.331966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986526, 33.481537, 42.373280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615364, 33.338943, 42.329617>,  <44.392666, 33.253387, 42.303417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615364, 33.338943, 42.329617>,  <44.986526, 33.481537, 42.373280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615364, 33.338943, 42.329617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196004, 0.715521, -0.670531,
		0.317136, -0.600793, -0.733807,
		-0.927904, -0.356479, -0.109160,
		44.336994, 33.231998, 42.296867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843006, 33.267094, 41.635994>,  <44.986526, 33.481537, 42.373280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.843006, 33.267094, 41.635994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526127, 33.377148, 41.853886>,  <44.335999, 33.443180, 41.984619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526127, 33.377148, 41.853886>,  <44.843006, 33.267094, 41.635994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526127, 33.377148, 41.853886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191918, 0.734996, -0.650345,
		-0.579306, -0.619742, -0.529456,
		-0.792194, 0.275137, 0.544728,
		44.288467, 33.459690, 42.017303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136871, 33.241100, 41.207924>,  <44.843006, 33.267094, 41.635994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136871, 33.241100, 41.207924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125694, 33.510750, 41.503159>,  <44.118988, 33.672539, 41.680302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125694, 33.510750, 41.503159>,  <44.136871, 33.241100, 41.207924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125694, 33.510750, 41.503159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266880, 0.706544, -0.655417,
		-0.963324, -0.215296, 0.160167,
		-0.027944, 0.674125, 0.738089,
		44.117310, 33.712986, 41.724586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514709, 33.409542, 41.517227>,  <44.136871, 33.241100, 41.207924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514709, 33.409542, 41.517227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776405, 33.710583, 41.487381>,  <43.933422, 33.891205, 41.469471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776405, 33.710583, 41.487381>,  <43.514709, 33.409542, 41.517227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776405, 33.710583, 41.487381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623564, 0.480962, -0.616314,
		-0.427948, 0.449747, 0.783957,
		0.654239, 0.752598, -0.074619,
		43.972675, 33.936363, 41.464996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196423, 34.059486, 41.728931>,  <43.514709, 33.409542, 41.517227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196423, 34.059486, 41.728931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485703, 34.112537, 41.457817>,  <43.659271, 34.144367, 41.295147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485703, 34.112537, 41.457817>,  <43.196423, 34.059486, 41.728931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485703, 34.112537, 41.457817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655231, 0.441969, -0.612647,
		0.218306, 0.887172, 0.406534,
		0.723198, 0.132629, -0.677786,
		43.702663, 34.152325, 41.254482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128189, 34.770927, 41.505394>,  <43.196423, 34.059486, 41.728931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128189, 34.770927, 41.505394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351105, 34.619011, 41.210049>,  <43.484856, 34.527863, 41.032841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351105, 34.619011, 41.210049>,  <43.128189, 34.770927, 41.505394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351105, 34.619011, 41.210049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438918, 0.620107, -0.650245,
		0.704822, 0.686459, 0.178884,
		0.557294, -0.379792, -0.738364,
		43.518291, 34.505074, 40.988541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170715, 35.213356, 41.074909>,  <43.128189, 34.770927, 41.505394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170715, 35.213356, 41.074909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293224, 34.941921, 40.807861>,  <43.366730, 34.779060, 40.647633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293224, 34.941921, 40.807861>,  <43.170715, 35.213356, 41.074909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293224, 34.941921, 40.807861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371050, 0.560754, -0.740187,
		0.876653, 0.474418, -0.080048,
		0.306271, -0.678589, -0.667619,
		43.385105, 34.738346, 40.607574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320206, 35.623741, 40.470020>,  <43.170715, 35.213356, 41.074909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320206, 35.623741, 40.470020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298813, 35.257427, 40.310783>,  <43.285976, 35.037640, 40.215240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298813, 35.257427, 40.310783>,  <43.320206, 35.623741, 40.470020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298813, 35.257427, 40.310783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317266, 0.393593, -0.862802,
		0.946828, 0.080162, -0.311595,
		-0.053477, -0.915783, -0.398097,
		43.282768, 34.982693, 40.191353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559128, 35.660336, 39.760391>,  <43.320206, 35.623741, 40.470020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559128, 35.660336, 39.760391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364040, 35.311459, 39.775414>,  <43.246986, 35.102131, 39.784428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364040, 35.311459, 39.775414>,  <43.559128, 35.660336, 39.760391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364040, 35.311459, 39.775414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395508, 0.182408, -0.900167,
		0.778269, -0.453882, -0.433923,
		-0.487721, -0.872192, 0.037551,
		43.217724, 35.049801, 39.786678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749493, 35.438618, 39.075550>,  <43.559128, 35.660336, 39.760391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749493, 35.438618, 39.075550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427460, 35.256714, 39.227886>,  <43.234241, 35.147572, 39.319286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427460, 35.256714, 39.227886>,  <43.749493, 35.438618, 39.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427460, 35.256714, 39.227886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399568, -0.058747, -0.914819,
		0.438399, -0.888673, -0.134413,
		-0.805079, -0.454762, 0.380840,
		43.185936, 35.120285, 39.342136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636192, 34.993439, 38.609818>,  <43.749493, 35.438618, 39.075550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636192, 34.993439, 38.609818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295403, 35.016254, 38.818005>,  <43.090927, 35.029945, 38.942917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295403, 35.016254, 38.818005>,  <43.636192, 34.993439, 38.609818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295403, 35.016254, 38.818005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519506, 0.031725, -0.853878,
		-0.065220, -0.997867, 0.002605,
		-0.851974, 0.057044, 0.520467,
		43.039810, 35.033367, 38.974144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026047, 34.735371, 38.078484>,  <43.636192, 34.993439, 38.609818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026047, 34.735371, 38.078484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826866, 34.872803, 38.396980>,  <42.707359, 34.955261, 38.588078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826866, 34.872803, 38.396980>,  <43.026047, 34.735371, 38.078484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826866, 34.872803, 38.396980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758479, 0.272584, -0.591952,
		-0.420425, -0.898694, 0.124865,
		-0.497948, 0.343580, 0.796242,
		42.677483, 34.975876, 38.635853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339916, 34.464912, 38.266468>,  <43.026047, 34.735371, 38.078484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339916, 34.464912, 38.266468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330883, 34.838577, 38.408924>,  <42.325462, 35.062775, 38.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330883, 34.838577, 38.408924>,  <42.339916, 34.464912, 38.266468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330883, 34.838577, 38.408924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741971, 0.223089, -0.632227,
		-0.670052, -0.278520, 0.688082,
		-0.022584, 0.934161, 0.356135,
		42.324108, 35.118824, 38.515766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677624, 34.636688, 38.152729>,  <42.339916, 34.464912, 38.266468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677624, 34.636688, 38.152729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851196, 34.988903, 38.229008>,  <41.955338, 35.200233, 38.274773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851196, 34.988903, 38.229008>,  <41.677624, 34.636688, 38.152729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851196, 34.988903, 38.229008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708759, 0.464298, -0.531119,
		-0.556208, 0.095311, 0.825559,
		0.433927, 0.880536, 0.190694,
		41.981373, 35.253063, 38.286217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067295, 35.117649, 38.328697>,  <41.677624, 34.636688, 38.152729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067295, 35.117649, 38.328697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378601, 35.346127, 38.224350>,  <41.565384, 35.483212, 38.161743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378601, 35.346127, 38.224350>,  <41.067295, 35.117649, 38.328697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378601, 35.346127, 38.224350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614342, 0.606608, -0.504590,
		-0.129975, 0.552962, 0.823006,
		0.778261, 0.571192, -0.260864,
		41.612080, 35.517483, 38.146091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558563, 35.553535, 38.740700>,  <41.067295, 35.117649, 38.328697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558563, 35.553535, 38.740700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695038, 35.770405, 38.433548>,  <41.776920, 35.900528, 38.249256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695038, 35.770405, 38.433548>,  <41.558563, 35.553535, 38.740700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695038, 35.770405, 38.433548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939250, 0.164058, -0.301489,
		-0.037483, 0.824094, 0.565211,
		0.341183, 0.542175, -0.767881,
		41.797394, 35.933056, 38.203182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949429, 35.921108, 38.611172>,  <41.558563, 35.553535, 38.740700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949429, 35.921108, 38.611172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202320, 35.974556, 38.305901>,  <41.354053, 36.006626, 38.122738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202320, 35.974556, 38.305901>,  <40.949429, 35.921108, 38.611172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202320, 35.974556, 38.305901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770899, 0.207001, -0.602383,
		0.077488, 0.969173, 0.233879,
		0.632226, 0.133620, -0.763174,
		41.391987, 36.014641, 38.076950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833607, 36.570724, 38.269836>,  <40.949429, 35.921108, 38.611172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833607, 36.570724, 38.269836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003819, 36.337269, 37.993206>,  <41.105946, 36.197193, 37.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003819, 36.337269, 37.993206>,  <40.833607, 36.570724, 38.269836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003819, 36.337269, 37.993206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723337, 0.239858, -0.647496,
		0.543787, 0.775777, -0.320103,
		0.425533, -0.583642, -0.691580,
		41.131477, 36.162178, 37.785732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733318, 36.973656, 37.650543>,  <40.833607, 36.570724, 38.269836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733318, 36.973656, 37.650543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807549, 36.597557, 37.536354>,  <40.852085, 36.371899, 37.467842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807549, 36.597557, 37.536354>,  <40.733318, 36.973656, 37.650543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807549, 36.597557, 37.536354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619992, 0.113354, -0.776376,
		0.762347, 0.321063, -0.561913,
		0.185571, -0.940250, -0.285471,
		40.863220, 36.315483, 37.450714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858994, 37.156494, 36.902237>,  <40.733318, 36.973656, 37.650543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858994, 37.156494, 36.902237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761993, 36.769566, 36.931866>,  <40.703793, 36.537411, 36.949642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761993, 36.769566, 36.931866>,  <40.858994, 37.156494, 36.902237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761993, 36.769566, 36.931866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635694, 0.100758, -0.765337,
		0.732862, -0.232681, -0.639353,
		-0.242500, -0.967320, 0.074073,
		40.689243, 36.479370, 36.954086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894451, 36.864712, 36.238708>,  <40.858994, 37.156494, 36.902237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894451, 36.864712, 36.238708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657997, 36.603340, 36.427849>,  <40.516125, 36.446518, 36.541332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657997, 36.603340, 36.427849>,  <40.894451, 36.864712, 36.238708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657997, 36.603340, 36.427849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625670, 0.001523, -0.780086,
		0.509015, -0.756982, -0.409734,
		-0.591135, -0.653434, 0.472846,
		40.480656, 36.407310, 36.569702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739689, 36.471500, 35.678093>,  <40.894451, 36.864712, 36.238708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739689, 36.471500, 35.678093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475330, 36.395855, 35.968597>,  <40.316715, 36.350468, 36.142899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475330, 36.395855, 35.968597>,  <40.739689, 36.471500, 35.678093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475330, 36.395855, 35.968597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728775, -0.069335, -0.681234,
		0.179189, -0.979503, -0.092002,
		-0.660892, -0.189118, 0.726261,
		40.277061, 36.339119, 36.186478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321495, 35.961205, 35.417439>,  <40.739689, 36.471500, 35.678093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321495, 35.961205, 35.417439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104713, 36.088806, 35.728443>,  <39.974644, 36.165367, 35.915047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104713, 36.088806, 35.728443>,  <40.321495, 35.961205, 35.417439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104713, 36.088806, 35.728443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805527, 0.066605, -0.588804,
		-0.239619, -0.945409, 0.220872,
		-0.541949, 0.319007, 0.777512,
		39.942127, 36.184509, 35.961697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689838, 35.561718, 35.497093>,  <40.321495, 35.961205, 35.417439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689838, 35.561718, 35.497093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639618, 35.923515, 35.660130>,  <39.609486, 36.140594, 35.757950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639618, 35.923515, 35.660130>,  <39.689838, 35.561718, 35.497093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639618, 35.923515, 35.660130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779188, 0.164403, -0.604845,
		-0.614088, -0.393523, 0.684131,
		-0.125547, 0.904495, 0.407587,
		39.601955, 36.194862, 35.782406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381321, 35.409393, 36.181454>,  <39.689838, 35.561718, 35.497093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381321, 35.409393, 36.181454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260494, 35.039307, 36.089603>,  <39.187996, 34.817253, 36.034492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260494, 35.039307, 36.089603>,  <39.381321, 35.409393, 36.181454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260494, 35.039307, 36.089603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516512, -0.043607, 0.855169,
		-0.801230, 0.376924, -0.464714,
		-0.302069, -0.925217, -0.229626,
		39.169872, 34.761742, 36.020718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828831, 34.759052, 36.209763>,  <39.381321, 35.409393, 36.181454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828831, 34.759052, 36.209763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791225, 34.576679, 35.855747>,  <39.768661, 34.467255, 35.643337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791225, 34.576679, 35.855747>,  <39.828831, 34.759052, 36.209763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791225, 34.576679, 35.855747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861910, 0.407647, -0.301555,
		0.498271, -0.791170, 0.354650,
		-0.094009, -0.455932, -0.885036,
		39.763023, 34.439899, 35.590237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422829, 34.393036, 36.064869>,  <39.828831, 34.759052, 36.209763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422829, 34.393036, 36.064869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250347, 34.515884, 35.725517>,  <40.146858, 34.589596, 35.521908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250347, 34.515884, 35.725517>,  <40.422829, 34.393036, 36.064869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250347, 34.515884, 35.725517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875746, 0.368724, -0.311628,
		0.217108, -0.877335, -0.427959,
		-0.431200, 0.307126, -0.848375,
		40.120987, 34.608021, 35.471004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960232, 34.252743, 35.580296>,  <40.422829, 34.393036, 36.064869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960232, 34.252743, 35.580296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708641, 34.528103, 35.435795>,  <40.557686, 34.693317, 35.349094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708641, 34.528103, 35.435795>,  <40.960232, 34.252743, 35.580296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708641, 34.528103, 35.435795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775543, 0.587912, -0.229985,
		0.054062, -0.424819, -0.903662,
		-0.628976, 0.688396, -0.361249,
		40.519947, 34.734623, 35.327419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198524, 34.508934, 34.875645>,  <40.960232, 34.252743, 35.580296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198524, 34.508934, 34.875645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008400, 34.793407, 35.082836>,  <40.894325, 34.964092, 35.207150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008400, 34.793407, 35.082836>,  <41.198524, 34.508934, 34.875645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008400, 34.793407, 35.082836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712208, 0.656673, -0.248074,
		-0.516567, 0.250994, -0.818634,
		-0.475310, 0.711184, 0.517975,
		40.865807, 35.006763, 35.238228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021114, 35.137039, 34.477047>,  <41.198524, 34.508934, 34.875645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021114, 35.137039, 34.477047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083736, 35.252068, 34.855000>,  <41.121307, 35.321087, 35.081772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083736, 35.252068, 34.855000>,  <41.021114, 35.137039, 34.477047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083736, 35.252068, 34.855000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631225, 0.706664, -0.319658,
		-0.759636, 0.646473, -0.070893,
		0.156552, 0.287573, 0.944877,
		41.130703, 35.338341, 35.138462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006603, 35.977573, 34.542110>,  <41.021114, 35.137039, 34.477047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006603, 35.977573, 34.542110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236355, 35.774353, 34.798851>,  <41.374207, 35.652420, 34.952896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236355, 35.774353, 34.798851>,  <41.006603, 35.977573, 34.542110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236355, 35.774353, 34.798851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801813, 0.507102, -0.316137,
		-0.164871, 0.696228, 0.698630,
		0.574381, -0.508049, 0.641851,
		41.408669, 35.621937, 34.991405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437012, 36.505615, 34.956959>,  <41.006603, 35.977573, 34.542110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437012, 36.505615, 34.956959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593483, 36.141563, 34.902351>,  <41.687366, 35.923130, 34.869587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593483, 36.141563, 34.902351>,  <41.437012, 36.505615, 34.956959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593483, 36.141563, 34.902351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905610, 0.407081, -0.118977,
		0.163860, -0.077092, 0.983467,
		0.391178, -0.910133, -0.136520,
		41.710838, 35.868523, 34.861397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035339, 36.392532, 35.411034>,  <41.437012, 36.505615, 34.956959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035339, 36.392532, 35.411034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085846, 36.146545, 35.099686>,  <42.116150, 35.998951, 34.912876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085846, 36.146545, 35.099686>,  <42.035339, 36.392532, 35.411034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085846, 36.146545, 35.099686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978368, 0.206820, -0.004697,
		0.163872, -0.760943, 0.627783,
		0.126263, -0.614972, -0.778374,
		42.123726, 35.962055, 34.866173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486591, 36.013081, 35.615108>,  <42.035339, 36.392532, 35.411034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486591, 36.013081, 35.615108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527233, 36.013195, 35.217178>,  <42.551617, 36.013264, 34.978420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527233, 36.013195, 35.217178>,  <42.486591, 36.013081, 35.615108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527233, 36.013195, 35.217178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979504, 0.174795, 0.100090,
		0.173919, -0.984605, 0.017479,
		0.101604, 0.000287, -0.994825,
		42.557713, 36.013283, 34.918732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020515, 35.551411, 35.383839>,  <42.486591, 36.013081, 35.615108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020515, 35.551411, 35.383839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005672, 35.857002, 35.126167>,  <42.996765, 36.040356, 34.971565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005672, 35.857002, 35.126167>,  <43.020515, 35.551411, 35.383839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005672, 35.857002, 35.126167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977950, 0.160336, 0.133818,
		0.205519, -0.625005, -0.753081,
		-0.037109, 0.763977, -0.644176,
		42.994541, 36.086197, 34.932915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559067, 35.522270, 34.903698>,  <43.020515, 35.551411, 35.383839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559067, 35.522270, 34.903698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476547, 35.913143, 34.923897>,  <43.427036, 36.147667, 34.936016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476547, 35.913143, 34.923897>,  <43.559067, 35.522270, 34.903698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476547, 35.913143, 34.923897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978481, 0.206232, 0.006608,
		-0.003957, 0.050773, -0.998702,
		-0.206299, 0.977185, 0.050497,
		43.414658, 36.206299, 34.939045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834919, 35.996498, 34.324474>,  <43.559067, 35.522270, 34.903698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834919, 35.996498, 34.324474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853580, 36.176945, 34.680973>,  <43.864777, 36.285213, 34.894871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853580, 36.176945, 34.680973>,  <43.834919, 35.996498, 34.324474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853580, 36.176945, 34.680973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998445, 0.006182, -0.055394,
		-0.030499, 0.892442, -0.450131,
		0.046653, 0.451120, 0.891243,
		43.867577, 36.312283, 34.948345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229355, 36.685101, 34.349442>,  <43.834919, 35.996498, 34.324474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229355, 36.685101, 34.349442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269989, 36.435993, 34.659756>,  <44.294369, 36.286530, 34.845943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269989, 36.435993, 34.659756>,  <44.229355, 36.685101, 34.349442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269989, 36.435993, 34.659756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968863, -0.115059, -0.219238,
		0.225795, 0.773902, 0.591687,
		0.101590, -0.622766, 0.775785,
		44.300465, 36.249165, 34.892490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893230, 36.746582, 34.736519>,  <44.229355, 36.685101, 34.349442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893230, 36.746582, 34.736519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797863, 36.359062, 34.709469>,  <44.740643, 36.126549, 34.693237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797863, 36.359062, 34.709469>,  <44.893230, 36.746582, 34.736519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797863, 36.359062, 34.709469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904020, -0.195959, -0.379932,
		0.354828, -0.151719, 0.922539,
		-0.238423, -0.968804, -0.067625,
		44.726337, 36.068420, 34.689182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479683, 36.479950, 34.838078>,  <44.893230, 36.746582, 34.736519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479683, 36.479950, 34.838078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270992, 36.190269, 34.657707>,  <45.145779, 36.016460, 34.549484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270992, 36.190269, 34.657707>,  <45.479683, 36.479950, 34.838078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270992, 36.190269, 34.657707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830846, -0.311364, -0.461246,
		0.193633, -0.615295, 0.764146,
		-0.521729, -0.724200, -0.450925,
		45.114475, 35.973011, 34.522430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721550, 35.803776, 35.072472>,  <45.479683, 36.479950, 34.838078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721550, 35.803776, 35.072472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578270, 35.855568, 34.702621>,  <45.492302, 35.886642, 34.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578270, 35.855568, 34.702621>,  <45.721550, 35.803776, 35.072472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578270, 35.855568, 34.702621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912524, -0.160904, -0.376044,
		-0.197466, -0.978440, -0.060519,
		-0.358199, 0.129481, -0.924623,
		45.470810, 35.894413, 34.425236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224552, 35.510731, 34.715286>,  <45.721550, 35.803776, 35.072472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224552, 35.510731, 34.715286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004635, 35.696285, 34.437428>,  <45.872684, 35.807617, 34.270710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004635, 35.696285, 34.437428>,  <46.224552, 35.510731, 34.715286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004635, 35.696285, 34.437428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700803, -0.196366, -0.685796,
		-0.454536, -0.863858, -0.217132,
		-0.549793, 0.463886, -0.694649,
		45.839699, 35.835449, 34.229034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.036358, 35.559666, 34.630619>,  <46.224552, 35.510731, 34.715286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.036358, 35.559666, 34.630619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157600, 35.588356, 35.010719>,  <47.230347, 35.605572, 35.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157600, 35.588356, 35.010719>,  <47.036358, 35.559666, 34.630619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.157600, 35.588356, 35.010719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951832, 0.025682, -0.305543,
		-0.046320, 0.997094, -0.060486,
		0.303102, 0.071726, 0.950255,
		47.248531, 35.609875, 35.295795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233513, 34.806694, 34.706913>,  <47.036358, 35.559666, 34.630619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233513, 34.806694, 34.706913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606850, 34.950119, 34.700008>,  <47.830853, 35.036175, 34.695866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606850, 34.950119, 34.700008>,  <47.233513, 34.806694, 34.706913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.606850, 34.950119, 34.700008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179526, 0.507875, 0.842516,
		0.310862, -0.783259, 0.538395,
		0.933346, 0.358563, -0.017264,
		47.886852, 35.057690, 34.694828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581829, 34.604492, 35.343632>,  <47.233513, 34.806694, 34.706913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581829, 34.604492, 35.343632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674797, 34.953342, 35.171413>,  <47.730576, 35.162655, 35.068081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674797, 34.953342, 35.171413>,  <47.581829, 34.604492, 35.343632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674797, 34.953342, 35.171413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466460, 0.488390, 0.737490,
		0.853463, 0.029430, 0.520323,
		0.232416, 0.872129, -0.430550,
		47.744522, 35.214981, 35.042248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.418282, 33.168591, 28.328356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029247, 33.238880, 28.389278>,  <30.795826, 33.281055, 28.425831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029247, 33.238880, 28.389278>,  <31.418282, 33.168591, 28.328356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029247, 33.238880, 28.389278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193629, 0.249257, 0.948883,
		0.128780, 0.952361, -0.276450,
		-0.972586, 0.175726, 0.152305,
		30.737471, 33.291599, 28.434971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418945, 33.763920, 28.672693>,  <31.418282, 33.168591, 28.328356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418945, 33.763920, 28.672693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.058928, 33.607491, 28.749617>,  <30.842916, 33.513634, 28.795771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.058928, 33.607491, 28.749617>,  <31.418945, 33.763920, 28.672693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058928, 33.607491, 28.749617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088713, 0.267623, 0.959431,
		-0.426670, 0.880592, -0.206180,
		-0.900046, -0.391070, 0.192307,
		30.788914, 33.490170, 28.807308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178795, 34.166157, 29.208109>,  <31.418945, 33.763920, 28.672693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178795, 34.166157, 29.208109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.927410, 33.856876, 29.242033>,  <30.776579, 33.671307, 29.262388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.927410, 33.856876, 29.242033>,  <31.178795, 34.166157, 29.208109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927410, 33.856876, 29.242033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047963, 0.070304, 0.996372,
		-0.776359, 0.630251, -0.007099,
		-0.628463, -0.773202, 0.084810,
		30.738871, 33.624916, 29.267475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517092, 34.392410, 29.497551>,  <31.178795, 34.166157, 29.208109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517092, 34.392410, 29.497551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.532242, 33.998409, 29.564884>,  <30.541332, 33.762009, 29.605284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.532242, 33.998409, 29.564884>,  <30.517092, 34.392410, 29.497551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532242, 33.998409, 29.564884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075941, 0.170804, 0.982374,
		-0.996393, -0.024425, 0.081272,
		0.037876, -0.985002, 0.168333,
		30.543604, 33.702908, 29.615385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071085, 34.228958, 30.046303>,  <30.517092, 34.392410, 29.497551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071085, 34.228958, 30.046303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.343733, 33.936317, 30.041344>,  <30.507322, 33.760735, 30.038368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.343733, 33.936317, 30.041344>,  <30.071085, 34.228958, 30.046303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343733, 33.936317, 30.041344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035147, 0.015810, 0.999257,
		-0.730862, -0.681549, 0.036490,
		0.681619, -0.731602, -0.012400,
		30.548220, 33.716839, 30.037624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043394, 33.828888, 30.665075>,  <30.071085, 34.228958, 30.046303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043394, 33.828888, 30.665075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.411991, 33.726681, 30.548069>,  <30.633148, 33.665356, 30.477865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.411991, 33.726681, 30.548069>,  <30.043394, 33.828888, 30.665075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411991, 33.726681, 30.548069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290868, -0.045103, 0.955700,
		-0.257389, -0.965752, 0.032759,
		0.921491, -0.255515, -0.292515,
		30.688438, 33.650024, 30.460314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227926, 33.463394, 31.198866>,  <30.043394, 33.828888, 30.665075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227926, 33.463394, 31.198866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.578445, 33.553463, 31.028500>,  <30.788757, 33.607506, 30.926279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.578445, 33.553463, 31.028500>,  <30.227926, 33.463394, 31.198866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578445, 33.553463, 31.028500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399121, 0.155841, 0.903558,
		0.269829, -0.961775, 0.046692,
		0.876296, 0.225170, -0.425915,
		30.841333, 33.621014, 30.900724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781357, 33.084072, 31.667027>,  <30.227926, 33.463394, 31.198866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781357, 33.084072, 31.667027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.971725, 33.379307, 31.475729>,  <31.085947, 33.556450, 31.360950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.971725, 33.379307, 31.475729>,  <30.781357, 33.084072, 31.667027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971725, 33.379307, 31.475729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534648, 0.188960, 0.823678,
		0.698319, -0.647700, -0.304689,
		0.475922, 0.738091, -0.478246,
		31.114502, 33.600735, 31.332254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418259, 32.962376, 31.896921>,  <30.781357, 33.084072, 31.667027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418259, 32.962376, 31.896921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.407467, 33.338360, 31.760836>,  <31.400991, 33.563950, 31.679184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.407467, 33.338360, 31.760836>,  <31.418259, 32.962376, 31.896921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407467, 33.338360, 31.760836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672045, 0.269003, 0.689923,
		0.740019, -0.210025, -0.638953,
		-0.026980, 0.939961, -0.340214,
		31.399372, 33.620350, 31.658772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117596, 33.227837, 31.957260>,  <31.418259, 32.962376, 31.896921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117596, 33.227837, 31.957260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.896858, 33.561199, 31.945267>,  <31.764414, 33.761215, 31.938070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.896858, 33.561199, 31.945267>,  <32.117596, 33.227837, 31.957260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896858, 33.561199, 31.945267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603484, 0.423902, 0.675362,
		0.575561, 0.354601, -0.736877,
		-0.551848, 0.833406, -0.029986,
		31.731304, 33.811222, 31.936272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635376, 33.690395, 32.018456>,  <32.117596, 33.227837, 31.957260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635376, 33.690395, 32.018456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304420, 33.893040, 32.115421>,  <32.105846, 34.014626, 32.173603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304420, 33.893040, 32.115421>,  <32.635376, 33.690395, 32.018456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304420, 33.893040, 32.115421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506195, 0.485704, 0.712642,
		0.243290, 0.712345, -0.658312,
		-0.827391, 0.506613, 0.242419,
		32.056202, 34.045025, 32.188148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779697, 34.402016, 31.969231>,  <32.635376, 33.690395, 32.018456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779697, 34.402016, 31.969231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.494545, 34.344810, 32.243851>,  <32.323456, 34.310486, 32.408623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.494545, 34.344810, 32.243851>,  <32.779697, 34.402016, 31.969231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494545, 34.344810, 32.243851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458490, 0.645736, 0.610584,
		-0.530651, 0.750048, -0.394761,
		-0.712879, -0.143013, 0.686550,
		32.280682, 34.301907, 32.449818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008293, 34.939777, 32.351921>,  <32.779697, 34.402016, 31.969231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008293, 34.939777, 32.351921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706841, 34.798767, 32.573830>,  <32.525970, 34.714161, 32.706974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706841, 34.798767, 32.573830>,  <33.008293, 34.939777, 32.351921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706841, 34.798767, 32.573830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288388, 0.581100, 0.761022,
		-0.590658, 0.733517, -0.336268,
		-0.753628, -0.352528, 0.554769,
		32.480751, 34.693008, 32.740261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755413, 35.485767, 32.699287>,  <33.008293, 34.939777, 32.351921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755413, 35.485767, 32.699287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667568, 35.158161, 32.911316>,  <32.614861, 34.961597, 33.038532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667568, 35.158161, 32.911316>,  <32.755413, 35.485767, 32.699287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667568, 35.158161, 32.911316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463223, 0.390642, 0.795502,
		-0.858599, 0.420248, 0.293596,
		-0.219617, -0.819018, 0.530073,
		32.601685, 34.912457, 33.070339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491745, 35.719719, 33.333988>,  <32.755413, 35.485767, 32.699287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491745, 35.719719, 33.333988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628983, 35.348610, 33.392677>,  <32.711323, 35.125946, 33.427891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628983, 35.348610, 33.392677>,  <32.491745, 35.719719, 33.333988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628983, 35.348610, 33.392677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629058, 0.342952, 0.697617,
		-0.697549, -0.147048, 0.701286,
		0.343091, -0.927772, 0.146725,
		32.731911, 35.070278, 33.436695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526344, 35.622105, 34.070660>,  <32.491745, 35.719719, 33.333988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526344, 35.622105, 34.070660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751392, 35.313263, 33.952465>,  <32.886421, 35.127960, 33.881546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751392, 35.313263, 33.952465>,  <32.526344, 35.622105, 34.070660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751392, 35.313263, 33.952465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596373, 0.131520, 0.791860,
		-0.572534, -0.621741, 0.534456,
		0.562623, -0.772102, -0.295490,
		32.920181, 35.081631, 33.863819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499260, 35.110596, 34.559639>,  <32.526344, 35.622105, 34.070660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499260, 35.110596, 34.559639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.843147, 35.053963, 34.363338>,  <33.049480, 35.019981, 34.245556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.843147, 35.053963, 34.363338>,  <32.499260, 35.110596, 34.559639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843147, 35.053963, 34.363338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506131, 0.106967, 0.855797,
		-0.068673, -0.984130, 0.163622,
		0.859718, -0.141585, -0.490753,
		33.101063, 35.011486, 34.216114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916229, 34.675125, 34.989040>,  <32.499260, 35.110596, 34.559639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916229, 34.675125, 34.989040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179028, 34.831944, 34.731464>,  <33.336704, 34.926033, 34.576920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179028, 34.831944, 34.731464>,  <32.916229, 34.675125, 34.989040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179028, 34.831944, 34.731464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639750, 0.161970, 0.751323,
		0.398849, -0.905577, -0.144396,
		0.656993, 0.392042, -0.643945,
		33.376125, 34.949554, 34.538280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608112, 34.248634, 35.135159>,  <32.916229, 34.675125, 34.989040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608112, 34.248634, 35.135159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693569, 34.599892, 34.963943>,  <33.744843, 34.810646, 34.861214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693569, 34.599892, 34.963943>,  <33.608112, 34.248634, 35.135159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693569, 34.599892, 34.963943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607549, 0.223683, 0.762135,
		0.765011, -0.422877, -0.485729,
		0.213640, 0.878146, -0.428039,
		33.757660, 34.863335, 34.835533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431179, 34.322742, 35.176037>,  <33.608112, 34.248634, 35.135159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431179, 34.322742, 35.176037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268112, 34.678764, 35.094440>,  <34.170273, 34.892376, 35.045483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268112, 34.678764, 35.094440>,  <34.431179, 34.322742, 35.176037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268112, 34.678764, 35.094440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685520, 0.445890, 0.575539,
		0.603219, 0.094787, -0.791923,
		-0.407664, 0.890055, -0.203990,
		34.145813, 34.945782, 35.033245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930241, 34.775261, 35.150703>,  <34.431179, 34.322742, 35.176037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930241, 34.775261, 35.150703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643032, 35.047306, 35.209881>,  <34.470707, 35.210533, 35.245388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643032, 35.047306, 35.209881>,  <34.930241, 34.775261, 35.150703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643032, 35.047306, 35.209881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578113, 0.464399, 0.670909,
		0.387592, 0.567255, -0.726632,
		-0.718024, 0.680114, 0.147940,
		34.427624, 35.251339, 35.254261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265778, 35.477360, 35.215584>,  <34.930241, 34.775261, 35.150703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265778, 35.477360, 35.215584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915035, 35.550533, 35.393421>,  <34.704590, 35.594437, 35.500122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915035, 35.550533, 35.393421>,  <35.265778, 35.477360, 35.215584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915035, 35.550533, 35.393421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463397, 0.567885, 0.680272,
		-0.128033, 0.802522, -0.582723,
		-0.876853, 0.182934, 0.444594,
		34.651978, 35.605415, 35.526798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895329, 35.575069, 35.659000>,  <35.265778, 35.477360, 35.215584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895329, 35.575069, 35.659000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228241, 35.368366, 35.578728>,  <36.427990, 35.244347, 35.530563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228241, 35.368366, 35.578728>,  <35.895329, 35.575069, 35.659000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228241, 35.368366, 35.578728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168674, 0.108781, -0.979651,
		0.528069, 0.849195, 0.003374,
		0.832282, -0.516754, -0.200681,
		36.477924, 35.213341, 35.518524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185661, 35.875523, 35.016037>,  <35.895329, 35.575069, 35.659000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185661, 35.875523, 35.016037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359825, 35.516705, 35.046314>,  <36.464321, 35.301414, 35.064480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359825, 35.516705, 35.046314>,  <36.185661, 35.875523, 35.016037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359825, 35.516705, 35.046314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052742, -0.109353, -0.992603,
		0.898688, 0.428193, -0.094925,
		0.435406, -0.897047, 0.075690,
		36.490448, 35.247589, 35.069023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611309, 35.876247, 34.544430>,  <36.185661, 35.875523, 35.016037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611309, 35.876247, 34.544430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559418, 35.485126, 34.610241>,  <36.528282, 35.250454, 34.649727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.559418, 35.485126, 34.610241>,  <36.611309, 35.876247, 34.544430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559418, 35.485126, 34.610241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059535, -0.157953, -0.985650,
		0.989761, -0.137660, -0.037723,
		-0.129726, -0.977804, 0.164532,
		36.520500, 35.191784, 34.659599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054688, 35.663834, 34.037338>,  <36.611309, 35.876247, 34.544430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054688, 35.663834, 34.037338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797371, 35.381344, 34.155609>,  <36.642982, 35.211849, 34.226570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797371, 35.381344, 34.155609>,  <37.054688, 35.663834, 34.037338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797371, 35.381344, 34.155609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153581, -0.259311, -0.953504,
		0.750061, -0.658790, 0.058350,
		-0.643290, -0.706225, 0.295677,
		36.604385, 35.169476, 34.244312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245716, 35.106754, 33.565063>,  <37.054688, 35.663834, 34.037338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245716, 35.106754, 33.565063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888279, 35.020248, 33.722401>,  <36.673817, 34.968346, 33.816803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888279, 35.020248, 33.722401>,  <37.245716, 35.106754, 33.565063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888279, 35.020248, 33.722401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321420, -0.303418, -0.897010,
		0.313339, -0.927991, 0.201621,
		-0.893592, -0.216263, 0.393347,
		36.620201, 34.955368, 33.840405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036026, 34.495850, 33.240280>,  <37.245716, 35.106754, 33.565063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036026, 34.495850, 33.240280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698929, 34.661030, 33.378410>,  <36.496670, 34.760139, 33.461288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698929, 34.661030, 33.378410>,  <37.036026, 34.495850, 33.240280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698929, 34.661030, 33.378410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461783, -0.224910, -0.858005,
		-0.276652, -0.882543, 0.380238,
		-0.842746, 0.412956, 0.345321,
		36.446106, 34.784916, 33.482006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495956, 34.230759, 32.936272>,  <37.036026, 34.495850, 33.240280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495956, 34.230759, 32.936272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264477, 34.514725, 33.096832>,  <36.125587, 34.685104, 33.193169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264477, 34.514725, 33.096832>,  <36.495956, 34.230759, 32.936272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264477, 34.514725, 33.096832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637991, -0.087490, -0.765058,
		-0.508008, -0.698832, 0.503550,
		-0.578702, 0.709915, 0.401403,
		36.090866, 34.727699, 33.217255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871292, 33.944977, 33.011604>,  <36.495956, 34.230759, 32.936272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871292, 33.944977, 33.011604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854473, 34.340401, 32.953655>,  <35.844383, 34.577656, 32.918888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854473, 34.340401, 32.953655>,  <35.871292, 33.944977, 33.011604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854473, 34.340401, 32.953655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467962, -0.147594, -0.871337,
		-0.882748, 0.031160, 0.468812,
		-0.042043, 0.988557, -0.144870,
		35.841862, 34.636967, 32.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141151, 34.260059, 32.937416>,  <35.871292, 33.944977, 33.011604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141151, 34.260059, 32.937416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400185, 34.490128, 32.737492>,  <35.555607, 34.628170, 32.617538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400185, 34.490128, 32.737492>,  <35.141151, 34.260059, 32.937416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400185, 34.490128, 32.737492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613535, 0.004592, -0.789654,
		-0.451893, 0.818019, 0.355863,
		0.647586, 0.575173, -0.499808,
		35.594460, 34.662678, 32.587551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681728, 34.509583, 32.531879>,  <35.141151, 34.260059, 32.937416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681728, 34.509583, 32.531879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042233, 34.614994, 32.394310>,  <35.258533, 34.678242, 32.311768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042233, 34.614994, 32.394310>,  <34.681728, 34.509583, 32.531879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042233, 34.614994, 32.394310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411572, 0.272578, -0.869661,
		-0.135434, 0.925340, 0.354125,
		0.901258, 0.263530, -0.343927,
		35.312611, 34.694054, 32.291130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613342, 35.216599, 32.302914>,  <34.681728, 34.509583, 32.531879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613342, 35.216599, 32.302914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929768, 35.059143, 32.115608>,  <35.119621, 34.964672, 32.003223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929768, 35.059143, 32.115608>,  <34.613342, 35.216599, 32.302914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929768, 35.059143, 32.115608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412572, 0.221877, -0.883490,
		0.451669, 0.892089, 0.013116,
		0.791062, -0.393634, -0.468266,
		35.167088, 34.941051, 31.975128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873440, 35.731541, 31.791798>,  <34.613342, 35.216599, 32.302914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873440, 35.731541, 31.791798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033764, 35.393723, 31.649759>,  <35.129959, 35.191032, 31.564537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033764, 35.393723, 31.649759>,  <34.873440, 35.731541, 31.791798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033764, 35.393723, 31.649759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187068, 0.303983, -0.934131,
		0.896858, 0.440838, -0.036147,
		0.400813, -0.844545, -0.355096,
		35.154007, 35.140358, 31.543230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299789, 35.969318, 31.148678>,  <34.873440, 35.731541, 31.791798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299789, 35.969318, 31.148678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258633, 35.572685, 31.117239>,  <35.233940, 35.334705, 31.098375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258633, 35.572685, 31.117239>,  <35.299789, 35.969318, 31.148678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258633, 35.572685, 31.117239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410154, 0.114278, -0.904828,
		0.906194, -0.060860, -0.418460,
		-0.102889, -0.991583, -0.078596,
		35.227768, 35.275211, 31.093660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392529, 35.812893, 30.493488>,  <35.299789, 35.969318, 31.148678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392529, 35.812893, 30.493488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213772, 35.465923, 30.580997>,  <35.106518, 35.257740, 30.633503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213772, 35.465923, 30.580997>,  <35.392529, 35.812893, 30.493488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213772, 35.465923, 30.580997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485714, 0.029903, -0.873606,
		0.751247, -0.496665, -0.434685,
		-0.446888, -0.867427, 0.218773,
		35.079704, 35.205696, 30.646629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419445, 35.449757, 29.870878>,  <35.392529, 35.812893, 30.493488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419445, 35.449757, 29.870878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119347, 35.296421, 30.086353>,  <34.939289, 35.204422, 30.215637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119347, 35.296421, 30.086353>,  <35.419445, 35.449757, 29.870878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119347, 35.296421, 30.086353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480603, -0.243324, -0.842505,
		0.454037, -0.890981, -0.001679,
		-0.750247, -0.383336, 0.538686,
		34.894272, 35.181419, 30.247959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301048, 34.900970, 29.497738>,  <35.419445, 35.449757, 29.870878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301048, 34.900970, 29.497738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968849, 34.894188, 29.720446>,  <34.769531, 34.890118, 29.854071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968849, 34.894188, 29.720446>,  <35.301048, 34.900970, 29.497738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968849, 34.894188, 29.720446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534578, -0.256631, -0.805212,
		0.156541, -0.966361, 0.204064,
		-0.830494, -0.016961, 0.556769,
		34.719700, 34.889099, 29.887476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886642, 34.284691, 29.365658>,  <35.301048, 34.900970, 29.497738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886642, 34.284691, 29.365658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.621181, 34.541752, 29.518789>,  <34.461903, 34.695988, 29.610668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.621181, 34.541752, 29.518789>,  <34.886642, 34.284691, 29.365658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621181, 34.541752, 29.518789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589476, -0.134230, -0.796555,
		-0.460523, -0.754306, 0.467912,
		-0.663655, 0.642655, 0.382829,
		34.422085, 34.734547, 29.633638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182091, 34.035938, 29.366617>,  <34.886642, 34.284691, 29.365658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182091, 34.035938, 29.366617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112663, 34.429569, 29.351299>,  <34.071007, 34.665749, 29.342108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112663, 34.429569, 29.351299>,  <34.182091, 34.035938, 29.366617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112663, 34.429569, 29.351299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725785, -0.154105, -0.670438,
		-0.665664, -0.088574, 0.740976,
		-0.173571, 0.984077, -0.038296,
		34.060593, 34.724792, 29.339811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.463272, 34.132160, 29.347795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597282, 34.492844, 29.238482>,  <33.677689, 34.709255, 29.172894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597282, 34.492844, 29.238482>,  <33.463272, 34.132160, 29.347795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597282, 34.492844, 29.238482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490244, -0.080869, -0.867825,
		-0.804625, 0.424716, 0.414963,
		0.335022, 0.901707, -0.273284,
		33.697788, 34.763355, 29.156496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934399, 34.361019, 28.994661>,  <33.463272, 34.132160, 29.347795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934399, 34.361019, 28.994661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208435, 34.632671, 28.889263>,  <33.372856, 34.795662, 28.826023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208435, 34.632671, 28.889263>,  <32.934399, 34.361019, 28.994661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208435, 34.632671, 28.889263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350953, -0.009260, -0.936347,
		-0.638341, 0.733960, 0.231999,
		0.685093, 0.679130, -0.263497,
		33.413963, 34.836411, 28.810215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599178, 35.015438, 28.844175>,  <32.934399, 34.361019, 28.994661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599178, 35.015438, 28.844175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944168, 34.957249, 28.650278>,  <33.151161, 34.922333, 28.533939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944168, 34.957249, 28.650278>,  <32.599178, 35.015438, 28.844175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944168, 34.957249, 28.650278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504498, -0.170885, -0.846334,
		0.040286, 0.974492, -0.220776,
		0.862473, -0.145476, -0.484745,
		33.202911, 34.913605, 28.504854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389267, 35.289085, 28.234417>,  <32.599178, 35.015438, 28.844175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389267, 35.289085, 28.234417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726585, 35.097660, 28.136576>,  <32.928974, 34.982803, 28.077871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726585, 35.097660, 28.136576>,  <32.389267, 35.289085, 28.234417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726585, 35.097660, 28.136576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419609, -0.301868, -0.856040,
		0.335832, 0.824532, -0.455373,
		0.843294, -0.478564, -0.244604,
		32.979572, 34.954090, 28.063194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432259, 35.370991, 27.485657>,  <32.389267, 35.289085, 28.234417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432259, 35.370991, 27.485657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688881, 35.078236, 27.577524>,  <32.842854, 34.902580, 27.632645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688881, 35.078236, 27.577524>,  <32.432259, 35.370991, 27.485657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688881, 35.078236, 27.577524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254796, -0.485730, -0.836149,
		0.723526, 0.477915, -0.498104,
		0.641552, -0.731891, 0.229668,
		32.881348, 34.858669, 27.646425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577660, 35.138687, 26.837641>,  <32.432259, 35.370991, 27.485657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577660, 35.138687, 26.837641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701740, 34.840714, 27.073896>,  <32.776188, 34.661930, 27.215649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701740, 34.840714, 27.073896>,  <32.577660, 35.138687, 26.837641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701740, 34.840714, 27.073896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134246, -0.649385, -0.748516,
		0.941144, 0.152902, -0.301446,
		0.310204, -0.744930, 0.590638,
		32.794800, 34.617233, 27.251087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240925, 34.879944, 26.542027>,  <32.577660, 35.138687, 26.837641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240925, 34.879944, 26.542027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046612, 34.601398, 26.753345>,  <32.930023, 34.434273, 26.880136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046612, 34.601398, 26.753345>,  <33.240925, 34.879944, 26.542027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046612, 34.601398, 26.753345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034029, -0.619013, -0.784643,
		0.873420, -0.363185, 0.324399,
		-0.485778, -0.696362, 0.528299,
		32.900879, 34.392490, 26.911835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570896, 34.222496, 26.312540>,  <33.240925, 34.879944, 26.542027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570896, 34.222496, 26.312540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233219, 34.116589, 26.498978>,  <33.030613, 34.053043, 26.610840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233219, 34.116589, 26.498978>,  <33.570896, 34.222496, 26.312540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233219, 34.116589, 26.498978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238961, -0.592449, -0.769351,
		0.479836, -0.760856, 0.436870,
		-0.844189, -0.264768, 0.466094,
		32.979961, 34.037159, 26.638805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546707, 33.581333, 26.589025>,  <33.570896, 34.222496, 26.312540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546707, 33.581333, 26.589025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183464, 33.709232, 26.480875>,  <32.965519, 33.785973, 26.415985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183464, 33.709232, 26.480875>,  <33.546707, 33.581333, 26.589025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183464, 33.709232, 26.480875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085760, -0.489989, -0.867500,
		-0.409863, -0.810970, 0.417541,
		-0.908107, 0.319747, -0.270377,
		32.911034, 33.805157, 26.399761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336834, 33.036587, 26.161985>,  <33.546707, 33.581333, 26.589025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336834, 33.036587, 26.161985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075481, 33.316971, 26.047619>,  <32.918671, 33.485203, 25.978998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075481, 33.316971, 26.047619>,  <33.336834, 33.036587, 26.161985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075481, 33.316971, 26.047619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194863, -0.209230, -0.958254,
		-0.731521, -0.681819, 0.000115,
		-0.653380, 0.700961, -0.285917,
		32.879467, 33.527260, 25.961843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971203, 32.622288, 25.695112>,  <33.336834, 33.036587, 26.161985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971203, 32.622288, 25.695112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876308, 33.003067, 25.617645>,  <32.819370, 33.231537, 25.571165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876308, 33.003067, 25.617645>,  <32.971203, 32.622288, 25.695112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876308, 33.003067, 25.617645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211624, -0.143926, -0.966696,
		-0.948121, -0.270321, -0.167311,
		-0.237238, 0.951952, -0.193666,
		32.805138, 33.288654, 25.559546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541397, 32.573475, 25.122030>,  <32.971203, 32.622288, 25.695112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541397, 32.573475, 25.122030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646221, 32.959160, 25.138147>,  <32.709114, 33.190571, 25.147818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646221, 32.959160, 25.138147>,  <32.541397, 32.573475, 25.122030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646221, 32.959160, 25.138147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198994, -0.013134, -0.979913,
		-0.944313, 0.264814, -0.195314,
		0.262060, 0.964210, 0.040294,
		32.724838, 33.248425, 25.150236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159195, 32.880661, 24.575581>,  <32.541397, 32.573475, 25.122030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159195, 32.880661, 24.575581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483616, 33.104046, 24.645212>,  <32.678268, 33.238079, 24.686991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483616, 33.104046, 24.645212>,  <32.159195, 32.880661, 24.575581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483616, 33.104046, 24.645212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208450, 0.002135, -0.978031,
		-0.546567, 0.829526, -0.114680,
		0.811057, 0.558464, 0.174081,
		32.726933, 33.271584, 24.697437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263733, 33.414062, 24.153839>,  <32.159195, 32.880661, 24.575581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263733, 33.414062, 24.153839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.652119, 33.403740, 24.248972>,  <32.885151, 33.397545, 24.306051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.652119, 33.403740, 24.248972>,  <32.263733, 33.414062, 24.153839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652119, 33.403740, 24.248972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237980, 0.002709, -0.971266,
		0.024425, 0.999663, 0.008773,
		0.970963, -0.025811, 0.237834,
		32.943409, 33.395996, 24.320322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527264, 33.847462, 23.692825>,  <32.263733, 33.414062, 24.153839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527264, 33.847462, 23.692825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833656, 33.616356, 23.805576>,  <33.017494, 33.477692, 23.873226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833656, 33.616356, 23.805576>,  <32.527264, 33.847462, 23.692825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833656, 33.616356, 23.805576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358788, 0.020387, -0.933196,
		0.533420, 0.815950, 0.222910,
		0.765986, -0.577763, 0.281878,
		33.063454, 33.443027, 23.890141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183025, 34.174767, 23.366093>,  <32.527264, 33.847462, 23.692825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183025, 34.174767, 23.366093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314224, 33.809059, 23.461201>,  <33.392944, 33.589634, 23.518267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314224, 33.809059, 23.461201>,  <33.183025, 34.174767, 23.366093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314224, 33.809059, 23.461201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475672, -0.057621, -0.877734,
		0.816183, 0.400996, 0.415991,
		0.327997, -0.914266, 0.237772,
		33.412624, 33.534779, 23.532532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799545, 34.228596, 23.259001>,  <33.183025, 34.174767, 23.366093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799545, 34.228596, 23.259001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.747765, 33.831970, 23.261723>,  <33.716694, 33.593994, 23.263355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.747765, 33.831970, 23.261723>,  <33.799545, 34.228596, 23.259001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747765, 33.831970, 23.261723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395811, -0.057964, -0.916501,
		0.909162, -0.115952, 0.399974,
		-0.129454, -0.991562, 0.006804,
		33.708927, 33.534500, 23.263763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430969, 33.905228, 22.991623>,  <33.799545, 34.228596, 23.259001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430969, 33.905228, 22.991623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137466, 33.639683, 22.933813>,  <33.961365, 33.480354, 22.899126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137466, 33.639683, 22.933813>,  <34.430969, 33.905228, 22.991623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137466, 33.639683, 22.933813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227886, -0.040081, -0.972862,
		0.640055, -0.746779, 0.180695,
		-0.733756, -0.663864, -0.144527,
		33.917339, 33.440525, 22.890455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808605, 33.496494, 22.462307>,  <34.430969, 33.905228, 22.991623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808605, 33.496494, 22.462307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421612, 33.395748, 22.471546>,  <34.189415, 33.335300, 22.477091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421612, 33.395748, 22.471546>,  <34.808605, 33.496494, 22.462307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421612, 33.395748, 22.471546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028738, -0.200206, -0.979332,
		0.251288, -0.946826, 0.200935,
		-0.967485, -0.251869, 0.023100,
		34.131367, 33.320187, 22.478476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749725, 32.926395, 22.248074>,  <34.808605, 33.496494, 22.462307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749725, 32.926395, 22.248074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372620, 33.044094, 22.185318>,  <34.146355, 33.114712, 22.147665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372620, 33.044094, 22.185318>,  <34.749725, 32.926395, 22.248074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372620, 33.044094, 22.185318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124546, -0.125721, -0.984217,
		-0.309329, -0.947424, 0.081878,
		-0.942764, 0.294249, -0.156887,
		34.089790, 33.132370, 22.138252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497551, 32.439144, 21.716528>,  <34.749725, 32.926395, 22.248074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497551, 32.439144, 21.716528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262295, 32.762157, 21.698719>,  <34.121143, 32.955967, 21.688034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262295, 32.762157, 21.698719>,  <34.497551, 32.439144, 21.716528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262295, 32.762157, 21.698719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047306, -0.089307, -0.994880,
		-0.807376, -0.583021, 0.090726,
		-0.588138, 0.807534, -0.044523,
		34.085854, 33.004417, 21.685362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898838, 32.122997, 21.336784>,  <34.497551, 32.439144, 21.716528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898838, 32.122997, 21.336784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897820, 32.521999, 21.308550>,  <33.897209, 32.761398, 21.291609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897820, 32.521999, 21.308550>,  <33.898838, 32.122997, 21.336784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897820, 32.521999, 21.308550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031974, -0.070469, -0.997002,
		-0.999485, -0.004799, -0.031714,
		-0.002550, 0.997503, -0.070586,
		33.897053, 32.821251, 21.287374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247032, 32.424755, 20.855892>,  <33.898838, 32.122997, 21.336784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247032, 32.424755, 20.855892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570938, 32.659092, 20.869015>,  <33.765282, 32.799694, 20.876888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570938, 32.659092, 20.869015>,  <33.247032, 32.424755, 20.855892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570938, 32.659092, 20.869015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080887, 0.166832, -0.982662,
		-0.581157, 0.793068, 0.182481,
		0.809762, 0.585841, 0.032807,
		33.813866, 32.834843, 20.878857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572304, 32.355576, 20.676674>,  <33.247032, 32.424755, 20.855892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572304, 32.355576, 20.676674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.311722, 32.638813, 20.567715>,  <32.155373, 32.808758, 20.502338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.311722, 32.638813, 20.567715>,  <32.572304, 32.355576, 20.676674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311722, 32.638813, 20.567715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330125, 0.058704, 0.942110,
		0.683096, 0.703671, 0.195517,
		-0.651458, 0.708096, -0.272400,
		32.116283, 32.851242, 20.485994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663727, 32.884624, 21.240715>,  <32.572304, 32.355576, 20.676674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663727, 32.884624, 21.240715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302208, 32.907894, 21.071117>,  <32.085297, 32.921856, 20.969358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302208, 32.907894, 21.071117>,  <32.663727, 32.884624, 21.240715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302208, 32.907894, 21.071117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391797, 0.286152, 0.874421,
		0.172194, 0.956417, -0.235831,
		-0.903794, 0.058172, -0.423995,
		32.031071, 32.925346, 20.943918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345554, 33.492428, 21.448318>,  <32.663727, 32.884624, 21.240715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345554, 33.492428, 21.448318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035606, 33.269108, 21.329742>,  <31.849636, 33.135117, 21.258596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035606, 33.269108, 21.329742>,  <32.345554, 33.492428, 21.448318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035606, 33.269108, 21.329742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560100, 0.389020, 0.731403,
		-0.293018, 0.732781, -0.614143,
		-0.774873, -0.558296, -0.296441,
		31.803144, 33.101620, 21.240810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739685, 33.912506, 21.632725>,  <32.345554, 33.492428, 21.448318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739685, 33.912506, 21.632725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579870, 33.551689, 21.567381>,  <31.483982, 33.335197, 21.528175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579870, 33.551689, 21.567381>,  <31.739685, 33.912506, 21.632725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579870, 33.551689, 21.567381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721236, 0.199313, 0.663396,
		-0.565852, 0.382872, -0.730219,
		-0.399537, -0.902044, -0.163359,
		31.460009, 33.281075, 21.518373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064674, 34.077545, 21.454941>,  <31.739685, 33.912506, 21.632725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064674, 34.077545, 21.454941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108389, 33.701969, 21.585451>,  <31.134617, 33.476624, 21.663757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108389, 33.701969, 21.585451>,  <31.064674, 34.077545, 21.454941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108389, 33.701969, 21.585451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477911, 0.238182, 0.845500,
		-0.871584, -0.248331, -0.422698,
		0.109285, -0.938936, 0.326276,
		31.141174, 33.420288, 21.683334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485542, 33.995399, 21.659489>,  <31.064674, 34.077545, 21.454941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485542, 33.995399, 21.659489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.686670, 33.701706, 21.841948>,  <30.807346, 33.525490, 21.951424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.686670, 33.701706, 21.841948>,  <30.485542, 33.995399, 21.659489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686670, 33.701706, 21.841948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492532, 0.190298, 0.849234,
		-0.710342, -0.651679, -0.265949,
		0.502819, -0.734235, 0.456149,
		30.837517, 33.481434, 21.978792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976347, 33.524620, 21.924740>,  <30.485542, 33.995399, 21.659489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976347, 33.524620, 21.924740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312536, 33.464722, 22.133041>,  <30.514250, 33.428783, 22.258022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312536, 33.464722, 22.133041>,  <29.976347, 33.524620, 21.924740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312536, 33.464722, 22.133041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498735, 0.161910, 0.851498,
		-0.211822, -0.975378, 0.061398,
		0.840473, -0.149745, 0.520752,
		30.564678, 33.419800, 22.289267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651196, 33.182087, 22.505743>,  <29.976347, 33.524620, 21.924740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651196, 33.182087, 22.505743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024067, 33.277256, 22.614870>,  <30.247789, 33.334358, 22.680346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024067, 33.277256, 22.614870>,  <29.651196, 33.182087, 22.505743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024067, 33.277256, 22.614870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297594, 0.074605, 0.951773,
		0.206102, -0.968413, 0.140352,
		0.932180, 0.237931, 0.272818,
		30.303720, 33.348633, 22.696716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852030, 32.690479, 23.079353>,  <29.651196, 33.182087, 22.505743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852030, 32.690479, 23.079353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065449, 33.025307, 23.127758>,  <30.193501, 33.226204, 23.156801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065449, 33.025307, 23.127758>,  <29.852030, 32.690479, 23.079353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065449, 33.025307, 23.127758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177750, -0.028906, 0.983651,
		0.826880, -0.546336, 0.133366,
		0.533548, 0.837067, 0.121013,
		30.225513, 33.276428, 23.164062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332199, 32.522621, 23.608448>,  <29.852030, 32.690479, 23.079353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332199, 32.522621, 23.608448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.348091, 32.922306, 23.608917>,  <30.357626, 33.162117, 23.609200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.348091, 32.922306, 23.608917>,  <30.332199, 32.522621, 23.608448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348091, 32.922306, 23.608917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063542, 0.001355, 0.997978,
		0.997188, -0.039726, 0.063546,
		0.039732, 0.999210, 0.001173,
		30.360010, 33.222069, 23.609268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844837, 32.722275, 24.065319>,  <30.332199, 32.522621, 23.608448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844837, 32.722275, 24.065319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.658371, 33.075943, 24.053102>,  <30.546492, 33.288143, 24.045773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.658371, 33.075943, 24.053102>,  <30.844837, 32.722275, 24.065319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658371, 33.075943, 24.053102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088900, 0.081161, 0.992728,
		0.880218, 0.460063, -0.116438,
		-0.466168, 0.884169, -0.030540,
		30.518520, 33.341194, 24.043941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222605, 33.153084, 24.538061>,  <30.844837, 32.722275, 24.065319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222605, 33.153084, 24.538061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.873566, 33.344315, 24.498026>,  <30.664143, 33.459053, 24.474005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.873566, 33.344315, 24.498026>,  <31.222605, 33.153084, 24.538061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873566, 33.344315, 24.498026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069176, 0.081888, 0.994238,
		0.483517, 0.874493, -0.038384,
		-0.872598, 0.478075, -0.100088,
		30.611786, 33.487736, 24.467999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266201, 33.816414, 24.886456>,  <31.222605, 33.153084, 24.538061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266201, 33.816414, 24.886456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880360, 33.715981, 24.854221>,  <30.648855, 33.655720, 24.834881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880360, 33.715981, 24.854221>,  <31.266201, 33.816414, 24.886456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880360, 33.715981, 24.854221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117708, 0.136511, 0.983621,
		-0.235971, 0.958291, -0.161234,
		-0.964605, -0.251084, -0.080586,
		30.590979, 33.640656, 24.830046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871883, 34.324242, 25.308090>,  <31.266201, 33.816414, 24.886456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871883, 34.324242, 25.308090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613089, 34.020409, 25.281412>,  <30.457811, 33.838108, 25.265406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613089, 34.020409, 25.281412>,  <30.871883, 34.324242, 25.308090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613089, 34.020409, 25.281412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160083, 0.049793, 0.985847,
		-0.745510, 0.648504, -0.153811,
		-0.646985, -0.759581, -0.066693,
		30.418993, 33.792534, 25.261404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178667, 34.554340, 25.718433>,  <30.871883, 34.324242, 25.308090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178667, 34.554340, 25.718433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180897, 34.155231, 25.691839>,  <30.182234, 33.915768, 25.675882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180897, 34.155231, 25.691839>,  <30.178667, 34.554340, 25.718433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180897, 34.155231, 25.691839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252042, -0.065741, 0.965481,
		-0.967700, 0.011375, -0.251847,
		0.005574, -0.997772, -0.066485,
		30.182570, 33.855900, 25.671894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612965, 34.333286, 26.005604>,  <30.178667, 34.554340, 25.718433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612965, 34.333286, 26.005604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850079, 34.011307, 26.015865>,  <29.992348, 33.818119, 26.022022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850079, 34.011307, 26.015865>,  <29.612965, 34.333286, 26.005604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850079, 34.011307, 26.015865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154202, -0.082178, 0.984616,
		-0.790461, -0.587621, -0.172839,
		0.592784, -0.804953, 0.025654,
		30.027914, 33.769821, 26.023561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282322, 33.843269, 26.583370>,  <29.612965, 34.333286, 26.005604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282322, 33.843269, 26.583370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641947, 33.672348, 26.545204>,  <29.857721, 33.569794, 26.522305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641947, 33.672348, 26.545204>,  <29.282322, 33.843269, 26.583370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641947, 33.672348, 26.545204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007762, -0.233451, 0.972338,
		-0.437756, -0.873449, -0.213203,
		0.899060, -0.427302, -0.095415,
		29.911665, 33.544159, 26.516581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332212, 33.166130, 26.947414>,  <29.282322, 33.843269, 26.583370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332212, 33.166130, 26.947414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715237, 33.278408, 26.921230>,  <29.945051, 33.345776, 26.905519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715237, 33.278408, 26.921230>,  <29.332212, 33.166130, 26.947414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715237, 33.278408, 26.921230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126020, -0.203475, 0.970936,
		0.259221, -0.937980, -0.230213,
		0.957561, 0.280698, -0.065459,
		30.002504, 33.362617, 26.901592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744043, 32.637192, 27.383215>,  <29.332212, 33.166130, 26.947414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744043, 32.637192, 27.383215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.981611, 32.954067, 27.327080>,  <30.124151, 33.144192, 27.293400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.981611, 32.954067, 27.327080>,  <29.744043, 32.637192, 27.383215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981611, 32.954067, 27.327080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382711, -0.124761, 0.915405,
		0.707667, -0.597385, -0.377278,
		0.593919, 0.792190, -0.140337,
		30.159786, 33.191723, 27.284979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445961, 32.386002, 27.631510>,  <29.744043, 32.637192, 27.383215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445961, 32.386002, 27.631510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.406815, 32.783466, 27.653614>,  <30.383326, 33.021946, 27.666878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.406815, 32.783466, 27.653614>,  <30.445961, 32.386002, 27.631510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406815, 32.783466, 27.653614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274786, -0.026389, 0.961143,
		0.956512, 0.109250, -0.270463,
		-0.097868, 0.993664, 0.055262,
		30.377455, 33.081566, 27.670193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079187, 32.710163, 27.856970>,  <30.445961, 32.386002, 27.631510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079187, 32.710163, 27.856970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804247, 32.980667, 27.962969>,  <30.639282, 33.142971, 28.026567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804247, 32.980667, 27.962969>,  <31.079187, 32.710163, 27.856970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804247, 32.980667, 27.962969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353175, -0.007626, 0.935526,
		0.634680, 0.736624, -0.233597,
		-0.687349, 0.676260, 0.264997,
		30.598042, 33.183544, 28.042467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.826038, 34.132553, 31.032309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.608128, 34.431252, 31.184931>,  <35.477383, 34.610470, 31.276505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.608128, 34.431252, 31.184931>,  <35.826038, 34.132553, 31.032309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608128, 34.431252, 31.184931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620009, 0.052318, 0.782849,
		0.564630, 0.663045, -0.491492,
		-0.544777, 0.746749, 0.381553,
		35.444695, 34.655277, 31.299397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206535, 34.665306, 31.281933>,  <35.826038, 34.132553, 31.032309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206535, 34.665306, 31.281933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887768, 34.728035, 31.515280>,  <35.696507, 34.765675, 31.655289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887768, 34.728035, 31.515280>,  <36.206535, 34.665306, 31.281933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887768, 34.728035, 31.515280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593011, 0.019064, 0.804969,
		0.115118, 0.987442, -0.108191,
		-0.796923, 0.156825, 0.583369,
		35.648689, 34.775082, 31.690290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482655, 34.953976, 31.899334>,  <36.206535, 34.665306, 31.281933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482655, 34.953976, 31.899334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.104107, 34.869995, 31.997564>,  <35.876980, 34.819607, 32.056503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.104107, 34.869995, 31.997564>,  <36.482655, 34.953976, 31.899334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104107, 34.869995, 31.997564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247984, 0.015200, 0.968645,
		-0.207102, 0.977593, 0.037680,
		-0.946368, -0.209953, 0.245576,
		35.820198, 34.807011, 32.071236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334030, 35.611996, 32.267788>,  <36.482655, 34.953976, 31.899334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334030, 35.611996, 32.267788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065727, 35.326412, 32.348141>,  <35.904747, 35.155064, 32.396355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065727, 35.326412, 32.348141>,  <36.334030, 35.611996, 32.267788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065727, 35.326412, 32.348141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161046, 0.124186, 0.979103,
		-0.723985, 0.689088, 0.031681,
		-0.670753, -0.713958, 0.200884,
		35.864502, 35.112225, 32.408405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877029, 35.942474, 32.773712>,  <36.334030, 35.611996, 32.267788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877029, 35.942474, 32.773712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.877342, 35.544441, 32.813316>,  <35.877529, 35.305622, 32.837078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.877342, 35.544441, 32.813316>,  <35.877029, 35.942474, 32.773712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877342, 35.544441, 32.813316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268790, 0.095579, 0.958445,
		-0.963199, 0.025867, 0.267544,
		0.000780, -0.995086, 0.099014,
		35.877575, 35.245914, 32.843021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579521, 35.851158, 33.463032>,  <35.877029, 35.942474, 32.773712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579521, 35.851158, 33.463032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.733727, 35.490253, 33.385784>,  <35.826252, 35.273708, 33.339436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.733727, 35.490253, 33.385784>,  <35.579521, 35.851158, 33.463032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733727, 35.490253, 33.385784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246567, -0.100948, 0.963854,
		-0.889147, -0.419197, 0.183552,
		0.385516, -0.902266, -0.193117,
		35.849380, 35.219574, 33.327850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334263, 35.322193, 33.894310>,  <35.579521, 35.851158, 33.463032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334263, 35.322193, 33.894310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.684708, 35.172211, 33.773094>,  <35.894974, 35.082222, 33.700363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.684708, 35.172211, 33.773094>,  <35.334263, 35.322193, 33.894310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684708, 35.172211, 33.773094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318330, -0.022147, 0.947721,
		-0.362064, -0.926778, 0.099956,
		0.876114, -0.374955, -0.303040,
		35.947540, 35.059723, 33.682182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378544, 34.818180, 34.294605>,  <35.334263, 35.322193, 33.894310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378544, 34.818180, 34.294605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.752449, 34.879910, 34.166599>,  <35.976791, 34.916946, 34.089794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.752449, 34.879910, 34.166599>,  <35.378544, 34.818180, 34.294605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752449, 34.879910, 34.166599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349242, -0.233740, 0.907412,
		0.065235, -0.959974, -0.272387,
		0.934759, 0.154324, -0.320015,
		36.032875, 34.926205, 34.070595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751709, 34.207726, 34.544197>,  <35.378544, 34.818180, 34.294605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751709, 34.207726, 34.544197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.000950, 34.512390, 34.473068>,  <36.150494, 34.695190, 34.430393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.000950, 34.512390, 34.473068>,  <35.751709, 34.207726, 34.544197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000950, 34.512390, 34.473068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518584, -0.232122, 0.822916,
		0.585507, -0.604972, -0.539620,
		0.623098, 0.761661, -0.177820,
		36.187878, 34.740891, 34.419724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512821, 33.904758, 34.778595>,  <35.751709, 34.207726, 34.544197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512821, 33.904758, 34.778595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.504742, 34.302784, 34.739712>,  <36.499893, 34.541599, 34.716381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.504742, 34.302784, 34.739712>,  <36.512821, 33.904758, 34.778595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504742, 34.302784, 34.739712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409814, 0.096921, 0.907005,
		0.911945, -0.021519, -0.409747,
		-0.020195, 0.995059, -0.097205,
		36.498684, 34.601303, 34.710548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132656, 34.087570, 35.143761>,  <36.512821, 33.904758, 34.778595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132656, 34.087570, 35.143761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.928230, 34.430618, 35.120758>,  <36.805576, 34.636448, 35.106956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.928230, 34.430618, 35.120758>,  <37.132656, 34.087570, 35.143761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928230, 34.430618, 35.120758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315949, 0.249659, 0.915340,
		0.799368, 0.449629, -0.398555,
		-0.511066, 0.857616, -0.057510,
		36.774910, 34.687904, 35.103504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644119, 34.772480, 35.229385>,  <37.132656, 34.087570, 35.143761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644119, 34.772480, 35.229385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.273026, 34.883282, 35.329453>,  <37.050369, 34.949760, 35.389492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.273026, 34.883282, 35.329453>,  <37.644119, 34.772480, 35.229385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273026, 34.883282, 35.329453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337082, 0.333994, 0.880240,
		0.160274, 0.900954, -0.403230,
		-0.927733, 0.277001, 0.250165,
		36.994705, 34.966381, 35.404503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785156, 35.414551, 35.569561>,  <37.644119, 34.772480, 35.229385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785156, 35.414551, 35.569561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413815, 35.314732, 35.679749>,  <37.191010, 35.254841, 35.745861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413815, 35.314732, 35.679749>,  <37.785156, 35.414551, 35.569561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413815, 35.314732, 35.679749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207709, 0.266306, 0.941243,
		-0.308248, 0.931024, -0.195392,
		-0.928353, -0.249552, 0.275471,
		37.135307, 35.239864, 35.762390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487827, 35.983028, 36.072548>,  <37.785156, 35.414551, 35.569561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487827, 35.983028, 36.072548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368252, 35.604053, 36.118145>,  <37.296505, 35.376667, 36.145504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368252, 35.604053, 36.118145>,  <37.487827, 35.983028, 36.072548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368252, 35.604053, 36.118145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383552, -0.009910, 0.923466,
		-0.873797, 0.319786, 0.366355,
		-0.298942, -0.947438, 0.113995,
		37.278568, 35.319820, 36.152344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206894, 36.262974, 36.103546>,  <37.487827, 35.983028, 36.072548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206894, 36.262974, 36.103546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.498276, 36.536987, 36.099964>,  <38.673107, 36.701393, 36.097816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.498276, 36.536987, 36.099964>,  <38.206894, 36.262974, 36.103546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498276, 36.536987, 36.099964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396601, 0.411013, -0.820839,
		-0.558619, 0.601499, 0.571090,
		0.728459, 0.685031, -0.008956,
		38.716812, 36.742496, 36.097279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929886, 36.907349, 36.093235>,  <38.206894, 36.262974, 36.103546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929886, 36.907349, 36.093235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.286598, 36.935574, 35.914463>,  <38.500626, 36.952511, 35.807198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.286598, 36.935574, 35.914463>,  <37.929886, 36.907349, 36.093235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286598, 36.935574, 35.914463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417952, 0.506863, -0.753927,
		0.173332, 0.859134, 0.481504,
		0.891781, 0.070566, -0.446932,
		38.554131, 36.956745, 35.780384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096539, 37.572739, 36.031567>,  <37.929886, 36.907349, 36.093235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096539, 37.572739, 36.031567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323864, 37.406986, 35.747227>,  <38.460258, 37.307537, 35.576622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323864, 37.406986, 35.747227>,  <38.096539, 37.572739, 36.031567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323864, 37.406986, 35.747227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289988, 0.707627, -0.644338,
		0.770017, 0.572325, 0.281990,
		0.568314, -0.414377, -0.710852,
		38.494358, 37.282673, 35.533970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477448, 38.136639, 35.765697>,  <38.096539, 37.572739, 36.031567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477448, 38.136639, 35.765697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503704, 37.837635, 35.501297>,  <38.519459, 37.658234, 35.342655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503704, 37.837635, 35.501297>,  <38.477448, 38.136639, 35.765697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503704, 37.837635, 35.501297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244772, 0.630130, -0.736901,
		0.967356, 0.210167, -0.141606,
		0.065642, -0.747507, -0.661003,
		38.523396, 37.613384, 35.302998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828434, 38.411510, 35.207943>,  <38.477448, 38.136639, 35.765697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828434, 38.411510, 35.207943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.622269, 38.100376, 35.064102>,  <38.498569, 37.913696, 34.977798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.622269, 38.100376, 35.064102>,  <38.828434, 38.411510, 35.207943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622269, 38.100376, 35.064102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172508, 0.505221, -0.845573,
		0.839398, -0.373786, -0.394582,
		-0.515414, -0.777841, -0.359600,
		38.467644, 37.867023, 34.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931229, 38.363880, 34.475925>,  <38.828434, 38.411510, 35.207943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931229, 38.363880, 34.475925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.602871, 38.137249, 34.504574>,  <38.405857, 38.001270, 34.521763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.602871, 38.137249, 34.504574>,  <38.931229, 38.363880, 34.475925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602871, 38.137249, 34.504574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280127, 0.290189, -0.915051,
		0.497663, -0.771220, -0.396927,
		-0.820890, -0.566578, 0.071623,
		38.356606, 37.967278, 34.526062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836105, 38.251385, 33.779694>,  <38.931229, 38.363880, 34.475925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836105, 38.251385, 33.779694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.490578, 38.140549, 33.947994>,  <38.283260, 38.074047, 34.048973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.490578, 38.140549, 33.947994>,  <38.836105, 38.251385, 33.779694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490578, 38.140549, 33.947994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462946, 0.107158, -0.879885,
		0.198725, -0.954849, -0.220845,
		-0.863822, -0.277095, 0.420749,
		38.231430, 38.057423, 34.074219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591099, 37.832848, 33.265244>,  <38.836105, 38.251385, 33.779694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591099, 37.832848, 33.265244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.281761, 37.915970, 33.504829>,  <38.096161, 37.965843, 33.648582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.281761, 37.915970, 33.504829>,  <38.591099, 37.832848, 33.265244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281761, 37.915970, 33.504829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611281, 0.006194, -0.791390,
		-0.168165, -0.978151, 0.122238,
		-0.773341, 0.207806, 0.598966,
		38.049759, 37.978310, 33.684521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081078, 37.282948, 33.153526>,  <38.591099, 37.832848, 33.265244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081078, 37.282948, 33.153526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890694, 37.605679, 33.293522>,  <37.776463, 37.799316, 33.377518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890694, 37.605679, 33.293522>,  <38.081078, 37.282948, 33.153526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890694, 37.605679, 33.293522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556420, 0.031922, -0.830288,
		-0.681074, -0.589919, 0.433744,
		-0.475957, 0.806831, 0.349984,
		37.747906, 37.847729, 33.398518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397549, 37.278778, 32.838146>,  <38.081078, 37.282948, 33.153526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397549, 37.278778, 32.838146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400707, 37.659180, 32.961773>,  <37.402603, 37.887421, 33.035950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400707, 37.659180, 32.961773>,  <37.397549, 37.278778, 32.838146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400707, 37.659180, 32.961773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673013, 0.233648, -0.701756,
		-0.739588, -0.202462, 0.641887,
		0.007897, 0.951009, 0.309063,
		37.403076, 37.944481, 33.054493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715164, 37.556591, 32.832436>,  <37.397549, 37.278778, 32.838146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715164, 37.556591, 32.832436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935368, 37.890522, 32.831211>,  <37.067490, 38.090881, 32.830479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935368, 37.890522, 32.831211>,  <36.715164, 37.556591, 32.832436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935368, 37.890522, 32.831211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545922, 0.357221, -0.757867,
		-0.631593, 0.418882, 0.652402,
		0.550508, 0.834824, -0.003058,
		37.100521, 38.140968, 32.830292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209511, 38.128403, 32.626133>,  <36.715164, 37.556591, 32.832436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209511, 38.128403, 32.626133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586266, 38.244553, 32.558567>,  <36.812317, 38.314243, 32.518028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586266, 38.244553, 32.558567>,  <36.209511, 38.128403, 32.626133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586266, 38.244553, 32.558567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266524, 0.339854, -0.901922,
		-0.204488, 0.894529, 0.397496,
		0.941886, 0.290375, -0.168917,
		36.868832, 38.331665, 32.507893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154896, 38.742821, 32.203659>,  <36.209511, 38.128403, 32.626133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154896, 38.742821, 32.203659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526196, 38.602776, 32.153412>,  <36.748974, 38.518749, 32.123264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526196, 38.602776, 32.153412>,  <36.154896, 38.742821, 32.203659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526196, 38.602776, 32.153412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075608, 0.153071, -0.985318,
		0.364205, 0.924114, 0.115616,
		0.928245, -0.350116, -0.125620,
		36.804668, 38.497742, 32.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462292, 39.250969, 31.773695>,  <36.154896, 38.742821, 32.203659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462292, 39.250969, 31.773695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.658058, 38.903942, 31.738382>,  <36.775517, 38.695724, 31.717194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.658058, 38.903942, 31.738382>,  <36.462292, 39.250969, 31.773695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658058, 38.903942, 31.738382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032594, 0.082968, -0.996019,
		0.871442, 0.490344, 0.012328,
		0.489415, -0.867571, -0.088284,
		36.804882, 38.643669, 31.711897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632076, 39.804379, 31.472324>,  <36.462292, 39.250969, 31.773695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632076, 39.804379, 31.472324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.298359, 40.020363, 31.427773>,  <36.098129, 40.149952, 31.401041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.298359, 40.020363, 31.427773>,  <36.632076, 39.804379, 31.472324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298359, 40.020363, 31.427773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050010, 0.127070, 0.990632,
		0.549055, 0.832044, -0.079010,
		-0.834289, 0.539960, -0.111379,
		36.048073, 40.182350, 31.394360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662750, 40.228004, 32.000572>,  <36.632076, 39.804379, 31.472324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662750, 40.228004, 32.000572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.280342, 40.243584, 31.884295>,  <36.050896, 40.252930, 31.814529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.280342, 40.243584, 31.884295>,  <36.662750, 40.228004, 32.000572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280342, 40.243584, 31.884295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289425, 0.035043, 0.956559,
		0.047441, 0.998627, -0.022230,
		-0.956024, 0.038946, -0.290690,
		35.993534, 40.255268, 31.797087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432457, 40.684090, 32.392120>,  <36.662750, 40.228004, 32.000572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432457, 40.684090, 32.392120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101772, 40.490108, 32.278015>,  <35.903362, 40.373718, 32.209553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101772, 40.490108, 32.278015>,  <36.432457, 40.684090, 32.392120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101772, 40.490108, 32.278015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379638, 0.106611, 0.918972,
		-0.415248, 0.868017, -0.272243,
		-0.826707, -0.484955, -0.285262,
		35.853760, 40.344624, 32.192436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901920, 41.109901, 32.589760>,  <36.432457, 40.684090, 32.392120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901920, 41.109901, 32.589760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.711380, 40.764030, 32.525978>,  <35.597057, 40.556507, 32.487709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.711380, 40.764030, 32.525978>,  <35.901920, 41.109901, 32.589760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711380, 40.764030, 32.525978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312865, -0.002791, 0.949794,
		-0.821709, 0.502322, -0.269197,
		-0.476351, -0.864676, -0.159453,
		35.568474, 40.504627, 32.478142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310562, 41.173058, 32.822483>,  <35.901920, 41.109901, 32.589760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310562, 41.173058, 32.822483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331848, 40.773891, 32.807869>,  <35.344620, 40.534393, 32.799099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.331848, 40.773891, 32.807869>,  <35.310562, 41.173058, 32.822483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331848, 40.773891, 32.807869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433389, -0.056042, 0.899463,
		-0.899635, -0.032027, -0.435468,
		0.053212, -0.997914, -0.036537,
		35.347813, 40.474518, 32.796909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700123, 40.944984, 33.131908>,  <35.310562, 41.173058, 32.822483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700123, 40.944984, 33.131908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.968525, 40.649956, 33.162186>,  <35.129566, 40.472939, 33.180351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.968525, 40.649956, 33.162186>,  <34.700123, 40.944984, 33.131908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968525, 40.649956, 33.162186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249790, -0.128759, 0.959701,
		-0.698106, -0.662876, -0.270637,
		0.671009, -0.737575, 0.075692,
		35.169827, 40.428684, 33.184895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390938, 40.353985, 33.510651>,  <34.700123, 40.944984, 33.131908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390938, 40.353985, 33.510651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.786293, 40.304375, 33.545769>,  <35.023506, 40.274609, 33.566841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.786293, 40.304375, 33.545769>,  <34.390938, 40.353985, 33.510651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786293, 40.304375, 33.545769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090269, -0.014457, 0.995813,
		-0.122237, -0.992174, -0.025485,
		0.988387, -0.124025, 0.087796,
		35.082809, 40.267166, 33.572109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470428, 39.740997, 33.964790>,  <34.390938, 40.353985, 33.510651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470428, 39.740997, 33.964790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.806530, 39.956623, 33.988033>,  <35.008190, 40.085999, 34.001980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.806530, 39.956623, 33.988033>,  <34.470428, 39.740997, 33.964790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806530, 39.956623, 33.988033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041162, -0.170292, 0.984533,
		0.540625, -0.824868, -0.165278,
		0.840256, 0.539067, 0.058111,
		35.058605, 40.118343, 34.005466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965069, 39.289204, 34.221897>,  <34.470428, 39.740997, 33.964790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965069, 39.289204, 34.221897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093739, 39.660999, 34.294090>,  <35.170940, 39.884079, 34.337406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093739, 39.660999, 34.294090>,  <34.965069, 39.289204, 34.221897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093739, 39.660999, 34.294090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289800, -0.278114, 0.915789,
		0.901412, -0.242280, -0.358827,
		0.321672, 0.929491, 0.180483,
		35.190239, 39.939846, 34.348236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544365, 39.203915, 34.774532>,  <34.965069, 39.289204, 34.221897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544365, 39.203915, 34.774532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.472851, 39.597122, 34.791058>,  <35.429943, 39.833046, 34.800972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.472851, 39.597122, 34.791058>,  <35.544365, 39.203915, 34.774532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472851, 39.597122, 34.791058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273147, 0.009253, 0.961928,
		0.945213, 0.183260, -0.270163,
		-0.178783, 0.983021, 0.041311,
		35.419216, 39.892029, 34.803452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024982, 39.495644, 35.175495>,  <35.544365, 39.203915, 34.774532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024982, 39.495644, 35.175495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770046, 39.803867, 35.178024>,  <35.617085, 39.988800, 35.179543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770046, 39.803867, 35.178024>,  <36.024982, 39.495644, 35.175495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770046, 39.803867, 35.178024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163896, 0.127530, 0.978200,
		0.752949, 0.624485, -0.207571,
		-0.637342, 0.770555, 0.006327,
		35.578842, 40.035034, 35.179924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291435, 39.899158, 35.637394>,  <36.024982, 39.495644, 35.175495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291435, 39.899158, 35.637394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.906780, 40.008602, 35.629421>,  <35.675987, 40.074268, 35.624638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.906780, 40.008602, 35.629421>,  <36.291435, 39.899158, 35.637394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906780, 40.008602, 35.629421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014211, 0.122252, 0.992397,
		0.273970, 0.954039, -0.121450,
		-0.961633, 0.273613, -0.019936,
		35.618290, 40.090687, 35.623440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.079277, 40.209873, 27.448658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698551, 40.211143, 27.571316>,  <35.470116, 40.211906, 27.644911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698551, 40.211143, 27.571316>,  <36.079277, 40.209873, 27.448658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698551, 40.211143, 27.571316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302506, 0.173810, 0.937166,
		-0.050323, 0.984774, -0.166396,
		-0.951818, 0.003175, 0.306646,
		35.413006, 40.212097, 27.663309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063057, 40.830582, 27.936220>,  <36.079277, 40.209873, 27.448658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063057, 40.830582, 27.936220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750645, 40.589977, 28.003361>,  <35.563198, 40.445614, 28.043646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750645, 40.589977, 28.003361>,  <36.063057, 40.830582, 27.936220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750645, 40.589977, 28.003361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038067, 0.222425, 0.974207,
		-0.623329, 0.767277, -0.150823,
		-0.781033, -0.601510, 0.167851,
		35.516335, 40.409523, 28.053717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622307, 41.245354, 28.376551>,  <36.063057, 40.830582, 27.936220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622307, 41.245354, 28.376551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523056, 40.862011, 28.433088>,  <35.463505, 40.632004, 28.467010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523056, 40.862011, 28.433088>,  <35.622307, 41.245354, 28.376551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523056, 40.862011, 28.433088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001646, 0.145490, 0.989358,
		-0.968726, 0.245719, -0.034522,
		-0.248127, -0.958360, 0.141344,
		35.448616, 40.574501, 28.475491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195244, 41.282753, 28.946976>,  <35.622307, 41.245354, 28.376551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195244, 41.282753, 28.946976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316929, 40.901794, 28.938978>,  <35.389942, 40.673222, 28.934179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316929, 40.901794, 28.938978>,  <35.195244, 41.282753, 28.946976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316929, 40.901794, 28.938978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022878, -0.028286, 0.999338,
		-0.952329, -0.303556, -0.030394,
		0.304215, -0.952394, -0.019993,
		35.408192, 40.616077, 28.932980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775257, 41.022953, 29.485630>,  <35.195244, 41.282753, 28.946976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775257, 41.022953, 29.485630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076733, 40.767891, 29.421947>,  <35.257618, 40.614853, 29.383738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076733, 40.767891, 29.421947>,  <34.775257, 41.022953, 29.485630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076733, 40.767891, 29.421947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025643, -0.213524, 0.976601,
		-0.656732, -0.740135, -0.144579,
		0.753688, -0.637657, -0.159207,
		35.302837, 40.576595, 29.374186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625053, 40.351433, 29.802769>,  <34.775257, 41.022953, 29.485630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625053, 40.351433, 29.802769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023758, 40.336987, 29.774054>,  <35.262981, 40.328320, 29.756824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023758, 40.336987, 29.774054>,  <34.625053, 40.351433, 29.802769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023758, 40.336987, 29.774054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056260, -0.324278, 0.944287,
		-0.057380, -0.945272, -0.321197,
		0.996766, -0.036112, -0.071788,
		35.322788, 40.326153, 29.752518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764885, 39.847214, 30.244528>,  <34.625053, 40.351433, 29.802769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764885, 39.847214, 30.244528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119919, 40.026413, 30.201647>,  <35.332939, 40.133930, 30.175919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119919, 40.026413, 30.201647>,  <34.764885, 39.847214, 30.244528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119919, 40.026413, 30.201647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287131, -0.356086, 0.889246,
		0.360207, -0.820063, -0.444690,
		0.887585, 0.447996, -0.107201,
		35.386196, 40.160812, 30.169487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275925, 39.419327, 30.524780>,  <34.764885, 39.847214, 30.244528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275925, 39.419327, 30.524780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455452, 39.776695, 30.532402>,  <35.563168, 39.991116, 30.536974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455452, 39.776695, 30.532402>,  <35.275925, 39.419327, 30.524780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455452, 39.776695, 30.532402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283685, -0.162666, 0.945020,
		0.847398, -0.418739, -0.326457,
		0.448820, 0.893419, 0.019053,
		35.590099, 40.044720, 30.538118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955883, 39.301086, 30.821720>,  <35.275925, 39.419327, 30.524780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955883, 39.301086, 30.821720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888756, 39.691998, 30.873520>,  <35.848480, 39.926544, 30.904600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888756, 39.691998, 30.873520>,  <35.955883, 39.301086, 30.821720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888756, 39.691998, 30.873520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146260, -0.105225, 0.983634,
		0.974907, 0.184016, -0.125277,
		-0.167822, 0.977275, 0.129499,
		35.838409, 39.985180, 30.912369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785797, 39.267010, 31.016048>,  <35.955883, 39.301086, 30.821720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785797, 39.267010, 31.016048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835773, 38.886284, 31.128073>,  <36.865757, 38.657848, 31.195288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835773, 38.886284, 31.128073>,  <36.785797, 39.267010, 31.016048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835773, 38.886284, 31.128073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321153, -0.228279, -0.919103,
		0.938750, 0.204772, 0.277158,
		0.124937, -0.951818, 0.280060,
		36.873253, 38.600739, 31.212091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399864, 39.053638, 30.659618>,  <36.785797, 39.267010, 31.016048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399864, 39.053638, 30.659618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205627, 38.721157, 30.767916>,  <37.089085, 38.521667, 30.832893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205627, 38.721157, 30.767916>,  <37.399864, 39.053638, 30.659618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205627, 38.721157, 30.767916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134070, -0.376854, -0.916519,
		0.863844, -0.408756, 0.294436,
		-0.485592, -0.831204, 0.270741,
		37.059952, 38.471794, 30.849138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826744, 38.462364, 30.325529>,  <37.399864, 39.053638, 30.659618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826744, 38.462364, 30.325529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468208, 38.311939, 30.419466>,  <37.253086, 38.221684, 30.475828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468208, 38.311939, 30.419466>,  <37.826744, 38.462364, 30.325529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468208, 38.311939, 30.419466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034227, -0.586790, -0.809015,
		0.442047, -0.717114, 0.538834,
		-0.896338, -0.376065, 0.234844,
		37.199306, 38.199120, 30.489920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858891, 37.795555, 30.258394>,  <37.826744, 38.462364, 30.325529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858891, 37.795555, 30.258394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466465, 37.861309, 30.217426>,  <37.231010, 37.900761, 30.192846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466465, 37.861309, 30.217426>,  <37.858891, 37.795555, 30.258394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466465, 37.861309, 30.217426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006144, -0.502114, -0.864780,
		-0.193585, -0.849034, 0.491596,
		-0.981064, 0.164388, -0.102418,
		37.172146, 37.910625, 30.186701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661953, 37.149174, 30.058916>,  <37.858891, 37.795555, 30.258394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661953, 37.149174, 30.058916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362980, 37.394737, 29.957363>,  <37.183598, 37.542076, 29.896431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362980, 37.394737, 29.957363>,  <37.661953, 37.149174, 30.058916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362980, 37.394737, 29.957363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228033, -0.596023, -0.769908,
		-0.623979, -0.517558, 0.585478,
		-0.747430, 0.613914, -0.253885,
		37.138752, 37.578911, 29.881199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099274, 36.657848, 29.840544>,  <37.661953, 37.149174, 30.058916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099274, 36.657848, 29.840544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028667, 37.010403, 29.665274>,  <36.986301, 37.221935, 29.560112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028667, 37.010403, 29.665274>,  <37.099274, 36.657848, 29.840544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028667, 37.010403, 29.665274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044848, -0.437502, -0.898098,
		-0.983275, -0.178182, 0.037699,
		-0.176518, 0.881387, -0.438176,
		36.975712, 37.274818, 29.533821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684341, 36.458786, 29.330923>,  <37.099274, 36.657848, 29.840544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684341, 36.458786, 29.330923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787838, 36.828941, 29.220135>,  <36.849937, 37.051033, 29.153662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787838, 36.828941, 29.220135>,  <36.684341, 36.458786, 29.330923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787838, 36.828941, 29.220135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182498, -0.234737, -0.954773,
		-0.948550, 0.297586, 0.108145,
		0.258741, 0.925387, -0.276969,
		36.865459, 37.106556, 29.137043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168259, 36.664822, 28.819675>,  <36.684341, 36.458786, 29.330923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168259, 36.664822, 28.819675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471523, 36.916737, 28.752089>,  <36.653484, 37.067886, 28.711536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471523, 36.916737, 28.752089>,  <36.168259, 36.664822, 28.819675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471523, 36.916737, 28.752089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082879, -0.163954, -0.982980,
		-0.646774, 0.759266, -0.072108,
		0.758165, 0.629789, -0.168969,
		36.698975, 37.105675, 28.701399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899563, 37.169785, 28.304132>,  <36.168259, 36.664822, 28.819675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899563, 37.169785, 28.304132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298752, 37.150616, 28.287382>,  <36.538265, 37.139114, 28.277332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298752, 37.150616, 28.287382>,  <35.899563, 37.169785, 28.304132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298752, 37.150616, 28.287382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044859, -0.062925, -0.997010,
		0.045142, 0.996867, -0.064947,
		0.997973, -0.047920, -0.041878,
		36.598145, 37.136238, 28.274818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132473, 37.513264, 27.671381>,  <35.899563, 37.169785, 28.304132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132473, 37.513264, 27.671381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460442, 37.293022, 27.734074>,  <36.657223, 37.160877, 27.771688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460442, 37.293022, 27.734074>,  <36.132473, 37.513264, 27.671381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460442, 37.293022, 27.734074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014890, -0.294194, -0.955630,
		0.572282, 0.781208, -0.249414,
		0.819921, -0.550604, 0.156730,
		36.706417, 37.127842, 27.781094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559689, 37.693924, 27.148018>,  <36.132473, 37.513264, 27.671381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559689, 37.693924, 27.148018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691212, 37.342346, 27.286198>,  <36.770126, 37.131397, 27.369104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691212, 37.342346, 27.286198>,  <36.559689, 37.693924, 27.148018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691212, 37.342346, 27.286198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096384, -0.332645, -0.938114,
		0.939466, 0.341754, -0.024659,
		0.328807, -0.878949, 0.345448,
		36.789852, 37.078663, 27.389832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064407, 37.536911, 26.783689>,  <36.559689, 37.693924, 27.148018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064407, 37.536911, 26.783689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922550, 37.195824, 26.937105>,  <36.837437, 36.991173, 27.029154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922550, 37.195824, 26.937105>,  <37.064407, 37.536911, 26.783689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922550, 37.195824, 26.937105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028034, -0.400317, -0.915948,
		0.934583, -0.335583, 0.118063,
		-0.354640, -0.852719, 0.383537,
		36.816158, 36.940006, 27.052166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396572, 37.002655, 26.378349>,  <37.064407, 37.536911, 26.783689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396572, 37.002655, 26.378349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104153, 36.794807, 26.555237>,  <36.928699, 36.670097, 26.661369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104153, 36.794807, 26.555237>,  <37.396572, 37.002655, 26.378349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104153, 36.794807, 26.555237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241312, -0.409330, -0.879896,
		0.638226, -0.749963, 0.173851,
		-0.731051, -0.519620, 0.442220,
		36.884838, 36.638920, 26.687902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464233, 36.258244, 26.143724>,  <37.396572, 37.002655, 26.378349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464233, 36.258244, 26.143724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083191, 36.317036, 26.250257>,  <36.854565, 36.352310, 26.314177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083191, 36.317036, 26.250257>,  <37.464233, 36.258244, 26.143724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083191, 36.317036, 26.250257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303902, -0.421175, -0.854549,
		-0.013432, -0.894990, 0.445884,
		-0.952608, 0.146983, 0.266332,
		36.797409, 36.361130, 26.330156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.750307, 36.048405, 26.606047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.131668, 36.149323, 26.672224>,  <29.360485, 36.209873, 26.711931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.131668, 36.149323, 26.672224>,  <28.750307, 36.048405, 26.606047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131668, 36.149323, 26.672224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127124, -0.161381, 0.978671,
		0.273609, -0.954099, -0.121789,
		0.953403, 0.252291, 0.165444,
		29.417688, 36.225010, 26.721857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883846, 35.588741, 27.089951>,  <28.750307, 36.048405, 26.606047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883846, 35.588741, 27.089951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.199528, 35.826649, 27.151150>,  <29.388937, 35.969395, 27.187868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.199528, 35.826649, 27.151150>,  <28.883846, 35.588741, 27.089951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199528, 35.826649, 27.151150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105776, -0.113760, 0.987861,
		0.604957, -0.795805, -0.026867,
		0.789202, 0.594772, 0.152997,
		29.436289, 36.005081, 27.197048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302038, 35.277122, 27.603649>,  <28.883846, 35.588741, 27.089951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302038, 35.277122, 27.603649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441196, 35.652100, 27.608908>,  <29.524693, 35.877087, 27.612062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441196, 35.652100, 27.608908>,  <29.302038, 35.277122, 27.603649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441196, 35.652100, 27.608908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025906, -0.004404, 0.999655,
		0.937175, -0.348117, 0.022753,
		0.347897, 0.937441, 0.013145,
		29.545565, 35.933331, 27.612852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907722, 35.316963, 28.047218>,  <29.302038, 35.277122, 27.603649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907722, 35.316963, 28.047218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.786087, 35.697609, 28.029486>,  <29.713106, 35.925995, 28.018847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.786087, 35.697609, 28.029486>,  <29.907722, 35.316963, 28.047218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786087, 35.697609, 28.029486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236703, 0.120549, 0.964074,
		0.922768, 0.282672, -0.261907,
		-0.304089, 0.951612, -0.044330,
		29.694860, 35.983093, 28.016188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467573, 35.666916, 28.392262>,  <29.907722, 35.316963, 28.047218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467573, 35.666916, 28.392262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.150627, 35.910507, 28.377813>,  <29.960461, 36.056664, 28.369144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.150627, 35.910507, 28.377813>,  <30.467573, 35.666916, 28.392262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150627, 35.910507, 28.377813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208791, 0.326344, 0.921903,
		0.573208, 0.722941, -0.385733,
		-0.792363, 0.608980, -0.036119,
		29.912918, 36.093201, 28.366978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704678, 36.264099, 28.612844>,  <30.467573, 35.666916, 28.392262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704678, 36.264099, 28.612844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.309498, 36.276318, 28.673531>,  <30.072390, 36.283649, 28.709942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.309498, 36.276318, 28.673531>,  <30.704678, 36.264099, 28.612844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309498, 36.276318, 28.673531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154252, 0.114856, 0.981333,
		0.012551, 0.992912, -0.118184,
		-0.987952, 0.030547, 0.151718,
		30.013113, 36.285480, 28.719046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603750, 36.802490, 29.120977>,  <30.704678, 36.264099, 28.612844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603750, 36.802490, 29.120977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.275476, 36.575516, 29.147778>,  <30.078512, 36.439331, 29.163857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.275476, 36.575516, 29.147778>,  <30.603750, 36.802490, 29.120977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275476, 36.575516, 29.147778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013186, 0.098418, 0.995058,
		-0.571230, 0.817512, -0.073288,
		-0.820684, -0.567440, 0.066999,
		30.029272, 36.405285, 29.167877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355742, 37.007580, 29.698704>,  <30.603750, 36.802490, 29.120977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355742, 37.007580, 29.698704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.176418, 36.655846, 29.634462>,  <30.068825, 36.444805, 29.595917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.176418, 36.655846, 29.634462>,  <30.355742, 37.007580, 29.698704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176418, 36.655846, 29.634462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020422, -0.169547, 0.985310,
		-0.893646, 0.445003, 0.058051,
		-0.448308, -0.879333, -0.160603,
		30.041925, 36.392044, 29.586281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739361, 37.019558, 30.135056>,  <30.355742, 37.007580, 29.698704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739361, 37.019558, 30.135056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.809731, 36.629871, 30.078566>,  <29.851954, 36.396057, 30.044672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.809731, 36.629871, 30.078566>,  <29.739361, 37.019558, 30.135056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809731, 36.629871, 30.078566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167565, -0.111734, 0.979509,
		-0.970037, -0.195986, 0.143588,
		0.175926, -0.974220, -0.141227,
		29.862509, 36.337605, 30.036198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409359, 36.637157, 30.599783>,  <29.739361, 37.019558, 30.135056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409359, 36.637157, 30.599783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.677965, 36.359230, 30.496794>,  <29.839128, 36.192474, 30.434999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.677965, 36.359230, 30.496794>,  <29.409359, 36.637157, 30.599783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677965, 36.359230, 30.496794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155528, -0.207567, 0.965778,
		-0.724484, -0.688580, -0.031321,
		0.671516, -0.694819, -0.257473,
		29.879419, 36.150784, 30.419552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207226, 36.010590, 30.966219>,  <29.409359, 36.637157, 30.599783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207226, 36.010590, 30.966219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.598347, 35.977005, 30.889433>,  <29.833019, 35.956852, 30.843361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.598347, 35.977005, 30.889433>,  <29.207226, 36.010590, 30.966219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598347, 35.977005, 30.889433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146667, -0.379998, 0.913285,
		-0.149628, -0.921169, -0.359249,
		0.977804, -0.083963, -0.191964,
		29.891687, 35.951817, 30.831844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385021, 35.472118, 31.414373>,  <29.207226, 36.010590, 30.966219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385021, 35.472118, 31.414373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.732780, 35.647507, 31.323254>,  <29.941437, 35.752739, 31.268581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.732780, 35.647507, 31.323254>,  <29.385021, 35.472118, 31.414373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732780, 35.647507, 31.323254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321081, -0.150904, 0.934952,
		0.375572, -0.885987, -0.271980,
		0.869398, 0.438469, -0.227798,
		29.993599, 35.779049, 31.254913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816330, 35.133080, 31.872423>,  <29.385021, 35.472118, 31.414373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816330, 35.133080, 31.872423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.996790, 35.467186, 31.746700>,  <30.105066, 35.667652, 31.671267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.996790, 35.467186, 31.746700>,  <29.816330, 35.133080, 31.872423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996790, 35.467186, 31.746700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225566, 0.234026, 0.945702,
		0.863471, -0.497551, -0.082827,
		0.451151, 0.835269, -0.314306,
		30.132135, 35.717766, 31.652409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477427, 35.067890, 32.177860>,  <29.816330, 35.133080, 31.872423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477427, 35.067890, 32.177860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.422676, 35.455948, 32.097771>,  <30.389826, 35.688782, 32.049717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.422676, 35.455948, 32.097771>,  <30.477427, 35.067890, 32.177860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422676, 35.455948, 32.097771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353940, 0.236683, 0.904825,
		0.925198, 0.052980, -0.375768,
		-0.136875, 0.970141, -0.200227,
		30.381613, 35.746990, 32.037704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113152, 34.913254, 31.738159>,  <30.477427, 35.067890, 32.177860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113152, 34.913254, 31.738159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.304485, 34.567726, 31.801422>,  <31.419285, 34.360409, 31.839380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.304485, 34.567726, 31.801422>,  <31.113152, 34.913254, 31.738159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304485, 34.567726, 31.801422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175086, -0.270289, -0.946725,
		0.860547, 0.425160, -0.280532,
		0.478334, -0.863819, 0.158157,
		31.447985, 34.308582, 31.848869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389811, 34.814869, 31.089954>,  <31.113152, 34.913254, 31.738159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389811, 34.814869, 31.089954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.428343, 34.455189, 31.260675>,  <31.451462, 34.239380, 31.363108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.428343, 34.455189, 31.260675>,  <31.389811, 34.814869, 31.089954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428343, 34.455189, 31.260675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284049, -0.435800, -0.854046,
		0.953958, -0.038964, -0.297397,
		0.096329, -0.899199, 0.426803,
		31.457241, 34.185429, 31.388716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704950, 34.407761, 30.613121>,  <31.389811, 34.814869, 31.089954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704950, 34.407761, 30.613121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.555653, 34.121368, 30.849108>,  <31.466074, 33.949532, 30.990700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.555653, 34.121368, 30.849108>,  <31.704950, 34.407761, 30.613121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555653, 34.121368, 30.849108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318459, -0.498406, -0.806334,
		0.871362, -0.488841, -0.041982,
		-0.373245, -0.715979, 0.589968,
		31.443680, 33.906574, 31.026098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949194, 33.853382, 30.306332>,  <31.704950, 34.407761, 30.613121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949194, 33.853382, 30.306332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616762, 33.746025, 30.501173>,  <31.417303, 33.681610, 30.618078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616762, 33.746025, 30.501173>,  <31.949194, 33.853382, 30.306332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616762, 33.746025, 30.501173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366535, -0.394388, -0.842680,
		0.418278, -0.878876, 0.229392,
		-0.831081, -0.268394, 0.487102,
		31.367437, 33.665508, 30.647305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804281, 33.175011, 30.067596>,  <31.949194, 33.853382, 30.306332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804281, 33.175011, 30.067596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.462044, 33.342415, 30.189457>,  <31.256701, 33.442856, 30.262573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.462044, 33.342415, 30.189457>,  <31.804281, 33.175011, 30.067596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462044, 33.342415, 30.189457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457218, -0.335027, -0.823838,
		-0.242714, -0.844162, 0.477995,
		-0.855594, 0.418505, 0.304650,
		31.205366, 33.467968, 30.280851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319744, 32.680080, 29.916199>,  <31.804281, 33.175011, 30.067596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319744, 32.680080, 29.916199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.086073, 33.001343, 29.962986>,  <30.945869, 33.194099, 29.991058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.086073, 33.001343, 29.962986>,  <31.319744, 32.680080, 29.916199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086073, 33.001343, 29.962986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554307, -0.289534, -0.780329,
		-0.592856, -0.520690, 0.614333,
		-0.584180, 0.803152, 0.116970,
		30.910818, 33.242287, 29.998077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553267, 32.427059, 29.905119>,  <31.319744, 32.680080, 29.916199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553267, 32.427059, 29.905119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.580418, 32.815266, 29.812611>,  <30.596708, 33.048191, 29.757105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.580418, 32.815266, 29.812611>,  <30.553267, 32.427059, 29.905119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580418, 32.815266, 29.812611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255109, -0.207216, -0.944447,
		-0.964527, 0.123107, 0.233523,
		0.067879, 0.970519, -0.231271,
		30.600780, 33.106422, 29.743229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119059, 32.515762, 29.370102>,  <30.553267, 32.427059, 29.905119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119059, 32.515762, 29.370102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.320715, 32.859497, 29.335728>,  <30.441708, 33.065739, 29.315104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.320715, 32.859497, 29.335728>,  <30.119059, 32.515762, 29.370102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320715, 32.859497, 29.335728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194693, 0.016143, -0.980732,
		-0.841391, 0.511156, 0.175445,
		0.504139, 0.859337, -0.085935,
		30.471956, 33.117298, 29.309948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611902, 33.006847, 28.949856>,  <30.119059, 32.515762, 29.370102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611902, 33.006847, 28.949856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.989546, 33.138084, 28.937140>,  <30.216133, 33.216827, 28.929510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.989546, 33.138084, 28.937140>,  <29.611902, 33.006847, 28.949856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989546, 33.138084, 28.937140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093224, 0.173257, -0.980455,
		-0.316173, 0.928621, 0.194160,
		0.944110, 0.328094, -0.031791,
		30.272779, 33.236511, 28.927603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481327, 33.610271, 28.634689>,  <29.611902, 33.006847, 28.949856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481327, 33.610271, 28.634689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.864532, 33.509308, 28.580286>,  <30.094456, 33.448730, 28.547644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.864532, 33.509308, 28.580286>,  <29.481327, 33.610271, 28.634689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864532, 33.509308, 28.580286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059584, 0.288742, -0.955551,
		0.280459, 0.923536, 0.261580,
		0.958015, -0.252407, -0.136008,
		30.151937, 33.433586, 28.539484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849230, 34.163998, 28.316658>,  <29.481327, 33.610271, 28.634689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849230, 34.163998, 28.316658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.071943, 33.844955, 28.223867>,  <30.205570, 33.653530, 28.168194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.071943, 33.844955, 28.223867>,  <29.849230, 34.163998, 28.316658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071943, 33.844955, 28.223867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045887, 0.249306, -0.967337,
		0.829390, 0.549241, 0.102209,
		0.556782, -0.797610, -0.231975,
		30.238977, 33.605671, 28.154274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400330, 34.408791, 27.784782>,  <29.849230, 34.163998, 28.316658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400330, 34.408791, 27.784782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.361008, 34.012478, 27.747488>,  <30.337414, 33.774693, 27.725111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.361008, 34.012478, 27.747488>,  <30.400330, 34.408791, 27.784782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361008, 34.012478, 27.747488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069540, 0.086623, -0.993811,
		0.992723, -0.104182, 0.060383,
		-0.098306, -0.990778, -0.093238,
		30.331516, 33.715244, 27.719517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907383, 34.264290, 27.313681>,  <30.400330, 34.408791, 27.784782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907383, 34.264290, 27.313681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642399, 33.964863, 27.302448>,  <30.483408, 33.785206, 27.295710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642399, 33.964863, 27.302448>,  <30.907383, 34.264290, 27.313681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642399, 33.964863, 27.302448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095864, -0.047539, -0.994258,
		0.742936, -0.661351, 0.103254,
		-0.662462, -0.748568, -0.028081,
		30.443661, 33.740292, 27.294024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199926, 33.734257, 26.868767>,  <30.907383, 34.264290, 27.313681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199926, 33.734257, 26.868767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.808838, 33.650471, 26.863281>,  <30.574184, 33.600197, 26.859991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.808838, 33.650471, 26.863281>,  <31.199926, 33.734257, 26.868767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808838, 33.650471, 26.863281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071737, -0.272021, -0.959614,
		0.197279, -0.939216, 0.280987,
		-0.977719, -0.209469, -0.013713,
		30.515522, 33.587631, 26.859167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862396, 33.600697, 27.154865>,  <31.199926, 33.734257, 26.868767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862396, 33.600697, 27.154865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.217033, 33.709972, 27.005562>,  <32.429817, 33.775539, 26.915979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.217033, 33.709972, 27.005562>,  <31.862396, 33.600697, 27.154865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217033, 33.709972, 27.005562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243986, 0.409358, 0.879146,
		0.392968, -0.870514, 0.296280,
		0.886593, 0.273188, -0.373258,
		32.483009, 33.791931, 26.893583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385578, 33.448940, 27.684208>,  <31.862396, 33.600697, 27.154865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385578, 33.448940, 27.684208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.533932, 33.734356, 27.446451>,  <32.622944, 33.905605, 27.303797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.533932, 33.734356, 27.446451>,  <32.385578, 33.448940, 27.684208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533932, 33.734356, 27.446451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375839, 0.469956, 0.798678,
		0.849229, -0.519613, -0.093878,
		0.370885, 0.713543, -0.594391,
		32.645199, 33.948418, 27.268133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031647, 33.519859, 27.920269>,  <32.385578, 33.448940, 27.684208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031647, 33.519859, 27.920269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.986263, 33.861752, 27.717661>,  <32.959034, 34.066887, 27.596096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.986263, 33.861752, 27.717661>,  <33.031647, 33.519859, 27.920269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986263, 33.861752, 27.717661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425476, 0.502500, 0.752638,
		0.897829, -0.130118, -0.420681,
		-0.113461, 0.854730, -0.506521,
		32.952225, 34.118172, 27.565704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692230, 33.865448, 27.837597>,  <33.031647, 33.519859, 27.920269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692230, 33.865448, 27.837597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439289, 34.173294, 27.802223>,  <33.287525, 34.358002, 27.780998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439289, 34.173294, 27.802223>,  <33.692230, 33.865448, 27.837597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439289, 34.173294, 27.802223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437724, 0.449157, 0.778881,
		0.639159, 0.453819, -0.620905,
		-0.632355, 0.769614, -0.088436,
		33.249584, 34.404179, 27.775692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174156, 34.411228, 27.780855>,  <33.692230, 33.865448, 27.837597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174156, 34.411228, 27.780855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819557, 34.567677, 27.879768>,  <33.606800, 34.661545, 27.939116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819557, 34.567677, 27.879768>,  <34.174156, 34.411228, 27.780855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819557, 34.567677, 27.879768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398805, 0.374741, 0.836973,
		0.234694, 0.840590, -0.488188,
		-0.886495, 0.391124, 0.247282,
		33.553608, 34.685013, 27.953953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278301, 35.173710, 27.820011>,  <34.174156, 34.411228, 27.780855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278301, 35.173710, 27.820011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.958649, 35.065964, 28.034981>,  <33.766857, 35.001316, 28.163963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.958649, 35.065964, 28.034981>,  <34.278301, 35.173710, 27.820011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958649, 35.065964, 28.034981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454171, 0.315165, 0.833307,
		-0.393844, 0.910006, -0.129519,
		-0.799134, -0.269369, 0.537424,
		33.718910, 34.985153, 28.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353798, 35.603981, 28.381332>,  <34.278301, 35.173710, 27.820011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353798, 35.603981, 28.381332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.064285, 35.359383, 28.509212>,  <33.890579, 35.212624, 28.585941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.064285, 35.359383, 28.509212>,  <34.353798, 35.603981, 28.381332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064285, 35.359383, 28.509212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248618, 0.201094, 0.947497,
		-0.643684, 0.765264, 0.006481,
		-0.723782, -0.611500, 0.319699,
		33.847149, 35.175934, 28.605122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021301, 35.980202, 28.858440>,  <34.353798, 35.603981, 28.381332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021301, 35.980202, 28.858440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950775, 35.596928, 28.948593>,  <33.908459, 35.366962, 29.002686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950775, 35.596928, 28.948593>,  <34.021301, 35.980202, 28.858440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950775, 35.596928, 28.948593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266733, 0.173893, 0.947953,
		-0.947504, 0.227260, 0.224918,
		-0.176320, -0.958183, 0.225382,
		33.897881, 35.309471, 29.016209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653782, 35.924294, 29.508852>,  <34.021301, 35.980202, 28.858440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653782, 35.924294, 29.508852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.804893, 35.558720, 29.449518>,  <33.895561, 35.339375, 29.413918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.804893, 35.558720, 29.449518>,  <33.653782, 35.924294, 29.508852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804893, 35.558720, 29.449518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328361, -0.017549, 0.944389,
		-0.865715, -0.405477, 0.293472,
		0.377778, -0.913937, -0.148335,
		33.918228, 35.284538, 29.405018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651764, 35.680008, 30.108578>,  <33.653782, 35.924294, 29.508852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651764, 35.680008, 30.108578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882965, 35.395546, 29.948492>,  <34.021687, 35.224869, 29.852442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882965, 35.395546, 29.948492>,  <33.651764, 35.680008, 30.108578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882965, 35.395546, 29.948492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428009, -0.153365, 0.890667,
		-0.694782, -0.686102, 0.215736,
		0.578002, -0.711156, -0.400213,
		34.056366, 35.182198, 29.828428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685257, 35.227787, 30.634745>,  <33.651764, 35.680008, 30.108578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685257, 35.227787, 30.634745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000870, 35.115978, 30.415915>,  <34.190239, 35.048893, 30.284616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000870, 35.115978, 30.415915>,  <33.685257, 35.227787, 30.634745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000870, 35.115978, 30.415915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508067, -0.203749, 0.836872,
		-0.345394, -0.938271, -0.018746,
		0.789032, -0.279526, -0.547077,
		34.237579, 35.032120, 30.251791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883682, 34.631153, 30.847422>,  <33.685257, 35.227787, 30.634745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883682, 34.631153, 30.847422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203728, 34.793297, 30.670559>,  <34.395756, 34.890583, 30.564442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203728, 34.793297, 30.670559>,  <33.883682, 34.631153, 30.847422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203728, 34.793297, 30.670559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533997, -0.145547, 0.832865,
		0.273258, -0.902495, -0.332916,
		0.800111, 0.405363, -0.442157,
		34.443760, 34.914906, 30.537912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412743, 34.197777, 31.038374>,  <33.883682, 34.631153, 30.847422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412743, 34.197777, 31.038374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.627476, 34.509586, 30.909288>,  <34.756317, 34.696674, 30.831837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.627476, 34.509586, 30.909288>,  <34.412743, 34.197777, 31.038374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627476, 34.509586, 30.909288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651086, -0.139517, 0.746071,
		0.536559, -0.610632, -0.582437,
		0.536834, 0.779528, -0.322714,
		34.788525, 34.743446, 30.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088043, 33.973221, 30.963793>,  <34.412743, 34.197777, 31.038374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088043, 33.973221, 30.963793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.124538, 34.368793, 31.010580>,  <35.146435, 34.606140, 31.038652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.124538, 34.368793, 31.010580>,  <35.088043, 33.973221, 30.963793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124538, 34.368793, 31.010580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606045, -0.148339, 0.781476,
		0.790181, -0.000409, -0.612874,
		0.091233, 0.988936, 0.116967,
		35.151909, 34.665474, 31.045670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.007694, 35.561176, 26.158869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730953, 35.848888, 26.133652>,  <36.564907, 36.021515, 26.118523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730953, 35.848888, 26.133652>,  <37.007694, 35.561176, 26.158869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730953, 35.848888, 26.133652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442941, -0.491757, -0.749652,
		-0.570208, -0.490729, 0.658824,
		-0.691857, 0.719277, -0.063040,
		36.523396, 36.064671, 26.114740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495396, 35.178829, 26.090933>,  <37.007694, 35.561176, 26.158869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495396, 35.178829, 26.090933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.325077, 35.521809, 25.975363>,  <36.222885, 35.727596, 25.906021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.325077, 35.521809, 25.975363>,  <36.495396, 35.178829, 26.090933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325077, 35.521809, 25.975363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517590, -0.492731, -0.699511,
		-0.742159, -0.148302, 0.653610,
		-0.425793, 0.857451, -0.288925,
		36.197338, 35.779045, 25.888685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856628, 35.049820, 26.071890>,  <36.495396, 35.178829, 26.090933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856628, 35.049820, 26.071890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906010, 35.361454, 25.826035>,  <35.935638, 35.548435, 25.678520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906010, 35.361454, 25.826035>,  <35.856628, 35.049820, 26.071890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906010, 35.361454, 25.826035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595251, -0.437440, -0.674035,
		-0.794000, 0.449076, 0.409750,
		0.123452, 0.779088, -0.614640,
		35.943047, 35.595181, 25.641644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393078, 34.962166, 25.538118>,  <35.856628, 35.049820, 26.071890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393078, 34.962166, 25.538118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.612984, 35.263096, 25.392927>,  <35.744926, 35.443653, 25.305813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.612984, 35.263096, 25.392927>,  <35.393078, 34.962166, 25.538118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612984, 35.263096, 25.392927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489079, -0.062359, -0.870007,
		-0.677167, 0.655829, 0.333666,
		0.549769, 0.752329, -0.362980,
		35.777916, 35.488796, 25.284033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945675, 35.513588, 25.242205>,  <35.393078, 34.962166, 25.538118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945675, 35.513588, 25.242205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.298588, 35.557457, 25.059095>,  <35.510334, 35.583778, 24.949230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.298588, 35.557457, 25.059095>,  <34.945675, 35.513588, 25.242205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298588, 35.557457, 25.059095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448681, -0.098201, -0.888280,
		-0.142374, 0.989105, -0.037432,
		0.882278, 0.109673, -0.457774,
		35.563271, 35.590359, 24.921762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860817, 36.033367, 24.719021>,  <34.945675, 35.513588, 25.242205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860817, 36.033367, 24.719021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177532, 35.816284, 24.606918>,  <35.367561, 35.686035, 24.539658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177532, 35.816284, 24.606918>,  <34.860817, 36.033367, 24.719021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177532, 35.816284, 24.606918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397356, -0.109208, -0.911143,
		0.463882, 0.832789, -0.302119,
		0.791784, -0.542712, -0.280255,
		35.415066, 35.653469, 24.522842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140926, 36.379356, 24.108412>,  <34.860817, 36.033367, 24.719021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140926, 36.379356, 24.108412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262096, 35.998203, 24.114803>,  <35.334797, 35.769512, 24.118637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262096, 35.998203, 24.114803>,  <35.140926, 36.379356, 24.108412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262096, 35.998203, 24.114803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295004, -0.109698, -0.949178,
		0.906206, 0.282816, -0.314334,
		0.302924, -0.952881, 0.015977,
		35.352974, 35.712337, 24.119596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438568, 36.323631, 23.553490>,  <35.140926, 36.379356, 24.108412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438568, 36.323631, 23.553490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436672, 35.932899, 23.639072>,  <35.435535, 35.698460, 23.690422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436672, 35.932899, 23.639072>,  <35.438568, 36.323631, 23.553490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436672, 35.932899, 23.639072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033356, -0.213686, -0.976333,
		0.999432, -0.011762, -0.031571,
		-0.004738, -0.976832, 0.213957,
		35.435249, 35.639851, 23.703260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921890, 36.059891, 23.040100>,  <35.438568, 36.323631, 23.553490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921890, 36.059891, 23.040100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696648, 35.752914, 23.162701>,  <35.561501, 35.568729, 23.236261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696648, 35.752914, 23.162701>,  <35.921890, 36.059891, 23.040100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696648, 35.752914, 23.162701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151482, -0.268749, -0.951224,
		0.812382, -0.582069, 0.035080,
		-0.563106, -0.767443, 0.306500,
		35.527718, 35.522682, 23.254650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111584, 35.488632, 22.631620>,  <35.921890, 36.059891, 23.040100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111584, 35.488632, 22.631620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.750225, 35.393150, 22.774105>,  <35.533409, 35.335861, 22.859596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.750225, 35.393150, 22.774105>,  <36.111584, 35.488632, 22.631620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750225, 35.393150, 22.774105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225919, -0.441108, -0.868553,
		0.364457, -0.865126, 0.344568,
		-0.903400, -0.238706, 0.356213,
		35.479206, 35.321537, 22.880968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125488, 34.819057, 22.478348>,  <36.111584, 35.488632, 22.631620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125488, 34.819057, 22.478348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749931, 34.950996, 22.517725>,  <35.524597, 35.030159, 22.541351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749931, 34.950996, 22.517725>,  <36.125488, 34.819057, 22.478348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749931, 34.950996, 22.517725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246704, -0.445357, -0.860694,
		-0.240052, -0.832382, 0.499515,
		-0.938889, 0.329844, 0.098443,
		35.468266, 35.049950, 22.547258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785900, 34.420238, 21.849739>,  <36.125488, 34.819057, 22.478348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785900, 34.420238, 21.849739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503361, 34.652878, 22.011143>,  <35.333839, 34.792461, 22.107985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503361, 34.652878, 22.011143>,  <35.785900, 34.420238, 21.849739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503361, 34.652878, 22.011143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581209, -0.151117, -0.799599,
		-0.404068, -0.799317, 0.444771,
		-0.706346, 0.581598, 0.403509,
		35.291458, 34.827358, 22.132196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021992, 34.158382, 21.660404>,  <35.785900, 34.420238, 21.849739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021992, 34.158382, 21.660404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022877, 34.556290, 21.701244>,  <35.023407, 34.795036, 21.725748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022877, 34.556290, 21.701244>,  <35.021992, 34.158382, 21.660404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022877, 34.556290, 21.701244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520788, 0.088309, -0.849106,
		-0.853683, -0.051289, 0.518261,
		0.002217, 0.994772, 0.102099,
		35.023540, 34.854721, 21.731874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279099, 34.352482, 21.837339>,  <35.021992, 34.158382, 21.660404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279099, 34.352482, 21.837339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.529839, 34.608829, 21.660099>,  <34.680283, 34.762638, 21.553755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.529839, 34.608829, 21.660099>,  <34.279099, 34.352482, 21.837339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529839, 34.608829, 21.660099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639861, 0.098952, -0.762094,
		-0.444559, 0.761243, 0.472098,
		0.626854, 0.640872, -0.443099,
		34.717896, 34.801090, 21.527168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955555, 34.151199, 21.151146>,  <34.279099, 34.352482, 21.837339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955555, 34.151199, 21.151146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.889481, 33.760124, 21.203058>,  <33.849838, 33.525478, 21.234205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.889481, 33.760124, 21.203058>,  <33.955555, 34.151199, 21.151146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889481, 33.760124, 21.203058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070656, 0.142981, 0.987200,
		-0.983729, 0.153899, -0.092697,
		-0.165183, -0.977687, 0.129780,
		33.839928, 33.466820, 21.241993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302464, 34.042183, 21.508730>,  <33.955555, 34.151199, 21.151146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302464, 34.042183, 21.508730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546925, 33.731300, 21.568644>,  <33.693604, 33.544769, 21.604591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546925, 33.731300, 21.568644>,  <33.302464, 34.042183, 21.508730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546925, 33.731300, 21.568644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016110, 0.176985, 0.984082,
		-0.791346, -0.603840, 0.095644,
		0.611156, -0.777209, 0.149784,
		33.730270, 33.498138, 21.613579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991184, 33.742344, 21.975519>,  <33.302464, 34.042183, 21.508730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991184, 33.742344, 21.975519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338650, 33.547176, 22.009850>,  <33.547127, 33.430077, 22.030447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338650, 33.547176, 22.009850>,  <32.991184, 33.742344, 21.975519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338650, 33.547176, 22.009850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059748, 0.068795, 0.995840,
		-0.491794, -0.870174, 0.030607,
		0.868659, -0.487919, 0.085824,
		33.599247, 33.400799, 22.035597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777248, 33.172718, 22.383007>,  <32.991184, 33.742344, 21.975519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777248, 33.172718, 22.383007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176170, 33.187107, 22.408556>,  <33.415524, 33.195740, 22.423885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176170, 33.187107, 22.408556>,  <32.777248, 33.172718, 22.383007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176170, 33.187107, 22.408556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059187, -0.118962, 0.991133,
		0.043256, -0.992247, -0.116512,
		0.997309, 0.035977, 0.063874,
		33.475365, 33.197899, 22.427719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024780, 32.527412, 22.708054>,  <32.777248, 33.172718, 22.383007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024780, 32.527412, 22.708054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292511, 32.818722, 22.766872>,  <33.453148, 32.993507, 22.802164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292511, 32.818722, 22.766872>,  <33.024780, 32.527412, 22.708054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292511, 32.818722, 22.766872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002695, -0.195538, 0.980693,
		0.742964, -0.656800, -0.128915,
		0.669327, 0.728271, 0.147048,
		33.493309, 33.037205, 22.810987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408646, 32.248604, 23.182301>,  <33.024780, 32.527412, 22.708054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408646, 32.248604, 23.182301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485283, 32.640778, 23.200352>,  <33.531265, 32.876083, 23.211184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485283, 32.640778, 23.200352>,  <33.408646, 32.248604, 23.182301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485283, 32.640778, 23.200352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196946, -0.006642, 0.980392,
		0.961512, -0.196721, 0.191820,
		0.191590, 0.980437, 0.045130,
		33.542759, 32.934910, 23.213890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827168, 32.321823, 23.765762>,  <33.408646, 32.248604, 23.182301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827168, 32.321823, 23.765762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695183, 32.696083, 23.715658>,  <33.615993, 32.920639, 23.685596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695183, 32.696083, 23.715658>,  <33.827168, 32.321823, 23.765762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695183, 32.696083, 23.715658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000070, 0.132666, 0.991161,
		0.943995, 0.327053, -0.043709,
		-0.329961, 0.935647, -0.125259,
		33.596195, 32.976776, 23.678082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185295, 32.851540, 24.184908>,  <33.827168, 32.321823, 23.765762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185295, 32.851540, 24.184908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834103, 33.025372, 24.104610>,  <33.623386, 33.129669, 24.056431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834103, 33.025372, 24.104610>,  <34.185295, 32.851540, 24.184908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834103, 33.025372, 24.104610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096851, 0.249420, 0.963540,
		0.468803, 0.865408, -0.176896,
		-0.877977, 0.434578, -0.200745,
		33.570709, 33.155746, 24.044388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135326, 33.250221, 24.774906>,  <34.185295, 32.851540, 24.184908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135326, 33.250221, 24.774906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769352, 33.302185, 24.622059>,  <33.549767, 33.333363, 24.530350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769352, 33.302185, 24.622059>,  <34.135326, 33.250221, 24.774906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769352, 33.302185, 24.622059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304967, 0.397622, 0.865385,
		0.264360, 0.908306, -0.324181,
		-0.914936, 0.129909, -0.382119,
		33.494869, 33.341156, 24.507423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838490, 33.877762, 25.077251>,  <34.135326, 33.250221, 24.774906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838490, 33.877762, 25.077251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492683, 33.717052, 24.956459>,  <33.285198, 33.620628, 24.883984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492683, 33.717052, 24.956459>,  <33.838490, 33.877762, 25.077251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492683, 33.717052, 24.956459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426560, 0.268743, 0.863611,
		-0.265821, 0.875417, -0.403712,
		-0.864515, -0.401773, -0.301981,
		33.233330, 33.596519, 24.865866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295998, 34.399048, 25.122885>,  <33.838490, 33.877762, 25.077251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295998, 34.399048, 25.122885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110668, 34.044586, 25.126087>,  <32.999470, 33.831909, 25.128010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110668, 34.044586, 25.126087>,  <33.295998, 34.399048, 25.122885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110668, 34.044586, 25.126087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500717, 0.269236, 0.822675,
		-0.731171, 0.377158, -0.568455,
		-0.463327, -0.886151, 0.008008,
		32.971672, 33.778740, 25.128490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529549, 34.497196, 25.236900>,  <33.295998, 34.399048, 25.122885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529549, 34.497196, 25.236900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641426, 34.137619, 25.371763>,  <32.708553, 33.921871, 25.452681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641426, 34.137619, 25.371763>,  <32.529549, 34.497196, 25.236900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641426, 34.137619, 25.371763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347930, 0.232397, 0.908260,
		-0.894828, -0.371340, -0.247770,
		0.279692, -0.898943, 0.337156,
		32.725334, 33.867935, 25.472910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935211, 34.293564, 25.603638>,  <32.529549, 34.497196, 25.236900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935211, 34.293564, 25.603638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225090, 34.049973, 25.732609>,  <32.399017, 33.903816, 25.809992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225090, 34.049973, 25.732609>,  <31.935211, 34.293564, 25.603638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225090, 34.049973, 25.732609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336610, 0.095420, 0.936797,
		-0.601254, -0.787427, -0.135837,
		0.724698, -0.608977, 0.322428,
		32.442501, 33.867279, 25.829338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645540, 33.742859, 26.107143>,  <31.935211, 34.293564, 25.603638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645540, 33.742859, 26.107143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034565, 33.768009, 26.196739>,  <32.267979, 33.783100, 26.250498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034565, 33.768009, 26.196739>,  <31.645540, 33.742859, 26.107143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034565, 33.768009, 26.196739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231001, 0.146645, 0.961839,
		0.027623, -0.987189, 0.157144,
		0.972561, 0.062869, 0.223991,
		32.326332, 33.786869, 26.263937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155491, 33.181499, 26.307585>,  <31.645540, 33.742859, 26.107143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155491, 33.181499, 26.307585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.770372, 33.268070, 26.372303>,  <30.539301, 33.320015, 26.411135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.770372, 33.268070, 26.372303>,  <31.155491, 33.181499, 26.307585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770372, 33.268070, 26.372303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214346, -0.247077, -0.944991,
		-0.164546, -0.944517, 0.284276,
		-0.962798, 0.216428, 0.161798,
		30.481533, 33.333000, 26.420843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643158, 32.657082, 26.032238>,  <31.155491, 33.181499, 26.307585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643158, 32.657082, 26.032238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436560, 32.999584, 26.035347>,  <30.312601, 33.205086, 26.037212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436560, 32.999584, 26.035347>,  <30.643158, 32.657082, 26.032238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436560, 32.999584, 26.035347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134160, -0.071957, -0.988344,
		-0.845714, -0.511518, 0.152041,
		-0.516496, 0.856254, 0.007770,
		30.281610, 33.256462, 26.037678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089226, 32.518147, 25.640226>,  <30.643158, 32.657082, 26.032238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089226, 32.518147, 25.640226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.134878, 32.915382, 25.651209>,  <30.162270, 33.153725, 25.657799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.134878, 32.915382, 25.651209>,  <30.089226, 32.518147, 25.640226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134878, 32.915382, 25.651209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163709, 0.046060, -0.985433,
		-0.979885, 0.107972, 0.167834,
		0.114129, 0.993086, 0.027458,
		30.169117, 33.213306, 25.659447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665197, 32.743229, 25.170977>,  <30.089226, 32.518147, 25.640226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665197, 32.743229, 25.170977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886597, 33.074100, 25.209784>,  <30.019436, 33.272625, 25.233068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886597, 33.074100, 25.209784>,  <29.665197, 32.743229, 25.170977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886597, 33.074100, 25.209784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200792, 0.245589, -0.948351,
		-0.808284, 0.505429, 0.302024,
		0.553497, 0.827181, 0.097019,
		30.052647, 33.322254, 25.238890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359478, 33.257278, 24.782959>,  <29.665197, 32.743229, 25.170977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359478, 33.257278, 24.782959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.737307, 33.386341, 24.807207>,  <29.964005, 33.463779, 24.821756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.737307, 33.386341, 24.807207>,  <29.359478, 33.257278, 24.782959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737307, 33.386341, 24.807207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003202, 0.193687, -0.981058,
		-0.328286, 0.926487, 0.183985,
		0.944573, 0.322657, 0.060618,
		30.020678, 33.483139, 24.825392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414284, 33.842171, 24.385138>,  <29.359478, 33.257278, 24.782959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414284, 33.842171, 24.385138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.802702, 33.753906, 24.421759>,  <30.035753, 33.700947, 24.443731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.802702, 33.753906, 24.421759>,  <29.414284, 33.842171, 24.385138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802702, 33.753906, 24.421759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141874, 0.224318, -0.964133,
		0.192209, 0.949205, 0.249128,
		0.971044, -0.220660, 0.091552,
		30.094015, 33.687710, 24.449224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799202, 34.439178, 24.053299>,  <29.414284, 33.842171, 24.385138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799202, 34.439178, 24.053299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.013910, 34.101692, 24.051363>,  <30.142735, 33.899200, 24.050201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.013910, 34.101692, 24.051363>,  <29.799202, 34.439178, 24.053299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013910, 34.101692, 24.051363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132024, 0.089657, -0.987183,
		0.833335, 0.529252, 0.159516,
		0.536771, -0.843714, -0.004840,
		30.174942, 33.848579, 24.049911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378014, 35.083244, 24.123589>,  <29.799202, 34.439178, 24.053299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378014, 35.083244, 24.123589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.207756, 35.438400, 24.053753>,  <30.105602, 35.651493, 24.011850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.207756, 35.438400, 24.053753>,  <30.378014, 35.083244, 24.123589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207756, 35.438400, 24.053753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056887, 0.218815, 0.974107,
		0.903100, 0.404691, -0.143647,
		-0.425644, 0.887888, -0.174590,
		30.080063, 35.704765, 24.001375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699251, 35.521336, 24.498606>,  <30.378014, 35.083244, 24.123589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699251, 35.521336, 24.498606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.345196, 35.701729, 24.452742>,  <30.132763, 35.809963, 24.425222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.345196, 35.701729, 24.452742>,  <30.699251, 35.521336, 24.498606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345196, 35.701729, 24.452742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026796, 0.196598, 0.980118,
		0.464559, 0.870611, -0.161932,
		-0.885137, 0.450983, -0.114661,
		30.079655, 35.837025, 24.418343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761168, 36.104263, 24.942501>,  <30.699251, 35.521336, 24.498606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761168, 36.104263, 24.942501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.365759, 36.110165, 24.882353>,  <30.128513, 36.113705, 24.846264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.365759, 36.110165, 24.882353>,  <30.761168, 36.104263, 24.942501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365759, 36.110165, 24.882353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131595, 0.404984, 0.904804,
		0.074245, 0.914205, -0.398394,
		-0.988519, 0.014751, -0.150372,
		30.069202, 36.114590, 24.837240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552824, 36.768597, 25.020811>,  <30.761168, 36.104263, 24.942501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552824, 36.768597, 25.020811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.224117, 36.551754, 25.091038>,  <30.026894, 36.421650, 25.133173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.224117, 36.551754, 25.091038>,  <30.552824, 36.768597, 25.020811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224117, 36.551754, 25.091038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044893, 0.368738, 0.928449,
		-0.568052, 0.755087, -0.327353,
		-0.821767, -0.542103, 0.175565,
		29.977587, 36.389122, 25.143707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093843, 37.204849, 25.467054>,  <30.552824, 36.768597, 25.020811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093843, 37.204849, 25.467054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.949778, 36.833286, 25.501503>,  <29.863338, 36.610348, 25.522171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.949778, 36.833286, 25.501503>,  <30.093843, 37.204849, 25.467054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949778, 36.833286, 25.501503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188826, 0.162993, 0.968389,
		-0.913579, 0.332517, -0.234106,
		-0.360163, -0.928906, 0.086120,
		29.841728, 36.554615, 25.527338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399250, 37.141434, 25.667879>,  <30.093843, 37.204849, 25.467054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399250, 37.141434, 25.667879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.501013, 36.777378, 25.798674>,  <29.562071, 36.558945, 25.877151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.501013, 36.777378, 25.798674>,  <29.399250, 37.141434, 25.667879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501013, 36.777378, 25.798674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346476, 0.229892, 0.909453,
		-0.902902, -0.344664, -0.256856,
		0.254406, -0.910141, 0.326988,
		29.577335, 36.504337, 25.896770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869415, 36.866219, 26.306417>,  <29.399250, 37.141434, 25.667879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869415, 36.866219, 26.306417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.207275, 36.655594, 26.344984>,  <29.409992, 36.529221, 26.368124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.207275, 36.655594, 26.344984>,  <28.869415, 36.866219, 26.306417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207275, 36.655594, 26.344984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070367, 0.069333, 0.995109,
		-0.530671, -0.847305, 0.021510,
		0.844652, -0.526562, 0.096415,
		29.460670, 36.497623, 26.373909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.758972, 38.151447, 21.406755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639671, 37.778835, 21.489985>,  <34.568092, 37.555267, 21.539923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639671, 37.778835, 21.489985>,  <34.758972, 38.151447, 21.406755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639671, 37.778835, 21.489985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100644, 0.247473, 0.963653,
		-0.949166, 0.266470, -0.167562,
		-0.298251, -0.931531, 0.208074,
		34.550198, 37.499374, 21.552406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159485, 38.183842, 21.671160>,  <34.758972, 38.151447, 21.406755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159485, 38.183842, 21.671160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.366745, 37.868332, 21.803442>,  <34.491100, 37.679028, 21.882812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.366745, 37.868332, 21.803442>,  <34.159485, 38.183842, 21.671160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366745, 37.868332, 21.803442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073604, 0.344103, 0.936043,
		-0.852119, -0.509348, 0.120239,
		0.518146, -0.788770, 0.330707,
		34.522190, 37.631702, 21.902655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757259, 37.768356, 22.214966>,  <34.159485, 38.183842, 21.671160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757259, 37.768356, 22.214966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148609, 37.710411, 22.274031>,  <34.383419, 37.675644, 22.309469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148609, 37.710411, 22.274031>,  <33.757259, 37.768356, 22.214966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148609, 37.710411, 22.274031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078788, 0.399067, 0.913530,
		-0.191263, -0.905406, 0.379023,
		0.978371, -0.144862, 0.147662,
		34.442120, 37.666954, 22.318329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728432, 37.388577, 22.814816>,  <33.757259, 37.768356, 22.214966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728432, 37.388577, 22.814816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098110, 37.540012, 22.794699>,  <34.319916, 37.630875, 22.782629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098110, 37.540012, 22.794699>,  <33.728432, 37.388577, 22.814816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098110, 37.540012, 22.794699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095873, 0.357443, 0.929001,
		0.369709, -0.853749, 0.366643,
		0.924188, 0.378612, -0.050298,
		34.375370, 37.653591, 22.779612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170048, 37.175434, 23.408798>,  <33.728432, 37.388577, 22.814816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170048, 37.175434, 23.408798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.336285, 37.520573, 23.293718>,  <34.436028, 37.727657, 23.224670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.336285, 37.520573, 23.293718>,  <34.170048, 37.175434, 23.408798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336285, 37.520573, 23.293718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050980, 0.293713, 0.954533,
		0.908119, -0.411368, 0.078078,
		0.415596, 0.862849, -0.287698,
		34.460964, 37.779427, 23.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689598, 37.262321, 23.908119>,  <34.170048, 37.175434, 23.408798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689598, 37.262321, 23.908119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639069, 37.612286, 23.721109>,  <34.608749, 37.822262, 23.608904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639069, 37.612286, 23.721109>,  <34.689598, 37.262321, 23.908119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639069, 37.612286, 23.721109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179625, 0.483685, 0.856612,
		0.975591, 0.024230, -0.218255,
		-0.126323, 0.874907, -0.467526,
		34.601173, 37.874756, 23.580851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187756, 37.683281, 24.174076>,  <34.689598, 37.262321, 23.908119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187756, 37.683281, 24.174076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.911957, 37.942238, 24.044168>,  <34.746479, 38.097610, 23.966223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.911957, 37.942238, 24.044168>,  <35.187756, 37.683281, 24.174076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911957, 37.942238, 24.044168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102978, 0.531470, 0.840794,
		0.716929, 0.546282, -0.433115,
		-0.689499, 0.647391, -0.324771,
		34.705109, 38.136456, 23.946737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529568, 38.239048, 24.335493>,  <35.187756, 37.683281, 24.174076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529568, 38.239048, 24.335493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.142456, 38.326954, 24.286318>,  <34.910191, 38.379696, 24.256813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.142456, 38.326954, 24.286318>,  <35.529568, 38.239048, 24.335493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142456, 38.326954, 24.286318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037033, 0.607107, 0.793757,
		0.249076, 0.763626, -0.595682,
		-0.967776, 0.219766, -0.122936,
		34.852123, 38.392883, 24.249437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527378, 38.900009, 24.498419>,  <35.529568, 38.239048, 24.335493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527378, 38.900009, 24.498419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.137077, 38.812580, 24.493933>,  <34.902897, 38.760120, 24.491241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.137077, 38.812580, 24.493933>,  <35.527378, 38.900009, 24.498419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137077, 38.812580, 24.493933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154098, 0.649715, 0.744395,
		-0.155421, 0.728076, -0.667645,
		-0.975755, -0.218577, -0.011215,
		34.844349, 38.747005, 24.490568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143135, 39.566963, 24.428728>,  <35.527378, 38.900009, 24.498419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143135, 39.566963, 24.428728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.900517, 39.291233, 24.587191>,  <34.754944, 39.125797, 24.682268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.900517, 39.291233, 24.587191>,  <35.143135, 39.566963, 24.428728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900517, 39.291233, 24.587191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165130, 0.596638, 0.785338,
		-0.777712, 0.410925, -0.475715,
		-0.606545, -0.689321, 0.396156,
		34.718552, 39.084438, 24.706038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523544, 39.900414, 24.723452>,  <35.143135, 39.566963, 24.428728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523544, 39.900414, 24.723452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.571579, 39.554077, 24.917730>,  <34.600399, 39.346275, 25.034298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.571579, 39.554077, 24.917730>,  <34.523544, 39.900414, 24.723452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571579, 39.554077, 24.917730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104863, 0.475440, 0.873476,
		-0.987210, -0.155824, -0.033701,
		0.120086, -0.865838, 0.485699,
		34.607605, 39.294327, 25.063440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929035, 39.793655, 25.295090>,  <34.523544, 39.900414, 24.723452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929035, 39.793655, 25.295090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.244438, 39.572205, 25.402243>,  <34.433678, 39.439335, 25.466534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.244438, 39.572205, 25.402243>,  <33.929035, 39.793655, 25.295090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244438, 39.572205, 25.402243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087362, 0.330323, 0.939816,
		-0.608793, -0.764452, 0.212096,
		0.788504, -0.553624, 0.267883,
		34.480991, 39.406116, 25.482607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458508, 39.316120, 25.693407>,  <33.929035, 39.793655, 25.295090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458508, 39.316120, 25.693407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.088730, 39.239056, 25.825029>,  <32.866863, 39.192818, 25.904003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.088730, 39.239056, 25.825029>,  <33.458508, 39.316120, 25.693407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088730, 39.239056, 25.825029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209264, -0.465059, -0.860191,
		0.318754, -0.864062, 0.389606,
		-0.924448, -0.192659, 0.329056,
		32.811394, 39.181259, 25.923746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313656, 38.642750, 25.511114>,  <33.458508, 39.316120, 25.693407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313656, 38.642750, 25.511114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.944283, 38.778786, 25.582235>,  <32.722660, 38.860405, 25.624908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.944283, 38.778786, 25.582235>,  <33.313656, 38.642750, 25.511114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944283, 38.778786, 25.582235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320459, -0.428450, -0.844829,
		-0.211134, -0.837122, 0.504628,
		-0.923433, 0.340084, 0.177803,
		32.667252, 38.880810, 25.635576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795712, 38.043682, 25.462723>,  <33.313656, 38.642750, 25.511114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795712, 38.043682, 25.462723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581177, 38.377136, 25.409973>,  <32.452457, 38.577209, 25.378323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581177, 38.377136, 25.409973>,  <32.795712, 38.043682, 25.462723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581177, 38.377136, 25.409973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253471, -0.308129, -0.916956,
		-0.805044, -0.458372, 0.376564,
		-0.536337, 0.833637, -0.131874,
		32.420277, 38.627228, 25.370411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163662, 37.736160, 25.261217>,  <32.795712, 38.043682, 25.462723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163662, 37.736160, 25.261217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117165, 38.121048, 25.162739>,  <32.089264, 38.351982, 25.103653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117165, 38.121048, 25.162739>,  <32.163662, 37.736160, 25.261217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117165, 38.121048, 25.162739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522774, -0.270037, -0.808571,
		-0.844508, 0.034710, 0.534417,
		-0.116247, 0.962224, -0.246194,
		32.082291, 38.409714, 25.088881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415808, 37.880684, 24.953489>,  <32.163662, 37.736160, 25.261217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415808, 37.880684, 24.953489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674856, 38.158482, 24.828102>,  <31.830286, 38.325161, 24.752871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674856, 38.158482, 24.828102>,  <31.415808, 37.880684, 24.953489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674856, 38.158482, 24.828102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356545, -0.087367, -0.930184,
		-0.673395, 0.714173, 0.191038,
		0.647622, 0.694495, -0.313467,
		31.869143, 38.366829, 24.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000458, 38.402935, 24.638071>,  <31.415808, 37.880684, 24.953489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000458, 38.402935, 24.638071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.365881, 38.487045, 24.498819>,  <31.585135, 38.537514, 24.415268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.365881, 38.487045, 24.498819>,  <31.000458, 38.402935, 24.638071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365881, 38.487045, 24.498819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362730, 0.034121, -0.931269,
		-0.183947, 0.977046, 0.107446,
		0.913559, 0.210278, -0.348128,
		31.639948, 38.550129, 24.394381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858698, 38.894753, 24.127159>,  <31.000458, 38.402935, 24.638071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858698, 38.894753, 24.127159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215942, 38.740520, 24.034479>,  <31.430288, 38.647984, 23.978870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215942, 38.740520, 24.034479>,  <30.858698, 38.894753, 24.127159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215942, 38.740520, 24.034479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311287, -0.157910, -0.937104,
		0.324737, 0.909063, -0.261056,
		0.893110, -0.385576, -0.231701,
		31.483875, 38.624847, 23.964970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128260, 39.260517, 23.584915>,  <30.858698, 38.894753, 24.127159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128260, 39.260517, 23.584915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302900, 38.900864, 23.572636>,  <31.407684, 38.685074, 23.565268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302900, 38.900864, 23.572636>,  <31.128260, 39.260517, 23.584915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302900, 38.900864, 23.572636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161951, -0.044984, -0.985773,
		0.884957, 0.435364, -0.165255,
		0.436604, -0.899130, -0.030699,
		31.433882, 38.631126, 23.563427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615501, 39.276356, 23.055136>,  <31.128260, 39.260517, 23.584915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615501, 39.276356, 23.055136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.524647, 38.889057, 23.096910>,  <31.470135, 38.656677, 23.121975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.524647, 38.889057, 23.096910>,  <31.615501, 39.276356, 23.055136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524647, 38.889057, 23.096910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143923, -0.072689, -0.986916,
		0.963169, -0.239195, -0.122843,
		-0.227136, -0.968247, 0.104438,
		31.456507, 38.598583, 23.128242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788950, 39.028770, 22.434978>,  <31.615501, 39.276356, 23.055136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788950, 39.028770, 22.434978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606327, 38.703239, 22.578783>,  <31.496754, 38.507923, 22.665066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606327, 38.703239, 22.578783>,  <31.788950, 39.028770, 22.434978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606327, 38.703239, 22.578783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299701, -0.239787, -0.923407,
		0.837697, -0.529333, -0.134427,
		-0.456556, -0.813823, 0.359511,
		31.469360, 38.459091, 22.686636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958656, 38.458179, 22.076050>,  <31.788950, 39.028770, 22.434978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958656, 38.458179, 22.076050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.605078, 38.366695, 22.239185>,  <31.392931, 38.311806, 22.337067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.605078, 38.366695, 22.239185>,  <31.958656, 38.458179, 22.076050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605078, 38.366695, 22.239185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383805, -0.143313, -0.912225,
		0.267088, -0.962887, 0.038898,
		-0.883944, -0.228715, 0.407838,
		31.339895, 38.298080, 22.361536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796448, 37.922539, 21.681347>,  <31.958656, 38.458179, 22.076050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796448, 37.922539, 21.681347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457066, 38.015896, 21.871357>,  <31.253437, 38.071911, 21.985363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457066, 38.015896, 21.871357>,  <31.796448, 37.922539, 21.681347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457066, 38.015896, 21.871357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506656, -0.098633, -0.856488,
		-0.153054, -0.967365, 0.201941,
		-0.848454, 0.233403, 0.475024,
		31.202530, 38.085915, 22.013865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264599, 37.452312, 21.521540>,  <31.796448, 37.922539, 21.681347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264599, 37.452312, 21.521540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.059095, 37.781727, 21.617739>,  <30.935793, 37.979378, 21.675457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.059095, 37.781727, 21.617739>,  <31.264599, 37.452312, 21.521540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059095, 37.781727, 21.617739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629898, -0.171760, -0.757448,
		-0.582480, -0.540632, 0.606988,
		-0.513757, 0.823538, 0.240496,
		30.904968, 38.028790, 21.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867760, 36.863556, 21.181835>,  <31.264599, 37.452312, 21.521540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867760, 36.863556, 21.181835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495066, 36.751862, 21.088966>,  <30.271450, 36.684845, 21.033245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495066, 36.751862, 21.088966>,  <30.867760, 36.863556, 21.181835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495066, 36.751862, 21.088966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169616, -0.230688, 0.958130,
		-0.321099, 0.932101, 0.167578,
		-0.931733, -0.279231, -0.232173,
		30.215546, 36.668091, 21.019314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451576, 37.186047, 21.657003>,  <30.867760, 36.863556, 21.181835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451576, 37.186047, 21.657003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207777, 36.905727, 21.508738>,  <30.061497, 36.737534, 21.419779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207777, 36.905727, 21.508738>,  <30.451576, 37.186047, 21.657003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207777, 36.905727, 21.508738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225805, -0.294724, 0.928520,
		-0.759951, 0.649629, 0.021389,
		-0.609497, -0.700800, -0.370665,
		30.024927, 36.695488, 21.397537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869816, 37.260830, 22.005524>,  <30.451576, 37.186047, 21.657003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869816, 37.260830, 22.005524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.856188, 36.894451, 21.845585>,  <29.848011, 36.674625, 21.749622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.856188, 36.894451, 21.845585>,  <29.869816, 37.260830, 22.005524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856188, 36.894451, 21.845585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472292, -0.337832, 0.814131,
		-0.880783, 0.216582, -0.421086,
		-0.034070, -0.915948, -0.399847,
		29.845966, 36.619667, 21.725630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228733, 36.941227, 22.310944>,  <29.869816, 37.260830, 22.005524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228733, 36.941227, 22.310944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438063, 36.629055, 22.174086>,  <29.563660, 36.441753, 22.091970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438063, 36.629055, 22.174086>,  <29.228733, 36.941227, 22.310944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438063, 36.629055, 22.174086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266815, -0.531395, 0.804008,
		-0.809285, -0.329468, -0.486322,
		0.523324, -0.780429, -0.342143,
		29.595060, 36.394928, 22.071444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846291, 36.442112, 22.499172>,  <29.228733, 36.941227, 22.310944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846291, 36.442112, 22.499172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193647, 36.260094, 22.420349>,  <29.402061, 36.150883, 22.373055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193647, 36.260094, 22.420349>,  <28.846291, 36.442112, 22.499172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193647, 36.260094, 22.420349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060605, -0.297017, 0.952947,
		-0.492165, -0.839472, -0.230348,
		0.868390, -0.455047, -0.197058,
		29.454165, 36.123581, 22.361231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854866, 35.648643, 22.788671>,  <28.846291, 36.442112, 22.499172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854866, 35.648643, 22.788671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224560, 35.800945, 22.777218>,  <29.446377, 35.892326, 22.770346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224560, 35.800945, 22.777218>,  <28.854866, 35.648643, 22.788671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224560, 35.800945, 22.777218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168484, -0.339388, 0.925434,
		0.342642, -0.860143, -0.377824,
		0.924235, 0.380750, -0.028632,
		29.501831, 35.915169, 22.768629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259748, 35.183712, 23.168736>,  <28.854866, 35.648643, 22.788671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259748, 35.183712, 23.168736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.494669, 35.506752, 23.147360>,  <29.635620, 35.700577, 23.134535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.494669, 35.506752, 23.147360>,  <29.259748, 35.183712, 23.168736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494669, 35.506752, 23.147360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262728, -0.127777, 0.956372,
		0.765541, -0.575716, -0.287224,
		0.587299, 0.807604, -0.053438,
		29.670858, 35.749035, 23.131329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946831, 34.988754, 23.438341>,  <29.259748, 35.183712, 23.168736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946831, 34.988754, 23.438341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980824, 35.382103, 23.502541>,  <30.001219, 35.618111, 23.541061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980824, 35.382103, 23.502541>,  <29.946831, 34.988754, 23.438341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980824, 35.382103, 23.502541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239460, -0.176519, 0.954725,
		0.967180, -0.042701, -0.250479,
		0.084982, 0.983371, 0.160500,
		30.006319, 35.677113, 23.550690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401358, 34.488647, 23.663248>,  <29.946831, 34.988754, 23.438341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401358, 34.488647, 23.663248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.397165, 34.089622, 23.635670>,  <30.394650, 33.850208, 23.619123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.397165, 34.089622, 23.635670>,  <30.401358, 34.488647, 23.663248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397165, 34.089622, 23.635670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286788, 0.063053, -0.955917,
		0.957937, -0.029789, 0.285429,
		-0.010478, -0.997565, -0.068944,
		30.394022, 33.790352, 23.614986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084074, 34.284882, 23.370045>,  <30.401358, 34.488647, 23.663248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084074, 34.284882, 23.370045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816875, 33.994137, 23.306223>,  <30.656557, 33.819691, 23.267931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816875, 33.994137, 23.306223>,  <31.084074, 34.284882, 23.370045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816875, 33.994137, 23.306223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276495, -0.043367, -0.960036,
		0.690892, -0.685416, 0.229942,
		-0.667996, -0.726860, -0.159552,
		30.616476, 33.776077, 23.258358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434402, 33.936398, 22.946173>,  <31.084074, 34.284882, 23.370045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434402, 33.936398, 22.946173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.092945, 33.731045, 22.911001>,  <30.888071, 33.607834, 22.889898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.092945, 33.731045, 22.911001>,  <31.434402, 33.936398, 22.946173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092945, 33.731045, 22.911001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322816, -0.388995, -0.862828,
		0.408760, -0.764931, 0.497791,
		-0.853642, -0.513385, -0.087926,
		30.836853, 33.577030, 22.884623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607332, 33.255249, 23.023512>,  <31.434402, 33.936398, 22.946173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607332, 33.255249, 23.023512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.281174, 33.304214, 22.797186>,  <31.085478, 33.333595, 22.661390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.281174, 33.304214, 22.797186>,  <31.607332, 33.255249, 23.023512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281174, 33.304214, 22.797186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479925, -0.403631, -0.778945,
		-0.323730, -0.906696, 0.270371,
		-0.815396, 0.122410, -0.565813,
		31.036554, 33.340939, 22.627441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503136, 32.583111, 22.677628>,  <31.607332, 33.255249, 23.023512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503136, 32.583111, 22.677628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294277, 32.849724, 22.464802>,  <31.168962, 33.009693, 22.337107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294277, 32.849724, 22.464802>,  <31.503136, 32.583111, 22.677628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294277, 32.849724, 22.464802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394987, -0.363930, -0.843528,
		-0.755875, -0.650606, -0.073247,
		-0.522147, 0.666534, -0.532067,
		31.137632, 33.049683, 22.305182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228035, 32.208904, 22.094917>,  <31.503136, 32.583111, 22.677628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228035, 32.208904, 22.094917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214436, 32.585991, 21.962170>,  <31.206276, 32.812241, 21.882523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214436, 32.585991, 21.962170>,  <31.228035, 32.208904, 22.094917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214436, 32.585991, 21.962170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204539, -0.318467, -0.925604,
		-0.978268, -0.099347, -0.181995,
		-0.033996, 0.942714, -0.331867,
		31.204237, 32.868805, 21.862610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897480, 32.133904, 21.475368>,  <31.228035, 32.208904, 22.094917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897480, 32.133904, 21.475368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.093641, 32.482414, 21.467539>,  <31.211338, 32.691521, 21.462841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.093641, 32.482414, 21.467539>,  <30.897480, 32.133904, 21.475368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093641, 32.482414, 21.467539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367313, -0.227006, -0.901969,
		-0.790308, 0.435139, -0.431356,
		0.490403, 0.871276, -0.019573,
		31.240763, 32.743797, 21.461668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832464, 32.402699, 20.824144>,  <30.897480, 32.133904, 21.475368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832464, 32.402699, 20.824144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135653, 32.607140, 20.986258>,  <31.317566, 32.729805, 21.083525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135653, 32.607140, 20.986258>,  <30.832464, 32.402699, 20.824144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135653, 32.607140, 20.986258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556304, -0.182088, -0.810784,
		-0.340596, 0.840011, -0.422345,
		0.757971, 0.511102, 0.405283,
		31.363045, 32.760471, 21.107843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901482, 32.896408, 20.285093>,  <30.832464, 32.402699, 20.824144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901482, 32.896408, 20.285093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238865, 32.856407, 20.496216>,  <31.441296, 32.832405, 20.622889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238865, 32.856407, 20.496216>,  <30.901482, 32.896408, 20.285093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238865, 32.856407, 20.496216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500505, -0.210583, -0.839732,
		0.195124, 0.972447, -0.127565,
		0.843458, -0.100005, 0.527805,
		31.491901, 32.826405, 20.654556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.451599, 35.826672, 35.963871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813793, 35.787853, 35.798618>,  <34.031109, 35.764561, 35.699467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813793, 35.787853, 35.798618>,  <33.451599, 35.826672, 35.963871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813793, 35.787853, 35.798618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387944, -0.583929, -0.713110,
		-0.172031, 0.805983, -0.566390,
		0.905486, -0.097050, -0.413130,
		34.085438, 35.758739, 35.674679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393871, 36.085209, 35.306736>,  <33.451599, 35.826672, 35.963871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393871, 36.085209, 35.306736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704605, 35.833656, 35.293884>,  <33.891045, 35.682724, 35.286171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704605, 35.833656, 35.293884>,  <33.393871, 36.085209, 35.306736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704605, 35.833656, 35.293884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311625, -0.339598, -0.887447,
		0.547188, 0.699414, -0.459788,
		0.776837, -0.628882, -0.032131,
		33.937656, 35.644993, 35.284245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653603, 36.180428, 34.761017>,  <33.393871, 36.085209, 35.306736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653603, 36.180428, 34.761017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777225, 35.809574, 34.845776>,  <33.851398, 35.587063, 34.896629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777225, 35.809574, 34.845776>,  <33.653603, 36.180428, 34.761017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777225, 35.809574, 34.845776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472692, -0.343081, -0.811700,
		0.825255, 0.150700, -0.544282,
		0.309056, -0.927138, 0.211895,
		33.869942, 35.531433, 34.909344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021801, 35.879341, 34.201233>,  <33.653603, 36.180428, 34.761017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021801, 35.879341, 34.201233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891994, 35.568272, 34.416607>,  <33.814110, 35.381630, 34.545834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891994, 35.568272, 34.416607>,  <34.021801, 35.879341, 34.201233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891994, 35.568272, 34.416607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413791, -0.395166, -0.820134,
		0.850568, -0.488948, -0.193556,
		-0.324517, -0.777671, 0.538438,
		33.794640, 35.334969, 34.578140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306816, 35.349232, 33.828186>,  <34.021801, 35.879341, 34.201233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306816, 35.349232, 33.828186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015701, 35.207771, 34.063221>,  <33.841034, 35.122894, 34.204243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015701, 35.207771, 34.063221>,  <34.306816, 35.349232, 33.828186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015701, 35.207771, 34.063221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407878, -0.465577, -0.785413,
		0.551327, -0.811278, 0.194596,
		-0.727788, -0.353647, 0.587588,
		33.797363, 35.101677, 34.239498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150997, 34.792892, 33.516174>,  <34.306816, 35.349232, 33.828186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150997, 34.792892, 33.516174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824585, 34.823292, 33.745373>,  <33.628738, 34.841530, 33.882893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824585, 34.823292, 33.745373>,  <34.150997, 34.792892, 33.516174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824585, 34.823292, 33.745373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547689, -0.418532, -0.724477,
		0.184757, -0.905017, 0.383157,
		-0.816028, 0.075999, 0.572995,
		33.579777, 34.846092, 33.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717129, 34.173878, 33.384884>,  <34.150997, 34.792892, 33.516174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717129, 34.173878, 33.384884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485779, 34.459373, 33.542896>,  <33.346970, 34.630672, 33.637703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485779, 34.459373, 33.542896>,  <33.717129, 34.173878, 33.384884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485779, 34.459373, 33.542896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719915, -0.218832, -0.658662,
		-0.383671, -0.665343, 0.640403,
		-0.578376, 0.713745, 0.395031,
		33.312267, 34.673496, 33.661407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110214, 33.864681, 33.716835>,  <33.717129, 34.173878, 33.384884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110214, 33.864681, 33.716835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001362, 34.237839, 33.622467>,  <32.936050, 34.461731, 33.565845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001362, 34.237839, 33.622467>,  <33.110214, 33.864681, 33.716835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001362, 34.237839, 33.622467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784549, -0.357061, -0.506943,
		-0.557159, 0.047132, 0.829067,
		-0.272134, 0.932892, -0.235917,
		32.919720, 34.517708, 33.551693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377880, 33.897240, 33.853634>,  <33.110214, 33.864681, 33.716835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377880, 33.897240, 33.853634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439137, 34.200035, 33.599545>,  <32.475891, 34.381714, 33.447090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439137, 34.200035, 33.599545>,  <32.377880, 33.897240, 33.853634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439137, 34.200035, 33.599545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725736, -0.350135, -0.592210,
		-0.670712, 0.551699, 0.495756,
		0.153140, 0.756990, -0.635228,
		32.485077, 34.427132, 33.408978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776739, 34.146564, 33.707783>,  <32.377880, 33.897240, 33.853634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776739, 34.146564, 33.707783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.962023, 34.290920, 33.384007>,  <32.073193, 34.377533, 33.189739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.962023, 34.290920, 33.384007>,  <31.776739, 34.146564, 33.707783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962023, 34.290920, 33.384007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726903, -0.367784, -0.579954,
		-0.507000, 0.857025, 0.091973,
		0.463209, 0.360892, -0.809441,
		32.100986, 34.399189, 33.141174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196224, 34.257385, 33.227814>,  <31.776739, 34.146564, 33.707783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196224, 34.257385, 33.227814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508486, 34.301270, 32.981709>,  <31.695843, 34.327599, 32.834045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508486, 34.301270, 32.981709>,  <31.196224, 34.257385, 33.227814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508486, 34.301270, 32.981709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609995, -0.080427, -0.788313,
		-0.135967, 0.990705, 0.004136,
		0.780653, 0.109708, -0.615261,
		31.742682, 34.334183, 32.797131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980415, 34.657902, 32.522724>,  <31.196224, 34.257385, 33.227814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980415, 34.657902, 32.522724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315962, 34.463619, 32.424427>,  <31.517290, 34.347050, 32.365448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315962, 34.463619, 32.424427>,  <30.980415, 34.657902, 32.522724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315962, 34.463619, 32.424427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358612, -0.153490, -0.920781,
		0.409514, 0.860538, -0.302939,
		0.838866, -0.485710, -0.245743,
		31.567621, 34.317905, 32.350704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014946, 35.449894, 32.599808>,  <30.980415, 34.657902, 32.522724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014946, 35.449894, 32.599808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.741087, 35.726345, 32.507202>,  <30.576771, 35.892216, 32.451637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.741087, 35.726345, 32.507202>,  <31.014946, 35.449894, 32.599808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741087, 35.726345, 32.507202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098579, 0.402516, 0.910090,
		0.722178, 0.600268, -0.343712,
		-0.684647, 0.691129, -0.231514,
		30.535692, 35.933685, 32.437748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284018, 36.037212, 32.830204>,  <31.014946, 35.449894, 32.599808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284018, 36.037212, 32.830204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.897900, 36.128078, 32.778671>,  <30.666229, 36.182598, 32.747749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.897900, 36.128078, 32.778671>,  <31.284018, 36.037212, 32.830204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897900, 36.128078, 32.778671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015421, 0.442881, 0.896448,
		0.260701, 0.867325, -0.424009,
		-0.965297, 0.227166, -0.128834,
		30.608311, 36.196228, 32.740021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239029, 36.686527, 32.996330>,  <31.284018, 36.037212, 32.830204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239029, 36.686527, 32.996330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879446, 36.515736, 33.035458>,  <30.663696, 36.413261, 33.058933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879446, 36.515736, 33.035458>,  <31.239029, 36.686527, 32.996330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879446, 36.515736, 33.035458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093631, 0.405440, 0.909314,
		-0.427914, 0.808275, -0.404451,
		-0.898957, -0.426977, 0.097814,
		30.609758, 36.387642, 33.064800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839985, 37.183426, 33.222912>,  <31.239029, 36.686527, 32.996330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839985, 37.183426, 33.222912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661903, 36.842213, 33.331814>,  <30.555054, 36.637486, 33.397156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661903, 36.842213, 33.331814>,  <30.839985, 37.183426, 33.222912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661903, 36.842213, 33.331814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060167, 0.331864, 0.941406,
		-0.893405, 0.402737, -0.199072,
		-0.445204, -0.853035, 0.272258,
		30.528341, 36.586304, 33.413490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490227, 37.439240, 33.807980>,  <30.839985, 37.183426, 33.222912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490227, 37.439240, 33.807980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472584, 37.042721, 33.857582>,  <30.461998, 36.804810, 33.887344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472584, 37.042721, 33.857582>,  <30.490227, 37.439240, 33.807980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472584, 37.042721, 33.857582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078739, 0.120296, 0.989610,
		-0.995919, 0.053413, 0.072748,
		-0.044107, -0.991300, 0.124011,
		30.459352, 36.745331, 33.894787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108374, 37.400944, 34.452156>,  <30.490227, 37.439240, 33.807980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108374, 37.400944, 34.452156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303328, 37.059231, 34.379864>,  <30.420300, 36.854202, 34.336491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303328, 37.059231, 34.379864>,  <30.108374, 37.400944, 34.452156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303328, 37.059231, 34.379864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340419, -0.004699, 0.940262,
		-0.804095, -0.519794, 0.288523,
		0.487387, -0.854279, -0.180727,
		30.449543, 36.802948, 34.325645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146757, 37.058563, 35.201626>,  <30.108374, 37.400944, 34.452156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146757, 37.058563, 35.201626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409462, 36.863350, 34.971672>,  <30.567085, 36.746223, 34.833698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409462, 36.863350, 34.971672>,  <30.146757, 37.058563, 35.201626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409462, 36.863350, 34.971672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601035, -0.121651, 0.789910,
		-0.455436, -0.864307, 0.213427,
		0.656761, -0.488031, -0.574884,
		30.606491, 36.716942, 34.799206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242481, 36.453129, 35.490875>,  <30.146757, 37.058563, 35.201626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242481, 36.453129, 35.490875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.566200, 36.530914, 35.269165>,  <30.760431, 36.577583, 35.136139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.566200, 36.530914, 35.269165>,  <30.242481, 36.453129, 35.490875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566200, 36.530914, 35.269165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583126, -0.152372, 0.797965,
		0.070719, -0.969003, -0.236710,
		0.809298, 0.194463, -0.554275,
		30.808990, 36.589252, 35.102882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792364, 35.949677, 35.747944>,  <30.242481, 36.453129, 35.490875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792364, 35.949677, 35.747944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980717, 36.248833, 35.560783>,  <31.093729, 36.428326, 35.448486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980717, 36.248833, 35.560783>,  <30.792364, 35.949677, 35.747944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980717, 36.248833, 35.560783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489231, 0.219980, 0.843956,
		0.734114, -0.626318, -0.262305,
		0.470883, 0.747887, -0.467904,
		31.121981, 36.473198, 35.420414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505743, 35.768467, 35.774639>,  <30.792364, 35.949677, 35.747944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505743, 35.768467, 35.774639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501877, 36.158730, 35.687012>,  <31.499557, 36.392887, 35.634434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501877, 36.158730, 35.687012>,  <31.505743, 35.768467, 35.774639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501877, 36.158730, 35.687012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729121, 0.156806, 0.666179,
		0.684317, -0.153291, -0.712890,
		-0.009666, 0.975661, -0.219073,
		31.498978, 36.451427, 35.621288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225761, 36.032707, 35.685326>,  <31.505743, 35.768467, 35.774639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225761, 36.032707, 35.685326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026962, 36.372089, 35.758121>,  <31.907682, 36.575718, 35.801800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026962, 36.372089, 35.758121>,  <32.225761, 36.032707, 35.685326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026962, 36.372089, 35.758121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746537, 0.311156, 0.588103,
		0.442349, 0.428151, -0.788045,
		-0.497002, 0.848451, 0.181991,
		31.877861, 36.626625, 35.812717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755650, 36.560734, 35.805161>,  <32.225761, 36.032707, 35.685326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755650, 36.560734, 35.805161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423134, 36.702877, 35.976120>,  <32.223625, 36.788162, 36.078697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423134, 36.702877, 35.976120>,  <32.755650, 36.560734, 35.805161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423134, 36.702877, 35.976120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546386, 0.381264, 0.745721,
		0.102047, 0.853439, -0.511106,
		-0.831293, 0.355360, 0.427400,
		32.173744, 36.809486, 36.104340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893101, 37.236500, 35.942989>,  <32.755650, 36.560734, 35.805161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893101, 37.236500, 35.942989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578388, 37.137730, 36.169266>,  <32.389561, 37.078468, 36.305031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578388, 37.137730, 36.169266>,  <32.893101, 37.236500, 35.942989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578388, 37.137730, 36.169266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411794, 0.472714, 0.779081,
		-0.459780, 0.845915, -0.270243,
		-0.786783, -0.246921, 0.565687,
		32.342354, 37.063652, 36.338970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766438, 37.877434, 36.217491>,  <32.893101, 37.236500, 35.942989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766438, 37.877434, 36.217491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644829, 37.586525, 36.463627>,  <32.571861, 37.411980, 36.611309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644829, 37.586525, 36.463627>,  <32.766438, 37.877434, 36.217491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644829, 37.586525, 36.463627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520863, 0.413930, 0.746568,
		-0.797666, 0.547484, 0.252964,
		-0.304025, -0.727271, 0.615342,
		32.553619, 37.368343, 36.648228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425190, 38.281971, 36.761467>,  <32.766438, 37.877434, 36.217491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425190, 38.281971, 36.761467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620907, 37.939308, 36.826862>,  <32.738335, 37.733711, 36.866100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620907, 37.939308, 36.826862>,  <32.425190, 38.281971, 36.761467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620907, 37.939308, 36.826862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670402, 0.489352, 0.557760,
		-0.557815, -0.163301, 0.813741,
		0.489288, -0.856661, 0.163491,
		32.767693, 37.682308, 36.875908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771889, 38.975288, 37.078659>,  <32.425190, 38.281971, 36.761467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771889, 38.975288, 37.078659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878929, 39.337246, 36.946262>,  <32.943153, 39.554420, 36.866825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878929, 39.337246, 36.946262>,  <32.771889, 38.975288, 37.078659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878929, 39.337246, 36.946262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231263, -0.273158, -0.933757,
		-0.935365, 0.326420, 0.136172,
		0.267600, 0.904895, -0.330991,
		32.959209, 39.608715, 36.846966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299980, 39.173420, 36.553982>,  <32.771889, 38.975288, 37.078659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299980, 39.173420, 36.553982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597389, 39.432629, 36.487953>,  <32.775833, 39.588154, 36.448338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597389, 39.432629, 36.487953>,  <32.299980, 39.173420, 36.553982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597389, 39.432629, 36.487953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111883, -0.122820, -0.986102,
		-0.659285, 0.751657, -0.018818,
		0.743522, 0.648017, -0.165071,
		32.820446, 39.627033, 36.438431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008980, 39.655033, 36.139294>,  <32.299980, 39.173420, 36.553982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008980, 39.655033, 36.139294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404430, 39.668747, 36.080727>,  <32.641701, 39.676975, 36.045586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404430, 39.668747, 36.080727>,  <32.008980, 39.655033, 36.139294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404430, 39.668747, 36.080727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149577, 0.124127, -0.980928,
		-0.015454, 0.991674, 0.127843,
		0.988629, 0.034282, -0.146414,
		32.701019, 39.679031, 36.036804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183872, 40.176617, 35.508987>,  <32.008980, 39.655033, 36.139294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183872, 40.176617, 35.508987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486717, 39.916454, 35.533478>,  <32.668427, 39.760357, 35.548172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486717, 39.916454, 35.533478>,  <32.183872, 40.176617, 35.508987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486717, 39.916454, 35.533478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036984, -0.050893, -0.998019,
		0.652235, 0.757879, -0.014477,
		0.757114, -0.650407, 0.061224,
		32.713852, 39.721333, 35.551846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667488, 40.357487, 35.066193>,  <32.183872, 40.176617, 35.508987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667488, 40.357487, 35.066193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827824, 39.991756, 35.089314>,  <32.924026, 39.772320, 35.103184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827824, 39.991756, 35.089314>,  <32.667488, 40.357487, 35.066193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827824, 39.991756, 35.089314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149952, 0.003241, -0.988688,
		0.903791, 0.404976, 0.138403,
		0.400843, -0.914322, 0.057798,
		32.948078, 39.717461, 35.106651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370014, 40.414619, 34.733223>,  <32.667488, 40.357487, 35.066193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370014, 40.414619, 34.733223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262634, 40.029358, 34.739864>,  <33.198208, 39.798203, 34.743851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262634, 40.029358, 34.739864>,  <33.370014, 40.414619, 34.733223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262634, 40.029358, 34.739864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099976, -0.044999, -0.993972,
		0.958092, -0.265171, 0.108372,
		-0.268449, -0.963151, 0.016603,
		33.182098, 39.740414, 34.744846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826427, 40.028603, 34.230499>,  <33.370014, 40.414619, 34.733223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826427, 40.028603, 34.230499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485771, 39.823997, 34.276207>,  <33.281376, 39.701233, 34.303631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485771, 39.823997, 34.276207>,  <33.826427, 40.028603, 34.230499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485771, 39.823997, 34.276207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048847, -0.139603, -0.989002,
		0.521838, -0.847860, 0.093906,
		-0.851645, -0.511512, 0.114266,
		33.230278, 39.670544, 34.310486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849838, 39.353062, 33.799549>,  <33.826427, 40.028603, 34.230499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849838, 39.353062, 33.799549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457584, 39.411110, 33.852169>,  <33.222233, 39.445938, 33.883739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457584, 39.411110, 33.852169>,  <33.849838, 39.353062, 33.799549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457584, 39.411110, 33.852169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182858, -0.437575, -0.880392,
		-0.070196, -0.887394, 0.455635,
		-0.980630, 0.145116, 0.131551,
		33.163395, 39.454643, 33.891636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551807, 38.662560, 33.561890>,  <33.849838, 39.353062, 33.799549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551807, 38.662560, 33.561890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242466, 38.915020, 33.585819>,  <33.056862, 39.066494, 33.600178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242466, 38.915020, 33.585819>,  <33.551807, 38.662560, 33.561890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242466, 38.915020, 33.585819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345734, -0.340759, -0.874272,
		-0.531407, -0.696804, 0.481736,
		-0.773352, 0.631148, 0.059827,
		33.010460, 39.104362, 33.603767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950863, 38.307888, 33.315735>,  <33.551807, 38.662560, 33.561890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950863, 38.307888, 33.315735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825649, 38.686928, 33.290253>,  <32.750519, 38.914352, 33.274963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825649, 38.686928, 33.290253>,  <32.950863, 38.307888, 33.315735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825649, 38.686928, 33.290253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124381, -0.107403, -0.986404,
		-0.941561, -0.300858, 0.151485,
		-0.313038, 0.947602, -0.063706,
		32.731739, 38.971207, 33.271141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333683, 38.321896, 32.883961>,  <32.950863, 38.307888, 33.315735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333683, 38.321896, 32.883961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483490, 38.691765, 32.856487>,  <32.573372, 38.913685, 32.840004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483490, 38.691765, 32.856487>,  <32.333683, 38.321896, 32.883961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483490, 38.691765, 32.856487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027589, -0.062929, -0.997637,
		-0.926811, 0.375523, 0.001943,
		0.374513, 0.924674, -0.068683,
		32.595844, 38.969166, 32.835884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841549, 38.645584, 32.499496>,  <32.333683, 38.321896, 32.883961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841549, 38.645584, 32.499496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172089, 38.867878, 32.463028>,  <32.370411, 39.001255, 32.441147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172089, 38.867878, 32.463028>,  <31.841549, 38.645584, 32.499496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172089, 38.867878, 32.463028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090901, -0.028153, -0.995462,
		-0.555776, 0.830885, 0.027253,
		0.826348, 0.555731, -0.091175,
		32.419994, 39.034595, 32.435677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756632, 39.017101, 31.959623>,  <31.841549, 38.645584, 32.499496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756632, 39.017101, 31.959623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149048, 39.091202, 31.982397>,  <32.384499, 39.135662, 31.996061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149048, 39.091202, 31.982397>,  <31.756632, 39.017101, 31.959623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149048, 39.091202, 31.982397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068592, -0.057134, -0.996008,
		-0.181258, 0.981029, -0.068757,
		0.981041, 0.185250, 0.056935,
		32.443359, 39.146778, 31.999477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852715, 39.654053, 31.671492>,  <31.756632, 39.017101, 31.959623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852715, 39.654053, 31.671492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197189, 39.456089, 31.625145>,  <32.403873, 39.337311, 31.597338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197189, 39.456089, 31.625145>,  <31.852715, 39.654053, 31.671492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197189, 39.456089, 31.625145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084028, 0.086196, -0.992728,
		0.501296, 0.864660, 0.032645,
		0.861186, -0.494908, -0.115866,
		32.455544, 39.307617, 31.590385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307430, 40.054245, 31.295229>,  <31.852715, 39.654053, 31.671492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307430, 40.054245, 31.295229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458664, 39.685318, 31.263266>,  <32.549404, 39.463963, 31.244087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458664, 39.685318, 31.263266>,  <32.307430, 40.054245, 31.295229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458664, 39.685318, 31.263266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136699, 0.140987, -0.980529,
		0.915624, 0.359796, 0.179384,
		0.378081, -0.922318, -0.079908,
		32.572086, 39.408623, 31.239294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934174, 40.075054, 30.893623>,  <32.307430, 40.054245, 31.295229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934174, 40.075054, 30.893623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806278, 39.697899, 30.856234>,  <32.729542, 39.471607, 30.833799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806278, 39.697899, 30.856234>,  <32.934174, 40.075054, 30.893623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806278, 39.697899, 30.856234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004689, 0.097077, -0.995266,
		0.947495, -0.318662, -0.026617,
		-0.319737, -0.942884, -0.093475,
		32.710358, 39.415035, 30.828192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418301, 39.840164, 30.353939>,  <32.934174, 40.075054, 30.893623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418301, 39.840164, 30.353939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132660, 39.561062, 30.376570>,  <32.961277, 39.393600, 30.390148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132660, 39.561062, 30.376570>,  <33.418301, 39.840164, 30.353939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132660, 39.561062, 30.376570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008701, -0.089657, -0.995935,
		0.699988, -0.710707, 0.070096,
		-0.714102, -0.697752, 0.056575,
		32.918430, 39.351738, 30.393541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632496, 39.281548, 29.967499>,  <33.418301, 39.840164, 30.353939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632496, 39.281548, 29.967499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237255, 39.220127, 29.964083>,  <33.000111, 39.183277, 29.962032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237255, 39.220127, 29.964083>,  <33.632496, 39.281548, 29.967499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237255, 39.220127, 29.964083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060935, -0.339930, -0.938475,
		0.141198, -0.927831, 0.345243,
		-0.988104, -0.153548, -0.008540,
		32.940823, 39.174065, 29.961521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476517, 38.590118, 29.609383>,  <33.632496, 39.281548, 29.967499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476517, 38.590118, 29.609383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130966, 38.788303, 29.573086>,  <32.923634, 38.907215, 29.551308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130966, 38.788303, 29.573086>,  <33.476517, 38.590118, 29.609383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130966, 38.788303, 29.573086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052491, -0.090616, -0.994502,
		-0.500958, -0.863892, 0.052274,
		-0.863878, 0.495459, -0.090742,
		32.871803, 38.936939, 29.545864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046715, 38.239075, 29.079952>,  <33.476517, 38.590118, 29.609383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046715, 38.239075, 29.079952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890381, 38.606464, 29.104139>,  <32.796581, 38.826897, 29.118652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890381, 38.606464, 29.104139>,  <33.046715, 38.239075, 29.079952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890381, 38.606464, 29.104139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127559, 0.011015, -0.991770,
		-0.911579, -0.395333, 0.112854,
		-0.390836, 0.918472, 0.060469,
		32.773129, 38.882008, 29.122280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461433, 38.269596, 28.629158>,  <33.046715, 38.239075, 29.079952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461433, 38.269596, 28.629158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561604, 38.652782, 28.685137>,  <32.621708, 38.882694, 28.718723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561604, 38.652782, 28.685137>,  <32.461433, 38.269596, 28.629158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561604, 38.652782, 28.685137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115519, 0.173088, -0.978108,
		-0.961218, 0.228779, 0.154009,
		0.250428, 0.957967, 0.139947,
		32.636730, 38.940174, 28.727121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110558, 38.590942, 28.240734>,  <32.461433, 38.269596, 28.629158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110558, 38.590942, 28.240734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343399, 38.907711, 28.314507>,  <32.483105, 39.097771, 28.358770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343399, 38.907711, 28.314507>,  <32.110558, 38.590942, 28.240734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343399, 38.907711, 28.314507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040177, 0.198534, -0.979270,
		-0.812119, 0.577450, 0.083751,
		0.582107, 0.791919, 0.184433,
		32.518032, 39.145287, 28.369837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845442, 39.175095, 27.869871>,  <32.110558, 38.590942, 28.240734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845442, 39.175095, 27.869871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236912, 39.247204, 27.909248>,  <32.471794, 39.290470, 27.932875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236912, 39.247204, 27.909248>,  <31.845442, 39.175095, 27.869871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236912, 39.247204, 27.909248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086540, 0.072761, -0.993588,
		-0.186284, 0.980921, 0.055609,
		0.978677, 0.180277, 0.098443,
		32.530514, 39.301289, 27.938782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955572, 39.746639, 27.501982>,  <31.845442, 39.175095, 27.869871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955572, 39.746639, 27.501982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319881, 39.582401, 27.519447>,  <32.538467, 39.483856, 27.529926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319881, 39.582401, 27.519447>,  <31.955572, 39.746639, 27.501982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319881, 39.582401, 27.519447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119361, 0.160568, -0.979781,
		0.395284, 0.897568, 0.195250,
		0.910771, -0.410597, 0.043664,
		32.593113, 39.459221, 27.532547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365814, 40.278679, 27.209023>,  <31.955572, 39.746639, 27.501982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365814, 40.278679, 27.209023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547745, 39.922600, 27.198521>,  <32.656902, 39.708954, 27.192219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547745, 39.922600, 27.198521>,  <32.365814, 40.278679, 27.209023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547745, 39.922600, 27.198521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005075, 0.026891, -0.999626,
		0.890566, 0.454789, 0.007712,
		0.454826, -0.890193, -0.026256,
		32.684193, 39.655540, 27.190643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689232, 40.313362, 26.652128>,  <32.365814, 40.278679, 27.209023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689232, 40.313362, 26.652128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692535, 39.921867, 26.734112>,  <32.694519, 39.686970, 26.783302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692535, 39.921867, 26.734112>,  <32.689232, 40.313362, 26.652128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692535, 39.921867, 26.734112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025576, -0.204694, -0.978492,
		0.999639, 0.013327, 0.023340,
		0.008263, -0.978735, 0.204961,
		32.695015, 39.628246, 26.795601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202774, 39.992302, 26.177748>,  <32.689232, 40.313362, 26.652128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202774, 39.992302, 26.177748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.951298, 39.697170, 26.276018>,  <32.800411, 39.520092, 26.334980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.951298, 39.697170, 26.276018>,  <33.202774, 39.992302, 26.177748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951298, 39.697170, 26.276018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172757, -0.175515, -0.969200,
		0.758222, -0.651772, -0.017120,
		-0.628692, -0.737827, 0.245678,
		32.762691, 39.475822, 26.349722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685089, 39.455799, 26.407043>,  <33.202774, 39.992302, 26.177748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685089, 39.455799, 26.407043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047878, 39.378113, 26.257544>,  <34.265553, 39.331501, 26.167843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047878, 39.378113, 26.257544>,  <33.685089, 39.455799, 26.407043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047878, 39.378113, 26.257544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416588, 0.282683, 0.864028,
		-0.062154, -0.939346, 0.337292,
		0.906968, -0.194214, -0.373751,
		34.319969, 39.319847, 26.145418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009212, 38.951843, 26.755482>,  <33.685089, 39.455799, 26.407043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009212, 38.951843, 26.755482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315315, 39.165344, 26.611544>,  <34.498978, 39.293446, 26.525181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315315, 39.165344, 26.611544>,  <34.009212, 38.951843, 26.755482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315315, 39.165344, 26.611544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308830, 0.186058, 0.932741,
		0.564802, -0.824921, -0.022455,
		0.765260, 0.533749, -0.359846,
		34.544895, 39.325470, 26.503590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478256, 38.830357, 27.281433>,  <34.009212, 38.951843, 26.755482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478256, 38.830357, 27.281433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637913, 39.128754, 27.068199>,  <34.733707, 39.307793, 26.940258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637913, 39.128754, 27.068199>,  <34.478256, 38.830357, 27.281433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637913, 39.128754, 27.068199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321131, 0.430841, 0.843357,
		0.858814, -0.507809, -0.067595,
		0.399141, 0.745993, -0.533085,
		34.757656, 39.352551, 26.908274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111744, 38.880276, 27.570595>,  <34.478256, 38.830357, 27.281433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111744, 38.880276, 27.570595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063713, 39.235023, 27.392136>,  <35.034893, 39.447872, 27.285059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063713, 39.235023, 27.392136>,  <35.111744, 38.880276, 27.570595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063713, 39.235023, 27.392136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214034, 0.461960, 0.860687,
		0.969418, 0.007859, -0.245291,
		-0.120079, 0.886866, -0.446150,
		35.027691, 39.501083, 27.258291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691612, 39.171822, 27.605820>,  <35.111744, 38.880276, 27.570595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691612, 39.171822, 27.605820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395603, 39.439228, 27.576300>,  <35.217999, 39.599670, 27.558588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395603, 39.439228, 27.576300>,  <35.691612, 39.171822, 27.605820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395603, 39.439228, 27.576300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024082, 0.135997, 0.990416,
		0.672147, 0.731156, -0.116741,
		-0.740026, 0.668517, -0.073802,
		35.173595, 39.639782, 27.554159>
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
