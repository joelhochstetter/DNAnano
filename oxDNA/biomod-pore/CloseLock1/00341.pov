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
	<24.164444, 35.121574, 34.921425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176441, 35.019146, 35.307903>,  <24.183640, 34.957691, 35.539791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176441, 35.019146, 35.307903>,  <24.164444, 35.121574, 34.921425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.176441, 35.019146, 35.307903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865288, -0.477244, -0.153345,
		0.500377, 0.840635, 0.207258,
		0.029995, -0.256069, 0.966193,
		24.185440, 34.942326, 35.597763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840094, 35.406696, 35.285717>,  <24.164444, 35.121574, 34.921425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840094, 35.406696, 35.285717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688147, 35.073055, 35.445705>,  <24.596979, 34.872871, 35.541698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688147, 35.073055, 35.445705>,  <24.840094, 35.406696, 35.285717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688147, 35.073055, 35.445705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834721, -0.495428, -0.240398,
		0.398675, 0.242548, 0.884437,
		-0.379867, -0.834099, 0.399975,
		24.574186, 34.822826, 35.565697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366217, 35.144566, 35.806694>,  <24.840094, 35.406696, 35.285717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366217, 35.144566, 35.806694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109390, 34.882145, 35.648026>,  <24.955294, 34.724693, 35.552826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109390, 34.882145, 35.648026>,  <25.366217, 35.144566, 35.806694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109390, 34.882145, 35.648026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765505, -0.520354, -0.378462,
		0.041881, -0.546651, 0.836312,
		-0.642065, -0.656052, -0.396672,
		24.916771, 34.685329, 35.529022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559797, 34.814205, 35.158253>,  <25.366217, 35.144566, 35.806694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559797, 34.814205, 35.158253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875509, 35.029968, 35.275608>,  <26.064936, 35.159428, 35.346024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875509, 35.029968, 35.275608>,  <25.559797, 34.814205, 35.158253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875509, 35.029968, 35.275608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526933, -0.349690, -0.774634,
		-0.315246, 0.766001, -0.560234,
		0.789279, 0.539407, 0.293393,
		26.112293, 35.191792, 35.363625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801306, 35.152996, 34.558311>,  <25.559797, 34.814205, 35.158253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801306, 35.152996, 34.558311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105942, 35.084270, 34.808258>,  <26.288723, 35.043034, 34.958225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105942, 35.084270, 34.808258>,  <25.801306, 35.152996, 34.558311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105942, 35.084270, 34.808258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492705, -0.472843, -0.730521,
		0.420977, 0.864234, -0.275459,
		0.761590, -0.171812, 0.624869,
		26.334419, 35.032726, 34.995720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395618, 35.364590, 34.156956>,  <25.801306, 35.152996, 34.558311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395618, 35.364590, 34.156956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518482, 35.119389, 34.448128>,  <26.592201, 34.972267, 34.622829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518482, 35.119389, 34.448128>,  <26.395618, 35.364590, 34.156956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518482, 35.119389, 34.448128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399428, -0.611227, -0.683271,
		0.863777, 0.500628, 0.057107,
		0.307160, -0.613004, 0.727928,
		26.610630, 34.935486, 34.666508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104639, 35.140724, 34.036190>,  <26.395618, 35.364590, 34.156956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104639, 35.140724, 34.036190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982574, 34.852917, 34.285725>,  <26.909336, 34.680233, 34.435448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982574, 34.852917, 34.285725>,  <27.104639, 35.140724, 34.036190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982574, 34.852917, 34.285725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641104, -0.639621, -0.424111,
		0.704175, 0.270524, 0.656471,
		-0.305160, -0.719515, 0.623840,
		26.891026, 34.637062, 34.472878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717440, 34.714069, 34.089607>,  <27.104639, 35.140724, 34.036190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717440, 34.714069, 34.089607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418783, 34.487358, 34.228916>,  <27.239590, 34.351334, 34.312500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418783, 34.487358, 34.228916>,  <27.717440, 34.714069, 34.089607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418783, 34.487358, 34.228916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440053, -0.813434, -0.380367,
		0.498878, -0.130740, 0.856754,
		-0.746642, -0.566774, 0.348272,
		27.194790, 34.317326, 34.333397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025906, 34.108521, 34.169373>,  <27.717440, 34.714069, 34.089607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025906, 34.108521, 34.169373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646080, 33.985489, 34.193760>,  <27.418184, 33.911671, 34.208393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646080, 33.985489, 34.193760>,  <28.025906, 34.108521, 34.169373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646080, 33.985489, 34.193760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234093, -0.824734, -0.514795,
		0.208628, -0.474559, 0.855142,
		-0.949566, -0.307584, 0.060971,
		27.361210, 33.893215, 34.212051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973036, 33.360035, 34.236320>,  <28.025906, 34.108521, 34.169373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973036, 33.360035, 34.236320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591143, 33.426949, 34.137936>,  <27.362007, 33.467098, 34.078903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591143, 33.426949, 34.137936>,  <27.973036, 33.360035, 34.236320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591143, 33.426949, 34.137936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027651, -0.873209, -0.486560,
		-0.296170, -0.457735, 0.838309,
		-0.954735, 0.167284, -0.245961,
		27.304722, 33.477135, 34.064148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492874, 32.808117, 34.512608>,  <27.973036, 33.360035, 34.236320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492874, 32.808117, 34.512608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342108, 32.968430, 34.178585>,  <27.251648, 33.064617, 33.978172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342108, 32.968430, 34.178585>,  <27.492874, 32.808117, 34.512608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342108, 32.968430, 34.178585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076609, -0.911942, -0.403103,
		-0.923077, -0.087961, 0.374423,
		-0.376909, 0.400779, -0.835054,
		27.229033, 33.088661, 33.928070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967575, 32.376720, 34.306213>,  <27.492874, 32.808117, 34.512608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967575, 32.376720, 34.306213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032780, 32.580063, 33.967983>,  <27.071903, 32.702068, 33.765045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032780, 32.580063, 33.967983>,  <26.967575, 32.376720, 34.306213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032780, 32.580063, 33.967983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041555, -0.859821, -0.508902,
		-0.985748, 0.047820, -0.161287,
		0.163014, 0.508352, -0.845580,
		27.081684, 32.732567, 33.714310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579168, 32.095596, 33.888901>,  <26.967575, 32.376720, 34.306213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579168, 32.095596, 33.888901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822163, 32.268784, 33.622517>,  <26.967958, 32.372696, 33.462688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822163, 32.268784, 33.622517>,  <26.579168, 32.095596, 33.888901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822163, 32.268784, 33.622517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041735, -0.854626, -0.517564,
		-0.793233, 0.286619, -0.537244,
		0.607486, 0.432970, -0.665956,
		27.004408, 32.398674, 33.422729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292831, 31.937601, 33.236961>,  <26.579168, 32.095596, 33.888901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292831, 31.937601, 33.236961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681082, 32.017746, 33.183678>,  <26.914032, 32.065834, 33.151707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681082, 32.017746, 33.183678>,  <26.292831, 31.937601, 33.236961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681082, 32.017746, 33.183678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086426, -0.807042, -0.584135,
		-0.224545, 0.555462, -0.800651,
		0.970623, 0.200361, -0.133211,
		26.972269, 32.077854, 33.143715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403147, 31.573227, 32.712063>,  <26.292831, 31.937601, 33.236961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403147, 31.573227, 32.712063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785322, 31.666603, 32.784332>,  <27.014627, 31.722630, 32.827694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785322, 31.666603, 32.784332>,  <26.403147, 31.573227, 32.712063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785322, 31.666603, 32.784332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294556, -0.794111, -0.531624,
		0.019377, 0.561154, -0.827485,
		0.955438, 0.233440, 0.180678,
		27.071953, 31.736635, 32.838535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765606, 31.731516, 32.007885>,  <26.403147, 31.573227, 32.712063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765606, 31.731516, 32.007885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993639, 31.581949, 32.300514>,  <27.130459, 31.492208, 32.476089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993639, 31.581949, 32.300514>,  <26.765606, 31.731516, 32.007885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993639, 31.581949, 32.300514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355383, -0.690592, -0.629909,
		0.740748, 0.619088, -0.260811,
		0.570083, -0.373916, 0.731568,
		27.164663, 31.469774, 32.519985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439810, 31.549225, 31.692019>,  <26.765606, 31.731516, 32.007885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439810, 31.549225, 31.692019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412247, 31.363960, 32.045456>,  <27.395708, 31.252802, 32.257519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412247, 31.363960, 32.045456>,  <27.439810, 31.549225, 31.692019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412247, 31.363960, 32.045456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482194, -0.790829, -0.376932,
		0.873350, 0.400089, 0.277828,
		-0.068908, -0.463161, 0.883591,
		27.391575, 31.225012, 32.310532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084726, 31.138584, 31.813187>,  <27.439810, 31.549225, 31.692019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084726, 31.138584, 31.813187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815443, 30.950045, 32.041088>,  <27.653873, 30.836922, 32.177830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815443, 30.950045, 32.041088>,  <28.084726, 31.138584, 31.813187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815443, 30.950045, 32.041088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294512, -0.877671, -0.378095,
		0.678273, -0.086737, 0.729673,
		-0.673208, -0.471349, 0.569755,
		27.613482, 30.808640, 32.212013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405682, 30.598955, 32.219315>,  <28.084726, 31.138584, 31.813187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405682, 30.598955, 32.219315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020498, 30.491116, 32.221455>,  <27.789389, 30.426413, 32.222736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020498, 30.491116, 32.221455>,  <28.405682, 30.598955, 32.219315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020498, 30.491116, 32.221455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248882, -0.896246, -0.367152,
		0.103775, -0.352222, 0.930146,
		-0.962958, -0.269598, 0.005346,
		27.731611, 30.410236, 32.223057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386749, 29.926868, 32.405464>,  <28.405682, 30.598955, 32.219315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386749, 29.926868, 32.405464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028955, 29.960693, 32.229855>,  <27.814280, 29.980988, 32.124489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028955, 29.960693, 32.229855>,  <28.386749, 29.926868, 32.405464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028955, 29.960693, 32.229855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159473, -0.857018, -0.489988,
		-0.417686, -0.508300, 0.753106,
		-0.894487, 0.084561, -0.439025,
		27.760609, 29.986061, 32.098148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212320, 29.302004, 32.410591>,  <28.386749, 29.926868, 32.405464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212320, 29.302004, 32.410591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952408, 29.442326, 32.140862>,  <27.796459, 29.526518, 31.979023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952408, 29.442326, 32.140862>,  <28.212320, 29.302004, 32.410591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952408, 29.442326, 32.140862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233710, -0.751957, -0.616393,
		-0.723296, -0.558120, 0.406626,
		-0.649787, 0.350802, -0.674326,
		27.757473, 29.547567, 31.938562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824780, 28.701994, 32.153316>,  <28.212320, 29.302004, 32.410591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824780, 28.701994, 32.153316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808176, 28.981712, 31.867867>,  <27.798214, 29.149544, 31.696596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808176, 28.981712, 31.867867>,  <27.824780, 28.701994, 32.153316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808176, 28.981712, 31.867867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288194, -0.675505, -0.678702,
		-0.956672, -0.233834, -0.173495,
		-0.041507, 0.699296, -0.713627,
		27.795723, 29.191502, 31.653778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368603, 28.455713, 31.522346>,  <27.824780, 28.701994, 32.153316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368603, 28.455713, 31.522346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595407, 28.748417, 31.371073>,  <27.731491, 28.924040, 31.280310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595407, 28.748417, 31.371073>,  <27.368603, 28.455713, 31.522346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595407, 28.748417, 31.371073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264943, -0.596744, -0.757431,
		-0.779936, 0.329277, -0.532237,
		0.567014, 0.731760, -0.378182,
		27.765512, 28.967945, 31.257618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246662, 28.421625, 30.778513>,  <27.368603, 28.455713, 31.522346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246662, 28.421625, 30.778513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590977, 28.622444, 30.811972>,  <27.797565, 28.742935, 30.832047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590977, 28.622444, 30.811972>,  <27.246662, 28.421625, 30.778513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590977, 28.622444, 30.811972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354626, -0.473716, -0.806122,
		-0.365088, 0.723561, -0.585807,
		0.860785, 0.502048, 0.083646,
		27.849213, 28.773058, 30.837065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355869, 28.768068, 30.205492>,  <27.246662, 28.421625, 30.778513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355869, 28.768068, 30.205492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717430, 28.728329, 30.371908>,  <27.934366, 28.704485, 30.471758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717430, 28.728329, 30.371908>,  <27.355869, 28.768068, 30.205492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717430, 28.728329, 30.371908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335956, -0.437131, -0.834296,
		0.264752, 0.893894, -0.361747,
		0.903903, -0.099350, 0.416040,
		27.988602, 28.698524, 30.496719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917505, 29.134298, 29.769461>,  <27.355869, 28.768068, 30.205492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917505, 29.134298, 29.769461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977943, 28.784729, 29.954256>,  <28.014206, 28.574987, 30.065132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977943, 28.784729, 29.954256>,  <27.917505, 29.134298, 29.769461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977943, 28.784729, 29.954256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144848, -0.442734, -0.884876,
		0.977849, 0.200619, 0.059691,
		0.151096, -0.873921, 0.461987,
		28.023272, 28.522552, 30.092852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492638, 28.764133, 29.320610>,  <27.917505, 29.134298, 29.769461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492638, 28.764133, 29.320610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216980, 28.530035, 29.491522>,  <28.051586, 28.389576, 29.594069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216980, 28.530035, 29.491522>,  <28.492638, 28.764133, 29.320610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216980, 28.530035, 29.491522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121168, -0.488284, -0.864232,
		0.714422, -0.647353, 0.265585,
		-0.689144, -0.585246, 0.427279,
		28.010237, 28.354462, 29.619705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559259, 28.099380, 29.209671>,  <28.492638, 28.764133, 29.320610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559259, 28.099380, 29.209671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165333, 28.148113, 29.259134>,  <27.928976, 28.177353, 29.288813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165333, 28.148113, 29.259134>,  <28.559259, 28.099380, 29.209671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165333, 28.148113, 29.259134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170908, -0.555637, -0.813669,
		-0.030422, -0.822450, 0.568024,
		-0.984817, 0.121833, 0.123659,
		27.869888, 28.184664, 29.296232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269451, 27.995983, 29.544926>,  <28.559259, 28.099380, 29.209671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269451, 27.995983, 29.544926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564913, 28.244761, 29.648903>,  <29.742191, 28.394028, 29.711288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564913, 28.244761, 29.648903>,  <29.269451, 27.995983, 29.544926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564913, 28.244761, 29.648903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008364, -0.377140, 0.926119,
		0.674030, -0.686257, -0.273375,
		0.738656, 0.621945, 0.259943,
		29.786510, 28.431345, 29.726887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857418, 27.722614, 29.902977>,  <29.269451, 27.995983, 29.544926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857418, 27.722614, 29.902977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814827, 28.090065, 30.055180>,  <29.789272, 28.310535, 30.146502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814827, 28.090065, 30.055180>,  <29.857418, 27.722614, 29.902977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814827, 28.090065, 30.055180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227604, -0.395037, 0.890024,
		0.967915, 0.008161, 0.251146,
		-0.106476, 0.918629, 0.380505,
		29.782885, 28.365654, 30.169331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308664, 28.171949, 30.437822>,  <29.857418, 27.722614, 29.902977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308664, 28.171949, 30.437822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919313, 28.231775, 30.507299>,  <29.685703, 28.267670, 30.548985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919313, 28.231775, 30.507299>,  <30.308664, 28.171949, 30.437822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919313, 28.231775, 30.507299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127716, -0.275339, 0.952826,
		0.190332, 0.949642, 0.248907,
		-0.973377, 0.149563, 0.173690,
		29.627300, 28.276644, 30.559406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074581, 28.793352, 30.848185>,  <30.308664, 28.171949, 30.437822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074581, 28.793352, 30.848185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844664, 28.468264, 30.886326>,  <29.706713, 28.273211, 30.909210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844664, 28.468264, 30.886326>,  <30.074581, 28.793352, 30.848185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844664, 28.468264, 30.886326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286534, -0.090749, 0.953762,
		-0.766491, 0.575540, 0.285035,
		-0.574795, -0.812723, 0.095354,
		29.672226, 28.224447, 30.914932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985962, 28.914478, 31.594099>,  <30.074581, 28.793352, 30.848185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985962, 28.914478, 31.594099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935007, 28.550459, 31.436321>,  <29.904434, 28.332047, 31.341656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935007, 28.550459, 31.436321>,  <29.985962, 28.914478, 31.594099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935007, 28.550459, 31.436321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336184, -0.413759, 0.846040,
		-0.933141, -0.024829, 0.358652,
		-0.127389, -0.910048, -0.394442,
		29.896790, 28.277445, 31.317989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639122, 28.528624, 32.077496>,  <29.985962, 28.914478, 31.594099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639122, 28.528624, 32.077496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857052, 28.286011, 31.845881>,  <29.987810, 28.140444, 31.706911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857052, 28.286011, 31.845881>,  <29.639122, 28.528624, 32.077496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857052, 28.286011, 31.845881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522903, -0.294087, 0.800053,
		-0.655545, -0.738670, 0.156931,
		0.544824, -0.606530, -0.579040,
		30.020498, 28.104052, 31.672169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332714, 28.750719, 32.388863>,  <29.639122, 28.528624, 32.077496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332714, 28.750719, 32.388863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617006, 28.507748, 32.246941>,  <30.787582, 28.361965, 32.161785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617006, 28.507748, 32.246941>,  <30.332714, 28.750719, 32.388863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617006, 28.507748, 32.246941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685550, -0.484986, -0.542964,
		0.157735, 0.629140, -0.761119,
		0.710732, -0.607430, -0.354808,
		30.830227, 28.325520, 32.140499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718874, 29.364794, 32.640419>,  <30.332714, 28.750719, 32.388863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718874, 29.364794, 32.640419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432974, 29.505821, 32.398815>,  <30.261433, 29.590437, 32.253853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432974, 29.505821, 32.398815>,  <30.718874, 29.364794, 32.640419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432974, 29.505821, 32.398815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530608, 0.289252, 0.796736,
		0.455615, 0.889960, -0.019667,
		-0.714752, 0.352569, -0.604008,
		30.218548, 29.611591, 32.217613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691223, 30.017590, 32.547440>,  <30.718874, 29.364794, 32.640419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691223, 30.017590, 32.547440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320202, 29.869511, 32.527035>,  <30.097589, 29.780664, 32.514790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320202, 29.869511, 32.527035>,  <30.691223, 30.017590, 32.547440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320202, 29.869511, 32.527035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240381, 0.486541, 0.839937,
		-0.286121, 0.791348, -0.540280,
		-0.927552, -0.370196, -0.051015,
		30.041937, 29.758451, 32.511730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138813, 30.602823, 32.489491>,  <30.691223, 30.017590, 32.547440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138813, 30.602823, 32.489491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932396, 30.288382, 32.625572>,  <29.808546, 30.099716, 32.707222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932396, 30.288382, 32.625572>,  <30.138813, 30.602823, 32.489491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932396, 30.288382, 32.625572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343141, 0.553631, 0.758779,
		-0.784827, 0.274826, -0.555443,
		-0.516043, -0.786106, 0.340201,
		29.777582, 30.052549, 32.727631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425529, 30.845844, 32.601860>,  <30.138813, 30.602823, 32.489491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425529, 30.845844, 32.601860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496136, 30.525024, 32.830090>,  <29.538500, 30.332533, 32.967030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496136, 30.525024, 32.830090>,  <29.425529, 30.845844, 32.601860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496136, 30.525024, 32.830090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257232, 0.521946, 0.813268,
		-0.950091, -0.290326, -0.114181,
		0.176516, -0.802049, 0.570577,
		29.549091, 30.284410, 33.001263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819983, 30.796131, 32.972977>,  <29.425529, 30.845844, 32.601860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819983, 30.796131, 32.972977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087574, 30.571394, 33.167625>,  <29.248129, 30.436552, 33.284416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087574, 30.571394, 33.167625>,  <28.819983, 30.796131, 32.972977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087574, 30.571394, 33.167625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282764, 0.413093, 0.865678,
		-0.687396, -0.716718, 0.117481,
		0.668978, -0.561844, 0.486621,
		29.288267, 30.402842, 33.313610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515223, 30.604534, 33.600536>,  <28.819983, 30.796131, 32.972977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515223, 30.604534, 33.600536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912327, 30.583523, 33.643742>,  <29.150589, 30.570915, 33.669666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912327, 30.583523, 33.643742>,  <28.515223, 30.604534, 33.600536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912327, 30.583523, 33.643742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049131, 0.643022, 0.764271,
		-0.109601, -0.764045, 0.635786,
		0.992761, -0.052528, 0.108014,
		29.210155, 30.567764, 33.676147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628040, 30.623028, 34.390606>,  <28.515223, 30.604534, 33.600536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628040, 30.623028, 34.390606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981794, 30.710241, 34.225521>,  <29.194046, 30.762569, 34.126472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981794, 30.710241, 34.225521>,  <28.628040, 30.623028, 34.390606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981794, 30.710241, 34.225521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223263, 0.578882, 0.784251,
		0.409902, -0.785721, 0.463274,
		0.884383, 0.218034, -0.412707,
		29.247108, 30.775652, 34.101707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110884, 30.898962, 34.977146>,  <28.628040, 30.623028, 34.390606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110884, 30.898962, 34.977146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286600, 31.007736, 34.634666>,  <29.392031, 31.073000, 34.429180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286600, 31.007736, 34.634666>,  <29.110884, 30.898962, 34.977146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286600, 31.007736, 34.634666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279626, 0.864345, 0.417991,
		0.853714, -0.423037, 0.303665,
		0.439297, 0.271933, -0.856196,
		29.418388, 31.089317, 34.377808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795813, 31.006731, 35.129848>,  <29.110884, 30.898962, 34.977146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795813, 31.006731, 35.129848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723503, 31.219255, 34.798782>,  <29.680117, 31.346771, 34.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723503, 31.219255, 34.798782>,  <29.795813, 31.006731, 35.129848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723503, 31.219255, 34.798782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430499, 0.799377, 0.419126,
		0.884302, -0.280542, -0.373236,
		-0.180774, 0.531312, -0.827664,
		29.669271, 31.378649, 34.550484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272177, 31.511786, 35.136433>,  <29.795813, 31.006731, 35.129848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272177, 31.511786, 35.136433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009602, 31.656389, 34.871586>,  <29.852057, 31.743151, 34.712677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009602, 31.656389, 34.871586>,  <30.272177, 31.511786, 35.136433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009602, 31.656389, 34.871586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230443, 0.931840, 0.280305,
		0.718323, 0.031421, -0.695000,
		-0.656436, 0.361507, -0.662121,
		29.812672, 31.764841, 34.672951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537895, 32.213795, 35.019325>,  <30.272177, 31.511786, 35.136433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537895, 32.213795, 35.019325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150883, 32.189278, 34.921238>,  <29.918676, 32.174568, 34.862385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150883, 32.189278, 34.921238>,  <30.537895, 32.213795, 35.019325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150883, 32.189278, 34.921238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127472, 0.956069, 0.263976,
		0.218262, 0.286662, -0.932838,
		-0.967529, -0.061295, -0.245215,
		29.860624, 32.170891, 34.847672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469606, 32.935184, 34.727146>,  <30.537895, 32.213795, 35.019325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469606, 32.935184, 34.727146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090326, 32.814922, 34.768173>,  <29.862759, 32.742767, 34.792789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090326, 32.814922, 34.768173>,  <30.469606, 32.935184, 34.727146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090326, 32.814922, 34.768173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215737, 0.846466, 0.486778,
		-0.233175, 0.439436, -0.867482,
		-0.948202, -0.300653, 0.102572,
		29.805866, 32.724728, 34.798946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028612, 33.468163, 34.549076>,  <30.469606, 32.935184, 34.727146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028612, 33.468163, 34.549076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811514, 33.233822, 34.789810>,  <29.681255, 33.093216, 34.934250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811514, 33.233822, 34.789810>,  <30.028612, 33.468163, 34.549076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811514, 33.233822, 34.789810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403236, 0.810332, 0.425163,
		-0.736769, -0.011927, -0.676039,
		-0.542745, -0.585850, 0.601837,
		29.648691, 33.058067, 34.970360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359987, 33.600964, 34.349270>,  <30.028612, 33.468163, 34.549076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359987, 33.600964, 34.349270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382847, 33.470402, 34.726669>,  <29.396563, 33.392067, 34.953110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382847, 33.470402, 34.726669>,  <29.359987, 33.600964, 34.349270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382847, 33.470402, 34.726669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510475, 0.802616, 0.308582,
		-0.857992, -0.499269, -0.120750,
		0.057150, -0.326401, 0.943502,
		29.399992, 33.372482, 35.009720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779156, 33.948437, 34.682655>,  <29.359987, 33.600964, 34.349270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779156, 33.948437, 34.682655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954138, 33.788601, 35.004887>,  <29.059126, 33.692699, 35.198227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954138, 33.788601, 35.004887>,  <28.779156, 33.948437, 34.682655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954138, 33.788601, 35.004887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400366, 0.715607, 0.572375,
		-0.805196, -0.572915, 0.153062,
		0.437454, -0.399593, 0.805580,
		29.085375, 33.668724, 35.246559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242567, 33.753498, 35.267231>,  <28.779156, 33.948437, 34.682655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242567, 33.753498, 35.267231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600811, 33.797062, 35.439751>,  <28.815758, 33.823200, 35.543262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600811, 33.797062, 35.439751>,  <28.242567, 33.753498, 35.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600811, 33.797062, 35.439751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368913, 0.723624, 0.583327,
		-0.248568, -0.681547, 0.688264,
		0.895609, 0.108913, 0.431302,
		28.869493, 33.829735, 35.569141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111832, 33.961285, 35.935387>,  <28.242567, 33.753498, 35.267231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111832, 33.961285, 35.935387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490314, 34.087551, 35.906963>,  <28.717403, 34.163311, 35.889912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490314, 34.087551, 35.906963>,  <28.111832, 33.961285, 35.935387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490314, 34.087551, 35.906963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226840, 0.803765, 0.550005,
		0.230728, -0.504301, 0.832133,
		0.946207, 0.315662, -0.071055,
		28.774178, 34.182251, 35.885647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184124, 34.163883, 36.559891>,  <28.111832, 33.961285, 35.935387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184124, 34.163883, 36.559891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450832, 34.345589, 36.323563>,  <28.610857, 34.454613, 36.181767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450832, 34.345589, 36.323563>,  <28.184124, 34.163883, 36.559891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450832, 34.345589, 36.323563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317801, 0.890377, 0.325931,
		0.674107, -0.029559, 0.738042,
		0.666770, 0.454263, -0.590816,
		28.650864, 34.481869, 36.146317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429506, 34.632805, 36.905201>,  <28.184124, 34.163883, 36.559891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429506, 34.632805, 36.905201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529095, 34.770096, 36.542938>,  <28.588848, 34.852470, 36.325581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529095, 34.770096, 36.542938>,  <28.429506, 34.632805, 36.905201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529095, 34.770096, 36.542938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291234, 0.918351, 0.267982,
		0.923687, 0.197038, 0.328601,
		0.248968, 0.343231, -0.905653,
		28.603785, 34.873066, 36.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850996, 35.176899, 37.034657>,  <28.429506, 34.632805, 36.905201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850996, 35.176899, 37.034657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713411, 35.249931, 36.666233>,  <28.630861, 35.293751, 36.445179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713411, 35.249931, 36.666233>,  <28.850996, 35.176899, 37.034657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713411, 35.249931, 36.666233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129739, 0.962265, 0.239194,
		0.929978, 0.201770, -0.307294,
		-0.343960, 0.182577, -0.921063,
		28.610224, 35.304703, 36.389915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244698, 35.633503, 36.786877>,  <28.850996, 35.176899, 37.034657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244698, 35.633503, 36.786877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900454, 35.647377, 36.583641>,  <28.693907, 35.655701, 36.461700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900454, 35.647377, 36.583641>,  <29.244698, 35.633503, 36.786877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900454, 35.647377, 36.583641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130080, 0.949610, 0.285166,
		0.492375, 0.311508, -0.812730,
		-0.860608, 0.034688, -0.508085,
		28.642271, 35.657784, 36.431217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292799, 36.262501, 36.368427>,  <29.244698, 35.633503, 36.786877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292799, 36.262501, 36.368427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923256, 36.142593, 36.463608>,  <28.701530, 36.070648, 36.520718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923256, 36.142593, 36.463608>,  <29.292799, 36.262501, 36.368427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923256, 36.142593, 36.463608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227833, 0.930311, 0.287426,
		-0.307532, 0.211328, -0.927774,
		-0.923859, -0.299770, 0.237953,
		28.646097, 36.052662, 36.534992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094561, 36.742321, 35.717148>,  <29.292799, 36.262501, 36.368427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094561, 36.742321, 35.717148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058218, 36.948517, 36.057976>,  <29.036413, 37.072235, 36.262470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058218, 36.948517, 36.057976>,  <29.094561, 36.742321, 35.717148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058218, 36.948517, 36.057976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366585, 0.812839, -0.452668,
		-0.925938, 0.271228, -0.262821,
		-0.090855, 0.515488, 0.852066,
		29.030962, 37.103165, 36.313595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740442, 37.294582, 35.315613>,  <29.094561, 36.742321, 35.717148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740442, 37.294582, 35.315613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885704, 37.384945, 35.677185>,  <28.972862, 37.439163, 35.894127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885704, 37.384945, 35.677185>,  <28.740442, 37.294582, 35.315613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885704, 37.384945, 35.677185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388431, 0.845128, -0.367262,
		-0.846900, 0.484486, 0.219165,
		0.363155, 0.225904, 0.903928,
		28.994650, 37.452717, 35.948364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398359, 37.952808, 35.441837>,  <28.740442, 37.294582, 35.315613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398359, 37.952808, 35.441837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759663, 37.886242, 35.600044>,  <28.976444, 37.846302, 35.694969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759663, 37.886242, 35.600044>,  <28.398359, 37.952808, 35.441837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759663, 37.886242, 35.600044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327660, 0.862654, -0.385314,
		-0.277069, 0.477632, 0.833727,
		0.903256, -0.166420, 0.395515,
		29.030640, 37.836315, 35.718700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702261, 38.601723, 35.720848>,  <28.398359, 37.952808, 35.441837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702261, 38.601723, 35.720848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024237, 38.384014, 35.626324>,  <29.217422, 38.253391, 35.569607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024237, 38.384014, 35.626324>,  <28.702261, 38.601723, 35.720848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024237, 38.384014, 35.626324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311003, 0.726173, -0.613147,
		0.505322, 0.420051, 0.753795,
		0.804939, -0.544269, -0.236314,
		29.265718, 38.220734, 35.555428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507957, 38.855072, 35.792671>,  <28.702261, 38.601723, 35.720848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507957, 38.855072, 35.792671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453411, 38.606323, 35.484211>,  <29.420683, 38.457073, 35.299133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453411, 38.606323, 35.484211>,  <29.507957, 38.855072, 35.792671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453411, 38.606323, 35.484211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552063, 0.598648, -0.580385,
		0.822575, -0.504871, 0.261678,
		-0.136366, -0.621873, -0.771154,
		29.412500, 38.419762, 35.252865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102745, 38.871578, 35.479607>,  <29.507957, 38.855072, 35.792671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102745, 38.871578, 35.479607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835487, 38.756641, 35.205086>,  <29.675133, 38.687679, 35.040371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835487, 38.756641, 35.205086>,  <30.102745, 38.871578, 35.479607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835487, 38.756641, 35.205086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553921, 0.423737, -0.716672,
		0.496744, -0.859000, -0.123952,
		-0.668144, -0.287343, -0.686307,
		29.635044, 38.670437, 34.999195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367100, 38.322262, 34.972359>,  <30.102745, 38.871578, 35.479607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367100, 38.322262, 34.972359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086506, 38.514656, 34.761997>,  <29.918150, 38.630093, 34.635780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086506, 38.514656, 34.761997>,  <30.367100, 38.322262, 34.972359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086506, 38.514656, 34.761997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596298, -0.008018, -0.802723,
		-0.390315, -0.876692, -0.281187,
		-0.701486, 0.480987, -0.525899,
		29.876060, 38.658951, 34.604229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247076, 37.754055, 34.596092>,  <30.367100, 38.322262, 34.972359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247076, 37.754055, 34.596092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601318, 37.641685, 34.744026>,  <30.813864, 37.574265, 34.832787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601318, 37.641685, 34.744026>,  <30.247076, 37.754055, 34.596092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601318, 37.641685, 34.744026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131323, 0.612351, 0.779603,
		-0.445480, -0.738990, 0.505411,
		0.885608, -0.280926, 0.369837,
		30.867001, 37.557407, 34.854977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144938, 37.509968, 35.196056>,  <30.247076, 37.754055, 34.596092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144938, 37.509968, 35.196056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526377, 37.630272, 35.201649>,  <30.755239, 37.702454, 35.205006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526377, 37.630272, 35.201649>,  <30.144938, 37.509968, 35.196056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526377, 37.630272, 35.201649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206004, 0.617879, 0.758806,
		0.219580, -0.726476, 0.651166,
		0.953597, 0.300762, 0.013983,
		30.812456, 37.720501, 35.205845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293390, 37.524860, 35.884399>,  <30.144938, 37.509968, 35.196056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293390, 37.524860, 35.884399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603977, 37.721519, 35.726727>,  <30.790329, 37.839516, 35.632122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603977, 37.721519, 35.726727>,  <30.293390, 37.524860, 35.884399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603977, 37.721519, 35.726727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004813, 0.630137, 0.776469,
		0.630137, -0.601007, 0.491648,
		-0.776469, -0.491648, 0.394180,
		30.836918, 37.869015, 35.608471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809069, 37.688545, 36.468506>,  <30.293390, 37.524860, 35.884399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809069, 37.688545, 36.468506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964951, 37.949127, 36.208126>,  <31.058479, 38.105476, 36.051899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964951, 37.949127, 36.208126>,  <30.809069, 37.688545, 36.468506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964951, 37.949127, 36.208126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116857, 0.736099, 0.666710,
		0.913496, -0.183752, 0.362988,
		0.389704, 0.651455, -0.650951,
		31.081861, 38.144562, 36.012840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226809, 38.038582, 36.860481>,  <30.809069, 37.688545, 36.468506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226809, 38.038582, 36.860481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152039, 38.277962, 36.548862>,  <31.107176, 38.421589, 36.361893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152039, 38.277962, 36.548862>,  <31.226809, 38.038582, 36.860481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152039, 38.277962, 36.548862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264537, 0.794396, 0.546768,
		0.946086, -0.103882, -0.306804,
		-0.186925, 0.598451, -0.779048,
		31.095961, 38.457497, 36.315147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743452, 38.536034, 36.945309>,  <31.226809, 38.038582, 36.860481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743452, 38.536034, 36.945309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487852, 38.712467, 36.693237>,  <31.334492, 38.818329, 36.541996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487852, 38.712467, 36.693237>,  <31.743452, 38.536034, 36.945309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487852, 38.712467, 36.693237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082861, 0.853958, 0.513703,
		0.764732, 0.276038, -0.582227,
		-0.638999, 0.441088, -0.630176,
		31.296152, 38.844795, 36.504185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070553, 39.137363, 36.744980>,  <31.743452, 38.536034, 36.945309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070553, 39.137363, 36.744980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680616, 39.201180, 36.682709>,  <31.446655, 39.239468, 36.645344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680616, 39.201180, 36.682709>,  <32.070553, 39.137363, 36.744980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680616, 39.201180, 36.682709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061859, 0.864589, 0.498658,
		0.214154, 0.476481, -0.852704,
		-0.974839, 0.159537, -0.155680,
		31.388165, 39.249039, 36.636005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933067, 39.872627, 36.550343>,  <32.070553, 39.137363, 36.744980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933067, 39.872627, 36.550343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576260, 39.751476, 36.684547>,  <31.362175, 39.678787, 36.765068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576260, 39.751476, 36.684547>,  <31.933067, 39.872627, 36.550343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576260, 39.751476, 36.684547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066623, 0.822276, 0.565175,
		-0.447061, 0.481795, -0.753665,
		-0.892019, -0.302879, 0.335509,
		31.308655, 39.660614, 36.785198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668127, 40.404224, 36.628891>,  <31.933067, 39.872627, 36.550343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668127, 40.404224, 36.628891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448135, 40.146774, 36.841782>,  <31.316139, 39.992302, 36.969517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448135, 40.146774, 36.841782>,  <31.668127, 40.404224, 36.628891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448135, 40.146774, 36.841782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177785, 0.712880, 0.678377,
		-0.816036, 0.278472, -0.506497,
		-0.549980, -0.643627, 0.532227,
		31.283142, 39.953686, 37.001450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156122, 40.801655, 36.817848>,  <31.668127, 40.404224, 36.628891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156122, 40.801655, 36.817848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155039, 40.501736, 37.082512>,  <31.154388, 40.321785, 37.241310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155039, 40.501736, 37.082512>,  <31.156122, 40.801655, 36.817848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155039, 40.501736, 37.082512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396135, 0.608337, 0.687752,
		-0.918188, -0.260243, -0.298669,
		-0.002709, -0.749800, 0.661659,
		31.154226, 40.276794, 37.281010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508631, 40.938686, 37.273323>,  <31.156122, 40.801655, 36.817848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508631, 40.938686, 37.273323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747944, 40.694611, 37.481068>,  <30.891531, 40.548164, 37.605713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747944, 40.694611, 37.481068>,  <30.508631, 40.938686, 37.273323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747944, 40.694611, 37.481068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308824, 0.422492, 0.852131,
		-0.739384, -0.670204, 0.064329,
		0.598280, -0.610186, 0.519359,
		30.927427, 40.511555, 37.636875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046516, 40.680664, 37.778435>,  <30.508631, 40.938686, 37.273323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046516, 40.680664, 37.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416040, 40.626278, 37.921593>,  <30.637754, 40.593647, 38.007488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416040, 40.626278, 37.921593>,  <30.046516, 40.680664, 37.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416040, 40.626278, 37.921593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312660, 0.271571, 0.910216,
		-0.220957, -0.952765, 0.208367,
		0.923808, -0.135970, 0.357897,
		30.693184, 40.585487, 38.028961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960743, 40.417427, 38.414600>,  <30.046516, 40.680664, 37.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960743, 40.417427, 38.414600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331778, 40.566441, 38.425930>,  <30.554398, 40.655849, 38.432728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331778, 40.566441, 38.425930>,  <29.960743, 40.417427, 38.414600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331778, 40.566441, 38.425930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151695, 0.306244, 0.939789,
		0.341438, -0.876028, 0.340580,
		0.927582, 0.372544, 0.028326,
		30.610054, 40.678200, 38.434429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179604, 40.246815, 39.052464>,  <29.960743, 40.417427, 38.414600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179604, 40.246815, 39.052464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438833, 40.527916, 38.935070>,  <30.594372, 40.696579, 38.864632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438833, 40.527916, 38.935070>,  <30.179604, 40.246815, 39.052464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438833, 40.527916, 38.935070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055583, 0.340692, 0.938530,
		0.759546, -0.624550, 0.181732,
		0.648074, 0.702756, -0.293486,
		30.633255, 40.738743, 38.847023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598339, 40.132236, 39.589130>,  <30.179604, 40.246815, 39.052464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598339, 40.132236, 39.589130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616844, 40.497547, 39.427250>,  <30.627947, 40.716736, 39.330124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616844, 40.497547, 39.427250>,  <30.598339, 40.132236, 39.589130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616844, 40.497547, 39.427250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093286, 0.407310, 0.908513,
		0.994564, -0.004276, 0.104038,
		0.046260, 0.913280, -0.404697,
		30.630722, 40.771530, 39.305840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170950, 40.479900, 39.902756>,  <30.598339, 40.132236, 39.589130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170950, 40.479900, 39.902756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876629, 40.723484, 39.784260>,  <30.700035, 40.869637, 39.713161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876629, 40.723484, 39.784260>,  <31.170950, 40.479900, 39.902756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876629, 40.723484, 39.784260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086694, 0.349140, 0.933052,
		0.671622, 0.712225, -0.204106,
		-0.735804, 0.608963, -0.296236,
		30.655888, 40.906174, 39.695389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238876, 40.993683, 40.466438>,  <31.170950, 40.479900, 39.902756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238876, 40.993683, 40.466438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891142, 41.069275, 40.283775>,  <30.682501, 41.114632, 40.174175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891142, 41.069275, 40.283775>,  <31.238876, 40.993683, 40.466438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891142, 41.069275, 40.283775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368103, 0.368966, 0.853442,
		0.329779, 0.910027, -0.251190,
		-0.869336, 0.188983, -0.456661,
		30.630341, 41.125969, 40.146778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962225, 41.703960, 40.772957>,  <31.238876, 40.993683, 40.466438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962225, 41.703960, 40.772957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626194, 41.565144, 40.606182>,  <30.424576, 41.481853, 40.506119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626194, 41.565144, 40.606182>,  <30.962225, 41.703960, 40.772957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626194, 41.565144, 40.606182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504446, 0.217076, 0.835711,
		-0.199519, 0.912382, -0.357424,
		-0.840075, -0.347041, -0.416937,
		30.374172, 41.461033, 40.481102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438437, 42.193069, 40.852325>,  <30.962225, 41.703960, 40.772957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438437, 42.193069, 40.852325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237946, 41.853577, 40.784893>,  <30.117651, 41.649879, 40.744434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237946, 41.853577, 40.784893>,  <30.438437, 42.193069, 40.852325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237946, 41.853577, 40.784893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575442, 0.181432, 0.797464,
		-0.646248, 0.496723, -0.579336,
		-0.501229, -0.848733, -0.168585,
		30.087576, 41.598957, 40.734318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807205, 42.283173, 41.241711>,  <30.438437, 42.193069, 40.852325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807205, 42.283173, 41.241711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789263, 41.899624, 41.129597>,  <29.778498, 41.669495, 41.062328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789263, 41.899624, 41.129597>,  <29.807205, 42.283173, 41.241711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789263, 41.899624, 41.129597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593779, -0.200040, 0.779365,
		-0.803377, 0.201389, -0.560382,
		-0.044857, -0.958867, -0.280288,
		29.775806, 41.611965, 41.045509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169722, 42.126457, 41.383266>,  <29.807205, 42.283173, 41.241711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169722, 42.126457, 41.383266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404871, 41.803120, 41.395786>,  <29.545961, 41.609116, 41.403297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404871, 41.803120, 41.395786>,  <29.169722, 42.126457, 41.383266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404871, 41.803120, 41.395786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358178, -0.225406, 0.906036,
		-0.725335, -0.543847, -0.422042,
		0.587875, -0.808345, 0.031299,
		29.581234, 41.560616, 41.405174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768761, 41.588512, 41.625443>,  <29.169722, 42.126457, 41.383266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768761, 41.588512, 41.625443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145466, 41.486423, 41.713028>,  <29.371489, 41.425171, 41.765579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145466, 41.486423, 41.713028>,  <28.768761, 41.588512, 41.625443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145466, 41.486423, 41.713028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263058, -0.153527, 0.952486,
		-0.209477, -0.954616, -0.211724,
		0.941764, -0.255219, 0.218959,
		29.427996, 41.409859, 41.778717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705328, 41.034222, 42.012257>,  <28.768761, 41.588512, 41.625443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705328, 41.034222, 42.012257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081076, 41.138012, 42.101929>,  <29.306524, 41.200287, 42.155731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081076, 41.138012, 42.101929>,  <28.705328, 41.034222, 42.012257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081076, 41.138012, 42.101929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218118, -0.052326, 0.974519,
		0.264594, -0.964331, 0.007443,
		0.939369, 0.259476, 0.224183,
		29.362886, 41.215855, 42.169182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954016, 40.513668, 42.602600>,  <28.705328, 41.034222, 42.012257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954016, 40.513668, 42.602600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195669, 40.832069, 42.617599>,  <29.340662, 41.023109, 42.626598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195669, 40.832069, 42.617599>,  <28.954016, 40.513668, 42.602600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195669, 40.832069, 42.617599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107340, 0.034658, 0.993618,
		0.789621, -0.604303, 0.106381,
		0.604133, 0.796001, 0.037499,
		29.376909, 41.070869, 42.628849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509138, 40.397522, 43.284367>,  <28.954016, 40.513668, 42.602600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509138, 40.397522, 43.284367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488022, 40.778633, 43.164753>,  <29.475351, 41.007301, 43.092987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488022, 40.778633, 43.164753>,  <29.509138, 40.397522, 43.284367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488022, 40.778633, 43.164753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130569, 0.290293, 0.947988,
		0.990033, 0.089091, 0.109079,
		-0.052792, 0.952782, -0.299032,
		29.472185, 41.064468, 43.075043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028839, 40.812740, 43.724289>,  <29.509138, 40.397522, 43.284367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028839, 40.812740, 43.724289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790413, 41.097488, 43.575726>,  <29.647358, 41.268337, 43.486588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790413, 41.097488, 43.575726>,  <30.028839, 40.812740, 43.724289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790413, 41.097488, 43.575726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011574, 0.454897, 0.890469,
		0.802853, 0.535075, -0.262909,
		-0.596064, 0.711873, -0.371408,
		29.611593, 41.311050, 43.464302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338709, 41.417027, 43.891609>,  <30.028839, 40.812740, 43.724289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338709, 41.417027, 43.891609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957960, 41.513935, 43.816517>,  <29.729511, 41.572083, 43.771461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957960, 41.513935, 43.816517>,  <30.338709, 41.417027, 43.891609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957960, 41.513935, 43.816517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083829, 0.383353, 0.919790,
		0.294809, 0.891259, -0.344593,
		-0.951872, 0.242276, -0.187729,
		29.672398, 41.586617, 43.760197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197514, 42.131771, 44.145660>,  <30.338709, 41.417027, 43.891609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197514, 42.131771, 44.145660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831715, 41.971634, 44.122284>,  <29.612234, 41.875549, 44.108257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831715, 41.971634, 44.122284>,  <30.197514, 42.131771, 44.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831715, 41.971634, 44.122284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189770, 0.296867, 0.935872,
		-0.357324, 0.866944, -0.347458,
		-0.914498, -0.400347, -0.058443,
		29.557365, 41.851528, 44.104752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649893, 42.697231, 44.387634>,  <30.197514, 42.131771, 44.145660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649893, 42.697231, 44.387634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447622, 42.353916, 44.422592>,  <29.326260, 42.147926, 44.443565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447622, 42.353916, 44.422592>,  <29.649893, 42.697231, 44.387634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447622, 42.353916, 44.422592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284305, 0.261425, 0.922403,
		-0.814533, 0.441590, -0.376211,
		-0.505675, -0.858286, 0.087393,
		29.295919, 42.096432, 44.448811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979023, 42.852676, 44.788750>,  <29.649893, 42.697231, 44.387634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979023, 42.852676, 44.788750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995279, 42.456650, 44.842583>,  <29.005033, 42.219032, 44.874882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995279, 42.456650, 44.842583>,  <28.979023, 42.852676, 44.788750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995279, 42.456650, 44.842583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086851, 0.130686, 0.987612,
		-0.995392, -0.051826, -0.080677,
		0.040641, -0.990068, 0.134585,
		29.007471, 42.159630, 44.882957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340805, 42.629093, 45.139423>,  <28.979023, 42.852676, 44.788750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340805, 42.629093, 45.139423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622629, 42.356884, 45.219902>,  <28.791723, 42.193558, 45.268188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622629, 42.356884, 45.219902>,  <28.340805, 42.629093, 45.139423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622629, 42.356884, 45.219902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112604, 0.172711, 0.978515,
		-0.700654, -0.712078, 0.045056,
		0.704560, -0.680526, 0.201193,
		28.833998, 42.152725, 45.280258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227306, 42.508083, 45.842213>,  <28.340805, 42.629093, 45.139423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227306, 42.508083, 45.842213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587999, 42.340614, 45.799145>,  <28.804415, 42.240131, 45.773304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587999, 42.340614, 45.799145>,  <28.227306, 42.508083, 45.842213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587999, 42.340614, 45.799145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169005, 0.112169, 0.979212,
		-0.397892, -0.901183, 0.171904,
		0.901731, -0.418674, -0.107673,
		28.858519, 42.215012, 45.766842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273554, 41.958408, 46.401894>,  <28.227306, 42.508083, 45.842213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273554, 41.958408, 46.401894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640930, 42.072151, 46.291904>,  <28.861357, 42.140396, 46.225910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640930, 42.072151, 46.291904>,  <28.273554, 41.958408, 46.401894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640930, 42.072151, 46.291904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288099, -0.004549, 0.957590,
		0.271043, -0.958709, -0.086099,
		0.918441, 0.284353, -0.274970,
		28.916462, 42.157455, 46.209412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660439, 41.604218, 46.782787>,  <28.273554, 41.958408, 46.401894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660439, 41.604218, 46.782787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928516, 41.873558, 46.657925>,  <29.089363, 42.035160, 46.583008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928516, 41.873558, 46.657925>,  <28.660439, 41.604218, 46.782787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928516, 41.873558, 46.657925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476051, -0.067337, 0.876836,
		0.569396, -0.736253, -0.365677,
		0.670196, 0.673348, -0.312153,
		29.129576, 42.075562, 46.564278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389408, 41.287987, 46.793167>,  <28.660439, 41.604218, 46.782787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389408, 41.287987, 46.793167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396866, 41.686916, 46.821465>,  <29.401340, 41.926273, 46.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396866, 41.686916, 46.821465>,  <29.389408, 41.287987, 46.793167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396866, 41.686916, 46.821465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424001, -0.071966, 0.902798,
		0.905470, 0.013162, -0.424207,
		0.018646, 0.997320, 0.070743,
		29.402460, 41.986111, 46.842686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043604, 41.410641, 47.035988>,  <29.389408, 41.287987, 46.793167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043604, 41.410641, 47.035988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860689, 41.757225, 47.116131>,  <29.750940, 41.965176, 47.164215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860689, 41.757225, 47.116131>,  <30.043604, 41.410641, 47.035988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860689, 41.757225, 47.116131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420536, 0.012167, 0.907194,
		0.783607, 0.499104, -0.369940,
		-0.457285, 0.866457, 0.200357,
		29.723503, 42.017162, 47.176239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554134, 41.844578, 47.302509>,  <30.043604, 41.410641, 47.035988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554134, 41.844578, 47.302509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217976, 42.020706, 47.428905>,  <30.016279, 42.126381, 47.504745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217976, 42.020706, 47.428905>,  <30.554134, 41.844578, 47.302509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217976, 42.020706, 47.428905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368219, 0.036066, 0.929039,
		0.397675, 0.897118, -0.192443,
		-0.840398, 0.440317, 0.315993,
		29.965857, 42.152802, 47.523705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793940, 42.185349, 47.881691>,  <30.554134, 41.844578, 47.302509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793940, 42.185349, 47.881691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394987, 42.192730, 47.909657>,  <30.155615, 42.197159, 47.926434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394987, 42.192730, 47.909657>,  <30.793940, 42.185349, 47.881691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394987, 42.192730, 47.909657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066907, -0.131077, 0.989112,
		0.027415, 0.991200, 0.129500,
		-0.997383, 0.018452, 0.069911,
		30.095772, 42.198265, 47.930630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697674, 42.586132, 48.483639>,  <30.793940, 42.185349, 47.881691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697674, 42.586132, 48.483639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361513, 42.378330, 48.421871>,  <30.159817, 42.253651, 48.384811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361513, 42.378330, 48.421871>,  <30.697674, 42.586132, 48.483639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361513, 42.378330, 48.421871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090598, -0.146244, 0.985091,
		-0.534340, 0.841860, 0.075837,
		-0.840400, -0.519503, -0.154415,
		30.109394, 42.222481, 48.375546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249928, 42.896210, 48.960484>,  <30.697674, 42.586132, 48.483639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249928, 42.896210, 48.960484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123909, 42.527649, 48.869476>,  <30.048298, 42.306511, 48.814873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123909, 42.527649, 48.869476>,  <30.249928, 42.896210, 48.960484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123909, 42.527649, 48.869476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122865, -0.277300, 0.952895,
		-0.941090, 0.272252, 0.200571,
		-0.315046, -0.921403, -0.227514,
		30.029396, 42.251228, 48.801224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700762, 42.768002, 49.503471>,  <30.249928, 42.896210, 48.960484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700762, 42.768002, 49.503471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777073, 42.412220, 49.337349>,  <29.822859, 42.198750, 49.237675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777073, 42.412220, 49.337349>,  <29.700762, 42.768002, 49.503471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777073, 42.412220, 49.337349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144727, -0.392965, 0.908093,
		-0.970906, -0.233349, 0.053759,
		0.190777, -0.889453, -0.415303,
		29.834307, 42.145386, 49.212757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216234, 42.231697, 49.687740>,  <29.700762, 42.768002, 49.503471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216234, 42.231697, 49.687740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591320, 42.107220, 49.625957>,  <29.816372, 42.032536, 49.588890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591320, 42.107220, 49.625957>,  <29.216234, 42.231697, 49.687740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591320, 42.107220, 49.625957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020539, -0.394154, 0.918815,
		-0.346804, -0.864757, -0.363211,
		0.937712, -0.311188, -0.154455,
		29.872633, 42.013863, 49.579620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322203, 41.573685, 49.908287>,  <29.216234, 42.231697, 49.687740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322203, 41.573685, 49.908287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651091, 41.792946, 49.969574>,  <29.848423, 41.924503, 50.006344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651091, 41.792946, 49.969574>,  <29.322203, 41.573685, 49.908287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651091, 41.792946, 49.969574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123767, -0.434943, 0.891912,
		0.555547, -0.714386, -0.425464,
		0.822222, 0.548157, 0.153214,
		29.897757, 41.957394, 50.015537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970873, 41.153423, 50.044479>,  <29.322203, 41.573685, 49.908287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970873, 41.153423, 50.044479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000494, 41.509514, 50.224266>,  <30.018267, 41.723167, 50.332138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000494, 41.509514, 50.224266>,  <29.970873, 41.153423, 50.044479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000494, 41.509514, 50.224266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101275, -0.455086, 0.884669,
		0.992099, -0.019992, -0.123858,
		0.074052, 0.890223, 0.449466,
		30.022709, 41.776581, 50.359104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667212, 41.243450, 50.363220>,  <29.970873, 41.153423, 50.044479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667212, 41.243450, 50.363220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315821, 41.351234, 50.521042>,  <30.104986, 41.415905, 50.615734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315821, 41.351234, 50.521042>,  <30.667212, 41.243450, 50.363220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315821, 41.351234, 50.521042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243400, -0.458207, 0.854870,
		0.411142, 0.847016, 0.336936,
		-0.878475, 0.269463, 0.394552,
		30.052279, 41.432072, 50.639408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868586, 41.416103, 50.964958>,  <30.667212, 41.243450, 50.363220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868586, 41.416103, 50.964958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485718, 41.332279, 51.044868>,  <30.255997, 41.281986, 51.092815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485718, 41.332279, 51.044868>,  <30.868586, 41.416103, 50.964958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485718, 41.332279, 51.044868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289444, -0.675885, 0.677792,
		-0.007013, 0.706586, 0.707592,
		-0.957169, -0.209562, 0.199777,
		30.198566, 41.269409, 51.104801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680666, 41.506550, 51.733688>,  <30.868586, 41.416103, 50.964958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680666, 41.506550, 51.733688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466763, 41.227055, 51.543613>,  <30.338421, 41.059357, 51.429569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466763, 41.227055, 51.543613>,  <30.680666, 41.506550, 51.733688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466763, 41.227055, 51.543613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478699, -0.713913, 0.511053,
		-0.696333, 0.045819, 0.716255,
		-0.534760, -0.698734, -0.475188,
		30.306335, 41.017433, 51.401058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474945, 40.832474, 52.162888>,  <30.680666, 41.506550, 51.733688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474945, 40.832474, 52.162888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425632, 40.705486, 51.786800>,  <30.396044, 40.629295, 51.561146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425632, 40.705486, 51.786800>,  <30.474945, 40.832474, 52.162888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425632, 40.705486, 51.786800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327941, -0.907253, 0.263337,
		-0.936620, -0.275872, 0.215960,
		-0.123283, -0.317469, -0.940221,
		30.388647, 40.610245, 51.504734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059711, 40.174011, 52.164665>,  <30.474945, 40.832474, 52.162888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059711, 40.174011, 52.164665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360685, 40.216198, 51.904598>,  <30.541269, 40.241508, 51.748558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360685, 40.216198, 51.904598>,  <30.059711, 40.174011, 52.164665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360685, 40.216198, 51.904598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433091, -0.822929, 0.367723,
		-0.496258, -0.558269, -0.664878,
		0.752436, 0.105467, -0.650167,
		30.586416, 40.247837, 51.709549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186567, 39.524223, 51.727024>,  <30.059711, 40.174011, 52.164665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186567, 39.524223, 51.727024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502775, 39.750698, 51.820412>,  <30.692499, 39.886585, 51.876446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502775, 39.750698, 51.820412>,  <30.186567, 39.524223, 51.727024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502775, 39.750698, 51.820412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482944, -0.810729, 0.330884,
		0.376626, -0.148816, -0.914334,
		0.790518, 0.566191, 0.233471,
		30.739931, 39.920555, 51.890453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825274, 39.266247, 51.484608>,  <30.186567, 39.524223, 51.727024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825274, 39.266247, 51.484608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997950, 39.479614, 51.775566>,  <31.101555, 39.607635, 51.950142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997950, 39.479614, 51.775566>,  <30.825274, 39.266247, 51.484608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997950, 39.479614, 51.775566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576864, -0.783203, 0.231992,
		0.693449, 0.319461, -0.645812,
		0.431690, 0.533421, 0.727397,
		31.127457, 39.639641, 51.993786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805424, 39.600189, 50.793736>,  <30.825274, 39.266247, 51.484608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805424, 39.600189, 50.793736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699566, 39.884594, 50.533146>,  <30.636051, 40.055237, 50.376793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699566, 39.884594, 50.533146>,  <30.805424, 39.600189, 50.793736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699566, 39.884594, 50.533146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493080, -0.680345, -0.542220,
		-0.828754, 0.177734, 0.530638,
		-0.264646, 0.711014, -0.651476,
		30.620173, 40.097897, 50.337704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146666, 39.560535, 50.670269>,  <30.805424, 39.600189, 50.793736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146666, 39.560535, 50.670269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263388, 39.765373, 50.347130>,  <30.333420, 39.888275, 50.153248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263388, 39.765373, 50.347130>,  <30.146666, 39.560535, 50.670269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263388, 39.765373, 50.347130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235270, -0.780226, -0.579565,
		-0.927092, 0.359181, -0.107193,
		0.291804, 0.512091, -0.807845,
		30.350929, 39.918999, 50.104774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842648, 39.309643, 50.046562>,  <30.146666, 39.560535, 50.670269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842648, 39.309643, 50.046562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139172, 39.518642, 49.878059>,  <30.317085, 39.644043, 49.776958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139172, 39.518642, 49.878059>,  <29.842648, 39.309643, 50.046562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139172, 39.518642, 49.878059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145201, -0.487932, -0.860720,
		-0.655269, 0.699226, -0.285841,
		0.741309, 0.522499, -0.421255,
		30.361565, 39.675392, 49.751682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673380, 39.351578, 49.383579>,  <29.842648, 39.309643, 50.046562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673380, 39.351578, 49.383579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062140, 39.440456, 49.352497>,  <30.295395, 39.493782, 49.333847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062140, 39.440456, 49.352497>,  <29.673380, 39.351578, 49.383579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062140, 39.440456, 49.352497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055001, -0.535342, -0.842843,
		-0.228876, 0.814885, -0.532520,
		0.971900, 0.222196, -0.077708,
		30.353710, 39.507114, 49.329185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775673, 39.603085, 48.699184>,  <29.673380, 39.351578, 49.383579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775673, 39.603085, 48.699184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125620, 39.463528, 48.833576>,  <30.335588, 39.379795, 48.914211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125620, 39.463528, 48.833576>,  <29.775673, 39.603085, 48.699184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125620, 39.463528, 48.833576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174607, -0.419841, -0.890643,
		0.451795, 0.837859, -0.306386,
		0.874867, -0.348891, 0.335979,
		30.388081, 39.358860, 48.934368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206350, 39.855724, 48.169758>,  <29.775673, 39.603085, 48.699184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206350, 39.855724, 48.169758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369659, 39.540028, 48.353237>,  <30.467646, 39.350609, 48.463326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369659, 39.540028, 48.353237>,  <30.206350, 39.855724, 48.169758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369659, 39.540028, 48.353237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306453, -0.354828, -0.883280,
		0.859884, 0.501189, 0.097000,
		0.408272, -0.789244, 0.458702,
		30.492142, 39.303253, 48.490849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793753, 39.900692, 47.845856>,  <30.206350, 39.855724, 48.169758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793753, 39.900692, 47.845856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790485, 39.534111, 48.005882>,  <30.788525, 39.314163, 48.101898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790485, 39.534111, 48.005882>,  <30.793753, 39.900692, 47.845856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790485, 39.534111, 48.005882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346899, -0.377831, -0.858432,
		0.937867, 0.131769, 0.321002,
		-0.008169, -0.916450, 0.400066,
		30.788034, 39.259174, 48.125900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365301, 39.554810, 47.595192>,  <30.793753, 39.900692, 47.845856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365301, 39.554810, 47.595192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173788, 39.228710, 47.725510>,  <31.058880, 39.033051, 47.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173788, 39.228710, 47.725510>,  <31.365301, 39.554810, 47.595192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173788, 39.228710, 47.725510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253951, -0.483830, -0.837506,
		0.840403, -0.318247, 0.438681,
		-0.478781, -0.815247, 0.325794,
		31.030153, 38.984135, 47.823246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860092, 38.889336, 47.691547>,  <31.365301, 39.554810, 47.595192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860092, 38.889336, 47.691547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487059, 38.749561, 47.655373>,  <31.263239, 38.665695, 47.633667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487059, 38.749561, 47.655373>,  <31.860092, 38.889336, 47.691547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487059, 38.749561, 47.655373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247272, -0.435971, -0.865324,
		0.262947, -0.829352, 0.492985,
		-0.932585, -0.349435, -0.090438,
		31.207283, 38.644730, 47.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933681, 38.137253, 47.403133>,  <31.860092, 38.889336, 47.691547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933681, 38.137253, 47.403133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583820, 38.317657, 47.332066>,  <31.373903, 38.425900, 47.289425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583820, 38.317657, 47.332066>,  <31.933681, 38.137253, 47.403133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583820, 38.317657, 47.332066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074751, -0.236639, -0.968718,
		-0.478951, -0.860573, 0.173263,
		-0.874654, 0.451017, -0.177667,
		31.321424, 38.452961, 47.278767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695402, 37.725033, 46.827629>,  <31.933681, 38.137253, 47.403133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695402, 37.725033, 46.827629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472120, 38.056236, 46.806427>,  <31.338152, 38.254959, 46.793705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472120, 38.056236, 46.806427>,  <31.695402, 37.725033, 46.827629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472120, 38.056236, 46.806427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046202, -0.032769, -0.998394,
		-0.828416, -0.559758, -0.019963,
		-0.558205, 0.828008, -0.053008,
		31.304659, 38.304638, 46.790524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144867, 37.466404, 46.542412>,  <31.695402, 37.725033, 46.827629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144867, 37.466404, 46.542412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058111, 37.848412, 46.461525>,  <31.006058, 38.077618, 46.412994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058111, 37.848412, 46.461525>,  <31.144867, 37.466404, 46.542412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058111, 37.848412, 46.461525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062201, -0.220244, -0.973460,
		-0.974212, -0.198555, 0.107172,
		-0.216890, 0.955023, -0.202214,
		30.993044, 38.134918, 46.400860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641758, 37.450649, 46.020756>,  <31.144867, 37.466404, 46.542412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641758, 37.450649, 46.020756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725693, 37.841736, 46.022991>,  <30.776054, 38.076389, 46.024334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725693, 37.841736, 46.022991>,  <30.641758, 37.450649, 46.020756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725693, 37.841736, 46.022991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008899, 0.007627, -0.999931,
		-0.977696, 0.209773, 0.010301,
		0.209837, 0.977720, 0.005590,
		30.788643, 38.135052, 46.024670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210236, 37.703018, 45.432037>,  <30.641758, 37.450649, 46.020756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210236, 37.703018, 45.432037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506035, 37.965961, 45.490025>,  <30.683514, 38.123730, 45.524818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506035, 37.965961, 45.490025>,  <30.210236, 37.703018, 45.432037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506035, 37.965961, 45.490025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239212, -0.055323, -0.969390,
		-0.629221, 0.751541, -0.198160,
		0.739499, 0.657363, 0.144967,
		30.727884, 38.163170, 45.533516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076855, 38.204140, 44.889832>,  <30.210236, 37.703018, 45.432037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076855, 38.204140, 44.889832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460182, 38.216473, 45.003445>,  <30.690178, 38.223873, 45.071613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460182, 38.216473, 45.003445>,  <30.076855, 38.204140, 44.889832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460182, 38.216473, 45.003445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283151, 0.030070, -0.958604,
		-0.038093, 0.999072, 0.020088,
		0.958318, 0.030828, 0.284034,
		30.747677, 38.225719, 45.088654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373758, 38.761230, 44.517784>,  <30.076855, 38.204140, 44.889832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373758, 38.761230, 44.517784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676399, 38.518414, 44.614986>,  <30.857985, 38.372723, 44.673309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676399, 38.518414, 44.614986>,  <30.373758, 38.761230, 44.517784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676399, 38.518414, 44.614986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326032, 0.028087, -0.944942,
		0.566792, 0.794175, 0.219165,
		0.756605, -0.607040, 0.243006,
		30.903381, 38.336300, 44.687889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000278, 39.015053, 44.160507>,  <30.373758, 38.761230, 44.517784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000278, 39.015053, 44.160507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067410, 38.629074, 44.241222>,  <31.107689, 38.397488, 44.289650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067410, 38.629074, 44.241222>,  <31.000278, 39.015053, 44.160507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067410, 38.629074, 44.241222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256986, -0.154788, -0.953939,
		0.951731, 0.211955, 0.221999,
		0.167829, -0.964944, 0.201786,
		31.117758, 38.339592, 44.301758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634165, 38.742775, 43.778927>,  <31.000278, 39.015053, 44.160507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634165, 38.742775, 43.778927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473860, 38.388531, 43.872803>,  <31.377678, 38.175983, 43.929127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473860, 38.388531, 43.872803>,  <31.634165, 38.742775, 43.778927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473860, 38.388531, 43.872803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169109, -0.323262, -0.931077,
		0.900440, -0.333451, 0.279316,
		-0.400760, -0.885614, 0.234688,
		31.353632, 38.122845, 43.943211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170887, 38.210823, 43.670502>,  <31.634165, 38.742775, 43.778927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170887, 38.210823, 43.670502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819080, 38.022114, 43.645573>,  <31.607996, 37.908890, 43.630615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819080, 38.022114, 43.645573>,  <32.170887, 38.210823, 43.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819080, 38.022114, 43.645573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280097, -0.407351, -0.869259,
		0.384706, -0.781982, 0.490413,
		-0.879515, -0.471773, -0.062321,
		31.555225, 37.880581, 43.626877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309528, 37.500244, 43.373196>,  <32.170887, 38.210823, 43.670502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309528, 37.500244, 43.373196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922939, 37.579166, 43.307476>,  <31.690985, 37.626518, 43.268044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922939, 37.579166, 43.307476>,  <32.309528, 37.500244, 43.373196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922939, 37.579166, 43.307476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055040, -0.465835, -0.883158,
		-0.250787, -0.862594, 0.439359,
		-0.966476, 0.197303, -0.164303,
		31.632996, 37.638359, 43.258186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070835, 36.918037, 43.129803>,  <32.309528, 37.500244, 43.373196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070835, 36.918037, 43.129803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771811, 37.155712, 43.011078>,  <31.592396, 37.298317, 42.939842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771811, 37.155712, 43.011078>,  <32.070835, 36.918037, 43.129803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771811, 37.155712, 43.011078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001203, -0.448078, -0.893994,
		-0.664194, -0.667956, 0.335680,
		-0.747559, 0.594189, -0.296807,
		31.547543, 37.333969, 42.922035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602070, 36.478817, 42.753654>,  <32.070835, 36.918037, 43.129803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602070, 36.478817, 42.753654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519424, 36.850258, 42.630356>,  <31.469837, 37.073120, 42.556377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519424, 36.850258, 42.630356>,  <31.602070, 36.478817, 42.753654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519424, 36.850258, 42.630356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135449, -0.339155, -0.930928,
		-0.969002, -0.150591, 0.195852,
		-0.206613, 0.928599, -0.308245,
		31.457439, 37.128838, 42.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004755, 36.441360, 42.257919>,  <31.602070, 36.478817, 42.753654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004755, 36.441360, 42.257919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195276, 36.783142, 42.174938>,  <31.309589, 36.988213, 42.125149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195276, 36.783142, 42.174938>,  <31.004755, 36.441360, 42.257919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195276, 36.783142, 42.174938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007286, -0.239764, -0.970804,
		-0.879250, 0.460887, -0.120426,
		0.476305, 0.854457, -0.207455,
		31.338167, 37.039478, 42.112701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675964, 36.744415, 41.696487>,  <31.004755, 36.441360, 42.257919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675964, 36.744415, 41.696487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012560, 36.960175, 41.708809>,  <31.214518, 37.089630, 41.716202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012560, 36.960175, 41.708809>,  <30.675964, 36.744415, 41.696487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012560, 36.960175, 41.708809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139592, -0.161990, -0.976869,
		-0.521932, 0.826322, -0.211608,
		0.841487, 0.539399, 0.030800,
		31.265005, 37.121994, 41.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537357, 37.454662, 41.295002>,  <30.675964, 36.744415, 41.696487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537357, 37.454662, 41.295002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931913, 37.392391, 41.316174>,  <31.168646, 37.355030, 41.328876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931913, 37.392391, 41.316174>,  <30.537357, 37.454662, 41.295002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931913, 37.392391, 41.316174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053132, -0.002859, -0.998583,
		0.155607, 0.987804, 0.005451,
		0.986389, -0.155677, 0.052929,
		31.227831, 37.345688, 41.332050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824007, 37.876934, 40.735924>,  <30.537357, 37.454662, 41.295002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824007, 37.876934, 40.735924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113262, 37.610153, 40.807751>,  <31.286816, 37.450085, 40.850845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113262, 37.610153, 40.807751>,  <30.824007, 37.876934, 40.735924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113262, 37.610153, 40.807751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048462, -0.210344, -0.976426,
		0.689000, 0.714794, -0.119786,
		0.723139, -0.666952, 0.179568,
		31.330204, 37.410069, 40.861622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469976, 38.043812, 40.347862>,  <30.824007, 37.876934, 40.735924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469976, 38.043812, 40.347862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474594, 37.648430, 40.408298>,  <31.477365, 37.411201, 40.444561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474594, 37.648430, 40.408298>,  <31.469976, 38.043812, 40.347862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474594, 37.648430, 40.408298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055744, -0.150233, -0.987078,
		0.998378, 0.019819, 0.053366,
		0.011546, -0.988452, 0.151094,
		31.478058, 37.351894, 40.453625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925333, 37.893948, 39.924019>,  <31.469976, 38.043812, 40.347862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925333, 37.893948, 39.924019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773998, 37.528034, 39.980621>,  <31.683197, 37.308487, 40.014584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773998, 37.528034, 39.980621>,  <31.925333, 37.893948, 39.924019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773998, 37.528034, 39.980621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054218, -0.174507, -0.983162,
		0.924079, -0.364294, 0.115620,
		-0.378337, -0.914788, 0.141507,
		31.660498, 37.253597, 40.023075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421585, 37.464962, 39.587639>,  <31.925333, 37.893948, 39.924019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421585, 37.464962, 39.587639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111214, 37.214191, 39.615604>,  <31.924990, 37.063728, 39.632385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111214, 37.214191, 39.615604>,  <32.421585, 37.464962, 39.587639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111214, 37.214191, 39.615604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294910, -0.458495, -0.838338,
		0.557636, -0.629874, 0.540649,
		-0.775932, -0.626930, 0.069917,
		31.878433, 37.026112, 39.636578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665710, 36.875919, 39.328484>,  <32.421585, 37.464962, 39.587639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665710, 36.875919, 39.328484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267563, 36.838123, 39.321369>,  <32.028675, 36.815445, 39.317101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267563, 36.838123, 39.321369>,  <32.665710, 36.875919, 39.328484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267563, 36.838123, 39.321369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055379, -0.412209, -0.909405,
		0.078601, -0.906176, 0.415532,
		-0.995367, -0.094491, -0.017783,
		31.968952, 36.809776, 39.316032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547367, 36.102631, 38.983368>,  <32.665710, 36.875919, 39.328484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547367, 36.102631, 38.983368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219635, 36.327065, 38.936249>,  <32.022995, 36.461723, 38.907978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219635, 36.327065, 38.936249>,  <32.547367, 36.102631, 38.983368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219635, 36.327065, 38.936249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045991, -0.269132, -0.962005,
		-0.571468, -0.782786, 0.246314,
		-0.819335, 0.561083, -0.117799,
		31.973835, 36.495388, 38.900909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031162, 35.692448, 38.661362>,  <32.547367, 36.102631, 38.983368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031162, 35.692448, 38.661362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916382, 36.070282, 38.597603>,  <31.847513, 36.296982, 38.559345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916382, 36.070282, 38.597603>,  <32.031162, 35.692448, 38.661362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916382, 36.070282, 38.597603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070407, -0.186745, -0.979882,
		-0.955354, -0.269958, 0.120093,
		-0.286954, 0.944589, -0.159401,
		31.830296, 36.353661, 38.549782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291521, 35.675056, 38.492428>,  <32.031162, 35.692448, 38.661362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291521, 35.675056, 38.492428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468449, 36.003304, 38.347687>,  <31.574604, 36.200253, 38.260841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468449, 36.003304, 38.347687>,  <31.291521, 35.675056, 38.492428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468449, 36.003304, 38.347687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129246, -0.340935, -0.931160,
		-0.887497, 0.458637, -0.044739,
		0.442317, 0.820619, -0.361856,
		31.601145, 36.249489, 38.239128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987566, 35.877872, 37.806900>,  <31.291521, 35.675056, 38.492428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987566, 35.877872, 37.806900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295008, 36.133045, 37.787769>,  <31.479473, 36.286148, 37.776291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295008, 36.133045, 37.787769>,  <30.987566, 35.877872, 37.806900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295008, 36.133045, 37.787769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011286, -0.061229, -0.998060,
		-0.639623, 0.767655, -0.039862,
		0.768606, 0.637932, -0.047827,
		31.525589, 36.324425, 37.773422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826506, 36.423103, 37.218548>,  <30.987566, 35.877872, 37.806900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826506, 36.423103, 37.218548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220905, 36.433964, 37.284359>,  <31.457544, 36.440479, 37.323845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220905, 36.433964, 37.284359>,  <30.826506, 36.423103, 37.218548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220905, 36.433964, 37.284359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163338, 0.041524, -0.985696,
		-0.033598, 0.998768, 0.036507,
		0.985998, 0.027154, 0.164532,
		31.516705, 36.442108, 37.333717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130049, 36.950138, 36.711143>,  <30.826506, 36.423103, 37.218548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130049, 36.950138, 36.711143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396797, 36.681011, 36.839268>,  <31.556847, 36.519535, 36.916142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396797, 36.681011, 36.839268>,  <31.130049, 36.950138, 36.711143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396797, 36.681011, 36.839268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129699, -0.318483, -0.939014,
		0.733797, 0.667746, -0.125124,
		0.666873, -0.672817, 0.320308,
		31.596859, 36.479164, 36.935360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762081, 37.127174, 36.469925>,  <31.130049, 36.950138, 36.711143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762081, 37.127174, 36.469925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768993, 36.731922, 36.530991>,  <31.773142, 36.494770, 36.567631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768993, 36.731922, 36.530991>,  <31.762081, 37.127174, 36.469925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768993, 36.731922, 36.530991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371490, -0.135409, -0.918510,
		0.928276, 0.072586, 0.364739,
		0.017282, -0.988127, 0.152662,
		31.774178, 36.435486, 36.576790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280174, 36.865784, 36.094776>,  <31.762081, 37.127174, 36.469925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280174, 36.865784, 36.094776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062099, 36.533623, 36.140720>,  <31.931253, 36.334324, 36.168285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062099, 36.533623, 36.140720>,  <32.280174, 36.865784, 36.094776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062099, 36.533623, 36.140720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427019, -0.392996, -0.814376,
		0.721402, -0.394942, 0.568857,
		-0.545190, -0.830406, 0.114860,
		31.898542, 36.284500, 36.175179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637638, 36.357742, 35.796654>,  <32.280174, 36.865784, 36.094776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637638, 36.357742, 35.796654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278481, 36.183067, 35.818909>,  <32.062984, 36.078262, 35.832260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278481, 36.183067, 35.818909>,  <32.637638, 36.357742, 35.796654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278481, 36.183067, 35.818909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200986, -0.519100, -0.830746,
		0.391655, -0.734739, 0.553864,
		-0.897893, -0.436684, 0.055636,
		32.009113, 36.052063, 35.835598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853622, 35.662045, 35.868988>,  <32.637638, 36.357742, 35.796654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853622, 35.662045, 35.868988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487942, 35.712822, 35.715046>,  <32.268532, 35.743290, 35.622681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487942, 35.712822, 35.715046>,  <32.853622, 35.662045, 35.868988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487942, 35.712822, 35.715046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262710, -0.537439, -0.801338,
		-0.308561, -0.833693, 0.457980,
		-0.914206, 0.126946, -0.384852,
		32.213680, 35.750904, 35.599590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420303, 35.279747, 36.026512>,  <32.853622, 35.662045, 35.868988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420303, 35.279747, 36.026512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715420, 35.549614, 36.035378>,  <33.892490, 35.711533, 36.040699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715420, 35.549614, 36.035378>,  <33.420303, 35.279747, 36.026512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715420, 35.549614, 36.035378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194485, -0.243899, 0.950099,
		0.646407, -0.696662, -0.311159,
		0.737789, 0.674667, 0.022168,
		33.936756, 35.752014, 36.042027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983303, 34.954651, 36.530319>,  <33.420303, 35.279747, 36.026512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983303, 34.954651, 36.530319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034218, 35.350826, 36.509048>,  <34.064766, 35.588531, 36.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034218, 35.350826, 36.509048>,  <33.983303, 34.954651, 36.530319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034218, 35.350826, 36.509048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409918, -0.003708, 0.912115,
		0.903197, -0.137899, -0.406471,
		0.127287, 0.990439, -0.053178,
		34.072403, 35.647957, 36.493095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600468, 35.019016, 36.823036>,  <33.983303, 34.954651, 36.530319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600468, 35.019016, 36.823036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456226, 35.387081, 36.884052>,  <34.369682, 35.607922, 36.920662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456226, 35.387081, 36.884052>,  <34.600468, 35.019016, 36.823036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456226, 35.387081, 36.884052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274925, -0.051424, 0.960089,
		0.891281, 0.388149, -0.234432,
		-0.360602, 0.920161, 0.152545,
		34.348045, 35.663128, 36.929817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100807, 35.453148, 37.226749>,  <34.600468, 35.019016, 36.823036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100807, 35.453148, 37.226749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752472, 35.641331, 37.283756>,  <34.543472, 35.754242, 37.317959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752472, 35.641331, 37.283756>,  <35.100807, 35.453148, 37.226749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752472, 35.641331, 37.283756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278883, 0.234088, 0.931358,
		0.404806, 0.850805, -0.335056,
		-0.870837, 0.470461, 0.142514,
		34.491222, 35.782471, 37.326511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284924, 35.931095, 37.620846>,  <35.100807, 35.453148, 37.226749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284924, 35.931095, 37.620846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887329, 35.960793, 37.653069>,  <34.648773, 35.978611, 37.672401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887329, 35.960793, 37.653069>,  <35.284924, 35.931095, 37.620846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887329, 35.960793, 37.653069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098093, 0.275838, 0.956186,
		0.048767, 0.958333, -0.281460,
		-0.993982, 0.074239, 0.080554,
		34.589134, 35.983063, 37.677235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225754, 36.517960, 38.034588>,  <35.284924, 35.931095, 37.620846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225754, 36.517960, 38.034588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881187, 36.319088, 38.076111>,  <34.674450, 36.199764, 38.101025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881187, 36.319088, 38.076111>,  <35.225754, 36.517960, 38.034588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881187, 36.319088, 38.076111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005246, 0.195657, 0.980658,
		-0.507876, 0.845298, -0.165933,
		-0.861414, -0.497182, 0.103804,
		34.622765, 36.169933, 38.107250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802364, 36.969830, 38.439396>,  <35.225754, 36.517960, 38.034588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802364, 36.969830, 38.439396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623371, 36.615845, 38.490925>,  <34.515976, 36.403454, 38.521843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623371, 36.615845, 38.490925>,  <34.802364, 36.969830, 38.439396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623371, 36.615845, 38.490925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123305, 0.203734, 0.971230,
		-0.885751, 0.418725, -0.200288,
		-0.447483, -0.884964, 0.128827,
		34.489124, 36.350357, 38.529572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270611, 37.147923, 38.767849>,  <34.802364, 36.969830, 38.439396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270611, 37.147923, 38.767849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321987, 36.760056, 38.851036>,  <34.352814, 36.527336, 38.900948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321987, 36.760056, 38.851036>,  <34.270611, 37.147923, 38.767849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321987, 36.760056, 38.851036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046265, 0.203620, 0.977956,
		-0.990638, -0.135230, -0.018709,
		0.128440, -0.969666, 0.207971,
		34.360519, 36.469154, 38.913425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806492, 37.055145, 39.329735>,  <34.270611, 37.147923, 38.767849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806492, 37.055145, 39.329735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052299, 36.740017, 39.346302>,  <34.199783, 36.550941, 39.356243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052299, 36.740017, 39.346302>,  <33.806492, 37.055145, 39.329735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052299, 36.740017, 39.346302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096679, -0.023097, 0.995048,
		-0.782958, -0.615476, -0.090359,
		0.614515, -0.787817, 0.041419,
		34.236652, 36.503674, 39.358727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430714, 36.511803, 39.653378>,  <33.806492, 37.055145, 39.329735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430714, 36.511803, 39.653378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821346, 36.456001, 39.718899>,  <34.055725, 36.422520, 39.758213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821346, 36.456001, 39.718899>,  <33.430714, 36.511803, 39.653378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821346, 36.456001, 39.718899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164430, 0.007099, 0.986363,
		-0.138765, -0.990196, -0.016006,
		0.976579, -0.139505, 0.163803,
		34.114319, 36.414150, 39.768040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505291, 36.218670, 40.237198>,  <33.430714, 36.511803, 39.653378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505291, 36.218670, 40.237198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892475, 36.315639, 40.210999>,  <34.124786, 36.373821, 40.195278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892475, 36.315639, 40.210999>,  <33.505291, 36.218670, 40.237198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892475, 36.315639, 40.210999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002923, 0.271684, 0.962382,
		0.251092, -0.931355, 0.263687,
		0.967959, 0.242417, -0.065495,
		34.182861, 36.388367, 40.191349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711853, 35.933525, 40.771778>,  <33.505291, 36.218670, 40.237198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711853, 35.933525, 40.771778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988365, 36.208168, 40.681702>,  <34.154270, 36.372952, 40.627655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988365, 36.208168, 40.681702>,  <33.711853, 35.933525, 40.771778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988365, 36.208168, 40.681702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013573, 0.323925, 0.945985,
		0.722464, -0.650880, 0.233241,
		0.691276, 0.686606, -0.225190,
		34.195747, 36.414150, 40.614143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278053, 35.801003, 41.194042>,  <33.711853, 35.933525, 40.771778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278053, 35.801003, 41.194042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257690, 36.184101, 41.080811>,  <34.245472, 36.413960, 41.012871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257690, 36.184101, 41.080811>,  <34.278053, 35.801003, 41.194042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257690, 36.184101, 41.080811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003147, 0.283602, 0.958937,
		0.998698, 0.047924, -0.017451,
		-0.050905, 0.957744, -0.283082,
		34.242420, 36.471424, 40.995888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852482, 36.089500, 41.326614>,  <34.278053, 35.801003, 41.194042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852482, 36.089500, 41.326614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628716, 36.417816, 41.280380>,  <34.494457, 36.614807, 41.252640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628716, 36.417816, 41.280380>,  <34.852482, 36.089500, 41.326614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628716, 36.417816, 41.280380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166266, 0.247727, 0.954456,
		0.812042, 0.514718, -0.275051,
		-0.559414, 0.820790, -0.115585,
		34.460892, 36.664055, 41.245705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313320, 36.805843, 41.441948>,  <34.852482, 36.089500, 41.326614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313320, 36.805843, 41.441948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921223, 36.807037, 41.521049>,  <34.685963, 36.807755, 41.568508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921223, 36.807037, 41.521049>,  <35.313320, 36.805843, 41.441948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921223, 36.807037, 41.521049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194601, 0.192888, 0.961730,
		-0.035273, 0.981216, -0.189659,
		-0.980248, 0.002984, 0.197749,
		34.627148, 36.807934, 41.580376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304016, 37.123138, 42.060081>,  <35.313320, 36.805843, 41.441948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304016, 37.123138, 42.060081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916359, 37.024609, 42.063828>,  <34.683765, 36.965492, 42.066074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916359, 37.024609, 42.063828>,  <35.304016, 37.123138, 42.060081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916359, 37.024609, 42.063828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063322, 0.285482, 0.956290,
		-0.238228, 0.926189, -0.292271,
		-0.969143, -0.246322, 0.009362,
		34.625618, 36.950710, 42.066635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012051, 37.679878, 42.333839>,  <35.304016, 37.123138, 42.060081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012051, 37.679878, 42.333839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731014, 37.396660, 42.362240>,  <34.562393, 37.226730, 42.379280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731014, 37.396660, 42.362240>,  <35.012051, 37.679878, 42.333839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731014, 37.396660, 42.362240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151141, 0.245979, 0.957419,
		-0.695359, 0.661942, -0.279837,
		-0.702589, -0.708045, 0.070998,
		34.520237, 37.184246, 42.383537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315365, 37.951202, 42.519138>,  <35.012051, 37.679878, 42.333839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315365, 37.951202, 42.519138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272259, 37.572105, 42.639252>,  <34.246395, 37.344646, 42.711319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272259, 37.572105, 42.639252>,  <34.315365, 37.951202, 42.519138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272259, 37.572105, 42.639252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115929, 0.311965, 0.942994,
		-0.987394, 0.066813, -0.143491,
		-0.107769, -0.947741, 0.300287,
		34.239929, 37.287785, 42.729340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752853, 37.998505, 42.802723>,  <34.315365, 37.951202, 42.519138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752853, 37.998505, 42.802723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967560, 37.694126, 42.948517>,  <34.096382, 37.511501, 43.035992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967560, 37.694126, 42.948517>,  <33.752853, 37.998505, 42.802723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967560, 37.694126, 42.948517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087571, 0.379413, 0.921074,
		-0.839176, -0.526318, 0.137019,
		0.536764, -0.760944, 0.364484,
		34.128590, 37.465843, 43.057861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373592, 37.718971, 43.295464>,  <33.752853, 37.998505, 42.802723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373592, 37.718971, 43.295464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739738, 37.581627, 43.379570>,  <33.959427, 37.499218, 43.430035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739738, 37.581627, 43.379570>,  <33.373592, 37.718971, 43.295464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739738, 37.581627, 43.379570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139091, 0.220413, 0.965439,
		-0.377842, -0.912973, 0.153999,
		0.915363, -0.343363, 0.210268,
		34.014347, 37.478619, 43.442650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215645, 37.301586, 43.813229>,  <33.373592, 37.718971, 43.295464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215645, 37.301586, 43.813229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606514, 37.380299, 43.845253>,  <33.841034, 37.427525, 43.864468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606514, 37.380299, 43.845253>,  <33.215645, 37.301586, 43.813229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606514, 37.380299, 43.845253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115911, 0.178037, 0.977173,
		0.178037, -0.964147, 0.196782,
		-0.977173, -0.196782, -0.080058,
		33.899666, 37.439335, 43.869270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373920, 36.916672, 44.456051>,  <33.215645, 37.301586, 43.813229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373920, 36.916672, 44.456051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643791, 37.203045, 44.384216>,  <33.805714, 37.374870, 44.341114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643791, 37.203045, 44.384216>,  <33.373920, 36.916672, 44.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643791, 37.203045, 44.384216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076902, 0.310164, 0.947567,
		0.734099, -0.625487, 0.264317,
		0.674673, 0.715935, -0.179590,
		33.846191, 37.417824, 44.330338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766293, 37.054573, 45.087559>,  <33.373920, 36.916672, 44.456051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766293, 37.054573, 45.087559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836987, 37.375568, 44.859600>,  <33.879402, 37.568165, 44.722824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836987, 37.375568, 44.859600>,  <33.766293, 37.054573, 45.087559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836987, 37.375568, 44.859600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242656, 0.596663, 0.764925,
		0.953878, 0.003101, 0.300179,
		0.176734, 0.802486, -0.569897,
		33.890007, 37.616314, 44.688633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041477, 37.480583, 45.530930>,  <33.766293, 37.054573, 45.087559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041477, 37.480583, 45.530930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975471, 37.764256, 45.256752>,  <33.935867, 37.934460, 45.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975471, 37.764256, 45.256752>,  <34.041477, 37.480583, 45.530930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975471, 37.764256, 45.256752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119364, 0.675499, 0.727635,
		0.979042, 0.201887, -0.026817,
		-0.165015, 0.709184, -0.685440,
		33.925968, 37.977013, 45.051121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290691, 38.016697, 45.870739>,  <34.041477, 37.480583, 45.530930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290691, 38.016697, 45.870739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063030, 38.174984, 45.582443>,  <33.926434, 38.269955, 45.409466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063030, 38.174984, 45.582443>,  <34.290691, 38.016697, 45.870739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063030, 38.174984, 45.582443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250818, 0.751232, 0.610524,
		0.783042, 0.528257, -0.328313,
		-0.569154, 0.395719, -0.720743,
		33.892284, 38.293701, 45.366219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456127, 38.719738, 45.803856>,  <34.290691, 38.016697, 45.870739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456127, 38.719738, 45.803856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084522, 38.700237, 45.657127>,  <33.861561, 38.688538, 45.569092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084522, 38.700237, 45.657127>,  <34.456127, 38.719738, 45.803856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084522, 38.700237, 45.657127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247844, 0.818079, 0.518960,
		0.274789, 0.573035, -0.772090,
		-0.929013, -0.048753, -0.366822,
		33.805817, 38.685612, 45.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287117, 39.428978, 45.609921>,  <34.456127, 38.719738, 45.803856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287117, 39.428978, 45.609921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930618, 39.249500, 45.636318>,  <33.716721, 39.141811, 45.652157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930618, 39.249500, 45.636318>,  <34.287117, 39.428978, 45.609921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930618, 39.249500, 45.636318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339169, 0.756028, 0.559809,
		-0.301081, 0.476542, -0.825989,
		-0.891243, -0.448698, 0.065997,
		33.663246, 39.114891, 45.656116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722412, 39.915936, 45.331966>,  <34.287117, 39.428978, 45.609921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722412, 39.915936, 45.331966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532112, 39.659702, 45.573067>,  <33.417931, 39.505962, 45.717728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532112, 39.659702, 45.573067>,  <33.722412, 39.915936, 45.331966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532112, 39.659702, 45.573067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384569, 0.767792, 0.512448,
		-0.791055, 0.011998, -0.611627,
		-0.475751, -0.640587, 0.602751,
		33.389385, 39.467525, 45.753891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010155, 40.236546, 45.524952>,  <33.722412, 39.915936, 45.331966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010155, 40.236546, 45.524952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108700, 39.962200, 45.798859>,  <33.167828, 39.797592, 45.963203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108700, 39.962200, 45.798859>,  <33.010155, 40.236546, 45.524952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108700, 39.962200, 45.798859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404034, 0.569536, 0.715811,
		-0.880943, -0.453019, -0.136796,
		0.246366, -0.685859, 0.684763,
		33.182610, 39.756443, 46.004288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444527, 40.189297, 46.022934>,  <33.010155, 40.236546, 45.524952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444527, 40.189297, 46.022934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747433, 40.022549, 46.224037>,  <32.929176, 39.922501, 46.344700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747433, 40.022549, 46.224037>,  <32.444527, 40.189297, 46.022934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747433, 40.022549, 46.224037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294267, 0.469443, 0.832484,
		-0.583055, -0.778358, 0.232821,
		0.757267, -0.416873, 0.502756,
		32.974613, 39.897488, 46.374863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136803, 40.178688, 46.737000>,  <32.444527, 40.189297, 46.022934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136803, 40.178688, 46.737000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528599, 40.103664, 46.766464>,  <32.763676, 40.058651, 46.784142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528599, 40.103664, 46.766464>,  <32.136803, 40.178688, 46.737000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528599, 40.103664, 46.766464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059608, 0.618878, 0.783222,
		-0.192486, -0.762766, 0.617364,
		0.979487, -0.187559, 0.073658,
		32.822445, 40.047398, 46.788563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252628, 39.901104, 47.415859>,  <32.136803, 40.178688, 46.737000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252628, 39.901104, 47.415859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603565, 40.052490, 47.297855>,  <32.814129, 40.143322, 47.227051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603565, 40.052490, 47.297855>,  <32.252628, 39.901104, 47.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603565, 40.052490, 47.297855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021484, 0.583194, 0.812048,
		0.479378, -0.718785, 0.503532,
		0.877345, 0.378460, -0.295013,
		32.866768, 40.166027, 47.209351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552536, 39.964432, 48.045578>,  <32.252628, 39.901104, 47.415859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552536, 39.964432, 48.045578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759258, 40.191753, 47.789471>,  <32.883289, 40.328148, 47.635807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759258, 40.191753, 47.789471>,  <32.552536, 39.964432, 48.045578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759258, 40.191753, 47.789471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006126, 0.750321, 0.661045,
		0.856082, -0.337708, 0.391250,
		0.516803, 0.568306, -0.640268,
		32.914299, 40.362244, 47.597389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029179, 40.296520, 48.391098>,  <32.552536, 39.964432, 48.045578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029179, 40.296520, 48.391098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005905, 40.547783, 48.080738>,  <32.991940, 40.698540, 47.894520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005905, 40.547783, 48.080738>,  <33.029179, 40.296520, 48.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005905, 40.547783, 48.080738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162516, 0.760893, 0.628196,
		0.984989, 0.162648, 0.057814,
		-0.058185, 0.628161, -0.775905,
		32.988449, 40.736233, 47.847965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282719, 40.817932, 48.670753>,  <33.029179, 40.296520, 48.391098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282719, 40.817932, 48.670753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154766, 40.995869, 48.336140>,  <33.077995, 41.102631, 48.135372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154766, 40.995869, 48.336140>,  <33.282719, 40.817932, 48.670753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154766, 40.995869, 48.336140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042598, 0.875283, 0.481732,
		0.946501, 0.189731, -0.261035,
		-0.319878, 0.444840, -0.836538,
		33.058804, 41.129322, 48.085178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716393, 41.449841, 48.555050>,  <33.282719, 40.817932, 48.670753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716393, 41.449841, 48.555050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370407, 41.501324, 48.361031>,  <33.162815, 41.532215, 48.244617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370407, 41.501324, 48.361031>,  <33.716393, 41.449841, 48.555050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370407, 41.501324, 48.361031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132968, 0.873224, 0.468828,
		0.483902, 0.470014, -0.738191,
		-0.864962, 0.128711, -0.485051,
		33.110920, 41.539936, 48.215515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650253, 42.215160, 48.250973>,  <33.716393, 41.449841, 48.555050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650253, 42.215160, 48.250973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280773, 42.065205, 48.282585>,  <33.059086, 41.975231, 48.301552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280773, 42.065205, 48.282585>,  <33.650253, 42.215160, 48.250973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280773, 42.065205, 48.282585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298498, 0.833502, 0.464945,
		-0.240176, 0.405876, -0.881805,
		-0.923696, -0.374885, 0.079034,
		33.003666, 41.952740, 48.306293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068806, 42.658051, 47.915630>,  <33.650253, 42.215160, 48.250973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068806, 42.658051, 47.915630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925758, 42.441715, 48.220158>,  <32.839928, 42.311913, 48.402874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925758, 42.441715, 48.220158>,  <33.068806, 42.658051, 47.915630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925758, 42.441715, 48.220158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166447, 0.839090, 0.517904,
		-0.918914, 0.058494, -0.390096,
		-0.357620, -0.540840, 0.761315,
		32.818474, 42.279465, 48.448551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754162, 43.233612, 48.530491>,  <33.068806, 42.658051, 47.915630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754162, 43.233612, 48.530491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107758, 43.353085, 48.386627>,  <33.319916, 43.424770, 48.300308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107758, 43.353085, 48.386627>,  <32.754162, 43.233612, 48.530491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107758, 43.353085, 48.386627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177791, -0.496735, -0.849497,
		-0.432390, 0.814887, -0.386002,
		0.883985, 0.298686, -0.359663,
		33.372952, 43.442692, 48.278728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574062, 43.651085, 47.912666>,  <32.754162, 43.233612, 48.530491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574062, 43.651085, 47.912666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944191, 43.501949, 47.885021>,  <33.166267, 43.412468, 47.868435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944191, 43.501949, 47.885021>,  <32.574062, 43.651085, 47.912666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944191, 43.501949, 47.885021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200323, -0.325897, -0.923938,
		0.321953, 0.868783, -0.376247,
		0.925320, -0.372836, -0.069114,
		33.221786, 43.390099, 47.864288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944756, 44.010262, 47.294907>,  <32.574062, 43.651085, 47.912666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944756, 44.010262, 47.294907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124798, 43.662827, 47.377811>,  <33.232822, 43.454365, 47.427555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124798, 43.662827, 47.377811>,  <32.944756, 44.010262, 47.294907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124798, 43.662827, 47.377811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164554, -0.308808, -0.936782,
		0.877684, 0.387543, -0.281925,
		0.450104, -0.868590, 0.207264,
		33.259830, 43.402248, 47.439991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318985, 43.934059, 46.632778>,  <32.944756, 44.010262, 47.294907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318985, 43.934059, 46.632778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381432, 43.576004, 46.799801>,  <33.418900, 43.361172, 46.900013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381432, 43.576004, 46.799801>,  <33.318985, 43.934059, 46.632778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381432, 43.576004, 46.799801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109814, -0.435848, -0.893296,
		0.981615, 0.093609, -0.166343,
		0.156121, -0.895139, 0.417555,
		33.428268, 43.307461, 46.925068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705524, 43.572548, 46.122612>,  <33.318985, 43.934059, 46.632778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705524, 43.572548, 46.122612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568645, 43.282448, 46.361580>,  <33.486519, 43.108387, 46.504963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568645, 43.282448, 46.361580>,  <33.705524, 43.572548, 46.122612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568645, 43.282448, 46.361580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260533, -0.537643, -0.801912,
		0.902788, -0.430056, -0.004974,
		-0.342193, -0.725252, 0.597422,
		33.465988, 43.064873, 46.540806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879665, 42.896961, 45.894554>,  <33.705524, 43.572548, 46.122612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879665, 42.896961, 45.894554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558861, 42.812546, 46.118069>,  <33.366379, 42.761898, 46.252178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558861, 42.812546, 46.118069>,  <33.879665, 42.896961, 45.894554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558861, 42.812546, 46.118069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439404, -0.425237, -0.791263,
		0.404600, -0.880135, 0.248316,
		-0.802012, -0.211034, 0.558786,
		33.318256, 42.749237, 46.285706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686661, 42.186272, 45.768410>,  <33.879665, 42.896961, 45.894554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686661, 42.186272, 45.768410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345097, 42.342430, 45.906063>,  <33.140160, 42.436127, 45.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345097, 42.342430, 45.906063>,  <33.686661, 42.186272, 45.768410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345097, 42.342430, 45.906063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502841, -0.448502, -0.738916,
		-0.134125, -0.804013, 0.579287,
		-0.853909, 0.390396, 0.344136,
		33.088924, 42.459549, 46.009304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148861, 41.662899, 45.737953>,  <33.686661, 42.186272, 45.768410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148861, 41.662899, 45.737953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923309, 41.991486, 45.771957>,  <32.787979, 42.188637, 45.792362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923309, 41.991486, 45.771957>,  <33.148861, 41.662899, 45.737953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923309, 41.991486, 45.771957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651628, -0.379315, -0.656887,
		-0.507366, -0.425803, 0.749181,
		-0.563880, 0.821469, 0.085013,
		32.754147, 42.237926, 45.797462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526421, 41.355488, 45.747826>,  <33.148861, 41.662899, 45.737953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526421, 41.355488, 45.747826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471161, 41.742508, 45.663208>,  <32.438004, 41.974720, 45.612438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471161, 41.742508, 45.663208>,  <32.526421, 41.355488, 45.747826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471161, 41.742508, 45.663208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590631, -0.251943, -0.766603,
		-0.795028, 0.019036, 0.606274,
		-0.138153, 0.967555, -0.211545,
		32.429714, 42.032776, 45.599743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784998, 41.490707, 45.643940>,  <32.526421, 41.355488, 45.747826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784998, 41.490707, 45.643940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952040, 41.796425, 45.447388>,  <32.052265, 41.979855, 45.329456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952040, 41.796425, 45.447388>,  <31.784998, 41.490707, 45.643940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952040, 41.796425, 45.447388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400249, -0.330765, -0.854631,
		-0.815725, 0.553573, 0.167780,
		0.417605, 0.764298, -0.491381,
		32.077320, 42.025715, 45.299973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223953, 41.649704, 45.042747>,  <31.784998, 41.490707, 45.643940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223953, 41.649704, 45.042747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592936, 41.783466, 44.965549>,  <31.814325, 41.863724, 44.919231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592936, 41.783466, 44.965549>,  <31.223953, 41.649704, 45.042747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592936, 41.783466, 44.965549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031453, -0.563278, -0.825668,
		-0.384820, 0.755572, -0.530117,
		0.922455, 0.334407, -0.192996,
		31.869673, 41.883789, 44.907650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205769, 41.740734, 44.363071>,  <31.223953, 41.649704, 45.042747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205769, 41.740734, 44.363071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600704, 41.761063, 44.423172>,  <31.837666, 41.773258, 44.459232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600704, 41.761063, 44.423172>,  <31.205769, 41.740734, 44.363071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600704, 41.761063, 44.423172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158302, -0.375314, -0.913280,
		0.009977, 0.925503, -0.378608,
		0.987340, 0.050822, 0.150253,
		31.896906, 41.776310, 44.468246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465380, 41.953041, 43.740341>,  <31.205769, 41.740734, 44.363071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465380, 41.953041, 43.740341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764435, 41.747517, 43.908646>,  <31.943867, 41.624203, 44.009628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764435, 41.747517, 43.908646>,  <31.465380, 41.953041, 43.740341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764435, 41.747517, 43.908646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106892, -0.532207, -0.839839,
		0.655450, 0.672869, -0.342975,
		0.747636, -0.513812, 0.420760,
		31.988726, 41.593372, 44.034874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994143, 41.950027, 43.316147>,  <31.465380, 41.953041, 43.740341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994143, 41.950027, 43.316147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087269, 41.636677, 43.546669>,  <32.143143, 41.448666, 43.684982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087269, 41.636677, 43.546669>,  <31.994143, 41.950027, 43.316147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087269, 41.636677, 43.546669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165918, -0.551904, -0.817235,
		0.958264, 0.285883, 0.001485,
		0.232814, -0.783373, 0.576302,
		32.157112, 41.401665, 43.719559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459785, 41.561115, 42.943920>,  <31.994143, 41.950027, 43.316147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459785, 41.561115, 42.943920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393986, 41.273857, 43.214390>,  <32.354504, 41.101501, 43.376671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393986, 41.273857, 43.214390>,  <32.459785, 41.561115, 42.943920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393986, 41.273857, 43.214390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311517, -0.688252, -0.655184,
		0.935893, 0.102861, 0.336932,
		-0.164501, -0.718142, 0.676174,
		32.344635, 41.058414, 43.417240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133278, 41.223831, 43.112751>,  <32.459785, 41.561115, 42.943920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133278, 41.223831, 43.112751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826702, 40.979141, 43.191101>,  <32.642757, 40.832329, 43.238113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826702, 40.979141, 43.191101>,  <33.133278, 41.223831, 43.112751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826702, 40.979141, 43.191101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418581, -0.706986, -0.570053,
		0.487198, -0.354919, 0.797916,
		-0.766439, -0.611721, 0.195880,
		32.596771, 40.795624, 43.249866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444721, 40.541153, 43.429890>,  <33.133278, 41.223831, 43.112751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444721, 40.541153, 43.429890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084610, 40.479782, 43.266937>,  <32.868542, 40.442959, 43.169167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084610, 40.479782, 43.266937>,  <33.444721, 40.541153, 43.429890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084610, 40.479782, 43.266937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374986, -0.748646, -0.546730,
		-0.221105, -0.644972, 0.731521,
		-0.900277, -0.153425, -0.407385,
		32.814526, 40.433754, 43.144722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465641, 39.822235, 43.545090>,  <33.444721, 40.541153, 43.429890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465641, 39.822235, 43.545090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179916, 39.909500, 43.279110>,  <33.008480, 39.961857, 43.119522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179916, 39.909500, 43.279110>,  <33.465641, 39.822235, 43.545090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179916, 39.909500, 43.279110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263156, -0.796700, -0.544076,
		-0.648462, -0.563627, 0.511684,
		-0.714315, 0.218160, -0.664951,
		32.965622, 39.974949, 43.079624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234634, 39.241318, 43.238827>,  <33.465641, 39.822235, 43.545090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234634, 39.241318, 43.238827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076324, 39.483150, 42.962322>,  <32.981339, 39.628250, 42.796417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076324, 39.483150, 42.962322>,  <33.234634, 39.241318, 43.238827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076324, 39.483150, 42.962322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137962, -0.705041, -0.695617,
		-0.907926, -0.370676, 0.195628,
		-0.395775, 0.604580, -0.691264,
		32.957592, 39.664524, 42.754944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849571, 38.808933, 42.780384>,  <33.234634, 39.241318, 43.238827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849571, 38.808933, 42.780384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986832, 39.131294, 42.587402>,  <33.069187, 39.324711, 42.471611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986832, 39.131294, 42.587402>,  <32.849571, 38.808933, 42.780384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986832, 39.131294, 42.587402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353632, -0.586702, -0.728509,
		-0.870167, 0.079376, -0.486322,
		0.343152, 0.805903, -0.482459,
		33.089779, 39.373066, 42.442665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155365, 38.475494, 42.264404>,  <32.849571, 38.808933, 42.780384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155365, 38.475494, 42.264404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183929, 38.853596, 42.137035>,  <33.201069, 39.080456, 42.060616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183929, 38.853596, 42.137035>,  <33.155365, 38.475494, 42.264404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183929, 38.853596, 42.137035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406088, -0.319135, -0.856297,
		-0.911040, -0.068161, -0.406646,
		0.071408, 0.945255, -0.318424,
		33.205353, 39.137173, 42.041508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901211, 38.561485, 41.494919>,  <33.155365, 38.475494, 42.264404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901211, 38.561485, 41.494919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194771, 38.806808, 41.611706>,  <33.370907, 38.954002, 41.681778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194771, 38.806808, 41.611706>,  <32.901211, 38.561485, 41.494919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194771, 38.806808, 41.611706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538087, -0.262592, -0.800941,
		-0.414558, 0.744913, -0.522731,
		0.733896, 0.613311, 0.291968,
		33.414940, 38.990803, 41.699295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253963, 38.875370, 40.856926>,  <32.901211, 38.561485, 41.494919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253963, 38.875370, 40.856926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529850, 38.981007, 41.126606>,  <33.695381, 39.044388, 41.288414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529850, 38.981007, 41.126606>,  <33.253963, 38.875370, 40.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529850, 38.981007, 41.126606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701165, -0.011204, -0.712911,
		-0.180717, 0.964434, -0.192896,
		0.689717, 0.264087, 0.674202,
		33.736767, 39.060234, 41.328865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652966, 39.416500, 40.607407>,  <33.253963, 38.875370, 40.856926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652966, 39.416500, 40.607407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894264, 39.249077, 40.878963>,  <34.039043, 39.148624, 41.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894264, 39.249077, 40.878963>,  <33.652966, 39.416500, 40.607407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894264, 39.249077, 40.878963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775844, 0.110723, -0.621133,
		0.184810, 0.901416, 0.391529,
		0.603251, -0.418557, 0.678895,
		34.075241, 39.123508, 41.082634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266716, 39.782520, 40.486721>,  <33.652966, 39.416500, 40.607407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266716, 39.782520, 40.486721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389400, 39.459625, 40.688435>,  <34.463013, 39.265888, 40.809464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389400, 39.459625, 40.688435>,  <34.266716, 39.782520, 40.486721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389400, 39.459625, 40.688435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928067, 0.136052, -0.346672,
		0.211236, 0.574339, 0.790895,
		0.306710, -0.807233, 0.504286,
		34.481415, 39.217457, 40.839722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905865, 39.869854, 40.531910>,  <34.266716, 39.782520, 40.486721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905865, 39.869854, 40.531910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880596, 39.480968, 40.622066>,  <34.865437, 39.247635, 40.676163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880596, 39.480968, 40.622066>,  <34.905865, 39.869854, 40.531910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880596, 39.480968, 40.622066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790077, -0.186701, -0.583885,
		0.609745, 0.141196, 0.779920,
		-0.063170, -0.972217, 0.225395,
		34.861645, 39.189304, 40.689686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601479, 39.645470, 40.725822>,  <34.905865, 39.869854, 40.531910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601479, 39.645470, 40.725822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397415, 39.323147, 40.605553>,  <35.274975, 39.129753, 40.533390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397415, 39.323147, 40.605553>,  <35.601479, 39.645470, 40.725822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397415, 39.323147, 40.605553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753594, -0.250305, -0.607818,
		0.414525, -0.536673, 0.734950,
		-0.510162, -0.805810, -0.300676,
		35.244366, 39.081406, 40.515350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129913, 39.141647, 40.698212>,  <35.601479, 39.645470, 40.725822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129913, 39.141647, 40.698212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819954, 39.013668, 40.480156>,  <35.633980, 38.936882, 40.349323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819954, 39.013668, 40.480156>,  <36.129913, 39.141647, 40.698212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819954, 39.013668, 40.480156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627859, -0.289979, -0.722292,
		0.073015, -0.901969, 0.425583,
		-0.774894, -0.319944, -0.545137,
		35.587486, 38.917686, 40.316616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378403, 38.466347, 40.422787>,  <36.129913, 39.141647, 40.698212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378403, 38.466347, 40.422787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073132, 38.564159, 40.183533>,  <35.889969, 38.622845, 40.039982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073132, 38.564159, 40.183533>,  <36.378403, 38.466347, 40.422787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073132, 38.564159, 40.183533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526248, -0.301967, -0.794908,
		-0.374994, -0.921424, 0.101773,
		-0.763180, 0.244529, -0.598133,
		35.844177, 38.637516, 40.004093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311260, 37.851986, 39.903709>,  <36.378403, 38.466347, 40.422787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311260, 37.851986, 39.903709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085758, 38.154289, 39.770443>,  <35.950455, 38.335670, 39.690483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085758, 38.154289, 39.770443>,  <36.311260, 37.851986, 39.903709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085758, 38.154289, 39.770443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265255, -0.216341, -0.939594,
		-0.782187, -0.618078, -0.078506,
		-0.563758, 0.755762, -0.333167,
		35.916630, 38.381020, 39.670494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876511, 37.639320, 39.385330>,  <36.311260, 37.851986, 39.903709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876511, 37.639320, 39.385330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887787, 38.029022, 39.295860>,  <35.894554, 38.262844, 39.242180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887787, 38.029022, 39.295860>,  <35.876511, 37.639320, 39.385330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887787, 38.029022, 39.295860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278297, -0.222563, -0.934353,
		-0.960081, -0.035908, -0.277407,
		0.028190, 0.974257, -0.223672,
		35.896244, 38.321301, 39.228760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414978, 37.822777, 38.735798>,  <35.876511, 37.639320, 39.385330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414978, 37.822777, 38.735798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683460, 38.118767, 38.753281>,  <35.844551, 38.296360, 38.763771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683460, 38.118767, 38.753281>,  <35.414978, 37.822777, 38.735798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683460, 38.118767, 38.753281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064806, 0.000154, -0.997898,
		-0.738429, 0.672631, -0.047851,
		0.671210, 0.739978, 0.043705,
		35.884823, 38.340759, 38.766392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300114, 38.248508, 38.170956>,  <35.414978, 37.822777, 38.735798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300114, 38.248508, 38.170956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674667, 38.328197, 38.286537>,  <35.899399, 38.376011, 38.355888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674667, 38.328197, 38.286537>,  <35.300114, 38.248508, 38.170956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674667, 38.328197, 38.286537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300299, -0.028609, -0.953416,
		-0.181673, 0.979537, -0.086615,
		0.936384, 0.199221, 0.288957,
		35.955582, 38.387962, 38.373222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582279, 38.716770, 37.684673>,  <35.300114, 38.248508, 38.170956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582279, 38.716770, 37.684673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899097, 38.574749, 37.883308>,  <36.089188, 38.489536, 38.002487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899097, 38.574749, 37.883308>,  <35.582279, 38.716770, 37.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899097, 38.574749, 37.883308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531927, 0.002280, -0.846787,
		0.299521, 0.934844, 0.190668,
		0.792048, -0.355052, 0.496586,
		36.136711, 38.468235, 38.032284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164047, 39.010651, 37.372601>,  <35.582279, 38.716770, 37.684673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164047, 39.010651, 37.372601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288994, 38.671261, 37.543488>,  <36.363964, 38.467625, 37.646019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288994, 38.671261, 37.543488>,  <36.164047, 39.010651, 37.372601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288994, 38.671261, 37.543488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669976, -0.122058, -0.732280,
		0.673468, 0.514966, 0.530331,
		0.312369, -0.848476, 0.427217,
		36.382706, 38.416718, 37.671654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805698, 39.177792, 37.631779>,  <36.164047, 39.010651, 37.372601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805698, 39.177792, 37.631779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778961, 38.785839, 37.556561>,  <36.762920, 38.550667, 37.511429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778961, 38.785839, 37.556561>,  <36.805698, 39.177792, 37.631779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778961, 38.785839, 37.556561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644934, 0.101371, -0.757486,
		0.761310, -0.171907, 0.625184,
		-0.066841, -0.979884, -0.188043,
		36.758907, 38.491875, 37.500149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557167, 39.036713, 37.521450>,  <36.805698, 39.177792, 37.631779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557167, 39.036713, 37.521450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331013, 38.739716, 37.377754>,  <37.195320, 38.561520, 37.291538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331013, 38.739716, 37.377754>,  <37.557167, 39.036713, 37.521450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331013, 38.739716, 37.377754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600974, -0.072512, -0.795973,
		0.564953, -0.665921, 0.487215,
		-0.565384, -0.742490, -0.359235,
		37.161396, 38.516968, 37.269985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995853, 38.468124, 37.475651>,  <37.557167, 39.036713, 37.521450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995853, 38.468124, 37.475651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711102, 38.443302, 37.195831>,  <37.540249, 38.428410, 37.027939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711102, 38.443302, 37.195831>,  <37.995853, 38.468124, 37.475651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711102, 38.443302, 37.195831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702286, -0.057045, -0.709606,
		0.004128, -0.996441, 0.084190,
		-0.711883, -0.062055, -0.699551,
		37.497536, 38.424686, 36.985966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287888, 38.121773, 36.970264>,  <37.995853, 38.468124, 37.475651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287888, 38.121773, 36.970264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977596, 38.267517, 36.764164>,  <37.791420, 38.354961, 36.640503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977596, 38.267517, 36.764164>,  <38.287888, 38.121773, 36.970264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977596, 38.267517, 36.764164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610486, 0.226484, -0.758954,
		-0.159833, -0.903299, -0.398126,
		-0.775732, 0.364357, -0.515252,
		37.744877, 38.376823, 36.609589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374847, 37.789047, 36.279461>,  <38.287888, 38.121773, 36.970264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374847, 37.789047, 36.279461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139824, 38.108994, 36.230488>,  <37.998810, 38.300961, 36.201103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139824, 38.108994, 36.230488>,  <38.374847, 37.789047, 36.279461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139824, 38.108994, 36.230488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487033, 0.228741, -0.842897,
		-0.646198, -0.554881, -0.523960,
		-0.587559, 0.799865, -0.122434,
		37.963554, 38.348953, 36.193756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116844, 37.795856, 36.208107>,  <38.374847, 37.789047, 36.279461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116844, 37.795856, 36.208107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411060, 38.064209, 36.245831>,  <39.587589, 38.225220, 36.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411060, 38.064209, 36.245831>,  <39.116844, 37.795856, 36.208107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411060, 38.064209, 36.245831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408600, -0.550333, 0.728135,
		0.540395, -0.497039, -0.678915,
		0.735541, 0.670885, 0.094307,
		39.631721, 38.265472, 36.274124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777737, 37.459095, 35.911255>,  <39.116844, 37.795856, 36.208107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777737, 37.459095, 35.911255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782974, 37.737877, 36.198051>,  <39.786118, 37.905148, 36.370129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782974, 37.737877, 36.198051>,  <39.777737, 37.459095, 35.911255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782974, 37.737877, 36.198051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375093, -0.668115, 0.642594,
		0.926895, 0.260523, -0.270175,
		0.013097, 0.696957, 0.716993,
		39.786903, 37.946964, 36.413151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495789, 37.571404, 36.249477>,  <39.777737, 37.459095, 35.911255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495789, 37.571404, 36.249477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177914, 37.617561, 36.487854>,  <39.987186, 37.645256, 36.630882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177914, 37.617561, 36.487854>,  <40.495789, 37.571404, 36.249477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177914, 37.617561, 36.487854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315538, -0.760164, 0.567968,
		0.518557, 0.639402, 0.567683,
		-0.794691, 0.115398, 0.595944,
		39.939507, 37.652180, 36.666637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727333, 37.676125, 36.954781>,  <40.495789, 37.571404, 36.249477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727333, 37.676125, 36.954781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373287, 37.490753, 36.937820>,  <40.160858, 37.379528, 36.927643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373287, 37.490753, 36.937820>,  <40.727333, 37.676125, 36.954781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373287, 37.490753, 36.937820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381589, -0.774909, 0.503891,
		-0.266380, 0.429821, 0.862726,
		-0.885117, -0.463433, -0.042405,
		40.107754, 37.351723, 36.925098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321739, 37.865959, 36.612965>,  <40.727333, 37.676125, 36.954781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321739, 37.865959, 36.612965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636902, 37.806679, 36.852043>,  <41.826000, 37.771111, 36.995491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636902, 37.806679, 36.852043>,  <41.321739, 37.865959, 36.612965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636902, 37.806679, 36.852043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108183, -0.922199, -0.371274,
		0.606222, 0.357189, -0.710570,
		0.787903, -0.148203, 0.597700,
		41.873272, 37.762218, 37.031353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073536, 37.901691, 36.277416>,  <41.321739, 37.865959, 36.612965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073536, 37.901691, 36.277416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962708, 37.636272, 36.555393>,  <41.896210, 37.477020, 36.722179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962708, 37.636272, 36.555393>,  <42.073536, 37.901691, 36.277416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962708, 37.636272, 36.555393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137707, -0.743213, -0.654730,
		0.950931, -0.085707, 0.297295,
		-0.277068, -0.663543, 0.694942,
		41.879585, 37.437210, 36.763874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560360, 37.369846, 36.393055>,  <42.073536, 37.901691, 36.277416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560360, 37.369846, 36.393055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210197, 37.198532, 36.482712>,  <42.000099, 37.095745, 36.536507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210197, 37.198532, 36.482712>,  <42.560360, 37.369846, 36.393055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210197, 37.198532, 36.482712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170529, -0.707491, -0.685840,
		0.452316, -0.562163, 0.692375,
		-0.875403, -0.428286, 0.224144,
		41.947578, 37.070045, 36.549953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458092, 37.480705, 37.151253>,  <42.560360, 37.369846, 36.393055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458092, 37.480705, 37.151253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851151, 37.408703, 37.169117>,  <43.086987, 37.365501, 37.179836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851151, 37.408703, 37.169117>,  <42.458092, 37.480705, 37.151253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851151, 37.408703, 37.169117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109302, -0.367529, 0.923567,
		-0.149837, -0.912425, -0.380828,
		0.982651, -0.180010, 0.044661,
		43.145947, 37.354698, 37.182514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541954, 36.818733, 37.562683>,  <42.458092, 37.480705, 37.151253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541954, 36.818733, 37.562683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890564, 37.014519, 37.574528>,  <43.099728, 37.131989, 37.581635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890564, 37.014519, 37.574528>,  <42.541954, 36.818733, 37.562683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890564, 37.014519, 37.574528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088602, -0.216578, 0.972236,
		0.482288, -0.844700, -0.232119,
		0.871520, 0.489464, 0.029611,
		43.152020, 37.161358, 37.583412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010658, 36.433044, 37.861584>,  <42.541954, 36.818733, 37.562683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010658, 36.433044, 37.861584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183666, 36.789501, 37.916435>,  <43.287472, 37.003376, 37.949345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183666, 36.789501, 37.916435>,  <43.010658, 36.433044, 37.861584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183666, 36.789501, 37.916435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184341, -0.236277, 0.954040,
		0.882581, -0.387359, -0.266466,
		0.432516, 0.891137, 0.137127,
		43.313419, 37.056843, 37.957573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691296, 36.279255, 38.367393>,  <43.010658, 36.433044, 37.861584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691296, 36.279255, 38.367393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618118, 36.671970, 38.387886>,  <43.574211, 36.907600, 38.400181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618118, 36.671970, 38.387886>,  <43.691296, 36.279255, 38.367393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618118, 36.671970, 38.387886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077842, -0.037479, 0.996261,
		0.980037, 0.186246, -0.069568,
		-0.182942, 0.981788, 0.051228,
		43.563236, 36.966507, 38.403255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140026, 36.572250, 38.865498>,  <43.691296, 36.279255, 38.367393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140026, 36.572250, 38.865498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876297, 36.871414, 38.834736>,  <43.718060, 37.050915, 38.816277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876297, 36.871414, 38.834736>,  <44.140026, 36.572250, 38.865498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876297, 36.871414, 38.834736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076530, 0.168519, 0.982723,
		0.747951, 0.642050, -0.168347,
		-0.659327, 0.747912, -0.076908,
		43.678497, 37.095787, 38.811665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369225, 37.012074, 39.337242>,  <44.140026, 36.572250, 38.865498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369225, 37.012074, 39.337242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989891, 37.119446, 39.269596>,  <43.762291, 37.183868, 39.229008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989891, 37.119446, 39.269596>,  <44.369225, 37.012074, 39.337242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989891, 37.119446, 39.269596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173433, 0.007742, 0.984815,
		0.265664, 0.963268, 0.039213,
		-0.948337, 0.268431, -0.169119,
		43.705391, 37.199974, 39.218861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199905, 37.561794, 39.800228>,  <44.369225, 37.012074, 39.337242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199905, 37.561794, 39.800228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829910, 37.448269, 39.699162>,  <43.607914, 37.380154, 39.638523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829910, 37.448269, 39.699162>,  <44.199905, 37.561794, 39.800228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829910, 37.448269, 39.699162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283806, 0.073859, 0.956033,
		-0.252677, 0.956030, -0.148867,
		-0.924991, -0.283817, -0.252664,
		43.552414, 37.363125, 39.623363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754322, 37.969219, 40.133064>,  <44.199905, 37.561794, 39.800228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754322, 37.969219, 40.133064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526630, 37.654827, 40.036556>,  <43.390015, 37.466190, 39.978653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526630, 37.654827, 40.036556>,  <43.754322, 37.969219, 40.133064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526630, 37.654827, 40.036556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259186, -0.106941, 0.959889,
		-0.780259, 0.608927, -0.142842,
		-0.569227, -0.785984, -0.241267,
		43.355862, 37.419033, 39.964176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061558, 37.981789, 40.454742>,  <43.754322, 37.969219, 40.133064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061558, 37.981789, 40.454742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118568, 37.595085, 40.369827>,  <43.152775, 37.363064, 40.318878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118568, 37.595085, 40.369827>,  <43.061558, 37.981789, 40.454742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118568, 37.595085, 40.369827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313346, -0.247518, 0.916814,
		-0.938882, -0.064150, -0.338208,
		0.142527, -0.966757, -0.212289,
		43.161327, 37.305058, 40.306141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421139, 37.712173, 40.717789>,  <43.061558, 37.981789, 40.454742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421139, 37.712173, 40.717789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687851, 37.414280, 40.706646>,  <42.847878, 37.235542, 40.699963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687851, 37.414280, 40.706646>,  <42.421139, 37.712173, 40.717789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687851, 37.414280, 40.706646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055538, -0.086927, 0.994666,
		-0.743185, -0.661673, -0.099322,
		0.666777, -0.744736, -0.027855,
		42.887886, 37.190861, 40.698288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127357, 37.284523, 41.150101>,  <42.421139, 37.712173, 40.717789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127357, 37.284523, 41.150101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506218, 37.162121, 41.111614>,  <42.733536, 37.088680, 41.088524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506218, 37.162121, 41.111614>,  <42.127357, 37.284523, 41.150101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506218, 37.162121, 41.111614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074776, -0.081047, 0.993901,
		-0.311937, -0.948573, -0.053882,
		0.947155, -0.306006, -0.096212,
		42.790363, 37.070320, 41.082752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277485, 36.606182, 41.520561>,  <42.127357, 37.284523, 41.150101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277485, 36.606182, 41.520561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620285, 36.808849, 41.482979>,  <42.825966, 36.930450, 41.460430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620285, 36.808849, 41.482979>,  <42.277485, 36.606182, 41.520561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620285, 36.808849, 41.482979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196181, -0.152189, 0.968685,
		0.476505, -0.848600, -0.229826,
		0.857004, 0.506671, -0.093960,
		42.877388, 36.960850, 41.454792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664913, 36.245155, 41.995312>,  <42.277485, 36.606182, 41.520561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664913, 36.245155, 41.995312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887577, 36.568241, 41.917625>,  <43.021175, 36.762093, 41.871014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887577, 36.568241, 41.917625>,  <42.664913, 36.245155, 41.995312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887577, 36.568241, 41.917625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467161, -0.111047, 0.877171,
		0.686940, -0.579017, -0.439150,
		0.556664, 0.807718, -0.194211,
		43.054577, 36.810555, 41.859364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269466, 36.009575, 42.255325>,  <42.664913, 36.245155, 41.995312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269466, 36.009575, 42.255325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326420, 36.404705, 42.280396>,  <43.360592, 36.641785, 42.295437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326420, 36.404705, 42.280396>,  <43.269466, 36.009575, 42.255325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326420, 36.404705, 42.280396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135599, -0.082188, 0.987349,
		0.980479, -0.132083, -0.145650,
		0.142382, 0.987826, 0.062673,
		43.369133, 36.701054, 42.299198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850185, 36.104137, 42.687683>,  <43.269466, 36.009575, 42.255325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850185, 36.104137, 42.687683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671711, 36.460930, 42.716751>,  <43.564625, 36.675007, 42.734192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671711, 36.460930, 42.716751>,  <43.850185, 36.104137, 42.687683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671711, 36.460930, 42.716751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241526, 0.041827, 0.969493,
		0.861731, 0.450131, -0.234099,
		-0.446190, 0.891983, 0.072675,
		43.537853, 36.728523, 42.738552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292732, 36.425694, 42.984795>,  <43.850185, 36.104137, 42.687683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292732, 36.425694, 42.984795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947109, 36.616154, 43.050133>,  <43.739735, 36.730431, 43.089336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947109, 36.616154, 43.050133>,  <44.292732, 36.425694, 42.984795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947109, 36.616154, 43.050133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253566, 0.131363, 0.958357,
		0.434863, 0.869497, -0.234241,
		-0.864059, 0.476150, 0.163350,
		43.687893, 36.758999, 43.099136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478863, 36.993244, 43.363628>,  <44.292732, 36.425694, 42.984795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478863, 36.993244, 43.363628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085033, 36.944847, 43.414185>,  <43.848736, 36.915810, 43.444519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085033, 36.944847, 43.414185>,  <44.478863, 36.993244, 43.363628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085033, 36.944847, 43.414185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070304, 0.387928, 0.919004,
		-0.160226, 0.913713, -0.373437,
		-0.984573, -0.120995, 0.126394,
		43.789661, 36.908550, 43.452103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206337, 37.587494, 43.672268>,  <44.478863, 36.993244, 43.363628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206337, 37.587494, 43.672268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923397, 37.318653, 43.759846>,  <43.753632, 37.157349, 43.812393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923397, 37.318653, 43.759846>,  <44.206337, 37.587494, 43.672268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923397, 37.318653, 43.759846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004230, 0.305711, 0.952115,
		-0.706850, 0.674405, -0.213402,
		-0.707351, -0.672100, 0.218944,
		43.711193, 37.117023, 43.825527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807102, 37.931927, 44.155216>,  <44.206337, 37.587494, 43.672268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807102, 37.931927, 44.155216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694420, 37.551285, 44.204357>,  <43.626808, 37.322899, 44.233841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694420, 37.551285, 44.204357>,  <43.807102, 37.931927, 44.155216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694420, 37.551285, 44.204357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079887, 0.150851, 0.985323,
		-0.956168, 0.267762, -0.118517,
		-0.281710, -0.951603, 0.122848,
		43.609905, 37.265804, 44.241211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282139, 37.946957, 44.573116>,  <43.807102, 37.931927, 44.155216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282139, 37.946957, 44.573116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371292, 37.559422, 44.616325>,  <43.424786, 37.326900, 44.642250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371292, 37.559422, 44.616325>,  <43.282139, 37.946957, 44.573116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371292, 37.559422, 44.616325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023118, 0.105524, 0.994148,
		-0.974571, -0.224075, 0.001122,
		0.222882, -0.968842, 0.108021,
		43.438156, 37.268768, 44.648731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707989, 37.540749, 44.843700>,  <43.282139, 37.946957, 44.573116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707989, 37.540749, 44.843700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061142, 37.388802, 44.954128>,  <43.273033, 37.297634, 45.020386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061142, 37.388802, 44.954128>,  <42.707989, 37.540749, 44.843700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061142, 37.388802, 44.954128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084614, 0.449589, 0.889219,
		-0.461905, -0.808437, 0.364793,
		0.882884, -0.379868, 0.276073,
		43.326008, 37.274841, 45.036949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705036, 37.079723, 45.464367>,  <42.707989, 37.540749, 44.843700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705036, 37.079723, 45.464367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034222, 37.302570, 45.419926>,  <43.231735, 37.436279, 45.393261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034222, 37.302570, 45.419926>,  <42.705036, 37.079723, 45.464367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034222, 37.302570, 45.419926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109148, 0.346991, 0.931496,
		0.557506, -0.754463, 0.346370,
		0.822967, 0.557120, -0.111101,
		43.281113, 37.469707, 45.386597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985943, 36.655273, 45.679077>,  <42.705036, 37.079723, 45.464367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985943, 36.655273, 45.679077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784985, 36.990826, 45.595295>,  <41.664410, 37.192158, 45.545025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784985, 36.990826, 45.595295>,  <41.985943, 36.655273, 45.679077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784985, 36.990826, 45.595295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425767, 0.450863, 0.784503,
		0.752540, 0.304956, -0.583682,
		-0.502400, 0.838883, -0.209452,
		41.634266, 37.242489, 45.532459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218006, 36.458549, 45.030960>,  <41.985943, 36.655273, 45.679077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218006, 36.458549, 45.030960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617764, 36.451229, 45.019135>,  <42.857620, 36.446838, 45.012039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617764, 36.451229, 45.019135>,  <42.218006, 36.458549, 45.030960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617764, 36.451229, 45.019135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023449, 0.273161, -0.961682,
		0.025674, 0.961794, 0.272567,
		0.999395, -0.018299, -0.029567,
		42.917583, 36.445740, 45.010265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687344, 35.867764, 45.081848>,  <42.218006, 36.458549, 45.030960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687344, 35.867764, 45.081848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757507, 35.563972, 45.332424>,  <41.799606, 35.381699, 45.482769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757507, 35.563972, 45.332424>,  <41.687344, 35.867764, 45.081848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757507, 35.563972, 45.332424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181061, -0.650339, -0.737751,
		0.967702, 0.015987, -0.251589,
		0.175413, -0.759476, 0.626439,
		41.810131, 35.336128, 45.520355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084774, 35.533577, 44.739052>,  <41.687344, 35.867764, 45.081848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084774, 35.533577, 44.739052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887569, 35.279949, 44.977345>,  <41.769245, 35.127773, 45.120319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887569, 35.279949, 44.977345>,  <42.084774, 35.533577, 44.739052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887569, 35.279949, 44.977345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146792, -0.614295, -0.775302,
		0.857550, -0.469681, 0.209778,
		-0.493011, -0.634067, 0.595734,
		41.739666, 35.089729, 45.156063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264324, 34.773247, 44.687675>,  <42.084774, 35.533577, 44.739052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264324, 34.773247, 44.687675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888172, 34.803898, 44.820229>,  <41.662479, 34.822289, 44.899761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888172, 34.803898, 44.820229>,  <42.264324, 34.773247, 44.687675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888172, 34.803898, 44.820229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276700, -0.738935, -0.614339,
		0.197797, -0.669405, 0.716082,
		-0.940379, 0.076625, 0.331383,
		41.606060, 34.826885, 44.919643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052315, 34.724083, 44.019756>,  <42.264324, 34.773247, 44.687675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052315, 34.724083, 44.019756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139732, 34.335159, 43.986633>,  <42.192184, 34.101807, 43.966759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139732, 34.335159, 43.986633>,  <42.052315, 34.724083, 44.019756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139732, 34.335159, 43.986633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440587, -0.022597, -0.897425,
		0.870701, 0.232615, -0.433324,
		0.218546, -0.972306, -0.082812,
		42.205296, 34.043468, 43.961788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601921, 34.483440, 43.505070>,  <42.052315, 34.724083, 44.019756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601921, 34.483440, 43.505070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296509, 34.230362, 43.556801>,  <42.113262, 34.078514, 43.587841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296509, 34.230362, 43.556801>,  <42.601921, 34.483440, 43.505070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296509, 34.230362, 43.556801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348390, 0.234946, -0.907428,
		0.543738, -0.737902, -0.399811,
		-0.763527, -0.632693, 0.129329,
		42.067451, 34.040554, 43.595600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531792, 34.162277, 42.905247>,  <42.601921, 34.483440, 43.505070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531792, 34.162277, 42.905247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177689, 34.104858, 43.082203>,  <41.965225, 34.070408, 43.188377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177689, 34.104858, 43.082203>,  <42.531792, 34.162277, 42.905247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177689, 34.104858, 43.082203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459891, 0.128201, -0.878672,
		0.069411, -0.981305, -0.179504,
		-0.885258, -0.143542, 0.442395,
		41.912109, 34.061794, 43.214920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262836, 33.426075, 42.765537>,  <42.531792, 34.162277, 42.905247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262836, 33.426075, 42.765537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041512, 33.756332, 42.809639>,  <41.908718, 33.954487, 42.836098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041512, 33.756332, 42.809639>,  <42.262836, 33.426075, 42.765537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041512, 33.756332, 42.809639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088088, 0.073617, -0.993389,
		-0.828303, -0.559366, 0.031996,
		-0.553313, 0.825645, 0.110251,
		41.875519, 34.004025, 42.842712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896488, 33.397392, 42.148312>,  <42.262836, 33.426075, 42.765537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896488, 33.397392, 42.148312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829704, 33.766396, 42.287506>,  <41.789635, 33.987797, 42.371021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829704, 33.766396, 42.287506>,  <41.896488, 33.397392, 42.148312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829704, 33.766396, 42.287506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162780, 0.322307, -0.932535,
		-0.972433, -0.212343, 0.096353,
		-0.166962, 0.922512, 0.347987,
		41.779617, 34.043148, 42.391903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256187, 33.673668, 41.777077>,  <41.896488, 33.397392, 42.148312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256187, 33.673668, 41.777077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462608, 33.990150, 41.908340>,  <41.586460, 34.180038, 41.987099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462608, 33.990150, 41.908340>,  <41.256187, 33.673668, 41.777077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462608, 33.990150, 41.908340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003972, 0.385318, -0.922775,
		-0.856550, 0.474894, 0.201985,
		0.516049, 0.791205, 0.328158,
		41.617424, 34.227512, 42.006786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987854, 34.157593, 41.346367>,  <41.256187, 33.673668, 41.777077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987854, 34.157593, 41.346367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321613, 34.300812, 41.513977>,  <41.521870, 34.386745, 41.614544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321613, 34.300812, 41.513977>,  <40.987854, 34.157593, 41.346367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321613, 34.300812, 41.513977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281316, 0.377113, -0.882410,
		-0.473969, 0.854157, 0.213935,
		0.834395, 0.358052, 0.419028,
		41.571930, 34.408226, 41.639687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987366, 34.917122, 41.170174>,  <40.987854, 34.157593, 41.346367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987366, 34.917122, 41.170174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351997, 34.796551, 41.282013>,  <41.570774, 34.724209, 41.349117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351997, 34.796551, 41.282013>,  <40.987366, 34.917122, 41.170174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351997, 34.796551, 41.282013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390917, 0.424842, -0.816513,
		0.127335, 0.853611, 0.505108,
		0.911575, -0.301426, 0.279594,
		41.625469, 34.706123, 41.365891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391624, 35.259857, 40.782139>,  <40.987366, 34.917122, 41.170174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391624, 35.259857, 40.782139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659542, 34.996197, 40.918896>,  <41.820293, 34.838001, 41.000950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659542, 34.996197, 40.918896>,  <41.391624, 35.259857, 40.782139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659542, 34.996197, 40.918896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593894, 0.199158, -0.779504,
		0.445722, 0.725156, 0.524863,
		0.669792, -0.659155, 0.341896,
		41.860481, 34.798450, 41.021465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048374, 35.581486, 40.617313>,  <41.391624, 35.259857, 40.782139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048374, 35.581486, 40.617313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110542, 35.195221, 40.700588>,  <42.147842, 34.963463, 40.750553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110542, 35.195221, 40.700588>,  <42.048374, 35.581486, 40.617313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110542, 35.195221, 40.700588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797855, -0.001557, -0.602848,
		0.582473, 0.259792, 0.770217,
		0.155416, -0.965663, 0.208182,
		42.157166, 34.905521, 40.763042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717442, 35.558449, 40.889336>,  <42.048374, 35.581486, 40.617313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717442, 35.558449, 40.889336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643414, 35.193596, 40.743042>,  <42.598995, 34.974686, 40.655266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643414, 35.193596, 40.743042>,  <42.717442, 35.558449, 40.889336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643414, 35.193596, 40.743042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892140, 0.000125, -0.451760,
		0.412110, -0.409896, 0.813726,
		-0.185073, -0.912132, -0.365736,
		42.587891, 34.919956, 40.633320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306122, 35.109467, 40.973923>,  <42.717442, 35.558449, 40.889336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306122, 35.109467, 40.973923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123051, 34.908772, 40.680313>,  <43.013210, 34.788353, 40.504147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123051, 34.908772, 40.680313>,  <43.306122, 35.109467, 40.973923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123051, 34.908772, 40.680313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857627, -0.031342, -0.513316,
		0.234544, -0.864452, 0.444648,
		-0.457673, -0.501738, -0.734026,
		42.985748, 34.758251, 40.460106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770439, 34.554420, 40.735867>,  <43.306122, 35.109467, 40.973923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770439, 34.554420, 40.735867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518322, 34.607174, 40.429836>,  <43.367054, 34.638824, 40.246220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518322, 34.607174, 40.429836>,  <43.770439, 34.554420, 40.735867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518322, 34.607174, 40.429836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773373, 0.020295, -0.633626,
		-0.068036, -0.991058, -0.114784,
		-0.630289, 0.131881, -0.765077,
		43.329235, 34.646736, 40.200314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847885, 33.988918, 40.282516>,  <43.770439, 34.554420, 40.735867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847885, 33.988918, 40.282516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685040, 34.283272, 40.066097>,  <43.587334, 34.459885, 39.936245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685040, 34.283272, 40.066097>,  <43.847885, 33.988918, 40.282516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685040, 34.283272, 40.066097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712683, -0.114551, -0.692070,
		-0.571262, -0.667345, -0.477818,
		-0.407115, 0.735886, -0.541044,
		43.562904, 34.504036, 39.903786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090389, 33.772198, 39.588516>,  <43.847885, 33.988918, 40.282516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090389, 33.772198, 39.588516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958977, 34.148182, 39.551552>,  <43.880131, 34.373772, 39.529373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958977, 34.148182, 39.551552>,  <44.090389, 33.772198, 39.588516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958977, 34.148182, 39.551552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544858, 0.108693, -0.831454,
		-0.771490, -0.323511, -0.547854,
		-0.328532, 0.939961, -0.092412,
		43.860416, 34.430172, 39.523827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846794, 33.836536, 38.853653>,  <44.090389, 33.772198, 39.588516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846794, 33.836536, 38.853653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922947, 34.200897, 39.000084>,  <43.968639, 34.419514, 39.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922947, 34.200897, 39.000084>,  <43.846794, 33.836536, 38.853653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922947, 34.200897, 39.000084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636754, 0.169240, -0.752264,
		-0.747193, 0.376322, -0.547799,
		0.190385, 0.910900, 0.366080,
		43.980061, 34.474167, 39.109909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765846, 34.239670, 38.313477>,  <43.846794, 33.836536, 38.853653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765846, 34.239670, 38.313477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961327, 34.479168, 38.567303>,  <44.078617, 34.622868, 38.719597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961327, 34.479168, 38.567303>,  <43.765846, 34.239670, 38.313477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961327, 34.479168, 38.567303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634389, 0.255440, -0.729590,
		-0.598931, 0.759115, -0.255002,
		0.488705, 0.598744, 0.634565,
		44.107937, 34.658791, 38.757671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883171, 34.810558, 37.932407>,  <43.765846, 34.239670, 38.313477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883171, 34.810558, 37.932407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139435, 34.849117, 38.237106>,  <44.293194, 34.872253, 38.419926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139435, 34.849117, 38.237106>,  <43.883171, 34.810558, 37.932407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139435, 34.849117, 38.237106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652701, 0.454145, -0.606411,
		-0.404400, 0.885698, 0.228036,
		0.640658, 0.096393, 0.761752,
		44.331631, 34.878036, 38.465633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031563, 35.456776, 37.998055>,  <43.883171, 34.810558, 37.932407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031563, 35.456776, 37.998055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341698, 35.312973, 38.205750>,  <44.527779, 35.226692, 38.330368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341698, 35.312973, 38.205750>,  <44.031563, 35.456776, 37.998055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341698, 35.312973, 38.205750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628416, 0.520926, -0.577694,
		-0.062802, 0.774206, 0.629811,
		0.775338, -0.359503, 0.519238,
		44.574299, 35.205124, 38.361523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406883, 35.985767, 38.305515>,  <44.031563, 35.456776, 37.998055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406883, 35.985767, 38.305515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649994, 35.671787, 38.257420>,  <44.795860, 35.483398, 38.228561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649994, 35.671787, 38.257420>,  <44.406883, 35.985767, 38.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649994, 35.671787, 38.257420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552395, 0.526682, -0.646116,
		0.570498, 0.326275, 0.753709,
		0.607776, -0.784953, -0.120238,
		44.832325, 35.436302, 38.221348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063461, 36.260483, 38.381256>,  <44.406883, 35.985767, 38.305515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063461, 36.260483, 38.381256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144775, 35.916138, 38.194668>,  <45.193562, 35.709530, 38.082714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144775, 35.916138, 38.194668>,  <45.063461, 36.260483, 38.381256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144775, 35.916138, 38.194668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633199, 0.478968, -0.607986,
		0.746816, -0.171775, 0.642463,
		0.203282, -0.860862, -0.466469,
		45.205761, 35.657879, 38.054726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810669, 36.246655, 38.414879>,  <45.063461, 36.260483, 38.381256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810669, 36.246655, 38.414879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700356, 35.996735, 38.122696>,  <45.634167, 35.846783, 37.947388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700356, 35.996735, 38.122696>,  <45.810669, 36.246655, 38.414879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700356, 35.996735, 38.122696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648739, 0.439761, -0.621086,
		0.709282, -0.645160, 0.284055,
		-0.275783, -0.624803, -0.730455,
		45.617619, 35.809296, 37.903561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473827, 35.911625, 38.085842>,  <45.810669, 36.246655, 38.414879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473827, 35.911625, 38.085842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165623, 35.918602, 37.830971>,  <45.980698, 35.922787, 37.678047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165623, 35.918602, 37.830971>,  <46.473827, 35.911625, 38.085842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165623, 35.918602, 37.830971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483759, 0.666926, -0.566733,
		0.415070, -0.744919, -0.522313,
		-0.770515, 0.017439, -0.637183,
		45.934467, 35.923836, 37.639816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730305, 36.037319, 37.380730>,  <46.473827, 35.911625, 38.085842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730305, 36.037319, 37.380730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341000, 36.127823, 37.364918>,  <46.107414, 36.182125, 37.355431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341000, 36.127823, 37.364918>,  <46.730305, 36.037319, 37.380730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341000, 36.127823, 37.364918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217232, 0.850879, -0.478346,
		-0.074597, -0.474144, -0.877282,
		-0.973266, 0.226257, -0.039526,
		46.049019, 36.195702, 37.353062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409081, 36.071049, 36.945709>,  <46.730305, 36.037319, 37.380730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409081, 36.071049, 36.945709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165520, 35.940166, 36.656662>,  <47.019382, 35.861637, 36.483234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165520, 35.940166, 36.656662>,  <47.409081, 36.071049, 36.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.165520, 35.940166, 36.656662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780433, -0.410171, -0.471895,
		-0.141987, -0.851290, 0.505118,
		-0.608905, -0.327208, -0.722614,
		46.982849, 35.842003, 36.439877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511513, 35.309345, 36.740288>,  <47.409081, 36.071049, 36.945709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511513, 35.309345, 36.740288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366409, 35.498428, 36.419052>,  <47.279346, 35.611877, 36.226311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366409, 35.498428, 36.419052>,  <47.511513, 35.309345, 36.740288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366409, 35.498428, 36.419052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707656, -0.420989, -0.567442,
		-0.606326, -0.774157, -0.181796,
		-0.362755, 0.472704, -0.803094,
		47.257584, 35.640240, 36.178123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306606, 34.805878, 36.237503>,  <47.511513, 35.309345, 36.740288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306606, 34.805878, 36.237503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395760, 35.137669, 36.032650>,  <47.449253, 35.336742, 35.909737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395760, 35.137669, 36.032650>,  <47.306606, 34.805878, 36.237503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395760, 35.137669, 36.032650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718405, -0.494876, -0.488869,
		-0.658950, -0.258958, -0.706205,
		0.222887, 0.829481, -0.512135,
		47.462627, 35.386513, 35.879009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190765, 34.678101, 35.478863>,  <47.306606, 34.805878, 36.237503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190765, 34.678101, 35.478863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442822, 34.982185, 35.542107>,  <47.594055, 35.164635, 35.580051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442822, 34.982185, 35.542107>,  <47.190765, 34.678101, 35.478863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.442822, 34.982185, 35.542107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749902, -0.543008, -0.377875,
		-0.201409, 0.356683, -0.912256,
		0.630144, 0.760210, 0.158111,
		47.631866, 35.210247, 35.589539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.624432, 34.677029, 34.900051>,  <47.190765, 34.678101, 35.478863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.624432, 34.677029, 34.900051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810463, 34.912315, 35.164688>,  <47.922081, 35.053486, 35.323471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810463, 34.912315, 35.164688>,  <47.624432, 34.677029, 34.900051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.810463, 34.912315, 35.164688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884410, -0.275803, -0.376499,
		-0.038992, 0.760223, -0.648491,
		0.465078, 0.588213, 0.661595,
		47.949986, 35.088779, 35.363167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.141853, 44.576000, 42.228664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.801300, 44.441021, 42.068031>,  <31.596968, 44.360031, 41.971649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.801300, 44.441021, 42.068031>,  <32.141853, 44.576000, 42.228664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801300, 44.441021, 42.068031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450146, -0.077000, -0.889629,
		0.269284, -0.938189, 0.217459,
		-0.851384, -0.337451, -0.401587,
		31.545885, 44.339787, 41.947556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294025, 43.989128, 41.891041>,  <32.141853, 44.576000, 42.228664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294025, 43.989128, 41.891041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.941408, 44.078888, 41.724895>,  <31.729837, 44.132744, 41.625210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.941408, 44.078888, 41.724895>,  <32.294025, 43.989128, 41.891041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941408, 44.078888, 41.724895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358816, -0.253305, -0.898381,
		-0.306811, -0.941000, 0.142781,
		-0.881543, 0.224401, -0.415362,
		31.676945, 44.146210, 41.600288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011875, 43.328552, 41.592571>,  <32.294025, 43.989128, 41.891041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011875, 43.328552, 41.592571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.806133, 43.604992, 41.389469>,  <31.682688, 43.770855, 41.267609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.806133, 43.604992, 41.389469>,  <32.011875, 43.328552, 41.592571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806133, 43.604992, 41.389469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250501, -0.445182, -0.859687,
		-0.820176, -0.569378, 0.055860,
		-0.514355, 0.691102, -0.507757,
		31.651827, 43.812321, 41.237141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684261, 42.950066, 41.079792>,  <32.011875, 43.328552, 41.592571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684261, 42.950066, 41.079792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.681486, 43.319305, 40.925995>,  <31.679821, 43.540852, 40.833717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.681486, 43.319305, 40.925995>,  <31.684261, 42.950066, 41.079792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681486, 43.319305, 40.925995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134726, -0.380134, -0.915067,
		-0.990859, -0.058149, -0.121729,
		-0.006937, 0.923102, -0.384493,
		31.679405, 43.596237, 40.810646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124489, 43.072491, 40.437122>,  <31.684261, 42.950066, 41.079792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124489, 43.072491, 40.437122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.406063, 43.355568, 40.412975>,  <31.575008, 43.525414, 40.398487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.406063, 43.355568, 40.412975>,  <31.124489, 43.072491, 40.437122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406063, 43.355568, 40.412975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246158, -0.322809, -0.913893,
		-0.666242, 0.628463, -0.401442,
		0.703937, 0.707692, -0.060368,
		31.617245, 43.567875, 40.394867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016291, 43.428146, 39.802425>,  <31.124489, 43.072491, 40.437122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016291, 43.428146, 39.802425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.399424, 43.490032, 39.899273>,  <31.629303, 43.527164, 39.957382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.399424, 43.490032, 39.899273>,  <31.016291, 43.428146, 39.802425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399424, 43.490032, 39.899273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263645, -0.138192, -0.954670,
		-0.114246, 0.978246, -0.173155,
		0.957831, 0.154718, 0.242122,
		31.686773, 43.536449, 39.971909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242180, 43.715904, 39.133438>,  <31.016291, 43.428146, 39.802425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242180, 43.715904, 39.133438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596756, 43.636978, 39.300907>,  <31.809502, 43.589622, 39.401390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596756, 43.636978, 39.300907>,  <31.242180, 43.715904, 39.133438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596756, 43.636978, 39.300907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350119, -0.305767, -0.885394,
		0.302716, 0.931437, -0.201962,
		0.886442, -0.197312, 0.418674,
		31.862688, 43.577785, 39.426510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766994, 43.783909, 38.627296>,  <31.242180, 43.715904, 39.133438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766994, 43.783909, 38.627296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.996897, 43.594059, 38.893948>,  <32.134838, 43.480148, 39.053936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.996897, 43.594059, 38.893948>,  <31.766994, 43.783909, 38.627296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996897, 43.594059, 38.893948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467881, -0.477737, -0.743542,
		0.671376, 0.739254, -0.052513,
		0.574754, -0.474626, 0.666624,
		32.169323, 43.451672, 39.093933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475155, 43.870819, 38.401344>,  <31.766994, 43.783909, 38.627296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475155, 43.870819, 38.401344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450470, 43.529842, 38.609009>,  <32.435661, 43.325256, 38.733608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450470, 43.529842, 38.609009>,  <32.475155, 43.870819, 38.401344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450470, 43.529842, 38.609009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400302, -0.497622, -0.769500,
		0.914303, 0.160335, 0.371944,
		-0.061709, -0.852446, 0.519160,
		32.431957, 43.274109, 38.764755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072773, 43.499081, 38.238281>,  <32.475155, 43.870819, 38.401344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072773, 43.499081, 38.238281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.862057, 43.198757, 38.397671>,  <32.735626, 43.018562, 38.493305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.862057, 43.198757, 38.397671>,  <33.072773, 43.499081, 38.238281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862057, 43.198757, 38.397671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359956, -0.621736, -0.695612,
		0.770014, -0.223011, 0.597783,
		-0.526792, -0.750807, 0.398471,
		32.704018, 42.973515, 38.517212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560375, 42.928471, 38.495560>,  <33.072773, 43.499081, 38.238281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560375, 42.928471, 38.495560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.211697, 42.737400, 38.451809>,  <33.002487, 42.622757, 38.425560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.211697, 42.737400, 38.451809>,  <33.560375, 42.928471, 38.495560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211697, 42.737400, 38.451809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413065, -0.596158, -0.688457,
		0.263657, -0.645306, 0.716983,
		-0.871701, -0.477677, -0.109372,
		32.950188, 42.594097, 38.418999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737549, 42.247585, 38.581387>,  <33.560375, 42.928471, 38.495560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737549, 42.247585, 38.581387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.377357, 42.220787, 38.409504>,  <33.161243, 42.204708, 38.306374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.377357, 42.220787, 38.409504>,  <33.737549, 42.247585, 38.581387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377357, 42.220787, 38.409504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352721, -0.690520, -0.631482,
		-0.254415, -0.720203, 0.645430,
		-0.900478, -0.066998, -0.429709,
		33.107216, 42.200687, 38.280590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585228, 41.528591, 38.522823>,  <33.737549, 42.247585, 38.581387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585228, 41.528591, 38.522823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.369156, 41.718784, 38.245087>,  <33.239513, 41.832901, 38.078445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.369156, 41.718784, 38.245087>,  <33.585228, 41.528591, 38.522823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369156, 41.718784, 38.245087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446066, -0.537860, -0.715354,
		-0.713601, -0.696146, 0.078446,
		-0.540184, 0.475485, -0.694345,
		33.207100, 41.861431, 38.036785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143894, 41.007507, 38.131977>,  <33.585228, 41.528591, 38.522823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143894, 41.007507, 38.131977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178787, 41.321655, 37.886837>,  <33.199722, 41.510143, 37.739754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178787, 41.321655, 37.886837>,  <33.143894, 41.007507, 38.131977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178787, 41.321655, 37.886837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370633, -0.596617, -0.711813,
		-0.924673, -0.165047, -0.343130,
		0.087234, 0.785370, -0.612848,
		33.204956, 41.557266, 37.702984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910789, 40.702850, 37.450577>,  <33.143894, 41.007507, 38.131977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910789, 40.702850, 37.450577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115696, 41.037727, 37.373951>,  <33.238640, 41.238651, 37.327976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115696, 41.037727, 37.373951>,  <32.910789, 40.702850, 37.450577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115696, 41.037727, 37.373951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432251, -0.444072, -0.784831,
		-0.742119, 0.319241, -0.589360,
		0.512268, 0.837189, -0.191562,
		33.269375, 41.288883, 37.316483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878540, 40.665199, 36.726425>,  <32.910789, 40.702850, 37.450577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878540, 40.665199, 36.726425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161438, 40.937103, 36.804115>,  <33.331177, 41.100246, 36.850731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161438, 40.937103, 36.804115>,  <32.878540, 40.665199, 36.726425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161438, 40.937103, 36.804115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614843, -0.455815, -0.643584,
		-0.348954, 0.574591, -0.740322,
		0.707248, 0.679763, 0.194224,
		33.373611, 41.141033, 36.862381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268700, 40.779495, 36.100819>,  <32.878540, 40.665199, 36.726425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268700, 40.779495, 36.100819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519455, 40.916328, 36.380817>,  <33.669907, 40.998428, 36.548817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519455, 40.916328, 36.380817>,  <33.268700, 40.779495, 36.100819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519455, 40.916328, 36.380817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774044, -0.375770, -0.509561,
		0.088722, 0.861263, -0.500355,
		0.626885, 0.342087, 0.699994,
		33.707520, 41.018955, 36.590816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786564, 41.150955, 35.699368>,  <33.268700, 40.779495, 36.100819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786564, 41.150955, 35.699368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.933002, 41.070549, 36.062809>,  <34.020866, 41.022305, 36.280876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.933002, 41.070549, 36.062809>,  <33.786564, 41.150955, 35.699368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933002, 41.070549, 36.062809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917201, -0.087014, -0.388807,
		0.157219, 0.975715, 0.152519,
		0.366094, -0.201019, 0.908607,
		34.042831, 41.010242, 36.335392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477047, 41.478580, 35.629860>,  <33.786564, 41.150955, 35.699368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477047, 41.478580, 35.629860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462055, 41.204899, 35.921192>,  <34.453060, 41.040691, 36.095989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462055, 41.204899, 35.921192>,  <34.477047, 41.478580, 35.629860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462055, 41.204899, 35.921192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887692, -0.357502, -0.290164,
		0.458910, 0.635655, 0.620761,
		-0.037479, -0.684204, 0.728328,
		34.450813, 40.999638, 36.139690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981834, 41.563873, 36.005962>,  <34.477047, 41.478580, 35.629860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981834, 41.563873, 36.005962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913422, 41.184059, 36.111141>,  <34.872375, 40.956173, 36.174248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913422, 41.184059, 36.111141>,  <34.981834, 41.563873, 36.005962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913422, 41.184059, 36.111141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980252, -0.190877, -0.051696,
		0.099277, 0.248910, 0.963425,
		-0.171028, -0.949531, 0.262944,
		34.862114, 40.899200, 36.190025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479782, 41.397869, 36.576290>,  <34.981834, 41.563873, 36.005962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479782, 41.397869, 36.576290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349335, 41.063690, 36.399353>,  <35.271069, 40.863182, 36.293190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349335, 41.063690, 36.399353>,  <35.479782, 41.397869, 36.576290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349335, 41.063690, 36.399353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928798, -0.196045, -0.314485,
		0.176017, -0.513408, 0.839899,
		-0.326117, -0.835451, -0.442345,
		35.251499, 40.813053, 36.266651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051125, 40.832996, 36.748272>,  <35.479782, 41.397869, 36.576290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051125, 40.832996, 36.748272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830265, 40.747402, 36.425945>,  <35.697750, 40.696045, 36.232548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830265, 40.747402, 36.425945>,  <36.051125, 40.832996, 36.748272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830265, 40.747402, 36.425945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825452, -0.276289, -0.492232,
		-0.117307, -0.936949, 0.329188,
		-0.552148, -0.213987, -0.805818,
		35.664619, 40.683205, 36.184200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715260, 40.375233, 36.635754>,  <36.051125, 40.832996, 36.748272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715260, 40.375233, 36.635754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099041, 40.268883, 36.673191>,  <37.329311, 40.205074, 36.695652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099041, 40.268883, 36.673191>,  <36.715260, 40.375233, 36.635754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099041, 40.268883, 36.673191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061507, 0.521526, 0.851016,
		-0.275072, -0.810754, 0.516733,
		0.959454, -0.265873, 0.093590,
		37.386879, 40.189121, 36.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857986, 40.036488, 37.378952>,  <36.715260, 40.375233, 36.635754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857986, 40.036488, 37.378952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169327, 40.230934, 37.220020>,  <37.356129, 40.347603, 37.124660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169327, 40.230934, 37.220020>,  <36.857986, 40.036488, 37.378952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169327, 40.230934, 37.220020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154588, 0.464979, 0.871721,
		0.608505, -0.739923, 0.286768,
		0.778347, 0.486116, -0.397325,
		37.402832, 40.376770, 37.100822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463150, 39.972111, 37.873619>,  <36.857986, 40.036488, 37.378952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463150, 39.972111, 37.873619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534096, 40.292721, 37.645199>,  <37.576664, 40.485088, 37.508148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534096, 40.292721, 37.645199>,  <37.463150, 39.972111, 37.873619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534096, 40.292721, 37.645199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125657, 0.593947, 0.794630,
		0.976090, -0.069185, 0.206064,
		0.177368, 0.801524, -0.571052,
		37.587307, 40.533176, 37.473885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891235, 40.371540, 38.301296>,  <37.463150, 39.972111, 37.873619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891235, 40.371540, 38.301296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738747, 40.621269, 38.028564>,  <37.647255, 40.771107, 37.864925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738747, 40.621269, 38.028564>,  <37.891235, 40.371540, 38.301296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738747, 40.621269, 38.028564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199199, 0.664726, 0.720041,
		0.902769, 0.410313, -0.129042,
		-0.381220, 0.624325, -0.681828,
		37.624382, 40.808567, 37.824017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246887, 41.062084, 38.357040>,  <37.891235, 40.371540, 38.301296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246887, 41.062084, 38.357040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896938, 41.127419, 38.174648>,  <37.686970, 41.166618, 38.065212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896938, 41.127419, 38.174648>,  <38.246887, 41.062084, 38.357040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896938, 41.127419, 38.174648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225759, 0.695398, 0.682242,
		0.428522, 0.699817, -0.571511,
		-0.874872, 0.163332, -0.455984,
		37.634476, 41.176418, 38.037853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171291, 41.697704, 38.521122>,  <38.246887, 41.062084, 38.357040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171291, 41.697704, 38.521122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801853, 41.591133, 38.410862>,  <37.580189, 41.527191, 38.344707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.801853, 41.591133, 38.410862>,  <38.171291, 41.697704, 38.521122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801853, 41.591133, 38.410862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377228, 0.759710, 0.529660,
		0.068294, 0.593175, -0.802171,
		-0.923599, -0.266429, -0.275646,
		37.524773, 41.511204, 38.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794361, 42.313332, 38.395744>,  <38.171291, 41.697704, 38.521122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794361, 42.313332, 38.395744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.501476, 42.050251, 38.466503>,  <37.325745, 41.892403, 38.508961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.501476, 42.050251, 38.466503>,  <37.794361, 42.313332, 38.395744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501476, 42.050251, 38.466503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453770, 0.664791, 0.593418,
		-0.507892, 0.354237, -0.785214,
		-0.732214, -0.657699, 0.176900,
		37.281811, 41.852940, 38.519573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186489, 42.678940, 38.339485>,  <37.794361, 42.313332, 38.395744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186489, 42.678940, 38.339485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085358, 42.357685, 38.555279>,  <37.024677, 42.164932, 38.684753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085358, 42.357685, 38.555279>,  <37.186489, 42.678940, 38.339485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085358, 42.357685, 38.555279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570900, 0.574020, 0.587004,
		-0.781122, -0.159581, -0.603641,
		-0.252828, -0.803140, 0.539485,
		37.009510, 42.116741, 38.717125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450520, 42.723648, 38.419075>,  <37.186489, 42.678940, 38.339485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450520, 42.723648, 38.419075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557365, 42.484211, 38.721157>,  <36.621471, 42.340549, 38.902409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557365, 42.484211, 38.721157>,  <36.450520, 42.723648, 38.419075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557365, 42.484211, 38.721157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592129, 0.516337, 0.618692,
		-0.760285, -0.612442, -0.216521,
		0.267115, -0.598591, 0.755208,
		36.637501, 42.304634, 38.947720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834660, 42.665863, 38.784843>,  <36.450520, 42.723648, 38.419075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834660, 42.665863, 38.784843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088123, 42.491005, 39.040150>,  <36.240200, 42.386089, 39.193333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088123, 42.491005, 39.040150>,  <35.834660, 42.665863, 38.784843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088123, 42.491005, 39.040150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478243, 0.427154, 0.767348,
		-0.608081, -0.791481, 0.061607,
		0.633657, -0.437147, 0.638264,
		36.278221, 42.359859, 39.231628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503307, 42.323437, 39.386528>,  <35.834660, 42.665863, 38.784843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503307, 42.323437, 39.386528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872940, 42.415409, 39.508652>,  <36.094719, 42.470592, 39.581924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872940, 42.415409, 39.508652>,  <35.503307, 42.323437, 39.386528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872940, 42.415409, 39.508652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375619, 0.693966, 0.614266,
		-0.070637, -0.682309, 0.727643,
		0.924079, 0.229926, 0.305308,
		36.150162, 42.484386, 39.600243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538242, 42.189568, 40.138775>,  <35.503307, 42.323437, 39.386528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538242, 42.189568, 40.138775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829464, 42.454372, 40.067581>,  <36.004196, 42.613255, 40.024864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829464, 42.454372, 40.067581>,  <35.538242, 42.189568, 40.138775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829464, 42.454372, 40.067581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427083, 0.641123, 0.637622,
		0.536222, -0.388210, 0.749506,
		0.728057, 0.662008, -0.177986,
		36.047882, 42.652973, 40.014187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877693, 42.296436, 40.842194>,  <35.538242, 42.189568, 40.138775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877693, 42.296436, 40.842194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927006, 42.592819, 40.578140>,  <35.956593, 42.770649, 40.419708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927006, 42.592819, 40.578140>,  <35.877693, 42.296436, 40.842194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927006, 42.592819, 40.578140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424057, 0.640750, 0.640011,
		0.897205, 0.201034, 0.393202,
		0.123280, 0.740962, -0.660135,
		35.963989, 42.815109, 40.380100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701935, 42.750896, 41.265198>,  <35.877693, 42.296436, 40.842194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701935, 42.750896, 41.265198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727531, 42.932438, 40.909687>,  <35.742889, 43.041363, 40.696381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727531, 42.932438, 40.909687>,  <35.701935, 42.750896, 41.265198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727531, 42.932438, 40.909687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585872, 0.738057, 0.334701,
		0.807873, 0.499290, 0.313131,
		0.063996, 0.453851, -0.888777,
		35.746731, 43.068592, 40.643055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983551, 43.445721, 41.332954>,  <35.701935, 42.750896, 41.265198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983551, 43.445721, 41.332954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788731, 43.442978, 40.983616>,  <35.671837, 43.441334, 40.774014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788731, 43.442978, 40.983616>,  <35.983551, 43.445721, 41.332954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788731, 43.442978, 40.983616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569115, 0.761006, 0.311413,
		0.662488, 0.648708, -0.374549,
		-0.487050, -0.006854, -0.873347,
		35.642616, 43.440922, 40.721611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990742, 44.128242, 40.946884>,  <35.983551, 43.445721, 41.332954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990742, 44.128242, 40.946884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664268, 43.935341, 40.819584>,  <35.468384, 43.819599, 40.743206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664268, 43.935341, 40.819584>,  <35.990742, 44.128242, 40.946884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664268, 43.935341, 40.819584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555784, 0.805853, 0.204218,
		0.157977, 0.343556, -0.925750,
		-0.816179, -0.482255, -0.318249,
		35.419415, 43.790665, 40.724110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626350, 44.644455, 40.563015>,  <35.990742, 44.128242, 40.946884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626350, 44.644455, 40.563015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358627, 44.369255, 40.675220>,  <35.197994, 44.204136, 40.742542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358627, 44.369255, 40.675220>,  <35.626350, 44.644455, 40.563015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358627, 44.369255, 40.675220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526920, 0.705713, 0.473629,
		-0.523819, 0.169194, -0.834858,
		-0.669305, -0.687999, 0.280515,
		35.157837, 44.162857, 40.759377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045708, 45.052181, 40.673435>,  <35.626350, 44.644455, 40.563015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045708, 45.052181, 40.673435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990875, 44.706951, 40.867878>,  <34.957973, 44.499813, 40.984543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990875, 44.706951, 40.867878>,  <35.045708, 45.052181, 40.673435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990875, 44.706951, 40.867878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549415, 0.474586, 0.687685,
		-0.824228, -0.172805, -0.539247,
		-0.137083, -0.863079, 0.486109,
		34.949749, 44.448029, 41.013710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.296814, 45.058346, 40.813725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454208, 44.765053, 41.035553>,  <34.548645, 44.589077, 41.168648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454208, 44.765053, 41.035553>,  <34.296814, 45.058346, 40.813725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454208, 44.765053, 41.035553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494636, 0.339621, 0.799995,
		-0.774924, -0.589092, -0.229048,
		0.393481, -0.733231, 0.554567,
		34.572254, 44.545082, 41.201923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772568, 44.809330, 41.105350>,  <34.296814, 45.058346, 40.813725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772568, 44.809330, 41.105350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062851, 44.678371, 41.347393>,  <34.237022, 44.599796, 41.492619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062851, 44.678371, 41.347393>,  <33.772568, 44.809330, 41.105350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062851, 44.678371, 41.347393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584608, 0.170273, 0.793247,
		-0.362738, -0.929419, -0.067828,
		0.725710, -0.327394, 0.605111,
		34.280563, 44.580154, 41.528927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371418, 44.462025, 41.589321>,  <33.772568, 44.809330, 41.105350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371418, 44.462025, 41.589321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733864, 44.522846, 41.747223>,  <33.951332, 44.559338, 41.841965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733864, 44.522846, 41.747223>,  <33.371418, 44.462025, 41.589321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733864, 44.522846, 41.747223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402526, 0.022942, 0.915121,
		0.130096, -0.988105, 0.081996,
		0.906117, 0.152059, 0.394754,
		34.005699, 44.568462, 41.865650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563839, 43.924370, 42.053928>,  <33.371418, 44.462025, 41.589321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563839, 43.924370, 42.053928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718147, 44.279076, 42.155777>,  <33.810734, 44.491898, 42.216885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718147, 44.279076, 42.155777>,  <33.563839, 43.924370, 42.053928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718147, 44.279076, 42.155777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456683, -0.056259, 0.887849,
		0.801635, -0.458789, 0.383266,
		0.385773, 0.886762, 0.254620,
		33.833878, 44.545105, 42.232162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840248, 43.846420, 42.669136>,  <33.563839, 43.924370, 42.053928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840248, 43.846420, 42.669136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783916, 44.242401, 42.664070>,  <33.750118, 44.479988, 42.661030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783916, 44.242401, 42.664070>,  <33.840248, 43.846420, 42.669136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783916, 44.242401, 42.664070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361734, -0.039541, 0.931443,
		0.921584, 0.135752, 0.363668,
		-0.140825, 0.989954, -0.012666,
		33.741669, 44.539387, 42.660271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876808, 43.940346, 43.404285>,  <33.840248, 43.846420, 42.669136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876808, 43.940346, 43.404285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771366, 44.295879, 43.254356>,  <33.708103, 44.509197, 43.164398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771366, 44.295879, 43.254356>,  <33.876808, 43.940346, 43.404285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771366, 44.295879, 43.254356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290795, 0.297268, 0.909433,
		0.919756, 0.348725, 0.180107,
		-0.263602, 0.888832, -0.374822,
		33.692284, 44.562531, 43.141911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161888, 44.512753, 43.791965>,  <33.876808, 43.940346, 43.404285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161888, 44.512753, 43.791965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848289, 44.679939, 43.608379>,  <33.660130, 44.780251, 43.498226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848289, 44.679939, 43.608379>,  <34.161888, 44.512753, 43.791965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848289, 44.679939, 43.608379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349779, 0.313367, 0.882868,
		0.512835, 0.852704, -0.099483,
		-0.783999, 0.417968, -0.458964,
		33.613091, 44.805328, 43.470692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267220, 45.211983, 44.007202>,  <34.161888, 44.512753, 43.791965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267220, 45.211983, 44.007202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886559, 45.158073, 43.896793>,  <33.658161, 45.125729, 43.830547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886559, 45.158073, 43.896793>,  <34.267220, 45.211983, 44.007202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886559, 45.158073, 43.896793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303094, 0.557875, 0.772599,
		0.049863, 0.818909, -0.571754,
		-0.951655, -0.134772, -0.276024,
		33.601063, 45.117641, 43.813988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020149, 45.851379, 44.075043>,  <34.267220, 45.211983, 44.007202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020149, 45.851379, 44.075043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696140, 45.616917, 44.081738>,  <33.501736, 45.476238, 44.085754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696140, 45.616917, 44.081738>,  <34.020149, 45.851379, 44.075043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696140, 45.616917, 44.081738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383614, 0.551271, 0.740906,
		-0.443515, 0.593730, -0.671401,
		-0.810022, -0.586161, 0.016734,
		33.453133, 45.441067, 44.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359863, 46.374031, 44.160946>,  <34.020149, 45.851379, 44.075043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359863, 46.374031, 44.160946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230442, 46.012135, 44.271770>,  <33.152790, 45.794998, 44.338264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230442, 46.012135, 44.271770>,  <33.359863, 46.374031, 44.160946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230442, 46.012135, 44.271770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520317, 0.414690, 0.746527,
		-0.790307, 0.097378, -0.604924,
		-0.323551, -0.904737, 0.277064,
		33.133377, 45.740715, 44.354889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661507, 46.502499, 44.302593>,  <33.359863, 46.374031, 44.160946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661507, 46.502499, 44.302593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755589, 46.165722, 44.496838>,  <32.812038, 45.963657, 44.613384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755589, 46.165722, 44.496838>,  <32.661507, 46.502499, 44.302593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755589, 46.165722, 44.496838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433450, 0.356331, 0.827737,
		-0.869943, -0.405172, -0.281130,
		0.235201, -0.841940, 0.485610,
		32.826149, 45.913139, 44.642521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055313, 46.372425, 44.695469>,  <32.661507, 46.502499, 44.302593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055313, 46.372425, 44.695469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309975, 46.115780, 44.866585>,  <32.462772, 45.961792, 44.969254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309975, 46.115780, 44.866585>,  <32.055313, 46.372425, 44.695469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309975, 46.115780, 44.866585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403170, 0.195953, 0.893899,
		-0.657364, -0.741578, -0.133924,
		0.636653, -0.641611, 0.427794,
		32.500969, 45.923298, 44.994923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713781, 46.146774, 45.330318>,  <32.055313, 46.372425, 44.695469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713781, 46.146774, 45.330318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100857, 46.060280, 45.382198>,  <32.333103, 46.008381, 45.413326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100857, 46.060280, 45.382198>,  <31.713781, 46.146774, 45.330318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100857, 46.060280, 45.382198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103331, 0.129133, 0.986229,
		-0.230011, -0.967763, 0.102616,
		0.967687, -0.216240, 0.129702,
		32.391163, 45.995407, 45.421108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814291, 45.614162, 45.971279>,  <31.713781, 46.146774, 45.330318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814291, 45.614162, 45.971279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.168793, 45.794739, 45.929813>,  <32.381493, 45.903084, 45.904934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.168793, 45.794739, 45.929813>,  <31.814291, 45.614162, 45.971279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168793, 45.794739, 45.929813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061433, 0.107262, 0.992331,
		0.459103, -0.885828, 0.067328,
		0.886256, 0.451446, -0.103663,
		32.434669, 45.930172, 45.898716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275177, 45.225956, 46.347050>,  <31.814291, 45.614162, 45.971279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275177, 45.225956, 46.347050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456802, 45.580650, 46.312355>,  <32.565777, 45.793468, 46.291538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.456802, 45.580650, 46.312355>,  <32.275177, 45.225956, 46.347050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456802, 45.580650, 46.312355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081031, 0.055849, 0.995146,
		0.887275, -0.458891, -0.046494,
		0.454067, 0.886736, -0.086738,
		32.593021, 45.846672, 46.286335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601284, 45.224293, 46.962452>,  <32.275177, 45.225956, 46.347050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601284, 45.224293, 46.962452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.636890, 45.606754, 46.850853>,  <32.658253, 45.836231, 46.783894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.636890, 45.606754, 46.850853>,  <32.601284, 45.224293, 46.962452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636890, 45.606754, 46.850853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162592, 0.262404, 0.951161,
		0.982670, -0.130032, -0.132105,
		0.089017, 0.956157, -0.278999,
		32.663597, 45.893600, 46.767155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283699, 45.460915, 47.230595>,  <32.601284, 45.224293, 46.962452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283699, 45.460915, 47.230595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.031315, 45.768749, 47.191349>,  <32.879887, 45.953449, 47.167801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.031315, 45.768749, 47.191349>,  <33.283699, 45.460915, 47.230595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031315, 45.768749, 47.191349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217307, 0.296720, 0.929911,
		0.744763, 0.565412, -0.354454,
		-0.630956, 0.769589, -0.098118,
		32.842030, 45.999626, 47.161915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623421, 46.097530, 47.474602>,  <33.283699, 45.460915, 47.230595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623421, 46.097530, 47.474602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231766, 46.171230, 47.508858>,  <32.996773, 46.215450, 47.529411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231766, 46.171230, 47.508858>,  <33.623421, 46.097530, 47.474602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231766, 46.171230, 47.508858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123742, 0.206436, 0.970604,
		0.161156, 0.960956, -0.224930,
		-0.979141, 0.184252, 0.085642,
		32.938023, 46.226505, 47.534550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664398, 46.334770, 48.120659>,  <33.623421, 46.097530, 47.474602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664398, 46.334770, 48.120659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.275963, 46.274059, 48.046947>,  <33.042904, 46.237633, 48.002720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.275963, 46.274059, 48.046947>,  <33.664398, 46.334770, 48.120659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275963, 46.274059, 48.046947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193242, 0.046499, 0.980048,
		-0.140178, 0.987321, -0.074484,
		-0.971086, -0.151775, -0.184274,
		32.984638, 46.228527, 47.991665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218449, 46.968700, 48.468559>,  <33.664398, 46.334770, 48.120659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218449, 46.968700, 48.468559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964077, 46.660500, 48.451012>,  <32.811455, 46.475578, 48.440483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964077, 46.660500, 48.451012>,  <33.218449, 46.968700, 48.468559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964077, 46.660500, 48.451012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034227, -0.028628, 0.999004,
		-0.770986, 0.636800, -0.008166,
		-0.635932, -0.770498, -0.043867,
		32.773296, 46.429352, 48.437851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811451, 47.016781, 49.020355>,  <33.218449, 46.968700, 48.468559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811451, 47.016781, 49.020355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710190, 46.652298, 48.890362>,  <32.649433, 46.433609, 48.812366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710190, 46.652298, 48.890362>,  <32.811451, 47.016781, 49.020355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710190, 46.652298, 48.890362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015135, -0.339617, 0.940442,
		-0.967308, 0.233155, 0.099765,
		-0.253151, -0.911207, -0.324986,
		32.634243, 46.378937, 48.792866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145103, 46.774929, 49.376362>,  <32.811451, 47.016781, 49.020355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145103, 46.774929, 49.376362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347485, 46.455200, 49.246681>,  <32.468914, 46.263363, 49.168873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347485, 46.455200, 49.246681>,  <32.145103, 46.774929, 49.376362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347485, 46.455200, 49.246681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023565, -0.362905, 0.931528,
		-0.862241, -0.478946, -0.164775,
		0.505949, -0.799319, -0.324198,
		32.499271, 46.215405, 49.149422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963728, 46.093246, 49.745861>,  <32.145103, 46.774929, 49.376362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963728, 46.093246, 49.745861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341427, 46.078659, 49.614975>,  <32.568047, 46.069908, 49.536446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341427, 46.078659, 49.614975>,  <31.963728, 46.093246, 49.745861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341427, 46.078659, 49.614975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326486, -0.024516, 0.944884,
		-0.042485, -0.999034, -0.011241,
		0.944247, -0.036474, -0.327213,
		32.624702, 46.067719, 49.516811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586760, 45.467087, 49.546597>,  <31.963728, 46.093246, 49.745861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586760, 45.467087, 49.546597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495953, 45.142647, 49.762218>,  <31.441467, 44.947983, 49.891590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495953, 45.142647, 49.762218>,  <31.586760, 45.467087, 49.546597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495953, 45.142647, 49.762218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395148, -0.429185, -0.812194,
		0.890124, -0.397390, -0.223071,
		-0.227019, -0.811099, 0.539056,
		31.427847, 44.899319, 49.923935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919922, 44.864185, 49.275356>,  <31.586760, 45.467087, 49.546597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919922, 44.864185, 49.275356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.570669, 44.789841, 49.455624>,  <31.361118, 44.745235, 49.563782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.570669, 44.789841, 49.455624>,  <31.919922, 44.864185, 49.275356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570669, 44.789841, 49.455624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379819, -0.320138, -0.867900,
		0.305582, -0.928961, 0.208929,
		-0.873131, -0.185860, 0.450665,
		31.308729, 44.734081, 49.590824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652203, 44.163765, 49.095581>,  <31.919922, 44.864185, 49.275356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652203, 44.163765, 49.095581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331657, 44.367043, 49.221790>,  <31.139330, 44.489010, 49.297516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331657, 44.367043, 49.221790>,  <31.652203, 44.163765, 49.095581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331657, 44.367043, 49.221790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475485, -0.221114, -0.851483,
		-0.362951, -0.832374, 0.418831,
		-0.801362, 0.508194, 0.315528,
		31.091249, 44.519501, 49.316448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084574, 43.628391, 49.028381>,  <31.652203, 44.163765, 49.095581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084574, 43.628391, 49.028381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955011, 44.006729, 49.019848>,  <30.877274, 44.233734, 49.014729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955011, 44.006729, 49.019848>,  <31.084574, 43.628391, 49.028381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955011, 44.006729, 49.019848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413716, -0.161884, -0.895898,
		-0.850836, -0.281363, 0.443748,
		-0.323908, 0.945848, -0.021332,
		30.857840, 44.290485, 49.013447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450897, 43.556366, 48.733925>,  <31.084574, 43.628391, 49.028381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450897, 43.556366, 48.733925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556747, 43.937481, 48.674374>,  <30.620258, 44.166149, 48.638641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556747, 43.937481, 48.674374>,  <30.450897, 43.556366, 48.733925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556747, 43.937481, 48.674374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386564, -0.036635, -0.921535,
		-0.883482, 0.301416, 0.358619,
		0.264628, 0.952789, -0.148883,
		30.636135, 44.223316, 48.629707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972759, 43.729115, 48.216740>,  <30.450897, 43.556366, 48.733925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972759, 43.729115, 48.216740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218513, 44.044033, 48.237480>,  <30.365967, 44.232986, 48.249924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218513, 44.044033, 48.237480>,  <29.972759, 43.729115, 48.216740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218513, 44.044033, 48.237480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294482, 0.289785, -0.910662,
		-0.731991, 0.544227, 0.409885,
		0.614385, 0.787300, 0.051855,
		30.402828, 44.280224, 48.253036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568882, 44.334839, 47.957451>,  <29.972759, 43.729115, 48.216740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568882, 44.334839, 47.957451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961309, 44.405945, 47.926720>,  <30.196766, 44.448608, 47.908283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961309, 44.405945, 47.926720>,  <29.568882, 44.334839, 47.957451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961309, 44.405945, 47.926720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118478, 0.237157, -0.964220,
		-0.153189, 0.955068, 0.253729,
		0.981069, 0.177769, -0.076824,
		30.255630, 44.459274, 47.903671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629641, 44.927055, 47.421047>,  <29.568882, 44.334839, 47.957451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629641, 44.927055, 47.421047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995649, 44.766621, 47.438347>,  <30.215254, 44.670361, 47.448727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995649, 44.766621, 47.438347>,  <29.629641, 44.927055, 47.421047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995649, 44.766621, 47.438347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181935, 0.314615, -0.931621,
		0.360052, 0.860319, 0.360850,
		0.915020, -0.401083, 0.043244,
		30.270155, 44.646297, 47.451321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989595, 45.356144, 47.045570>,  <29.629641, 44.927055, 47.421047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989595, 45.356144, 47.045570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.207607, 45.020813, 47.050533>,  <30.338415, 44.819614, 47.053513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.207607, 45.020813, 47.050533>,  <29.989595, 45.356144, 47.045570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207607, 45.020813, 47.050533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246287, 0.145942, -0.958146,
		0.801427, 0.525273, 0.286011,
		0.545030, -0.838325, 0.012407,
		30.371117, 44.769314, 47.054256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570210, 45.496670, 46.738613>,  <29.989595, 45.356144, 47.045570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570210, 45.496670, 46.738613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.575487, 45.097218, 46.718384>,  <30.578653, 44.857544, 46.706245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.575487, 45.097218, 46.718384>,  <30.570210, 45.496670, 46.738613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575487, 45.097218, 46.718384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316489, 0.052150, -0.947161,
		0.948504, -0.003509, 0.316745,
		0.013194, -0.998633, -0.050575,
		30.579445, 44.797626, 46.703213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150770, 45.291828, 46.459702>,  <30.570210, 45.496670, 46.738613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150770, 45.291828, 46.459702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910490, 44.983452, 46.375031>,  <30.766323, 44.798424, 46.324226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910490, 44.983452, 46.375031>,  <31.150770, 45.291828, 46.459702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910490, 44.983452, 46.375031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247388, 0.072530, -0.966198,
		0.760237, -0.632761, 0.147153,
		-0.600699, -0.770943, -0.211677,
		30.730280, 44.752171, 46.311527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497276, 44.790634, 46.038906>,  <31.150770, 45.291828, 46.459702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497276, 44.790634, 46.038906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112564, 44.715164, 45.959534>,  <30.881737, 44.669884, 45.911911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112564, 44.715164, 45.959534>,  <31.497276, 44.790634, 46.038906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112564, 44.715164, 45.959534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203344, -0.006835, -0.979083,
		0.183374, -0.982015, 0.044940,
		-0.961782, -0.188677, -0.198434,
		30.824030, 44.658562, 45.900005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499193, 44.172161, 45.649265>,  <31.497276, 44.790634, 46.038906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499193, 44.172161, 45.649265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153374, 44.350956, 45.557384>,  <30.945883, 44.458233, 45.502254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153374, 44.350956, 45.557384>,  <31.499193, 44.172161, 45.649265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153374, 44.350956, 45.557384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139287, -0.226040, -0.964108,
		-0.482862, -0.865512, 0.133163,
		-0.864548, 0.446983, -0.229701,
		30.894009, 44.485050, 45.488476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266762, 43.816166, 45.077713>,  <31.499193, 44.172161, 45.649265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266762, 43.816166, 45.077713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033033, 44.136955, 45.028061>,  <30.892796, 44.329430, 44.998268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033033, 44.136955, 45.028061>,  <31.266762, 43.816166, 45.077713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033033, 44.136955, 45.028061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107698, -0.228240, -0.967630,
		-0.804344, -0.552039, 0.219737,
		-0.584322, 0.801972, -0.124130,
		30.857737, 44.377548, 44.990822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766287, 43.580307, 44.622147>,  <31.266762, 43.816166, 45.077713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766287, 43.580307, 44.622147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766928, 43.976978, 44.570644>,  <30.767313, 44.214981, 44.539745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766928, 43.976978, 44.570644>,  <30.766287, 43.580307, 44.622147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766928, 43.976978, 44.570644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053587, -0.128653, -0.990241,
		-0.998562, -0.005311, -0.053348,
		0.001604, 0.991676, -0.128752,
		30.767408, 44.274483, 44.532017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386122, 43.674561, 44.040226>,  <30.766287, 43.580307, 44.622147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386122, 43.674561, 44.040226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582066, 44.023209, 44.047333>,  <30.699633, 44.232399, 44.051598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582066, 44.023209, 44.047333>,  <30.386122, 43.674561, 44.040226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582066, 44.023209, 44.047333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074301, 0.062045, -0.995304,
		-0.868629, 0.486240, 0.095156,
		0.489860, 0.871620, 0.017766,
		30.729023, 44.284695, 44.052662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035013, 44.064411, 43.571095>,  <30.386122, 43.674561, 44.040226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035013, 44.064411, 43.571095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369055, 44.278408, 43.622292>,  <30.569481, 44.406807, 43.653011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369055, 44.278408, 43.622292>,  <30.035013, 44.064411, 43.571095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369055, 44.278408, 43.622292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041056, 0.292648, -0.955339,
		-0.548555, 0.792553, 0.266356,
		0.835106, 0.534992, 0.127994,
		30.619587, 44.438904, 43.660690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881283, 44.815681, 43.404213>,  <30.035013, 44.064411, 43.571095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881283, 44.815681, 43.404213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264374, 44.714260, 43.349857>,  <30.494228, 44.653408, 43.317245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264374, 44.714260, 43.349857>,  <29.881283, 44.815681, 43.404213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264374, 44.714260, 43.349857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113736, 0.100137, -0.988452,
		0.264232, 0.962125, 0.067066,
		0.957730, -0.253552, -0.135887,
		30.551693, 44.638195, 43.309090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147142, 45.273033, 42.874512>,  <29.881283, 44.815681, 43.404213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147142, 45.273033, 42.874512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455952, 45.018799, 42.875729>,  <30.641237, 44.866257, 42.876457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455952, 45.018799, 42.875729>,  <30.147142, 45.273033, 42.874512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455952, 45.018799, 42.875729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015943, 0.014578, -0.999767,
		0.635396, 0.771890, 0.021387,
		0.772022, -0.635589, 0.003043,
		30.687557, 44.828121, 42.876640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741297, 45.575550, 42.485043>,  <30.147142, 45.273033, 42.874512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741297, 45.575550, 42.485043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771769, 45.176807, 42.493732>,  <30.790052, 44.937561, 42.498947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771769, 45.176807, 42.493732>,  <30.741297, 45.575550, 42.485043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771769, 45.176807, 42.493732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223990, -0.004123, -0.974583,
		0.971609, 0.079110, 0.222972,
		0.076180, -0.996857, 0.021726,
		30.794622, 44.877750, 42.500252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306253, 45.433155, 42.034431>,  <30.741297, 45.575550, 42.485043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306253, 45.433155, 42.034431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.089979, 45.096672, 42.036228>,  <30.960215, 44.894783, 42.037308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.089979, 45.096672, 42.036228>,  <31.306253, 45.433155, 42.034431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089979, 45.096672, 42.036228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205060, -0.136979, -0.969117,
		0.815848, -0.523068, 0.246562,
		-0.540687, -0.841212, 0.004493,
		30.927773, 44.844307, 42.037575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.245720, 36.439545, 45.060730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892166, 36.616882, 45.120319>,  <43.680035, 36.723286, 45.156071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892166, 36.616882, 45.120319>,  <44.245720, 36.439545, 45.060730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892166, 36.616882, 45.120319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166652, -0.000932, -0.986015,
		-0.437008, -0.896350, 0.074708,
		-0.883884, 0.443347, 0.148971,
		43.626999, 36.749886, 45.165012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613186, 36.019650, 44.869785>,  <44.245720, 36.439545, 45.060730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613186, 36.019650, 44.869785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591385, 36.411617, 44.793064>,  <43.578304, 36.646797, 44.747032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591385, 36.411617, 44.793064>,  <43.613186, 36.019650, 44.869785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591385, 36.411617, 44.793064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147646, -0.197884, -0.969042,
		-0.987538, -0.024495, 0.155466,
		-0.054501, 0.979920, -0.191801,
		43.575035, 36.705593, 44.735523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254539, 36.025322, 44.319088>,  <43.613186, 36.019650, 44.869785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254539, 36.025322, 44.319088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371380, 36.407036, 44.293751>,  <43.441486, 36.636066, 44.278549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371380, 36.407036, 44.293751>,  <43.254539, 36.025322, 44.319088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371380, 36.407036, 44.293751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216312, 0.001411, -0.976323,
		-0.931603, 0.298890, 0.206836,
		0.292105, 0.954287, -0.063339,
		43.459011, 36.693321, 44.274750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657139, 36.433178, 44.088928>,  <43.254539, 36.025322, 44.319088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657139, 36.433178, 44.088928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991180, 36.635895, 44.003357>,  <43.191605, 36.757523, 43.952015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991180, 36.635895, 44.003357>,  <42.657139, 36.433178, 44.088928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991180, 36.635895, 44.003357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306365, 0.105486, -0.946051,
		-0.456881, 0.855592, 0.243354,
		0.835105, 0.506788, -0.213929,
		43.241711, 36.787930, 43.939178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451633, 36.832443, 43.597214>,  <42.657139, 36.433178, 44.088928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451633, 36.832443, 43.597214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850136, 36.857243, 43.573105>,  <43.089237, 36.872120, 43.558640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850136, 36.857243, 43.573105>,  <42.451633, 36.832443, 43.597214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850136, 36.857243, 43.573105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066031, 0.095399, -0.993247,
		-0.055826, 0.993507, 0.099136,
		0.996255, 0.061995, -0.060277,
		43.149014, 36.875839, 43.555023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526100, 37.351162, 43.067307>,  <42.451633, 36.832443, 43.597214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526100, 37.351162, 43.067307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892239, 37.195038, 43.106899>,  <43.111923, 37.101364, 43.130657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892239, 37.195038, 43.106899>,  <42.526100, 37.351162, 43.067307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892239, 37.195038, 43.106899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123978, 0.039302, -0.991506,
		0.383101, 0.919846, 0.084365,
		0.915349, -0.390306, 0.098984,
		43.166843, 37.077946, 43.136593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929962, 37.878128, 42.831333>,  <42.526100, 37.351162, 43.067307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929962, 37.878128, 42.831333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084164, 37.509800, 42.807743>,  <43.176685, 37.288803, 42.793591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084164, 37.509800, 42.807743>,  <42.929962, 37.878128, 42.831333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084164, 37.509800, 42.807743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118025, 0.014179, -0.992909,
		0.915127, 0.389731, -0.103214,
		0.385504, -0.920820, -0.058973,
		43.199814, 37.233555, 42.790051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399529, 37.964996, 42.233047>,  <42.929962, 37.878128, 42.831333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399529, 37.964996, 42.233047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.385342, 37.567764, 42.277821>,  <43.376827, 37.329426, 42.304684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.385342, 37.567764, 42.277821>,  <43.399529, 37.964996, 42.233047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385342, 37.567764, 42.277821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024814, -0.111091, -0.993500,
		0.999063, -0.038018, -0.020701,
		-0.035471, -0.993083, 0.111930,
		43.374699, 37.269840, 42.311401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817581, 37.843513, 41.798294>,  <43.399529, 37.964996, 42.233047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817581, 37.843513, 41.798294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583450, 37.520264, 41.824585>,  <43.442970, 37.326313, 41.840359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583450, 37.520264, 41.824585>,  <43.817581, 37.843513, 41.798294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583450, 37.520264, 41.824585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005027, -0.084686, -0.996395,
		0.810781, -0.582888, 0.053632,
		-0.585329, -0.808128, 0.065731,
		43.407852, 37.277824, 41.844303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072929, 37.369247, 41.344765>,  <43.817581, 37.843513, 41.798294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072929, 37.369247, 41.344765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692715, 37.252731, 41.387917>,  <43.464588, 37.182823, 41.413807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692715, 37.252731, 41.387917>,  <44.072929, 37.369247, 41.344765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692715, 37.252731, 41.387917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097777, -0.049082, -0.993997,
		0.294834, -0.955376, 0.018173,
		-0.950533, -0.291287, 0.107884,
		43.407555, 37.165344, 41.420280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033710, 36.663246, 40.911854>,  <44.072929, 37.369247, 41.344765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033710, 36.663246, 40.911854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667461, 36.809166, 40.979450>,  <43.447712, 36.896717, 41.020008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667461, 36.809166, 40.979450>,  <44.033710, 36.663246, 40.911854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667461, 36.809166, 40.979450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224477, -0.115158, -0.967651,
		-0.333537, -0.923938, 0.187329,
		-0.915622, 0.364798, 0.168993,
		43.392776, 36.918606, 41.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676563, 36.107403, 40.706493>,  <44.033710, 36.663246, 40.911854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676563, 36.107403, 40.706493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445141, 36.432590, 40.680103>,  <43.306286, 36.627705, 40.664268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445141, 36.432590, 40.680103>,  <43.676563, 36.107403, 40.706493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445141, 36.432590, 40.680103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077637, -0.135411, -0.987743,
		-0.811938, -0.566344, 0.141459,
		-0.578557, 0.812969, -0.065976,
		43.271572, 36.676479, 40.660309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126881, 35.991482, 40.206127>,  <43.676563, 36.107403, 40.706493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126881, 35.991482, 40.206127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168167, 36.388012, 40.238674>,  <43.192940, 36.625931, 40.258202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168167, 36.388012, 40.238674>,  <43.126881, 35.991482, 40.206127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168167, 36.388012, 40.238674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097402, 0.091489, -0.991031,
		-0.989878, 0.094365, 0.106000,
		0.103216, 0.991325, 0.081372,
		43.199131, 36.685410, 40.263084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640133, 36.365360, 39.679134>,  <43.126881, 35.991482, 40.206127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640133, 36.365360, 39.679134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862823, 36.683075, 39.776424>,  <42.996437, 36.873703, 39.834797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862823, 36.683075, 39.776424>,  <42.640133, 36.365360, 39.679134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862823, 36.683075, 39.776424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021280, 0.306339, -0.951685,
		-0.830422, 0.524654, 0.187450,
		0.556729, 0.794289, 0.243226,
		43.029842, 36.921360, 39.849392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391476, 36.909538, 39.247585>,  <42.640133, 36.365360, 39.679134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391476, 36.909538, 39.247585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742416, 37.057533, 39.369812>,  <42.952980, 37.146328, 39.443150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742416, 37.057533, 39.369812>,  <42.391476, 36.909538, 39.247585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742416, 37.057533, 39.369812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142217, 0.407693, -0.901976,
		-0.458294, 0.834804, 0.305071,
		0.877349, 0.369984, 0.305567,
		43.005623, 37.168530, 39.461483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454914, 37.567894, 39.021221>,  <42.391476, 36.909538, 39.247585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454914, 37.567894, 39.021221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836025, 37.465282, 39.086220>,  <43.064693, 37.403717, 39.125221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836025, 37.465282, 39.086220>,  <42.454914, 37.567894, 39.021221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836025, 37.465282, 39.086220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231115, 0.265465, -0.936010,
		0.196974, 0.929366, 0.312217,
		0.952779, -0.256528, 0.162500,
		43.121861, 37.388325, 39.134972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852909, 38.098469, 38.722775>,  <42.454914, 37.567894, 39.021221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852909, 38.098469, 38.722775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126530, 37.808285, 38.753181>,  <43.290703, 37.634174, 38.771427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126530, 37.808285, 38.753181>,  <42.852909, 38.098469, 38.722775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126530, 37.808285, 38.753181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217494, 0.103372, -0.970572,
		0.696257, 0.680452, 0.228496,
		0.684048, -0.725465, 0.076021,
		43.331745, 37.590645, 38.775990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459656, 38.287403, 38.334175>,  <42.852909, 38.098469, 38.722775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459656, 38.287403, 38.334175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511909, 37.891487, 38.356987>,  <43.543262, 37.653938, 38.370674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511909, 37.891487, 38.356987>,  <43.459656, 38.287403, 38.334175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511909, 37.891487, 38.356987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221781, -0.026887, -0.974726,
		0.966306, 0.139981, 0.216004,
		0.130635, -0.989789, 0.057026,
		43.551102, 37.594551, 38.374096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034447, 38.099422, 38.089493>,  <43.459656, 38.287403, 38.334175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034447, 38.099422, 38.089493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800106, 37.776512, 38.060966>,  <43.659500, 37.582767, 38.043850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800106, 37.776512, 38.060966>,  <44.034447, 38.099422, 38.089493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800106, 37.776512, 38.060966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146973, -0.019291, -0.988952,
		0.796978, -0.589864, 0.129949,
		-0.585855, -0.807272, -0.071319,
		43.624352, 37.534332, 38.039570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313515, 37.799335, 37.546116>,  <44.034447, 38.099422, 38.089493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313515, 37.799335, 37.546116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955837, 37.622452, 37.574017>,  <43.741230, 37.516323, 37.590755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955837, 37.622452, 37.574017>,  <44.313515, 37.799335, 37.546116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955837, 37.622452, 37.574017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061120, -0.274938, -0.959517,
		0.443481, -0.853735, 0.272876,
		-0.894197, -0.442206, 0.069749,
		43.687576, 37.489792, 37.594940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423466, 37.221497, 37.155582>,  <44.313515, 37.799335, 37.546116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423466, 37.221497, 37.155582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026089, 37.263493, 37.173710>,  <43.787663, 37.288689, 37.184586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026089, 37.263493, 37.173710>,  <44.423466, 37.221497, 37.155582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026089, 37.263493, 37.173710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076947, -0.320626, -0.944075,
		-0.084588, -0.941369, 0.326602,
		-0.993441, 0.104989, 0.045314,
		43.728058, 37.294991, 37.187305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154865, 37.006279, 37.124611>,  <44.423466, 37.221497, 37.155582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154865, 37.006279, 37.124611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463650, 36.781639, 37.005497>,  <45.648922, 36.646854, 36.934029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463650, 36.781639, 37.005497>,  <45.154865, 37.006279, 37.124611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463650, 36.781639, 37.005497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369673, -0.777724, 0.508416,
		-0.517121, -0.282396, -0.807984,
		0.771963, -0.561603, -0.297783,
		45.695240, 36.613159, 36.916161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907619, 36.389729, 36.894886>,  <45.154865, 37.006279, 37.124611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907619, 36.389729, 36.894886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282307, 36.290565, 36.993763>,  <45.507118, 36.231068, 37.053089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282307, 36.290565, 36.993763>,  <44.907619, 36.389729, 36.894886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282307, 36.290565, 36.993763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348679, -0.723949, 0.595249,
		0.031389, -0.643771, -0.764574,
		0.936717, -0.247906, 0.247193,
		45.563320, 36.216194, 37.067921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175716, 35.761181, 36.627483>,  <44.907619, 36.389729, 36.894886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175716, 35.761181, 36.627483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380779, 35.810471, 36.967365>,  <45.503815, 35.840046, 37.171295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380779, 35.810471, 36.967365>,  <45.175716, 35.761181, 36.627483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380779, 35.810471, 36.967365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521809, -0.741195, 0.422309,
		0.681838, -0.659883, -0.315676,
		0.512652, 0.123224, 0.849708,
		45.534576, 35.847439, 37.222279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138218, 35.156548, 36.902332>,  <45.175716, 35.761181, 36.627483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138218, 35.156548, 36.902332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304398, 35.349579, 37.210751>,  <45.404106, 35.465397, 37.395802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304398, 35.349579, 37.210751>,  <45.138218, 35.156548, 36.902332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304398, 35.349579, 37.210751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347339, -0.699268, 0.624803,
		0.840689, -0.527390, -0.122891,
		0.415448, 0.482581, 0.771050,
		45.429031, 35.494354, 37.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371841, 34.586895, 37.339993>,  <45.138218, 35.156548, 36.902332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371841, 34.586895, 37.339993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331276, 34.904331, 37.579967>,  <45.306938, 35.094795, 37.723953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331276, 34.904331, 37.579967>,  <45.371841, 34.586895, 37.339993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331276, 34.904331, 37.579967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327087, -0.596120, 0.733250,
		0.939537, -0.121870, 0.320029,
		-0.101414, 0.793593, 0.599939,
		45.300850, 35.142410, 37.759949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634968, 34.463875, 38.071796>,  <45.371841, 34.586895, 37.339993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634968, 34.463875, 38.071796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378719, 34.766796, 38.122559>,  <45.224972, 34.948547, 38.153015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378719, 34.766796, 38.122559>,  <45.634968, 34.463875, 38.071796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378719, 34.766796, 38.122559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413686, -0.479627, 0.773836,
		0.646894, 0.443233, 0.620542,
		-0.640618, 0.757299, 0.126908,
		45.186535, 34.993984, 38.160629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603546, 34.575867, 38.808327>,  <45.634968, 34.463875, 38.071796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603546, 34.575867, 38.808327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.279205, 34.772923, 38.681946>,  <45.084602, 34.891155, 38.606117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.279205, 34.772923, 38.681946>,  <45.603546, 34.575867, 38.808327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279205, 34.772923, 38.681946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512824, -0.337932, 0.789186,
		0.282016, 0.801939, 0.526651,
		-0.810851, 0.492642, -0.315951,
		45.035950, 34.920715, 38.587162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260731, 34.776463, 39.383762>,  <45.603546, 34.575867, 38.808327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260731, 34.776463, 39.383762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970703, 34.817314, 39.111340>,  <44.796684, 34.841824, 38.947887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970703, 34.817314, 39.111340>,  <45.260731, 34.776463, 39.383762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970703, 34.817314, 39.111340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688092, -0.148032, 0.710364,
		-0.028273, 0.983696, 0.177605,
		-0.725073, 0.102125, -0.681058,
		44.753181, 34.847950, 38.907021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842033, 35.321888, 39.627270>,  <45.260731, 34.776463, 39.383762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842033, 35.321888, 39.627270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621254, 35.124516, 39.358383>,  <44.488785, 35.006092, 39.197052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621254, 35.124516, 39.358383>,  <44.842033, 35.321888, 39.627270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621254, 35.124516, 39.358383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766919, -0.016123, 0.641542,
		-0.327395, 0.869635, -0.369523,
		-0.551950, -0.493431, -0.672218,
		44.455669, 34.976486, 39.156719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239662, 35.673672, 39.630684>,  <44.842033, 35.321888, 39.627270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239662, 35.673672, 39.630684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147324, 35.320518, 39.467106>,  <44.091923, 35.108627, 39.368958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147324, 35.320518, 39.467106>,  <44.239662, 35.673672, 39.630684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147324, 35.320518, 39.467106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734839, -0.117287, 0.668024,
		-0.637748, 0.454717, -0.621699,
		-0.230845, -0.882879, -0.408944,
		44.078072, 35.055656, 39.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543789, 35.742222, 39.490738>,  <44.239662, 35.673672, 39.630684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543789, 35.742222, 39.490738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649860, 35.358406, 39.528599>,  <43.713501, 35.128117, 39.551315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649860, 35.358406, 39.528599>,  <43.543789, 35.742222, 39.490738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649860, 35.358406, 39.528599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839665, -0.181552, 0.511860,
		-0.473967, -0.215210, -0.853838,
		0.265174, -0.959544, 0.094655,
		43.729412, 35.070541, 39.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940434, 35.442753, 39.248848>,  <43.543789, 35.742222, 39.490738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940434, 35.442753, 39.248848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157188, 35.159653, 39.430153>,  <43.287239, 34.989792, 39.538937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157188, 35.159653, 39.430153>,  <42.940434, 35.442753, 39.248848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157188, 35.159653, 39.430153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837900, -0.412930, 0.356949,
		-0.065463, -0.573217, -0.816784,
		0.541884, -0.707751, 0.453266,
		43.319756, 34.947327, 39.566132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420464, 34.878456, 39.286537>,  <42.940434, 35.442753, 39.248848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420464, 34.878456, 39.286537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710705, 34.796700, 39.549362>,  <42.884850, 34.747646, 39.707058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710705, 34.796700, 39.549362>,  <42.420464, 34.878456, 39.286537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710705, 34.796700, 39.549362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671065, -0.421431, 0.609973,
		0.152232, -0.883527, -0.442952,
		0.725601, -0.204392, 0.657059,
		42.928387, 34.735382, 39.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312920, 34.211063, 39.489212>,  <42.420464, 34.878456, 39.286537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312920, 34.211063, 39.489212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530529, 34.382591, 39.777699>,  <42.661095, 34.485508, 39.950790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530529, 34.382591, 39.777699>,  <42.312920, 34.211063, 39.489212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530529, 34.382591, 39.777699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569018, -0.443150, 0.692702,
		0.616654, -0.787229, 0.002925,
		0.544019, 0.428822, 0.721218,
		42.693733, 34.511238, 39.994064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336563, 33.778831, 40.075562>,  <42.312920, 34.211063, 39.489212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336563, 33.778831, 40.075562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422829, 34.126606, 40.253361>,  <42.474586, 34.335270, 40.360039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422829, 34.126606, 40.253361>,  <42.336563, 33.778831, 40.075562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422829, 34.126606, 40.253361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585083, -0.249390, 0.771675,
		0.781772, -0.426488, 0.454906,
		0.215661, 0.869432, 0.444497,
		42.487526, 34.387436, 40.386711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317734, 33.621159, 40.762321>,  <42.336563, 33.778831, 40.075562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317734, 33.621159, 40.762321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291885, 34.019741, 40.783859>,  <42.276375, 34.258892, 40.796783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291885, 34.019741, 40.783859>,  <42.317734, 33.621159, 40.762321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291885, 34.019741, 40.783859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482164, -0.078424, 0.872564,
		0.873695, 0.030426, 0.485523,
		-0.064625, 0.996456, 0.053848,
		42.272499, 34.318676, 40.800014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651993, 33.858349, 41.357616>,  <42.317734, 33.621159, 40.762321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651993, 33.858349, 41.357616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407406, 34.161659, 41.267174>,  <42.260654, 34.343647, 41.212906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407406, 34.161659, 41.267174>,  <42.651993, 33.858349, 41.357616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407406, 34.161659, 41.267174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326263, 0.018721, 0.945094,
		0.720876, 0.651663, 0.235950,
		-0.611465, 0.758278, -0.226109,
		42.223965, 34.389141, 41.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856331, 34.418846, 41.670322>,  <42.651993, 33.858349, 41.357616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856331, 34.418846, 41.670322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480774, 34.516861, 41.573627>,  <42.255440, 34.575672, 41.515610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480774, 34.516861, 41.573627>,  <42.856331, 34.418846, 41.670322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480774, 34.516861, 41.573627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250842, -0.006166, 0.968008,
		0.235711, 0.969493, 0.067255,
		-0.938892, 0.245041, -0.241736,
		42.199104, 34.590374, 41.501106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649563, 34.929592, 42.189796>,  <42.856331, 34.418846, 41.670322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649563, 34.929592, 42.189796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326115, 34.763214, 42.023365>,  <42.132046, 34.663387, 41.923508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326115, 34.763214, 42.023365>,  <42.649563, 34.929592, 42.189796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326115, 34.763214, 42.023365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403169, -0.123284, 0.906783,
		-0.428472, 0.900992, -0.068008,
		-0.808620, -0.415950, -0.416076,
		42.083530, 34.638428, 41.898540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068619, 35.303772, 42.485844>,  <42.649563, 34.929592, 42.189796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068619, 35.303772, 42.485844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930733, 34.956039, 42.344181>,  <41.848000, 34.747398, 42.259182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930733, 34.956039, 42.344181>,  <42.068619, 35.303772, 42.485844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930733, 34.956039, 42.344181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361520, -0.225234, 0.904750,
		-0.866298, 0.439921, -0.236639,
		-0.344719, -0.869333, -0.354160,
		41.827316, 34.695240, 42.237934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419632, 35.207981, 42.914085>,  <42.068619, 35.303772, 42.485844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419632, 35.207981, 42.914085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.555565, 34.869751, 42.749397>,  <41.637123, 34.666813, 42.650585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.555565, 34.869751, 42.749397>,  <41.419632, 35.207981, 42.914085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555565, 34.869751, 42.749397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402198, -0.526389, 0.749100,
		-0.850148, -0.088973, -0.518973,
		0.339831, -0.845575, -0.411724,
		41.657513, 34.616077, 42.625881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.938816, 43.555637, 39.817982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663013, 43.270752, 39.870644>,  <36.497532, 43.099823, 39.902241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663013, 43.270752, 39.870644>,  <36.938816, 43.555637, 39.817982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663013, 43.270752, 39.870644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620479, -0.674618, -0.399871,
		0.373606, -0.194029, 0.907067,
		-0.689510, -0.712211, 0.131650,
		36.456161, 43.057087, 39.910137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338039, 42.878544, 39.920143>,  <36.938816, 43.555637, 39.817982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338039, 42.878544, 39.920143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971325, 42.766998, 39.805790>,  <36.751297, 42.700069, 39.737179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971325, 42.766998, 39.805790>,  <37.338039, 42.878544, 39.920143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971325, 42.766998, 39.805790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375172, -0.846760, -0.377152,
		-0.136897, -0.453024, 0.880925,
		-0.916791, -0.278868, -0.285881,
		36.696289, 42.683338, 39.720024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388187, 42.112110, 39.937561>,  <37.338039, 42.878544, 39.920143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388187, 42.112110, 39.937561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048470, 42.179008, 39.737274>,  <36.844639, 42.219147, 39.617100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048470, 42.179008, 39.737274>,  <37.388187, 42.112110, 39.937561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048470, 42.179008, 39.737274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259058, -0.694403, -0.671337,
		-0.459979, -0.699882, 0.546430,
		-0.849299, 0.167244, -0.500720,
		36.793678, 42.229183, 39.587059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052494, 41.415405, 39.819633>,  <37.388187, 42.112110, 39.937561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052494, 41.415405, 39.819633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928932, 41.694267, 39.560852>,  <36.854797, 41.861584, 39.405582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928932, 41.694267, 39.560852>,  <37.052494, 41.415405, 39.819633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928932, 41.694267, 39.560852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112742, -0.648586, -0.752746,
		-0.944388, -0.305464, 0.121750,
		-0.308902, 0.697157, -0.646955,
		36.836262, 41.903416, 39.366764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561806, 41.064140, 39.407185>,  <37.052494, 41.415405, 39.819633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561806, 41.064140, 39.407185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717129, 41.372246, 39.204834>,  <36.810322, 41.557110, 39.083424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717129, 41.372246, 39.204834>,  <36.561806, 41.064140, 39.407185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717129, 41.372246, 39.204834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144723, -0.593111, -0.792007,
		-0.910093, 0.234334, -0.341786,
		0.388311, 0.770265, -0.505873,
		36.833622, 41.603325, 39.053074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362370, 40.919483, 38.736050>,  <36.561806, 41.064140, 39.407185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362370, 40.919483, 38.736050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619038, 41.220287, 38.675716>,  <36.773037, 41.400768, 38.639515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619038, 41.220287, 38.675716>,  <36.362370, 40.919483, 38.736050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619038, 41.220287, 38.675716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468328, -0.539899, -0.699413,
		-0.607399, 0.378149, -0.698620,
		0.641667, 0.752006, -0.150836,
		36.811539, 41.445889, 38.630466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286785, 41.262989, 38.026478>,  <36.362370, 40.919483, 38.736050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286785, 41.262989, 38.026478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668125, 41.337307, 38.121639>,  <36.896931, 41.381897, 38.178738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668125, 41.337307, 38.121639>,  <36.286785, 41.262989, 38.026478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668125, 41.337307, 38.121639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299878, -0.492795, -0.816839,
		-0.034525, 0.850079, -0.525523,
		0.953353, 0.185794, 0.237906,
		36.954132, 41.393044, 38.193012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621063, 41.445080, 37.380825>,  <36.286785, 41.262989, 38.026478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621063, 41.445080, 37.380825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957764, 41.403828, 37.592796>,  <37.159782, 41.379078, 37.719978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957764, 41.403828, 37.592796>,  <36.621063, 41.445080, 37.380825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957764, 41.403828, 37.592796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461595, -0.371585, -0.805515,
		0.279987, 0.922653, -0.265176,
		0.841747, -0.103130, 0.529931,
		37.210289, 41.372890, 37.751774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159233, 41.674152, 36.955952>,  <36.621063, 41.445080, 37.380825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159233, 41.674152, 36.955952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324314, 41.418560, 37.215607>,  <37.423363, 41.265205, 37.371399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324314, 41.418560, 37.215607>,  <37.159233, 41.674152, 36.955952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324314, 41.418560, 37.215607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476832, -0.455649, -0.751675,
		0.776083, 0.619752, 0.116635,
		0.412707, -0.638977, 0.649138,
		37.448128, 41.226868, 37.410347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860317, 41.594208, 36.750454>,  <37.159233, 41.674152, 36.955952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860317, 41.594208, 36.750454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767223, 41.277428, 36.976246>,  <37.711365, 41.087360, 37.111721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767223, 41.277428, 36.976246>,  <37.860317, 41.594208, 36.750454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767223, 41.277428, 36.976246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276641, -0.610356, -0.742250,
		0.932364, -0.016590, 0.361140,
		-0.232738, -0.791954, 0.564484,
		37.697403, 41.039841, 37.145592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344296, 41.140690, 36.674934>,  <37.860317, 41.594208, 36.750454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344296, 41.140690, 36.674934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029835, 40.919731, 36.785805>,  <37.841160, 40.787155, 36.852329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029835, 40.919731, 36.785805>,  <38.344296, 41.140690, 36.674934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029835, 40.919731, 36.785805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163208, -0.618118, -0.768956,
		0.596098, -0.559276, 0.576088,
		-0.786149, -0.552395, 0.277181,
		37.793991, 40.754013, 36.868958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549370, 40.420643, 36.664253>,  <38.344296, 41.140690, 36.674934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549370, 40.420643, 36.664253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158695, 40.491268, 36.615429>,  <37.924290, 40.533646, 36.586136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158695, 40.491268, 36.615429>,  <38.549370, 40.420643, 36.664253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158695, 40.491268, 36.615429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013336, -0.517636, -0.855497,
		-0.214236, -0.837184, 0.503216,
		-0.976691, 0.176567, -0.122061,
		37.865688, 40.544239, 36.578812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157829, 39.793583, 36.683147>,  <38.549370, 40.420643, 36.664253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157829, 39.793583, 36.683147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983089, 40.080826, 36.466454>,  <37.878246, 40.253174, 36.336437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983089, 40.080826, 36.466454>,  <38.157829, 39.793583, 36.683147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983089, 40.080826, 36.466454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077406, -0.630015, -0.772716,
		-0.896197, -0.295629, 0.330810,
		-0.436852, 0.718112, -0.541734,
		37.852036, 40.296261, 36.303932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842716, 39.572319, 36.053326>,  <38.157829, 39.793583, 36.683147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842716, 39.572319, 36.053326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821651, 39.204056, 35.898605>,  <37.809013, 38.983097, 35.805775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821651, 39.204056, 35.898605>,  <37.842716, 39.572319, 36.053326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821651, 39.204056, 35.898605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561111, -0.293127, 0.774100,
		-0.826064, 0.257801, -0.501156,
		-0.052661, -0.920661, -0.386797,
		37.805855, 38.927856, 35.782566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226460, 39.370281, 36.012486>,  <37.842716, 39.572319, 36.053326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226460, 39.370281, 36.012486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431866, 39.028469, 36.043671>,  <37.555111, 38.823383, 36.062382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431866, 39.028469, 36.043671>,  <37.226460, 39.370281, 36.012486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431866, 39.028469, 36.043671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469047, -0.203455, 0.859419,
		-0.718536, -0.477897, -0.505292,
		0.513518, -0.854529, 0.077967,
		37.585922, 38.772110, 36.067062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704472, 38.819958, 36.077320>,  <37.226460, 39.370281, 36.012486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704472, 38.819958, 36.077320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046906, 38.689297, 36.237530>,  <37.252365, 38.610901, 36.333656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046906, 38.689297, 36.237530>,  <36.704472, 38.819958, 36.077320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046906, 38.689297, 36.237530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510774, -0.416326, 0.752185,
		-0.078952, -0.848511, -0.523255,
		0.856082, -0.326652, 0.400528,
		37.303730, 38.591301, 36.357689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539169, 38.050911, 36.190006>,  <36.704472, 38.819958, 36.077320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539169, 38.050911, 36.190006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828426, 38.187313, 36.430264>,  <37.001980, 38.269154, 36.574417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828426, 38.187313, 36.430264>,  <36.539169, 38.050911, 36.190006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828426, 38.187313, 36.430264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545534, -0.251364, 0.799506,
		0.423619, -0.905830, 0.004260,
		0.723145, 0.341010, 0.600644,
		37.045372, 38.289616, 36.610458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444126, 37.545673, 36.817989>,  <36.539169, 38.050911, 36.190006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444126, 37.545673, 36.817989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684597, 37.834251, 36.955452>,  <36.828880, 38.007397, 37.037930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684597, 37.834251, 36.955452>,  <36.444126, 37.545673, 36.817989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684597, 37.834251, 36.955452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537976, 0.047392, 0.841627,
		0.590901, -0.690849, 0.416610,
		0.601181, 0.721444, 0.343656,
		36.864952, 38.050686, 37.058548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674370, 37.220268, 37.459679>,  <36.444126, 37.545673, 36.817989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674370, 37.220268, 37.459679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717438, 37.617493, 37.478622>,  <36.743279, 37.855827, 37.489990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717438, 37.617493, 37.478622>,  <36.674370, 37.220268, 37.459679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717438, 37.617493, 37.478622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418402, 0.002048, 0.908260,
		0.901857, -0.117610, 0.415718,
		0.107671, 0.993058, 0.047361,
		36.749741, 37.915409, 37.492832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925091, 37.355495, 38.132572>,  <36.674370, 37.220268, 37.459679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925091, 37.355495, 38.132572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775440, 37.702091, 38.000378>,  <36.685650, 37.910049, 37.921059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775440, 37.702091, 38.000378>,  <36.925091, 37.355495, 38.132572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775440, 37.702091, 38.000378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302481, 0.222862, 0.926735,
		0.876660, 0.446686, 0.178717,
		-0.374130, 0.866489, -0.330488,
		36.663200, 37.962036, 37.901230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134148, 37.857277, 38.597252>,  <36.925091, 37.355495, 38.132572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134148, 37.857277, 38.597252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830307, 38.048832, 38.421219>,  <36.648003, 38.163765, 38.315598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830307, 38.048832, 38.421219>,  <37.134148, 37.857277, 38.597252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830307, 38.048832, 38.421219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222546, 0.444425, 0.867733,
		0.611134, 0.757067, -0.231009,
		-0.759598, 0.478890, -0.440085,
		36.602428, 38.192497, 38.289192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126942, 38.628338, 38.947205>,  <37.134148, 37.857277, 38.597252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126942, 38.628338, 38.947205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781944, 38.560844, 38.756359>,  <36.574947, 38.520348, 38.641853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781944, 38.560844, 38.756359>,  <37.126942, 38.628338, 38.947205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781944, 38.560844, 38.756359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505933, 0.309595, 0.805098,
		0.011862, 0.935777, -0.352393,
		-0.862491, -0.168737, -0.477113,
		36.523197, 38.510223, 38.613224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751331, 39.308365, 38.913143>,  <37.126942, 38.628338, 38.947205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751331, 39.308365, 38.913143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473778, 39.022327, 38.879265>,  <36.307247, 38.850704, 38.858936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473778, 39.022327, 38.879265>,  <36.751331, 39.308365, 38.913143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473778, 39.022327, 38.879265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461358, 0.351171, 0.814757,
		-0.552881, 0.604421, -0.573583,
		-0.693881, -0.715091, -0.084698,
		36.265614, 38.807800, 38.853855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112709, 39.585133, 38.991867>,  <36.751331, 39.308365, 38.913143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112709, 39.585133, 38.991867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040752, 39.198097, 39.062759>,  <35.997578, 38.965878, 39.105293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040752, 39.198097, 39.062759>,  <36.112709, 39.585133, 38.991867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040752, 39.198097, 39.062759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503191, 0.245324, 0.828622,
		-0.845245, 0.059883, -0.531014,
		-0.179890, -0.967590, 0.177226,
		35.986786, 38.907822, 39.115929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366386, 39.407711, 39.012691>,  <36.112709, 39.585133, 38.991867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366386, 39.407711, 39.012691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547291, 39.117668, 39.220413>,  <35.655834, 38.943642, 39.345047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547291, 39.117668, 39.220413>,  <35.366386, 39.407711, 39.012691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547291, 39.117668, 39.220413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650363, 0.130320, 0.748361,
		-0.610318, -0.676193, -0.412644,
		0.452260, -0.725107, 0.519308,
		35.682968, 38.900135, 39.376205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856934, 39.014191, 39.172779>,  <35.366386, 39.407711, 39.012691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856934, 39.014191, 39.172779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155399, 38.949360, 39.431072>,  <35.334480, 38.910461, 39.586048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155399, 38.949360, 39.431072>,  <34.856934, 39.014191, 39.172779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155399, 38.949360, 39.431072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653677, 0.005612, 0.756753,
		-0.126277, -0.986762, -0.101759,
		0.746164, -0.162078, 0.645733,
		35.379250, 38.900738, 39.624790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551201, 38.488045, 39.655441>,  <34.856934, 39.014191, 39.172779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551201, 38.488045, 39.655441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880150, 38.580677, 39.863319>,  <35.077518, 38.636257, 39.988045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880150, 38.580677, 39.863319>,  <34.551201, 38.488045, 39.655441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880150, 38.580677, 39.863319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533093, -0.005543, 0.846038,
		0.198803, -0.972801, 0.118893,
		0.822368, 0.231576, 0.519696,
		35.126862, 38.650150, 40.019230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694958, 37.974216, 40.166241>,  <34.551201, 38.488045, 39.655441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694958, 37.974216, 40.166241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847179, 38.323196, 40.288891>,  <34.938511, 38.532585, 40.362480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847179, 38.323196, 40.288891>,  <34.694958, 37.974216, 40.166241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847179, 38.323196, 40.288891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690107, 0.047211, 0.722166,
		0.615576, -0.486422, 0.620049,
		0.380550, 0.872448, 0.306621,
		34.961346, 38.584930, 40.380878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051003, 37.321789, 40.315994>,  <34.694958, 37.974216, 40.166241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051003, 37.321789, 40.315994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822067, 37.007275, 40.409100>,  <34.684704, 36.818565, 40.464962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822067, 37.007275, 40.409100>,  <35.051003, 37.321789, 40.315994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822067, 37.007275, 40.409100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012341, -0.275561, -0.961204,
		0.819923, -0.553009, 0.148012,
		-0.572341, -0.786287, 0.232764,
		34.650364, 36.771389, 40.478928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369343, 36.768677, 40.071293>,  <35.051003, 37.321789, 40.315994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369343, 36.768677, 40.071293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993355, 36.638958, 40.113796>,  <34.767761, 36.561127, 40.139297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993355, 36.638958, 40.113796>,  <35.369343, 36.768677, 40.071293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993355, 36.638958, 40.113796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050904, -0.441126, -0.896000,
		0.337445, -0.836803, 0.431152,
		-0.939968, -0.324299, 0.106259,
		34.711365, 36.541668, 40.145676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380390, 36.058952, 39.866695>,  <35.369343, 36.768677, 40.071293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380390, 36.058952, 39.866695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994968, 36.162151, 39.838428>,  <34.763714, 36.224072, 39.821468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994968, 36.162151, 39.838428>,  <35.380390, 36.058952, 39.866695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994968, 36.162151, 39.838428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013294, -0.217658, -0.975935,
		-0.267175, -0.941308, 0.206296,
		-0.963556, 0.258002, -0.070667,
		34.705902, 36.239552, 39.817230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074409, 35.550690, 39.474079>,  <35.380390, 36.058952, 39.866695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074409, 35.550690, 39.474079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806091, 35.843548, 39.426758>,  <34.645100, 36.019264, 39.398365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806091, 35.843548, 39.426758>,  <35.074409, 35.550690, 39.474079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806091, 35.843548, 39.426758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066218, -0.218003, -0.973699,
		-0.738678, -0.645321, 0.194717,
		-0.670797, 0.732144, -0.118302,
		34.604851, 36.063190, 39.391266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609100, 35.225357, 39.169868>,  <35.074409, 35.550690, 39.474079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609100, 35.225357, 39.169868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549419, 35.611122, 39.082565>,  <34.513611, 35.842583, 39.030182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549419, 35.611122, 39.082565>,  <34.609100, 35.225357, 39.169868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549419, 35.611122, 39.082565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172225, -0.242704, -0.954690,
		-0.973692, -0.104853, 0.202309,
		-0.149203, 0.964417, -0.218261,
		34.504658, 35.900448, 39.017086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025429, 35.172390, 38.687466>,  <34.609100, 35.225357, 39.169868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025429, 35.172390, 38.687466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173897, 35.539913, 38.633755>,  <34.262978, 35.760426, 38.601528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173897, 35.539913, 38.633755>,  <34.025429, 35.172390, 38.687466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173897, 35.539913, 38.633755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415306, 0.034923, -0.909011,
		-0.830516, 0.393161, 0.394548,
		0.371166, 0.918806, -0.134278,
		34.285248, 35.815556, 38.593472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615860, 35.422737, 38.230183>,  <34.025429, 35.172390, 38.687466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615860, 35.422737, 38.230183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915047, 35.685249, 38.190483>,  <34.094559, 35.842758, 38.166664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915047, 35.685249, 38.190483>,  <33.615860, 35.422737, 38.230183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915047, 35.685249, 38.190483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208741, 0.090647, -0.973761,
		-0.630063, 0.749053, 0.204793,
		0.747962, 0.656279, -0.099245,
		34.139435, 35.882133, 38.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391747, 36.080597, 38.004841>,  <33.615860, 35.422737, 38.230183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391747, 36.080597, 38.004841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771023, 36.046783, 37.882339>,  <33.998589, 36.026493, 37.808838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771023, 36.046783, 37.882339>,  <33.391747, 36.080597, 38.004841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771023, 36.046783, 37.882339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290073, 0.162852, -0.943047,
		0.129597, 0.983022, 0.129892,
		0.948189, -0.084538, -0.306254,
		34.055481, 36.021423, 37.790462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456490, 36.599541, 37.514492>,  <33.391747, 36.080597, 38.004841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456490, 36.599541, 37.514492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761173, 36.351860, 37.438190>,  <33.943981, 36.203251, 37.392410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761173, 36.351860, 37.438190>,  <33.456490, 36.599541, 37.514492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761173, 36.351860, 37.438190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170402, 0.092601, -0.981014,
		0.625113, 0.779750, -0.034979,
		0.761706, -0.619206, -0.190757,
		33.989685, 36.166100, 37.380962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707615, 36.818829, 36.831264>,  <33.456490, 36.599541, 37.514492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707615, 36.818829, 36.831264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931313, 36.488712, 36.862614>,  <34.065533, 36.290642, 36.881424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931313, 36.488712, 36.862614>,  <33.707615, 36.818829, 36.831264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931313, 36.488712, 36.862614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068499, -0.048208, -0.996486,
		0.826166, 0.562651, 0.029571,
		0.559248, -0.825288, 0.078369,
		34.099087, 36.241127, 36.886124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420906, 36.952377, 36.488201>,  <33.707615, 36.818829, 36.831264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420906, 36.952377, 36.488201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307507, 36.570629, 36.450665>,  <34.239468, 36.341579, 36.428143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307507, 36.570629, 36.450665>,  <34.420906, 36.952377, 36.488201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307507, 36.570629, 36.450665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359407, -0.015013, -0.933060,
		0.889076, -0.298248, 0.347264,
		-0.283497, -0.954370, -0.093844,
		34.222458, 36.284317, 36.422512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915131, 36.634949, 36.142429>,  <34.420906, 36.952377, 36.488201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915131, 36.634949, 36.142429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622597, 36.365898, 36.097298>,  <34.447079, 36.204468, 36.070217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622597, 36.365898, 36.097298>,  <34.915131, 36.634949, 36.142429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622597, 36.365898, 36.097298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185181, -0.036608, -0.982022,
		0.656402, -0.739078, 0.151330,
		-0.731330, -0.672625, -0.112834,
		34.403198, 36.164112, 36.063446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.216534, 37.684772, 43.935997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825108, 37.603981, 43.919914>,  <34.590252, 37.555508, 43.910263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825108, 37.603981, 43.919914>,  <35.216534, 37.684772, 43.935997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825108, 37.603981, 43.919914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172673, -0.698295, -0.694671,
		0.112232, -0.686723, 0.718202,
		-0.978564, -0.201978, -0.040208,
		34.531540, 37.543388, 43.907852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127201, 36.963421, 43.807423>,  <35.216534, 37.684772, 43.935997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127201, 36.963421, 43.807423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801315, 37.158310, 43.681660>,  <34.605782, 37.275242, 43.606201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801315, 37.158310, 43.681660>,  <35.127201, 36.963421, 43.807423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801315, 37.158310, 43.681660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056600, -0.472801, -0.879350,
		-0.577088, -0.734217, 0.357623,
		-0.814718, 0.487221, -0.314404,
		34.556900, 37.304478, 43.587337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811787, 36.393269, 43.423412>,  <35.127201, 36.963421, 43.807423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811787, 36.393269, 43.423412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628582, 36.734947, 43.324970>,  <34.518658, 36.939957, 43.265907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628582, 36.734947, 43.324970>,  <34.811787, 36.393269, 43.423412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628582, 36.734947, 43.324970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166929, -0.354568, -0.920009,
		-0.873130, -0.380297, 0.304988,
		-0.458015, 0.854199, -0.246102,
		34.491177, 36.991207, 43.251141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267563, 36.123482, 43.134563>,  <34.811787, 36.393269, 43.423412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267563, 36.123482, 43.134563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270927, 36.509411, 43.029457>,  <34.272945, 36.740967, 42.966393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270927, 36.509411, 43.029457>,  <34.267563, 36.123482, 43.134563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270927, 36.509411, 43.029457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292688, -0.248892, -0.923248,
		-0.956171, 0.084671, 0.280299,
		0.008408, 0.964823, -0.262765,
		34.273449, 36.798859, 42.950626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673248, 36.227295, 42.546074>,  <34.267563, 36.123482, 43.134563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673248, 36.227295, 42.546074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.943531, 36.518295, 42.498489>,  <34.105701, 36.692898, 42.469936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.943531, 36.518295, 42.498489>,  <33.673248, 36.227295, 42.546074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943531, 36.518295, 42.498489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125416, -0.045575, -0.991057,
		-0.726419, 0.684589, 0.060445,
		0.675712, 0.727504, -0.118965,
		34.146244, 36.736546, 42.462799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325455, 36.764248, 42.110863>,  <33.673248, 36.227295, 42.546074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325455, 36.764248, 42.110863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.722450, 36.810753, 42.095661>,  <33.960648, 36.838654, 42.086540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.722450, 36.810753, 42.095661>,  <33.325455, 36.764248, 42.110863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722450, 36.810753, 42.095661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039713, 0.012407, -0.999134,
		-0.115688, 0.993141, 0.016931,
		0.992491, 0.116260, -0.038006,
		34.020199, 36.845631, 42.084259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467815, 37.377342, 41.850300>,  <33.325455, 36.764248, 42.110863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467815, 37.377342, 41.850300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802967, 37.183876, 41.749084>,  <34.004059, 37.067799, 41.688354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802967, 37.183876, 41.749084>,  <33.467815, 37.377342, 41.850300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802967, 37.183876, 41.749084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167430, 0.213497, -0.962489,
		0.519543, 0.848817, 0.097905,
		0.837880, -0.483662, -0.253039,
		34.054333, 37.038776, 41.673172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663803, 37.699547, 41.257885>,  <33.467815, 37.377342, 41.850300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663803, 37.699547, 41.257885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.904709, 37.380920, 41.236885>,  <34.049252, 37.189743, 41.224285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.904709, 37.380920, 41.236885>,  <33.663803, 37.699547, 41.257885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904709, 37.380920, 41.236885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168984, -0.062941, -0.983607,
		0.780204, 0.601266, -0.172514,
		0.602268, -0.796566, -0.052498,
		34.085388, 37.141949, 41.221134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105606, 37.745747, 40.704052>,  <33.663803, 37.699547, 41.257885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105606, 37.745747, 40.704052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091419, 37.352741, 40.777172>,  <34.082909, 37.116940, 40.821045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091419, 37.352741, 40.777172>,  <34.105606, 37.745747, 40.704052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091419, 37.352741, 40.777172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273470, -0.166396, -0.947379,
		0.961227, -0.083592, -0.262785,
		-0.035467, -0.982509, 0.182804,
		34.080780, 37.057987, 40.832012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756958, 37.953396, 40.945286>,  <34.105606, 37.745747, 40.704052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756958, 37.953396, 40.945286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812069, 38.343185, 40.874374>,  <34.845135, 38.577057, 40.831829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812069, 38.343185, 40.874374>,  <34.756958, 37.953396, 40.945286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812069, 38.343185, 40.874374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476444, 0.222118, 0.850685,
		0.868343, -0.032740, 0.494883,
		0.137774, 0.974470, -0.177276,
		34.853401, 38.635525, 40.821190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925766, 38.213085, 41.652534>,  <34.756958, 37.953396, 40.945286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925766, 38.213085, 41.652534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779972, 38.491966, 41.405613>,  <34.692497, 38.659294, 41.257462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779972, 38.491966, 41.405613>,  <34.925766, 38.213085, 41.652534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779972, 38.491966, 41.405613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652547, 0.281689, 0.703444,
		0.664331, 0.659209, 0.352288,
		-0.364481, 0.697205, -0.617300,
		34.670628, 38.701126, 41.220425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673481, 38.618073, 42.075764>,  <34.925766, 38.213085, 41.652534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673481, 38.618073, 42.075764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536243, 38.821438, 41.759838>,  <34.453899, 38.943459, 41.570282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536243, 38.821438, 41.759838>,  <34.673481, 38.618073, 42.075764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536243, 38.821438, 41.759838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633501, 0.495576, 0.594207,
		0.693514, 0.704215, 0.152050,
		-0.343097, 0.508414, -0.789810,
		34.433315, 38.973961, 41.522896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630829, 39.312462, 42.243195>,  <34.673481, 38.618073, 42.075764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630829, 39.312462, 42.243195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363731, 39.256927, 41.950661>,  <34.203472, 39.223606, 41.775143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363731, 39.256927, 41.950661>,  <34.630829, 39.312462, 42.243195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363731, 39.256927, 41.950661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624880, 0.638445, 0.449347,
		0.404529, 0.757042, -0.513072,
		-0.667743, -0.138834, -0.731330,
		34.163410, 39.215279, 41.731262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235168, 39.890850, 42.243515>,  <34.630829, 39.312462, 42.243195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235168, 39.890850, 42.243515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.006699, 39.640594, 42.030975>,  <33.869617, 39.490440, 41.903450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.006699, 39.640594, 42.030975>,  <34.235168, 39.890850, 42.243515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006699, 39.640594, 42.030975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820498, 0.416870, 0.391156,
		-0.023220, 0.659389, -0.751443,
		-0.571178, -0.625640, -0.531348,
		33.835346, 39.452904, 41.871571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860630, 40.297436, 41.854874>,  <34.235168, 39.890850, 42.243515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860630, 40.297436, 41.854874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.689575, 39.944401, 41.933014>,  <33.586945, 39.732578, 41.979900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.689575, 39.944401, 41.933014>,  <33.860630, 40.297436, 41.854874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689575, 39.944401, 41.933014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838835, 0.467989, 0.278104,
		-0.336875, -0.044943, -0.940476,
		-0.427633, -0.882591, 0.195354,
		33.561287, 39.679623, 41.991619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281883, 40.268063, 41.536518>,  <33.860630, 40.297436, 41.854874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281883, 40.268063, 41.536518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228970, 40.031044, 41.854359>,  <33.197224, 39.888832, 42.045063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228970, 40.031044, 41.854359>,  <33.281883, 40.268063, 41.536518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228970, 40.031044, 41.854359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717917, 0.610012, 0.335382,
		-0.683445, -0.526092, -0.506093,
		-0.132281, -0.592548, 0.794600,
		33.189285, 39.853279, 42.092739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717663, 40.598843, 41.947201>,  <33.281883, 40.268063, 41.536518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717663, 40.598843, 41.947201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763748, 40.271526, 42.172455>,  <32.791397, 40.075134, 42.307610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763748, 40.271526, 42.172455>,  <32.717663, 40.598843, 41.947201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763748, 40.271526, 42.172455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595681, 0.396755, 0.698391,
		-0.794915, -0.415913, -0.441730,
		0.115211, -0.818292, 0.563138,
		32.798313, 40.026039, 42.341396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004917, 40.382584, 42.270039>,  <32.717663, 40.598843, 41.947201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004917, 40.382584, 42.270039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.298908, 40.253551, 42.508617>,  <32.475304, 40.176132, 42.651764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.298908, 40.253551, 42.508617>,  <32.004917, 40.382584, 42.270039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298908, 40.253551, 42.508617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489137, 0.356972, 0.795811,
		-0.469624, -0.876650, 0.104584,
		0.734981, -0.322576, 0.596445,
		32.519402, 40.156780, 42.687550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619774, 40.073395, 42.800617>,  <32.004917, 40.382584, 42.270039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619774, 40.073395, 42.800617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987318, 40.195957, 42.900063>,  <32.207844, 40.269497, 42.959728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987318, 40.195957, 42.900063>,  <31.619774, 40.073395, 42.800617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987318, 40.195957, 42.900063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371413, 0.458934, 0.807113,
		0.133211, -0.833963, 0.535501,
		0.918862, 0.306409, 0.248610,
		32.262978, 40.287880, 42.974644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616077, 39.928207, 43.503555>,  <31.619774, 40.073395, 42.800617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616077, 39.928207, 43.503555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.892721, 40.203121, 43.414730>,  <32.058708, 40.368069, 43.361435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.892721, 40.203121, 43.414730>,  <31.616077, 39.928207, 43.503555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892721, 40.203121, 43.414730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374401, 0.604068, 0.703509,
		0.617662, -0.403405, 0.675098,
		0.691605, 0.687289, -0.222075,
		32.100204, 40.409306, 43.348110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784729, 40.173958, 44.127342>,  <31.616077, 39.928207, 43.503555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784729, 40.173958, 44.127342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.974220, 40.449036, 43.907288>,  <32.087914, 40.614082, 43.775253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.974220, 40.449036, 43.907288>,  <31.784729, 40.173958, 44.127342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974220, 40.449036, 43.907288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145166, 0.677115, 0.721417,
		0.868625, -0.261894, 0.420598,
		0.473728, 0.687697, -0.550141,
		32.116341, 40.655346, 43.742245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432293, 40.397141, 44.464230>,  <31.784729, 40.173958, 44.127342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432293, 40.397141, 44.464230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323658, 40.701756, 44.228840>,  <32.258476, 40.884525, 44.087605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323658, 40.701756, 44.228840>,  <32.432293, 40.397141, 44.464230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323658, 40.701756, 44.228840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155361, 0.638130, 0.754091,
		0.949792, 0.113374, -0.291620,
		-0.271586, 0.761536, -0.588476,
		32.242184, 40.930218, 44.052296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024475, 40.881737, 44.417347>,  <32.432293, 40.397141, 44.464230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024475, 40.881737, 44.417347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686413, 41.083721, 44.347221>,  <32.483578, 41.204910, 44.305145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686413, 41.083721, 44.347221>,  <33.024475, 40.881737, 44.417347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686413, 41.083721, 44.347221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208451, 0.613363, 0.761797,
		0.492206, 0.607290, -0.623644,
		-0.845152, 0.504960, -0.175311,
		32.432869, 41.235210, 44.294628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.423340, 41.917194, 43.547611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.803814, 41.812691, 43.613331>,  <29.032099, 41.749989, 43.652763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.803814, 41.812691, 43.613331>,  <28.423340, 41.917194, 43.547611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803814, 41.812691, 43.613331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169453, -0.002831, -0.985534,
		0.257943, 0.965265, 0.041579,
		0.951184, -0.261257, 0.164298,
		29.089169, 41.734314, 43.662621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823320, 42.331768, 43.183083>,  <28.423340, 41.917194, 43.547611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823320, 42.331768, 43.183083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.072670, 42.027390, 43.255035>,  <29.222281, 41.844761, 43.298206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.072670, 42.027390, 43.255035>,  <28.823320, 42.331768, 43.183083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072670, 42.027390, 43.255035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357223, 0.072513, -0.931200,
		0.695554, 0.644745, 0.317032,
		0.623376, -0.760951, 0.179881,
		29.259682, 41.799103, 43.308998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368027, 42.338814, 42.795727>,  <28.823320, 42.331768, 43.183083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368027, 42.338814, 42.795727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439007, 41.954235, 42.879757>,  <29.481594, 41.723488, 42.930176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439007, 41.954235, 42.879757>,  <29.368027, 42.338814, 42.795727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439007, 41.954235, 42.879757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410006, -0.121829, -0.903910,
		0.894654, 0.246530, 0.372581,
		0.177449, -0.961447, 0.210073,
		29.492241, 41.665802, 42.942780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079456, 42.132080, 42.625927>,  <29.368027, 42.338814, 42.795727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079456, 42.132080, 42.625927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.867651, 41.792763, 42.627354>,  <29.740568, 41.589172, 42.628212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.867651, 41.792763, 42.627354>,  <30.079456, 42.132080, 42.625927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867651, 41.792763, 42.627354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334769, -0.212829, -0.917951,
		0.779453, -0.484870, 0.396679,
		-0.529512, -0.848295, 0.003570,
		29.708797, 41.538273, 42.628426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539522, 41.628399, 42.463223>,  <30.079456, 42.132080, 42.625927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539522, 41.628399, 42.463223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.185122, 41.466309, 42.373074>,  <29.972481, 41.369053, 42.318985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.185122, 41.466309, 42.373074>,  <30.539522, 41.628399, 42.463223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185122, 41.466309, 42.373074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288805, -0.102011, -0.951938,
		0.362762, -0.908506, 0.207414,
		-0.885999, -0.405230, -0.225376,
		29.919321, 41.344738, 42.305462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632967, 40.991219, 41.950493>,  <30.539522, 41.628399, 42.463223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632967, 40.991219, 41.950493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257938, 41.118492, 41.894318>,  <30.032921, 41.194855, 41.860615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257938, 41.118492, 41.894318>,  <30.632967, 40.991219, 41.950493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257938, 41.118492, 41.894318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092145, -0.162104, -0.982462,
		-0.335365, -0.934069, 0.122665,
		-0.937571, 0.318180, -0.140434,
		29.976667, 41.213947, 41.852188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426464, 40.560688, 41.324989>,  <30.632967, 40.991219, 41.950493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426464, 40.560688, 41.324989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149881, 40.846977, 41.364239>,  <29.983932, 41.018749, 41.387791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149881, 40.846977, 41.364239>,  <30.426464, 40.560688, 41.324989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149881, 40.846977, 41.364239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062108, 0.076434, -0.995138,
		-0.719744, -0.694189, -0.008398,
		-0.691456, 0.715724, 0.098128,
		29.942444, 41.061695, 41.393677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870928, 40.319016, 40.960575>,  <30.426464, 40.560688, 41.324989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870928, 40.319016, 40.960575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.856226, 40.717541, 40.991585>,  <29.847404, 40.956657, 41.010193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.856226, 40.717541, 40.991585>,  <29.870928, 40.319016, 40.960575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856226, 40.717541, 40.991585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123042, 0.081500, -0.989049,
		-0.991720, -0.026815, -0.125584,
		-0.036757, 0.996312, 0.077526,
		29.845200, 41.016434, 41.014843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507483, 40.478374, 40.448334>,  <29.870928, 40.319016, 40.960575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507483, 40.478374, 40.448334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675976, 40.827000, 40.548683>,  <29.777073, 41.036175, 40.608891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675976, 40.827000, 40.548683>,  <29.507483, 40.478374, 40.448334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675976, 40.827000, 40.548683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429087, 0.052178, -0.901755,
		-0.799028, 0.487496, -0.351998,
		0.421235, 0.871565, 0.250870,
		29.802347, 41.088470, 40.623943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453941, 40.858852, 39.793129>,  <29.507483, 40.478374, 40.448334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453941, 40.858852, 39.793129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709232, 41.077911, 40.009556>,  <29.862406, 41.209347, 40.139412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709232, 41.077911, 40.009556>,  <29.453941, 40.858852, 39.793129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709232, 41.077911, 40.009556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458401, 0.294300, -0.838603,
		-0.618494, 0.783243, -0.063212,
		0.638227, 0.547648, 0.541062,
		29.900700, 41.242207, 40.171875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530607, 41.596462, 39.642666>,  <29.453941, 40.858852, 39.793129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530607, 41.596462, 39.642666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.871841, 41.440014, 39.780807>,  <30.076582, 41.346146, 39.863693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.871841, 41.440014, 39.780807>,  <29.530607, 41.596462, 39.642666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871841, 41.440014, 39.780807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430150, 0.152549, -0.889775,
		0.295327, 0.907608, 0.298378,
		0.853084, -0.391122, 0.345357,
		30.127768, 41.322678, 39.884415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056274, 41.943390, 39.291374>,  <29.530607, 41.596462, 39.642666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056274, 41.943390, 39.291374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.227089, 41.606270, 39.422421>,  <30.329576, 41.403999, 39.501049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.227089, 41.606270, 39.422421>,  <30.056274, 41.943390, 39.291374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227089, 41.606270, 39.422421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397843, -0.150239, -0.905069,
		0.812012, 0.516834, 0.271144,
		0.427034, -0.842799, 0.327615,
		30.355200, 41.353432, 39.520706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673244, 42.065437, 38.964657>,  <30.056274, 41.943390, 39.291374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673244, 42.065437, 38.964657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672033, 41.676800, 39.059303>,  <30.671307, 41.443615, 39.116093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672033, 41.676800, 39.059303>,  <30.673244, 42.065437, 38.964657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672033, 41.676800, 39.059303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439769, -0.213804, -0.872291,
		0.898106, 0.101416, 0.427927,
		-0.003028, -0.971598, 0.236618,
		30.671125, 41.385319, 39.130287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267920, 41.838516, 38.578911>,  <30.673244, 42.065437, 38.964657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267920, 41.838516, 38.578911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101761, 41.486610, 38.671394>,  <31.002066, 41.275467, 38.726883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101761, 41.486610, 38.671394>,  <31.267920, 41.838516, 38.578911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101761, 41.486610, 38.671394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391180, -0.402240, -0.827757,
		0.821234, -0.253403, 0.511236,
		-0.415396, -0.879767, 0.231207,
		30.977142, 41.222679, 38.740757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984253, 41.948456, 39.019840>,  <31.267920, 41.838516, 38.578911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984253, 41.948456, 39.019840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203762, 42.253075, 38.881912>,  <32.335468, 42.435844, 38.799156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203762, 42.253075, 38.881912>,  <31.984253, 41.948456, 39.019840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203762, 42.253075, 38.881912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143634, 0.492238, 0.858528,
		0.823539, -0.421609, 0.379510,
		0.548773, 0.761542, -0.344820,
		32.368393, 42.481537, 38.778465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361561, 42.198494, 39.570549>,  <31.984253, 41.948456, 39.019840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361561, 42.198494, 39.570549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391705, 42.517399, 39.330982>,  <32.409790, 42.708740, 39.187244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391705, 42.517399, 39.330982>,  <32.361561, 42.198494, 39.570549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391705, 42.517399, 39.330982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127998, 0.603387, 0.787108,
		0.988907, 0.017341, 0.147521,
		0.075363, 0.797260, -0.598913,
		32.414314, 42.756577, 39.151310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774811, 42.662098, 39.915775>,  <32.361561, 42.198494, 39.570549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774811, 42.662098, 39.915775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.564919, 42.889664, 39.662479>,  <32.438984, 43.026203, 39.510502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.564919, 42.889664, 39.662479>,  <32.774811, 42.662098, 39.915775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564919, 42.889664, 39.662479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156715, 0.666607, 0.728749,
		0.836719, 0.481635, -0.260632,
		-0.524730, 0.568913, -0.633243,
		32.407501, 43.060337, 39.472507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004990, 43.269699, 40.155079>,  <32.774811, 42.662098, 39.915775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004990, 43.269699, 40.155079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664410, 43.353554, 39.962791>,  <32.460064, 43.403866, 39.847420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664410, 43.353554, 39.962791>,  <33.004990, 43.269699, 40.155079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664410, 43.353554, 39.962791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326236, 0.505975, 0.798473,
		0.410620, 0.836685, -0.362421,
		-0.851446, 0.209635, -0.480721,
		32.408978, 43.416443, 39.818577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900200, 43.973358, 40.257656>,  <33.004990, 43.269699, 40.155079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900200, 43.973358, 40.257656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.530338, 43.842018, 40.180511>,  <32.308422, 43.763214, 40.134224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.530338, 43.842018, 40.180511>,  <32.900200, 43.973358, 40.257656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530338, 43.842018, 40.180511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363666, 0.611215, 0.702967,
		-0.112937, 0.720142, -0.684574,
		-0.924658, -0.328347, -0.192863,
		32.252941, 43.743515, 40.122654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503307, 44.561249, 40.383034>,  <32.900200, 43.973358, 40.257656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503307, 44.561249, 40.383034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251122, 44.251228, 40.400036>,  <32.099812, 44.065216, 40.410236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251122, 44.251228, 40.400036>,  <32.503307, 44.561249, 40.383034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251122, 44.251228, 40.400036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456898, 0.414817, 0.786874,
		-0.627501, 0.476675, -0.615648,
		-0.630465, -0.775053, 0.042506,
		32.061981, 44.018711, 40.412788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801615, 44.806503, 40.339668>,  <32.503307, 44.561249, 40.383034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801615, 44.806503, 40.339668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.749956, 44.440006, 40.491360>,  <31.718960, 44.220108, 40.582375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.749956, 44.440006, 40.491360>,  <31.801615, 44.806503, 40.339668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749956, 44.440006, 40.491360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499861, 0.390444, 0.773106,
		-0.856422, -0.089717, -0.508421,
		-0.129149, -0.916245, 0.379231,
		31.711212, 44.165134, 40.605129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020466, 44.731411, 40.599957>,  <31.801615, 44.806503, 40.339668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020466, 44.731411, 40.599957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233797, 44.456417, 40.797108>,  <31.361795, 44.291420, 40.915398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233797, 44.456417, 40.797108>,  <31.020466, 44.731411, 40.599957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233797, 44.456417, 40.797108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509211, 0.204349, 0.836030,
		-0.675475, -0.696857, -0.241089,
		0.533327, -0.687482, 0.492880,
		31.393795, 44.250172, 40.944973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617121, 44.646889, 41.148537>,  <31.020466, 44.731411, 40.599957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617121, 44.646889, 41.148537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.940353, 44.446445, 41.272400>,  <31.134293, 44.326180, 41.346718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.940353, 44.446445, 41.272400>,  <30.617121, 44.646889, 41.148537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940353, 44.446445, 41.272400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312967, 0.080121, 0.946379,
		-0.499051, -0.861666, -0.092087,
		0.808084, -0.501112, 0.309658,
		31.182779, 44.296112, 41.365295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345575, 44.064091, 41.458004>,  <30.617121, 44.646889, 41.148537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345575, 44.064091, 41.458004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702131, 44.176285, 41.600414>,  <30.916065, 44.243599, 41.685860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702131, 44.176285, 41.600414>,  <30.345575, 44.064091, 41.458004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702131, 44.176285, 41.600414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387846, 0.065591, 0.919388,
		0.234518, -0.957616, 0.167250,
		0.891391, 0.280480, 0.356025,
		30.969549, 44.260429, 41.707222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529976, 43.701637, 42.058716>,  <30.345575, 44.064091, 41.458004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529976, 43.701637, 42.058716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.748108, 44.033344, 42.107586>,  <30.878986, 44.232368, 42.136909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.748108, 44.033344, 42.107586>,  <30.529976, 43.701637, 42.058716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748108, 44.033344, 42.107586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315950, 0.068347, 0.946311,
		0.776396, -0.554654, 0.299279,
		0.545330, 0.829269, 0.122179,
		30.911707, 44.282124, 42.144241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010176, 43.618744, 42.607708>,  <30.529976, 43.701637, 42.058716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010176, 43.618744, 42.607708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.959791, 44.013683, 42.569191>,  <30.929560, 44.250648, 42.546082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.959791, 44.013683, 42.569191>,  <31.010176, 43.618744, 42.607708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959791, 44.013683, 42.569191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153927, 0.076437, 0.985121,
		0.980021, 0.138908, 0.142352,
		-0.125961, 0.987351, -0.096291,
		30.922003, 44.309887, 42.540302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650654, 43.951790, 42.863243>,  <31.010176, 43.618744, 42.607708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650654, 43.951790, 42.863243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349403, 44.214870, 42.869247>,  <31.168653, 44.372719, 42.872849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349403, 44.214870, 42.869247>,  <31.650654, 43.951790, 42.863243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349403, 44.214870, 42.869247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079750, 0.068626, 0.994450,
		0.653024, 0.750143, -0.104136,
		-0.753127, 0.657704, 0.015009,
		31.123465, 44.412182, 42.873749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834658, 44.542629, 43.218357>,  <31.650654, 43.951790, 42.863243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834658, 44.542629, 43.218357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438423, 44.584339, 43.253834>,  <31.200682, 44.609364, 43.275120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438423, 44.584339, 43.253834>,  <31.834658, 44.542629, 43.218357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438423, 44.584339, 43.253834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102566, 0.136292, 0.985345,
		0.090657, 0.985166, -0.145704,
		-0.990586, 0.104272, 0.088689,
		31.141247, 44.615620, 43.280441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359516, 45.154282, 43.388615>,  <31.834658, 44.542629, 43.218357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359516, 45.154282, 43.388615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737862, 45.130508, 43.516243>,  <32.964870, 45.116245, 43.592819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737862, 45.130508, 43.516243>,  <32.359516, 45.154282, 43.388615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737862, 45.130508, 43.516243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299540, -0.218667, -0.928687,
		0.124970, 0.973988, -0.189025,
		0.945864, -0.059438, 0.319075,
		33.021622, 45.112679, 43.611965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670547, 45.540833, 42.945114>,  <32.359516, 45.154282, 43.388615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670547, 45.540833, 42.945114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946312, 45.298332, 43.103695>,  <33.111771, 45.152832, 43.198845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946312, 45.298332, 43.103695>,  <32.670547, 45.540833, 42.945114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946312, 45.298332, 43.103695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323011, -0.232591, -0.917369,
		0.648367, 0.760501, 0.035475,
		0.689408, -0.606251, 0.396455,
		33.153133, 45.116455, 43.222630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242813, 45.762970, 42.616932>,  <32.670547, 45.540833, 42.945114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242813, 45.762970, 42.616932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355083, 45.411091, 42.770481>,  <33.422447, 45.199963, 42.862610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355083, 45.411091, 42.770481>,  <33.242813, 45.762970, 42.616932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355083, 45.411091, 42.770481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588153, -0.158425, -0.793081,
		0.758484, 0.448376, 0.472929,
		0.280675, -0.879694, 0.383876,
		33.439285, 45.147182, 42.885643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966084, 45.841583, 42.464439>,  <33.242813, 45.762970, 42.616932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966084, 45.841583, 42.464439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927288, 45.456402, 42.565086>,  <33.904011, 45.225292, 42.625477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927288, 45.456402, 42.565086>,  <33.966084, 45.841583, 42.464439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927288, 45.456402, 42.565086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808099, -0.223768, -0.544890,
		0.581008, 0.150488, 0.799864,
		-0.096985, -0.962954, 0.251620,
		33.898193, 45.167515, 42.640572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638126, 45.549496, 42.510250>,  <33.966084, 45.841583, 42.464439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638126, 45.549496, 42.510250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405930, 45.230736, 42.443336>,  <34.266613, 45.039482, 42.403191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405930, 45.230736, 42.443336>,  <34.638126, 45.549496, 42.510250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405930, 45.230736, 42.443336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685564, -0.367468, -0.628466,
		0.439352, -0.479502, 0.759636,
		-0.580493, -0.796897, -0.167282,
		34.231781, 44.991665, 42.393150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063881, 44.957058, 42.536575>,  <34.638126, 45.549496, 42.510250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063881, 44.957058, 42.536575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759373, 44.770664, 42.356213>,  <34.576668, 44.658829, 42.247993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759373, 44.770664, 42.356213>,  <35.063881, 44.957058, 42.536575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759373, 44.770664, 42.356213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630367, -0.368830, -0.683082,
		0.152000, -0.804250, 0.574524,
		-0.761271, -0.465989, -0.450911,
		34.530991, 44.630867, 42.220940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320530, 44.374859, 42.256516>,  <35.063881, 44.957058, 42.536575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320530, 44.374859, 42.256516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981728, 44.414448, 42.047604>,  <34.778446, 44.438202, 41.922256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981728, 44.414448, 42.047604>,  <35.320530, 44.374859, 42.256516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981728, 44.414448, 42.047604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423688, -0.467676, -0.775737,
		-0.321039, -0.878341, 0.354191,
		-0.847008, 0.098975, -0.522285,
		34.727627, 44.444141, 41.890919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158325, 43.718189, 42.018223>,  <35.320530, 44.374859, 42.256516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158325, 43.718189, 42.018223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943851, 43.947411, 41.770313>,  <34.815166, 44.084942, 41.621567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943851, 43.947411, 41.770313>,  <35.158325, 43.718189, 42.018223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943851, 43.947411, 41.770313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267169, -0.581276, -0.768595,
		-0.800703, -0.577694, 0.158570,
		-0.536186, 0.573051, -0.619772,
		34.782997, 44.119328, 41.584381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744770, 43.240677, 41.549038>,  <35.158325, 43.718189, 42.018223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744770, 43.240677, 41.549038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811127, 43.606739, 41.402084>,  <34.850941, 43.826374, 41.313911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811127, 43.606739, 41.402084>,  <34.744770, 43.240677, 41.549038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811127, 43.606739, 41.402084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290727, -0.401379, -0.868546,
		-0.942315, 0.037278, -0.332646,
		0.165895, 0.915153, -0.367387,
		34.860897, 43.881287, 41.291866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324913, 43.217918, 40.885098>,  <34.744770, 43.240677, 41.549038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324913, 43.217918, 40.885098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608829, 43.499428, 40.873096>,  <34.779179, 43.668335, 40.865894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608829, 43.499428, 40.873096>,  <34.324913, 43.217918, 40.885098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608829, 43.499428, 40.873096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334252, -0.373989, -0.865106,
		-0.620060, 0.604015, -0.500691,
		0.709790, 0.703775, -0.030003,
		34.821766, 43.710560, 40.864098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334686, 43.385933, 40.171291>,  <34.324913, 43.217918, 40.885098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334686, 43.385933, 40.171291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.679050, 43.494003, 40.343731>,  <34.885670, 43.558846, 40.447193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.679050, 43.494003, 40.343731>,  <34.334686, 43.385933, 40.171291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679050, 43.494003, 40.343731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508505, -0.483980, -0.712170,
		0.016229, 0.832326, -0.554048,
		0.860906, 0.270179, 0.431097,
		34.937321, 43.575058, 40.473061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873901, 43.377693, 39.648296>,  <34.334686, 43.385933, 40.171291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873901, 43.377693, 39.648296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.100365, 43.397820, 39.977398>,  <35.236244, 43.409897, 40.174858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.100365, 43.397820, 39.977398>,  <34.873901, 43.377693, 39.648296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100365, 43.397820, 39.977398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705891, -0.545019, -0.452407,
		0.425654, 0.836912, -0.344088,
		0.566160, 0.050320, 0.822758,
		35.270214, 43.412914, 40.224224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547028, 43.792736, 39.559422>,  <34.873901, 43.377693, 39.648296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547028, 43.792736, 39.559422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623127, 43.546394, 39.865238>,  <35.668785, 43.398590, 40.048729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623127, 43.546394, 39.865238>,  <35.547028, 43.792736, 39.559422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623127, 43.546394, 39.865238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765215, -0.394844, -0.508473,
		0.615022, 0.681775, 0.396146,
		0.190248, -0.615858, 0.764542,
		35.680202, 43.361637, 40.094601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242290, 43.861595, 39.743099>,  <35.547028, 43.792736, 39.559422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242290, 43.861595, 39.743099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141365, 43.514858, 39.915112>,  <36.080811, 43.306816, 40.018318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141365, 43.514858, 39.915112>,  <36.242290, 43.861595, 39.743099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141365, 43.514858, 39.915112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841808, -0.415785, -0.344212,
		0.477177, 0.275157, 0.834620,
		-0.252310, -0.866840, 0.430032,
		36.065674, 43.254807, 40.044121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.078047, 28.653269, 31.164867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726753, 28.624525, 30.975746>,  <28.515978, 28.607279, 30.862274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726753, 28.624525, 30.975746>,  <29.078047, 28.653269, 31.164867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726753, 28.624525, 30.975746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346546, 0.776931, 0.525628,
		0.329561, 0.625471, -0.707231,
		-0.878234, -0.071861, -0.472801,
		28.463284, 28.602966, 30.833906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015915, 29.442858, 31.006618>,  <29.078047, 28.653269, 31.164867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015915, 29.442858, 31.006618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667515, 29.267044, 30.918835>,  <28.458475, 29.161556, 30.866165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667515, 29.267044, 30.918835>,  <29.015915, 29.442858, 31.006618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667515, 29.267044, 30.918835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488725, 0.729724, 0.478174,
		-0.050030, 0.523746, -0.850404,
		-0.871003, -0.439536, -0.219460,
		28.406214, 29.135183, 30.852997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530769, 29.875578, 30.789820>,  <29.015915, 29.442858, 31.006618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530769, 29.875578, 30.789820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.300549, 29.592363, 30.953491>,  <28.162416, 29.422436, 31.051695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.300549, 29.592363, 30.953491>,  <28.530769, 29.875578, 30.789820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300549, 29.592363, 30.953491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532250, 0.704211, 0.469889,
		-0.620847, 0.052659, -0.782161,
		-0.575550, -0.708035, 0.409180,
		28.127884, 29.379953, 31.076244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871807, 30.165642, 30.777388>,  <28.530769, 29.875578, 30.789820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871807, 30.165642, 30.777388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851826, 29.865551, 31.041105>,  <27.839836, 29.685497, 31.199335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851826, 29.865551, 31.041105>,  <27.871807, 30.165642, 30.777388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851826, 29.865551, 31.041105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399688, 0.619969, 0.675195,
		-0.915289, -0.229783, -0.330825,
		-0.049953, -0.750226, 0.659292,
		27.836840, 29.640484, 31.238894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140671, 30.167875, 30.882305>,  <27.871807, 30.165642, 30.777388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140671, 30.167875, 30.882305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338449, 29.992048, 31.182253>,  <27.457117, 29.886551, 31.362221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338449, 29.992048, 31.182253>,  <27.140671, 30.167875, 30.882305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338449, 29.992048, 31.182253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436992, 0.620038, 0.651607,
		-0.751372, -0.649871, 0.114488,
		0.494447, -0.439569, 0.749868,
		27.486784, 29.860178, 31.407213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633917, 30.180914, 31.461740>,  <27.140671, 30.167875, 30.882305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633917, 30.180914, 31.461740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970945, 30.106636, 31.663963>,  <27.173162, 30.062069, 31.785297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970945, 30.106636, 31.663963>,  <26.633917, 30.180914, 31.461740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970945, 30.106636, 31.663963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231996, 0.721997, 0.651842,
		-0.486053, -0.666512, 0.565255,
		0.842573, -0.185693, 0.505558,
		27.223717, 30.050928, 31.815630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511742, 30.099911, 32.173046>,  <26.633917, 30.180914, 31.461740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511742, 30.099911, 32.173046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.902428, 30.183401, 32.192890>,  <27.136839, 30.233496, 32.204796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.902428, 30.183401, 32.192890>,  <26.511742, 30.099911, 32.173046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902428, 30.183401, 32.192890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188236, 0.722804, 0.664922,
		0.102930, -0.658777, 0.745263,
		0.976715, 0.208726, 0.049608,
		27.195442, 30.246019, 32.207771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712135, 30.222179, 32.930626>,  <26.511742, 30.099911, 32.173046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712135, 30.222179, 32.930626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987667, 30.395020, 32.697800>,  <27.152987, 30.498724, 32.558102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987667, 30.395020, 32.697800>,  <26.712135, 30.222179, 32.930626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987667, 30.395020, 32.697800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001076, 0.803547, 0.595240,
		0.724921, -0.409394, 0.553973,
		0.688831, 0.432098, -0.582068,
		27.194317, 30.524649, 32.523178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343838, 30.559635, 33.376457>,  <26.712135, 30.222179, 32.930626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343838, 30.559635, 33.376457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340034, 30.757412, 33.028793>,  <27.337751, 30.876078, 32.820194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340034, 30.757412, 33.028793>,  <27.343838, 30.559635, 33.376457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340034, 30.757412, 33.028793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170978, 0.857201, 0.485770,
		0.985229, -0.143987, -0.092691,
		-0.009510, 0.494442, -0.869158,
		27.337181, 30.905745, 32.768047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970787, 31.095467, 33.489067>,  <27.343838, 30.559635, 33.376457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970787, 31.095467, 33.489067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730406, 31.201893, 33.187588>,  <27.586176, 31.265749, 33.006699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730406, 31.201893, 33.187588>,  <27.970787, 31.095467, 33.489067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730406, 31.201893, 33.187588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042408, 0.952255, 0.302345,
		0.798158, 0.149733, -0.583545,
		-0.600954, 0.266066, -0.753700,
		27.550119, 31.281713, 32.961479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224253, 31.780657, 33.401382>,  <27.970787, 31.095467, 33.489067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224253, 31.780657, 33.401382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882704, 31.750221, 33.195427>,  <27.677774, 31.731960, 33.071854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882704, 31.750221, 33.195427>,  <28.224253, 31.780657, 33.401382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882704, 31.750221, 33.195427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186560, 0.968268, 0.166291,
		0.485901, 0.238049, -0.840971,
		-0.853871, -0.076090, -0.514893,
		27.626543, 31.727394, 33.040958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206200, 32.381393, 33.002796>,  <28.224253, 31.780657, 33.401382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206200, 32.381393, 33.002796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821650, 32.285038, 33.056061>,  <27.590919, 32.227222, 33.088020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821650, 32.285038, 33.056061>,  <28.206200, 32.381393, 33.002796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821650, 32.285038, 33.056061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235436, 0.970302, 0.055535,
		-0.142586, 0.022039, -0.989537,
		-0.961373, -0.240891, 0.133162,
		27.533237, 32.212772, 33.096008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871031, 32.916786, 32.649845>,  <28.206200, 32.381393, 33.002796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871031, 32.916786, 32.649845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615763, 32.751205, 32.909504>,  <27.462603, 32.651859, 33.065300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615763, 32.751205, 32.909504>,  <27.871031, 32.916786, 32.649845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615763, 32.751205, 32.909504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271937, 0.910005, 0.312957,
		-0.720271, 0.023193, -0.693305,
		-0.638169, -0.413949, 0.649143,
		27.424313, 32.627022, 33.104248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383209, 33.431992, 32.604515>,  <27.871031, 32.916786, 32.649845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383209, 33.431992, 32.604515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299603, 33.218704, 32.932415>,  <27.249437, 33.090733, 33.129154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299603, 33.218704, 32.932415>,  <27.383209, 33.431992, 32.604515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299603, 33.218704, 32.932415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354599, 0.822539, 0.444623,
		-0.911357, -0.197747, -0.361006,
		-0.209018, -0.533222, 0.819747,
		27.236897, 33.058739, 33.178341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667284, 33.586395, 32.844849>,  <27.383209, 33.431992, 32.604515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667284, 33.586395, 32.844849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843779, 33.442112, 33.173531>,  <26.949677, 33.355541, 33.370739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843779, 33.442112, 33.173531>,  <26.667284, 33.586395, 32.844849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843779, 33.442112, 33.173531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258349, 0.825835, 0.501251,
		-0.859398, -0.433457, 0.271200,
		0.441238, -0.360710, 0.821704,
		26.976151, 33.333900, 33.420040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222805, 33.716778, 33.435135>,  <26.667284, 33.586395, 32.844849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222805, 33.716778, 33.435135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.568430, 33.664017, 33.629452>,  <26.775805, 33.632362, 33.746040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.568430, 33.664017, 33.629452>,  <26.222805, 33.716778, 33.435135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568430, 33.664017, 33.629452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272055, 0.689612, 0.671134,
		-0.423532, -0.712066, 0.559985,
		0.864065, -0.131900, 0.485794,
		26.827650, 33.624447, 33.775188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010370, 33.510181, 34.146263>,  <26.222805, 33.716778, 33.435135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010370, 33.510181, 34.146263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386192, 33.645836, 34.165119>,  <26.611685, 33.727230, 34.176434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386192, 33.645836, 34.165119>,  <26.010370, 33.510181, 34.146263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386192, 33.645836, 34.165119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278249, 0.676036, 0.682315,
		0.199532, -0.654188, 0.729537,
		0.939555, 0.339137, 0.047137,
		26.668058, 33.747578, 34.179260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081074, 33.767544, 34.787514>,  <26.010370, 33.510181, 34.146263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081074, 33.767544, 34.787514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427271, 33.914562, 34.651375>,  <26.634989, 34.002773, 34.569691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427271, 33.914562, 34.651375>,  <26.081074, 33.767544, 34.787514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427271, 33.914562, 34.651375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020757, 0.705170, 0.708734,
		0.500491, -0.606340, 0.617949,
		0.865493, 0.367542, -0.340346,
		26.686918, 34.024826, 34.549271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549889, 33.822807, 35.334839>,  <26.081074, 33.767544, 34.787514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549889, 33.822807, 35.334839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665947, 34.092167, 35.062855>,  <26.735582, 34.253784, 34.899666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665947, 34.092167, 35.062855>,  <26.549889, 33.822807, 35.334839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665947, 34.092167, 35.062855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030174, 0.716609, 0.696822,
		0.956506, -0.181663, 0.228241,
		0.290147, 0.673402, -0.679959,
		26.752991, 34.294189, 34.858868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025618, 34.202068, 35.673969>,  <26.549889, 33.822807, 35.334839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025618, 34.202068, 35.673969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900517, 34.423424, 35.365177>,  <26.825457, 34.556236, 35.179901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900517, 34.423424, 35.365177>,  <27.025618, 34.202068, 35.673969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900517, 34.423424, 35.365177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100070, 0.789030, 0.606149,
		0.944548, 0.266827, -0.191395,
		-0.312753, 0.553385, -0.771979,
		26.806690, 34.589439, 35.133583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397425, 34.823250, 35.741829>,  <27.025618, 34.202068, 35.673969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397425, 34.823250, 35.741829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059208, 34.886204, 35.537754>,  <26.856277, 34.923977, 35.415310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059208, 34.886204, 35.537754>,  <27.397425, 34.823250, 35.741829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059208, 34.886204, 35.537754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181785, 0.813611, 0.552261,
		0.502012, 0.559703, -0.659330,
		-0.845540, 0.157386, -0.510188,
		26.805546, 34.933418, 35.384697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572233, 35.617916, 35.662853>,  <27.397425, 34.823250, 35.741829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572233, 35.617916, 35.662853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898239, 35.629910, 35.894321>,  <28.093842, 35.637104, 36.033203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898239, 35.629910, 35.894321>,  <27.572233, 35.617916, 35.662853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898239, 35.629910, 35.894321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358095, -0.811189, -0.462321,
		0.455546, 0.584015, -0.671866,
		0.815013, 0.029984, 0.578667,
		28.142742, 35.638905, 36.067921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056171, 35.398113, 35.201443>,  <27.572233, 35.617916, 35.662853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056171, 35.398113, 35.201443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219498, 35.373116, 35.565723>,  <28.317493, 35.358116, 35.784290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219498, 35.373116, 35.565723>,  <28.056171, 35.398113, 35.201443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219498, 35.373116, 35.565723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377972, -0.896539, -0.230986,
		0.830911, 0.438534, -0.342453,
		0.408318, -0.062492, 0.910698,
		28.341993, 35.354366, 35.838932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747076, 35.231667, 35.006115>,  <28.056171, 35.398113, 35.201443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747076, 35.231667, 35.006115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707752, 35.107647, 35.384365>,  <28.684158, 35.033237, 35.611317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707752, 35.107647, 35.384365>,  <28.747076, 35.231667, 35.006115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707752, 35.107647, 35.384365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542708, -0.813193, -0.210202,
		0.834148, 0.492533, 0.248210,
		-0.098311, -0.310045, 0.945625,
		28.678259, 35.014633, 35.668053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473297, 34.976711, 35.300877>,  <28.747076, 35.231667, 35.006115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473297, 34.976711, 35.300877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215864, 34.832565, 35.570969>,  <29.061405, 34.746078, 35.733025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215864, 34.832565, 35.570969>,  <29.473297, 34.976711, 35.300877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215864, 34.832565, 35.570969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460620, -0.886934, -0.034320,
		0.611255, 0.288939, 0.736805,
		-0.643581, -0.360365, 0.675234,
		29.022789, 34.724457, 35.773540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947489, 34.685551, 35.889603>,  <29.473297, 34.976711, 35.300877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947489, 34.685551, 35.889603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589981, 34.506172, 35.886242>,  <29.375477, 34.398544, 35.884228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589981, 34.506172, 35.886242>,  <29.947489, 34.685551, 35.889603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589981, 34.506172, 35.886242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431560, -0.854715, -0.288476,
		0.122189, -0.261455, 0.957450,
		-0.893770, -0.448446, -0.008397,
		29.321850, 34.371639, 35.883724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015232, 33.989239, 36.154404>,  <29.947489, 34.685551, 35.889603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015232, 33.989239, 36.154404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665493, 33.940834, 35.966415>,  <29.455650, 33.911793, 35.853622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665493, 33.940834, 35.966415>,  <30.015232, 33.989239, 36.154404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665493, 33.940834, 35.966415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341138, -0.842037, -0.417849,
		-0.345167, -0.525670, 0.777516,
		-0.874348, -0.121013, -0.469970,
		29.403189, 33.904530, 35.825424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883892, 33.386871, 36.233658>,  <30.015232, 33.989239, 36.154404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883892, 33.386871, 36.233658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614851, 33.463493, 35.947746>,  <29.453426, 33.509468, 35.776199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614851, 33.463493, 35.947746>,  <29.883892, 33.386871, 36.233658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614851, 33.463493, 35.947746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080477, -0.941250, -0.327981,
		-0.735614, -0.278124, 0.617672,
		-0.672603, 0.191559, -0.714780,
		29.413071, 33.520962, 35.733311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398880, 32.715038, 36.131290>,  <29.883892, 33.386871, 36.233658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398880, 32.715038, 36.131290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.373081, 32.918087, 35.787624>,  <29.357601, 33.039917, 35.581425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.373081, 32.918087, 35.787624>,  <29.398880, 32.715038, 36.131290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373081, 32.918087, 35.787624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040868, -0.858888, -0.510531,
		-0.997081, -0.068040, 0.034651,
		-0.064498, 0.507624, -0.859161,
		29.353731, 33.070374, 35.529877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903667, 32.286896, 35.676945>,  <29.398880, 32.715038, 36.131290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903667, 32.286896, 35.676945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124132, 32.524353, 35.442402>,  <29.256411, 32.666828, 35.301678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124132, 32.524353, 35.442402>,  <28.903667, 32.286896, 35.676945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124132, 32.524353, 35.442402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034884, -0.718505, -0.694646,
		-0.833670, 0.362406, -0.416720,
		0.551160, 0.593643, -0.586354,
		29.289480, 32.702446, 35.266495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543072, 32.281223, 35.065350>,  <28.903667, 32.286896, 35.676945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543072, 32.281223, 35.065350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920568, 32.384933, 34.983250>,  <29.147066, 32.447159, 34.933990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920568, 32.384933, 34.983250>,  <28.543072, 32.281223, 35.065350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920568, 32.384933, 34.983250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080772, -0.782622, -0.617234,
		-0.320668, 0.565931, -0.759536,
		0.943742, 0.259276, -0.205250,
		29.203691, 32.462715, 34.921673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640730, 32.180931, 34.419193>,  <28.543072, 32.281223, 35.065350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640730, 32.180931, 34.419193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028698, 32.204456, 34.513680>,  <29.261478, 32.218571, 34.570370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028698, 32.204456, 34.513680>,  <28.640730, 32.180931, 34.419193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028698, 32.204456, 34.513680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201930, -0.736299, -0.645824,
		0.135944, 0.674096, -0.726026,
		0.969919, 0.058811, 0.236216,
		29.319674, 32.222099, 34.584545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055166, 32.362354, 33.810608>,  <28.640730, 32.180931, 34.419193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055166, 32.362354, 33.810608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272675, 32.142704, 34.064465>,  <29.403179, 32.010914, 34.216778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272675, 32.142704, 34.064465>,  <29.055166, 32.362354, 33.810608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272675, 32.142704, 34.064465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147071, -0.682167, -0.716253,
		0.826247, 0.482816, -0.290183,
		0.543771, -0.549124, 0.634646,
		29.435806, 31.977966, 34.254860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539923, 32.004314, 33.404446>,  <29.055166, 32.362354, 33.810608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539923, 32.004314, 33.404446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571526, 31.817270, 33.756603>,  <29.590487, 31.705044, 33.967899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571526, 31.817270, 33.756603>,  <29.539923, 32.004314, 33.404446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571526, 31.817270, 33.756603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185267, -0.860885, -0.473871,
		0.979507, 0.200547, 0.018617,
		0.079006, -0.467609, 0.880397,
		29.595228, 31.676987, 34.020721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135567, 31.641596, 33.425144>,  <29.539923, 32.004314, 33.404446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135567, 31.641596, 33.425144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891085, 31.464718, 33.687714>,  <29.744394, 31.358591, 33.845257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891085, 31.464718, 33.687714>,  <30.135567, 31.641596, 33.425144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891085, 31.464718, 33.687714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160043, -0.881288, -0.444656,
		0.775121, -0.166721, 0.609419,
		-0.611206, -0.442195, 0.656422,
		29.707724, 31.332060, 33.884640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438652, 31.025085, 33.681641>,  <30.135567, 31.641596, 33.425144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438652, 31.025085, 33.681641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.062611, 30.937967, 33.786533>,  <29.836985, 30.885696, 33.849468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.062611, 30.937967, 33.786533>,  <30.438652, 31.025085, 33.681641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062611, 30.937967, 33.786533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159023, -0.960644, -0.227759,
		0.301520, -0.172416, 0.937742,
		-0.940105, -0.217797, 0.262235,
		29.780579, 30.872629, 33.865204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498066, 30.361914, 33.857742>,  <30.438652, 31.025085, 33.681641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498066, 30.361914, 33.857742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109560, 30.440580, 33.804127>,  <29.876455, 30.487780, 33.771957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109560, 30.440580, 33.804127>,  <30.498066, 30.361914, 33.857742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109560, 30.440580, 33.804127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112524, -0.875721, -0.469523,
		-0.209717, -0.440949, 0.872687,
		-0.971266, 0.196665, -0.134037,
		29.818180, 30.499580, 33.763916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164030, 29.683186, 33.975552>,  <30.498066, 30.361914, 33.857742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164030, 29.683186, 33.975552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899027, 29.900133, 33.768894>,  <29.740025, 30.030302, 33.644897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899027, 29.900133, 33.768894>,  <30.164030, 29.683186, 33.975552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899027, 29.900133, 33.768894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189813, -0.788774, -0.584643,
		-0.724606, -0.289265, 0.625518,
		-0.662508, 0.542367, -0.516644,
		29.700275, 30.062843, 33.613899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687933, 29.243216, 33.735958>,  <30.164030, 29.683186, 33.975552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687933, 29.243216, 33.735958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.652769, 29.570772, 33.509087>,  <29.631672, 29.767305, 33.372963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.652769, 29.570772, 33.509087>,  <29.687933, 29.243216, 33.735958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652769, 29.570772, 33.509087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053981, -0.572461, -0.818153,
		-0.994665, -0.041306, 0.094529,
		-0.087909, 0.818891, -0.567177,
		29.626396, 29.816439, 33.338932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451912, 28.876604, 33.090366>,  <29.687933, 29.243216, 33.735958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451912, 28.876604, 33.090366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502796, 29.255972, 32.974220>,  <29.533327, 29.483593, 32.904533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502796, 29.255972, 32.974220>,  <29.451912, 28.876604, 33.090366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502796, 29.255972, 32.974220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075237, -0.301129, -0.950610,
		-0.989018, 0.099081, -0.109664,
		0.127210, 0.948422, -0.290368,
		29.540958, 29.540499, 32.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916534, 29.127285, 32.455414>,  <29.451912, 28.876604, 33.090366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916534, 29.127285, 32.455414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268448, 29.315742, 32.480728>,  <29.479595, 29.428818, 32.495914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268448, 29.315742, 32.480728>,  <28.916534, 29.127285, 32.455414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268448, 29.315742, 32.480728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217947, -0.281465, -0.934492,
		-0.422469, 0.835943, -0.350313,
		0.879783, 0.471144, 0.063281,
		29.532383, 29.457087, 32.499714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921856, 29.505760, 31.963200>,  <28.916534, 29.127285, 32.455414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921856, 29.505760, 31.963200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301825, 29.410629, 32.044273>,  <29.529806, 29.353550, 32.092918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301825, 29.410629, 32.044273>,  <28.921856, 29.505760, 31.963200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301825, 29.410629, 32.044273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110887, -0.349865, -0.930214,
		0.292145, 0.906108, -0.305973,
		0.949924, -0.237829, 0.202687,
		29.586802, 29.339281, 32.105080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.165806, 41.647396, 44.584919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769264, 41.680283, 44.544003>,  <32.531342, 41.700016, 44.519451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769264, 41.680283, 44.544003>,  <33.165806, 41.647396, 44.584919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769264, 41.680283, 44.544003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007222, 0.744090, 0.668040,
		0.131039, 0.663001, -0.737060,
		-0.991351, 0.082216, -0.102293,
		32.471859, 41.704948, 44.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047470, 42.374229, 44.552467>,  <33.165806, 41.647396, 44.584919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047470, 42.374229, 44.552467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.698559, 42.220863, 44.673870>,  <32.489212, 42.128841, 44.746712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.698559, 42.220863, 44.673870>,  <33.047470, 42.374229, 44.552467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698559, 42.220863, 44.673870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000980, 0.622028, 0.782995,
		-0.489004, 0.682694, -0.542959,
		-0.872281, -0.383419, 0.303505,
		32.436874, 42.105839, 44.764923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614220, 42.982727, 44.633366>,  <33.047470, 42.374229, 44.552467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614220, 42.982727, 44.633366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428127, 42.700897, 44.847706>,  <32.316471, 42.531799, 44.976311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428127, 42.700897, 44.847706>,  <32.614220, 42.982727, 44.633366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428127, 42.700897, 44.847706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180459, 0.517148, 0.836655,
		-0.866602, 0.485933, -0.113444,
		-0.465226, -0.704575, 0.535853,
		32.288559, 42.489525, 45.008461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339954, 43.358639, 45.201336>,  <32.614220, 42.982727, 44.633366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339954, 43.358639, 45.201336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334770, 42.976387, 45.319046>,  <32.331661, 42.747036, 45.389671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334770, 42.976387, 45.319046>,  <32.339954, 43.358639, 45.201336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334770, 42.976387, 45.319046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225098, 0.283958, 0.932040,
		-0.974250, 0.078318, 0.211431,
		-0.012958, -0.955633, 0.294275,
		32.330883, 42.689697, 45.407330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995052, 43.347095, 45.919250>,  <32.339954, 43.358639, 45.201336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995052, 43.347095, 45.919250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236481, 43.030682, 45.879318>,  <32.381336, 42.840832, 45.855358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236481, 43.030682, 45.879318>,  <31.995052, 43.347095, 45.919250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236481, 43.030682, 45.879318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323204, 0.128282, 0.937594,
		-0.728863, -0.598170, 0.333093,
		0.603571, -0.791035, -0.099831,
		32.417553, 42.793369, 45.849369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952902, 42.917206, 46.507168>,  <31.995052, 43.347095, 45.919250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952902, 42.917206, 46.507168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304932, 42.804897, 46.353992>,  <32.516148, 42.737511, 46.262089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304932, 42.804897, 46.353992>,  <31.952902, 42.917206, 46.507168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304932, 42.804897, 46.353992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385031, -0.049999, 0.921548,
		-0.277890, -0.958472, 0.064103,
		0.880073, -0.280771, -0.382935,
		32.568954, 42.720665, 46.239113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270199, 42.528000, 47.003067>,  <31.952902, 42.917206, 46.507168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270199, 42.528000, 47.003067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601517, 42.598682, 46.790386>,  <32.800308, 42.641090, 46.662777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601517, 42.598682, 46.790386>,  <32.270199, 42.528000, 47.003067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601517, 42.598682, 46.790386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517963, 0.120347, 0.846895,
		0.213641, -0.976878, 0.008154,
		0.828294, 0.176708, -0.531698,
		32.850006, 42.651695, 46.630878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922047, 42.199398, 47.351292>,  <32.270199, 42.528000, 47.003067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922047, 42.199398, 47.351292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083973, 42.464512, 47.099312>,  <33.181129, 42.623581, 46.948124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083973, 42.464512, 47.099312>,  <32.922047, 42.199398, 47.351292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083973, 42.464512, 47.099312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621566, 0.305824, 0.721199,
		0.670654, -0.683510, -0.288162,
		0.404820, 0.662787, -0.629949,
		33.205418, 42.663349, 46.910328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617821, 42.100079, 47.337284>,  <32.922047, 42.199398, 47.351292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617821, 42.100079, 47.337284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550667, 42.485718, 47.254986>,  <33.510372, 42.717102, 47.205608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550667, 42.485718, 47.254986>,  <33.617821, 42.100079, 47.337284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550667, 42.485718, 47.254986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513087, 0.263667, 0.816837,
		0.841757, 0.031574, -0.538932,
		-0.167889, 0.964097, -0.205743,
		33.500301, 42.774948, 47.193264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105534, 42.446503, 47.604988>,  <33.617821, 42.100079, 47.337284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105534, 42.446503, 47.604988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851547, 42.750614, 47.550148>,  <33.699154, 42.933079, 47.517246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851547, 42.750614, 47.550148>,  <34.105534, 42.446503, 47.604988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851547, 42.750614, 47.550148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360876, 0.448816, 0.817516,
		0.683069, 0.469622, -0.559349,
		-0.634969, 0.760276, -0.137097,
		33.661057, 42.978699, 47.509018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498394, 43.107571, 47.617573>,  <34.105534, 42.446503, 47.604988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498394, 43.107571, 47.617573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116596, 43.186836, 47.706711>,  <33.887516, 43.234398, 47.760193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116596, 43.186836, 47.706711>,  <34.498394, 43.107571, 47.617573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116596, 43.186836, 47.706711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297423, 0.578131, 0.759806,
		0.021733, 0.791514, -0.610764,
		-0.954499, 0.198168, 0.222850,
		33.830246, 43.246288, 47.773567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452038, 43.840034, 47.704952>,  <34.498394, 43.107571, 47.617573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452038, 43.840034, 47.704952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139328, 43.687122, 47.902004>,  <33.951702, 43.595375, 48.020237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139328, 43.687122, 47.902004>,  <34.452038, 43.840034, 47.704952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139328, 43.687122, 47.902004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219773, 0.570411, 0.791411,
		-0.583544, 0.726974, -0.361919,
		-0.781778, -0.382283, 0.492629,
		33.904797, 43.572437, 48.049793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107056, 44.351345, 48.125290>,  <34.452038, 43.840034, 47.704952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107056, 44.351345, 48.125290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013157, 44.013073, 48.317005>,  <33.956818, 43.810112, 48.432034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013157, 44.013073, 48.317005>,  <34.107056, 44.351345, 48.125290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013157, 44.013073, 48.317005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066611, 0.477915, 0.875877,
		-0.969771, 0.237539, -0.055860,
		-0.234751, -0.845679, 0.479291,
		33.942730, 43.759369, 48.460793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621605, 44.516266, 48.750172>,  <34.107056, 44.351345, 48.125290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621605, 44.516266, 48.750172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829369, 44.192734, 48.860458>,  <33.954025, 43.998615, 48.926628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829369, 44.192734, 48.860458>,  <33.621605, 44.516266, 48.750172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829369, 44.192734, 48.860458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037470, 0.300784, 0.952956,
		-0.853706, -0.505302, 0.125923,
		0.519406, -0.808826, 0.275715,
		33.985191, 43.950085, 48.943172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083233, 45.115700, 48.864582>,  <33.621605, 44.516266, 48.750172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083233, 45.115700, 48.864582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889896, 45.453846, 48.955563>,  <32.773895, 45.656734, 49.010151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889896, 45.453846, 48.955563>,  <33.083233, 45.115700, 48.864582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889896, 45.453846, 48.955563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180101, 0.158232, -0.970838,
		-0.856704, -0.510212, 0.075771,
		-0.483344, 0.845368, 0.227447,
		32.744892, 45.707455, 49.023796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498741, 45.109783, 48.500046>,  <33.083233, 45.115700, 48.864582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498741, 45.109783, 48.500046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519974, 45.497952, 48.594242>,  <32.532711, 45.730854, 48.650761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519974, 45.497952, 48.594242>,  <32.498741, 45.109783, 48.500046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519974, 45.497952, 48.594242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120770, 0.240334, -0.963148,
		-0.991260, 0.022681, 0.129955,
		0.053078, 0.970425, 0.235494,
		32.535896, 45.789078, 48.664890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951885, 45.480919, 48.266300>,  <32.498741, 45.109783, 48.500046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951885, 45.480919, 48.266300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236427, 45.759968, 48.300461>,  <32.407154, 45.927399, 48.320957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236427, 45.759968, 48.300461>,  <31.951885, 45.480919, 48.266300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236427, 45.759968, 48.300461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189279, 0.307174, -0.932640,
		-0.676867, 0.647273, 0.350555,
		0.711354, 0.697626, 0.085401,
		32.449833, 45.969257, 48.326080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697569, 46.052490, 47.774746>,  <31.951885, 45.480919, 48.266300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697569, 46.052490, 47.774746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087769, 46.109238, 47.842003>,  <32.321888, 46.143288, 47.882359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087769, 46.109238, 47.842003>,  <31.697569, 46.052490, 47.774746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087769, 46.109238, 47.842003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124687, 0.273154, -0.953856,
		-0.181255, 0.951451, 0.248771,
		0.975500, 0.141873, 0.168144,
		32.380417, 46.151798, 47.892445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733772, 46.653008, 47.466160>,  <31.697569, 46.052490, 47.774746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733772, 46.653008, 47.466160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093552, 46.479767, 47.489525>,  <32.309418, 46.375824, 47.503544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093552, 46.479767, 47.489525>,  <31.733772, 46.653008, 47.466160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093552, 46.479767, 47.489525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158955, 0.199706, -0.966877,
		0.407091, 0.878942, 0.248469,
		0.899450, -0.433103, 0.058414,
		32.363388, 46.349834, 47.507050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131454, 47.012993, 46.997494>,  <31.733772, 46.653008, 47.466160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131454, 47.012993, 46.997494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358990, 46.687656, 47.046329>,  <32.495510, 46.492455, 47.075630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358990, 46.687656, 47.046329>,  <32.131454, 47.012993, 46.997494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358990, 46.687656, 47.046329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027665, -0.129440, -0.991201,
		0.821984, 0.567211, -0.051129,
		0.568838, -0.813337, 0.122089,
		32.529640, 46.443657, 47.082958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655151, 47.152954, 46.496956>,  <32.131454, 47.012993, 46.997494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655151, 47.152954, 46.496956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.624836, 46.762749, 46.579536>,  <32.606647, 46.528625, 46.629086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.624836, 46.762749, 46.579536>,  <32.655151, 47.152954, 46.496956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624836, 46.762749, 46.579536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137468, -0.215294, -0.966825,
		0.987602, -0.044896, 0.150420,
		-0.075791, -0.975517, 0.206453,
		32.602100, 46.470093, 46.641472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225479, 46.969902, 46.118942>,  <32.655151, 47.152954, 46.496956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225479, 46.969902, 46.118942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016796, 46.632721, 46.171486>,  <32.891586, 46.430412, 46.203011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016796, 46.632721, 46.171486>,  <33.225479, 46.969902, 46.118942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016796, 46.632721, 46.171486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259448, -0.303444, -0.916847,
		0.812716, -0.444246, 0.377011,
		-0.521708, -0.842951, 0.131355,
		32.860283, 46.379837, 46.210892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510052, 46.584419, 45.631809>,  <33.225479, 46.969902, 46.118942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510052, 46.584419, 45.631809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177891, 46.381760, 45.724541>,  <32.978596, 46.260166, 45.780178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177891, 46.381760, 45.724541>,  <33.510052, 46.584419, 45.631809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177891, 46.381760, 45.724541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008518, -0.404492, -0.914502,
		0.557101, -0.761378, 0.331575,
		-0.830401, -0.506645, 0.231829,
		32.928772, 46.229767, 45.794090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686771, 45.869167, 45.641907>,  <33.510052, 46.584419, 45.631809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686771, 45.869167, 45.641907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295662, 45.885750, 45.559689>,  <33.060997, 45.895699, 45.510357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295662, 45.885750, 45.559689>,  <33.686771, 45.869167, 45.641907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295662, 45.885750, 45.559689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159863, -0.486976, -0.858661,
		-0.135689, -0.872431, 0.469524,
		-0.977769, 0.041452, -0.205547,
		33.002331, 45.898186, 45.498024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546768, 45.267467, 45.521664>,  <33.686771, 45.869167, 45.641907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546768, 45.267467, 45.521664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239769, 45.451687, 45.343296>,  <33.055569, 45.562218, 45.236275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239769, 45.451687, 45.343296>,  <33.546768, 45.267467, 45.521664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239769, 45.451687, 45.343296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180938, -0.511696, -0.839898,
		-0.614991, -0.725301, 0.309392,
		-0.767494, 0.460549, -0.445923,
		33.009521, 45.589851, 45.209518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045273, 44.804775, 45.249634>,  <33.546768, 45.267467, 45.521664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045273, 44.804775, 45.249634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018959, 45.135284, 45.025867>,  <33.003170, 45.333591, 44.891609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018959, 45.135284, 45.025867>,  <33.045273, 44.804775, 45.249634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018959, 45.135284, 45.025867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067158, -0.555689, -0.828673,
		-0.995571, -0.092084, -0.018934,
		-0.065786, 0.826275, -0.559412,
		32.999222, 45.383167, 44.858044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711617, 44.557137, 44.701538>,  <33.045273, 44.804775, 45.249634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711617, 44.557137, 44.701538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816799, 44.923164, 44.579224>,  <32.879910, 45.142780, 44.505836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816799, 44.923164, 44.579224>,  <32.711617, 44.557137, 44.701538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816799, 44.923164, 44.579224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229682, -0.367201, -0.901338,
		-0.937069, 0.166782, -0.306734,
		0.262959, 0.915067, -0.305786,
		32.895687, 45.197685, 44.487488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383503, 44.734615, 44.093925>,  <32.711617, 44.557137, 44.701538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383503, 44.734615, 44.093925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722523, 44.946724, 44.102562>,  <32.925934, 45.073990, 44.107742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722523, 44.946724, 44.102562>,  <32.383503, 44.734615, 44.093925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722523, 44.946724, 44.102562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218463, -0.311524, -0.924785,
		-0.483665, 0.788518, -0.379878,
		0.847550, 0.530275, 0.021588,
		32.976788, 45.105808, 44.109039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731976, 45.067497, 43.769455>,  <32.383503, 44.734615, 44.093925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731976, 45.067497, 43.769455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368473, 44.905064, 43.730968>,  <31.150372, 44.807602, 43.707878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368473, 44.905064, 43.730968>,  <31.731976, 45.067497, 43.769455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368473, 44.905064, 43.730968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152582, 0.108714, 0.982293,
		-0.388433, 0.907346, -0.160756,
		-0.908756, -0.406084, -0.096217,
		31.095846, 44.783237, 43.702103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282990, 45.445343, 44.201328>,  <31.731976, 45.067497, 43.769455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282990, 45.445343, 44.201328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.126028, 45.080570, 44.153332>,  <31.031851, 44.861706, 44.124535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.126028, 45.080570, 44.153332>,  <31.282990, 45.445343, 44.201328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126028, 45.080570, 44.153332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285865, -0.003084, 0.958265,
		-0.874243, 0.410327, -0.259480,
		-0.392402, -0.911933, -0.119994,
		31.008307, 44.806992, 44.117332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603106, 45.564926, 44.406696>,  <31.282990, 45.445343, 44.201328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603106, 45.564926, 44.406696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668873, 45.172779, 44.450237>,  <30.708332, 44.937492, 44.476364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668873, 45.172779, 44.450237>,  <30.603106, 45.564926, 44.406696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668873, 45.172779, 44.450237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421844, 0.029872, 0.906176,
		-0.891636, -0.194911, -0.408650,
		0.164416, -0.980366, 0.108857,
		30.718199, 44.878670, 44.482895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051773, 45.435310, 44.917278>,  <30.603106, 45.564926, 44.406696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051773, 45.435310, 44.917278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289326, 45.113548, 44.923340>,  <30.431858, 44.920490, 44.926975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289326, 45.113548, 44.923340>,  <30.051773, 45.435310, 44.917278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289326, 45.113548, 44.923340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118686, -0.068962, 0.990534,
		-0.795750, -0.590059, -0.136427,
		0.593882, -0.804409, 0.015155,
		30.467491, 44.872227, 44.927887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726765, 44.887459, 45.263477>,  <30.051773, 45.435310, 44.917278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726765, 44.887459, 45.263477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102573, 44.770790, 45.335285>,  <30.328058, 44.700790, 45.378368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102573, 44.770790, 45.335285>,  <29.726765, 44.887459, 45.263477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102573, 44.770790, 45.335285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225313, -0.131618, 0.965355,
		-0.257942, -0.947419, -0.189376,
		0.939521, -0.291675, 0.179516,
		30.384430, 44.683289, 45.389141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608633, 44.323627, 45.671211>,  <29.726765, 44.887459, 45.263477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608633, 44.323627, 45.671211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.994574, 44.413364, 45.725964>,  <30.226137, 44.467205, 45.758816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.994574, 44.413364, 45.725964>,  <29.608633, 44.323627, 45.671211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994574, 44.413364, 45.725964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100342, -0.166906, 0.980854,
		0.242890, -0.960112, -0.138528,
		0.964850, 0.224339, 0.136879,
		30.284029, 44.480667, 45.767029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952301, 43.773361, 46.113117>,  <29.608633, 44.323627, 45.671211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952301, 43.773361, 46.113117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.178860, 44.098598, 46.166885>,  <30.314795, 44.293739, 46.199146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.178860, 44.098598, 46.166885>,  <29.952301, 43.773361, 46.113117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178860, 44.098598, 46.166885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023984, -0.146779, 0.988879,
		0.823783, -0.563323, -0.063634,
		0.566399, 0.813095, 0.134424,
		30.348780, 44.342525, 46.207214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993069, 43.006550, 46.302925>,  <29.952301, 43.773361, 46.113117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993069, 43.006550, 46.302925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.729795, 42.713245, 46.371185>,  <29.571831, 42.537262, 46.412140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.729795, 42.713245, 46.371185>,  <29.993069, 43.006550, 46.302925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729795, 42.713245, 46.371185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190255, -0.057309, -0.980061,
		0.728421, -0.677527, -0.101786,
		-0.658185, -0.733262, 0.170648,
		29.532341, 42.493267, 46.422379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136019, 42.559673, 45.791931>,  <29.993069, 43.006550, 46.302925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136019, 42.559673, 45.791931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770617, 42.469299, 45.927261>,  <29.551376, 42.415073, 46.008457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770617, 42.469299, 45.927261>,  <30.136019, 42.559673, 45.791931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770617, 42.469299, 45.927261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285307, -0.237043, -0.928661,
		0.290015, -0.944861, 0.152079,
		-0.913504, -0.225937, 0.338322,
		29.496565, 42.401520, 46.028759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054670, 41.889599, 45.468998>,  <30.136019, 42.559673, 45.791931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054670, 41.889599, 45.468998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.676752, 41.939575, 45.590160>,  <29.450001, 41.969559, 45.662857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.676752, 41.939575, 45.590160>,  <30.054670, 41.889599, 45.468998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676752, 41.939575, 45.590160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327062, -0.415645, -0.848687,
		0.019871, -0.900905, 0.433561,
		-0.944794, 0.124937, 0.302911,
		29.393314, 41.977055, 45.681034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704557, 41.204140, 45.511826>,  <30.054670, 41.889599, 45.468998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704557, 41.204140, 45.511826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.422621, 41.479813, 45.444630>,  <29.253458, 41.645218, 45.404312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.422621, 41.479813, 45.444630>,  <29.704557, 41.204140, 45.511826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422621, 41.479813, 45.444630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118532, -0.347917, -0.930002,
		-0.699392, -0.635591, 0.326916,
		-0.704841, 0.689186, -0.167993,
		29.211168, 41.686569, 45.394234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159040, 40.896488, 45.096970>,  <29.704557, 41.204140, 45.511826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159040, 40.896488, 45.096970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.141476, 41.291870, 45.038956>,  <29.130936, 41.529099, 45.004147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.141476, 41.291870, 45.038956>,  <29.159040, 40.896488, 45.096970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141476, 41.291870, 45.038956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144482, -0.149933, -0.978082,
		-0.988532, -0.021996, 0.149397,
		-0.043913, 0.988451, -0.145036,
		29.128302, 41.588406, 44.995445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907576, 40.877800, 44.442337>,  <29.159040, 40.896488, 45.096970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907576, 40.877800, 44.442337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.005920, 41.265327, 44.454666>,  <29.064928, 41.497845, 44.462063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.005920, 41.265327, 44.454666>,  <28.907576, 40.877800, 44.442337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005920, 41.265327, 44.454666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050307, 0.044509, -0.997741,
		-0.967998, 0.243758, 0.059681,
		0.245863, 0.968814, 0.030821,
		29.079679, 41.555973, 44.463913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397799, 41.257912, 43.983906>,  <28.907576, 40.877800, 44.442337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397799, 41.257912, 43.983906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.751652, 41.439037, 44.028412>,  <28.963964, 41.547714, 44.055115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.751652, 41.439037, 44.028412>,  <28.397799, 41.257912, 43.983906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751652, 41.439037, 44.028412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110088, 0.029043, -0.993497,
		-0.453104, 0.891130, -0.024158,
		0.884634, 0.452817, 0.111262,
		29.017042, 41.574883, 44.061790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.983057, 41.847984, 49.036770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198025, 42.014198, 48.743237>,  <32.327007, 42.113926, 48.567116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198025, 42.014198, 48.743237>,  <31.983057, 41.847984, 49.036770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198025, 42.014198, 48.743237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081338, -0.840581, -0.535544,
		-0.839383, 0.347501, -0.417947,
		0.537420, 0.415532, -0.733834,
		32.359249, 42.138859, 48.523087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788151, 41.565380, 48.411835>,  <31.983057, 41.847984, 49.036770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788151, 41.565380, 48.411835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.159359, 41.702450, 48.353382>,  <32.382084, 41.784691, 48.318310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.159359, 41.702450, 48.353382>,  <31.788151, 41.565380, 48.411835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159359, 41.702450, 48.353382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171040, -0.740404, -0.650036,
		-0.330946, 0.578252, -0.745721,
		0.928019, 0.342675, -0.146129,
		32.437763, 41.805252, 48.309544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895739, 41.561649, 47.636417>,  <31.788151, 41.565380, 48.411835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895739, 41.561649, 47.636417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261013, 41.575485, 47.798847>,  <32.480179, 41.583786, 47.896305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261013, 41.575485, 47.798847>,  <31.895739, 41.561649, 47.636417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261013, 41.575485, 47.798847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313783, -0.695503, -0.646387,
		0.260069, 0.717690, -0.645976,
		0.913184, 0.034591, 0.406077,
		32.534969, 41.585861, 47.920670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324009, 41.564907, 47.078045>,  <31.895739, 41.561649, 47.636417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324009, 41.564907, 47.078045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577774, 41.459587, 47.368755>,  <32.730034, 41.396397, 47.543182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577774, 41.459587, 47.368755>,  <32.324009, 41.564907, 47.078045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577774, 41.459587, 47.368755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439258, -0.650854, -0.619227,
		0.636065, 0.712084, -0.297251,
		0.634409, -0.263298, 0.726774,
		32.768097, 41.380596, 47.586788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030491, 41.593250, 46.910160>,  <32.324009, 41.564907, 47.078045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030491, 41.593250, 46.910160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020863, 41.318089, 47.200321>,  <33.015087, 41.152992, 47.374416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020863, 41.318089, 47.200321>,  <33.030491, 41.593250, 46.910160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020863, 41.318089, 47.200321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356005, -0.683942, -0.636776,
		0.934174, 0.242920, 0.261359,
		-0.024069, -0.687905, 0.725402,
		33.013641, 41.111717, 47.417942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598328, 41.149628, 46.827034>,  <33.030491, 41.593250, 46.910160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598328, 41.149628, 46.827034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.403996, 40.912117, 47.083595>,  <33.287395, 40.769611, 47.237534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.403996, 40.912117, 47.083595>,  <33.598328, 41.149628, 46.827034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403996, 40.912117, 47.083595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229412, -0.794721, -0.561950,
		0.843411, -0.125865, 0.522317,
		-0.485826, -0.593781, 0.641402,
		33.258247, 40.733982, 47.276016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046108, 40.569435, 46.837399>,  <33.598328, 41.149628, 46.827034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046108, 40.569435, 46.837399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672855, 40.468842, 46.940174>,  <33.448902, 40.408485, 47.001839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672855, 40.468842, 46.940174>,  <34.046108, 40.569435, 46.837399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672855, 40.468842, 46.940174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061079, -0.815145, -0.576027,
		0.354307, -0.521816, 0.775999,
		-0.933132, -0.251488, 0.256939,
		33.392914, 40.393394, 47.017258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084232, 39.866150, 46.800182>,  <34.046108, 40.569435, 46.837399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084232, 39.866150, 46.800182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.686378, 39.905090, 46.814159>,  <33.447666, 39.928455, 46.822548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.686378, 39.905090, 46.814159>,  <34.084232, 39.866150, 46.800182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686378, 39.905090, 46.814159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101454, -0.852513, -0.512766,
		-0.020124, -0.513561, 0.857817,
		-0.994637, 0.097348, 0.034946,
		33.387989, 39.934296, 46.824642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732430, 39.290302, 47.181396>,  <34.084232, 39.866150, 46.800182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732430, 39.290302, 47.181396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.499416, 39.468700, 46.909588>,  <33.359608, 39.575737, 46.746502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.499416, 39.468700, 46.909588>,  <33.732430, 39.290302, 47.181396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499416, 39.468700, 46.909588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041075, -0.818796, -0.572614,
		-0.811760, -0.361484, 0.458667,
		-0.582545, 0.445985, -0.679513,
		33.324657, 39.602497, 46.705730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385536, 38.838921, 46.974564>,  <33.732430, 39.290302, 47.181396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385536, 38.838921, 46.974564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354668, 39.092693, 46.666916>,  <33.336147, 39.244957, 46.482327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354668, 39.092693, 46.666916>,  <33.385536, 38.838921, 46.974564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354668, 39.092693, 46.666916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095573, -0.763159, -0.639105,
		-0.992427, -0.122825, -0.001742,
		-0.077168, 0.634431, -0.769117,
		33.331516, 39.283024, 46.436180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850590, 38.537891, 46.490131>,  <33.385536, 38.838921, 46.974564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850590, 38.537891, 46.490131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029846, 38.818298, 46.268230>,  <33.137402, 38.986542, 46.135090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029846, 38.818298, 46.268230>,  <32.850590, 38.537891, 46.490131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029846, 38.818298, 46.268230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095094, -0.654415, -0.750132,
		-0.888891, 0.283410, -0.359933,
		0.448141, 0.701013, -0.554753,
		33.164288, 39.028603, 46.101803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501823, 38.545128, 45.786617>,  <32.850590, 38.537891, 46.490131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501823, 38.545128, 45.786617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.858700, 38.720081, 45.741554>,  <33.072826, 38.825054, 45.714516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.858700, 38.720081, 45.741554>,  <32.501823, 38.545128, 45.786617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858700, 38.720081, 45.741554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221364, -0.640877, -0.735034,
		-0.393689, 0.630854, -0.668605,
		0.892192, 0.437379, -0.112658,
		33.126358, 38.851295, 45.707756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794088, 38.831581, 45.659210>,  <32.501823, 38.545128, 45.786617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794088, 38.831581, 45.659210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.445866, 38.637558, 45.626106>,  <31.236933, 38.521145, 45.606243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.445866, 38.637558, 45.626106>,  <31.794088, 38.831581, 45.659210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445866, 38.637558, 45.626106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273749, 0.337651, 0.900585,
		-0.408891, 0.806667, -0.426729,
		-0.870557, -0.485058, -0.082762,
		31.184698, 38.492043, 45.601276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314947, 39.306427, 45.850536>,  <31.794088, 38.831581, 45.659210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314947, 39.306427, 45.850536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.181324, 38.933289, 45.904491>,  <31.101151, 38.709404, 45.936863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.181324, 38.933289, 45.904491>,  <31.314947, 39.306427, 45.850536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181324, 38.933289, 45.904491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232843, 0.220349, 0.947223,
		-0.913339, 0.285021, -0.290817,
		-0.334059, -0.932850, 0.134889,
		31.081106, 38.653435, 45.944958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712393, 39.390236, 46.196751>,  <31.314947, 39.306427, 45.850536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712393, 39.390236, 46.196751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820698, 39.011280, 46.265030>,  <30.885681, 38.783905, 46.306000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820698, 39.011280, 46.265030>,  <30.712393, 39.390236, 46.196751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820698, 39.011280, 46.265030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140116, 0.136652, 0.980660,
		-0.952394, -0.289444, -0.095744,
		0.270763, -0.947390, 0.170702,
		30.901926, 38.727062, 46.316242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410480, 39.244869, 46.773785>,  <30.712393, 39.390236, 46.196751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410480, 39.244869, 46.773785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681093, 38.950314, 46.771496>,  <30.843462, 38.773579, 46.770123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681093, 38.950314, 46.771496>,  <30.410480, 39.244869, 46.773785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681093, 38.950314, 46.771496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010945, 0.002286, 0.999938,
		-0.736331, -0.676553, 0.009607,
		0.676533, -0.736390, -0.005721,
		30.884052, 38.729397, 46.769779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059338, 38.648075, 46.939850>,  <30.410480, 39.244869, 46.773785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059338, 38.648075, 46.939850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.442444, 38.617020, 47.050602>,  <30.672308, 38.598385, 47.117054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.442444, 38.617020, 47.050602>,  <30.059338, 38.648075, 46.939850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442444, 38.617020, 47.050602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282178, -0.068406, 0.956920,
		-0.055366, -0.994631, -0.087428,
		0.957763, -0.077651, 0.276875,
		30.729773, 38.593727, 47.133663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959826, 38.321663, 47.521202>,  <30.059338, 38.648075, 46.939850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959826, 38.321663, 47.521202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.352932, 38.389957, 47.549541>,  <30.588797, 38.430935, 47.566544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.352932, 38.389957, 47.549541>,  <29.959826, 38.321663, 47.521202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352932, 38.389957, 47.549541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071347, -0.003215, 0.997446,
		0.170533, -0.985311, 0.009022,
		0.982765, 0.170741, 0.070848,
		30.647762, 38.441177, 47.570797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236580, 37.892952, 48.129211>,  <29.959826, 38.321663, 47.521202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236580, 37.892952, 48.129211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455437, 38.216293, 48.042305>,  <30.586750, 38.410297, 47.990162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455437, 38.216293, 48.042305>,  <30.236580, 37.892952, 48.129211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455437, 38.216293, 48.042305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002726, 0.261282, 0.965259,
		0.837036, -0.527540, 0.145161,
		0.547141, 0.808352, -0.217265,
		30.619579, 38.458797, 47.977127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793533, 37.999569, 48.592415>,  <30.236580, 37.892952, 48.129211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793533, 37.999569, 48.592415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.770594, 38.380817, 48.473576>,  <30.756830, 38.609566, 48.402271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.770594, 38.380817, 48.473576>,  <30.793533, 37.999569, 48.592415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770594, 38.380817, 48.473576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272726, 0.301225, 0.913720,
		0.960381, -0.028623, -0.277217,
		-0.057351, 0.953123, -0.297097,
		30.753389, 38.666756, 48.384445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274572, 38.361214, 49.076576>,  <30.793533, 37.999569, 48.592415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274572, 38.361214, 49.076576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.034105, 38.632515, 48.907547>,  <30.889824, 38.795296, 48.806129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.034105, 38.632515, 48.907547>,  <31.274572, 38.361214, 49.076576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034105, 38.632515, 48.907547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010210, 0.535276, 0.844616,
		0.799057, 0.503442, -0.328716,
		-0.601169, 0.678252, -0.422575,
		30.853754, 38.835991, 48.780773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576334, 38.954460, 49.317219>,  <31.274572, 38.361214, 49.076576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576334, 38.954460, 49.317219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213770, 39.048023, 49.176533>,  <30.996231, 39.104160, 49.092121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213770, 39.048023, 49.176533>,  <31.576334, 38.954460, 49.317219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213770, 39.048023, 49.176533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123671, 0.649212, 0.750486,
		0.403884, 0.723747, -0.559525,
		-0.906412, 0.233912, -0.351713,
		30.941847, 39.118198, 49.071018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566019, 39.734253, 49.315174>,  <31.576334, 38.954460, 49.317219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566019, 39.734253, 49.315174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.175350, 39.650383, 49.333714>,  <30.940948, 39.600063, 49.344837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.175350, 39.650383, 49.333714>,  <31.566019, 39.734253, 49.315174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175350, 39.650383, 49.333714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150219, 0.821370, 0.550259,
		-0.153441, 0.530461, -0.833707,
		-0.976673, -0.209671, 0.046347,
		30.882349, 39.587482, 49.347618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317562, 40.319843, 49.090012>,  <31.566019, 39.734253, 49.315174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317562, 40.319843, 49.090012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044359, 40.129169, 49.311378>,  <30.880438, 40.014767, 49.444199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044359, 40.129169, 49.311378>,  <31.317562, 40.319843, 49.090012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044359, 40.129169, 49.311378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181222, 0.844584, 0.503821,
		-0.707575, 0.243820, -0.663241,
		-0.683005, -0.476685, 0.553421,
		30.839458, 39.986164, 49.477406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475033, 40.503033, 48.989151>,  <31.317562, 40.319843, 49.090012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475033, 40.503033, 48.989151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588274, 40.386311, 49.354599>,  <30.656218, 40.316277, 49.573868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588274, 40.386311, 49.354599>,  <30.475033, 40.503033, 48.989151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588274, 40.386311, 49.354599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529940, 0.746376, 0.402599,
		-0.799386, -0.598140, 0.056660,
		0.283101, -0.291806, 0.913621,
		30.673204, 40.298767, 49.628685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171154, 40.951775, 49.310883>,  <30.475033, 40.503033, 48.989151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171154, 40.951775, 49.310883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.329439, 40.746071, 49.615238>,  <30.424410, 40.622646, 49.797852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.329439, 40.746071, 49.615238>,  <30.171154, 40.951775, 49.310883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329439, 40.746071, 49.615238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404993, 0.645883, 0.647159,
		-0.824252, -0.564242, 0.047311,
		0.395713, -0.514262, 0.760885,
		30.448153, 40.591793, 49.843502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413055, 41.158318, 48.593403>,  <30.171154, 40.951775, 49.310883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413055, 41.158318, 48.593403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.216978, 41.455448, 48.775795>,  <30.099331, 41.633724, 48.885231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.216978, 41.455448, 48.775795>,  <30.413055, 41.158318, 48.593403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216978, 41.455448, 48.775795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369909, 0.296402, -0.880519,
		-0.789225, -0.600298, 0.129482,
		-0.490195, 0.742824, 0.455983,
		30.069920, 41.678295, 48.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605457, 41.072655, 48.480927>,  <30.413055, 41.158318, 48.593403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605457, 41.072655, 48.480927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.696068, 41.449623, 48.579330>,  <29.750435, 41.675804, 48.638374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.696068, 41.449623, 48.579330>,  <29.605457, 41.072655, 48.480927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696068, 41.449623, 48.579330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325711, 0.311332, -0.892740,
		-0.917931, 0.122101, 0.377483,
		0.226527, 0.942425, 0.246012,
		29.764027, 41.732349, 48.653133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008131, 41.505711, 48.405861>,  <29.605457, 41.072655, 48.480927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008131, 41.505711, 48.405861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.310764, 41.766754, 48.389442>,  <29.492344, 41.923382, 48.379589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.310764, 41.766754, 48.389442>,  <29.008131, 41.505711, 48.405861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310764, 41.766754, 48.389442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315535, 0.309382, -0.897062,
		-0.572732, 0.691653, 0.439994,
		0.756582, 0.652610, -0.041048,
		29.537739, 41.962536, 48.377129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798306, 42.192497, 48.159130>,  <29.008131, 41.505711, 48.405861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798306, 42.192497, 48.159130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.191641, 42.196911, 48.086548>,  <29.427641, 42.199558, 48.042999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.191641, 42.196911, 48.086548>,  <28.798306, 42.192497, 48.159130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191641, 42.196911, 48.086548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181448, 0.120869, -0.975944,
		0.011162, 0.992607, 0.120857,
		0.983337, 0.011035, -0.181456,
		29.486643, 42.200222, 48.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884066, 42.787144, 47.828156>,  <28.798306, 42.192497, 48.159130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884066, 42.787144, 47.828156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194065, 42.557652, 47.722168>,  <29.380064, 42.419956, 47.658573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194065, 42.557652, 47.722168>,  <28.884066, 42.787144, 47.828156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194065, 42.557652, 47.722168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123201, 0.274077, -0.953784,
		0.619839, 0.771825, 0.141725,
		0.774998, -0.573732, -0.264973,
		29.426565, 42.385532, 47.642677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162401, 43.150684, 47.299919>,  <28.884066, 42.787144, 47.828156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162401, 43.150684, 47.299919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.332102, 42.789120, 47.278164>,  <29.433922, 42.572182, 47.265110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.332102, 42.789120, 47.278164>,  <29.162401, 43.150684, 47.299919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332102, 42.789120, 47.278164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012218, 0.054338, -0.998448,
		0.905463, 0.424256, 0.012009,
		0.424250, -0.903911, -0.054385,
		29.459377, 42.517948, 47.261848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626047, 43.261749, 46.874935>,  <29.162401, 43.150684, 47.299919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626047, 43.261749, 46.874935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.561243, 42.867176, 46.864315>,  <29.522360, 42.630432, 46.857944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.561243, 42.867176, 46.864315>,  <29.626047, 43.261749, 46.874935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561243, 42.867176, 46.864315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239917, 0.065470, -0.968583,
		0.957180, -0.150551, -0.247269,
		-0.162010, -0.986432, -0.026547,
		29.512640, 42.571247, 46.856350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400190, 43.523746, 46.649166>,  <29.626047, 43.261749, 46.874935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400190, 43.523746, 46.649166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.473049, 43.917046, 46.651802>,  <30.516764, 44.153027, 46.653385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.473049, 43.917046, 46.651802>,  <30.400190, 43.523746, 46.649166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473049, 43.917046, 46.651802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114446, -0.027861, 0.993039,
		0.976588, -0.180124, -0.117604,
		0.182147, 0.983249, 0.006594,
		30.527693, 44.212021, 46.653782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001631, 43.626095, 47.052914>,  <30.400190, 43.523746, 46.649166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001631, 43.626095, 47.052914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.806791, 43.975414, 47.056416>,  <30.689888, 44.185005, 47.058517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.806791, 43.975414, 47.056416>,  <31.001631, 43.626095, 47.052914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806791, 43.975414, 47.056416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010592, -0.004118, 0.999936,
		0.873282, 0.487162, -0.007244,
		-0.487100, 0.873302, 0.008757,
		30.660662, 44.237404, 47.059044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440022, 44.129345, 47.446629>,  <31.001631, 43.626095, 47.052914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440022, 44.129345, 47.446629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.072891, 44.286884, 47.466522>,  <30.852613, 44.381409, 47.478458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.072891, 44.286884, 47.466522>,  <31.440022, 44.129345, 47.446629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072891, 44.286884, 47.466522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065290, 0.026193, 0.997523,
		0.391574, 0.918801, -0.049755,
		-0.917828, 0.393852, 0.049732,
		30.797543, 44.405041, 47.481441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521029, 44.744228, 47.874668>,  <31.440022, 44.129345, 47.446629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521029, 44.744228, 47.874668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.133459, 44.645302, 47.872791>,  <30.900917, 44.585945, 47.871666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.133459, 44.645302, 47.872791>,  <31.521029, 44.744228, 47.874668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133459, 44.645302, 47.872791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011054, 0.024355, 0.999642,
		-0.247116, 0.968628, -0.026332,
		-0.968923, -0.247318, -0.004689,
		30.842783, 44.571106, 47.871384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126524, 45.328808, 48.212364>,  <31.521029, 44.744228, 47.874668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126524, 45.328808, 48.212364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.919521, 44.986797, 48.225685>,  <30.795319, 44.781590, 48.233677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.919521, 44.986797, 48.225685>,  <31.126524, 45.328808, 48.212364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919521, 44.986797, 48.225685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011553, 0.031930, 0.999423,
		-0.855600, 0.517595, -0.006646,
		-0.517509, -0.855030, 0.033299,
		30.764269, 44.730289, 48.235676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596590, 45.511444, 48.624657>,  <31.126524, 45.328808, 48.212364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596590, 45.511444, 48.624657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637175, 45.113510, 48.623497>,  <30.661526, 44.874748, 48.622803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637175, 45.113510, 48.623497>,  <30.596590, 45.511444, 48.624657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637175, 45.113510, 48.623497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160289, -0.019221, 0.986883,
		-0.981842, -0.099668, -0.161411,
		0.101463, -0.994835, -0.002896,
		30.667614, 44.815060, 48.622627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226866, 45.453060, 49.206264>,  <30.596590, 45.511444, 48.624657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226866, 45.453060, 49.206264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427134, 45.117435, 49.121120>,  <30.547295, 44.916061, 49.070034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427134, 45.117435, 49.121120>,  <30.226866, 45.453060, 49.206264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427134, 45.117435, 49.121120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079154, -0.200490, 0.976493,
		-0.862011, -0.505749, -0.033964,
		0.500670, -0.839060, -0.212857,
		30.577335, 44.865719, 49.057262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058487, 45.146732, 49.780067>,  <30.226866, 45.453060, 49.206264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058487, 45.146732, 49.780067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.373198, 44.943302, 49.640163>,  <30.562025, 44.821243, 49.556221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.373198, 44.943302, 49.640163>,  <30.058487, 45.146732, 49.780067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373198, 44.943302, 49.640163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335651, -0.123016, 0.933920,
		-0.517995, -0.852184, 0.073918,
		0.786778, -0.508576, -0.349758,
		30.609232, 44.790730, 49.535236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195539, 44.500496, 50.222118>,  <30.058487, 45.146732, 49.780067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195539, 44.500496, 50.222118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536514, 44.564220, 50.022930>,  <30.741098, 44.602455, 49.903419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536514, 44.564220, 50.022930>,  <30.195539, 44.500496, 50.222118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536514, 44.564220, 50.022930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513878, -0.079787, 0.854145,
		0.096342, -0.983999, -0.149879,
		0.852436, 0.159310, -0.497969,
		30.792246, 44.612015, 49.873539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.091652, 39.956467, 35.354420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274487, 40.111340, 35.674709>,  <35.384186, 40.204262, 35.866882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274487, 40.111340, 35.674709>,  <35.091652, 39.956467, 35.354420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274487, 40.111340, 35.674709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869178, 0.003460, 0.494487,
		0.188689, -0.921994, 0.338117,
		0.457084, 0.387188, 0.800725,
		35.411613, 40.227493, 35.914928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798088, 39.672012, 35.813057>,  <35.091652, 39.956467, 35.354420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798088, 39.672012, 35.813057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957016, 40.004932, 35.967674>,  <35.052372, 40.204685, 36.060444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957016, 40.004932, 35.967674>,  <34.798088, 39.672012, 35.813057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957016, 40.004932, 35.967674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900751, 0.273165, 0.337682,
		0.175462, -0.482346, 0.858228,
		0.397317, 0.832300, 0.386543,
		35.076210, 40.254623, 36.083637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577629, 39.667786, 36.488724>,  <34.798088, 39.672012, 35.813057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577629, 39.667786, 36.488724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674053, 40.047512, 36.408043>,  <34.731907, 40.275349, 36.359634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674053, 40.047512, 36.408043>,  <34.577629, 39.667786, 36.488724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674053, 40.047512, 36.408043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867482, 0.303954, 0.393810,
		0.435160, 0.080046, 0.896788,
		0.241059, 0.949318, -0.201707,
		34.746372, 40.332306, 36.347530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540901, 40.010223, 37.092041>,  <34.577629, 39.667786, 36.488724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540901, 40.010223, 37.092041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476967, 40.289719, 36.813122>,  <34.438606, 40.457417, 36.645771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476967, 40.289719, 36.813122>,  <34.540901, 40.010223, 37.092041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476967, 40.289719, 36.813122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703877, 0.414581, 0.576784,
		0.692104, 0.583001, 0.425559,
		-0.159837, 0.698736, -0.697295,
		34.429016, 40.499340, 36.603935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571098, 40.643562, 37.495853>,  <34.540901, 40.010223, 37.092041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571098, 40.643562, 37.495853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396030, 40.739216, 37.149151>,  <34.290989, 40.796608, 36.941132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396030, 40.739216, 37.149151>,  <34.571098, 40.643562, 37.495853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396030, 40.739216, 37.149151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640490, 0.593637, 0.487203,
		0.631045, 0.768380, -0.106651,
		-0.437669, 0.239139, -0.866752,
		34.264729, 40.810959, 36.889126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592377, 41.467087, 37.403275>,  <34.571098, 40.643562, 37.495853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592377, 41.467087, 37.403275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298492, 41.318222, 37.176403>,  <34.122162, 41.228901, 37.040279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298492, 41.318222, 37.176403>,  <34.592377, 41.467087, 37.403275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298492, 41.318222, 37.176403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649573, 0.627001, 0.430028,
		0.195578, 0.684370, -0.702416,
		-0.734714, -0.372167, -0.567176,
		34.078079, 41.206573, 37.006252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342751, 41.969757, 37.134781>,  <34.592377, 41.467087, 37.403275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342751, 41.969757, 37.134781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050682, 41.699898, 37.091515>,  <33.875443, 41.537983, 37.065556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050682, 41.699898, 37.091515>,  <34.342751, 41.969757, 37.134781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050682, 41.699898, 37.091515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670882, 0.677894, 0.300630,
		-0.129495, 0.292077, -0.947587,
		-0.730171, -0.674649, -0.108165,
		33.831631, 41.497501, 37.059067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839611, 42.368301, 36.908970>,  <34.342751, 41.969757, 37.134781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839611, 42.368301, 36.908970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651104, 42.042248, 37.043709>,  <33.537998, 41.846615, 37.124554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651104, 42.042248, 37.043709>,  <33.839611, 42.368301, 36.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651104, 42.042248, 37.043709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705692, 0.577579, 0.410368,
		-0.529059, -0.044316, -0.847427,
		-0.471270, -0.815131, 0.336847,
		33.509724, 41.797707, 37.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239922, 42.594727, 36.919365>,  <33.839611, 42.368301, 36.908970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239922, 42.594727, 36.919365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228985, 42.266663, 37.147957>,  <33.222424, 42.069824, 37.285114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228985, 42.266663, 37.147957>,  <33.239922, 42.594727, 36.919365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228985, 42.266663, 37.147957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551277, 0.489273, 0.675799,
		-0.833874, -0.296566, -0.465514,
		-0.027344, -0.820159, 0.571482,
		33.220783, 42.020615, 37.319401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457092, 42.384346, 37.128719>,  <33.239922, 42.594727, 36.919365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457092, 42.384346, 37.128719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695301, 42.217285, 37.403214>,  <32.838226, 42.117050, 37.567909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695301, 42.217285, 37.403214>,  <32.457092, 42.384346, 37.128719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695301, 42.217285, 37.403214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587449, 0.356264, 0.726622,
		-0.547957, -0.835848, -0.033186,
		0.595522, -0.417653, 0.686235,
		32.873959, 42.091988, 37.609085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971537, 42.086678, 37.622318>,  <32.457092, 42.384346, 37.128719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971537, 42.086678, 37.622318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321217, 42.117062, 37.814156>,  <32.531025, 42.135292, 37.929256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321217, 42.117062, 37.814156>,  <31.971537, 42.086678, 37.622318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321217, 42.117062, 37.814156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484713, 0.195084, 0.852641,
		-0.028796, -0.977841, 0.207360,
		0.874199, 0.075957, 0.479590,
		32.583477, 42.139851, 37.958031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953682, 41.808311, 38.304943>,  <31.971537, 42.086678, 37.622318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953682, 41.808311, 38.304943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244797, 42.081608, 38.328651>,  <32.419464, 42.245586, 38.342876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244797, 42.081608, 38.328651>,  <31.953682, 41.808311, 38.304943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244797, 42.081608, 38.328651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337658, 0.281763, 0.898107,
		0.596922, -0.673642, 0.435764,
		0.727785, 0.683240, 0.059270,
		32.463131, 42.286579, 38.346432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787483, 41.165783, 38.589100>,  <31.953682, 41.808311, 38.304943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787483, 41.165783, 38.589100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426369, 41.003262, 38.532681>,  <31.209700, 40.905746, 38.498829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426369, 41.003262, 38.532681>,  <31.787483, 41.165783, 38.589100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426369, 41.003262, 38.532681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348293, -0.498242, -0.794007,
		0.252333, -0.765944, 0.591319,
		-0.902785, -0.406306, -0.141049,
		31.155533, 40.881371, 38.490364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988216, 40.408890, 38.256622>,  <31.787483, 41.165783, 38.589100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988216, 40.408890, 38.256622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590597, 40.445103, 38.232391>,  <31.352026, 40.466831, 38.217854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590597, 40.445103, 38.232391>,  <31.988216, 40.408890, 38.256622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590597, 40.445103, 38.232391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012262, -0.645575, -0.763598,
		-0.108243, -0.758311, 0.642844,
		-0.994049, 0.090537, -0.060580,
		31.292383, 40.472263, 38.214218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714273, 39.723965, 38.273338>,  <31.988216, 40.408890, 38.256622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714273, 39.723965, 38.273338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458347, 39.971714, 38.091347>,  <31.304790, 40.120365, 37.982151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458347, 39.971714, 38.091347>,  <31.714273, 39.723965, 38.273338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458347, 39.971714, 38.091347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038865, -0.617338, -0.785737,
		-0.767544, -0.485045, 0.419055,
		-0.639817, 0.619375, -0.454983,
		31.266401, 40.157528, 37.954853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171474, 39.352985, 38.150269>,  <31.714273, 39.723965, 38.273338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171474, 39.352985, 38.150269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141253, 39.645969, 37.879627>,  <31.123119, 39.821758, 37.717243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141253, 39.645969, 37.879627>,  <31.171474, 39.352985, 38.150269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141253, 39.645969, 37.879627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054738, -0.674476, -0.736264,
		-0.995638, -0.092665, 0.010868,
		-0.075556, 0.732458, -0.676607,
		31.118586, 39.865707, 37.676643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678291, 39.162025, 37.809399>,  <31.171474, 39.352985, 38.150269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678291, 39.162025, 37.809399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882685, 39.396961, 37.558346>,  <31.005322, 39.537922, 37.407715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882685, 39.396961, 37.558346>,  <30.678291, 39.162025, 37.809399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882685, 39.396961, 37.558346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223005, -0.614577, -0.756679,
		-0.830158, 0.526618, -0.183060,
		0.510985, 0.587340, -0.627635,
		31.035980, 39.573162, 37.370056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263338, 39.153324, 37.275066>,  <30.678291, 39.162025, 37.809399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263338, 39.153324, 37.275066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598459, 39.302406, 37.115479>,  <30.799532, 39.391853, 37.019726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598459, 39.302406, 37.115479>,  <30.263338, 39.153324, 37.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598459, 39.302406, 37.115479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186222, -0.491867, -0.850523,
		-0.513233, 0.786868, -0.342683,
		0.837803, 0.372701, -0.398974,
		30.849800, 39.414215, 36.995785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074610, 39.457897, 36.554974>,  <30.263338, 39.153324, 37.275066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074610, 39.457897, 36.554974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470776, 39.404194, 36.567955>,  <30.708475, 39.371971, 36.575745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470776, 39.404194, 36.567955>,  <30.074610, 39.457897, 36.554974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470776, 39.404194, 36.567955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056104, -0.605741, -0.793682,
		0.126221, 0.784253, -0.607467,
		0.990414, -0.134261, 0.032458,
		30.767900, 39.363914, 36.577694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370716, 39.474716, 35.947247>,  <30.074610, 39.457897, 36.554974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370716, 39.474716, 35.947247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673986, 39.266273, 36.104019>,  <30.855949, 39.141209, 36.198082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673986, 39.266273, 36.104019>,  <30.370716, 39.474716, 35.947247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673986, 39.266273, 36.104019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035603, -0.567098, -0.822880,
		0.651075, 0.637844, -0.411408,
		0.758178, -0.521109, 0.391933,
		30.901440, 39.109940, 36.221600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866240, 39.219448, 35.338512>,  <30.370716, 39.474716, 35.947247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866240, 39.219448, 35.338512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978262, 38.992100, 35.647968>,  <31.045475, 38.855690, 35.833641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978262, 38.992100, 35.647968>,  <30.866240, 39.219448, 35.338512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978262, 38.992100, 35.647968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221895, -0.745739, -0.628200,
		0.933986, 0.347599, -0.082731,
		0.280058, -0.568372, 0.773641,
		31.062279, 38.821587, 35.880062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285246, 38.852615, 35.015877>,  <30.866240, 39.219448, 35.338512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285246, 38.852615, 35.015877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219179, 38.656025, 35.357910>,  <31.179539, 38.538071, 35.563129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219179, 38.656025, 35.357910>,  <31.285246, 38.852615, 35.015877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219179, 38.656025, 35.357910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085950, -0.870865, -0.483949,
		0.982514, -0.006437, 0.186079,
		-0.165165, -0.491480, 0.855084,
		31.169630, 38.508579, 35.614437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890684, 38.460976, 35.135460>,  <31.285246, 38.852615, 35.015877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890684, 38.460976, 35.135460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556067, 38.286556, 35.268162>,  <31.355297, 38.181904, 35.347782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556067, 38.286556, 35.268162>,  <31.890684, 38.460976, 35.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556067, 38.286556, 35.268162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278310, -0.859741, -0.428239,
		0.471955, -0.265910, 0.840566,
		-0.836542, -0.436048, 0.331754,
		31.305103, 38.155743, 35.367687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075272, 37.857719, 35.313637>,  <31.890684, 38.460976, 35.135460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075272, 37.857719, 35.313637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678782, 37.828648, 35.269466>,  <31.440887, 37.811203, 35.242966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678782, 37.828648, 35.269466>,  <32.075272, 37.857719, 35.313637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678782, 37.828648, 35.269466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129043, -0.713298, -0.688879,
		-0.028696, -0.697082, 0.716417,
		-0.991224, -0.072680, -0.110422,
		31.381414, 37.806843, 35.236340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054863, 37.232727, 35.340931>,  <32.075272, 37.857719, 35.313637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054863, 37.232727, 35.340931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709219, 37.343231, 35.172646>,  <31.501833, 37.409534, 35.071674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709219, 37.343231, 35.172646>,  <32.054863, 37.232727, 35.340931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709219, 37.343231, 35.172646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110351, -0.711567, -0.693898,
		-0.491057, -0.646030, 0.584387,
		-0.864109, 0.276255, -0.420710,
		31.449986, 37.426109, 35.046432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777662, 36.555885, 35.268368>,  <32.054863, 37.232727, 35.340931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777662, 36.555885, 35.268368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627419, 36.826771, 35.015293>,  <31.537271, 36.989304, 34.863449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627419, 36.826771, 35.015293>,  <31.777662, 36.555885, 35.268368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627419, 36.826771, 35.015293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138234, -0.715976, -0.684303,
		-0.916411, -0.169571, 0.362541,
		-0.375608, 0.677218, -0.632688,
		31.514736, 37.029938, 34.825485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149197, 36.179218, 34.709351>,  <31.777662, 36.555885, 35.268368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149197, 36.179218, 34.709351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984215, 35.815514, 34.686981>,  <31.885225, 35.597290, 34.673561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984215, 35.815514, 34.686981>,  <32.149197, 36.179218, 34.709351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984215, 35.815514, 34.686981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460814, 0.155294, 0.873804,
		-0.785831, 0.386175, -0.483052,
		-0.412457, -0.909259, -0.055920,
		31.860477, 35.542736, 34.670204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357470, 36.208027, 34.732033>,  <32.149197, 36.179218, 34.709351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357470, 36.208027, 34.732033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546183, 35.904144, 34.911037>,  <31.659410, 35.721813, 35.018440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546183, 35.904144, 34.911037>,  <31.357470, 36.208027, 34.732033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546183, 35.904144, 34.911037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485459, 0.199881, 0.851104,
		-0.736038, -0.618785, -0.274506,
		0.471781, -0.759706, 0.447515,
		31.687717, 35.676231, 35.045292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915155, 35.816830, 35.200893>,  <31.357470, 36.208027, 34.732033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915155, 35.816830, 35.200893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279238, 35.740608, 35.347980>,  <31.497686, 35.694874, 35.436234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279238, 35.740608, 35.347980>,  <30.915155, 35.816830, 35.200893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279238, 35.740608, 35.347980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296718, 0.319380, 0.899975,
		-0.288936, -0.928270, 0.234160,
		0.910206, -0.190556, 0.367715,
		31.552299, 35.683441, 35.458294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840973, 35.569592, 35.881733>,  <30.915155, 35.816830, 35.200893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840973, 35.569592, 35.881733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221489, 35.691681, 35.864357>,  <31.449799, 35.764935, 35.853931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221489, 35.691681, 35.864357>,  <30.840973, 35.569592, 35.881733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221489, 35.691681, 35.864357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029589, 0.230643, 0.972588,
		0.306881, -0.923926, 0.228440,
		0.951288, 0.305228, -0.043442,
		31.506876, 35.783249, 35.851326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356441, 35.155464, 36.398014>,  <30.840973, 35.569592, 35.881733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356441, 35.155464, 36.398014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520575, 35.513763, 36.329590>,  <31.619055, 35.728745, 36.288536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520575, 35.513763, 36.329590>,  <31.356441, 35.155464, 36.398014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520575, 35.513763, 36.329590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013830, 0.193668, 0.980969,
		0.911830, -0.400159, 0.091856,
		0.410334, 0.895748, -0.171059,
		31.643675, 35.782490, 36.278271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932823, 35.204853, 36.887978>,  <31.356441, 35.155464, 36.398014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932823, 35.204853, 36.887978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883883, 35.588451, 36.785725>,  <31.854517, 35.818611, 36.724373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883883, 35.588451, 36.785725>,  <31.932823, 35.204853, 36.887978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883883, 35.588451, 36.785725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206203, 0.276512, 0.938627,
		0.970830, 0.062131, -0.231580,
		-0.122353, 0.959000, -0.255634,
		31.847178, 35.876152, 36.709034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415112, 35.596996, 37.362640>,  <31.932823, 35.204853, 36.887978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415112, 35.596996, 37.362640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188026, 35.895168, 37.222900>,  <32.051777, 36.074070, 37.139057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188026, 35.895168, 37.222900>,  <32.415112, 35.596996, 37.362640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188026, 35.895168, 37.222900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065403, 0.382182, 0.921770,
		0.820625, 0.546148, -0.168216,
		-0.567712, 0.745426, -0.349348,
		32.017712, 36.118797, 37.118095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803425, 36.279491, 37.627487>,  <32.415112, 35.596996, 37.362640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803425, 36.279491, 37.627487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420631, 36.338203, 37.527382>,  <32.190956, 36.373432, 37.467319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420631, 36.338203, 37.527382>,  <32.803425, 36.279491, 37.627487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420631, 36.338203, 37.527382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149726, 0.488980, 0.859349,
		0.248510, 0.859857, -0.445970,
		-0.956987, 0.146784, -0.250259,
		32.133533, 36.382240, 37.452305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626961, 37.037186, 37.718430>,  <32.803425, 36.279491, 37.627487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626961, 37.037186, 37.718430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287689, 36.825706, 37.731567>,  <32.084126, 36.698818, 37.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287689, 36.825706, 37.731567>,  <32.626961, 37.037186, 37.718430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287689, 36.825706, 37.731567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218858, 0.406216, 0.887180,
		-0.482391, 0.745296, -0.460252,
		-0.848174, -0.528698, 0.032841,
		32.033237, 36.667095, 37.741421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009220, 37.377377, 37.767471>,  <32.626961, 37.037186, 37.718430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009220, 37.377377, 37.767471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895239, 37.025505, 37.919773>,  <31.826849, 36.814384, 38.011154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895239, 37.025505, 37.919773>,  <32.009220, 37.377377, 37.767471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895239, 37.025505, 37.919773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134193, 0.429918, 0.892840,
		-0.949101, 0.203326, -0.240554,
		-0.284956, -0.879676, 0.380751,
		31.809752, 36.761600, 38.033997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391983, 37.511513, 38.186131>,  <32.009220, 37.377377, 37.767471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391983, 37.511513, 38.186131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545086, 37.162548, 38.307713>,  <31.636948, 36.953167, 38.380661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545086, 37.162548, 38.307713>,  <31.391983, 37.511513, 38.186131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545086, 37.162548, 38.307713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225751, 0.230708, 0.946473,
		-0.895842, -0.430887, -0.108644,
		0.382758, -0.872417, 0.303951,
		31.659914, 36.900822, 38.398899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976564, 37.344784, 38.836594>,  <31.391983, 37.511513, 38.186131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976564, 37.344784, 38.836594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280663, 37.085636, 38.855766>,  <31.463121, 36.930149, 38.867271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280663, 37.085636, 38.855766>,  <30.976564, 37.344784, 38.836594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280663, 37.085636, 38.855766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069290, -0.007500, 0.997568,
		-0.645931, -0.761718, -0.050593,
		0.760245, -0.647866, 0.047935,
		31.508736, 36.891277, 38.870148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699963, 36.806347, 39.190140>,  <30.976564, 37.344784, 38.836594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699963, 36.806347, 39.190140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098793, 36.809029, 39.220592>,  <31.338091, 36.810638, 39.238865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098793, 36.809029, 39.220592>,  <30.699963, 36.806347, 39.190140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098793, 36.809029, 39.220592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075556, -0.063088, 0.995144,
		0.011474, -0.997986, -0.062397,
		0.997076, 0.006704, 0.076128,
		31.397915, 36.811039, 39.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799274, 36.338749, 39.839699>,  <30.699963, 36.806347, 39.190140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799274, 36.338749, 39.839699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130384, 36.553013, 39.772938>,  <31.329050, 36.681572, 39.732883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130384, 36.553013, 39.772938>,  <30.799274, 36.338749, 39.839699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130384, 36.553013, 39.772938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196312, 0.002143, 0.980539,
		0.525594, -0.844431, -0.103382,
		0.827776, 0.535660, -0.166898,
		31.378717, 36.713711, 39.722870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308022, 36.068066, 40.301682>,  <30.799274, 36.338749, 39.839699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308022, 36.068066, 40.301682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394047, 36.448174, 40.211578>,  <31.445662, 36.676239, 40.157516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394047, 36.448174, 40.211578>,  <31.308022, 36.068066, 40.301682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394047, 36.448174, 40.211578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254277, 0.168214, 0.952390,
		0.942917, -0.262101, -0.205454,
		0.215062, 0.950267, -0.225258,
		31.458565, 36.733253, 40.144001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721296, 36.120949, 40.758293>,  <31.308022, 36.068066, 40.301682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721296, 36.120949, 40.758293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642830, 36.500744, 40.660320>,  <31.595751, 36.728622, 40.601536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642830, 36.500744, 40.660320>,  <31.721296, 36.120949, 40.758293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642830, 36.500744, 40.660320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269246, 0.292341, 0.917629,
		0.942882, 0.114059, -0.312992,
		-0.196164, 0.949488, -0.244934,
		31.583981, 36.785591, 40.586842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219109, 36.493458, 41.010448>,  <31.721296, 36.120949, 40.758293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219109, 36.493458, 41.010448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920122, 36.756962, 40.976212>,  <31.740730, 36.915066, 40.955669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920122, 36.756962, 40.976212>,  <32.219109, 36.493458, 41.010448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920122, 36.756962, 40.976212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233125, 0.380780, 0.894796,
		0.622049, 0.648877, -0.438194,
		-0.747468, 0.658760, -0.085594,
		31.695881, 36.954590, 40.950535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560120, 37.123665, 41.330532>,  <32.219109, 36.493458, 41.010448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560120, 37.123665, 41.330532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161732, 37.158928, 41.337223>,  <31.922699, 37.180084, 41.341236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161732, 37.158928, 41.337223>,  <32.560120, 37.123665, 41.330532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161732, 37.158928, 41.337223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043878, 0.315858, 0.947791,
		0.078272, 0.944702, -0.318452,
		-0.995966, 0.088159, 0.016729,
		31.862942, 37.185375, 41.342243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453075, 37.641914, 41.710125>,  <32.560120, 37.123665, 41.330532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453075, 37.641914, 41.710125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081570, 37.493679, 41.707100>,  <31.858665, 37.404739, 41.705284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081570, 37.493679, 41.707100>,  <32.453075, 37.641914, 41.710125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081570, 37.493679, 41.707100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123712, 0.290683, 0.948788,
		-0.349407, 0.882140, -0.315823,
		-0.928768, -0.370584, -0.007564,
		31.802938, 37.382504, 41.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914196, 38.170223, 41.883797>,  <32.453075, 37.641914, 41.710125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914196, 38.170223, 41.883797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729166, 37.827274, 41.974068>,  <31.618147, 37.621506, 42.028229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729166, 37.827274, 41.974068>,  <31.914196, 38.170223, 41.883797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729166, 37.827274, 41.974068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111139, 0.308614, 0.944672,
		-0.879585, 0.411902, -0.238046,
		-0.462577, -0.857376, 0.225675,
		31.590393, 37.570061, 42.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249855, 38.349091, 42.217796>,  <31.914196, 38.170223, 41.883797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249855, 38.349091, 42.217796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318735, 37.965740, 42.308887>,  <31.360064, 37.735729, 42.363541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318735, 37.965740, 42.308887>,  <31.249855, 38.349091, 42.217796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318735, 37.965740, 42.308887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306726, 0.167519, 0.936940,
		-0.936091, -0.231192, -0.265112,
		0.172202, -0.958378, 0.227726,
		31.370396, 37.678226, 42.377205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526789, 38.006332, 42.506557>,  <31.249855, 38.349091, 42.217796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526789, 38.006332, 42.506557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846367, 37.813797, 42.650776>,  <31.038115, 37.698277, 42.737309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846367, 37.813797, 42.650776>,  <30.526789, 38.006332, 42.506557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846367, 37.813797, 42.650776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291020, 0.215212, 0.932197,
		-0.526301, -0.849701, 0.031863,
		0.798946, -0.481343, 0.360546,
		31.086050, 37.669395, 42.758942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318832, 37.788391, 43.160160>,  <30.526789, 38.006332, 42.506557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318832, 37.788391, 43.160160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713127, 37.728828, 43.191532>,  <30.949703, 37.693089, 43.210354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713127, 37.728828, 43.191532>,  <30.318832, 37.788391, 43.160160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713127, 37.728828, 43.191532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072112, 0.047347, 0.996272,
		-0.152069, -0.987716, 0.035933,
		0.985735, -0.148911, 0.078426,
		31.008848, 37.684155, 43.215061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402670, 37.295010, 43.674030>,  <30.318832, 37.788391, 43.160160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402670, 37.295010, 43.674030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758041, 37.478500, 43.667492>,  <30.971264, 37.588593, 43.663570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758041, 37.478500, 43.667492>,  <30.402670, 37.295010, 43.674030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758041, 37.478500, 43.667492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039359, 0.111603, 0.992973,
		0.457326, -0.881542, 0.117206,
		0.888428, 0.458725, -0.016343,
		31.024570, 37.616119, 43.662590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872766, 36.948864, 44.144623>,  <30.402670, 37.295010, 43.674030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872766, 36.948864, 44.144623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988136, 37.328518, 44.094101>,  <31.057358, 37.556309, 44.063789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988136, 37.328518, 44.094101>,  <30.872766, 36.948864, 44.144623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988136, 37.328518, 44.094101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098051, 0.160492, 0.982155,
		0.952469, -0.270892, 0.139353,
		0.288423, 0.949136, -0.126303,
		31.074663, 37.613258, 44.056210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247156, 37.113739, 44.758312>,  <30.872766, 36.948864, 44.144623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247156, 37.113739, 44.758312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215654, 37.477009, 44.593864>,  <31.196753, 37.694969, 44.495197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215654, 37.477009, 44.593864>,  <31.247156, 37.113739, 44.758312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215654, 37.477009, 44.593864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018176, 0.413638, 0.910260,
		0.996728, 0.064216, -0.049083,
		-0.078755, 0.908174, -0.411117,
		31.192028, 37.749462, 44.470528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841642, 37.558025, 45.001778>,  <31.247156, 37.113739, 44.758312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841642, 37.558025, 45.001778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541088, 37.794712, 44.884964>,  <31.360756, 37.936726, 44.814877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541088, 37.794712, 44.884964>,  <31.841642, 37.558025, 45.001778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541088, 37.794712, 44.884964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010091, 0.432210, 0.901716,
		0.659784, 0.680485, -0.318786,
		-0.751387, 0.591721, -0.292032,
		31.315672, 37.972229, 44.797356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980335, 38.215714, 45.371922>,  <31.841642, 37.558025, 45.001778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980335, 38.215714, 45.371922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587759, 38.212200, 45.295296>,  <31.352213, 38.210091, 45.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587759, 38.212200, 45.295296>,  <31.980335, 38.215714, 45.371922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587759, 38.212200, 45.295296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185407, 0.298565, 0.936207,
		0.048969, 0.954349, -0.294653,
		-0.981441, -0.008785, -0.191564,
		31.293327, 38.209564, 45.237827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612030, 38.660789, 45.094330>,  <31.980335, 38.215714, 45.371922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612030, 38.660789, 45.094330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991306, 38.654678, 45.221264>,  <33.218872, 38.651012, 45.297424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991306, 38.654678, 45.221264>,  <32.612030, 38.660789, 45.094330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991306, 38.654678, 45.221264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281017, -0.425587, -0.860177,
		0.148194, 0.904788, -0.399245,
		0.948192, -0.015279, 0.317330,
		33.275764, 38.650093, 45.316463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961327, 38.722298, 44.552574>,  <32.612030, 38.660789, 45.094330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961327, 38.722298, 44.552574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243206, 38.579208, 44.797665>,  <33.412334, 38.493355, 44.944717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243206, 38.579208, 44.797665>,  <32.961327, 38.722298, 44.552574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243206, 38.579208, 44.797665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492957, -0.374251, -0.785449,
		0.510289, 0.855551, -0.087390,
		0.704697, -0.357727, 0.612726,
		33.454617, 38.471889, 44.981483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592747, 38.878250, 44.131008>,  <32.961327, 38.722298, 44.552574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592747, 38.878250, 44.131008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662846, 38.598171, 44.407852>,  <33.704906, 38.430126, 44.573959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662846, 38.598171, 44.407852>,  <33.592747, 38.878250, 44.131008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662846, 38.598171, 44.407852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545356, -0.516243, -0.660363,
		0.819679, 0.493175, 0.291384,
		0.175250, -0.700194, 0.692110,
		33.715420, 38.388115, 44.615486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197712, 38.768223, 44.007389>,  <33.592747, 38.878250, 44.131008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197712, 38.768223, 44.007389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103851, 38.428299, 44.196178>,  <34.047535, 38.224342, 44.309452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103851, 38.428299, 44.196178>,  <34.197712, 38.768223, 44.007389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103851, 38.428299, 44.196178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566286, -0.514139, -0.644191,
		0.790100, 0.116109, 0.601881,
		-0.234654, -0.849811, 0.471972,
		34.033455, 38.173355, 44.337769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812454, 38.385963, 44.087173>,  <34.197712, 38.768223, 44.007389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812454, 38.385963, 44.087173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533852, 38.103970, 44.140656>,  <34.366688, 37.934772, 44.172745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533852, 38.103970, 44.140656>,  <34.812454, 38.385963, 44.087173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533852, 38.103970, 44.140656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515120, -0.620978, -0.590794,
		0.499527, -0.342619, 0.795666,
		-0.696509, -0.704981, 0.133706,
		34.324898, 37.892475, 44.180767>
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
