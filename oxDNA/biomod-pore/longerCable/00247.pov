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
	<23.970486, 34.600506, 35.275166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193354, 34.921322, 35.361225>,  <24.327074, 35.113811, 35.412861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193354, 34.921322, 35.361225>,  <23.970486, 34.600506, 35.275166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.193354, 34.921322, 35.361225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359770, 0.000356, -0.933041,
		-0.748416, 0.597265, -0.288353,
		0.557170, 0.802044, 0.215145,
		24.360504, 35.161934, 35.425770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.701361, 35.257290, 34.916477>,  <23.970486, 34.600506, 35.275166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.701361, 35.257290, 34.916477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.097160, 35.258213, 34.974289>,  <24.334641, 35.258766, 35.008976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.097160, 35.258213, 34.974289>,  <23.701361, 35.257290, 34.916477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.097160, 35.258213, 34.974289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141651, 0.183640, -0.972734,
		-0.028789, 0.982991, 0.181384,
		0.989498, 0.002311, 0.144529,
		24.394011, 35.258907, 35.017647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.076517, 35.775444, 34.486645>,  <23.701361, 35.257290, 34.916477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.076517, 35.775444, 34.486645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365429, 35.503479, 34.537289>,  <24.538776, 35.340298, 34.567677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365429, 35.503479, 34.537289>,  <24.076517, 35.775444, 34.486645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.365429, 35.503479, 34.537289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093021, -0.085902, -0.991952,
		0.685319, 0.728242, 0.001201,
		0.722277, -0.679915, 0.126612,
		24.582111, 35.299503, 34.575272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.618048, 36.046028, 34.152256>,  <24.076517, 35.775444, 34.486645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.618048, 36.046028, 34.152256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695658, 35.653698, 34.159546>,  <24.742224, 35.418301, 34.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695658, 35.653698, 34.159546>,  <24.618048, 36.046028, 34.152256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695658, 35.653698, 34.159546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175142, 0.016351, -0.984407,
		0.965235, 0.194194, 0.174957,
		0.194027, -0.980827, 0.018229,
		24.753866, 35.359451, 34.165016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210936, 35.972103, 33.783302>,  <24.618048, 36.046028, 34.152256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210936, 35.972103, 33.783302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035713, 35.613255, 33.760380>,  <24.930580, 35.397945, 33.746628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035713, 35.613255, 33.760380>,  <25.210936, 35.972103, 33.783302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035713, 35.613255, 33.760380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160885, -0.015524, -0.986851,
		0.884433, -0.441517, 0.151133,
		-0.438058, -0.897118, -0.057304,
		24.904295, 35.344120, 33.743187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597033, 35.479565, 33.392628>,  <25.210936, 35.972103, 33.783302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597033, 35.479565, 33.392628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216490, 35.358467, 33.369755>,  <24.988165, 35.285809, 33.356030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216490, 35.358467, 33.369755>,  <25.597033, 35.479565, 33.392628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216490, 35.358467, 33.369755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127143, -0.216703, -0.967923,
		0.280641, -0.928109, 0.244654,
		-0.951354, -0.302744, -0.057187,
		24.931084, 35.267643, 33.352600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592962, 34.939236, 32.998417>,  <25.597033, 35.479565, 33.392628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592962, 34.939236, 32.998417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243551, 35.127762, 32.949738>,  <25.033905, 35.240879, 32.920528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243551, 35.127762, 32.949738>,  <25.592962, 34.939236, 32.998417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243551, 35.127762, 32.949738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042956, -0.174402, -0.983737,
		-0.484876, -0.864549, 0.132099,
		-0.873527, 0.471316, -0.121701,
		24.981493, 35.269157, 32.913227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056389, 34.526829, 32.859879>,  <25.592962, 34.939236, 32.998417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056389, 34.526829, 32.859879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960896, 34.877865, 32.693584>,  <24.903599, 35.088486, 32.593807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960896, 34.877865, 32.693584>,  <25.056389, 34.526829, 32.859879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960896, 34.877865, 32.693584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075731, -0.443637, -0.893001,
		-0.968128, -0.181704, 0.172372,
		-0.238733, 0.877593, -0.415737,
		24.889277, 35.141144, 32.568863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507872, 34.348537, 32.403175>,  <25.056389, 34.526829, 32.859879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507872, 34.348537, 32.403175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652943, 34.699097, 32.276436>,  <24.739985, 34.909431, 32.200390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652943, 34.699097, 32.276436>,  <24.507872, 34.348537, 32.403175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652943, 34.699097, 32.276436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001747, -0.340641, -0.940192,
		-0.931913, 0.340432, -0.125073,
		0.362677, 0.876396, -0.316853,
		24.761745, 34.962017, 32.181381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167593, 34.578598, 31.830322>,  <24.507872, 34.348537, 32.403175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167593, 34.578598, 31.830322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502607, 34.795830, 31.806343>,  <24.703615, 34.926170, 31.791956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502607, 34.795830, 31.806343>,  <24.167593, 34.578598, 31.830322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502607, 34.795830, 31.806343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072834, -0.219713, -0.972842,
		-0.541506, 0.810424, -0.223572,
		0.837536, 0.543084, -0.059950,
		24.753868, 34.958755, 31.788359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103373, 34.977970, 31.148134>,  <24.167593, 34.578598, 31.830322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103373, 34.977970, 31.148134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479454, 34.893204, 31.254797>,  <24.705103, 34.842342, 31.318794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479454, 34.893204, 31.254797>,  <24.103373, 34.977970, 31.148134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479454, 34.893204, 31.254797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127557, -0.506841, -0.852550,
		0.315826, 0.835585, -0.449502,
		0.940204, -0.211921, 0.266658,
		24.761515, 34.829628, 31.334795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545561, 35.133057, 30.543974>,  <24.103373, 34.977970, 31.148134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545561, 35.133057, 30.543974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706810, 34.845997, 30.771118>,  <24.803558, 34.673759, 30.907406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706810, 34.845997, 30.771118>,  <24.545561, 35.133057, 30.543974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706810, 34.845997, 30.771118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029491, -0.630379, -0.775727,
		0.914671, 0.295965, -0.275284,
		0.403121, -0.717654, 0.567861,
		24.827747, 34.630699, 30.941477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136023, 34.883076, 30.242607>,  <24.545561, 35.133057, 30.543974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136023, 34.883076, 30.242607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947552, 34.584461, 30.430510>,  <24.834469, 34.405293, 30.543251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947552, 34.584461, 30.430510>,  <25.136023, 34.883076, 30.242607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947552, 34.584461, 30.430510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219144, -0.614961, -0.757495,
		0.854382, -0.253970, 0.453355,
		-0.471176, -0.746540, 0.469756,
		24.806198, 34.360500, 30.571436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600739, 34.197914, 30.376181>,  <25.136023, 34.883076, 30.242607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600739, 34.197914, 30.376181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219000, 34.079166, 30.362942>,  <24.989958, 34.007919, 30.354998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219000, 34.079166, 30.362942>,  <25.600739, 34.197914, 30.376181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219000, 34.079166, 30.362942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243474, -0.708899, -0.661954,
		0.173048, -0.639791, 0.748814,
		-0.954346, -0.296866, -0.033099,
		24.932695, 33.990108, 30.353012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275450, 33.840343, 31.048735>,  <25.600739, 34.197914, 30.376181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275450, 33.840343, 31.048735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262003, 34.187634, 30.850725>,  <25.253935, 34.396008, 30.731918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262003, 34.187634, 30.850725>,  <25.275450, 33.840343, 31.048735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262003, 34.187634, 30.850725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038873, 0.496066, 0.867414,
		0.998679, 0.009916, -0.050427,
		-0.033617, 0.868228, -0.495025,
		25.251919, 34.448101, 30.702217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787571, 34.285843, 31.299940>,  <25.275450, 33.840343, 31.048735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787571, 34.285843, 31.299940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512564, 34.529720, 31.142157>,  <25.347559, 34.676044, 31.047487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512564, 34.529720, 31.142157>,  <25.787571, 34.285843, 31.299940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512564, 34.529720, 31.142157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031967, 0.568090, 0.822345,
		0.725464, 0.552768, -0.410062,
		-0.687518, 0.609690, -0.394459,
		25.306309, 34.712627, 31.023819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070021, 34.926487, 31.463301>,  <25.787571, 34.285843, 31.299940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070021, 34.926487, 31.463301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672180, 34.922878, 31.421949>,  <25.433475, 34.920715, 31.397139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672180, 34.922878, 31.421949>,  <26.070021, 34.926487, 31.463301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672180, 34.922878, 31.421949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092949, 0.520344, 0.848883,
		0.046134, 0.853909, -0.518374,
		-0.994602, -0.009020, -0.103376,
		25.373800, 34.920174, 31.390936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825653, 35.606041, 31.566669>,  <26.070021, 34.926487, 31.463301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825653, 35.606041, 31.566669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491730, 35.399105, 31.641991>,  <25.291376, 35.274944, 31.687183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491730, 35.399105, 31.641991>,  <25.825653, 35.606041, 31.566669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491730, 35.399105, 31.641991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141285, 0.531887, 0.834946,
		-0.532106, 0.670414, -0.517115,
		-0.834806, -0.517341, 0.188301,
		25.241287, 35.243904, 31.698481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534075, 36.017643, 31.941740>,  <25.825653, 35.606041, 31.566669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534075, 36.017643, 31.941740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280531, 35.714401, 32.003056>,  <25.128405, 35.532455, 32.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280531, 35.714401, 32.003056>,  <25.534075, 36.017643, 31.941740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280531, 35.714401, 32.003056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322616, 0.439274, 0.838426,
		-0.702950, 0.481992, -0.523015,
		-0.633861, -0.758104, 0.153289,
		25.090372, 35.486969, 32.049042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973747, 36.347649, 32.160378>,  <25.534075, 36.017643, 31.941740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.973747, 36.347649, 32.160378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946035, 35.961296, 32.260197>,  <24.929407, 35.729485, 32.320087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946035, 35.961296, 32.260197>,  <24.973747, 36.347649, 32.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946035, 35.961296, 32.260197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312928, 0.258563, 0.913905,
		-0.947247, -0.014774, -0.320165,
		-0.069281, -0.965882, 0.249546,
		24.925251, 35.671532, 32.335060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271009, 36.253860, 32.437622>,  <24.973747, 36.347649, 32.160378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271009, 36.253860, 32.437622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546236, 36.015293, 32.602959>,  <24.711372, 35.872154, 32.702160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546236, 36.015293, 32.602959>,  <24.271009, 36.253860, 32.437622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546236, 36.015293, 32.602959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245780, 0.344399, 0.906080,
		-0.682757, -0.725034, 0.090381,
		0.688066, -0.596419, 0.413340,
		24.752655, 35.836369, 32.726959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934078, 35.817360, 32.944237>,  <24.271009, 36.253860, 32.437622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934078, 35.817360, 32.944237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315298, 35.860401, 33.057457>,  <24.544029, 35.886227, 33.125389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315298, 35.860401, 33.057457>,  <23.934078, 35.817360, 32.944237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315298, 35.860401, 33.057457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302741, 0.359195, 0.882795,
		-0.006678, -0.927039, 0.374907,
		0.953049, 0.107604, 0.283052,
		24.601213, 35.892681, 33.142372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.017595, 35.375938, 33.475380>,  <23.934078, 35.817360, 32.944237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.017595, 35.375938, 33.475380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256140, 35.696617, 33.491581>,  <24.399267, 35.889023, 33.501301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256140, 35.696617, 33.491581>,  <24.017595, 35.375938, 33.475380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256140, 35.696617, 33.491581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551963, 0.372911, 0.745837,
		0.582828, -0.467147, 0.664895,
		0.596363, 0.801693, 0.040505,
		24.435049, 35.937126, 33.503731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.867159, 34.764515, 33.555355>,  <24.017595, 35.375938, 33.475380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.867159, 34.764515, 33.555355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241751, 34.811691, 33.423233>,  <24.466505, 34.839996, 33.343960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241751, 34.811691, 33.423233>,  <23.867159, 34.764515, 33.555355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241751, 34.811691, 33.423233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349935, -0.250922, 0.902543,
		0.023564, -0.960796, -0.276253,
		0.936477, 0.117938, -0.330304,
		24.522694, 34.847073, 33.324142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303127, 34.169712, 33.753551>,  <23.867159, 34.764515, 33.555355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303127, 34.169712, 33.753551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497309, 34.519283, 33.743938>,  <24.613817, 34.729027, 33.738171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497309, 34.519283, 33.743938>,  <24.303127, 34.169712, 33.753551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497309, 34.519283, 33.743938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255662, -0.115625, 0.959827,
		0.836045, -0.472095, -0.279562,
		0.485454, 0.873932, -0.024029,
		24.642944, 34.781464, 33.736729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929605, 34.054733, 34.154499>,  <24.303127, 34.169712, 33.753551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929605, 34.054733, 34.154499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837578, 34.444000, 34.152935>,  <24.782362, 34.677559, 34.151997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837578, 34.444000, 34.152935>,  <24.929605, 34.054733, 34.154499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837578, 34.444000, 34.152935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114010, 0.030943, 0.992998,
		0.966473, 0.228013, -0.118069,
		-0.230070, 0.973166, -0.003909,
		24.768557, 34.735950, 34.151764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387527, 34.317047, 34.646557>,  <24.929605, 34.054733, 34.154499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387527, 34.317047, 34.646557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125538, 34.618660, 34.626774>,  <24.968344, 34.799629, 34.614902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125538, 34.618660, 34.626774>,  <25.387527, 34.317047, 34.646557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125538, 34.618660, 34.626774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091590, -0.014250, 0.995695,
		0.750082, 0.656682, 0.078395,
		-0.654972, 0.754033, -0.049457,
		24.929047, 34.844872, 34.611938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579565, 34.909515, 35.061501>,  <25.387527, 34.317047, 34.646557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579565, 34.909515, 35.061501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198063, 34.798847, 35.014511>,  <24.969162, 34.732445, 34.986317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198063, 34.798847, 35.014511>,  <25.579565, 34.909515, 35.061501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198063, 34.798847, 35.014511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116942, -0.018492, 0.992967,
		-0.276896, 0.960787, -0.014718,
		-0.953758, -0.276669, -0.117476,
		24.911936, 34.715847, 34.979267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309862, 35.234726, 35.732662>,  <25.579565, 34.909515, 35.061501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309862, 35.234726, 35.732662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492418, 35.184368, 36.084991>,  <25.601952, 35.154152, 36.296391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492418, 35.184368, 36.084991>,  <25.309862, 35.234726, 35.732662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492418, 35.184368, 36.084991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227388, -0.940565, -0.252255,
		0.860233, 0.315416, -0.400638,
		0.456391, -0.125898, 0.880827,
		25.629335, 35.146599, 36.349239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914873, 34.800804, 35.721851>,  <25.309862, 35.234726, 35.732662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914873, 34.800804, 35.721851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827097, 34.729008, 36.105438>,  <25.774431, 34.685928, 36.335590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827097, 34.729008, 36.105438>,  <25.914873, 34.800804, 35.721851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827097, 34.729008, 36.105438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250219, -0.960408, -0.122504,
		0.942993, 0.213071, 0.255667,
		-0.219442, -0.179493, 0.958972,
		25.761265, 34.675159, 36.393131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392656, 34.316750, 36.084198>,  <25.914873, 34.800804, 35.721851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392656, 34.316750, 36.084198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062536, 34.269966, 36.305180>,  <25.864464, 34.241898, 36.437767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062536, 34.269966, 36.305180>,  <26.392656, 34.316750, 36.084198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062536, 34.269966, 36.305180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137794, -0.990453, -0.003837,
		0.547628, 0.072958, 0.833535,
		-0.825298, -0.116958, 0.552453,
		25.814947, 34.234879, 36.470917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416965, 34.942593, 36.404629>,  <26.392656, 34.316750, 36.084198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416965, 34.942593, 36.404629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810417, 34.872501, 36.387779>,  <27.046488, 34.830448, 36.377670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810417, 34.872501, 36.387779>,  <26.416965, 34.942593, 36.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810417, 34.872501, 36.387779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055224, 0.070566, 0.995977,
		-0.171548, -0.981996, 0.079087,
		0.983626, -0.175226, -0.042124,
		27.105505, 34.819935, 36.375141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581587, 34.342949, 36.887962>,  <26.416965, 34.942593, 36.404629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581587, 34.342949, 36.887962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895906, 34.580147, 36.817680>,  <27.084497, 34.722466, 36.775513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895906, 34.580147, 36.817680>,  <26.581587, 34.342949, 36.887962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895906, 34.580147, 36.817680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114868, 0.139216, 0.983577,
		0.607721, -0.793077, 0.041279,
		0.785799, 0.592998, -0.175704,
		27.131647, 34.758045, 36.764969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114775, 34.111294, 37.358238>,  <26.581587, 34.342949, 36.887962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114775, 34.111294, 37.358238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154453, 34.497112, 37.260410>,  <27.178261, 34.728603, 37.201714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154453, 34.497112, 37.260410>,  <27.114775, 34.111294, 37.358238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154453, 34.497112, 37.260410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049893, 0.240655, 0.969328,
		0.993816, -0.108355, -0.024252,
		0.099195, 0.964544, -0.244573,
		27.184212, 34.786476, 37.187038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766621, 34.341263, 37.696964>,  <27.114775, 34.111294, 37.358238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766621, 34.341263, 37.696964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479818, 34.618092, 37.663628>,  <27.307737, 34.784187, 37.643623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479818, 34.618092, 37.663628>,  <27.766621, 34.341263, 37.696964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479818, 34.618092, 37.663628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001425, 0.118106, 0.993000,
		0.697068, 0.712103, -0.083696,
		-0.717004, 0.692069, -0.083343,
		27.264717, 34.825714, 37.638626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919840, 34.945141, 38.087502>,  <27.766621, 34.341263, 37.696964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919840, 34.945141, 38.087502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292572, 35.090290, 38.089012>,  <28.516212, 35.177380, 38.089920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292572, 35.090290, 38.089012>,  <27.919840, 34.945141, 38.087502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292572, 35.090290, 38.089012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179062, 0.450714, 0.874525,
		0.315638, -0.815586, 0.484966,
		0.931831, 0.362872, 0.003778,
		28.572121, 35.199150, 38.090145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176540, 34.632973, 38.736736>,  <27.919840, 34.945141, 38.087502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176540, 34.632973, 38.736736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345760, 34.974281, 38.614777>,  <28.447292, 35.179066, 38.541599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345760, 34.974281, 38.614777>,  <28.176540, 34.632973, 38.736736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345760, 34.974281, 38.614777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197730, 0.415317, 0.887927,
		0.884269, -0.315350, 0.344417,
		0.423050, 0.853268, -0.304898,
		28.472675, 35.230263, 38.523308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751287, 34.911182, 39.206860>,  <28.176540, 34.632973, 38.736736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751287, 34.911182, 39.206860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563595, 35.211868, 39.021500>,  <28.450979, 35.392281, 38.910282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563595, 35.211868, 39.021500>,  <28.751287, 34.911182, 39.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563595, 35.211868, 39.021500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346756, 0.325763, 0.879567,
		0.812146, 0.573409, 0.107804,
		-0.469233, 0.751718, -0.463400,
		28.422825, 35.437386, 38.882481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804222, 35.646229, 39.584995>,  <28.751287, 34.911182, 39.206860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804222, 35.646229, 39.584995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470797, 35.615482, 39.366177>,  <28.270741, 35.597034, 39.234886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470797, 35.615482, 39.366177>,  <28.804222, 35.646229, 39.584995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470797, 35.615482, 39.366177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547262, 0.249957, 0.798765,
		0.075344, 0.965202, -0.250418,
		-0.833563, -0.076862, -0.547051,
		28.220728, 35.592422, 39.202061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365488, 36.321018, 39.529388>,  <28.804222, 35.646229, 39.584995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365488, 36.321018, 39.529388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087446, 36.040489, 39.466187>,  <27.920620, 35.872169, 39.428265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087446, 36.040489, 39.466187>,  <28.365488, 36.321018, 39.529388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087446, 36.040489, 39.466187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669604, 0.551612, 0.497347,
		-0.261643, 0.451513, -0.853041,
		-0.695107, -0.701327, -0.158009,
		27.878914, 35.830090, 39.418785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743946, 36.617344, 39.227161>,  <28.365488, 36.321018, 39.529388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743946, 36.617344, 39.227161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634186, 36.294483, 39.436237>,  <27.568329, 36.100765, 39.561684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634186, 36.294483, 39.436237>,  <27.743946, 36.617344, 39.227161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634186, 36.294483, 39.436237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576842, 0.573062, 0.582112,
		-0.769388, -0.141778, -0.622849,
		-0.274400, -0.807155, 0.522690,
		27.551867, 36.052338, 39.593044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997181, 36.434875, 39.067783>,  <27.743946, 36.617344, 39.227161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997181, 36.434875, 39.067783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133410, 36.345989, 39.433216>,  <27.215147, 36.292656, 39.652477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133410, 36.345989, 39.433216>,  <26.997181, 36.434875, 39.067783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133410, 36.345989, 39.433216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600959, 0.695829, 0.393281,
		-0.723089, -0.682966, 0.103439,
		0.340573, -0.222214, 0.913581,
		27.235582, 36.279324, 39.707291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129381, 37.100498, 38.845261>,  <26.997181, 36.434875, 39.067783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129381, 37.100498, 38.845261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815409, 37.047268, 38.603210>,  <26.627026, 37.015331, 38.457981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815409, 37.047268, 38.603210>,  <27.129381, 37.100498, 38.845261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815409, 37.047268, 38.603210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528633, 0.365555, -0.766105,
		0.323153, -0.921228, -0.216590,
		-0.784933, -0.133072, -0.605122,
		26.579929, 37.007343, 38.421673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991436, 36.962467, 38.076939>,  <27.129381, 37.100498, 38.845261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991436, 36.962467, 38.076939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912563, 37.094700, 37.707760>,  <26.865240, 37.174038, 37.486252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912563, 37.094700, 37.707760>,  <26.991436, 36.962467, 38.076939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912563, 37.094700, 37.707760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949789, -0.168876, -0.263405,
		-0.242940, -0.928547, -0.280679,
		-0.197184, 0.330577, -0.922950,
		26.853409, 37.193874, 37.430874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953655, 36.304096, 37.864658>,  <26.991436, 36.962467, 38.076939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953655, 36.304096, 37.864658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833874, 35.925259, 37.818447>,  <26.762005, 35.697956, 37.790722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833874, 35.925259, 37.818447>,  <26.953655, 36.304096, 37.864658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833874, 35.925259, 37.818447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946268, -0.279312, -0.162980,
		0.122089, -0.158124, 0.979842,
		-0.299453, -0.947091, -0.115526,
		26.744038, 35.641132, 37.783791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019726, 35.942661, 37.219414>,  <26.953655, 36.304096, 37.864658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019726, 35.942661, 37.219414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196413, 35.608891, 37.351242>,  <27.302425, 35.408627, 37.430340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196413, 35.608891, 37.351242>,  <27.019726, 35.942661, 37.219414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196413, 35.608891, 37.351242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241958, -0.242944, -0.939380,
		0.863911, 0.494683, 0.094584,
		0.441717, -0.834426, 0.329575,
		27.328928, 35.358562, 37.450115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588140, 35.980774, 36.880676>,  <27.019726, 35.942661, 37.219414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588140, 35.980774, 36.880676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479458, 35.609394, 36.981998>,  <27.414248, 35.386566, 37.042793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479458, 35.609394, 36.981998>,  <27.588140, 35.980774, 36.880676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479458, 35.609394, 36.981998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115724, -0.292819, -0.949139,
		0.955397, -0.228574, 0.187004,
		-0.271707, -0.928446, 0.253306,
		27.397945, 35.330860, 37.057991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143820, 35.591625, 36.656761>,  <27.588140, 35.980774, 36.880676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143820, 35.591625, 36.656761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844980, 35.327168, 36.684258>,  <27.665676, 35.168491, 36.700756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844980, 35.327168, 36.684258>,  <28.143820, 35.591625, 36.656761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844980, 35.327168, 36.684258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208911, -0.331724, -0.919954,
		0.631030, -0.672936, 0.385951,
		-0.747099, -0.661148, 0.068744,
		27.620850, 35.128822, 36.704880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379885, 34.832497, 36.523388>,  <28.143820, 35.591625, 36.656761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379885, 34.832497, 36.523388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991220, 34.867886, 36.435711>,  <27.758022, 34.889118, 36.383106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991220, 34.867886, 36.435711>,  <28.379885, 34.832497, 36.523388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991220, 34.867886, 36.435711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152539, -0.473675, -0.867389,
		-0.180563, -0.876245, 0.446757,
		-0.971663, 0.088471, -0.219190,
		27.699722, 34.894428, 36.369953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101116, 34.464497, 36.462551>,  <28.379885, 34.832497, 36.523388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101116, 34.464497, 36.462551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498068, 34.418076, 36.445980>,  <29.736238, 34.390224, 36.436039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498068, 34.418076, 36.445980>,  <29.101116, 34.464497, 36.462551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498068, 34.418076, 36.445980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120430, -0.842298, -0.525387,
		0.026076, 0.526372, -0.849855,
		0.992379, -0.116049, -0.041427,
		29.795782, 34.383263, 36.433552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320681, 34.388969, 35.779419>,  <29.101116, 34.464497, 36.462551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320681, 34.388969, 35.779419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532562, 34.183170, 36.049149>,  <29.659691, 34.059692, 36.210987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532562, 34.183170, 36.049149>,  <29.320681, 34.388969, 35.779419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532562, 34.183170, 36.049149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234856, -0.852902, -0.466262,
		0.815020, 0.088612, -0.572617,
		0.529703, -0.514495, 0.674321,
		29.691473, 34.028820, 36.251446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827133, 33.802654, 35.543720>,  <29.320681, 34.388969, 35.779419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827133, 33.802654, 35.543720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670540, 33.699188, 35.896954>,  <29.576584, 33.637108, 36.108894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670540, 33.699188, 35.896954>,  <29.827133, 33.802654, 35.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670540, 33.699188, 35.896954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043913, -0.953335, -0.298704,
		0.919138, -0.155716, 0.361854,
		-0.391481, -0.258661, 0.883084,
		29.553095, 33.621590, 36.161880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719841, 33.123665, 35.546715>,  <29.827133, 33.802654, 35.543720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719841, 33.123665, 35.546715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594862, 33.146961, 35.925976>,  <29.519875, 33.160938, 36.153530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594862, 33.146961, 35.925976>,  <29.719841, 33.123665, 35.546715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594862, 33.146961, 35.925976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129791, -0.991376, 0.018126,
		0.941026, -0.117398, 0.317312,
		-0.312448, 0.058242, 0.948148,
		29.501127, 33.164433, 36.210419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103777, 32.502613, 35.770248>,  <29.719841, 33.123665, 35.546715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103777, 32.502613, 35.770248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365599, 32.200211, 35.771450>,  <30.522692, 32.018768, 35.772171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365599, 32.200211, 35.771450>,  <30.103777, 32.502613, 35.770248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365599, 32.200211, 35.771450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280299, -0.238989, 0.929686,
		-0.702134, -0.609371, -0.368340,
		0.654553, -0.756010, 0.003003,
		30.561964, 31.973408, 35.772350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861137, 31.827269, 35.833290>,  <30.103777, 32.502613, 35.770248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861137, 31.827269, 35.833290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220289, 31.858561, 36.006584>,  <30.435780, 31.877337, 36.110561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220289, 31.858561, 36.006584>,  <29.861137, 31.827269, 35.833290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220289, 31.858561, 36.006584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407142, -0.226812, 0.884756,
		0.167477, -0.970792, -0.171799,
		0.897879, 0.078230, 0.433236,
		30.489653, 31.882029, 36.136555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941961, 31.175360, 36.276737>,  <29.861137, 31.827269, 35.833290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941961, 31.175360, 36.276737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203617, 31.450998, 36.401474>,  <30.360611, 31.616383, 36.476315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203617, 31.450998, 36.401474>,  <29.941961, 31.175360, 36.276737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203617, 31.450998, 36.401474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125420, -0.307753, 0.943164,
		0.745902, -0.656073, -0.114887,
		0.654141, 0.689098, 0.311839,
		30.399860, 31.657728, 36.495026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618397, 30.931227, 36.664169>,  <29.941961, 31.175360, 36.276737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618397, 30.931227, 36.664169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468201, 31.276409, 36.799408>,  <30.378084, 31.483519, 36.880550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468201, 31.276409, 36.799408>,  <30.618397, 30.931227, 36.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468201, 31.276409, 36.799408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159826, -0.419617, 0.893520,
		0.912942, 0.281470, 0.295485,
		-0.375489, 0.862958, 0.338100,
		30.355555, 31.535297, 36.900837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555387, 30.728218, 37.263336>,  <30.618397, 30.931227, 36.664169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555387, 30.728218, 37.263336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428574, 31.105913, 37.298897>,  <30.352486, 31.332531, 37.320232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428574, 31.105913, 37.298897>,  <30.555387, 30.728218, 37.263336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428574, 31.105913, 37.298897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280678, -0.182951, 0.942204,
		0.905929, 0.273761, 0.323029,
		-0.317037, 0.944237, 0.088902,
		30.333462, 31.389185, 37.325569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880701, 31.061800, 37.890667>,  <30.555387, 30.728218, 37.263336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880701, 31.061800, 37.890667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537689, 31.236534, 37.781994>,  <30.331882, 31.341375, 37.716789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537689, 31.236534, 37.781994>,  <30.880701, 31.061800, 37.890667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537689, 31.236534, 37.781994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357790, -0.126984, 0.925128,
		0.369629, 0.890533, 0.265189,
		-0.857532, 0.436836, -0.271687,
		30.280430, 31.367584, 37.700489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315218, 30.669554, 38.131027>,  <30.880701, 31.061800, 37.890667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315218, 30.669554, 38.131027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955450, 30.616100, 38.297489>,  <29.739590, 30.584028, 38.397366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955450, 30.616100, 38.297489>,  <30.315218, 30.669554, 38.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955450, 30.616100, 38.297489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318331, -0.852716, 0.414176,
		0.299514, 0.504993, 0.809489,
		-0.899420, -0.133634, 0.416155,
		29.685623, 30.576010, 38.422337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969036, 31.282114, 38.235012>,  <30.315218, 30.669554, 38.131027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969036, 31.282114, 38.235012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253662, 31.559669, 38.279186>,  <30.424438, 31.726202, 38.305691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253662, 31.559669, 38.279186>,  <29.969036, 31.282114, 38.235012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253662, 31.559669, 38.279186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020648, 0.177762, -0.983857,
		-0.702317, 0.697798, 0.140817,
		0.711565, 0.693887, 0.110437,
		30.467133, 31.767836, 38.312317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834181, 31.888359, 37.846066>,  <29.969036, 31.282114, 38.235012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834181, 31.888359, 37.846066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233479, 31.908165, 37.859047>,  <30.473057, 31.920048, 37.866837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233479, 31.908165, 37.859047>,  <29.834181, 31.888359, 37.846066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233479, 31.908165, 37.859047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030562, 0.038457, -0.998793,
		-0.050703, 0.998033, 0.036877,
		0.998246, 0.049515, 0.032452,
		30.532953, 31.923019, 37.868782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007616, 32.453564, 37.356464>,  <29.834181, 31.888359, 37.846066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007616, 32.453564, 37.356464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292078, 32.177605, 37.410561>,  <30.462755, 32.012028, 37.443020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292078, 32.177605, 37.410561>,  <30.007616, 32.453564, 37.356464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292078, 32.177605, 37.410561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193074, 0.006684, -0.981161,
		0.676001, 0.723872, 0.137956,
		0.711157, -0.689902, 0.135243,
		30.505424, 31.970634, 37.451134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660650, 32.693245, 37.168224>,  <30.007616, 32.453564, 37.356464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660650, 32.693245, 37.168224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607542, 32.300343, 37.115231>,  <30.575676, 32.064602, 37.083435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607542, 32.300343, 37.115231>,  <30.660650, 32.693245, 37.168224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607542, 32.300343, 37.115231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141646, 0.113490, -0.983390,
		0.980973, -0.149333, 0.124063,
		-0.132772, -0.982252, -0.132483,
		30.567711, 32.005669, 37.075485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339535, 32.452187, 36.869282>,  <30.660650, 32.693245, 37.168224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339535, 32.452187, 36.869282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035389, 32.210175, 36.774803>,  <30.852901, 32.064968, 36.718117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035389, 32.210175, 36.774803>,  <31.339535, 32.452187, 36.869282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035389, 32.210175, 36.774803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393089, -0.139180, -0.908906,
		0.517040, -0.783945, 0.343657,
		-0.760362, -0.605028, -0.236198,
		30.807280, 32.028667, 36.703945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673950, 31.852907, 36.668644>,  <31.339535, 32.452187, 36.869282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673950, 31.852907, 36.668644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317745, 31.866627, 36.487179>,  <31.104021, 31.874859, 36.378300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317745, 31.866627, 36.487179>,  <31.673950, 31.852907, 36.668644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317745, 31.866627, 36.487179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450100, -0.078889, -0.889487,
		-0.066301, -0.996293, 0.054812,
		-0.890514, 0.034302, -0.453662,
		31.050591, 31.876917, 36.351082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731333, 31.342625, 36.189053>,  <31.673950, 31.852907, 36.668644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731333, 31.342625, 36.189053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434683, 31.559645, 36.031254>,  <31.256693, 31.689856, 35.936573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434683, 31.559645, 36.031254>,  <31.731333, 31.342625, 36.189053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434683, 31.559645, 36.031254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369520, -0.160411, -0.915272,
		-0.559862, -0.824566, -0.081517,
		-0.741627, 0.542548, -0.394501,
		31.212194, 31.722408, 35.912903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539520, 30.786270, 35.620934>,  <31.731333, 31.342625, 36.189053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539520, 30.786270, 35.620934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483280, 31.178209, 35.564178>,  <31.449535, 31.413372, 35.530125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483280, 31.178209, 35.564178>,  <31.539520, 30.786270, 35.620934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483280, 31.178209, 35.564178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259368, -0.101855, -0.960393,
		-0.955489, -0.171833, -0.239820,
		-0.140601, 0.979846, -0.141889,
		31.441099, 31.472164, 35.521610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000595, 30.887447, 35.086552>,  <31.539520, 30.786270, 35.620934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000595, 30.887447, 35.086552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238907, 31.207249, 35.117123>,  <31.381893, 31.399130, 35.135468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238907, 31.207249, 35.117123>,  <31.000595, 30.887447, 35.086552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238907, 31.207249, 35.117123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139574, -0.009351, -0.990168,
		-0.790928, 0.600588, -0.117161,
		0.595778, 0.799504, 0.076430,
		31.417641, 31.447100, 35.140053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923664, 31.265301, 34.525177>,  <31.000595, 30.887447, 35.086552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923664, 31.265301, 34.525177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265694, 31.434547, 34.645054>,  <31.470911, 31.536095, 34.716980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265694, 31.434547, 34.645054>,  <30.923664, 31.265301, 34.525177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265694, 31.434547, 34.645054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305321, 0.056284, -0.950585,
		-0.419075, 0.904326, -0.081059,
		0.855076, 0.423115, 0.299697,
		31.522217, 31.561481, 34.734962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069389, 31.665758, 34.049561>,  <30.923664, 31.265301, 34.525177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069389, 31.665758, 34.049561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435074, 31.654264, 34.211250>,  <31.654484, 31.647367, 34.308262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435074, 31.654264, 34.211250>,  <31.069389, 31.665758, 34.049561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435074, 31.654264, 34.211250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405077, 0.093118, -0.909528,
		-0.011504, 0.995240, 0.096770,
		0.914210, -0.028737, 0.404220,
		31.709337, 31.645643, 34.332516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514927, 32.210888, 33.830544>,  <31.069389, 31.665758, 34.049561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514927, 32.210888, 33.830544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763433, 31.913197, 33.928642>,  <31.912537, 31.734581, 33.987503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763433, 31.913197, 33.928642>,  <31.514927, 32.210888, 33.830544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763433, 31.913197, 33.928642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498968, 0.134399, -0.856135,
		0.604203, 0.654259, 0.454846,
		0.621265, -0.744233, 0.245250,
		31.949812, 31.689926, 34.002216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087185, 32.440968, 33.706947>,  <31.514927, 32.210888, 33.830544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087185, 32.440968, 33.706947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197235, 32.056728, 33.722729>,  <32.263268, 31.826185, 33.732197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197235, 32.056728, 33.722729>,  <32.087185, 32.440968, 33.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197235, 32.056728, 33.722729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499410, 0.107732, -0.859641,
		0.821519, 0.256215, 0.509373,
		0.275129, -0.960598, 0.039453,
		32.279774, 31.768549, 33.734566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806057, 32.415588, 33.677769>,  <32.087185, 32.440968, 33.706947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806057, 32.415588, 33.677769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651741, 32.069954, 33.548450>,  <32.559151, 31.862574, 33.470860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651741, 32.069954, 33.548450>,  <32.806057, 32.415588, 33.677769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651741, 32.069954, 33.548450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371975, 0.174999, -0.911597,
		0.844275, -0.471945, 0.253905,
		-0.385791, -0.864085, -0.323299,
		32.536003, 31.810728, 33.451462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267441, 32.094048, 33.198586>,  <32.806057, 32.415588, 33.677769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267441, 32.094048, 33.198586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949314, 31.872248, 33.100605>,  <32.758438, 31.739166, 33.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949314, 31.872248, 33.100605>,  <33.267441, 32.094048, 33.198586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949314, 31.872248, 33.100605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257993, 0.056036, -0.964521,
		0.548557, -0.830292, 0.098492,
		-0.795314, -0.554505, -0.244949,
		32.710720, 31.705896, 33.027119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495655, 31.531849, 32.822338>,  <33.267441, 32.094048, 33.198586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495655, 31.531849, 32.822338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106846, 31.566587, 32.735039>,  <32.873562, 31.587431, 32.682659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106846, 31.566587, 32.735039>,  <33.495655, 31.531849, 32.822338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106846, 31.566587, 32.735039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225495, 0.084805, -0.970546,
		-0.065781, -0.992605, -0.102016,
		-0.972021, 0.086848, -0.218249,
		32.815239, 31.592642, 32.669563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306007, 30.951569, 32.316147>,  <33.495655, 31.531849, 32.822338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306007, 30.951569, 32.316147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030396, 31.236717, 32.263920>,  <32.865028, 31.407806, 32.232582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030396, 31.236717, 32.263920>,  <33.306007, 30.951569, 32.316147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030396, 31.236717, 32.263920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188022, 0.001841, -0.982163,
		-0.699916, -0.701292, -0.135304,
		-0.689032, 0.712872, -0.130570,
		32.823685, 31.450579, 32.224751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823582, 30.732489, 31.714230>,  <33.306007, 30.951569, 32.316147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823582, 30.732489, 31.714230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764534, 31.123917, 31.771650>,  <32.729107, 31.358774, 31.806103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764534, 31.123917, 31.771650>,  <32.823582, 30.732489, 31.714230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764534, 31.123917, 31.771650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142749, 0.164700, -0.975959,
		-0.978689, -0.123576, -0.164003,
		-0.147617, 0.978572, 0.143550,
		32.720249, 31.417488, 31.814714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353828, 30.898392, 31.154928>,  <32.823582, 30.732489, 31.714230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353828, 30.898392, 31.154928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554096, 31.224903, 31.270178>,  <32.674259, 31.420811, 31.339329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554096, 31.224903, 31.270178>,  <32.353828, 30.898392, 31.154928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554096, 31.224903, 31.270178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081531, 0.286901, -0.954485,
		-0.861789, 0.501374, 0.077091,
		0.500672, 0.816279, 0.288126,
		32.704296, 31.469788, 31.356615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088875, 31.369383, 30.756598>,  <32.353828, 30.898392, 31.154928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088875, 31.369383, 30.756598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391853, 31.589073, 30.897812>,  <32.573639, 31.720886, 30.982540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391853, 31.589073, 30.897812>,  <32.088875, 31.369383, 30.756598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391853, 31.589073, 30.897812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113061, 0.422215, -0.899417,
		-0.643039, 0.721171, 0.257707,
		0.757442, 0.549224, 0.353037,
		32.619087, 31.753839, 31.003723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941814, 32.081932, 30.517090>,  <32.088875, 31.369383, 30.756598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941814, 32.081932, 30.517090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333282, 32.037022, 30.585913>,  <32.568161, 32.010075, 30.627207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333282, 32.037022, 30.585913>,  <31.941814, 32.081932, 30.517090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333282, 32.037022, 30.585913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204786, 0.465927, -0.860799,
		0.016480, 0.877671, 0.478980,
		0.978668, -0.112275, 0.172056,
		32.626884, 32.003338, 30.637529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260235, 32.726738, 30.286474>,  <31.941814, 32.081932, 30.517090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260235, 32.726738, 30.286474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563408, 32.467175, 30.259752>,  <32.745312, 32.311436, 30.243719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563408, 32.467175, 30.259752>,  <32.260235, 32.726738, 30.286474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563408, 32.467175, 30.259752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192596, 0.320437, -0.927484,
		0.623257, 0.690101, 0.367846,
		0.757930, -0.648907, -0.066804,
		32.790787, 32.272503, 30.239712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741478, 33.138500, 30.061317>,  <32.260235, 32.726738, 30.286474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741478, 33.138500, 30.061317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866661, 32.776207, 29.946983>,  <32.941772, 32.558830, 29.878384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866661, 32.776207, 29.946983>,  <32.741478, 33.138500, 30.061317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866661, 32.776207, 29.946983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259247, 0.370988, -0.891717,
		0.913700, 0.204968, 0.350913,
		0.312958, -0.905735, -0.285834,
		32.960548, 32.504486, 29.861233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173531, 33.346127, 29.654558>,  <32.741478, 33.138500, 30.061317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173531, 33.346127, 29.654558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162014, 32.965549, 29.531973>,  <33.155106, 32.737202, 29.458422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162014, 32.965549, 29.531973>,  <33.173531, 33.346127, 29.654558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162014, 32.965549, 29.531973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285923, 0.285941, -0.914596,
		0.957820, -0.113958, 0.263808,
		-0.028792, -0.951447, -0.306463,
		33.153378, 32.680115, 29.440035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744110, 33.279148, 29.360571>,  <33.173531, 33.346127, 29.654558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744110, 33.279148, 29.360571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510815, 32.983391, 29.226036>,  <33.370838, 32.805935, 29.145315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510815, 32.983391, 29.226036>,  <33.744110, 33.279148, 29.360571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510815, 32.983391, 29.226036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109598, 0.338638, -0.934512,
		0.804872, -0.581906, -0.116471,
		-0.583240, -0.739398, -0.336337,
		33.335842, 32.761570, 29.125135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094948, 33.026848, 28.817774>,  <33.744110, 33.279148, 29.360571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094948, 33.026848, 28.817774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725700, 32.889343, 28.748865>,  <33.504150, 32.806839, 28.707520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725700, 32.889343, 28.748865>,  <34.094948, 33.026848, 28.817774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725700, 32.889343, 28.748865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072560, 0.284243, -0.956003,
		0.377605, -0.895005, -0.237446,
		-0.923120, -0.343762, -0.172273,
		33.448765, 32.786217, 28.697184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084579, 32.829273, 28.069176>,  <34.094948, 33.026848, 28.817774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084579, 32.829273, 28.069176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697102, 32.874352, 28.157663>,  <33.464615, 32.901398, 28.210756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697102, 32.874352, 28.157663>,  <34.084579, 32.829273, 28.069176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697102, 32.874352, 28.157663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154333, 0.424621, -0.892120,
		-0.194473, -0.898330, -0.393934,
		-0.968691, 0.112696, 0.221220,
		33.406494, 32.908161, 28.224030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646847, 32.522701, 27.510063>,  <34.084579, 32.829273, 28.069176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646847, 32.522701, 27.510063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438286, 32.812943, 27.689676>,  <33.313148, 32.987087, 27.797445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438286, 32.812943, 27.689676>,  <33.646847, 32.522701, 27.510063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438286, 32.812943, 27.689676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221410, 0.393162, -0.892413,
		-0.824083, -0.564731, -0.044341,
		-0.521406, 0.725605, 0.449035,
		33.281864, 33.030624, 27.824387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012703, 32.580547, 27.186354>,  <33.646847, 32.522701, 27.510063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012703, 32.580547, 27.186354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078022, 32.942165, 27.344358>,  <33.117214, 33.159138, 27.439161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078022, 32.942165, 27.344358>,  <33.012703, 32.580547, 27.186354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078022, 32.942165, 27.344358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370629, 0.427274, -0.824664,
		-0.914313, -0.011738, 0.404838,
		0.163297, 0.904046, 0.395012,
		33.127010, 33.213379, 27.462862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315392, 32.836254, 26.961674>,  <33.012703, 32.580547, 27.186354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315392, 32.836254, 26.961674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562336, 33.127781, 27.080126>,  <32.710503, 33.302696, 27.151197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562336, 33.127781, 27.080126>,  <32.315392, 32.836254, 26.961674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562336, 33.127781, 27.080126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445200, 0.634035, -0.632294,
		-0.648581, 0.258518, 0.715898,
		0.617364, 0.728812, 0.296132,
		32.747547, 33.346424, 27.168964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887566, 33.479649, 26.936230>,  <32.315392, 32.836254, 26.961674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887566, 33.479649, 26.936230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270363, 33.592350, 26.908577>,  <32.500042, 33.659969, 26.891985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270363, 33.592350, 26.908577>,  <31.887566, 33.479649, 26.936230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270363, 33.592350, 26.908577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256188, 0.708931, -0.657103,
		-0.136131, 0.646554, 0.750624,
		0.956993, 0.281753, -0.069133,
		32.557461, 33.676876, 26.887836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789438, 34.177113, 26.839262>,  <31.887566, 33.479649, 26.936230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789438, 34.177113, 26.839262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179035, 34.121941, 26.767361>,  <32.412792, 34.088837, 26.724220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179035, 34.121941, 26.767361>,  <31.789438, 34.177113, 26.839262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179035, 34.121941, 26.767361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015204, 0.751777, -0.659242,
		0.226065, 0.644831, 0.730129,
		0.973993, -0.137931, -0.179755,
		32.471233, 34.080563, 26.713434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152676, 34.835136, 26.776733>,  <31.789438, 34.177113, 26.839262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152676, 34.835136, 26.776733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365376, 34.565243, 26.571999>,  <32.492996, 34.403305, 26.449158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365376, 34.565243, 26.571999>,  <32.152676, 34.835136, 26.776733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365376, 34.565243, 26.571999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162663, 0.674480, -0.720151,
		0.831133, 0.299684, 0.468409,
		0.531751, -0.674734, -0.511835,
		32.524902, 34.362823, 26.418447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532829, 35.243553, 26.468456>,  <32.152676, 34.835136, 26.776733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532829, 35.243553, 26.468456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601891, 34.899029, 26.277321>,  <32.643326, 34.692314, 26.162640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601891, 34.899029, 26.277321>,  <32.532829, 35.243553, 26.468456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601891, 34.899029, 26.277321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267341, 0.507889, -0.818888,
		0.948008, 0.013638, 0.317954,
		0.172654, -0.861314, -0.477837,
		32.653687, 34.640633, 26.133970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276001, 35.265827, 26.170923>,  <32.532829, 35.243553, 26.468456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276001, 35.265827, 26.170923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040943, 34.999416, 25.987152>,  <32.899910, 34.839569, 25.876888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040943, 34.999416, 25.987152>,  <33.276001, 35.265827, 26.170923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040943, 34.999416, 25.987152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138189, 0.476858, -0.868050,
		0.797231, -0.573593, -0.188185,
		-0.587645, -0.666031, -0.459430,
		32.864651, 34.799606, 25.849323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660629, 34.963726, 25.613943>,  <33.276001, 35.265827, 26.170923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660629, 34.963726, 25.613943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274136, 34.902798, 25.530819>,  <33.042240, 34.866241, 25.480944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274136, 34.902798, 25.530819>,  <33.660629, 34.963726, 25.613943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274136, 34.902798, 25.530819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028437, 0.738563, -0.673584,
		0.256085, -0.656751, -0.709295,
		-0.966236, -0.152324, -0.207811,
		32.984264, 34.857101, 25.468475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634750, 34.895763, 24.834833>,  <33.660629, 34.963726, 25.613943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634750, 34.895763, 24.834833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270390, 34.995090, 24.966648>,  <33.051773, 35.054688, 25.045738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270390, 34.995090, 24.966648>,  <33.634750, 34.895763, 24.834833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270390, 34.995090, 24.966648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056568, 0.715949, -0.695857,
		-0.408728, -0.652498, -0.638112,
		-0.910902, 0.248320, 0.329539,
		32.997120, 35.069588, 25.065510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269421, 34.824036, 24.257330>,  <33.634750, 34.895763, 24.834833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269421, 34.824036, 24.257330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046852, 35.053322, 24.497936>,  <32.913311, 35.190891, 24.642300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046852, 35.053322, 24.497936>,  <33.269421, 34.824036, 24.257330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046852, 35.053322, 24.497936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005029, 0.721599, -0.692294,
		-0.830884, -0.388233, -0.398631,
		-0.556423, 0.573211, 0.601517,
		32.879925, 35.225285, 24.678391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721684, 35.125530, 23.798779>,  <33.269421, 34.824036, 24.257330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721684, 35.125530, 23.798779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771526, 35.360306, 24.118773>,  <32.801434, 35.501171, 24.310770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771526, 35.360306, 24.118773>,  <32.721684, 35.125530, 23.798779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771526, 35.360306, 24.118773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116268, 0.809353, -0.575698,
		-0.985370, -0.021276, 0.169095,
		0.124609, 0.586936, 0.799986,
		32.808910, 35.536388, 24.358768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405071, 35.762852, 23.580177>,  <32.721684, 35.125530, 23.798779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405071, 35.762852, 23.580177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616894, 35.873482, 23.900946>,  <32.743988, 35.939861, 24.093407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616894, 35.873482, 23.900946>,  <32.405071, 35.762852, 23.580177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616894, 35.873482, 23.900946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195412, 0.880154, -0.432600,
		-0.825461, 0.385790, 0.412044,
		0.529555, 0.276576, 0.801921,
		32.775761, 35.956455, 24.141521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139740, 36.458584, 23.725048>,  <32.405071, 35.762852, 23.580177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139740, 36.458584, 23.725048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491570, 36.457546, 23.915354>,  <32.702667, 36.456924, 24.029537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491570, 36.457546, 23.915354>,  <32.139740, 36.458584, 23.725048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491570, 36.457546, 23.915354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293734, 0.789604, -0.538745,
		-0.374269, 0.613611, 0.695273,
		0.879570, -0.002590, 0.475762,
		32.755440, 36.456768, 24.058083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094952, 37.100311, 23.920301>,  <32.139740, 36.458584, 23.725048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094952, 37.100311, 23.920301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465137, 36.952431, 23.953390>,  <32.687248, 36.863701, 23.973244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465137, 36.952431, 23.953390>,  <32.094952, 37.100311, 23.920301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465137, 36.952431, 23.953390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367959, 0.825228, -0.428491,
		0.090150, 0.426990, 0.899751,
		0.925461, -0.369700, 0.082720,
		32.742775, 36.841522, 23.978207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538624, 37.618614, 24.306126>,  <32.094952, 37.100311, 23.920301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538624, 37.618614, 24.306126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758080, 37.378220, 24.073639>,  <32.889751, 37.233982, 23.934147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758080, 37.378220, 24.073639>,  <32.538624, 37.618614, 24.306126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758080, 37.378220, 24.073639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407181, 0.799240, -0.442062,
		0.730204, 0.005872, 0.683204,
		0.548640, -0.600983, -0.581217,
		32.922672, 37.197926, 23.899273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298374, 37.986729, 24.239147>,  <32.538624, 37.618614, 24.306126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298374, 37.986729, 24.239147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260796, 37.721481, 23.942108>,  <33.238251, 37.562332, 23.763885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260796, 37.721481, 23.942108>,  <33.298374, 37.986729, 24.239147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260796, 37.721481, 23.942108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560043, 0.581491, -0.590103,
		0.823120, -0.471321, 0.316748,
		-0.093942, -0.663118, -0.742597,
		33.232613, 37.522545, 23.719330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960144, 37.873283, 24.098904>,  <33.298374, 37.986729, 24.239147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960144, 37.873283, 24.098904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738110, 37.771263, 23.782213>,  <33.604889, 37.710052, 23.592199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738110, 37.771263, 23.782213>,  <33.960144, 37.873283, 24.098904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738110, 37.771263, 23.782213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502884, 0.655278, -0.563666,
		0.662571, -0.711025, -0.235464,
		-0.555074, -0.255058, -0.791731,
		33.571583, 37.694748, 23.544695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416294, 37.800228, 23.503286>,  <33.960144, 37.873283, 24.098904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416294, 37.800228, 23.503286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060326, 37.876308, 23.337461>,  <33.846745, 37.921959, 23.237967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060326, 37.876308, 23.337461>,  <34.416294, 37.800228, 23.503286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060326, 37.876308, 23.337461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441586, 0.586858, -0.678675,
		0.114202, -0.787032, -0.606249,
		-0.889921, 0.190205, -0.414563,
		33.793350, 37.933369, 23.213093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523216, 37.724503, 22.886847>,  <34.416294, 37.800228, 23.503286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523216, 37.724503, 22.886847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166546, 37.905392, 22.878706>,  <33.952545, 38.013924, 22.873821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166546, 37.905392, 22.878706>,  <34.523216, 37.724503, 22.886847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166546, 37.905392, 22.878706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324520, 0.607240, -0.725222,
		-0.315605, -0.653264, -0.688215,
		-0.891672, 0.452223, -0.020349,
		33.899044, 38.041058, 22.872601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492626, 37.925007, 22.154533>,  <34.523216, 37.724503, 22.886847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492626, 37.925007, 22.154533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227894, 38.149811, 22.352976>,  <34.069054, 38.284695, 22.472040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227894, 38.149811, 22.352976>,  <34.492626, 37.925007, 22.154533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227894, 38.149811, 22.352976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096211, 0.719986, -0.687288,
		-0.743453, -0.407138, -0.530581,
		-0.661832, 0.562014, 0.496104,
		34.029343, 38.318417, 22.501806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129601, 38.306713, 21.583221>,  <34.492626, 37.925007, 22.154533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129601, 38.306713, 21.583221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085564, 38.498062, 21.931713>,  <34.059139, 38.612873, 22.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085564, 38.498062, 21.931713>,  <34.129601, 38.306713, 21.583221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085564, 38.498062, 21.931713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233995, 0.864393, -0.445051,
		-0.965984, 0.154865, -0.207102,
		-0.110095, 0.478373, 0.871228,
		34.052536, 38.641575, 22.193081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760830, 38.988396, 21.503160>,  <34.129601, 38.306713, 21.583221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760830, 38.988396, 21.503160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034431, 39.024265, 21.792738>,  <34.198593, 39.045788, 21.966484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034431, 39.024265, 21.792738>,  <33.760830, 38.988396, 21.503160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034431, 39.024265, 21.792738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369814, 0.812804, -0.450097,
		-0.628788, 0.575593, 0.522798,
		0.684005, 0.089678, 0.723944,
		34.239632, 39.051170, 22.009922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737965, 39.663147, 21.671944>,  <33.760830, 38.988396, 21.503160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737965, 39.663147, 21.671944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104549, 39.537762, 21.771418>,  <34.324501, 39.462532, 21.831102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104549, 39.537762, 21.771418>,  <33.737965, 39.663147, 21.671944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104549, 39.537762, 21.771418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398679, 0.768248, -0.500849,
		-0.034055, 0.558153, 0.829039,
		0.916458, -0.313464, 0.248687,
		34.379486, 39.443722, 21.846024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536381, 40.222897, 22.107603>,  <33.737965, 39.663147, 21.671944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536381, 40.222897, 22.107603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738117, 40.539589, 22.245470>,  <33.859161, 40.729607, 22.328190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738117, 40.539589, 22.245470>,  <33.536381, 40.222897, 22.107603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738117, 40.539589, 22.245470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195474, 0.493469, -0.847513,
		-0.841086, 0.360066, 0.403642,
		0.504345, 0.791733, 0.344666,
		33.889420, 40.777107, 22.348869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002869, 40.687103, 22.044552>,  <33.536381, 40.222897, 22.107603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002869, 40.687103, 22.044552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355270, 40.871071, 22.088930>,  <33.566711, 40.981453, 22.115557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355270, 40.871071, 22.088930>,  <33.002869, 40.687103, 22.044552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355270, 40.871071, 22.088930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199827, 0.574290, -0.793889,
		-0.428838, 0.677249, 0.597856,
		0.881003, 0.459918, 0.110945,
		33.619572, 41.009045, 22.122213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956413, 41.347965, 22.268793>,  <33.002869, 40.687103, 22.044552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956413, 41.347965, 22.268793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281849, 41.306225, 22.039991>,  <33.477108, 41.281181, 21.902710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281849, 41.306225, 22.039991>,  <32.956413, 41.347965, 22.268793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281849, 41.306225, 22.039991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364417, 0.675063, -0.641475,
		0.453076, 0.730343, 0.511196,
		0.813586, -0.104348, -0.572004,
		33.525925, 41.274921, 21.868389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575008, 41.831661, 22.299967>,  <32.956413, 41.347965, 22.268793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575008, 41.831661, 22.299967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469227, 41.673672, 21.948044>,  <33.405758, 41.578876, 21.736891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469227, 41.673672, 21.948044>,  <33.575008, 41.831661, 22.299967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469227, 41.673672, 21.948044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343380, 0.891062, -0.296812,
		0.901196, 0.223616, -0.371269,
		-0.264452, -0.394973, -0.879808,
		33.389889, 41.555180, 21.684101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835445, 41.971188, 21.675524>,  <33.575008, 41.831661, 22.299967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835445, 41.971188, 21.675524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625202, 41.848610, 21.358076>,  <33.499058, 41.775063, 21.167608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625202, 41.848610, 21.358076>,  <33.835445, 41.971188, 21.675524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625202, 41.848610, 21.358076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615288, -0.507293, 0.603386,
		-0.587502, 0.805447, 0.078084,
		-0.525607, -0.306446, -0.793617,
		33.467522, 41.756676, 21.119991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940952, 41.508736, 21.137600>,  <33.835445, 41.971188, 21.675524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940952, 41.508736, 21.137600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218185, 41.630047, 20.876020>,  <34.384525, 41.702835, 20.719072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218185, 41.630047, 20.876020>,  <33.940952, 41.508736, 21.137600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218185, 41.630047, 20.876020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719305, -0.231518, 0.654981,
		0.047243, -0.924348, -0.378615,
		0.693086, 0.303283, -0.653951,
		34.426109, 41.721031, 20.679834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582657, 41.512173, 21.507029>,  <33.940952, 41.508736, 21.137600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582657, 41.512173, 21.507029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225048, 41.501854, 21.685940>,  <34.010483, 41.495663, 21.793287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225048, 41.501854, 21.685940>,  <34.582657, 41.512173, 21.507029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225048, 41.501854, 21.685940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423715, -0.373055, 0.825406,
		0.145569, 0.927451, 0.344449,
		-0.894022, -0.025795, 0.447280,
		33.956841, 41.494114, 21.820124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710228, 41.700775, 22.177153>,  <34.582657, 41.512173, 21.507029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710228, 41.700775, 22.177153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348576, 41.529957, 22.182491>,  <34.131584, 41.427467, 22.185694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348576, 41.529957, 22.182491>,  <34.710228, 41.700775, 22.177153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348576, 41.529957, 22.182491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176904, -0.345736, 0.921505,
		-0.388910, 0.835523, 0.388137,
		-0.904132, -0.427045, 0.013347,
		34.077335, 41.401844, 22.186495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508678, 41.850521, 22.859070>,  <34.710228, 41.700775, 22.177153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508678, 41.850521, 22.859070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317825, 41.538700, 22.696764>,  <34.203312, 41.351608, 22.599380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317825, 41.538700, 22.696764>,  <34.508678, 41.850521, 22.859070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317825, 41.538700, 22.696764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111925, -0.404049, 0.907864,
		-0.871673, 0.478589, 0.105536,
		-0.477136, -0.779549, -0.405765,
		34.174686, 41.304836, 22.575035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912670, 41.687325, 23.215033>,  <34.508678, 41.850521, 22.859070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912670, 41.687325, 23.215033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002048, 41.331688, 23.055235>,  <34.055676, 41.118305, 22.959356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002048, 41.331688, 23.055235>,  <33.912670, 41.687325, 23.215033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002048, 41.331688, 23.055235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029686, -0.415874, 0.908938,
		-0.974264, -0.191240, -0.119319,
		0.223446, -0.889087, -0.399494,
		34.069084, 41.064960, 22.935387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515903, 41.191895, 23.663904>,  <33.912670, 41.687325, 23.215033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515903, 41.191895, 23.663904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762192, 40.944351, 23.468805>,  <33.909966, 40.795826, 23.351746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762192, 40.944351, 23.468805>,  <33.515903, 41.191895, 23.663904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762192, 40.944351, 23.468805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029976, -0.600152, 0.799324,
		-0.787393, -0.506782, -0.350976,
		0.615722, -0.618861, -0.487747,
		33.946907, 40.758694, 23.322481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294750, 40.417507, 23.654099>,  <33.515903, 41.191895, 23.663904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294750, 40.417507, 23.654099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690136, 40.424301, 23.593887>,  <33.927368, 40.428379, 23.557760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690136, 40.424301, 23.593887>,  <33.294750, 40.417507, 23.654099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690136, 40.424301, 23.593887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128220, -0.622958, 0.771675,
		-0.080664, -0.782071, -0.617947,
		0.988460, 0.016987, -0.150527,
		33.986675, 40.429398, 23.548729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464653, 39.670628, 23.713873>,  <33.294750, 40.417507, 23.654099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464653, 39.670628, 23.713873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779091, 39.911781, 23.768412>,  <33.967754, 40.056473, 23.801134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779091, 39.911781, 23.768412>,  <33.464653, 39.670628, 23.713873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779091, 39.911781, 23.768412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295843, -0.560658, 0.773395,
		0.542710, -0.567623, -0.619087,
		0.786093, 0.602882, 0.136347,
		34.014919, 40.092648, 23.809317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001190, 39.196606, 23.962870>,  <33.464653, 39.670628, 23.713873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001190, 39.196606, 23.962870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120300, 39.561123, 24.076624>,  <34.191769, 39.779831, 24.144876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120300, 39.561123, 24.076624>,  <34.001190, 39.196606, 23.962870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120300, 39.561123, 24.076624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395560, -0.388910, 0.832034,
		0.868827, -0.135269, -0.476280,
		0.297779, 0.911291, 0.284388,
		34.209633, 39.834511, 24.161940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700211, 39.045124, 24.247404>,  <34.001190, 39.196606, 23.962870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700211, 39.045124, 24.247404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537498, 39.388813, 24.371515>,  <34.439873, 39.595024, 24.445982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537498, 39.388813, 24.371515>,  <34.700211, 39.045124, 24.247404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537498, 39.388813, 24.371515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269016, -0.211921, 0.939532,
		0.873018, 0.465652, -0.144938,
		-0.406780, 0.859219, 0.310279,
		34.415466, 39.646580, 24.464600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200733, 39.302650, 24.711918>,  <34.700211, 39.045124, 24.247404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200733, 39.302650, 24.711918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864223, 39.497673, 24.805342>,  <34.662319, 39.614685, 24.861397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864223, 39.497673, 24.805342>,  <35.200733, 39.302650, 24.711918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864223, 39.497673, 24.805342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161167, -0.186198, 0.969203,
		0.516027, 0.853007, 0.078066,
		-0.841273, 0.487554, 0.233560,
		34.611843, 39.643940, 24.875410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377319, 39.486103, 25.331734>,  <35.200733, 39.302650, 24.711918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377319, 39.486103, 25.331734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981663, 39.544281, 25.340139>,  <34.744267, 39.579189, 25.345182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981663, 39.544281, 25.340139>,  <35.377319, 39.486103, 25.331734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981663, 39.544281, 25.340139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003253, -0.164617, 0.986352,
		0.146920, 0.975575, 0.163303,
		-0.989143, 0.145446, 0.021012,
		34.684921, 39.587914, 25.346443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263535, 40.031757, 25.804497>,  <35.377319, 39.486103, 25.331734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263535, 40.031757, 25.804497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926476, 39.820053, 25.764851>,  <34.724239, 39.693031, 25.741062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926476, 39.820053, 25.764851>,  <35.263535, 40.031757, 25.804497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926476, 39.820053, 25.764851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128878, 0.019515, 0.991468,
		-0.522808, 0.848237, -0.084654,
		-0.842652, -0.529258, -0.099116,
		34.673679, 39.661274, 25.735115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862015, 40.255203, 26.385218>,  <35.263535, 40.031757, 25.804497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862015, 40.255203, 26.385218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684376, 39.918175, 26.263330>,  <34.577793, 39.715958, 26.190199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684376, 39.918175, 26.263330>,  <34.862015, 40.255203, 26.385218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684376, 39.918175, 26.263330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358094, -0.144840, 0.922383,
		-0.821307, 0.518746, -0.237396,
		-0.444098, -0.842570, -0.304718,
		34.551147, 39.665405, 26.171915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097717, 40.203751, 26.572088>,  <34.862015, 40.255203, 26.385218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097717, 40.203751, 26.572088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218494, 39.824078, 26.536589>,  <34.290962, 39.596272, 26.515289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218494, 39.824078, 26.536589>,  <34.097717, 40.203751, 26.572088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218494, 39.824078, 26.536589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433035, -0.219495, 0.874244,
		-0.849299, -0.225543, -0.477306,
		0.301946, -0.949185, -0.088749,
		34.309078, 39.539322, 26.509964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465481, 39.831383, 26.811954>,  <34.097717, 40.203751, 26.572088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465481, 39.831383, 26.811954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779213, 39.583248, 26.812962>,  <33.967453, 39.434368, 26.813566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779213, 39.583248, 26.812962>,  <33.465481, 39.831383, 26.811954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779213, 39.583248, 26.812962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363769, -0.456635, 0.811884,
		-0.502497, -0.637699, -0.583813,
		0.784327, -0.620342, 0.002517,
		34.014511, 39.397144, 26.813717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171474, 39.125877, 27.032499>,  <33.465481, 39.831383, 26.811954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171474, 39.125877, 27.032499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566776, 39.123806, 27.093594>,  <33.803959, 39.122562, 27.130249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566776, 39.123806, 27.093594>,  <33.171474, 39.125877, 27.032499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566776, 39.123806, 27.093594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143699, -0.371627, 0.917194,
		0.052013, -0.928368, -0.368005,
		0.988254, -0.005176, 0.152735,
		33.863251, 39.122253, 27.139414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270126, 38.496479, 27.377743>,  <33.171474, 39.125877, 27.032499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270126, 38.496479, 27.377743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601936, 38.703140, 27.462561>,  <33.801022, 38.827137, 27.513453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601936, 38.703140, 27.462561>,  <33.270126, 38.496479, 27.377743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601936, 38.703140, 27.462561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038543, -0.325820, 0.944646,
		0.557142, -0.791778, -0.250361,
		0.829522, 0.516652, 0.212046,
		33.850792, 38.858135, 27.526175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686882, 38.007153, 27.779898>,  <33.270126, 38.496479, 27.377743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686882, 38.007153, 27.779898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815491, 38.379757, 27.847918>,  <33.892658, 38.603317, 27.888729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815491, 38.379757, 27.847918>,  <33.686882, 38.007153, 27.779898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815491, 38.379757, 27.847918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012177, -0.175501, 0.984404,
		0.946822, -0.318583, -0.045085,
		0.321526, 0.931507, 0.170048,
		33.911949, 38.659210, 27.898932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094318, 37.870556, 28.273996>,  <33.686882, 38.007153, 27.779898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094318, 37.870556, 28.273996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020672, 38.261017, 28.320019>,  <33.976486, 38.495293, 28.347631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020672, 38.261017, 28.320019>,  <34.094318, 37.870556, 28.273996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020672, 38.261017, 28.320019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130734, -0.140336, 0.981435,
		0.974172, 0.165654, 0.153453,
		-0.184113, 0.976148, 0.115055,
		33.965439, 38.553860, 28.354536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418934, 38.028076, 28.876068>,  <34.094318, 37.870556, 28.273996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418934, 38.028076, 28.876068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157566, 38.325924, 28.821527>,  <34.000748, 38.504631, 28.788803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157566, 38.325924, 28.821527>,  <34.418934, 38.028076, 28.876068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157566, 38.325924, 28.821527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284960, -0.075072, 0.955595,
		0.701316, 0.663257, 0.261240,
		-0.653417, 0.744617, -0.136352,
		33.961540, 38.549309, 28.780622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554581, 38.475372, 29.375439>,  <34.418934, 38.028076, 28.876068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554581, 38.475372, 29.375439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183090, 38.562462, 29.255396>,  <33.960197, 38.614716, 29.183371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183090, 38.562462, 29.255396>,  <34.554581, 38.475372, 29.375439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183090, 38.562462, 29.255396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330825, -0.121178, 0.935880,
		0.167396, 0.968459, 0.184570,
		-0.928727, 0.217723, -0.300105,
		33.904472, 38.627777, 29.165365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320423, 39.085697, 29.700773>,  <34.554581, 38.475372, 29.375439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320423, 39.085697, 29.700773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001801, 38.864185, 29.603765>,  <33.810627, 38.731277, 29.545561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001801, 38.864185, 29.603765>,  <34.320423, 39.085697, 29.700773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001801, 38.864185, 29.603765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222346, -0.104683, 0.969332,
		-0.562188, 0.826054, -0.039745,
		-0.796559, -0.553784, -0.242521,
		33.762833, 38.698051, 29.531010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802307, 39.219280, 30.236095>,  <34.320423, 39.085697, 29.700773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802307, 39.219280, 30.236095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665665, 38.885025, 30.064041>,  <33.583679, 38.684471, 29.960810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665665, 38.885025, 30.064041>,  <33.802307, 39.219280, 30.236095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665665, 38.885025, 30.064041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376121, -0.297868, 0.877387,
		-0.861301, 0.461501, -0.212548,
		-0.341604, -0.835638, -0.430134,
		33.563183, 38.634335, 29.935001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232868, 39.045250, 30.614483>,  <33.802307, 39.219280, 30.236095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232868, 39.045250, 30.614483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312504, 38.702068, 30.425051>,  <33.360283, 38.496159, 30.311392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312504, 38.702068, 30.425051>,  <33.232868, 39.045250, 30.614483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312504, 38.702068, 30.425051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341632, -0.513698, 0.787021,
		-0.918506, 0.005105, -0.395375,
		0.199085, -0.857956, -0.473579,
		33.372231, 38.444683, 30.282978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674576, 38.674179, 30.651503>,  <33.232868, 39.045250, 30.614483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674576, 38.674179, 30.651503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963001, 38.400677, 30.606695>,  <33.136055, 38.236576, 30.579811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963001, 38.400677, 30.606695>,  <32.674576, 38.674179, 30.651503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963001, 38.400677, 30.606695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398562, -0.541569, 0.740170,
		-0.566767, -0.489056, -0.663022,
		0.721057, -0.683760, -0.112024,
		33.179321, 38.195549, 30.573090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366417, 38.013069, 30.737637>,  <32.674576, 38.674179, 30.651503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366417, 38.013069, 30.737637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751328, 37.920620, 30.795065>,  <32.982273, 37.865150, 30.829521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751328, 37.920620, 30.795065>,  <32.366417, 38.013069, 30.737637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751328, 37.920620, 30.795065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258713, -0.613853, 0.745823,
		-0.084243, -0.754830, -0.650489,
		0.962274, -0.231120, 0.143571,
		33.040009, 37.851284, 30.838137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328835, 37.465408, 31.085094>,  <32.366417, 38.013069, 30.737637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328835, 37.465408, 31.085094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726753, 37.486458, 31.119989>,  <32.965504, 37.499088, 31.140926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726753, 37.486458, 31.119989>,  <32.328835, 37.465408, 31.085094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726753, 37.486458, 31.119989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021988, -0.725184, 0.688204,
		0.099480, -0.686542, -0.720253,
		0.994797, 0.052626, 0.087237,
		33.025192, 37.502247, 31.146160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664795, 36.774662, 30.988300>,  <32.328835, 37.465408, 31.085094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664795, 36.774662, 30.988300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896645, 37.002972, 31.220936>,  <33.035755, 37.139957, 31.360518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896645, 37.002972, 31.220936>,  <32.664795, 36.774662, 30.988300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896645, 37.002972, 31.220936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069963, -0.676220, 0.733370,
		0.811873, -0.465771, -0.352022,
		0.579627, 0.570775, 0.581591,
		33.070534, 37.174206, 31.395412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040462, 36.330307, 31.393013>,  <32.664795, 36.774662, 30.988300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040462, 36.330307, 31.393013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066669, 36.676109, 31.592346>,  <33.082394, 36.883591, 31.711946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066669, 36.676109, 31.592346>,  <33.040462, 36.330307, 31.393013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066669, 36.676109, 31.592346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029888, -0.497482, 0.866960,
		0.997404, -0.071692, -0.006754,
		0.065514, 0.864507, 0.498333,
		33.086323, 36.935463, 31.741846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650467, 36.240067, 31.788334>,  <33.040462, 36.330307, 31.393013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650467, 36.240067, 31.788334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400524, 36.506828, 31.950714>,  <33.250557, 36.666885, 32.048141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400524, 36.506828, 31.950714>,  <33.650467, 36.240067, 31.788334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400524, 36.506828, 31.950714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055078, -0.481007, 0.874985,
		0.778794, 0.569099, 0.263829,
		-0.624856, 0.666902, 0.405950,
		33.213066, 36.706898, 32.072498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922493, 36.260139, 32.394745>,  <33.650467, 36.240067, 31.788334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922493, 36.260139, 32.394745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562431, 36.427444, 32.443386>,  <33.346394, 36.527828, 32.472572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562431, 36.427444, 32.443386>,  <33.922493, 36.260139, 32.394745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562431, 36.427444, 32.443386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099694, -0.469601, 0.877232,
		0.424019, 0.777517, 0.464410,
		-0.900150, 0.418262, 0.121606,
		33.292385, 36.552921, 32.479866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960026, 36.329430, 33.094593>,  <33.922493, 36.260139, 32.394745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960026, 36.329430, 33.094593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579521, 36.367035, 32.977116>,  <33.351219, 36.389599, 32.906628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579521, 36.367035, 32.977116>,  <33.960026, 36.329430, 33.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579521, 36.367035, 32.977116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306382, -0.396236, 0.865521,
		-0.035007, 0.913323, 0.405728,
		-0.951265, 0.094009, -0.293697,
		33.294144, 36.395237, 32.889008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543030, 36.699402, 33.674236>,  <33.960026, 36.329430, 33.094593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543030, 36.699402, 33.674236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266186, 36.485130, 33.480728>,  <33.100079, 36.356567, 33.364624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266186, 36.485130, 33.480728>,  <33.543030, 36.699402, 33.674236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266186, 36.485130, 33.480728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308725, -0.386137, 0.869245,
		-0.652438, 0.750964, 0.101871,
		-0.692108, -0.535679, -0.483771,
		33.058552, 36.324429, 33.335598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932148, 36.847897, 34.073875>,  <33.543030, 36.699402, 33.674236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932148, 36.847897, 34.073875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863331, 36.529427, 33.841839>,  <32.822041, 36.338345, 33.702618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863331, 36.529427, 33.841839>,  <32.932148, 36.847897, 34.073875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863331, 36.529427, 33.841839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351478, -0.500501, 0.791178,
		-0.920252, 0.340007, -0.193731,
		-0.172043, -0.796175, -0.580092,
		32.811718, 36.290573, 33.667812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216797, 36.630058, 34.196503>,  <32.932148, 36.847897, 34.073875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216797, 36.630058, 34.196503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389164, 36.297428, 34.056335>,  <32.492584, 36.097851, 33.972237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389164, 36.297428, 34.056335>,  <32.216797, 36.630058, 34.196503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389164, 36.297428, 34.056335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419673, -0.528449, 0.737981,
		-0.798863, -0.170951, -0.576709,
		0.430920, -0.831575, -0.350415,
		32.518440, 36.047955, 33.951210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774731, 36.132019, 34.441677>,  <32.216797, 36.630058, 34.196503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774731, 36.132019, 34.441677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099438, 35.920540, 34.342468>,  <32.294262, 35.793652, 34.282944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099438, 35.920540, 34.342468>,  <31.774731, 36.132019, 34.441677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099438, 35.920540, 34.342468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244244, -0.693150, 0.678150,
		-0.530449, -0.489924, -0.691808,
		0.811769, -0.528694, -0.248020,
		32.342968, 35.761932, 34.268063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479008, 35.517303, 34.358345>,  <31.774731, 36.132019, 34.441677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479008, 35.517303, 34.358345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868679, 35.441036, 34.406723>,  <32.102482, 35.395275, 34.435749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868679, 35.441036, 34.406723>,  <31.479008, 35.517303, 34.358345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868679, 35.441036, 34.406723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224603, -0.763499, 0.605493,
		-0.023109, -0.617021, -0.786607,
		0.974177, -0.190667, 0.120941,
		32.160931, 35.383835, 34.443005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629566, 34.815159, 34.203781>,  <31.479008, 35.517303, 34.358345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629566, 34.815159, 34.203781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917206, 34.944366, 34.449886>,  <32.089790, 35.021893, 34.597549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917206, 34.944366, 34.449886>,  <31.629566, 34.815159, 34.203781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917206, 34.944366, 34.449886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085895, -0.837286, 0.539977,
		0.689576, -0.441146, -0.574347,
		0.719101, 0.323022, 0.615264,
		32.132935, 35.041271, 34.634464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861906, 34.204388, 34.388012>,  <31.629566, 34.815159, 34.203781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861906, 34.204388, 34.388012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995865, 34.480282, 34.644794>,  <32.076241, 34.645821, 34.798862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995865, 34.480282, 34.644794>,  <31.861906, 34.204388, 34.388012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995865, 34.480282, 34.644794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160836, -0.713142, 0.682320,
		0.928427, -0.125257, -0.349763,
		0.334896, 0.689739, 0.641954,
		32.096333, 34.687202, 34.837379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394276, 33.811615, 34.733177>,  <31.861906, 34.204388, 34.388012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394276, 33.811615, 34.733177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324730, 34.128590, 34.967037>,  <32.283005, 34.318775, 35.107353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324730, 34.128590, 34.967037>,  <32.394276, 33.811615, 34.733177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324730, 34.128590, 34.967037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048201, -0.586133, 0.808780,
		0.983590, 0.168796, 0.063709,
		-0.173861, 0.792437, 0.584651,
		32.272572, 34.366322, 35.142433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885799, 33.730797, 35.256393>,  <32.394276, 33.811615, 34.733177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885799, 33.730797, 35.256393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594448, 33.967773, 35.394077>,  <32.419640, 34.109959, 35.476688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594448, 33.967773, 35.394077>,  <32.885799, 33.730797, 35.256393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594448, 33.967773, 35.394077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044282, -0.542023, 0.839196,
		0.683746, 0.596007, 0.421031,
		-0.728375, 0.592441, 0.344214,
		32.375935, 34.145504, 35.497341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030472, 33.901768, 35.888790>,  <32.885799, 33.730797, 35.256393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030472, 33.901768, 35.888790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632637, 33.936882, 35.866573>,  <32.393936, 33.957951, 35.853245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632637, 33.936882, 35.866573>,  <33.030472, 33.901768, 35.888790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632637, 33.936882, 35.866573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094684, -0.546178, 0.832301,
		0.042725, 0.833057, 0.551535,
		-0.994590, 0.087781, -0.055542,
		32.334259, 33.963215, 35.849911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630112, 34.291916, 35.733921>,  <33.030472, 33.901768, 35.888790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630112, 34.291916, 35.733921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830853, 33.959026, 35.828201>,  <33.951298, 33.759293, 35.884769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830853, 33.959026, 35.828201>,  <33.630112, 34.291916, 35.733921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830853, 33.959026, 35.828201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305354, -0.084498, -0.948483,
		0.809264, 0.547967, 0.211717,
		0.501847, -0.832221, 0.235705,
		33.981407, 33.709358, 35.898914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257343, 34.514385, 35.697723>,  <33.630112, 34.291916, 35.733921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257343, 34.514385, 35.697723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286720, 34.121021, 35.631371>,  <34.304344, 33.885002, 35.591560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286720, 34.121021, 35.631371>,  <34.257343, 34.514385, 35.697723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286720, 34.121021, 35.631371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704962, 0.168842, -0.688855,
		0.705433, -0.066349, 0.705665,
		0.073441, -0.983407, -0.165880,
		34.308754, 33.826000, 35.581608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871136, 34.549759, 35.446865>,  <34.257343, 34.514385, 35.697723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871136, 34.549759, 35.446865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764614, 34.170494, 35.377514>,  <34.700699, 33.942936, 35.335903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764614, 34.170494, 35.377514>,  <34.871136, 34.549759, 35.446865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764614, 34.170494, 35.377514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663284, -0.049749, -0.746713,
		0.699382, -0.313856, 0.642152,
		-0.266307, -0.948166, -0.173382,
		34.684723, 33.886044, 35.325500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462582, 34.090397, 35.362827>,  <34.871136, 34.549759, 35.446865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462582, 34.090397, 35.362827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173798, 33.903591, 35.158604>,  <35.000526, 33.791508, 35.036072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173798, 33.903591, 35.158604>,  <35.462582, 34.090397, 35.362827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173798, 33.903591, 35.158604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576593, 0.001839, -0.817029,
		0.382504, -0.884247, 0.267950,
		-0.721963, -0.467015, -0.510555,
		34.957211, 33.763485, 35.005436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785877, 33.734814, 34.886478>,  <35.462582, 34.090397, 35.362827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785877, 33.734814, 34.886478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421028, 33.726379, 34.722725>,  <35.202118, 33.721321, 34.624474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421028, 33.726379, 34.722725>,  <35.785877, 33.734814, 34.886478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421028, 33.726379, 34.722725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407234, 0.067633, -0.910816,
		0.046883, -0.997488, -0.053107,
		-0.912120, -0.021075, -0.409381,
		35.147392, 33.720055, 34.599911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826180, 33.316914, 34.296024>,  <35.785877, 33.734814, 34.886478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826180, 33.316914, 34.296024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498951, 33.536919, 34.228790>,  <35.302616, 33.668922, 34.188450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498951, 33.536919, 34.228790>,  <35.826180, 33.316914, 34.296024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498951, 33.536919, 34.228790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306595, 0.169799, -0.936572,
		-0.486586, -0.817713, -0.307538,
		-0.818066, 0.550013, -0.168085,
		35.253532, 33.701923, 34.178364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496639, 33.147881, 33.633759>,  <35.826180, 33.316914, 34.296024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496639, 33.147881, 33.633759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370495, 33.522648, 33.694069>,  <35.294807, 33.747509, 33.730255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370495, 33.522648, 33.694069>,  <35.496639, 33.147881, 33.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370495, 33.522648, 33.694069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333723, 0.258234, -0.906612,
		-0.888355, -0.235594, -0.394108,
		-0.315364, 0.936915, 0.150781,
		35.275887, 33.803722, 33.739304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108917, 33.326488, 33.048450>,  <35.496639, 33.147881, 33.633759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108917, 33.326488, 33.048450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193550, 33.690273, 33.191620>,  <35.244331, 33.908543, 33.277523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193550, 33.690273, 33.191620>,  <35.108917, 33.326488, 33.048450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193550, 33.690273, 33.191620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164827, 0.327770, -0.930268,
		-0.963362, 0.255823, -0.080553,
		0.211581, 0.909462, 0.357928,
		35.257023, 33.963112, 33.299000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697903, 33.859032, 32.640610>,  <35.108917, 33.326488, 33.048450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697903, 33.859032, 32.640610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974991, 34.075470, 32.831337>,  <35.141243, 34.205334, 32.945774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974991, 34.075470, 32.831337>,  <34.697903, 33.859032, 32.640610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974991, 34.075470, 32.831337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175313, 0.514967, -0.839091,
		-0.699575, 0.664846, 0.261866,
		0.692719, 0.541099, 0.476815,
		35.182808, 34.237801, 32.974380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592354, 34.605621, 32.426571>,  <34.697903, 33.859032, 32.640610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592354, 34.605621, 32.426571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965363, 34.589680, 32.570129>,  <35.189167, 34.580116, 32.656265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965363, 34.589680, 32.570129>,  <34.592354, 34.605621, 32.426571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965363, 34.589680, 32.570129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311831, 0.590052, -0.744714,
		-0.182088, 0.806381, 0.562666,
		0.932526, -0.039853, 0.358896,
		35.245121, 34.577724, 32.677799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809525, 35.242493, 32.374088>,  <34.592354, 34.605621, 32.426571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809525, 35.242493, 32.374088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161179, 35.053299, 32.397442>,  <35.372169, 34.939785, 32.411453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161179, 35.053299, 32.397442>,  <34.809525, 35.242493, 32.374088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161179, 35.053299, 32.397442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393397, 0.651084, -0.649098,
		0.268996, 0.593614, 0.758461,
		0.879136, -0.472981, 0.058387,
		35.424919, 34.911404, 32.414959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293594, 35.828163, 32.529617>,  <34.809525, 35.242493, 32.374088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293594, 35.828163, 32.529617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543491, 35.528267, 32.442364>,  <35.693432, 35.348331, 32.390011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543491, 35.528267, 32.442364>,  <35.293594, 35.828163, 32.529617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543491, 35.528267, 32.442364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577347, 0.631633, -0.517407,
		0.525701, 0.197310, 0.827470,
		0.624747, -0.749739, -0.218135,
		35.730915, 35.303345, 32.376923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043842, 35.992886, 32.737209>,  <35.293594, 35.828163, 32.529617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043842, 35.992886, 32.737209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011608, 35.743881, 32.425831>,  <35.992268, 35.594479, 32.239002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011608, 35.743881, 32.425831>,  <36.043842, 35.992886, 32.737209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011608, 35.743881, 32.425831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429855, 0.682928, -0.590622,
		0.899295, -0.382214, 0.212557,
		-0.080583, -0.622512, -0.778450,
		35.987434, 35.557129, 32.192295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658058, 36.043976, 32.428108>,  <36.043842, 35.992886, 32.737209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658058, 36.043976, 32.428108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433037, 35.884995, 32.138126>,  <36.298023, 35.789604, 31.964136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433037, 35.884995, 32.138126>,  <36.658058, 36.043976, 32.428108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433037, 35.884995, 32.138126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427052, 0.611137, -0.666437,
		0.707928, -0.684501, -0.174062,
		-0.562552, -0.397455, -0.724958,
		36.264271, 35.765759, 31.920639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063213, 36.144363, 31.799652>,  <36.658058, 36.043976, 32.428108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063213, 36.144363, 31.799652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693569, 36.087364, 31.657829>,  <36.471783, 36.053165, 31.572735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693569, 36.087364, 31.657829>,  <37.063213, 36.144363, 31.799652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693569, 36.087364, 31.657829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129001, 0.757051, -0.640494,
		0.359687, -0.637626, -0.681218,
		-0.924113, -0.142499, -0.354556,
		36.416336, 36.044613, 31.551462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208645, 36.380638, 31.150520>,  <37.063213, 36.144363, 31.799652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208645, 36.380638, 31.150520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815975, 36.323147, 31.200565>,  <36.580372, 36.288651, 31.230593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815975, 36.323147, 31.200565>,  <37.208645, 36.380638, 31.150520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815975, 36.323147, 31.200565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189004, 0.650847, -0.735307,
		0.024257, -0.745480, -0.666087,
		-0.981677, -0.143729, 0.125111,
		36.521473, 36.280029, 31.238098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892025, 36.221107, 30.545225>,  <37.208645, 36.380638, 31.150520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892025, 36.221107, 30.545225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594944, 36.397846, 30.746489>,  <36.416695, 36.503887, 30.867247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594944, 36.397846, 30.746489>,  <36.892025, 36.221107, 30.545225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594944, 36.397846, 30.746489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098607, 0.671050, -0.734826,
		-0.662323, -0.595371, -0.454821,
		-0.742701, 0.441843, 0.503159,
		36.372135, 36.530399, 30.897436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314445, 36.271809, 30.044069>,  <36.892025, 36.221107, 30.545225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314445, 36.271809, 30.044069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273666, 36.567944, 30.309856>,  <36.249199, 36.745625, 30.469328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273666, 36.567944, 30.309856>,  <36.314445, 36.271809, 30.044069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273666, 36.567944, 30.309856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050489, 0.663234, -0.746707,
		-0.993508, -0.109671, -0.030235,
		-0.101945, 0.740333, 0.664466,
		36.243084, 36.790043, 30.509195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857922, 36.747429, 29.712481>,  <36.314445, 36.271809, 30.044069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857922, 36.747429, 29.712481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983070, 36.983776, 30.009932>,  <36.058159, 37.125584, 30.188402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983070, 36.983776, 30.009932>,  <35.857922, 36.747429, 29.712481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983070, 36.983776, 30.009932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042861, 0.773354, -0.632524,
		-0.948828, 0.229772, 0.216636,
		0.312873, 0.590871, 0.743628,
		36.076931, 37.161037, 30.233021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452625, 37.359596, 29.566431>,  <35.857922, 36.747429, 29.712481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452625, 37.359596, 29.566431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764648, 37.437969, 29.804125>,  <35.951862, 37.484993, 29.946741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764648, 37.437969, 29.804125>,  <35.452625, 37.359596, 29.566431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764648, 37.437969, 29.804125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199691, 0.822085, -0.533198,
		-0.592985, 0.534590, 0.602149,
		0.780060, 0.195935, 0.594236,
		35.998665, 37.496750, 29.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433887, 38.020496, 29.688671>,  <35.452625, 37.359596, 29.566431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433887, 38.020496, 29.688671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820438, 37.952103, 29.765480>,  <36.052368, 37.911068, 29.811565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820438, 37.952103, 29.765480>,  <35.433887, 38.020496, 29.688671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820438, 37.952103, 29.765480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254344, 0.745029, -0.616637,
		-0.037628, 0.644746, 0.763470,
		0.966382, -0.170981, 0.192021,
		36.110352, 37.900806, 29.823086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739449, 38.643097, 29.789171>,  <35.433887, 38.020496, 29.688671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739449, 38.643097, 29.789171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020821, 38.390499, 29.658695>,  <36.189644, 38.238941, 29.580410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020821, 38.390499, 29.658695>,  <35.739449, 38.643097, 29.789171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020821, 38.390499, 29.658695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196353, 0.613720, -0.764718,
		0.683105, 0.473877, 0.555705,
		0.703430, -0.631497, -0.326188,
		36.231850, 38.201050, 29.560839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214329, 39.110825, 29.454679>,  <35.739449, 38.643097, 29.789171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214329, 39.110825, 29.454679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247944, 38.744583, 29.297394>,  <36.268112, 38.524837, 29.203022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247944, 38.744583, 29.297394>,  <36.214329, 39.110825, 29.454679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247944, 38.744583, 29.297394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205301, 0.402052, -0.892304,
		0.975084, -0.005743, 0.221759,
		0.084034, -0.915599, -0.393213,
		36.273155, 38.469902, 29.179430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797504, 39.208622, 29.006727>,  <36.214329, 39.110825, 29.454679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797504, 39.208622, 29.006727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621960, 38.870815, 28.883965>,  <36.516632, 38.668133, 28.810307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621960, 38.870815, 28.883965>,  <36.797504, 39.208622, 29.006727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621960, 38.870815, 28.883965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312085, 0.177035, -0.933414,
		0.842616, -0.505423, 0.185867,
		-0.438864, -0.844515, -0.306907,
		36.490299, 38.617462, 28.791893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289547, 39.001122, 28.615240>,  <36.797504, 39.208622, 29.006727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289547, 39.001122, 28.615240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945087, 38.825020, 28.513575>,  <36.738411, 38.719360, 28.452576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945087, 38.825020, 28.513575>,  <37.289547, 39.001122, 28.615240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945087, 38.825020, 28.513575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177109, 0.208822, -0.961783,
		0.476503, -0.873253, -0.101855,
		-0.861149, -0.440253, -0.254165,
		36.686741, 38.692944, 28.437325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378830, 38.573048, 28.016928>,  <37.289547, 39.001122, 28.615240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378830, 38.573048, 28.016928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985050, 38.642754, 28.008125>,  <36.748783, 38.684578, 28.002844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985050, 38.642754, 28.008125>,  <37.378830, 38.573048, 28.016928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985050, 38.642754, 28.008125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071892, 0.285439, -0.955697,
		-0.160262, -0.942421, -0.293529,
		-0.984453, 0.174264, -0.022007,
		36.689713, 38.695034, 28.001524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119030, 38.262737, 27.460875>,  <37.378830, 38.573048, 28.016928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119030, 38.262737, 27.460875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829674, 38.531635, 27.523853>,  <36.656059, 38.692974, 27.561642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829674, 38.531635, 27.523853>,  <37.119030, 38.262737, 27.460875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829674, 38.531635, 27.523853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084091, 0.312128, -0.946311,
		-0.685296, -0.671315, -0.282321,
		-0.723393, 0.672244, 0.157448,
		36.612656, 38.733307, 27.571087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627190, 38.070858, 27.065306>,  <37.119030, 38.262737, 27.460875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627190, 38.070858, 27.065306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568378, 38.459099, 27.141533>,  <36.533092, 38.692043, 27.187269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568378, 38.459099, 27.141533>,  <36.627190, 38.070858, 27.065306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568378, 38.459099, 27.141533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236772, 0.221596, -0.945957,
		-0.960375, -0.093965, -0.262393,
		-0.147032, 0.970600, 0.190567,
		36.524269, 38.750278, 27.198704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403763, 38.230091, 26.470324>,  <36.627190, 38.070858, 27.065306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403763, 38.230091, 26.470324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473717, 38.588608, 26.633335>,  <36.515690, 38.803719, 26.731142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473717, 38.588608, 26.633335>,  <36.403763, 38.230091, 26.470324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473717, 38.588608, 26.633335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175181, 0.378978, -0.908674,
		-0.968879, 0.230308, -0.090734,
		0.174889, 0.896289, 0.407529,
		36.526184, 38.857494, 26.755594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041672, 38.775948, 26.082190>,  <36.403763, 38.230091, 26.470324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041672, 38.775948, 26.082190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309708, 39.007233, 26.268373>,  <36.470531, 39.146004, 26.380083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309708, 39.007233, 26.268373>,  <36.041672, 38.775948, 26.082190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309708, 39.007233, 26.268373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123484, 0.531493, -0.838014,
		-0.731936, 0.619022, 0.284749,
		0.670091, 0.578210, 0.465457,
		36.510735, 39.180695, 26.408010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016113, 39.392277, 25.650948>,  <36.041672, 38.775948, 26.082190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016113, 39.392277, 25.650948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350159, 39.402443, 25.870745>,  <36.550587, 39.408543, 26.002623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350159, 39.402443, 25.870745>,  <36.016113, 39.392277, 25.650948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350159, 39.402443, 25.870745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440073, 0.568463, -0.695116,
		-0.330036, 0.822316, 0.463544,
		0.835112, 0.025420, 0.549492,
		36.600693, 39.410069, 26.035593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254662, 40.141071, 25.656500>,  <36.016113, 39.392277, 25.650948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254662, 40.141071, 25.656500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561203, 39.894459, 25.728710>,  <36.745129, 39.746490, 25.772038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561203, 39.894459, 25.728710>,  <36.254662, 40.141071, 25.656500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561203, 39.894459, 25.728710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493313, 0.384768, -0.780125,
		0.411507, 0.686911, 0.599011,
		0.766358, -0.616527, 0.180527,
		36.791111, 39.709499, 25.782867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736347, 40.603161, 25.653255>,  <36.254662, 40.141071, 25.656500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736347, 40.603161, 25.653255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924007, 40.252457, 25.610947>,  <37.036606, 40.042034, 25.585562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924007, 40.252457, 25.610947>,  <36.736347, 40.603161, 25.653255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924007, 40.252457, 25.610947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581558, 0.396861, -0.710135,
		0.664595, 0.271649, 0.696075,
		0.469153, -0.876760, -0.105772,
		37.064754, 39.989429, 25.579216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415722, 40.839096, 25.431910>,  <36.736347, 40.603161, 25.653255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415722, 40.839096, 25.431910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350758, 40.458546, 25.327215>,  <37.311779, 40.230217, 25.264399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350758, 40.458546, 25.327215>,  <37.415722, 40.839096, 25.431910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350758, 40.458546, 25.327215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560814, 0.129249, -0.817792,
		0.811857, -0.279600, 0.512554,
		-0.162408, -0.951377, -0.261735,
		37.302036, 40.173134, 25.248695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029640, 40.586594, 25.132895>,  <37.415722, 40.839096, 25.431910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029640, 40.586594, 25.132895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762589, 40.326889, 24.987165>,  <37.602360, 40.171066, 24.899729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762589, 40.326889, 24.987165>,  <38.029640, 40.586594, 25.132895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762589, 40.326889, 24.987165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545624, -0.093762, -0.832768,
		0.506527, -0.754761, 0.416852,
		-0.667626, -0.649264, -0.364323,
		37.562302, 40.132111, 24.877869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448929, 40.093227, 24.875847>,  <38.029640, 40.586594, 25.132895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448929, 40.093227, 24.875847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090733, 40.051502, 24.702772>,  <37.875816, 40.026466, 24.598927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090733, 40.051502, 24.702772>,  <38.448929, 40.093227, 24.875847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090733, 40.051502, 24.702772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441268, -0.081040, -0.893709,
		0.058162, -0.991237, 0.118601,
		-0.895489, -0.104314, -0.432688,
		37.822086, 40.020210, 24.572966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626770, 39.602028, 24.308632>,  <38.448929, 40.093227, 24.875847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626770, 39.602028, 24.308632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269844, 39.744419, 24.197603>,  <38.055687, 39.829853, 24.130987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269844, 39.744419, 24.197603>,  <38.626770, 39.602028, 24.308632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269844, 39.744419, 24.197603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318257, 0.060050, -0.946101,
		-0.320125, -0.932562, -0.166877,
		-0.892319, 0.355980, -0.277571,
		38.002148, 39.851212, 24.114332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388039, 39.238140, 23.630543>,  <38.626770, 39.602028, 24.308632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388039, 39.238140, 23.630543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222797, 39.600368, 23.669086>,  <38.123653, 39.817707, 23.692213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222797, 39.600368, 23.669086>,  <38.388039, 39.238140, 23.630543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222797, 39.600368, 23.669086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246074, 0.212870, -0.945587,
		-0.876811, -0.366909, -0.310774,
		-0.413099, 0.905574, 0.096360,
		38.098869, 39.872040, 23.697994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527824, 38.785275, 23.018661>,  <38.388039, 39.238140, 23.630543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527824, 38.785275, 23.018661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874104, 38.656261, 22.865541>,  <39.081871, 38.578854, 22.773668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874104, 38.656261, 22.865541>,  <38.527824, 38.785275, 23.018661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874104, 38.656261, 22.865541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086880, -0.656320, 0.749464,
		-0.492966, -0.682068, -0.540155,
		0.865700, -0.322531, -0.382802,
		39.133812, 38.559502, 22.750700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445038, 38.035820, 23.038561>,  <38.527824, 38.785275, 23.018661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445038, 38.035820, 23.038561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837261, 38.108078, 23.007885>,  <39.072594, 38.151432, 22.989479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837261, 38.108078, 23.007885>,  <38.445038, 38.035820, 23.038561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837261, 38.108078, 23.007885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183502, -0.705426, 0.684618,
		0.069575, -0.685377, -0.724857,
		0.980554, 0.180645, -0.076688,
		39.131428, 38.162270, 22.984879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748680, 37.436611, 23.022430>,  <38.445038, 38.035820, 23.038561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748680, 37.436611, 23.022430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065998, 37.660995, 23.117092>,  <39.256390, 37.795624, 23.173889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065998, 37.660995, 23.117092>,  <38.748680, 37.436611, 23.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065998, 37.660995, 23.117092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317311, -0.712673, 0.625629,
		0.519610, -0.421216, -0.743359,
		0.793296, 0.560959, 0.236656,
		39.303986, 37.829285, 23.188089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339741, 36.912197, 23.048464>,  <38.748680, 37.436611, 23.022430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339741, 36.912197, 23.048464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435383, 37.251934, 23.236698>,  <39.492767, 37.455776, 23.349638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435383, 37.251934, 23.236698>,  <39.339741, 36.912197, 23.048464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435383, 37.251934, 23.236698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305467, -0.525832, 0.793846,
		0.921693, -0.046067, -0.385176,
		0.239108, 0.849340, 0.470584,
		39.507114, 37.506737, 23.377872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027065, 36.835007, 23.313032>,  <39.339741, 36.912197, 23.048464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027065, 36.835007, 23.313032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831062, 37.104519, 23.534269>,  <39.713463, 37.266228, 23.667011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831062, 37.104519, 23.534269>,  <40.027065, 36.835007, 23.313032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831062, 37.104519, 23.534269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207445, -0.526127, 0.824716,
		0.846678, 0.518850, 0.118031,
		-0.490004, 0.673784, 0.553093,
		39.684063, 37.306656, 23.700197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445690, 36.878311, 24.001656>,  <40.027065, 36.835007, 23.313032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445690, 36.878311, 24.001656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090012, 37.052441, 24.057961>,  <39.876602, 37.156918, 24.091743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090012, 37.052441, 24.057961>,  <40.445690, 36.878311, 24.001656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090012, 37.052441, 24.057961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045606, -0.390472, 0.919484,
		0.455240, 0.811186, 0.367061,
		-0.889200, 0.435327, 0.140763,
		39.823250, 37.183037, 24.100189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466747, 37.114548, 24.637089>,  <40.445690, 36.878311, 24.001656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466747, 37.114548, 24.637089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075462, 37.109715, 24.554195>,  <39.840691, 37.106815, 24.504459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075462, 37.109715, 24.554195>,  <40.466747, 37.114548, 24.637089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075462, 37.109715, 24.554195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185582, -0.396399, 0.899126,
		-0.093012, 0.917999, 0.385522,
		-0.978217, -0.012084, -0.207234,
		39.781998, 37.106091, 24.492025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098404, 37.397354, 25.215729>,  <40.466747, 37.114548, 24.637089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098404, 37.397354, 25.215729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834324, 37.162964, 25.027788>,  <39.675877, 37.022327, 24.915024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834324, 37.162964, 25.027788>,  <40.098404, 37.397354, 25.215729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834324, 37.162964, 25.027788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326163, -0.339827, 0.882120,
		-0.676572, 0.735627, 0.033231,
		-0.660204, -0.585978, -0.469852,
		39.636261, 36.987171, 24.886833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479816, 37.471478, 25.539064>,  <40.098404, 37.397354, 25.215729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479816, 37.471478, 25.539064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415138, 37.111263, 25.377623>,  <39.376331, 36.895134, 25.280758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415138, 37.111263, 25.377623>,  <39.479816, 37.471478, 25.539064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415138, 37.111263, 25.377623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408175, -0.311332, 0.858176,
		-0.898470, 0.303506, -0.317233,
		-0.161697, -0.900532, -0.403605,
		39.366631, 36.841103, 25.256540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751522, 37.320526, 25.648315>,  <39.479816, 37.471478, 25.539064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751522, 37.320526, 25.648315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931248, 36.974304, 25.559824>,  <39.039082, 36.766571, 25.506729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931248, 36.974304, 25.559824>,  <38.751522, 37.320526, 25.648315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931248, 36.974304, 25.559824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445519, -0.431729, 0.784298,
		-0.774360, -0.253832, -0.579599,
		0.449309, -0.865552, -0.221227,
		39.066040, 36.714638, 25.493456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173397, 36.871334, 25.671724>,  <38.751522, 37.320526, 25.648315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173397, 36.871334, 25.671724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512783, 36.660122, 25.686111>,  <38.716415, 36.533394, 25.694744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512783, 36.660122, 25.686111>,  <38.173397, 36.871334, 25.671724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512783, 36.660122, 25.686111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359843, -0.525712, 0.770805,
		-0.388096, -0.666945, -0.636055,
		0.848466, -0.528026, 0.035969,
		38.767323, 36.501713, 25.696901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958225, 36.203453, 25.716976>,  <38.173397, 36.871334, 25.671724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958225, 36.203453, 25.716976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337662, 36.181644, 25.841690>,  <38.565323, 36.168560, 25.916517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337662, 36.181644, 25.841690>,  <37.958225, 36.203453, 25.716976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337662, 36.181644, 25.841690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280610, -0.600550, 0.748731,
		0.146423, -0.797726, -0.584973,
		0.948588, -0.054518, 0.311784,
		38.622238, 36.165291, 25.935225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023361, 35.601440, 26.052958>,  <37.958225, 36.203453, 25.716976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023361, 35.601440, 26.052958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366283, 35.773342, 26.166330>,  <38.572037, 35.876484, 26.234354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366283, 35.773342, 26.166330>,  <38.023361, 35.601440, 26.052958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366283, 35.773342, 26.166330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051558, -0.476121, 0.877867,
		0.512215, -0.767216, -0.386025,
		0.857308, 0.429754, 0.283433,
		38.623474, 35.902267, 26.251360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525639, 35.041687, 26.257868>,  <38.023361, 35.601440, 26.052958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525639, 35.041687, 26.257868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630413, 35.375931, 26.451008>,  <38.693275, 35.576477, 26.566891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630413, 35.375931, 26.451008>,  <38.525639, 35.041687, 26.257868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630413, 35.375931, 26.451008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049782, -0.511350, 0.857930,
		0.963801, -0.200682, -0.175538,
		0.261932, 0.835612, 0.482849,
		38.708992, 35.626614, 26.595863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908131, 34.753193, 26.807667>,  <38.525639, 35.041687, 26.257868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908131, 34.753193, 26.807667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852291, 35.133724, 26.917570>,  <38.818787, 35.362041, 26.983513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852291, 35.133724, 26.917570>,  <38.908131, 34.753193, 26.807667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852291, 35.133724, 26.917570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047575, -0.283599, 0.957762,
		0.989065, 0.120631, 0.084850,
		-0.139599, 0.951325, 0.274759,
		38.810410, 35.419121, 26.999998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316879, 34.842918, 27.381357>,  <38.908131, 34.753193, 26.807667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316879, 34.842918, 27.381357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027481, 35.118011, 27.405268>,  <38.853844, 35.283070, 27.419615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027481, 35.118011, 27.405268>,  <39.316879, 34.842918, 27.381357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027481, 35.118011, 27.405268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227602, -0.319391, 0.919884,
		0.651729, 0.651928, 0.387608,
		-0.723497, 0.687735, 0.059776,
		38.810432, 35.324333, 27.423201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477245, 35.096504, 27.985992>,  <39.316879, 34.842918, 27.381357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477245, 35.096504, 27.985992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107048, 35.228527, 27.911676>,  <38.884930, 35.307739, 27.867086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107048, 35.228527, 27.911676>,  <39.477245, 35.096504, 27.985992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107048, 35.228527, 27.911676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262196, -0.204318, 0.943137,
		0.273330, 0.921583, 0.275636,
		-0.925496, 0.330059, -0.185790,
		38.829399, 35.327545, 27.855940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298534, 35.621365, 28.555632>,  <39.477245, 35.096504, 27.985992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298534, 35.621365, 28.555632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970490, 35.465622, 28.387907>,  <38.773663, 35.372177, 28.287271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970490, 35.465622, 28.387907>,  <39.298534, 35.621365, 28.555632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970490, 35.465622, 28.387907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343202, -0.251650, 0.904922,
		-0.457857, 0.886044, 0.072753,
		-0.820109, -0.389356, -0.419312,
		38.724457, 35.348816, 28.262114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699844, 35.864883, 28.892965>,  <39.298534, 35.621365, 28.555632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699844, 35.864883, 28.892965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566883, 35.529812, 28.719624>,  <38.487106, 35.328770, 28.615620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566883, 35.529812, 28.719624>,  <38.699844, 35.864883, 28.892965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566883, 35.529812, 28.719624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523950, -0.218038, 0.823368,
		-0.784209, 0.500746, -0.366427,
		-0.332404, -0.837683, -0.433353,
		38.467163, 35.278507, 28.589617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983955, 35.773098, 29.104393>,  <38.699844, 35.864883, 28.892965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983955, 35.773098, 29.104393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081333, 35.413929, 28.957716>,  <38.139759, 35.198425, 28.869709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081333, 35.413929, 28.957716>,  <37.983955, 35.773098, 29.104393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081333, 35.413929, 28.957716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495402, -0.440148, 0.748897,
		-0.833853, -0.000655, -0.551985,
		0.243445, -0.897925, -0.366694,
		38.154366, 35.144550, 28.847708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345539, 35.440613, 28.986403>,  <37.983955, 35.773098, 29.104393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345539, 35.440613, 28.986403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635986, 35.169537, 29.032850>,  <37.810253, 35.006889, 29.060719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635986, 35.169537, 29.032850>,  <37.345539, 35.440613, 28.986403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635986, 35.169537, 29.032850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500071, -0.404612, 0.765649,
		-0.471894, -0.614018, -0.632692,
		0.726117, -0.677696, 0.116118,
		37.853821, 34.966228, 29.067686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947044, 34.934559, 29.359085>,  <37.345539, 35.440613, 28.986403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947044, 34.934559, 29.359085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306957, 34.760056, 29.362335>,  <37.522903, 34.655354, 29.364285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306957, 34.760056, 29.362335>,  <36.947044, 34.934559, 29.359085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306957, 34.760056, 29.362335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297673, -0.600118, 0.742462,
		-0.319032, -0.670473, -0.669839,
		0.899783, -0.436262, 0.008125,
		37.576893, 34.629177, 29.364773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874039, 34.157990, 29.375935>,  <36.947044, 34.934559, 29.359085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874039, 34.157990, 29.375935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237465, 34.238239, 29.522495>,  <37.455521, 34.286388, 29.610432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237465, 34.238239, 29.522495>,  <36.874039, 34.157990, 29.375935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237465, 34.238239, 29.522495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225718, -0.502259, 0.834738,
		0.351500, -0.841121, -0.411052,
		0.908570, 0.200628, 0.366401,
		37.510036, 34.298428, 29.632416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221718, 33.556099, 29.489693>,  <36.874039, 34.157990, 29.375935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221718, 33.556099, 29.489693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392822, 33.827942, 29.728069>,  <37.495487, 33.991047, 29.871096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392822, 33.827942, 29.728069>,  <37.221718, 33.556099, 29.489693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392822, 33.827942, 29.728069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121986, -0.609870, 0.783057,
		0.895621, -0.407661, -0.177978,
		0.427766, 0.679611, 0.595941,
		37.521152, 34.031826, 29.906851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559589, 33.200508, 29.914770>,  <37.221718, 33.556099, 29.489693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559589, 33.200508, 29.914770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528996, 33.539551, 30.124807>,  <37.510639, 33.742977, 30.250830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528996, 33.539551, 30.124807>,  <37.559589, 33.200508, 29.914770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528996, 33.539551, 30.124807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170544, -0.507752, 0.844454,
		0.982377, 0.154138, -0.105719,
		-0.076484, 0.847602, 0.525091,
		37.506050, 33.793831, 30.282335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055080, 33.084049, 30.390717>,  <37.559589, 33.200508, 29.914770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055080, 33.084049, 30.390717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833267, 33.372917, 30.556105>,  <37.700180, 33.546238, 30.655336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833267, 33.372917, 30.556105>,  <38.055080, 33.084049, 30.390717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833267, 33.372917, 30.556105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269095, -0.314547, 0.910301,
		0.787451, 0.616056, -0.019906,
		-0.554535, 0.722174, 0.413468,
		37.666908, 33.589569, 30.680145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446613, 33.211422, 30.853561>,  <38.055080, 33.084049, 30.390717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446613, 33.211422, 30.853561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100948, 33.382557, 30.959524>,  <37.893547, 33.485237, 31.023102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100948, 33.382557, 30.959524>,  <38.446613, 33.211422, 30.853561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100948, 33.382557, 30.959524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185108, -0.219252, 0.957948,
		0.467924, 0.876862, 0.110274,
		-0.864166, 0.427834, 0.264907,
		37.841698, 33.510906, 31.038996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538803, 33.761066, 31.479242>,  <38.446613, 33.211422, 30.853561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538803, 33.761066, 31.479242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155617, 33.647125, 31.492838>,  <37.925705, 33.578758, 31.500996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155617, 33.647125, 31.492838>,  <38.538803, 33.761066, 31.479242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155617, 33.647125, 31.492838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053630, -0.061439, 0.996669,
		-0.281819, 0.956599, 0.074134,
		-0.957968, -0.284856, 0.033987,
		37.868225, 33.561668, 31.503035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289986, 33.990963, 32.095333>,  <38.538803, 33.761066, 31.479242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289986, 33.990963, 32.095333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023647, 33.711029, 31.991888>,  <37.863842, 33.543068, 31.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023647, 33.711029, 31.991888>,  <38.289986, 33.990963, 32.095333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023647, 33.711029, 31.991888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033856, -0.374613, 0.926563,
		-0.745318, 0.608195, 0.273129,
		-0.665849, -0.699831, -0.258614,
		37.823895, 33.501080, 31.914303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742382, 34.048351, 32.490440>,  <38.289986, 33.990963, 32.095333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742382, 34.048351, 32.490440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742905, 33.663219, 32.382401>,  <37.743217, 33.432140, 32.317577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742905, 33.663219, 32.382401>,  <37.742382, 34.048351, 32.490440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742905, 33.663219, 32.382401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014656, -0.270090, 0.962724,
		-0.999892, 0.002698, -0.014465,
		0.001310, -0.962831, -0.270100,
		37.743298, 33.374371, 32.301369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299263, 33.809170, 32.926826>,  <37.742382, 34.048351, 32.490440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299263, 33.809170, 32.926826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520607, 33.496338, 32.812183>,  <37.653416, 33.308640, 32.743397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520607, 33.496338, 32.812183>,  <37.299263, 33.809170, 32.926826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520607, 33.496338, 32.812183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018555, -0.355575, 0.934463,
		-0.832733, -0.511780, -0.211274,
		0.553363, -0.782079, -0.286603,
		37.686615, 33.261715, 32.726204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006493, 33.235729, 33.307739>,  <37.299263, 33.809170, 32.926826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006493, 33.235729, 33.307739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375057, 33.137867, 33.186977>,  <37.596195, 33.079151, 33.114521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375057, 33.137867, 33.186977>,  <37.006493, 33.235729, 33.307739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375057, 33.137867, 33.186977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173906, -0.435161, 0.883398,
		-0.347502, -0.866476, -0.358416,
		0.921411, -0.244652, -0.301905,
		37.651482, 33.064472, 33.096405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072338, 32.552448, 33.536560>,  <37.006493, 33.235729, 33.307739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072338, 32.552448, 33.536560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452293, 32.667416, 33.487415>,  <37.680267, 32.736397, 33.457928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452293, 32.667416, 33.487415>,  <37.072338, 32.552448, 33.536560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452293, 32.667416, 33.487415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242806, -0.430925, 0.869108,
		0.196853, -0.855391, -0.479119,
		0.949891, 0.287420, -0.122865,
		37.737263, 32.753643, 33.450554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398914, 32.072384, 33.850388>,  <37.072338, 32.552448, 33.536560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398914, 32.072384, 33.850388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699852, 32.333138, 33.812389>,  <37.880413, 32.489590, 33.789589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699852, 32.333138, 33.812389>,  <37.398914, 32.072384, 33.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699852, 32.333138, 33.812389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354579, -0.279184, 0.892373,
		0.555203, -0.705055, -0.441187,
		0.752345, 0.651884, -0.094994,
		37.925556, 32.528702, 33.783890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077557, 31.750216, 33.939606>,  <37.398914, 32.072384, 33.850388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077557, 31.750216, 33.939606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128979, 32.136852, 34.028305>,  <38.159832, 32.368835, 34.081524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128979, 32.136852, 34.028305>,  <38.077557, 31.750216, 33.939606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128979, 32.136852, 34.028305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504322, -0.256248, 0.824619,
		0.853893, 0.005822, -0.520416,
		0.128555, 0.966593, 0.221745,
		38.167545, 32.426830, 34.094830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804649, 31.779696, 34.057755>,  <38.077557, 31.750216, 33.939606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804649, 31.779696, 34.057755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645790, 32.100517, 34.236183>,  <38.550476, 32.293011, 34.343239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645790, 32.100517, 34.236183>,  <38.804649, 31.779696, 34.057755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645790, 32.100517, 34.236183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635528, -0.110304, 0.764158,
		0.662100, 0.586976, -0.465921,
		-0.397150, 0.802055, 0.446072,
		38.526646, 32.341133, 34.370007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424145, 32.196030, 34.315727>,  <38.804649, 31.779696, 34.057755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424145, 32.196030, 34.315727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115780, 32.305397, 34.545834>,  <38.930759, 32.371017, 34.683899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115780, 32.305397, 34.545834>,  <39.424145, 32.196030, 34.315727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115780, 32.305397, 34.545834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555149, -0.154330, 0.817307,
		0.312246, 0.949435, -0.032811,
		-0.770916, 0.273416, 0.575267,
		38.884506, 32.387421, 34.718414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785931, 32.483646, 34.889046>,  <39.424145, 32.196030, 34.315727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785931, 32.483646, 34.889046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405151, 32.464733, 35.010086>,  <39.176685, 32.453384, 35.082710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405151, 32.464733, 35.010086>,  <39.785931, 32.483646, 34.889046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405151, 32.464733, 35.010086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302312, 0.013332, 0.953116,
		-0.049101, 0.998793, 0.001603,
		-0.951943, -0.047284, 0.302602,
		39.119568, 32.450546, 35.100868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674492, 33.032295, 35.452541>,  <39.785931, 32.483646, 34.889046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674492, 33.032295, 35.452541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406307, 32.736370, 35.474983>,  <39.245396, 32.558815, 35.488449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406307, 32.736370, 35.474983>,  <39.674492, 33.032295, 35.452541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406307, 32.736370, 35.474983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244122, -0.148562, 0.958297,
		-0.700629, 0.656202, 0.280211,
		-0.670466, -0.739816, 0.056107,
		39.205166, 32.514423, 35.491814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286827, 33.129150, 36.094860>,  <39.674492, 33.032295, 35.452541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286827, 33.129150, 36.094860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215858, 32.743931, 36.013802>,  <39.173279, 32.512798, 35.965164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215858, 32.743931, 36.013802>,  <39.286827, 33.129150, 36.094860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215858, 32.743931, 36.013802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273184, -0.246019, 0.929970,
		-0.945459, 0.109635, 0.306738,
		-0.177420, -0.963045, -0.202651,
		39.162632, 32.455017, 35.953007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027126, 32.905594, 36.682716>,  <39.286827, 33.129150, 36.094860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027126, 32.905594, 36.682716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157207, 32.578323, 36.493046>,  <39.235256, 32.381962, 36.379246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157207, 32.578323, 36.493046>,  <39.027126, 32.905594, 36.682716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157207, 32.578323, 36.493046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260387, -0.404569, 0.876654,
		-0.909089, -0.408557, 0.081475,
		0.325201, -0.818172, -0.474172,
		39.254768, 32.332870, 36.350796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745358, 32.451427, 37.006138>,  <39.027126, 32.905594, 36.682716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745358, 32.451427, 37.006138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026436, 32.220520, 36.839775>,  <39.195084, 32.081978, 36.739956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026436, 32.220520, 36.839775>,  <38.745358, 32.451427, 37.006138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026436, 32.220520, 36.839775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117545, -0.482336, 0.868064,
		-0.701713, -0.658874, -0.271081,
		0.702697, -0.577267, -0.415909,
		39.237244, 32.047340, 36.715004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636776, 31.771774, 37.255379>,  <38.745358, 32.451427, 37.006138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636776, 31.771774, 37.255379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019138, 31.800154, 37.141384>,  <39.248554, 31.817183, 37.072987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019138, 31.800154, 37.141384>,  <38.636776, 31.771774, 37.255379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019138, 31.800154, 37.141384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283929, -0.471302, 0.835020,
		-0.075069, -0.879113, -0.470664,
		0.955902, 0.070951, -0.284986,
		39.305908, 31.821440, 37.055889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876755, 31.328583, 37.763523>,  <38.636776, 31.771774, 37.255379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876755, 31.328583, 37.763523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209129, 31.395044, 37.551132>,  <39.408554, 31.434921, 37.423698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209129, 31.395044, 37.551132>,  <38.876755, 31.328583, 37.763523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209129, 31.395044, 37.551132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556363, -0.252194, 0.791744,
		-0.002357, -0.953305, -0.302000,
		0.830936, 0.166155, -0.530979,
		39.458408, 31.444891, 37.391838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253799, 30.627028, 37.664181>,  <38.876755, 31.328583, 37.763523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253799, 30.627028, 37.664181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458584, 30.967133, 37.713093>,  <39.581455, 31.171196, 37.742439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458584, 30.967133, 37.713093>,  <39.253799, 30.627028, 37.664181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458584, 30.967133, 37.713093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536415, -0.427625, 0.727596,
		0.670935, -0.306909, -0.675021,
		0.511962, 0.850261, 0.122278,
		39.612171, 31.222210, 37.749775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931732, 30.496840, 37.867592>,  <39.253799, 30.627028, 37.664181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931732, 30.496840, 37.867592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944695, 30.890104, 37.939533>,  <39.952473, 31.126062, 37.982697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944695, 30.890104, 37.939533>,  <39.931732, 30.496840, 37.867592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944695, 30.890104, 37.939533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632808, -0.159465, 0.757711,
		0.773631, 0.089256, -0.627319,
		0.032405, 0.983160, 0.179849,
		39.954414, 31.185053, 37.993488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619659, 30.787226, 37.763756>,  <39.931732, 30.496840, 37.867592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619659, 30.787226, 37.763756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425449, 30.991793, 38.047367>,  <40.308926, 31.114532, 38.217533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425449, 30.991793, 38.047367>,  <40.619659, 30.787226, 37.763756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425449, 30.991793, 38.047367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693329, -0.268760, 0.668628,
		0.532507, 0.816223, -0.224092,
		-0.485522, 0.511418, 0.709028,
		40.279793, 31.145218, 38.260075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115211, 31.182497, 38.056171>,  <40.619659, 30.787226, 37.763756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115211, 31.182497, 38.056171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823624, 31.197147, 38.329597>,  <40.648670, 31.205938, 38.493652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823624, 31.197147, 38.329597>,  <41.115211, 31.182497, 38.056171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823624, 31.197147, 38.329597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672236, -0.150224, 0.724936,
		0.129240, 0.987973, 0.084886,
		-0.728969, 0.036627, 0.683566,
		40.604935, 31.208136, 38.534668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447636, 31.452972, 38.624950>,  <41.115211, 31.182497, 38.056171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447636, 31.452972, 38.624950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097073, 31.334944, 38.777180>,  <40.886734, 31.264126, 38.868515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097073, 31.334944, 38.777180>,  <41.447636, 31.452972, 38.624950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097073, 31.334944, 38.777180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437818, -0.159125, 0.884870,
		-0.200541, 0.942132, 0.268647,
		-0.876412, -0.295072, 0.380571,
		40.834148, 31.246422, 38.891350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131950, 31.898882, 39.154488>,  <41.447636, 31.452972, 38.624950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131950, 31.898882, 39.154488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992867, 31.540661, 39.265541>,  <40.909416, 31.325727, 39.332172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992867, 31.540661, 39.265541>,  <41.131950, 31.898882, 39.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992867, 31.540661, 39.265541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343012, 0.154082, 0.926608,
		-0.872605, 0.417425, 0.253609,
		-0.347713, -0.895553, 0.277635,
		40.888554, 31.271996, 39.348831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924274, 31.942213, 39.886295>,  <41.131950, 31.898882, 39.154488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924274, 31.942213, 39.886295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956863, 31.547693, 39.828918>,  <40.976418, 31.310982, 39.794495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956863, 31.547693, 39.828918>,  <40.924274, 31.942213, 39.886295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956863, 31.547693, 39.828918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320743, -0.110317, 0.940720,
		-0.943656, -0.122647, 0.307361,
		0.081469, -0.986300, -0.143439,
		40.981304, 31.251802, 39.785885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820709, 31.634958, 40.488567>,  <40.924274, 31.942213, 39.886295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820709, 31.634958, 40.488567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970482, 31.295918, 40.338169>,  <41.060345, 31.092493, 40.247929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970482, 31.295918, 40.338169>,  <40.820709, 31.634958, 40.488567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970482, 31.295918, 40.338169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369022, -0.235784, 0.899015,
		-0.850659, -0.475373, 0.224497,
		0.374435, -0.847600, -0.375995,
		41.082813, 31.041637, 40.225372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667130, 31.074467, 40.911175>,  <40.820709, 31.634958, 40.488567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667130, 31.074467, 40.911175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010910, 31.003386, 40.719444>,  <41.217178, 30.960737, 40.604404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010910, 31.003386, 40.719444>,  <40.667130, 31.074467, 40.911175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010910, 31.003386, 40.719444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447996, -0.189833, 0.873649,
		-0.246242, -0.965601, -0.083544,
		0.859456, -0.177702, -0.479330,
		41.268745, 30.950075, 40.575645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973259, 30.653839, 41.377731>,  <40.667130, 31.074467, 40.911175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973259, 30.653839, 41.377731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245560, 30.792408, 41.119560>,  <41.408939, 30.875549, 40.964657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245560, 30.792408, 41.119560>,  <40.973259, 30.653839, 41.377731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245560, 30.792408, 41.119560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672575, 0.053492, 0.738093,
		0.290215, -0.936553, -0.196579,
		0.680748, 0.346420, -0.645426,
		41.449783, 30.896334, 40.925934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612137, 30.282654, 41.425125>,  <40.973259, 30.653839, 41.377731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612137, 30.282654, 41.425125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702927, 30.658516, 41.322731>,  <41.757401, 30.884033, 41.261295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702927, 30.658516, 41.322731>,  <41.612137, 30.282654, 41.425125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702927, 30.658516, 41.322731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598497, 0.072779, 0.797812,
		0.768300, -0.334287, -0.545863,
		0.226971, 0.939657, -0.255986,
		41.771019, 30.940413, 41.245934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355022, 30.375664, 41.377266>,  <41.612137, 30.282654, 41.425125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355022, 30.375664, 41.377266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183140, 30.727293, 41.459808>,  <42.080009, 30.938271, 41.509335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183140, 30.727293, 41.459808>,  <42.355022, 30.375664, 41.377266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183140, 30.727293, 41.459808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518089, 0.052859, 0.853692,
		0.739550, 0.473747, -0.478152,
		-0.429709, 0.879073, 0.206352,
		42.054226, 30.991014, 41.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856129, 30.689581, 41.682423>,  <42.355022, 30.375664, 41.377266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856129, 30.689581, 41.682423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554150, 30.934374, 41.776688>,  <42.372963, 31.081249, 41.833248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554150, 30.934374, 41.776688>,  <42.856129, 30.689581, 41.682423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554150, 30.934374, 41.776688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459065, 0.236548, 0.856332,
		0.468314, 0.754668, -0.459520,
		-0.754945, 0.611981, 0.235663,
		42.327667, 31.117968, 41.847385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144119, 31.260202, 42.082863>,  <42.856129, 30.689581, 41.682423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144119, 31.260202, 42.082863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754566, 31.268768, 42.173279>,  <42.520836, 31.273909, 42.227528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754566, 31.268768, 42.173279>,  <43.144119, 31.260202, 42.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754566, 31.268768, 42.173279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222151, 0.295660, 0.929104,
		-0.046936, 0.955053, -0.292695,
		-0.973882, 0.021415, 0.226043,
		42.462402, 31.275192, 42.241093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032299, 31.908073, 42.325321>,  <43.144119, 31.260202, 42.082863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032299, 31.908073, 42.325321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776279, 31.637840, 42.471703>,  <42.622665, 31.475700, 42.559532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776279, 31.637840, 42.471703>,  <43.032299, 31.908073, 42.325321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776279, 31.637840, 42.471703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224666, 0.290916, 0.929996,
		-0.734751, 0.677463, -0.034421,
		-0.640052, -0.675582, 0.365954,
		42.584263, 31.435165, 42.581490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437756, 32.300133, 42.596226>,  <43.032299, 31.908073, 42.325321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437756, 32.300133, 42.596226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537514, 31.957136, 42.776226>,  <42.597370, 31.751337, 42.884228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537514, 31.957136, 42.776226>,  <42.437756, 32.300133, 42.596226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537514, 31.957136, 42.776226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125099, 0.489321, 0.863084,
		-0.960287, -0.158955, 0.229307,
		0.249396, -0.857495, 0.450004,
		42.612331, 31.699888, 42.911228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933048, 32.376820, 43.185493>,  <42.437756, 32.300133, 42.596226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933048, 32.376820, 43.185493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257698, 32.156002, 43.261932>,  <42.452488, 32.023514, 43.307796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257698, 32.156002, 43.261932>,  <41.933048, 32.376820, 43.185493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257698, 32.156002, 43.261932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045471, 0.385823, 0.921452,
		-0.582407, -0.739184, 0.338246,
		0.811625, -0.552040, 0.191094,
		42.501186, 31.990391, 43.319260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785198, 31.982634, 43.834473>,  <41.933048, 32.376820, 43.185493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785198, 31.982634, 43.834473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156250, 32.107426, 43.752327>,  <42.378880, 32.182301, 43.703041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156250, 32.107426, 43.752327>,  <41.785198, 31.982634, 43.834473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156250, 32.107426, 43.752327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039955, 0.463785, 0.885046,
		0.371361, -0.829199, 0.417755,
		0.927628, 0.311980, -0.205362,
		42.434540, 32.201019, 43.690720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393848, 31.889359, 44.276474>,  <41.785198, 31.982634, 43.834473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393848, 31.889359, 44.276474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117699, 31.602367, 44.313583>,  <41.952007, 31.430174, 44.335850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117699, 31.602367, 44.313583>,  <42.393848, 31.889359, 44.276474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117699, 31.602367, 44.313583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382116, -0.470524, -0.795358,
		0.614300, -0.513650, 0.598999,
		-0.690379, -0.717475, 0.092769,
		41.910583, 31.387125, 44.341415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563732, 31.149788, 44.433418>,  <42.393848, 31.889359, 44.276474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563732, 31.149788, 44.433418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266293, 31.208899, 44.172581>,  <42.087830, 31.244366, 44.016079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266293, 31.208899, 44.172581>,  <42.563732, 31.149788, 44.433418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266293, 31.208899, 44.172581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574530, -0.357658, -0.736204,
		-0.342011, -0.922088, 0.181060,
		-0.743602, 0.147766, -0.652090,
		42.043213, 31.253231, 43.976952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447151, 30.504986, 43.936462>,  <42.563732, 31.149788, 44.433418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447151, 30.504986, 43.936462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289562, 30.829189, 43.763088>,  <42.195011, 31.023710, 43.659065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289562, 30.829189, 43.763088>,  <42.447151, 30.504986, 43.936462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289562, 30.829189, 43.763088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148912, -0.409060, -0.900275,
		-0.906980, -0.419225, 0.040463,
		-0.393970, 0.810506, -0.433437,
		42.171371, 31.072342, 43.633057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031616, 30.401440, 43.260986>,  <42.447151, 30.504986, 43.936462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031616, 30.401440, 43.260986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059216, 30.799356, 43.230988>,  <42.075775, 31.038107, 43.212986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059216, 30.799356, 43.230988>,  <42.031616, 30.401440, 43.260986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059216, 30.799356, 43.230988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193763, -0.060383, -0.979188,
		-0.978619, 0.082094, 0.188588,
		0.068998, 0.994794, -0.074999,
		42.079914, 31.097795, 43.208488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468857, 30.871567, 42.986706>,  <42.031616, 30.401440, 43.260986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468857, 30.871567, 42.986706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776424, 31.096378, 42.864792>,  <41.960964, 31.231266, 42.791645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776424, 31.096378, 42.864792>,  <41.468857, 30.871567, 42.986706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776424, 31.096378, 42.864792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407376, 0.063274, -0.911066,
		-0.492761, 0.824694, 0.277610,
		0.768916, 0.562029, -0.304782,
		42.007099, 31.264988, 42.773357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242012, 31.356571, 42.599205>,  <41.468857, 30.871567, 42.986706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242012, 31.356571, 42.599205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619942, 31.354593, 42.468193>,  <41.846699, 31.353407, 42.389587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619942, 31.354593, 42.468193>,  <41.242012, 31.356571, 42.599205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619942, 31.354593, 42.468193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319332, 0.208871, -0.924338,
		0.072983, 0.977931, 0.195768,
		0.944828, -0.004946, -0.327529,
		41.903389, 31.353109, 42.369934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374741, 31.941605, 42.155750>,  <41.242012, 31.356571, 42.599205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374741, 31.941605, 42.155750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658123, 31.673180, 42.068333>,  <41.828152, 31.512125, 42.015881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658123, 31.673180, 42.068333>,  <41.374741, 31.941605, 42.155750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658123, 31.673180, 42.068333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182437, 0.125005, -0.975239,
		0.681767, 0.730785, -0.033866,
		0.708456, -0.671064, -0.218547,
		41.870659, 31.471861, 42.002769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684013, 32.173935, 41.567253>,  <41.374741, 31.941605, 42.155750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684013, 32.173935, 41.567253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760395, 31.781397, 41.576210>,  <41.806225, 31.545874, 41.581585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760395, 31.781397, 41.576210>,  <41.684013, 32.173935, 41.567253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760395, 31.781397, 41.576210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153155, -0.052316, -0.986816,
		0.969578, 0.185004, -0.160288,
		0.190951, -0.981344, 0.022390,
		41.817680, 31.486994, 41.582928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125244, 32.133957, 40.995308>,  <41.684013, 32.173935, 41.567253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125244, 32.133957, 40.995308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953068, 31.781174, 41.072109>,  <41.849762, 31.569502, 41.118191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953068, 31.781174, 41.072109>,  <42.125244, 32.133957, 40.995308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953068, 31.781174, 41.072109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226840, -0.100193, -0.968765,
		0.873651, -0.460548, -0.156937,
		-0.430439, -0.881962, 0.192004,
		41.823936, 31.516584, 41.129711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424194, 31.553377, 40.592110>,  <42.125244, 32.133957, 40.995308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424194, 31.553377, 40.592110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038898, 31.497650, 40.683979>,  <41.807720, 31.464214, 40.739101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038898, 31.497650, 40.683979>,  <42.424194, 31.553377, 40.592110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038898, 31.497650, 40.683979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189061, -0.255797, -0.948063,
		0.190831, -0.956639, 0.220056,
		-0.963244, -0.139316, 0.229677,
		41.749924, 31.455856, 40.752884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212978, 30.810188, 40.547668>,  <42.424194, 31.553377, 40.592110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212978, 30.810188, 40.547668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914948, 31.067226, 40.476185>,  <41.736130, 31.221449, 40.433292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914948, 31.067226, 40.476185>,  <42.212978, 30.810188, 40.547668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914948, 31.067226, 40.476185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032650, -0.302760, -0.952507,
		-0.666184, -0.703852, 0.246559,
		-0.745073, 0.642595, -0.178713,
		41.691425, 31.260004, 40.422569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264370, 30.592920, 39.869900>,  <42.212978, 30.810188, 40.547668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264370, 30.592920, 39.869900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939941, 30.685671, 40.084713>,  <41.745285, 30.741322, 40.213600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939941, 30.685671, 40.084713>,  <42.264370, 30.592920, 39.869900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939941, 30.685671, 40.084713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549906, 0.010750, -0.835157,
		-0.199427, -0.972686, 0.118792,
		-0.811069, 0.231877, 0.537030,
		41.696621, 30.755234, 40.245823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735882, 30.065556, 39.712681>,  <42.264370, 30.592920, 39.869900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735882, 30.065556, 39.712681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548374, 30.395124, 39.840057>,  <41.435867, 30.592865, 39.916485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548374, 30.395124, 39.840057>,  <41.735882, 30.065556, 39.712681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548374, 30.395124, 39.840057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563846, -0.001600, -0.825879,
		-0.679950, -0.566701, 0.465315,
		-0.468771, 0.823922, 0.318444,
		41.407742, 30.642302, 39.935589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021214, 29.983355, 39.486206>,  <41.735882, 30.065556, 39.712681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021214, 29.983355, 39.486206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031803, 30.373249, 39.574924>,  <41.038158, 30.607185, 39.628155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031803, 30.373249, 39.574924>,  <41.021214, 29.983355, 39.486206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031803, 30.373249, 39.574924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696132, 0.177208, -0.695699,
		-0.717425, -0.135977, 0.683236,
		0.026476, 0.974734, 0.221791,
		41.039745, 30.665670, 39.641460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438904, 30.144142, 39.177227>,  <41.021214, 29.983355, 39.486206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438904, 30.144142, 39.177227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588806, 30.504086, 39.266502>,  <40.678749, 30.720051, 39.320068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588806, 30.504086, 39.266502>,  <40.438904, 30.144142, 39.177227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588806, 30.504086, 39.266502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674111, 0.429744, -0.600745,
		-0.636500, 0.074678, 0.767653,
		0.374757, 0.899857, 0.223191,
		40.701233, 30.774042, 39.333458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930538, 30.639841, 39.427177>,  <40.438904, 30.144142, 39.177227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930538, 30.639841, 39.427177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 30.885244, 39.292233>,  <40.387497, 31.032486, 39.211266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 30.885244, 39.292233>,  <39.930538, 30.639841, 39.427177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216137, 30.885244, 39.292233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598953, 0.285690, -0.748089,
		-0.362578, 0.736198, 0.571445,
		0.713998, 0.613509, -0.337363,
		40.430336, 31.069298, 39.191025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588478, 31.261171, 39.258175>,  <39.930538, 30.639841, 39.427177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588478, 31.261171, 39.258175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931370, 31.273802, 39.052586>,  <40.137104, 31.281380, 38.929234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931370, 31.273802, 39.052586>,  <39.588478, 31.261171, 39.258175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931370, 31.273802, 39.052586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495716, 0.320781, -0.807072,
		0.139386, 0.946627, 0.290636,
		0.857226, 0.031578, -0.513971,
		40.188538, 31.283276, 38.898396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646191, 31.980366, 39.060009>,  <39.588478, 31.261171, 39.258175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646191, 31.980366, 39.060009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841671, 31.754490, 38.793987>,  <39.958958, 31.618965, 38.634377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841671, 31.754490, 38.793987>,  <39.646191, 31.980366, 39.060009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841671, 31.754490, 38.793987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441694, 0.497235, -0.746769,
		0.752381, 0.658697, -0.006420,
		0.488702, -0.564690, -0.665053,
		39.988281, 31.585083, 38.594471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629379, 32.308216, 38.438370>,  <39.646191, 31.980366, 39.060009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629379, 32.308216, 38.438370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746616, 31.953556, 38.295288>,  <39.816959, 31.740761, 38.209438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746616, 31.953556, 38.295288>,  <39.629379, 32.308216, 38.438370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746616, 31.953556, 38.295288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242232, 0.293060, -0.924899,
		0.924889, 0.357729, -0.128881,
		0.293094, -0.886648, -0.357701,
		39.834545, 31.687561, 38.187977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129841, 32.505676, 37.825600>,  <39.629379, 32.308216, 38.438370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129841, 32.505676, 37.825600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996754, 32.129322, 37.800205>,  <39.916901, 31.903509, 37.784969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996754, 32.129322, 37.800205>,  <40.129841, 32.505676, 37.825600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996754, 32.129322, 37.800205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335591, 0.181044, -0.924447,
		0.881294, -0.286273, -0.375990,
		-0.332715, -0.940889, -0.063482,
		39.896938, 31.847055, 37.781162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442863, 32.159451, 37.231667>,  <40.129841, 32.505676, 37.825600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442863, 32.159451, 37.231667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139954, 31.900051, 37.262630>,  <39.958206, 31.744411, 37.281208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139954, 31.900051, 37.262630>,  <40.442863, 32.159451, 37.231667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139954, 31.900051, 37.262630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258604, 0.188907, -0.947332,
		0.599718, -0.737406, -0.310758,
		-0.757273, -0.648496, 0.077406,
		39.912773, 31.705503, 37.285851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555595, 31.745783, 36.666603>,  <40.442863, 32.159451, 37.231667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555595, 31.745783, 36.666603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172310, 31.760429, 36.780075>,  <39.942337, 31.769218, 36.848160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172310, 31.760429, 36.780075>,  <40.555595, 31.745783, 36.666603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172310, 31.760429, 36.780075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271824, 0.192168, -0.942965,
		-0.089045, -0.980679, -0.174186,
		-0.958218, 0.036618, 0.283684,
		39.884846, 31.771414, 36.865181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226070, 31.385597, 36.150684>,  <40.555595, 31.745783, 36.666603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226070, 31.385597, 36.150684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915882, 31.563820, 36.329628>,  <39.729771, 31.670753, 36.436993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915882, 31.563820, 36.329628>,  <40.226070, 31.385597, 36.150684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915882, 31.563820, 36.329628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431710, 0.142862, -0.890627,
		-0.460737, -0.883780, 0.081568,
		-0.775466, 0.445559, 0.447359,
		39.683243, 31.697487, 36.463837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600716, 31.148088, 35.736553>,  <40.226070, 31.385597, 36.150684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600716, 31.148088, 35.736553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521591, 31.496393, 35.916618>,  <39.474117, 31.705376, 36.024658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521591, 31.496393, 35.916618>,  <39.600716, 31.148088, 35.736553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521591, 31.496393, 35.916618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710938, 0.188726, -0.677458,
		-0.674862, -0.454046, 0.581725,
		-0.197810, 0.870761, 0.450163,
		39.462250, 31.757622, 36.051666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957355, 31.127708, 34.989578>,  <39.600716, 31.148088, 35.736553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957355, 31.127708, 34.989578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141846, 31.438499, 35.160961>,  <40.252541, 31.624975, 35.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141846, 31.438499, 35.160961>,  <39.957355, 31.127708, 34.989578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141846, 31.438499, 35.160961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885682, -0.432158, -0.169724,
		0.053290, 0.457759, -0.887478,
		0.461223, 0.776979, 0.428459,
		40.280212, 31.671593, 35.289497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293976, 31.458055, 34.517372>,  <39.957355, 31.127708, 34.989578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293976, 31.458055, 34.517372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472263, 31.494574, 34.873573>,  <40.579235, 31.516485, 35.087296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472263, 31.494574, 34.873573>,  <40.293976, 31.458055, 34.517372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472263, 31.494574, 34.873573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833102, -0.406282, -0.375334,
		0.327530, 0.909176, -0.257145,
		0.445718, 0.091295, 0.890506,
		40.605980, 31.521961, 35.140724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974796, 31.772243, 34.544025>,  <40.293976, 31.458055, 34.517372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974796, 31.772243, 34.544025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000378, 31.556225, 34.879707>,  <41.015724, 31.426613, 35.081116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000378, 31.556225, 34.879707>,  <40.974796, 31.772243, 34.544025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000378, 31.556225, 34.879707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906322, -0.320563, -0.275356,
		0.417722, 0.778196, 0.468956,
		0.063951, -0.540047, 0.839202,
		41.019562, 31.394211, 35.131470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538185, 31.895517, 35.041290>,  <40.974796, 31.772243, 34.544025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538185, 31.895517, 35.041290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443169, 31.509333, 35.084110>,  <41.386158, 31.277622, 35.109802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443169, 31.509333, 35.084110>,  <41.538185, 31.895517, 35.041290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443169, 31.509333, 35.084110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940344, -0.256186, -0.223880,
		0.243571, 0.047480, 0.968720,
		-0.237543, -0.965461, 0.107047,
		41.371906, 31.219694, 35.116226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167679, 32.312920, 34.935814>,  <41.538185, 31.895517, 35.041290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167679, 32.312920, 34.935814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421143, 32.386158, 34.635159>,  <42.573219, 32.430099, 34.454765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421143, 32.386158, 34.635159>,  <42.167679, 32.312920, 34.935814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421143, 32.386158, 34.635159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616656, 0.467136, 0.633655,
		0.467136, -0.865020, 0.183096,
		-0.633655, -0.183096, 0.751636,
		42.611240, 32.441086, 34.409668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918095, 32.229454, 35.229183>,  <42.167679, 32.312920, 34.935814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918095, 32.229454, 35.229183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897999, 32.459007, 34.902225>,  <42.885941, 32.596737, 34.706051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897999, 32.459007, 34.902225>,  <42.918095, 32.229454, 35.229183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897999, 32.459007, 34.902225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532667, 0.707707, 0.464130,
		0.844832, -0.412084, -0.341241,
		-0.050238, 0.573880, -0.817397,
		42.882927, 32.631172, 34.657005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619629, 32.359241, 34.974606>,  <42.918095, 32.229454, 35.229183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619629, 32.359241, 34.974606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374733, 32.649624, 34.849293>,  <43.227795, 32.823853, 34.774105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374733, 32.649624, 34.849293>,  <43.619629, 32.359241, 34.974606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374733, 32.649624, 34.849293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592961, 0.683673, 0.425427,
		0.523026, 0.074698, -0.849037,
		-0.612242, 0.725956, -0.313286,
		43.191059, 32.867409, 34.755306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887978, 32.877403, 34.522518>,  <43.619629, 32.359241, 34.974606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887978, 32.877403, 34.522518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601334, 33.043659, 34.746559>,  <43.429348, 33.143414, 34.880985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601334, 33.043659, 34.746559>,  <43.887978, 32.877403, 34.522518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601334, 33.043659, 34.746559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650061, 0.689040, 0.320384,
		-0.252768, 0.593690, -0.763964,
		-0.716610, 0.415640, 0.560101,
		43.386353, 33.168350, 34.914589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907856, 33.670994, 34.338043>,  <43.887978, 32.877403, 34.522518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907856, 33.670994, 34.338043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779289, 33.558926, 34.699860>,  <43.702148, 33.491684, 34.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779289, 33.558926, 34.699860>,  <43.907856, 33.670994, 34.338043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779289, 33.558926, 34.699860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589129, 0.688686, 0.422657,
		-0.741361, 0.668741, -0.056298,
		-0.321420, -0.280175, 0.904539,
		43.682865, 33.474873, 34.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583748, 34.196178, 34.808731>,  <43.907856, 33.670994, 34.338043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583748, 34.196178, 34.808731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743221, 33.947063, 35.078007>,  <43.838905, 33.797596, 35.239571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743221, 33.947063, 35.078007>,  <43.583748, 34.196178, 34.808731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743221, 33.947063, 35.078007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393506, 0.779216, 0.487828,
		-0.828373, 0.070413, 0.555734,
		0.398687, -0.622788, 0.673189,
		43.862827, 33.760227, 35.279964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419899, 34.448162, 35.455318>,  <43.583748, 34.196178, 34.808731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419899, 34.448162, 35.455318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758125, 34.234715, 35.462017>,  <43.961060, 34.106647, 35.466038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758125, 34.234715, 35.462017>,  <43.419899, 34.448162, 35.455318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758125, 34.234715, 35.462017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449512, 0.728517, 0.516916,
		-0.288036, -0.429555, 0.855872,
		0.845562, -0.533615, 0.016749,
		44.011795, 34.074631, 35.467041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556786, 34.077763, 36.111340>,  <43.419899, 34.448162, 35.455318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556786, 34.077763, 36.111340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838024, 34.224545, 35.867702>,  <44.006767, 34.312614, 35.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838024, 34.224545, 35.867702>,  <43.556786, 34.077763, 36.111340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838024, 34.224545, 35.867702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174806, 0.741078, 0.648264,
		0.689268, -0.562269, 0.456907,
		0.703102, 0.366958, -0.609089,
		44.048954, 34.334633, 35.684975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071136, 34.253990, 36.537891>,  <43.556786, 34.077763, 36.111340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071136, 34.253990, 36.537891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087448, 34.461807, 36.196503>,  <44.097237, 34.586498, 35.991669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087448, 34.461807, 36.196503>,  <44.071136, 34.253990, 36.537891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087448, 34.461807, 36.196503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111995, 0.846423, 0.520600,
		0.992871, -0.116817, -0.023666,
		0.040783, 0.519539, -0.853473,
		44.099682, 34.617668, 35.940460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708965, 34.538319, 36.354862>,  <44.071136, 34.253990, 36.537891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708965, 34.538319, 36.354862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416759, 34.783890, 36.235233>,  <44.241436, 34.931232, 36.163456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416759, 34.783890, 36.235233>,  <44.708965, 34.538319, 36.354862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416759, 34.783890, 36.235233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210740, 0.619237, 0.756396,
		0.649567, 0.489532, -0.581740,
		-0.730515, 0.613925, -0.299072,
		44.197605, 34.968067, 36.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889454, 35.231636, 36.301613>,  <44.708965, 34.538319, 36.354862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889454, 35.231636, 36.301613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495621, 35.252495, 36.368404>,  <44.259323, 35.265011, 36.408482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495621, 35.252495, 36.368404>,  <44.889454, 35.231636, 36.301613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495621, 35.252495, 36.368404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156229, 0.691589, 0.705193,
		-0.078708, 0.720406, -0.689072,
		-0.984580, 0.052149, 0.166982,
		44.200245, 35.268139, 36.418499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368923, 35.724571, 36.084122>,  <44.889454, 35.231636, 36.301613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368923, 35.724571, 36.084122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718861, 35.568279, 35.969589>,  <45.928822, 35.474503, 35.900871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718861, 35.568279, 35.969589>,  <45.368923, 35.724571, 36.084122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718861, 35.568279, 35.969589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283946, 0.065265, -0.956616,
		0.392466, 0.918189, -0.053849,
		0.874840, -0.390729, -0.286331,
		45.981312, 35.451061, 35.883690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718605, 36.067410, 35.730274>,  <45.368923, 35.724571, 36.084122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718605, 36.067410, 35.730274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799789, 35.699684, 35.595417>,  <45.848499, 35.479050, 35.514503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799789, 35.699684, 35.595417>,  <45.718605, 36.067410, 35.730274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799789, 35.699684, 35.595417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413138, 0.231770, -0.880681,
		0.887765, 0.318028, -0.332765,
		0.202956, -0.919315, -0.337147,
		45.860676, 35.423889, 35.494274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543606, 35.892090, 35.672577>,  <45.718605, 36.067410, 35.730274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543606, 35.892090, 35.672577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803249, 36.009747, 35.391968>,  <46.959038, 36.080341, 35.223602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803249, 36.009747, 35.391968>,  <46.543606, 35.892090, 35.672577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803249, 36.009747, 35.391968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473370, -0.878092, 0.069828,
		-0.595461, -0.377405, -0.709219,
		0.649113, 0.294143, -0.701521,
		46.997982, 36.097988, 35.181511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491665, 35.404541, 35.081100>,  <46.543606, 35.892090, 35.672577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491665, 35.404541, 35.081100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850479, 35.576359, 35.122700>,  <47.065769, 35.679447, 35.147659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850479, 35.576359, 35.122700>,  <46.491665, 35.404541, 35.081100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850479, 35.576359, 35.122700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419177, -0.901487, 0.107761,
		0.140042, -0.053072, -0.988722,
		0.897039, 0.429541, 0.103999,
		47.119591, 35.705219, 35.153900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938675, 35.116379, 34.600552>,  <46.491665, 35.404541, 35.081100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938675, 35.116379, 34.600552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141582, 35.241871, 34.921612>,  <47.263329, 35.317165, 35.114246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141582, 35.241871, 34.921612>,  <46.938675, 35.116379, 34.600552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.141582, 35.241871, 34.921612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331226, -0.930818, 0.154487,
		0.795590, 0.187492, -0.576093,
		0.507273, 0.313726, 0.802652,
		47.293766, 35.335987, 35.162407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.684551, 34.990101, 34.516174>,  <46.938675, 35.116379, 34.600552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.684551, 34.990101, 34.516174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621758, 35.011841, 34.910614>,  <47.584080, 35.024887, 35.147278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621758, 35.011841, 34.910614>,  <47.684551, 34.990101, 34.516174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621758, 35.011841, 34.910614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424389, -0.897883, 0.117053,
		0.891768, 0.436867, 0.117889,
		-0.156987, 0.054353, 0.986104,
		47.574661, 35.028149, 35.206444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.280697, 32.607044, 26.880035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894779, 32.709724, 26.902950>,  <35.663231, 32.771332, 26.916698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894779, 32.709724, 26.902950>,  <36.280697, 32.607044, 26.880035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894779, 32.709724, 26.902950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077250, -0.484773, 0.871222,
		0.251412, 0.836123, 0.487535,
		-0.964792, 0.256697, 0.057287,
		35.605343, 32.786736, 26.920137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292664, 32.780537, 27.569792>,  <36.280697, 32.607044, 26.880035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292664, 32.780537, 27.569792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916519, 32.696453, 27.462801>,  <35.690834, 32.646004, 27.398607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916519, 32.696453, 27.462801>,  <36.292664, 32.780537, 27.569792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916519, 32.696453, 27.462801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167252, -0.398999, 0.901569,
		-0.296237, 0.892532, 0.340044,
		-0.940357, -0.210205, -0.267476,
		35.634411, 32.633392, 27.382559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990318, 32.902618, 28.212967>,  <36.292664, 32.780537, 27.569792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990318, 32.902618, 28.212967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723686, 32.684158, 28.010031>,  <35.563709, 32.553082, 27.888269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723686, 32.684158, 28.010031>,  <35.990318, 32.902618, 28.212967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723686, 32.684158, 28.010031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323911, -0.400775, 0.857007,
		-0.671385, 0.735594, 0.090243,
		-0.666576, -0.546151, -0.507341,
		35.523712, 32.520313, 27.857828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295528, 32.794411, 28.671432>,  <35.990318, 32.902618, 28.212967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295528, 32.794411, 28.671432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239567, 32.510647, 28.395123>,  <35.205990, 32.340389, 28.229336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239567, 32.510647, 28.395123>,  <35.295528, 32.794411, 28.671432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239567, 32.510647, 28.395123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318589, -0.628286, 0.709759,
		-0.937511, 0.319372, -0.138108,
		-0.139906, -0.709406, -0.690774,
		35.197594, 32.297825, 28.187891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625660, 32.587322, 28.647635>,  <35.295528, 32.794411, 28.671432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625660, 32.587322, 28.647635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.848232, 32.278130, 28.525723>,  <34.981773, 32.092613, 28.452576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.848232, 32.278130, 28.525723>,  <34.625660, 32.587322, 28.647635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848232, 32.278130, 28.525723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334144, -0.544011, 0.769675,
		-0.760748, -0.326426, -0.560989,
		0.556426, -0.772980, -0.304782,
		35.015160, 32.046234, 28.434288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204983, 32.041405, 28.847839>,  <34.625660, 32.587322, 28.647635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204983, 32.041405, 28.847839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563122, 31.894999, 28.746347>,  <34.778008, 31.807154, 28.685452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563122, 31.894999, 28.746347>,  <34.204983, 32.041405, 28.847839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563122, 31.894999, 28.746347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007299, -0.557582, 0.830090,
		-0.445303, -0.745073, -0.496560,
		0.895351, -0.366017, -0.253732,
		34.831726, 31.785192, 28.670227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236343, 31.225822, 28.808121>,  <34.204983, 32.041405, 28.847839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236343, 31.225822, 28.808121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586391, 31.389717, 28.911104>,  <34.796421, 31.488054, 28.972895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586391, 31.389717, 28.911104>,  <34.236343, 31.225822, 28.808121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586391, 31.389717, 28.911104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091039, -0.661938, 0.744009,
		0.475269, -0.627657, -0.616576,
		0.875118, 0.409737, 0.257457,
		34.848927, 31.512638, 28.988342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560436, 30.683933, 29.019321>,  <34.236343, 31.225822, 28.808121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560436, 30.683933, 29.019321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816002, 30.964237, 29.146269>,  <34.969341, 31.132420, 29.222437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816002, 30.964237, 29.146269>,  <34.560436, 30.683933, 29.019321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816002, 30.964237, 29.146269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190499, -0.543831, 0.817287,
		0.745316, -0.461719, -0.480956,
		0.638916, 0.700759, 0.317369,
		35.007675, 31.174465, 29.241480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085850, 30.320240, 29.234833>,  <34.560436, 30.683933, 29.019321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085850, 30.320240, 29.234833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115086, 30.668699, 29.429052>,  <35.132629, 30.877775, 29.545584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115086, 30.668699, 29.429052>,  <35.085850, 30.320240, 29.234833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115086, 30.668699, 29.429052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240573, -0.487877, 0.839107,
		0.967875, 0.055479, -0.245234,
		0.073091, 0.871147, 0.485551,
		35.137012, 30.930044, 29.574718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673786, 30.246603, 29.614613>,  <35.085850, 30.320240, 29.234833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673786, 30.246603, 29.614613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483978, 30.559317, 29.776428>,  <35.370094, 30.746944, 29.873518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483978, 30.559317, 29.776428>,  <35.673786, 30.246603, 29.614613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483978, 30.559317, 29.776428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335295, -0.264397, 0.904252,
		0.813887, 0.564721, -0.136667,
		-0.474515, 0.781783, 0.404538,
		35.341625, 30.793852, 29.897789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041233, 30.576942, 30.196577>,  <35.673786, 30.246603, 29.614613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041233, 30.576942, 30.196577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684708, 30.711617, 30.318041>,  <35.470795, 30.792421, 30.390919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684708, 30.711617, 30.318041>,  <36.041233, 30.576942, 30.196577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684708, 30.711617, 30.318041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188293, -0.334388, 0.923434,
		0.412447, 0.880243, 0.234648,
		-0.891310, 0.336685, 0.303661,
		35.417316, 30.812622, 30.409140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227982, 30.980558, 30.709986>,  <36.041233, 30.576942, 30.196577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227982, 30.980558, 30.709986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839664, 30.901844, 30.764887>,  <35.606674, 30.854616, 30.797829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839664, 30.901844, 30.764887>,  <36.227982, 30.980558, 30.709986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839664, 30.901844, 30.764887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175351, -0.191491, 0.965703,
		-0.163753, 0.961565, 0.220405,
		-0.970792, -0.196785, 0.137254,
		35.548428, 30.842808, 30.806063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041309, 31.374352, 31.280373>,  <36.227982, 30.980558, 30.709986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041309, 31.374352, 31.280373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775703, 31.078518, 31.236370>,  <35.616341, 30.901018, 31.209969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775703, 31.078518, 31.236370>,  <36.041309, 31.374352, 31.280373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775703, 31.078518, 31.236370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140102, -0.267583, 0.953294,
		-0.734477, 0.617589, 0.281296,
		-0.664014, -0.739583, -0.110009,
		35.576500, 30.856644, 31.203367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498512, 31.365156, 31.832369>,  <36.041309, 31.374352, 31.280373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498512, 31.365156, 31.832369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.486351, 30.985857, 31.705938>,  <35.479053, 30.758278, 31.630079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.486351, 30.985857, 31.705938>,  <35.498512, 31.365156, 31.832369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486351, 30.985857, 31.705938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110869, -0.317472, 0.941764,
		-0.993370, -0.006406, 0.114785,
		-0.030408, -0.948246, -0.316077,
		35.477230, 30.701384, 31.611115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015079, 31.067478, 32.171883>,  <35.498512, 31.365156, 31.832369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015079, 31.067478, 32.171883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239056, 30.754963, 32.061573>,  <35.373440, 30.567453, 31.995388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239056, 30.754963, 32.061573>,  <35.015079, 31.067478, 32.171883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239056, 30.754963, 32.061573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044492, -0.360721, 0.931612,
		-0.827337, -0.509378, -0.236744,
		0.559941, -0.781290, -0.275775,
		35.407040, 30.520576, 31.978840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787846, 30.476038, 32.613724>,  <35.015079, 31.067478, 32.171883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787846, 30.476038, 32.613724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.111252, 30.310797, 32.446083>,  <35.305294, 30.211653, 32.345497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.111252, 30.310797, 32.446083>,  <34.787846, 30.476038, 32.613724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111252, 30.310797, 32.446083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211554, -0.460534, 0.862063,
		-0.549133, -0.785655, -0.284955,
		0.808516, -0.413104, -0.419103,
		35.353806, 30.186867, 32.320351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733818, 29.740715, 32.736393>,  <34.787846, 30.476038, 32.613724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733818, 29.740715, 32.736393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105774, 29.881834, 32.694759>,  <35.328949, 29.966505, 32.669777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105774, 29.881834, 32.694759>,  <34.733818, 29.740715, 32.736393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105774, 29.881834, 32.694759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236385, -0.356356, 0.903954,
		0.281821, -0.865184, -0.414769,
		0.929892, 0.352798, -0.104088,
		35.384743, 29.987673, 32.663532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175823, 29.166098, 32.929012>,  <34.733818, 29.740715, 32.736393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175823, 29.166098, 32.929012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412323, 29.488636, 32.935005>,  <35.554222, 29.682159, 32.938602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412323, 29.488636, 32.935005>,  <35.175823, 29.166098, 32.929012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412323, 29.488636, 32.935005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368182, -0.286409, 0.884540,
		0.717538, -0.517470, -0.466223,
		0.591254, 0.806346, 0.014986,
		35.589699, 29.730539, 32.939503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829056, 28.921906, 33.294922>,  <35.175823, 29.166098, 32.929012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829056, 28.921906, 33.294922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810753, 29.321381, 33.304146>,  <35.799770, 29.561066, 33.309681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810753, 29.321381, 33.304146>,  <35.829056, 28.921906, 33.294922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810753, 29.321381, 33.304146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222427, -0.012320, 0.974872,
		0.973875, 0.049739, -0.221571,
		-0.045759, 0.998686, 0.023061,
		35.797024, 29.620987, 33.311066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382084, 29.168800, 33.776440>,  <35.829056, 28.921906, 33.294922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382084, 29.168800, 33.776440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116768, 29.468060, 33.769249>,  <35.957581, 29.647615, 33.764935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116768, 29.468060, 33.769249>,  <36.382084, 29.168800, 33.776440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116768, 29.468060, 33.769249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090956, 0.104439, 0.990363,
		0.742817, 0.655259, -0.137322,
		-0.663287, 0.748150, -0.017979,
		35.917782, 29.692505, 33.763855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660141, 29.606735, 34.360088>,  <36.382084, 29.168800, 33.776440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660141, 29.606735, 34.360088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291431, 29.740143, 34.280991>,  <36.070206, 29.820187, 34.233532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291431, 29.740143, 34.280991>,  <36.660141, 29.606735, 34.360088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291431, 29.740143, 34.280991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108283, 0.268286, 0.957234,
		0.372307, 0.903764, -0.211184,
		-0.921771, 0.333517, -0.197747,
		36.014900, 29.840199, 34.221668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243656, 29.912338, 34.404499>,  <36.660141, 29.606735, 34.360088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243656, 29.912338, 34.404499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636406, 29.976151, 34.445450>,  <37.872055, 30.014439, 34.470020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636406, 29.976151, 34.445450>,  <37.243656, 29.912338, 34.404499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636406, 29.976151, 34.445450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042783, 0.339649, -0.939579,
		-0.184665, 0.926924, 0.326666,
		0.981870, 0.159532, 0.102378,
		37.930965, 30.024010, 34.476162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498417, 30.502895, 34.060287>,  <37.243656, 29.912338, 34.404499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498417, 30.502895, 34.060287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854454, 30.322596, 34.087276>,  <38.068077, 30.214415, 34.103470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854454, 30.322596, 34.087276>,  <37.498417, 30.502895, 34.060287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854454, 30.322596, 34.087276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218993, 0.293138, -0.930652,
		0.399714, 0.843145, 0.359632,
		0.890096, -0.450751, 0.067472,
		38.121483, 30.187370, 34.107517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057243, 30.894402, 33.718121>,  <37.498417, 30.502895, 34.060287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057243, 30.894402, 33.718121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240967, 30.540277, 33.747131>,  <38.351200, 30.327803, 33.764538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240967, 30.540277, 33.747131>,  <38.057243, 30.894402, 33.718121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240967, 30.540277, 33.747131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557877, 0.223961, -0.799134,
		0.691239, 0.407509, 0.596762,
		0.459306, -0.885312, 0.072530,
		38.378757, 30.274683, 33.768890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697174, 31.095312, 33.435883>,  <38.057243, 30.894402, 33.718121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697174, 31.095312, 33.435883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676094, 30.697451, 33.400356>,  <38.663445, 30.458735, 33.379040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676094, 30.697451, 33.400356>,  <38.697174, 31.095312, 33.435883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676094, 30.697451, 33.400356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521007, 0.048484, -0.852174,
		0.851924, -0.091186, 0.515666,
		-0.052705, -0.994653, -0.088813,
		38.660282, 30.399055, 33.373711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303078, 30.883715, 33.106071>,  <38.697174, 31.095312, 33.435883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303078, 30.883715, 33.106071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053593, 30.578337, 33.038982>,  <38.903900, 30.395109, 32.998730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053593, 30.578337, 33.038982>,  <39.303078, 30.883715, 33.106071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053593, 30.578337, 33.038982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327397, -0.060318, -0.942960,
		0.709782, -0.643050, 0.287571,
		-0.623716, -0.763445, -0.167720,
		38.866478, 30.349302, 32.988667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677147, 30.466427, 32.756413>,  <39.303078, 30.883715, 33.106071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677147, 30.466427, 32.756413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322830, 30.318148, 32.644737>,  <39.110241, 30.229179, 32.577732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322830, 30.318148, 32.644737>,  <39.677147, 30.466427, 32.756413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322830, 30.318148, 32.644737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226961, 0.178707, -0.957368,
		0.404789, -0.911398, -0.074163,
		-0.885796, -0.370699, -0.279190,
		39.057091, 30.206938, 32.560982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864571, 30.140268, 32.182915>,  <39.677147, 30.466427, 32.756413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864571, 30.140268, 32.182915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468033, 30.178230, 32.146645>,  <39.230110, 30.201008, 32.124882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468033, 30.178230, 32.146645>,  <39.864571, 30.140268, 32.182915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468033, 30.178230, 32.146645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115067, 0.295947, -0.948248,
		-0.063158, -0.950478, -0.304307,
		-0.991348, 0.094905, -0.090677,
		39.170628, 30.206701, 32.119442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823303, 30.032028, 31.495480>,  <39.864571, 30.140268, 32.182915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823303, 30.032028, 31.495480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463371, 30.187328, 31.575048>,  <39.247414, 30.280508, 31.622789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463371, 30.187328, 31.575048>,  <39.823303, 30.032028, 31.495480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463371, 30.187328, 31.575048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062598, 0.336352, -0.939653,
		-0.431727, -0.857980, -0.278356,
		-0.899830, 0.388249, 0.198920,
		39.193424, 30.303802, 31.634724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332428, 29.764254, 30.925240>,  <39.823303, 30.032028, 31.495480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332428, 29.764254, 30.925240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190243, 30.091209, 31.106577>,  <39.104931, 30.287382, 31.215380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190243, 30.091209, 31.106577>,  <39.332428, 29.764254, 30.925240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190243, 30.091209, 31.106577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178951, 0.416534, -0.891334,
		-0.917400, -0.397961, -0.001789,
		-0.355461, 0.817390, 0.453344,
		39.083603, 30.336426, 31.242580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710457, 29.943726, 30.654156>,  <39.332428, 29.764254, 30.925240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710457, 29.943726, 30.654156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842392, 30.289452, 30.806034>,  <38.921555, 30.496887, 30.897161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842392, 30.289452, 30.806034>,  <38.710457, 29.943726, 30.654156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842392, 30.289452, 30.806034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111285, 0.434996, -0.893529,
		-0.937456, 0.252464, 0.239663,
		0.329836, 0.864315, 0.379694,
		38.941341, 30.548746, 30.919943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396160, 30.337378, 30.237419>,  <38.710457, 29.943726, 30.654156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396160, 30.337378, 30.237419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635582, 30.602571, 30.417278>,  <38.779236, 30.761688, 30.525194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635582, 30.602571, 30.417278>,  <38.396160, 30.337378, 30.237419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635582, 30.602571, 30.417278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013377, 0.569493, -0.821887,
		-0.800970, 0.485930, 0.349742,
		0.598556, 0.662985, 0.449646,
		38.815147, 30.801468, 30.552172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073006, 31.022657, 30.260172>,  <38.396160, 30.337378, 30.237419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073006, 31.022657, 30.260172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470856, 31.055716, 30.285114>,  <38.709564, 31.075550, 30.300079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470856, 31.055716, 30.285114>,  <38.073006, 31.022657, 30.260172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470856, 31.055716, 30.285114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024296, 0.399172, -0.916554,
		-0.100639, 0.913144, 0.395019,
		0.994626, 0.082644, 0.062358,
		38.769245, 31.080509, 30.303822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240238, 31.657572, 30.084471>,  <38.073006, 31.022657, 30.260172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240238, 31.657572, 30.084471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577400, 31.450970, 30.024166>,  <38.779697, 31.327009, 29.987984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577400, 31.450970, 30.024166>,  <38.240238, 31.657572, 30.084471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577400, 31.450970, 30.024166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137483, 0.477645, -0.867729,
		0.520195, 0.710689, 0.473622,
		0.842909, -0.516504, -0.150761,
		38.830273, 31.296019, 29.978937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838600, 32.133053, 30.064262>,  <38.240238, 31.657572, 30.084471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838600, 32.133053, 30.064262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892426, 31.783880, 29.876698>,  <38.924721, 31.574375, 29.764158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892426, 31.783880, 29.876698>,  <38.838600, 32.133053, 30.064262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892426, 31.783880, 29.876698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026838, 0.469831, -0.882348,
		0.990542, 0.131314, 0.039793,
		0.134561, -0.872935, -0.468911,
		38.932793, 31.521999, 29.736025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339691, 32.264137, 29.590805>,  <38.838600, 32.133053, 30.064262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339691, 32.264137, 29.590805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.176411, 31.918295, 29.473618>,  <39.078442, 31.710791, 29.403305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.176411, 31.918295, 29.473618>,  <39.339691, 32.264137, 29.590805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176411, 31.918295, 29.473618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142082, 0.377184, -0.915175,
		0.901767, -0.331952, -0.276812,
		-0.408203, -0.864604, -0.292967,
		39.053951, 31.658913, 29.385727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727154, 32.217594, 29.005358>,  <39.339691, 32.264137, 29.590805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727154, 32.217594, 29.005358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408310, 31.976183, 28.997675>,  <39.217003, 31.831335, 28.993065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408310, 31.976183, 28.997675>,  <39.727154, 32.217594, 29.005358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408310, 31.976183, 28.997675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220243, 0.320209, -0.921390,
		0.562237, -0.730217, -0.388165,
		-0.797109, -0.603530, -0.019208,
		39.169178, 31.795124, 28.991913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708683, 31.930834, 28.390423>,  <39.727154, 32.217594, 29.005358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708683, 31.930834, 28.390423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337265, 31.876322, 28.528538>,  <39.114414, 31.843615, 28.611406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337265, 31.876322, 28.528538>,  <39.708683, 31.930834, 28.390423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337265, 31.876322, 28.528538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371004, 0.309750, -0.875449,
		0.012353, -0.941001, -0.338179,
		-0.928549, -0.136280, 0.345288,
		39.058701, 31.835438, 28.632124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372055, 31.476542, 27.890903>,  <39.708683, 31.930834, 28.390423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372055, 31.476542, 27.890903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106808, 31.682304, 28.108402>,  <38.947659, 31.805761, 28.238901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106808, 31.682304, 28.108402>,  <39.372055, 31.476542, 27.890903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106808, 31.682304, 28.108402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470776, 0.278142, -0.837262,
		-0.581932, -0.811186, 0.057730,
		-0.663118, 0.514408, 0.543747,
		38.907871, 31.836626, 28.271526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669003, 31.205181, 27.657784>,  <39.372055, 31.476542, 27.890903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669003, 31.205181, 27.657784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631248, 31.562660, 27.833235>,  <38.608597, 31.777147, 27.938505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631248, 31.562660, 27.833235>,  <38.669003, 31.205181, 27.657784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631248, 31.562660, 27.833235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482434, 0.344343, -0.805410,
		-0.870832, -0.287632, 0.398648,
		-0.094390, 0.893698, 0.438629,
		38.602932, 31.830769, 27.964823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.703640, 31.335186, 27.820459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944641, 31.653931, 27.802534>,  <38.089241, 31.845177, 27.791779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944641, 31.653931, 27.802534>,  <37.703640, 31.335186, 27.820459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944641, 31.653931, 27.802534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547102, 0.371472, -0.750125,
		-0.581098, 0.476467, 0.659776,
		0.602498, 0.796861, -0.044815,
		38.125389, 31.892988, 27.789089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187737, 31.902491, 27.470968>,  <37.703640, 31.335186, 27.820459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187737, 31.902491, 27.470968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551075, 32.066864, 27.439898>,  <37.769077, 32.165489, 27.421255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551075, 32.066864, 27.439898>,  <37.187737, 31.902491, 27.470968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551075, 32.066864, 27.439898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284706, 0.471569, -0.834605,
		-0.306336, 0.780229, 0.545345,
		0.908350, 0.410933, -0.077677,
		37.823582, 32.190144, 27.416594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034267, 32.618484, 27.275114>,  <37.187737, 31.902491, 27.470968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034267, 32.618484, 27.275114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421429, 32.578346, 27.182949>,  <37.653725, 32.554264, 27.127649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421429, 32.578346, 27.182949>,  <37.034267, 32.618484, 27.275114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421429, 32.578346, 27.182949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117944, 0.628222, -0.769042,
		0.221920, 0.771536, 0.596225,
		0.967906, -0.100345, -0.230413,
		37.711800, 32.548244, 27.113825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290497, 33.324806, 26.943581>,  <37.034267, 32.618484, 27.275114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290497, 33.324806, 26.943581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560867, 33.048138, 26.841829>,  <37.723091, 32.882137, 26.780779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560867, 33.048138, 26.841829>,  <37.290497, 33.324806, 26.943581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560867, 33.048138, 26.841829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091986, 0.421650, -0.902081,
		0.731203, 0.586344, 0.348630,
		0.675930, -0.691673, -0.254376,
		37.763645, 32.840637, 26.765516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927086, 33.620804, 26.883759>,  <37.290497, 33.324806, 26.943581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927086, 33.620804, 26.883759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903210, 33.314167, 26.628017>,  <37.888882, 33.130184, 26.474573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903210, 33.314167, 26.628017>,  <37.927086, 33.620804, 26.883759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903210, 33.314167, 26.628017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082406, 0.634522, -0.768499,
		0.994809, -0.098561, 0.025295,
		-0.059694, -0.766594, -0.639351,
		37.885300, 33.084190, 26.436213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066013, 34.032387, 26.278721>,  <37.927086, 33.620804, 26.883759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066013, 34.032387, 26.278721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978485, 33.662189, 26.155056>,  <37.925968, 33.440071, 26.080856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978485, 33.662189, 26.155056>,  <38.066013, 34.032387, 26.278721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978485, 33.662189, 26.155056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113603, 0.290525, -0.950100,
		0.969129, -0.243025, 0.041565,
		-0.218822, -0.925491, -0.309165,
		37.912838, 33.384541, 26.062307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567036, 33.754230, 25.745884>,  <38.066013, 34.032387, 26.278721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567036, 33.754230, 25.745884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234779, 33.545696, 25.667658>,  <38.035427, 33.420578, 25.620722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234779, 33.545696, 25.667658>,  <38.567036, 33.754230, 25.745884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234779, 33.545696, 25.667658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136815, 0.149364, -0.979271,
		0.539737, -0.840180, -0.052741,
		-0.830641, -0.521333, -0.195567,
		37.985588, 33.389297, 25.608988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671303, 33.368546, 25.108625>,  <38.567036, 33.754230, 25.745884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671303, 33.368546, 25.108625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272057, 33.364380, 25.132801>,  <38.032509, 33.361881, 25.147306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272057, 33.364380, 25.132801>,  <38.671303, 33.368546, 25.108625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272057, 33.364380, 25.132801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061305, 0.198236, -0.978235,
		-0.001793, -0.980099, -0.198501,
		-0.998117, -0.010415, 0.060440,
		37.972622, 33.361256, 25.150932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354794, 32.954876, 24.531733>,  <38.671303, 33.368546, 25.108625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354794, 32.954876, 24.531733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086491, 33.227943, 24.647697>,  <37.925507, 33.391785, 24.717276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086491, 33.227943, 24.647697>,  <38.354794, 32.954876, 24.531733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086491, 33.227943, 24.647697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055843, 0.436264, -0.898084,
		-0.739569, -0.586209, -0.330750,
		-0.670760, 0.682666, 0.289911,
		37.885262, 33.432743, 24.734671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850513, 32.967766, 23.992506>,  <38.354794, 32.954876, 24.531733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850513, 32.967766, 23.992506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794296, 33.318821, 24.175810>,  <37.760567, 33.529453, 24.285791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794296, 33.318821, 24.175810>,  <37.850513, 32.967766, 23.992506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794296, 33.318821, 24.175810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005199, 0.462192, -0.886764,
		-0.990060, -0.127015, -0.060397,
		-0.140547, 0.877636, 0.458259,
		37.752132, 33.582111, 24.313288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372421, 33.212879, 23.589479>,  <37.850513, 32.967766, 23.992506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372421, 33.212879, 23.589479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513634, 33.525440, 23.795305>,  <37.598362, 33.712978, 23.918800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513634, 33.525440, 23.795305>,  <37.372421, 33.212879, 23.589479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513634, 33.525440, 23.795305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002115, 0.550643, -0.834738,
		-0.935610, 0.293599, 0.196047,
		0.353030, 0.781404, 0.514566,
		37.619541, 33.759861, 23.949675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990902, 33.725590, 23.317150>,  <37.372421, 33.212879, 23.589479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990902, 33.725590, 23.317150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310482, 33.895325, 23.487621>,  <37.502228, 33.997166, 23.589903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310482, 33.895325, 23.487621>,  <36.990902, 33.725590, 23.317150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310482, 33.895325, 23.487621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140006, 0.557934, -0.817990,
		-0.584878, 0.713198, 0.386350,
		0.798946, 0.424333, 0.426176,
		37.550167, 34.022625, 23.615475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815903, 34.474339, 23.289719>,  <36.990902, 33.725590, 23.317150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815903, 34.474339, 23.289719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211769, 34.492161, 23.344223>,  <37.449291, 34.502853, 23.376926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211769, 34.492161, 23.344223>,  <36.815903, 34.474339, 23.289719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211769, 34.492161, 23.344223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061375, 0.727301, -0.683569,
		-0.129559, 0.684871, 0.717054,
		0.989671, 0.044553, 0.136262,
		37.508671, 34.505527, 23.385101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981033, 35.172894, 23.357731>,  <36.815903, 34.474339, 23.289719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981033, 35.172894, 23.357731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311272, 34.979538, 23.241301>,  <37.509415, 34.863525, 23.171442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311272, 34.979538, 23.241301>,  <36.981033, 35.172894, 23.357731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311272, 34.979538, 23.241301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157530, 0.692797, -0.703716,
		0.541823, 0.535134, 0.648120,
		0.825598, -0.483387, -0.291074,
		37.558952, 34.834522, 23.153978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493092, 35.606861, 23.501272>,  <36.981033, 35.172894, 23.357731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493092, 35.606861, 23.501272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644489, 35.366146, 23.219963>,  <37.735329, 35.221718, 23.051178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644489, 35.366146, 23.219963>,  <37.493092, 35.606861, 23.501272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644489, 35.366146, 23.219963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148893, 0.789486, -0.595435,
		0.913551, 0.120655, 0.388416,
		0.378492, -0.601792, -0.703271,
		37.758038, 35.185608, 23.008982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084843, 35.899307, 23.344152>,  <37.493092, 35.606861, 23.501272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084843, 35.899307, 23.344152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962803, 35.666191, 23.042885>,  <37.889580, 35.526321, 22.862123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962803, 35.666191, 23.042885>,  <38.084843, 35.899307, 23.344152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962803, 35.666191, 23.042885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001722, 0.791216, -0.611534,
		0.952319, -0.185282, -0.242403,
		-0.305099, -0.582793, -0.753171,
		37.871273, 35.491352, 22.816933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445545, 36.142448, 22.796223>,  <38.084843, 35.899307, 23.344152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445545, 36.142448, 22.796223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157726, 35.920273, 22.629496>,  <37.985035, 35.786968, 22.529459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157726, 35.920273, 22.629496>,  <38.445545, 36.142448, 22.796223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157726, 35.920273, 22.629496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080623, 0.662976, -0.744287,
		0.689753, -0.501940, -0.521821,
		-0.719541, -0.555445, -0.416822,
		37.941860, 35.753639, 22.504450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686356, 35.854259, 22.287973>,  <38.445545, 36.142448, 22.796223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686356, 35.854259, 22.287973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305367, 35.870121, 22.167166>,  <38.076771, 35.879639, 22.094681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305367, 35.870121, 22.167166>,  <38.686356, 35.854259, 22.287973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305367, 35.870121, 22.167166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243816, 0.693601, -0.677843,
		0.182600, -0.719267, -0.670308,
		-0.952476, 0.039657, -0.302020,
		38.019623, 35.882019, 22.076559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710793, 35.883259, 21.681440>,  <38.686356, 35.854259, 22.287973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710793, 35.883259, 21.681440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331924, 36.011318, 21.689108>,  <38.104603, 36.088154, 21.693708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331924, 36.011318, 21.689108>,  <38.710793, 35.883259, 21.681440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331924, 36.011318, 21.689108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224441, 0.704341, -0.673446,
		-0.229104, -0.633568, -0.738988,
		-0.947173, 0.320148, 0.019168,
		38.047771, 36.107361, 21.694859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512615, 35.864841, 20.957006>,  <38.710793, 35.883259, 21.681440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512615, 35.864841, 20.957006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243176, 36.095337, 21.142139>,  <38.081512, 36.233635, 21.253220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243176, 36.095337, 21.142139>,  <38.512615, 35.864841, 20.957006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243176, 36.095337, 21.142139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083518, 0.681547, -0.726993,
		-0.734363, -0.451047, -0.507216,
		-0.673600, 0.576238, 0.462832,
		38.041096, 36.268208, 21.280989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922428, 35.843094, 20.481415>,  <38.512615, 35.864841, 20.957006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922428, 35.843094, 20.481415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899258, 36.164391, 20.718546>,  <37.885353, 36.357170, 20.860825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899258, 36.164391, 20.718546>,  <37.922428, 35.843094, 20.481415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899258, 36.164391, 20.718546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228978, 0.567302, -0.791035,
		-0.971706, -0.181568, 0.151062,
		-0.057929, 0.803244, 0.592826,
		37.881878, 36.405365, 20.896395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618629, 36.332275, 20.023201>,  <37.922428, 35.843094, 20.481415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618629, 36.332275, 20.023201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701607, 36.548832, 20.349113>,  <37.751392, 36.678764, 20.544661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701607, 36.548832, 20.349113>,  <37.618629, 36.332275, 20.023201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701607, 36.548832, 20.349113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125915, 0.840747, -0.526584,
		-0.970110, 0.006642, 0.242575,
		0.207442, 0.541388, 0.814780,
		37.763840, 36.711246, 20.593548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076744, 36.829506, 20.175179>,  <37.618629, 36.332275, 20.023201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076744, 36.829506, 20.175179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425323, 36.974682, 20.307154>,  <37.634472, 37.061787, 20.386339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425323, 36.974682, 20.307154>,  <37.076744, 36.829506, 20.175179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425323, 36.974682, 20.307154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137642, 0.826584, -0.545723,
		-0.470787, 0.430153, 0.770278,
		0.871444, 0.362941, 0.329938,
		37.686756, 37.083565, 20.406136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434689, 37.038990, 20.030077>,  <37.076744, 36.829506, 20.175179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434689, 37.038990, 20.030077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301220, 37.366043, 20.217756>,  <36.221138, 37.562275, 20.330364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301220, 37.366043, 20.217756>,  <36.434689, 37.038990, 20.030077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301220, 37.366043, 20.217756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416285, -0.574365, 0.704849,
		0.845795, 0.039868, 0.532016,
		-0.333672, 0.817628, 0.469198,
		36.201118, 37.611332, 20.358517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711864, 37.157558, 20.789639>,  <36.434689, 37.038990, 20.030077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711864, 37.157558, 20.789639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333855, 37.259224, 20.707346>,  <36.107048, 37.320225, 20.657970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333855, 37.259224, 20.707346>,  <36.711864, 37.157558, 20.789639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333855, 37.259224, 20.707346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319230, -0.580819, 0.748827,
		0.070831, 0.773337, 0.630026,
		-0.945027, 0.254164, -0.205732,
		36.050346, 37.335472, 20.645626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439552, 37.333832, 21.414352>,  <36.711864, 37.157558, 20.789639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439552, 37.333832, 21.414352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129776, 37.223473, 21.186625>,  <35.943909, 37.157257, 21.049988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129776, 37.223473, 21.186625>,  <36.439552, 37.333832, 21.414352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129776, 37.223473, 21.186625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213390, -0.733248, 0.645610,
		-0.595572, 0.621473, 0.508984,
		-0.774441, -0.275895, -0.569318,
		35.897442, 37.140705, 21.015829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866917, 37.374725, 21.826473>,  <36.439552, 37.333832, 21.414352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866917, 37.374725, 21.826473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739960, 37.132645, 21.534447>,  <35.663784, 36.987396, 21.359232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739960, 37.132645, 21.534447>,  <35.866917, 37.374725, 21.826473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739960, 37.132645, 21.534447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137597, -0.732333, 0.666900,
		-0.938257, 0.312126, 0.149166,
		-0.317396, -0.605199, -0.730064,
		35.644741, 36.951084, 21.315428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225033, 37.177731, 22.007763>,  <35.866917, 37.374725, 21.826473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225033, 37.177731, 22.007763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316563, 36.889874, 21.745543>,  <35.371483, 36.717159, 21.588209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316563, 36.889874, 21.745543>,  <35.225033, 37.177731, 22.007763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316563, 36.889874, 21.745543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345675, -0.689603, 0.636362,
		-0.910025, 0.080991, -0.406564,
		0.228828, -0.719644, -0.655553,
		35.385212, 36.673981, 21.548876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581879, 36.775913, 21.768505>,  <35.225033, 37.177731, 22.007763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581879, 36.775913, 21.768505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896938, 36.533051, 21.726612>,  <35.085976, 36.387333, 21.701475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896938, 36.533051, 21.726612>,  <34.581879, 36.775913, 21.768505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896938, 36.533051, 21.726612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323150, -0.551832, 0.768801,
		-0.524571, -0.571706, -0.630854,
		0.787654, -0.607152, -0.104728,
		35.133232, 36.350903, 21.695192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195625, 36.132362, 21.567070>,  <34.581879, 36.775913, 21.768505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195625, 36.132362, 21.567070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563953, 36.058155, 21.704281>,  <34.784950, 36.013630, 21.786608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563953, 36.058155, 21.704281>,  <34.195625, 36.132362, 21.567070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563953, 36.058155, 21.704281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387874, -0.526961, 0.756218,
		0.040473, -0.829395, -0.557194,
		0.920823, -0.185514, 0.343029,
		34.840202, 36.002502, 21.807190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168560, 35.496178, 21.815641>,  <34.195625, 36.132362, 21.567070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168560, 35.496178, 21.815641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492027, 35.641014, 22.001091>,  <34.686108, 35.727917, 22.112360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492027, 35.641014, 22.001091>,  <34.168560, 35.496178, 21.815641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492027, 35.641014, 22.001091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269303, -0.472819, 0.838998,
		0.523004, -0.803326, -0.284841,
		0.808667, 0.362091, 0.463624,
		34.734627, 35.749641, 22.140179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506691, 34.898972, 21.975967>,  <34.168560, 35.496178, 21.815641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506691, 34.898972, 21.975967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657459, 35.174210, 22.223984>,  <34.747921, 35.339352, 22.372793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657459, 35.174210, 22.223984>,  <34.506691, 34.898972, 21.975967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657459, 35.174210, 22.223984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067288, -0.687987, 0.722597,
		0.923797, -0.230643, -0.305619,
		0.376924, 0.688097, 0.620041,
		34.770538, 35.380638, 22.409996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112610, 34.595577, 22.347553>,  <34.506691, 34.898972, 21.975967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112610, 34.595577, 22.347553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020531, 34.917683, 22.566113>,  <34.965282, 35.110947, 22.697248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020531, 34.917683, 22.566113>,  <35.112610, 34.595577, 22.347553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020531, 34.917683, 22.566113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041607, -0.552820, 0.832261,
		0.972253, 0.214321, 0.093755,
		-0.230201, 0.805268, 0.546398,
		34.951469, 35.159264, 22.730032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708984, 34.820557, 22.906292>,  <35.112610, 34.595577, 22.347553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708984, 34.820557, 22.906292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386806, 34.995407, 23.066385>,  <35.193501, 35.100315, 23.162441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386806, 34.995407, 23.066385>,  <35.708984, 34.820557, 22.906292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386806, 34.995407, 23.066385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185656, -0.455225, 0.870805,
		0.562845, 0.775689, 0.285503,
		-0.805443, 0.437122, 0.400233,
		35.145172, 35.126545, 23.186455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947361, 35.025616, 23.589722>,  <35.708984, 34.820557, 22.906292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947361, 35.025616, 23.589722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548351, 35.009472, 23.612774>,  <35.308945, 34.999786, 23.626606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548351, 35.009472, 23.612774>,  <35.947361, 35.025616, 23.589722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548351, 35.009472, 23.612774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068867, -0.392204, 0.917297,
		-0.014421, 0.918993, 0.394011,
		-0.997522, -0.040363, 0.057632,
		35.249096, 34.997364, 23.630064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808437, 35.157616, 24.263725>,  <35.947361, 35.025616, 23.589722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808437, 35.157616, 24.263725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477028, 34.987823, 24.117649>,  <35.278183, 34.885948, 24.030005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477028, 34.987823, 24.117649>,  <35.808437, 35.157616, 24.263725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477028, 34.987823, 24.117649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114003, -0.510648, 0.852198,
		-0.548221, 0.747702, 0.374694,
		-0.828527, -0.424477, -0.365188,
		35.228470, 34.860481, 24.008093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292301, 35.365040, 24.758244>,  <35.808437, 35.157616, 24.263725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292301, 35.365040, 24.758244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208488, 35.036598, 24.545870>,  <35.158199, 34.839535, 24.418446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208488, 35.036598, 24.545870>,  <35.292301, 35.365040, 24.758244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208488, 35.036598, 24.545870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020166, -0.546501, 0.837215,
		-0.977593, 0.164718, 0.131069,
		-0.209534, -0.821099, -0.530934,
		35.145630, 34.790268, 24.386589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052700, 34.953789, 25.317268>,  <35.292301, 35.365040, 24.758244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052700, 34.953789, 25.317268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.075825, 34.726276, 24.989086>,  <35.089699, 34.589767, 24.792177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.075825, 34.726276, 24.989086>,  <35.052700, 34.953789, 25.317268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075825, 34.726276, 24.989086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070922, -0.817414, 0.571668,
		-0.995805, -0.091235, -0.006914,
		0.057808, -0.568780, -0.820456,
		35.093166, 34.555641, 24.742949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513054, 34.541142, 25.440094>,  <35.052700, 34.953789, 25.317268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513054, 34.541142, 25.440094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802734, 34.400486, 25.202814>,  <34.976543, 34.316093, 25.060446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802734, 34.400486, 25.202814>,  <34.513054, 34.541142, 25.440094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802734, 34.400486, 25.202814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075984, -0.814288, 0.575466,
		-0.685391, -0.461826, -0.562988,
		0.724200, -0.351641, -0.593197,
		35.019993, 34.294994, 25.024855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352940, 33.801708, 25.315805>,  <34.513054, 34.541142, 25.440094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352940, 33.801708, 25.315805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742016, 33.847626, 25.235117>,  <34.975464, 33.875175, 25.186705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742016, 33.847626, 25.235117>,  <34.352940, 33.801708, 25.315805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742016, 33.847626, 25.235117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227249, -0.647704, 0.727212,
		-0.047180, -0.753195, -0.656103,
		0.972693, 0.114789, -0.201721,
		35.033825, 33.882061, 25.174601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637577, 33.144855, 25.054718>,  <34.352940, 33.801708, 25.315805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637577, 33.144855, 25.054718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927013, 33.350098, 25.239389>,  <35.100674, 33.473244, 25.350193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927013, 33.350098, 25.239389>,  <34.637577, 33.144855, 25.054718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927013, 33.350098, 25.239389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094239, -0.736050, 0.670335,
		0.683770, -0.441537, -0.580951,
		0.723587, 0.513103, 0.461679,
		35.144089, 33.504028, 25.377893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241985, 32.613983, 25.265282>,  <34.637577, 33.144855, 25.054718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241985, 32.613983, 25.265282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294792, 32.940495, 25.490231>,  <35.326477, 33.136402, 25.625200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294792, 32.940495, 25.490231>,  <35.241985, 32.613983, 25.265282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294792, 32.940495, 25.490231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107466, -0.575781, 0.810511,
		0.985405, -0.046563, -0.163733,
		0.132014, 0.816277, 0.562374,
		35.334396, 33.185379, 25.658943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603569, 32.325348, 25.740593>,  <35.241985, 32.613983, 25.265282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603569, 32.325348, 25.740593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533943, 32.676170, 25.919687>,  <35.492168, 32.886665, 26.027143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533943, 32.676170, 25.919687>,  <35.603569, 32.325348, 25.740593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533943, 32.676170, 25.919687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133079, -0.429555, 0.893181,
		0.975701, 0.215053, -0.041949,
		-0.174062, 0.877060, 0.447736,
		35.481724, 32.939289, 26.054008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917057, 32.240673, 26.309414>,  <35.603569, 32.325348, 25.740593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917057, 32.240673, 26.309414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702770, 32.560661, 26.417526>,  <35.574200, 32.752655, 26.482393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702770, 32.560661, 26.417526>,  <35.917057, 32.240673, 26.309414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702770, 32.560661, 26.417526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009228, -0.314521, 0.949206,
		0.844348, 0.510998, 0.161111,
		-0.535715, 0.799974, 0.270281,
		35.542057, 32.800652, 26.498610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.866638, 30.580156, 29.746706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558426, 30.822950, 29.824522>,  <39.373497, 30.968628, 29.871212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558426, 30.822950, 29.824522>,  <39.866638, 30.580156, 29.746706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558426, 30.822950, 29.824522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215198, -0.039554, 0.975769,
		0.599974, 0.793727, -0.100145,
		-0.770533, 0.606987, 0.194540,
		39.327267, 31.005047, 29.882883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084236, 30.981249, 30.376858>,  <39.866638, 30.580156, 29.746706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084236, 30.981249, 30.376858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687534, 31.026991, 30.353720>,  <39.449512, 31.054436, 30.339838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687534, 31.026991, 30.353720>,  <40.084236, 30.981249, 30.376858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687534, 31.026991, 30.353720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071984, -0.123668, 0.989709,
		0.106023, 0.985713, 0.130880,
		-0.991755, 0.114353, -0.057844,
		39.390007, 31.061296, 30.336367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816528, 31.456572, 30.907913>,  <40.084236, 30.981249, 30.376858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816528, 31.456572, 30.907913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.501854, 31.227488, 30.815710>,  <39.313049, 31.090036, 30.760389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.501854, 31.227488, 30.815710>,  <39.816528, 31.456572, 30.907913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501854, 31.227488, 30.815710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163726, -0.166462, 0.972360,
		-0.595251, 0.802679, 0.037186,
		-0.786683, -0.572710, -0.230506,
		39.265850, 31.055676, 30.746557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337399, 31.662189, 31.476686>,  <39.816528, 31.456572, 30.907913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337399, 31.662189, 31.476686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228081, 31.315706, 31.309359>,  <39.162491, 31.107817, 31.208961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228081, 31.315706, 31.309359>,  <39.337399, 31.662189, 31.476686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228081, 31.315706, 31.309359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237111, -0.360794, 0.902001,
		-0.932248, 0.345703, -0.106783,
		-0.273298, -0.866208, -0.418320,
		39.146091, 31.055843, 31.183863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740383, 31.497677, 31.787888>,  <39.337399, 31.662189, 31.476686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740383, 31.497677, 31.787888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862259, 31.151480, 31.628847>,  <38.935387, 30.943762, 31.533422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862259, 31.151480, 31.628847>,  <38.740383, 31.497677, 31.787888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862259, 31.151480, 31.628847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092992, -0.442487, 0.891941,
		-0.947900, -0.234795, -0.215306,
		0.304693, -0.865492, -0.397599,
		38.953667, 30.891832, 31.509567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141644, 31.008930, 31.884924>,  <38.740383, 31.497677, 31.787888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141644, 31.008930, 31.884924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458115, 30.780712, 31.796812>,  <38.647995, 30.643782, 31.743944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458115, 30.780712, 31.796812>,  <38.141644, 31.008930, 31.884924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458115, 30.780712, 31.796812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150794, -0.531034, 0.833825,
		-0.592714, -0.626481, -0.506174,
		0.791171, -0.570548, -0.220281,
		38.695465, 30.609549, 31.730728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999001, 30.186106, 31.701019>,  <38.141644, 31.008930, 31.884924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999001, 30.186106, 31.701019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.342915, 30.262291, 31.890539>,  <38.549263, 30.308002, 32.004250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.342915, 30.262291, 31.890539>,  <37.999001, 30.186106, 31.701019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342915, 30.262291, 31.890539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324469, -0.512695, 0.794899,
		0.394313, -0.837179, -0.379010,
		0.859789, 0.190462, 0.473800,
		38.600853, 30.319429, 32.032681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876881, 29.820948, 32.311481>,  <37.999001, 30.186106, 31.701019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876881, 29.820948, 32.311481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244961, 29.951960, 32.397232>,  <38.465809, 30.030567, 32.448681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244961, 29.951960, 32.397232>,  <37.876881, 29.820948, 32.311481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244961, 29.951960, 32.397232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107191, -0.315881, 0.942724,
		0.376490, -0.890473, -0.255565,
		0.920198, 0.327532, 0.214377,
		38.521019, 30.050219, 32.461544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119522, 29.261190, 32.780594>,  <37.876881, 29.820948, 32.311481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119522, 29.261190, 32.780594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364521, 29.568434, 32.855274>,  <38.511520, 29.752779, 32.900082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364521, 29.568434, 32.855274>,  <38.119522, 29.261190, 32.780594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364521, 29.568434, 32.855274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004184, -0.233041, 0.972458,
		0.790463, -0.596407, -0.139523,
		0.612495, 0.768109, 0.186705,
		38.548271, 29.798866, 32.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608757, 29.078211, 33.349636>,  <38.119522, 29.261190, 32.780594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608757, 29.078211, 33.349636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.613110, 29.478130, 33.356403>,  <38.615719, 29.718082, 33.360466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.613110, 29.478130, 33.356403>,  <38.608757, 29.078211, 33.349636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613110, 29.478130, 33.356403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201440, -0.014385, 0.979395,
		0.979440, -0.014062, 0.201243,
		0.010878, 0.999798, 0.016922,
		38.616371, 29.778070, 33.361481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054611, 29.192209, 33.815022>,  <38.608757, 29.078211, 33.349636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054611, 29.192209, 33.815022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834621, 29.525787, 33.796860>,  <38.702629, 29.725935, 33.785965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834621, 29.525787, 33.796860>,  <39.054611, 29.192209, 33.815022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834621, 29.525787, 33.796860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093123, -0.007210, 0.995629,
		0.829975, 0.551796, 0.081625,
		-0.549973, 0.833947, -0.045401,
		38.669628, 29.775972, 33.783241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252750, 29.657923, 34.311840>,  <39.054611, 29.192209, 33.815022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252750, 29.657923, 34.311840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893917, 29.814398, 34.229664>,  <38.678616, 29.908283, 34.180359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893917, 29.814398, 34.229664>,  <39.252750, 29.657923, 34.311840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893917, 29.814398, 34.229664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158147, 0.149896, 0.975972,
		0.412583, 0.908022, -0.072605,
		-0.897087, 0.391187, -0.205445,
		38.624790, 29.931753, 34.168030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253368, 30.219973, 34.796799>,  <39.252750, 29.657923, 34.311840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253368, 30.219973, 34.796799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871597, 30.156763, 34.695526>,  <38.642536, 30.118837, 34.634762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871597, 30.156763, 34.695526>,  <39.253368, 30.219973, 34.796799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871597, 30.156763, 34.695526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268499, 0.084253, 0.959589,
		-0.130306, 0.983834, -0.122842,
		-0.954426, -0.158023, -0.253179,
		38.585270, 30.109356, 34.619572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716835, 30.636059, 35.105335>,  <39.253368, 30.219973, 34.796799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716835, 30.636059, 35.105335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.486641, 30.311619, 35.063511>,  <38.348522, 30.116955, 35.038414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.486641, 30.311619, 35.063511>,  <38.716835, 30.636059, 35.105335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486641, 30.311619, 35.063511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106885, -0.052165, 0.992902,
		-0.810795, 0.582580, -0.056674,
		-0.575488, -0.811098, -0.104565,
		38.313995, 30.068289, 35.032143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872803, 31.201979, 35.655373>,  <38.716835, 30.636059, 35.105335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872803, 31.201979, 35.655373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959362, 31.573626, 35.775318>,  <39.011295, 31.796614, 35.847286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959362, 31.573626, 35.775318>,  <38.872803, 31.201979, 35.655373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959362, 31.573626, 35.775318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583216, 0.369335, -0.723499,
		-0.782964, -0.018321, 0.621798,
		0.216396, 0.929116, 0.299861,
		39.024281, 31.852360, 35.865276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279297, 31.618362, 35.541653>,  <38.872803, 31.201979, 35.655373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279297, 31.618362, 35.541653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571236, 31.891678, 35.550114>,  <38.746399, 32.055668, 35.555191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571236, 31.891678, 35.550114>,  <38.279297, 31.618362, 35.541653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571236, 31.891678, 35.550114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458813, 0.512539, -0.725806,
		-0.506775, 0.520020, 0.687574,
		0.729842, 0.683288, 0.021150,
		38.790188, 32.096664, 35.556458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949726, 32.279480, 35.589642>,  <38.279297, 31.618362, 35.541653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949726, 32.279480, 35.589642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306614, 32.340542, 35.419632>,  <38.520744, 32.377178, 35.317627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306614, 32.340542, 35.419632>,  <37.949726, 32.279480, 35.589642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306614, 32.340542, 35.419632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423998, 0.607187, -0.671975,
		0.155486, 0.779756, 0.606469,
		0.892216, 0.152659, -0.425024,
		38.574280, 32.386341, 35.292126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829453, 32.904316, 35.303761>,  <37.949726, 32.279480, 35.589642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829453, 32.904316, 35.303761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163193, 32.768291, 35.130222>,  <38.363438, 32.686676, 35.026100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163193, 32.768291, 35.130222>,  <37.829453, 32.904316, 35.303761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163193, 32.768291, 35.130222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391652, 0.188131, -0.900675,
		0.387905, 0.921392, 0.023781,
		0.834349, -0.340062, -0.433842,
		38.413498, 32.666271, 35.000069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028450, 33.436459, 34.832802>,  <37.829453, 32.904316, 35.303761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028450, 33.436459, 34.832802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185631, 33.095379, 34.695110>,  <38.279938, 32.890732, 34.612495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185631, 33.095379, 34.695110>,  <38.028450, 33.436459, 34.832802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185631, 33.095379, 34.695110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279658, 0.245796, -0.928103,
		0.876002, 0.460967, -0.141878,
		0.392952, -0.852698, -0.344231,
		38.303516, 32.839569, 34.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481476, 33.627285, 34.301258>,  <38.028450, 33.436459, 34.832802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481476, 33.627285, 34.301258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389057, 33.241295, 34.251541>,  <38.333607, 33.009701, 34.221710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389057, 33.241295, 34.251541>,  <38.481476, 33.627285, 34.301258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389057, 33.241295, 34.251541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240453, 0.180421, -0.953746,
		0.942762, -0.190472, -0.273715,
		-0.231046, -0.964971, -0.124294,
		38.319744, 32.951805, 34.214252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888783, 33.433872, 33.756466>,  <38.481476, 33.627285, 34.301258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888783, 33.433872, 33.756466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.587357, 33.171028, 33.763908>,  <38.406502, 33.013321, 33.768372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.587357, 33.171028, 33.763908>,  <38.888783, 33.433872, 33.756466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587357, 33.171028, 33.763908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213742, 0.218162, -0.952218,
		0.621652, -0.721537, -0.304851,
		-0.753568, -0.657108, 0.018602,
		38.361286, 32.973896, 33.769489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035820, 32.914066, 33.186718>,  <38.888783, 33.433872, 33.756466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035820, 32.914066, 33.186718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646523, 32.873539, 33.269207>,  <38.412945, 32.849224, 33.318703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646523, 32.873539, 33.269207>,  <39.035820, 32.914066, 33.186718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646523, 32.873539, 33.269207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215662, 0.093164, -0.972014,
		0.079236, -0.990486, -0.112515,
		-0.973248, -0.101284, 0.206228,
		38.354549, 32.843143, 33.331074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811848, 32.588573, 32.650925>,  <39.035820, 32.914066, 33.186718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811848, 32.588573, 32.650925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.479031, 32.753998, 32.798801>,  <38.279339, 32.853252, 32.887527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.479031, 32.753998, 32.798801>,  <38.811848, 32.588573, 32.650925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479031, 32.753998, 32.798801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420908, -0.036610, -0.906364,
		-0.361299, -0.909742, 0.204530,
		-0.832045, 0.413557, 0.369690,
		38.229416, 32.878063, 32.909710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199989, 32.158821, 32.323593>,  <38.811848, 32.588573, 32.650925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199989, 32.158821, 32.323593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.066238, 32.516285, 32.443306>,  <37.985989, 32.730762, 32.515133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.066238, 32.516285, 32.443306>,  <38.199989, 32.158821, 32.323593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066238, 32.516285, 32.443306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418731, 0.143617, -0.896682,
		-0.844307, -0.425151, 0.326179,
		-0.334380, 0.893656, 0.299281,
		37.965923, 32.784382, 32.533089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582119, 32.127045, 32.036076>,  <38.199989, 32.158821, 32.323593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582119, 32.127045, 32.036076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659256, 32.513237, 32.106117>,  <37.705540, 32.744953, 32.148144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659256, 32.513237, 32.106117>,  <37.582119, 32.127045, 32.036076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659256, 32.513237, 32.106117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367004, 0.236475, -0.899660,
		-0.910010, 0.109231, 0.399938,
		0.192846, 0.965478, 0.175106,
		37.717110, 32.802879, 32.158649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125999, 32.476448, 31.630880>,  <37.582119, 32.127045, 32.036076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125999, 32.476448, 31.630880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378838, 32.777821, 31.703316>,  <37.530540, 32.958645, 31.746777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378838, 32.777821, 31.703316>,  <37.125999, 32.476448, 31.630880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378838, 32.777821, 31.703316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252563, 0.421249, -0.871069,
		-0.732577, 0.504861, 0.456559,
		0.632094, 0.753435, 0.181088,
		37.568466, 33.003853, 31.757643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717396, 33.082577, 31.459721>,  <37.125999, 32.476448, 31.630880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717396, 33.082577, 31.459721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087200, 33.233849, 31.478722>,  <37.309082, 33.324612, 31.490122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087200, 33.233849, 31.478722>,  <36.717396, 33.082577, 31.459721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087200, 33.233849, 31.478722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150081, 0.475756, -0.866679,
		-0.350360, 0.794126, 0.496600,
		0.924513, 0.378180, 0.047503,
		37.364555, 33.347301, 31.492973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720943, 33.864178, 31.463600>,  <36.717396, 33.082577, 31.459721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720943, 33.864178, 31.463600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.062851, 33.740463, 31.296886>,  <37.267998, 33.666237, 31.196857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.062851, 33.740463, 31.296886>,  <36.720943, 33.864178, 31.463600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062851, 33.740463, 31.296886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098479, 0.691807, -0.715336,
		0.509578, 0.652493, 0.560878,
		0.854771, -0.309284, -0.416786,
		37.319283, 33.647678, 31.171850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340794, 34.308407, 31.848518>,  <36.720943, 33.864178, 31.463600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340794, 34.308407, 31.848518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.163105, 34.624855, 32.016708>,  <36.056492, 34.814724, 32.117622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.163105, 34.624855, 32.016708>,  <36.340794, 34.308407, 31.848518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163105, 34.624855, 32.016708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354100, -0.586147, 0.728728,
		0.822970, 0.174827, 0.540514,
		-0.444223, 0.791117, 0.420475,
		36.029839, 34.862190, 32.142849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459255, 34.134258, 32.525826>,  <36.340794, 34.308407, 31.848518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459255, 34.134258, 32.525826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153942, 34.391109, 32.497353>,  <35.970753, 34.545219, 32.480270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153942, 34.391109, 32.497353>,  <36.459255, 34.134258, 32.525826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153942, 34.391109, 32.497353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491281, -0.505331, 0.709425,
		0.419572, 0.576464, 0.701177,
		-0.763284, 0.642129, -0.071183,
		35.924957, 34.583748, 32.475998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411369, 34.466129, 33.143330>,  <36.459255, 34.134258, 32.525826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411369, 34.466129, 33.143330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.052944, 34.525608, 32.976013>,  <35.837891, 34.561295, 32.875622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.052944, 34.525608, 32.976013>,  <36.411369, 34.466129, 33.143330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052944, 34.525608, 32.976013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433826, -0.093375, 0.896145,
		0.094193, 0.984465, 0.148177,
		-0.896059, 0.148694, -0.418292,
		35.784126, 34.570217, 32.850525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127792, 34.973545, 33.589764>,  <36.411369, 34.466129, 33.143330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127792, 34.973545, 33.589764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856983, 34.737682, 33.413609>,  <35.694496, 34.596165, 33.307915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856983, 34.737682, 33.413609>,  <36.127792, 34.973545, 33.589764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856983, 34.737682, 33.413609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443507, -0.150646, 0.883520,
		-0.587319, 0.793478, -0.159527,
		-0.677021, -0.589660, -0.440390,
		35.653877, 34.560783, 33.281490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424076, 35.189835, 33.819733>,  <36.127792, 34.973545, 33.589764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424076, 35.189835, 33.819733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.385639, 34.814842, 33.685932>,  <35.362576, 34.589848, 33.605652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.385639, 34.814842, 33.685932>,  <35.424076, 35.189835, 33.819733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385639, 34.814842, 33.685932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513241, -0.241271, 0.823633,
		-0.852848, 0.250829, -0.457969,
		-0.096097, -0.937483, -0.334503,
		35.356812, 34.533596, 33.585583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691864, 34.923183, 33.874157>,  <35.424076, 35.189835, 33.819733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691864, 34.923183, 33.874157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.910828, 34.589035, 33.854160>,  <35.042206, 34.388546, 33.842163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.910828, 34.589035, 33.854160>,  <34.691864, 34.923183, 33.874157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910828, 34.589035, 33.854160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424112, -0.328420, 0.843961,
		-0.721439, -0.440789, -0.534070,
		0.547408, -0.835372, -0.049991,
		35.075050, 34.338425, 33.839165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157196, 34.358250, 34.008739>,  <34.691864, 34.923183, 33.874157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157196, 34.358250, 34.008739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.511459, 34.181259, 34.065060>,  <34.724018, 34.075066, 34.098850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.511459, 34.181259, 34.065060>,  <34.157196, 34.358250, 34.008739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511459, 34.181259, 34.065060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352538, -0.443415, 0.824075,
		-0.302199, -0.779487, -0.548703,
		0.885660, -0.442473, 0.140800,
		34.777157, 34.048515, 34.107300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985752, 33.722763, 34.135830>,  <34.157196, 34.358250, 34.008739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985752, 33.722763, 34.135830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.347961, 33.753544, 34.302738>,  <34.565285, 33.772011, 34.402882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.347961, 33.753544, 34.302738>,  <33.985752, 33.722763, 34.135830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347961, 33.753544, 34.302738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349698, -0.421607, 0.836636,
		0.240300, -0.903508, -0.354865,
		0.905520, 0.076948, 0.417266,
		34.619617, 33.776627, 34.427917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048531, 33.198326, 34.362160>,  <33.985752, 33.722763, 34.135830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048531, 33.198326, 34.362160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311935, 33.416439, 34.569633>,  <34.469978, 33.547306, 34.694118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311935, 33.416439, 34.569633>,  <34.048531, 33.198326, 34.362160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311935, 33.416439, 34.569633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361984, -0.374751, 0.853539,
		0.659796, -0.749819, -0.049394,
		0.658511, 0.545283, 0.518682,
		34.509487, 33.580025, 34.725239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084675, 32.745380, 34.979641>,  <34.048531, 33.198326, 34.362160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084675, 32.745380, 34.979641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.270302, 33.089287, 35.064911>,  <34.381680, 33.295631, 35.116074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.270302, 33.089287, 35.064911>,  <34.084675, 32.745380, 34.979641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270302, 33.089287, 35.064911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308818, -0.068520, 0.948650,
		0.830224, -0.506070, 0.233713,
		0.464070, 0.859766, 0.213171,
		34.409523, 33.347218, 35.128860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460567, 32.583809, 35.473850>,  <34.084675, 32.745380, 34.979641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460567, 32.583809, 35.473850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408833, 32.979156, 35.505825>,  <34.377792, 33.216366, 35.525009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408833, 32.979156, 35.505825>,  <34.460567, 32.583809, 35.473850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408833, 32.979156, 35.505825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267225, -0.112376, 0.957059,
		0.954915, 0.102421, 0.278653,
		-0.129337, 0.988373, 0.079940,
		34.370033, 33.275669, 35.529808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793991, 32.751850, 36.070671>,  <34.460567, 32.583809, 35.473850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793991, 32.751850, 36.070671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.512894, 33.029606, 36.008739>,  <34.344234, 33.196259, 35.971581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.512894, 33.029606, 36.008739>,  <34.793991, 32.751850, 36.070671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512894, 33.029606, 36.008739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329278, -0.124544, 0.935983,
		0.630651, 0.708742, 0.316170,
		-0.702748, 0.694387, -0.154829,
		34.302071, 33.237923, 35.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.346962, 37.702240, 30.126245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961544, 37.765392, 30.039845>,  <36.730293, 37.803284, 29.988005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961544, 37.765392, 30.039845>,  <37.346962, 37.702240, 30.126245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961544, 37.765392, 30.039845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265176, -0.670905, 0.692509,
		-0.035581, 0.724541, 0.688313,
		-0.963543, 0.157883, -0.216002,
		36.672482, 37.812756, 29.975044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099522, 37.612671, 30.733883>,  <37.346962, 37.702240, 30.126245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099522, 37.612671, 30.733883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763901, 37.590649, 30.517380>,  <36.562527, 37.577435, 30.387478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763901, 37.590649, 30.517380>,  <37.099522, 37.612671, 30.733883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763901, 37.590649, 30.517380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395957, -0.620481, 0.676921,
		-0.373105, 0.782287, 0.498818,
		-0.839054, -0.055052, -0.541256,
		36.512184, 37.574135, 30.355003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605606, 37.750969, 31.211491>,  <37.099522, 37.612671, 30.733883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605606, 37.750969, 31.211491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426167, 37.564327, 30.906586>,  <36.318504, 37.452343, 30.723642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426167, 37.564327, 30.906586>,  <36.605606, 37.750969, 31.211491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426167, 37.564327, 30.906586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260927, -0.747362, 0.611038,
		-0.854796, 0.473006, 0.213518,
		-0.448599, -0.466600, -0.762262,
		36.291588, 37.424347, 30.677908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865719, 37.674892, 31.405842>,  <36.605606, 37.750969, 31.211491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865719, 37.674892, 31.405842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001877, 37.404861, 31.144030>,  <36.083572, 37.242844, 30.986942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001877, 37.404861, 31.144030>,  <35.865719, 37.674892, 31.405842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001877, 37.404861, 31.144030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196003, -0.731748, 0.652785,
		-0.919629, -0.093913, -0.381397,
		0.340391, -0.675074, -0.654529,
		36.103992, 37.202339, 30.947670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294960, 37.142746, 31.279531>,  <35.865719, 37.674892, 31.405842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294960, 37.142746, 31.279531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665447, 37.012753, 31.203117>,  <35.887741, 36.934757, 31.157269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665447, 37.012753, 31.203117>,  <35.294960, 37.142746, 31.279531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665447, 37.012753, 31.203117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178329, -0.824195, 0.537495,
		-0.332131, -0.463773, -0.821343,
		0.926222, -0.324988, -0.191037,
		35.943314, 36.915257, 31.145805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268417, 36.400566, 31.591793>,  <35.294960, 37.142746, 31.279531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268417, 36.400566, 31.591793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647083, 36.359039, 31.469784>,  <35.874283, 36.334122, 31.396578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647083, 36.359039, 31.469784>,  <35.268417, 36.400566, 31.591793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647083, 36.359039, 31.469784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004230, -0.942580, 0.333952,
		-0.322179, -0.317433, -0.891873,
		0.946669, -0.103819, -0.305022,
		35.931084, 36.327892, 31.378277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274723, 35.777390, 31.093769>,  <35.268417, 36.400566, 31.591793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274723, 35.777390, 31.093769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635498, 35.854000, 31.248604>,  <35.851963, 35.899967, 31.341505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635498, 35.854000, 31.248604>,  <35.274723, 35.777390, 31.093769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635498, 35.854000, 31.248604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007124, -0.889570, 0.456743,
		0.431817, -0.414709, -0.800969,
		0.901933, 0.191523, 0.387086,
		35.906078, 35.911457, 31.364729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733540, 35.145119, 30.920891>,  <35.274723, 35.777390, 31.093769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733540, 35.145119, 30.920891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896423, 35.337917, 31.231209>,  <35.994156, 35.453598, 31.417400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896423, 35.337917, 31.231209>,  <35.733540, 35.145119, 30.920891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896423, 35.337917, 31.231209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025709, -0.843025, 0.537259,
		0.912971, -0.238724, -0.330900,
		0.407213, 0.481995, 0.775795,
		36.018589, 35.482517, 31.463947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246834, 34.696762, 31.214773>,  <35.733540, 35.145119, 30.920891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246834, 34.696762, 31.214773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145126, 34.942429, 31.513611>,  <36.084103, 35.089828, 31.692913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145126, 34.942429, 31.513611>,  <36.246834, 34.696762, 31.214773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145126, 34.942429, 31.513611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090385, -0.754012, 0.650613,
		0.962901, 0.232955, 0.136209,
		-0.254267, 0.614165, 0.747094,
		36.068848, 35.126678, 31.737740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002064, 34.495861, 31.269894>,  <36.246834, 34.696762, 31.214773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002064, 34.495861, 31.269894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182625, 34.190636, 31.084862>,  <37.290962, 34.007500, 30.973843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182625, 34.190636, 31.084862>,  <37.002064, 34.495861, 31.269894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182625, 34.190636, 31.084862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022815, 0.508359, -0.860843,
		0.892030, 0.399138, 0.212064,
		0.451400, -0.763060, -0.462578,
		37.318047, 33.961720, 30.946089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395641, 34.938118, 30.837734>,  <37.002064, 34.495861, 31.269894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395641, 34.938118, 30.837734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434761, 34.577492, 30.669157>,  <37.458233, 34.361115, 30.568010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434761, 34.577492, 30.669157>,  <37.395641, 34.938118, 30.837734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434761, 34.577492, 30.669157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439793, 0.419033, -0.794350,
		0.892758, -0.107660, 0.437484,
		0.097800, -0.901565, -0.421444,
		37.464100, 34.307022, 30.542725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147659, 34.786812, 30.702988>,  <37.395641, 34.938118, 30.837734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147659, 34.786812, 30.702988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903873, 34.608276, 30.440893>,  <37.757603, 34.501156, 30.283636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903873, 34.608276, 30.440893>,  <38.147659, 34.786812, 30.702988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903873, 34.608276, 30.440893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500097, 0.424872, -0.754577,
		0.615186, -0.787572, -0.035734,
		-0.609466, -0.446334, -0.655237,
		37.721035, 34.474377, 30.244322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594044, 34.856293, 30.101496>,  <38.147659, 34.786812, 30.702988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594044, 34.856293, 30.101496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267456, 34.676922, 29.956005>,  <38.071503, 34.569298, 29.868711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267456, 34.676922, 29.956005>,  <38.594044, 34.856293, 30.101496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267456, 34.676922, 29.956005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292583, 0.221758, -0.930171,
		0.497776, -0.865872, -0.049855,
		-0.816465, -0.448430, -0.363725,
		38.022518, 34.542393, 29.846888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838074, 34.461464, 29.571787>,  <38.594044, 34.856293, 30.101496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838074, 34.461464, 29.571787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443504, 34.461823, 29.506088>,  <38.206764, 34.462036, 29.466669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443504, 34.461823, 29.506088>,  <38.838074, 34.461464, 29.571787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443504, 34.461823, 29.506088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163102, 0.123342, -0.978869,
		0.019381, -0.992364, -0.121813,
		-0.986419, 0.000897, -0.164247,
		38.147579, 34.462090, 29.456814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850586, 34.136780, 29.052479>,  <38.838074, 34.461464, 29.571787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850586, 34.136780, 29.052479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524956, 34.368740, 29.065094>,  <38.329578, 34.507915, 29.072664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524956, 34.368740, 29.065094>,  <38.850586, 34.136780, 29.052479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524956, 34.368740, 29.065094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138745, 0.246931, -0.959049,
		-0.563945, -0.776361, -0.281479,
		-0.814074, 0.579904, 0.031540,
		38.280735, 34.542713, 29.074556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505527, 33.973770, 28.377382>,  <38.850586, 34.136780, 29.052479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505527, 33.973770, 28.377382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370338, 34.325588, 28.511351>,  <38.289223, 34.536678, 28.591732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370338, 34.325588, 28.511351>,  <38.505527, 33.973770, 28.377382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370338, 34.325588, 28.511351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174521, 0.408258, -0.896029,
		-0.924832, -0.244387, -0.291481,
		-0.337977, 0.879546, 0.334920,
		38.268944, 34.589451, 28.611826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024086, 34.276779, 27.900270>,  <38.505527, 33.973770, 28.377382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024086, 34.276779, 27.900270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145271, 34.587624, 28.120930>,  <38.217983, 34.774132, 28.253325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145271, 34.587624, 28.120930>,  <38.024086, 34.276779, 27.900270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145271, 34.587624, 28.120930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221579, 0.505548, -0.833861,
		-0.926886, 0.374861, -0.019030,
		0.302961, 0.777111, 0.551646,
		38.236160, 34.820755, 28.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621693, 34.829498, 27.671028>,  <38.024086, 34.276779, 27.900270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621693, 34.829498, 27.671028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953358, 34.964577, 27.849218>,  <38.152355, 35.045624, 27.956133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953358, 34.964577, 27.849218>,  <37.621693, 34.829498, 27.671028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953358, 34.964577, 27.849218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200747, 0.563862, -0.801099,
		-0.521717, 0.753670, 0.399742,
		0.829164, 0.337700, 0.445474,
		38.202106, 35.065887, 27.982861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581200, 35.588451, 27.616138>,  <37.621693, 34.829498, 27.671028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581200, 35.588451, 27.616138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960381, 35.491829, 27.699114>,  <38.187889, 35.433853, 27.748899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960381, 35.491829, 27.699114>,  <37.581200, 35.588451, 27.616138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960381, 35.491829, 27.699114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290435, 0.389002, -0.874256,
		0.130490, 0.889003, 0.438914,
		0.947956, -0.241558, 0.207437,
		38.244766, 35.419361, 27.761345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877853, 36.180416, 27.543638>,  <37.581200, 35.588451, 27.616138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877853, 36.180416, 27.543638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164627, 35.904175, 27.505520>,  <38.336689, 35.738430, 27.482649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164627, 35.904175, 27.505520>,  <37.877853, 36.180416, 27.543638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164627, 35.904175, 27.505520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424431, 0.540821, -0.726203,
		0.553055, 0.480190, 0.680843,
		0.716930, -0.690601, -0.095296,
		38.379707, 35.696995, 27.476931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538727, 36.524796, 27.625769>,  <37.877853, 36.180416, 27.543638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538727, 36.524796, 27.625769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600201, 36.201939, 27.397766>,  <38.637085, 36.008224, 27.260963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600201, 36.201939, 27.397766>,  <38.538727, 36.524796, 27.625769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600201, 36.201939, 27.397766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480595, 0.565089, -0.670599,
		0.863371, -0.170884, 0.474751,
		0.153682, -0.807139, -0.570008,
		38.646305, 35.959797, 27.226765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012581, 36.793510, 27.145958>,  <38.538727, 36.524796, 27.625769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012581, 36.793510, 27.145958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921925, 36.438786, 26.984863>,  <38.867531, 36.225952, 26.888206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921925, 36.438786, 26.984863>,  <39.012581, 36.793510, 27.145958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921925, 36.438786, 26.984863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446346, 0.272957, -0.852215,
		0.865685, -0.372904, 0.333963,
		-0.226637, -0.886813, -0.402739,
		38.853935, 36.172741, 26.864042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577656, 36.573769, 26.814699>,  <39.012581, 36.793510, 27.145958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577656, 36.573769, 26.814699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291412, 36.359749, 26.635086>,  <39.119667, 36.231339, 26.527319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291412, 36.359749, 26.635086>,  <39.577656, 36.573769, 26.814699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291412, 36.359749, 26.635086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223219, 0.433968, -0.872837,
		0.661875, -0.724842, -0.191118,
		-0.715608, -0.535048, -0.449031,
		39.076729, 36.199234, 26.500378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.058060, 34.031658, 25.220186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.330296, 34.261768, 25.401670>,  <32.493637, 34.399834, 25.510561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.330296, 34.261768, 25.401670>,  <32.058060, 34.031658, 25.220186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330296, 34.261768, 25.401670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228993, -0.755261, 0.614120,
		0.695957, -0.314069, -0.645759,
		0.680592, 0.575275, 0.453710,
		32.534473, 34.434349, 25.537783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677986, 33.553650, 25.438015>,  <32.058060, 34.031658, 25.220186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677986, 33.553650, 25.438015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.678211, 33.888050, 25.657507>,  <32.678345, 34.088692, 25.789202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.678211, 33.888050, 25.657507>,  <32.677986, 33.553650, 25.438015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678211, 33.888050, 25.657507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219240, -0.535481, 0.815594,
		0.975671, 0.119846, -0.183585,
		0.000561, 0.836000, 0.548728,
		32.678379, 34.138851, 25.822126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131580, 33.379265, 25.837952>,  <32.677986, 33.553650, 25.438015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131580, 33.379265, 25.837952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.982330, 33.702702, 26.019920>,  <32.892780, 33.896763, 26.129101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.982330, 33.702702, 26.019920>,  <33.131580, 33.379265, 25.837952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982330, 33.702702, 26.019920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203865, -0.406892, 0.890437,
		0.905105, 0.424989, -0.013021,
		-0.373128, 0.808593, 0.454920,
		32.870392, 33.945278, 26.156397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623775, 33.690006, 26.263020>,  <33.131580, 33.379265, 25.837952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623775, 33.690006, 26.263020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.274105, 33.814167, 26.412397>,  <33.064301, 33.888664, 26.502024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.274105, 33.814167, 26.412397>,  <33.623775, 33.690006, 26.263020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274105, 33.814167, 26.412397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195332, -0.479299, 0.855639,
		0.444584, 0.820927, 0.358362,
		-0.874180, 0.310404, 0.373442,
		33.011852, 33.907288, 26.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802765, 34.067829, 26.959156>,  <33.623775, 33.690006, 26.263020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802765, 34.067829, 26.959156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.423950, 33.944073, 26.924765>,  <33.196659, 33.869820, 26.904131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.423950, 33.944073, 26.924765>,  <33.802765, 34.067829, 26.959156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423950, 33.944073, 26.924765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030448, -0.353055, 0.935107,
		-0.319670, 0.882965, 0.343778,
		-0.947040, -0.309393, -0.085977,
		33.139839, 33.851254, 26.898972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355225, 34.441818, 27.424946>,  <33.802765, 34.067829, 26.959156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355225, 34.441818, 27.424946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176125, 34.088661, 27.368338>,  <33.068665, 33.876766, 27.334372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176125, 34.088661, 27.368338>,  <33.355225, 34.441818, 27.424946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176125, 34.088661, 27.368338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029451, -0.172751, 0.984525,
		-0.893673, 0.436653, 0.103351,
		-0.447750, -0.882888, -0.141523,
		33.041798, 33.823795, 27.325880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026253, 34.359989, 28.023495>,  <33.355225, 34.441818, 27.424946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026253, 34.359989, 28.023495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010670, 33.992973, 27.865206>,  <33.001320, 33.772762, 27.770231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.010670, 33.992973, 27.865206>,  <33.026253, 34.359989, 28.023495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010670, 33.992973, 27.865206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117714, -0.397481, 0.910029,
		-0.992283, -0.011127, 0.123494,
		-0.038961, -0.917543, -0.395723,
		32.998981, 33.717709, 27.746489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426884, 33.891575, 28.410431>,  <33.026253, 34.359989, 28.023495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426884, 33.891575, 28.410431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.683807, 33.641346, 28.233303>,  <32.837963, 33.491207, 28.127026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.683807, 33.641346, 28.233303>,  <32.426884, 33.891575, 28.410431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683807, 33.641346, 28.233303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103814, -0.501427, 0.858949,
		-0.759379, -0.597685, -0.257129,
		0.642313, -0.625575, -0.442821,
		32.876503, 33.453674, 28.100456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189178, 33.192291, 28.536997>,  <32.426884, 33.891575, 28.410431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189178, 33.192291, 28.536997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571022, 33.119507, 28.442669>,  <32.800129, 33.075836, 28.386072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571022, 33.119507, 28.442669>,  <32.189178, 33.192291, 28.536997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571022, 33.119507, 28.442669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059817, -0.658475, 0.750222,
		-0.291790, -0.730275, -0.617703,
		0.954610, -0.181958, -0.235819,
		32.857407, 33.064919, 28.371923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226265, 32.478180, 28.592730>,  <32.189178, 33.192291, 28.536997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226265, 32.478180, 28.592730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.614811, 32.567966, 28.623896>,  <32.847939, 32.621838, 28.642595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.614811, 32.567966, 28.623896>,  <32.226265, 32.478180, 28.592730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614811, 32.567966, 28.623896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132655, -0.784389, 0.605918,
		0.197124, -0.578230, -0.791702,
		0.971363, 0.224464, 0.077917,
		32.906219, 32.635307, 28.647270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611691, 31.848934, 28.562447>,  <32.226265, 32.478180, 28.592730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611691, 31.848934, 28.562447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.829876, 32.125286, 28.752251>,  <32.960785, 32.291096, 28.866133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.829876, 32.125286, 28.752251>,  <32.611691, 31.848934, 28.562447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829876, 32.125286, 28.752251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078163, -0.605614, 0.791911,
		0.834484, -0.394866, -0.384339,
		0.545460, 0.690878, 0.474511,
		32.993515, 32.332550, 28.894604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015034, 31.481773, 29.091564>,  <32.611691, 31.848934, 28.562447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015034, 31.481773, 29.091564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083721, 31.861839, 29.195639>,  <33.124935, 32.089878, 29.258083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083721, 31.861839, 29.195639>,  <33.015034, 31.481773, 29.091564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083721, 31.861839, 29.195639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197932, -0.292000, 0.935713,
		0.965057, -0.109179, -0.238210,
		0.171717, 0.950166, 0.260187,
		33.135235, 32.146889, 29.273695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508572, 31.323410, 29.636438>,  <33.015034, 31.481773, 29.091564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508572, 31.323410, 29.636438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.350712, 31.685802, 29.697695>,  <33.255997, 31.903238, 29.734449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.350712, 31.685802, 29.697695>,  <33.508572, 31.323410, 29.636438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350712, 31.685802, 29.697695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034253, -0.152047, 0.987780,
		0.918192, 0.395074, 0.028974,
		-0.394652, 0.905979, 0.153141,
		33.232315, 31.957596, 29.743637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876831, 31.656246, 30.112734>,  <33.508572, 31.323410, 29.636438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876831, 31.656246, 30.112734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543064, 31.873867, 30.147938>,  <33.342804, 32.004440, 30.169060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543064, 31.873867, 30.147938>,  <33.876831, 31.656246, 30.112734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543064, 31.873867, 30.147938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049068, -0.085723, 0.995110,
		0.548938, 0.834660, 0.044834,
		-0.834422, 0.544054, 0.088012,
		33.292736, 32.037083, 30.174341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595257, 31.843344, 30.333002>,  <33.876831, 31.656246, 30.112734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595257, 31.843344, 30.333002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826847, 31.531343, 30.238014>,  <34.965801, 31.344143, 30.181023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826847, 31.531343, 30.238014>,  <34.595257, 31.843344, 30.333002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826847, 31.531343, 30.238014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233044, 0.437406, -0.868543,
		0.781332, 0.447523, 0.435020,
		0.578973, -0.779999, -0.237467,
		35.000538, 31.297344, 30.166775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266171, 32.156544, 30.044552>,  <34.595257, 31.843344, 30.333002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266171, 32.156544, 30.044552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240265, 31.780050, 29.911959>,  <35.224720, 31.554153, 29.832403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240265, 31.780050, 29.911959>,  <35.266171, 32.156544, 30.044552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240265, 31.780050, 29.911959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353274, 0.289044, -0.889748,
		0.933275, -0.174731, 0.313793,
		-0.064767, -0.941235, -0.331485,
		35.220837, 31.497681, 29.812513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912327, 31.998320, 29.654205>,  <35.266171, 32.156544, 30.044552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912327, 31.998320, 29.654205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626408, 31.741693, 29.542881>,  <35.454857, 31.587717, 29.476088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626408, 31.741693, 29.542881>,  <35.912327, 31.998320, 29.654205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626408, 31.741693, 29.542881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008850, 0.389635, -0.920927,
		0.699273, -0.660741, -0.272834,
		-0.714800, -0.641565, -0.278309,
		35.411968, 31.549225, 29.459389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132206, 31.840664, 29.098969>,  <35.912327, 31.998320, 29.654205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132206, 31.840664, 29.098969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747658, 31.736914, 29.062107>,  <35.516930, 31.674664, 29.039989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747658, 31.736914, 29.062107>,  <36.132206, 31.840664, 29.098969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747658, 31.736914, 29.062107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030650, 0.231838, -0.972272,
		0.273553, -0.937536, -0.214932,
		-0.961369, -0.259380, -0.092156,
		35.459248, 31.659101, 29.034460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081852, 31.553967, 28.488146>,  <36.132206, 31.840664, 29.098969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081852, 31.553967, 28.488146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.690617, 31.613209, 28.546671>,  <35.455875, 31.648754, 28.581785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.690617, 31.613209, 28.546671>,  <36.081852, 31.553967, 28.488146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690617, 31.613209, 28.546671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134410, 0.087466, -0.987058,
		-0.158989, -0.985096, -0.065642,
		-0.978088, 0.148108, 0.146312,
		35.397190, 31.657640, 28.590565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764439, 31.131729, 27.922466>,  <36.081852, 31.553967, 28.488146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764439, 31.131729, 27.922466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513191, 31.402061, 28.076725>,  <35.362442, 31.564260, 28.169279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513191, 31.402061, 28.076725>,  <35.764439, 31.131729, 27.922466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513191, 31.402061, 28.076725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113016, 0.411120, -0.904549,
		-0.769868, -0.611746, -0.181851,
		-0.628116, 0.675831, 0.385645,
		35.324757, 31.604811, 28.192419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269390, 31.256485, 27.368198>,  <35.764439, 31.131729, 27.922466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269390, 31.256485, 27.368198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240437, 31.575472, 27.607800>,  <35.223064, 31.766865, 27.751560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240437, 31.575472, 27.607800>,  <35.269390, 31.256485, 27.368198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240437, 31.575472, 27.607800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149732, 0.585083, -0.797031,
		-0.986074, -0.147381, 0.077057,
		-0.072382, 0.797469, 0.599002,
		35.218723, 31.814713, 27.787500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727242, 31.745028, 27.108044>,  <35.269390, 31.256485, 27.368198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727242, 31.745028, 27.108044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963787, 31.971870, 27.337368>,  <35.105713, 32.107975, 27.474962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963787, 31.971870, 27.337368>,  <34.727242, 31.745028, 27.108044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963787, 31.971870, 27.337368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040006, 0.689435, -0.723242,
		-0.805415, 0.450632, 0.385017,
		0.591360, 0.567107, 0.573309,
		35.141193, 32.142002, 27.509361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382946, 32.370399, 27.093369>,  <34.727242, 31.745028, 27.108044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382946, 32.370399, 27.093369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.758121, 32.459450, 27.199732>,  <34.983227, 32.512882, 27.263550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.758121, 32.459450, 27.199732>,  <34.382946, 32.370399, 27.093369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758121, 32.459450, 27.199732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051526, 0.668779, -0.741674,
		-0.342954, 0.709345, 0.615802,
		0.937938, 0.222630, 0.265910,
		35.039501, 32.526237, 27.279505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369431, 33.090912, 27.002983>,  <34.382946, 32.370399, 27.093369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369431, 33.090912, 27.002983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.761871, 33.013756, 26.996971>,  <34.997337, 32.967461, 26.993364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.761871, 33.013756, 26.996971>,  <34.369431, 33.090912, 27.002983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761871, 33.013756, 26.996971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099625, 0.570255, -0.815404,
		0.165856, 0.798500, 0.578697,
		0.981105, -0.192892, -0.015029,
		35.056202, 32.955887, 26.992462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759796, 33.712597, 26.910316>,  <34.369431, 33.090912, 27.002983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759796, 33.712597, 26.910316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984344, 33.418423, 26.758522>,  <35.119072, 33.241920, 26.667446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984344, 33.418423, 26.758522>,  <34.759796, 33.712597, 26.910316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984344, 33.418423, 26.758522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182437, 0.557247, -0.810057,
		0.807208, 0.385507, 0.446990,
		0.561366, -0.735432, -0.379484,
		35.152756, 33.197792, 26.644676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146404, 34.116314, 26.566294>,  <34.759796, 33.712597, 26.910316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146404, 34.116314, 26.566294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248516, 33.764309, 26.406092>,  <35.309784, 33.553104, 26.309971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248516, 33.764309, 26.406092>,  <35.146404, 34.116314, 26.566294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248516, 33.764309, 26.406092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188541, 0.451585, -0.872079,
		0.948307, 0.147110, 0.281199,
		0.255276, -0.880017, -0.400505,
		35.325100, 33.500305, 26.285940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804543, 34.199123, 26.324938>,  <35.146404, 34.116314, 26.566294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804543, 34.199123, 26.324938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634838, 33.892593, 26.131960>,  <35.533016, 33.708675, 26.016172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634838, 33.892593, 26.131960>,  <35.804543, 34.199123, 26.324938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634838, 33.892593, 26.131960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130740, 0.475352, -0.870028,
		0.896055, -0.432189, -0.101482,
		-0.424256, -0.766325, -0.482446,
		35.507561, 33.662697, 25.987226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279335, 33.973351, 25.798466>,  <35.804543, 34.199123, 26.324938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279335, 33.973351, 25.798466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921227, 33.853951, 25.666166>,  <35.706364, 33.782310, 25.586786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921227, 33.853951, 25.666166>,  <36.279335, 33.973351, 25.798466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921227, 33.853951, 25.666166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211034, 0.369696, -0.904870,
		0.392386, -0.879897, -0.267981,
		-0.895264, -0.298505, -0.330752,
		35.652645, 33.764400, 25.566942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646065, 33.546417, 25.271341>,  <36.279335, 33.973351, 25.798466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646065, 33.546417, 25.271341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043583, 33.508366, 25.248316>,  <37.282093, 33.485535, 25.234501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043583, 33.508366, 25.248316>,  <36.646065, 33.546417, 25.271341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043583, 33.508366, 25.248316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009030, -0.585038, 0.810955,
		-0.110821, -0.805407, -0.582270,
		0.993799, -0.095129, -0.057562,
		37.341724, 33.479828, 25.231047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801327, 32.952301, 25.674355>,  <36.646065, 33.546417, 25.271341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801327, 32.952301, 25.674355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177010, 33.075527, 25.613712>,  <37.402420, 33.149464, 25.577328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177010, 33.075527, 25.613712>,  <36.801327, 32.952301, 25.674355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177010, 33.075527, 25.613712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309102, -0.566402, 0.763966,
		0.149482, -0.764384, -0.627193,
		0.939207, 0.308066, -0.151606,
		37.458771, 33.167946, 25.568230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270844, 32.284210, 25.731321>,  <36.801327, 32.952301, 25.674355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270844, 32.284210, 25.731321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509407, 32.594131, 25.815205>,  <37.652546, 32.780083, 25.865534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509407, 32.594131, 25.815205>,  <37.270844, 32.284210, 25.731321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509407, 32.594131, 25.815205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430882, -0.529461, 0.730761,
		0.677227, -0.345475, -0.649624,
		0.596410, 0.774802, 0.209706,
		37.688332, 32.826572, 25.878117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831623, 31.871078, 25.829002>,  <37.270844, 32.284210, 25.731321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831623, 31.871078, 25.829002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811569, 32.241009, 25.979830>,  <37.799538, 32.462967, 26.070326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811569, 32.241009, 25.979830>,  <37.831623, 31.871078, 25.829002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811569, 32.241009, 25.979830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402447, -0.326827, 0.855114,
		0.914069, 0.194623, -0.355808,
		-0.050137, 0.924827, 0.377068,
		37.796528, 32.518456, 26.092951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575184, 31.974867, 26.132496>,  <37.831623, 31.871078, 25.829002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575184, 31.974867, 26.132496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317120, 32.223564, 26.310123>,  <38.162281, 32.372784, 26.416700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317120, 32.223564, 26.310123>,  <38.575184, 31.974867, 26.132496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317120, 32.223564, 26.310123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260561, -0.367328, 0.892848,
		0.718241, 0.691742, 0.074986,
		-0.645165, 0.621742, 0.444071,
		38.123569, 32.410088, 26.443344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908459, 32.270050, 26.708441>,  <38.575184, 31.974867, 26.132496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908459, 32.270050, 26.708441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.537876, 32.366699, 26.823889>,  <38.315529, 32.424690, 26.893158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.537876, 32.366699, 26.823889>,  <38.908459, 32.270050, 26.708441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537876, 32.366699, 26.823889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249525, -0.179837, 0.951523,
		0.281817, 0.953559, 0.106319,
		-0.926454, 0.241627, 0.288618,
		38.259941, 32.439186, 26.910475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034554, 32.595722, 27.294563>,  <38.908459, 32.270050, 26.708441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034554, 32.595722, 27.294563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653698, 32.479778, 27.333374>,  <38.425186, 32.410213, 27.356661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653698, 32.479778, 27.333374>,  <39.034554, 32.595722, 27.294563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653698, 32.479778, 27.333374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159312, -0.199686, 0.966822,
		-0.260868, 0.936006, 0.236307,
		-0.952138, -0.289860, 0.097025,
		38.368057, 32.392822, 27.362482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711906, 33.045090, 27.831350>,  <39.034554, 32.595722, 27.294563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711906, 33.045090, 27.831350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527870, 32.690659, 27.808786>,  <38.417446, 32.478001, 27.795248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527870, 32.690659, 27.808786>,  <38.711906, 33.045090, 27.831350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527870, 32.690659, 27.808786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167488, -0.149010, 0.974548,
		-0.871930, 0.438934, 0.216966,
		-0.460093, -0.886077, -0.056410,
		38.389843, 32.424835, 27.791862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352825, 33.015049, 28.493959>,  <38.711906, 33.045090, 27.831350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352825, 33.015049, 28.493959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410522, 32.649048, 28.343246>,  <38.445141, 32.429447, 28.252819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410522, 32.649048, 28.343246>,  <38.352825, 33.015049, 28.493959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410522, 32.649048, 28.343246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272265, -0.329372, 0.904094,
		-0.951349, -0.232997, 0.201612,
		0.144246, -0.915001, -0.376785,
		38.453796, 32.374546, 28.230211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047207, 32.535580, 28.974197>,  <38.352825, 33.015049, 28.493959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047207, 32.535580, 28.974197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305519, 32.324360, 28.753605>,  <38.460506, 32.197628, 28.621250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305519, 32.324360, 28.753605>,  <38.047207, 32.535580, 28.974197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305519, 32.324360, 28.753605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222850, -0.560479, 0.797622,
		-0.730276, -0.637988, -0.244272,
		0.645783, -0.528048, -0.551480,
		38.499252, 32.165947, 28.588161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897629, 31.795696, 29.139565>,  <38.047207, 32.535580, 28.974197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897629, 31.795696, 29.139565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.254345, 31.793343, 28.958599>,  <38.468372, 31.791929, 28.850019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.254345, 31.793343, 28.958599>,  <37.897629, 31.795696, 29.139565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254345, 31.793343, 28.958599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298692, -0.743401, 0.598446,
		-0.339848, -0.668821, -0.661198,
		0.891788, -0.005886, -0.452415,
		38.521881, 31.791576, 28.822874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094173, 31.040302, 29.073366>,  <37.897629, 31.795696, 29.139565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094173, 31.040302, 29.073366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426098, 31.259979, 29.033747>,  <38.625252, 31.391785, 29.009975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426098, 31.259979, 29.033747>,  <38.094173, 31.040302, 29.073366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426098, 31.259979, 29.033747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469551, -0.591209, 0.655739,
		0.301567, -0.590645, -0.748462,
		0.829807, 0.549190, -0.099049,
		38.675041, 31.424736, 29.004032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647671, 30.514257, 28.951694>,  <38.094173, 31.040302, 29.073366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647671, 30.514257, 28.951694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.784336, 30.866077, 29.084154>,  <38.866337, 31.077169, 29.163630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.784336, 30.866077, 29.084154>,  <38.647671, 30.514257, 28.951694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784336, 30.866077, 29.084154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369413, -0.449675, 0.813220,
		0.864176, -0.155517, -0.478555,
		0.341663, 0.879549, 0.331149,
		38.886837, 31.129942, 29.183498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360477, 30.442362, 29.131727>,  <38.647671, 30.514257, 28.951694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360477, 30.442362, 29.131727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.214146, 30.758743, 29.327915>,  <39.126347, 30.948572, 29.445627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.214146, 30.758743, 29.327915>,  <39.360477, 30.442362, 29.131727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214146, 30.758743, 29.327915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476902, -0.293238, 0.828599,
		0.799207, 0.537033, -0.269931,
		-0.365831, 0.790953, 0.490470,
		39.104397, 30.996029, 29.475056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.890976, 36.198990, 26.300364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.503651, 36.170635, 26.204584>,  <39.271255, 36.153622, 26.147116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.503651, 36.170635, 26.204584>,  <39.890976, 36.198990, 26.300364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503651, 36.170635, 26.204584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225504, 0.163713, -0.960389,
		0.107278, -0.983958, -0.142541,
		-0.968318, -0.070885, -0.239449,
		39.213154, 36.149368, 26.132750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915142, 35.671833, 25.735325>,  <39.890976, 36.198990, 26.300364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915142, 35.671833, 25.735325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.584938, 35.897484, 25.728418>,  <39.386814, 36.032875, 25.724274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.584938, 35.897484, 25.728418>,  <39.915142, 35.671833, 25.735325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584938, 35.897484, 25.728418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083146, 0.091299, -0.992346,
		-0.558230, -0.820627, -0.122273,
		-0.825510, 0.564124, -0.017267,
		39.337284, 36.066719, 25.723238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416534, 35.520504, 25.178173>,  <39.915142, 35.671833, 25.735325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416534, 35.520504, 25.178173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300694, 35.898087, 25.241518>,  <39.231190, 36.124634, 25.279526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300694, 35.898087, 25.241518>,  <39.416534, 35.520504, 25.178173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300694, 35.898087, 25.241518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182619, 0.216907, -0.958959,
		-0.939563, -0.248801, -0.235202,
		-0.289607, 0.943954, 0.158362,
		39.213810, 36.181274, 25.289026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109455, 35.759457, 24.550163>,  <39.416534, 35.520504, 25.178173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109455, 35.759457, 24.550163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177120, 36.086826, 24.769821>,  <39.217720, 36.283249, 24.901615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177120, 36.086826, 24.769821>,  <39.109455, 35.759457, 24.550163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177120, 36.086826, 24.769821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173667, 0.523706, -0.834010,
		-0.970168, 0.236448, -0.053545,
		0.169158, 0.818428, 0.549146,
		39.227867, 36.332355, 24.934565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764591, 36.284809, 24.233402>,  <39.109455, 35.759457, 24.550163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764591, 36.284809, 24.233402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037960, 36.494648, 24.436468>,  <39.201981, 36.620552, 24.558308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037960, 36.494648, 24.436468>,  <38.764591, 36.284809, 24.233402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037960, 36.494648, 24.436468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173434, 0.558828, -0.810945,
		-0.709119, 0.642267, 0.290934,
		0.683425, 0.524599, 0.507666,
		39.242989, 36.652027, 24.588768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603828, 36.942604, 24.141064>,  <38.764591, 36.284809, 24.233402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603828, 36.942604, 24.141064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.963257, 37.028767, 24.293997>,  <39.178913, 37.080463, 24.385757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.963257, 37.028767, 24.293997>,  <38.603828, 36.942604, 24.141064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963257, 37.028767, 24.293997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149444, 0.668966, -0.728115,
		-0.412606, 0.711397, 0.568920,
		0.898567, 0.215403, 0.382333,
		39.232826, 37.093388, 24.408697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602165, 37.668251, 24.122232>,  <38.603828, 36.942604, 24.141064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602165, 37.668251, 24.122232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978333, 37.533791, 24.142677>,  <39.204033, 37.453114, 24.154943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978333, 37.533791, 24.142677>,  <38.602165, 37.668251, 24.122232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978333, 37.533791, 24.142677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268539, 0.642097, -0.718051,
		0.208555, 0.688995, 0.694111,
		0.940421, -0.336149, 0.051110,
		39.260460, 37.432945, 24.158010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138325, 38.252712, 24.330811>,  <38.602165, 37.668251, 24.122232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138325, 38.252712, 24.330811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.330410, 37.959732, 24.137768>,  <39.445660, 37.783943, 24.021942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.330410, 37.959732, 24.137768>,  <39.138325, 38.252712, 24.330811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330410, 37.959732, 24.137768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341533, 0.662909, -0.666263,
		0.807931, 0.155120, 0.568494,
		0.480211, -0.732454, -0.482606,
		39.474472, 37.739994, 23.992987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613110, 38.637295, 23.973286>,  <39.138325, 38.252712, 24.330811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613110, 38.637295, 23.973286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621441, 38.276684, 23.800394>,  <39.626442, 38.060318, 23.696659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621441, 38.276684, 23.800394>,  <39.613110, 38.637295, 23.973286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621441, 38.276684, 23.800394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160989, 0.429706, -0.888502,
		0.986736, -0.051075, 0.154087,
		0.020832, -0.901523, -0.432229,
		39.627689, 38.006226, 23.670725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314018, 38.547935, 23.580639>,  <39.613110, 38.637295, 23.973286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314018, 38.547935, 23.580639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011253, 38.330078, 23.436172>,  <39.829594, 38.199364, 23.349493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011253, 38.330078, 23.436172>,  <40.314018, 38.547935, 23.580639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011253, 38.330078, 23.436172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075414, 0.476167, -0.876115,
		0.649151, -0.690379, -0.319342,
		-0.756912, -0.544648, -0.361168,
		39.784180, 38.166683, 23.327822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402706, 38.359112, 22.879492>,  <40.314018, 38.547935, 23.580639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402706, 38.359112, 22.879492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.007423, 38.300777, 22.898127>,  <39.770252, 38.265778, 22.909307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.007423, 38.300777, 22.898127>,  <40.402706, 38.359112, 22.879492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007423, 38.300777, 22.898127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112414, 0.484617, -0.867473,
		0.103935, -0.862483, -0.495298,
		-0.988210, -0.145839, 0.046586,
		39.710960, 38.257027, 22.912102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181358, 38.040749, 22.190577>,  <40.402706, 38.359112, 22.879492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181358, 38.040749, 22.190577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.874386, 38.222904, 22.371096>,  <39.690201, 38.332199, 22.479406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.874386, 38.222904, 22.371096>,  <40.181358, 38.040749, 22.190577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874386, 38.222904, 22.371096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281168, 0.393555, -0.875248,
		-0.576188, -0.798584, -0.173986,
		-0.767432, 0.455388, 0.451298,
		39.644157, 38.359520, 22.506485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598141, 37.933933, 21.735588>,  <40.181358, 38.040749, 22.190577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598141, 37.933933, 21.735588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.526043, 38.242619, 21.979548>,  <39.482784, 38.427830, 22.125923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.526043, 38.242619, 21.979548>,  <39.598141, 37.933933, 21.735588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526043, 38.242619, 21.979548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098694, 0.602735, -0.791814,
		-0.978658, -0.202914, -0.032477,
		-0.180245, 0.771710, 0.609898,
		39.471970, 38.474133, 22.162518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844376, 38.049377, 21.710846>,  <39.598141, 37.933933, 21.735588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844376, 38.049377, 21.710846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069153, 38.364494, 21.811722>,  <39.204018, 38.553566, 21.872248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069153, 38.364494, 21.811722>,  <38.844376, 38.049377, 21.710846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069153, 38.364494, 21.811722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168659, 0.407596, -0.897452,
		-0.809801, 0.461781, 0.361913,
		0.561940, 0.787797, 0.252188,
		39.237736, 38.600834, 21.887379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295372, 37.564224, 21.413681>,  <38.844376, 38.049377, 21.710846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295372, 37.564224, 21.413681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129772, 37.284855, 21.180166>,  <38.030411, 37.117233, 21.040058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129772, 37.284855, 21.180166>,  <38.295372, 37.564224, 21.413681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129772, 37.284855, 21.180166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266711, -0.520113, 0.811387,
		-0.870326, 0.491618, 0.029051,
		-0.414002, -0.698423, -0.583788,
		38.005573, 37.075329, 21.005030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735939, 37.392677, 21.789434>,  <38.295372, 37.564224, 21.413681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735939, 37.392677, 21.789434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772461, 37.090546, 21.529854>,  <37.794373, 36.909267, 21.374105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772461, 37.090546, 21.529854>,  <37.735939, 37.392677, 21.789434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772461, 37.090546, 21.529854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329819, -0.637828, 0.695985,
		-0.939619, 0.150491, -0.307358,
		0.091302, -0.755333, -0.648950,
		37.799850, 36.863945, 21.335169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138611, 37.043793, 21.917606>,  <37.735939, 37.392677, 21.789434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138611, 37.043793, 21.917606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402966, 36.803989, 21.737024>,  <37.561581, 36.660107, 21.628675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402966, 36.803989, 21.737024>,  <37.138611, 37.043793, 21.917606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402966, 36.803989, 21.737024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290597, -0.759051, 0.582577,
		-0.691936, -0.253829, -0.675866,
		0.660892, -0.599510, -0.451453,
		37.601231, 36.624138, 21.601587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801590, 36.415874, 21.800323>,  <37.138611, 37.043793, 21.917606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801590, 36.415874, 21.800323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189880, 36.336502, 21.746195>,  <37.422855, 36.288879, 21.713717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189880, 36.336502, 21.746195>,  <36.801590, 36.415874, 21.800323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189880, 36.336502, 21.746195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093909, -0.832146, 0.546547,
		-0.221059, -0.517841, -0.826422,
		0.970729, -0.198428, -0.135324,
		37.481098, 36.276974, 21.705597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781681, 35.713779, 21.808987>,  <36.801590, 36.415874, 21.800323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781681, 35.713779, 21.808987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175129, 35.757587, 21.866257>,  <37.411198, 35.783875, 21.900618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175129, 35.757587, 21.866257>,  <36.781681, 35.713779, 21.808987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175129, 35.757587, 21.866257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024466, -0.868018, 0.495929,
		0.178594, -0.484302, -0.856479,
		0.983619, 0.109524, 0.143174,
		37.470215, 35.790443, 21.909208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108776, 35.076210, 21.812197>,  <36.781681, 35.713779, 21.808987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108776, 35.076210, 21.812197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397751, 35.276165, 22.003277>,  <37.571136, 35.396137, 22.117924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397751, 35.276165, 22.003277>,  <37.108776, 35.076210, 21.812197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397751, 35.276165, 22.003277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160079, -0.793030, 0.587774,
		0.672650, -0.348161, -0.652936,
		0.722438, 0.499887, 0.477699,
		37.614483, 35.426132, 22.146587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674343, 34.667049, 21.826164>,  <37.108776, 35.076210, 21.812197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674343, 34.667049, 21.826164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.744682, 34.908134, 22.137501>,  <37.786884, 35.052788, 22.324303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.744682, 34.908134, 22.137501>,  <37.674343, 34.667049, 21.826164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744682, 34.908134, 22.137501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149039, -0.797847, 0.584147,
		0.973070, 0.013281, -0.230129,
		0.175849, 0.602714, 0.778340,
		37.797436, 35.088947, 22.371002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253796, 34.321655, 22.201138>,  <37.674343, 34.667049, 21.826164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253796, 34.321655, 22.201138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115456, 34.583279, 22.470238>,  <38.032452, 34.740253, 22.631699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115456, 34.583279, 22.470238>,  <38.253796, 34.321655, 22.201138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115456, 34.583279, 22.470238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266011, -0.619231, 0.738777,
		0.899792, 0.434465, 0.040174,
		-0.345850, 0.654059, 0.672752,
		38.011700, 34.779495, 22.672064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757030, 34.381069, 22.804653>,  <38.253796, 34.321655, 22.201138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757030, 34.381069, 22.804653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398758, 34.513500, 22.923407>,  <38.183792, 34.592957, 22.994659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398758, 34.513500, 22.923407>,  <38.757030, 34.381069, 22.804653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398758, 34.513500, 22.923407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088313, -0.521889, 0.848430,
		0.435835, 0.786143, 0.438209,
		-0.895684, 0.331075, 0.296884,
		38.130054, 34.612823, 23.012472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816463, 34.351997, 23.534313>,  <38.757030, 34.381069, 22.804653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816463, 34.351997, 23.534313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423431, 34.413460, 23.492485>,  <38.187614, 34.450336, 23.467388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423431, 34.413460, 23.492485>,  <38.816463, 34.351997, 23.534313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423431, 34.413460, 23.492485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174919, -0.574315, 0.799729,
		0.062826, 0.804085, 0.591185,
		-0.982576, 0.153653, -0.104568,
		38.128658, 34.459557, 23.461115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520573, 34.727879, 24.161797>,  <38.816463, 34.351997, 23.534313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520573, 34.727879, 24.161797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219105, 34.514931, 24.007620>,  <38.038223, 34.387161, 23.915113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219105, 34.514931, 24.007620>,  <38.520573, 34.727879, 24.161797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219105, 34.514931, 24.007620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151730, -0.429676, 0.890144,
		-0.639499, 0.729358, 0.243058,
		-0.753671, -0.532367, -0.385443,
		37.993004, 34.355221, 23.891987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089188, 34.804092, 24.557686>,  <38.520573, 34.727879, 24.161797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089188, 34.804092, 24.557686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933926, 34.483162, 24.376307>,  <37.840771, 34.290604, 24.267479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933926, 34.483162, 24.376307>,  <38.089188, 34.804092, 24.557686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933926, 34.483162, 24.376307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142143, -0.434019, 0.889620,
		-0.910568, 0.409761, 0.054419,
		-0.388150, -0.802324, -0.453449,
		37.817482, 34.242466, 24.240273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506283, 34.696804, 24.961027>,  <38.089188, 34.804092, 24.557686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506283, 34.696804, 24.961027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.584332, 34.360752, 24.758596>,  <37.631161, 34.159122, 24.637138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.584332, 34.360752, 24.758596>,  <37.506283, 34.696804, 24.961027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584332, 34.360752, 24.758596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059017, -0.525117, 0.848981,
		-0.979003, -0.135784, -0.152041,
		0.195117, -0.840128, -0.506078,
		37.642868, 34.108715, 24.606773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031467, 34.306232, 25.102180>,  <37.506283, 34.696804, 24.961027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031467, 34.306232, 25.102180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285915, 34.022545, 24.980616>,  <37.438583, 33.852333, 24.907677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285915, 34.022545, 24.980616>,  <37.031467, 34.306232, 25.102180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285915, 34.022545, 24.980616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037014, -0.365373, 0.930125,
		-0.770705, -0.602917, -0.206169,
		0.636116, -0.709220, -0.303911,
		37.476749, 33.809780, 24.889442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291885, 34.076221, 24.901304>,  <37.031467, 34.306232, 25.102180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291885, 34.076221, 24.901304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908882, 34.008633, 24.994802>,  <35.679081, 33.968079, 25.050901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908882, 34.008633, 24.994802>,  <36.291885, 34.076221, 24.901304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908882, 34.008633, 24.994802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281578, 0.372146, -0.884432,
		0.062454, -0.912665, -0.403909,
		-0.957504, -0.168968, 0.233745,
		35.621632, 33.957943, 25.064926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943386, 33.965069, 24.195629>,  <36.291885, 34.076221, 24.901304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943386, 33.965069, 24.195629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649166, 34.050728, 24.452723>,  <35.472633, 34.102123, 24.606977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649166, 34.050728, 24.452723>,  <35.943386, 33.965069, 24.195629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649166, 34.050728, 24.452723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506779, 0.455691, -0.731793,
		-0.449596, -0.863995, -0.226661,
		-0.735553, 0.214144, 0.642731,
		35.428501, 34.114971, 24.645542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263672, 33.586170, 23.933971>,  <35.943386, 33.965069, 24.195629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263672, 33.586170, 23.933971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214718, 33.915344, 24.155891>,  <35.185345, 34.112850, 24.289043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214718, 33.915344, 24.155891>,  <35.263672, 33.586170, 23.933971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214718, 33.915344, 24.155891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425987, 0.461335, -0.778271,
		-0.896414, -0.331584, 0.294099,
		-0.122384, 0.822935, 0.554798,
		35.178001, 34.162224, 24.322330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664913, 33.790585, 23.740973>,  <35.263672, 33.586170, 23.933971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664913, 33.790585, 23.740973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828846, 34.108482, 23.920044>,  <34.927204, 34.299221, 24.027487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828846, 34.108482, 23.920044>,  <34.664913, 33.790585, 23.740973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828846, 34.108482, 23.920044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490538, 0.605804, -0.626398,
		-0.769033, 0.037115, 0.638131,
		0.409831, 0.794748, 0.447677,
		34.951794, 34.346909, 24.054348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191013, 34.266724, 23.547911>,  <34.664913, 33.790585, 23.740973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191013, 34.266724, 23.547911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500656, 34.467464, 23.702265>,  <34.686443, 34.587910, 23.794876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500656, 34.467464, 23.702265>,  <34.191013, 34.266724, 23.547911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500656, 34.467464, 23.702265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103975, 0.702073, -0.704474,
		-0.624457, 0.505216, 0.595659,
		0.774108, 0.501847, 0.385884,
		34.732887, 34.618019, 23.818029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963692, 34.934643, 23.668682>,  <34.191013, 34.266724, 23.547911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963692, 34.934643, 23.668682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361385, 34.977425, 23.665838>,  <34.600002, 35.003094, 23.664133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361385, 34.977425, 23.665838>,  <33.963692, 34.934643, 23.668682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361385, 34.977425, 23.665838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074820, 0.644947, -0.760556,
		-0.076764, 0.756706, 0.649233,
		0.994238, 0.106959, -0.007108,
		34.659657, 35.009514, 23.663706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987453, 35.629482, 23.619612>,  <33.963692, 34.934643, 23.668682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987453, 35.629482, 23.619612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328087, 35.454994, 23.503330>,  <34.532467, 35.350300, 23.433561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328087, 35.454994, 23.503330>,  <33.987453, 35.629482, 23.619612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328087, 35.454994, 23.503330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074932, 0.650152, -0.756100,
		0.518830, 0.622102, 0.586348,
		0.851587, -0.436223, -0.290703,
		34.583565, 35.324127, 23.416119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996990, 36.300259, 23.918501>,  <33.987453, 35.629482, 23.619612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996990, 36.300259, 23.918501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629295, 36.457336, 23.929712>,  <33.408676, 36.551582, 23.936440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629295, 36.457336, 23.929712>,  <33.996990, 36.300259, 23.918501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629295, 36.457336, 23.929712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241558, -0.618801, 0.747486,
		0.310881, 0.680348, 0.663686,
		-0.919240, 0.392697, 0.028030,
		33.353523, 36.575146, 23.938122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916706, 36.484886, 24.633644>,  <33.996990, 36.300259, 23.918501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916706, 36.484886, 24.633644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555923, 36.450886, 24.464296>,  <33.339455, 36.430485, 24.362688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555923, 36.450886, 24.464296>,  <33.916706, 36.484886, 24.633644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555923, 36.450886, 24.464296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302252, -0.575941, 0.759563,
		-0.308399, 0.813060, 0.493784,
		-0.901961, -0.085001, -0.423369,
		33.285336, 36.425385, 24.337286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387177, 36.457012, 25.151608>,  <33.916706, 36.484886, 24.633644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387177, 36.457012, 25.151608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180275, 36.295357, 24.849846>,  <33.056133, 36.198364, 24.668789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180275, 36.295357, 24.849846>,  <33.387177, 36.457012, 25.151608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180275, 36.295357, 24.849846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302377, -0.738332, 0.602855,
		-0.800638, 0.539941, 0.259699,
		-0.517250, -0.404141, -0.754402,
		33.025101, 36.174114, 24.623526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896301, 36.197617, 25.490801>,  <33.387177, 36.457012, 25.151608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896301, 36.197617, 25.490801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872128, 35.996647, 25.145798>,  <32.857624, 35.876064, 24.938795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872128, 35.996647, 25.145798>,  <32.896301, 36.197617, 25.490801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872128, 35.996647, 25.145798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318942, -0.809070, 0.493641,
		-0.945845, 0.304924, -0.111347,
		-0.060436, -0.502421, -0.862508,
		32.853996, 35.845921, 24.887045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153847, 35.931908, 25.475857>,  <32.896301, 36.197617, 25.490801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153847, 35.931908, 25.475857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385574, 35.720230, 25.227875>,  <32.524612, 35.593224, 25.079084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385574, 35.720230, 25.227875>,  <32.153847, 35.931908, 25.475857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385574, 35.720230, 25.227875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129899, -0.810807, 0.570717,
		-0.804684, -0.250095, -0.538457,
		0.579319, -0.529192, -0.619956,
		32.559368, 35.561474, 25.041887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746378, 35.400387, 25.362043>,  <32.153847, 35.931908, 25.475857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746378, 35.400387, 25.362043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126518, 35.308315, 25.278284>,  <32.354603, 35.253071, 25.228029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126518, 35.308315, 25.278284>,  <31.746378, 35.400387, 25.362043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126518, 35.308315, 25.278284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079871, -0.830817, 0.550785,
		-0.300753, -0.506714, -0.807953,
		0.950352, -0.230182, -0.209398,
		32.411625, 35.239262, 25.215464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770792, 34.687046, 25.046541>,  <31.746378, 35.400387, 25.362043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770792, 34.687046, 25.046541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145847, 34.727295, 25.179634>,  <32.370880, 34.751446, 25.259491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145847, 34.727295, 25.179634>,  <31.770792, 34.687046, 25.046541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145847, 34.727295, 25.179634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105593, -0.829516, 0.548411,
		0.331190, -0.549344, -0.767160,
		0.937637, 0.100621, 0.332734,
		32.427139, 34.757481, 25.279453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.447224, 41.052361, 23.925095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616783, 40.697033, 23.854435>,  <37.718521, 40.483837, 23.812040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616783, 40.697033, 23.854435>,  <37.447224, 41.052361, 23.925095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616783, 40.697033, 23.854435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303053, -0.322911, 0.896598,
		-0.853503, -0.326534, -0.406089,
		0.423901, -0.888315, -0.176648,
		37.743954, 40.430538, 23.801441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880203, 40.556835, 23.926489>,  <37.447224, 41.052361, 23.925095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880203, 40.556835, 23.926489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212757, 40.346127, 23.997272>,  <37.412289, 40.219700, 24.039743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212757, 40.346127, 23.997272>,  <36.880203, 40.556835, 23.926489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212757, 40.346127, 23.997272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407567, -0.361542, 0.838556,
		-0.377754, -0.769281, -0.515276,
		0.831379, -0.526777, 0.176959,
		37.462170, 40.188095, 24.050362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626091, 39.869244, 24.099697>,  <36.880203, 40.556835, 23.926489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626091, 39.869244, 24.099697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.993423, 39.916275, 24.250875>,  <37.213821, 39.944492, 24.341583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.993423, 39.916275, 24.250875>,  <36.626091, 39.869244, 24.099697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993423, 39.916275, 24.250875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307499, -0.389299, 0.868269,
		0.249222, -0.913577, -0.321351,
		0.918331, 0.117577, 0.377945,
		37.268925, 39.951550, 24.364260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744907, 39.245922, 24.392138>,  <36.626091, 39.869244, 24.099697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744907, 39.245922, 24.392138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.002182, 39.497108, 24.567392>,  <37.156548, 39.647820, 24.672544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.002182, 39.497108, 24.567392>,  <36.744907, 39.245922, 24.392138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002182, 39.497108, 24.567392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390320, -0.223388, 0.893167,
		0.658756, -0.745489, 0.101427,
		0.643188, 0.627968, 0.438137,
		37.195137, 39.685497, 24.698833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111713, 38.922386, 24.923735>,  <36.744907, 39.245922, 24.392138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111713, 38.922386, 24.923735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.175209, 39.304111, 25.024992>,  <37.213306, 39.533146, 25.085747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.175209, 39.304111, 25.024992>,  <37.111713, 38.922386, 24.923735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175209, 39.304111, 25.024992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390959, -0.174682, 0.903680,
		0.906617, -0.242415, 0.345371,
		0.158736, 0.954317, 0.253144,
		37.222828, 39.590408, 25.100935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627712, 38.807064, 25.525808>,  <37.111713, 38.922386, 24.923735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627712, 38.807064, 25.525808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457153, 39.168839, 25.531237>,  <37.354816, 39.385902, 25.534494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457153, 39.168839, 25.531237>,  <37.627712, 38.807064, 25.525808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457153, 39.168839, 25.531237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336361, -0.172471, 0.925805,
		0.839670, 0.390197, 0.377758,
		-0.426398, 0.904434, 0.013572,
		37.329235, 39.440170, 25.535309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869495, 39.065353, 26.151653>,  <37.627712, 38.807064, 25.525808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869495, 39.065353, 26.151653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.536793, 39.246197, 26.022791>,  <37.337173, 39.354702, 25.945473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.536793, 39.246197, 26.022791>,  <37.869495, 39.065353, 26.151653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536793, 39.246197, 26.022791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434697, -0.169470, 0.884488,
		0.345286, 0.875717, 0.337487,
		-0.831755, 0.452106, -0.322156,
		37.287266, 39.381828, 25.926144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705280, 39.527058, 26.692808>,  <37.869495, 39.065353, 26.151653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705280, 39.527058, 26.692808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364651, 39.492428, 26.485992>,  <37.160275, 39.471649, 26.361904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364651, 39.492428, 26.485992>,  <37.705280, 39.527058, 26.692808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364651, 39.492428, 26.485992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515189, -0.044222, 0.855935,
		-0.096967, 0.995264, -0.006945,
		-0.851573, -0.086575, -0.517037,
		37.109180, 39.466454, 26.330881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321323, 40.065971, 26.873919>,  <37.705280, 39.527058, 26.692808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321323, 40.065971, 26.873919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.094959, 39.756954, 26.758730>,  <36.959141, 39.571545, 26.689617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.094959, 39.756954, 26.758730>,  <37.321323, 40.065971, 26.873919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094959, 39.756954, 26.758730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356589, -0.085577, 0.930334,
		-0.743364, 0.629173, -0.227051,
		-0.565910, -0.772540, -0.287971,
		36.925186, 39.525192, 26.672338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796722, 40.136459, 27.304050>,  <37.321323, 40.065971, 26.873919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796722, 40.136459, 27.304050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.715099, 39.777542, 27.147472>,  <36.666126, 39.562191, 27.053526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.715099, 39.777542, 27.147472>,  <36.796722, 40.136459, 27.304050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715099, 39.777542, 27.147472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515775, -0.241318, 0.822035,
		-0.832067, 0.369643, -0.413556,
		-0.204061, -0.897290, -0.391445,
		36.653881, 39.508354, 27.030039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189571, 39.882713, 27.671562>,  <36.796722, 40.136459, 27.304050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189571, 39.882713, 27.671562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.294762, 39.528103, 27.519295>,  <36.357876, 39.315334, 27.427935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.294762, 39.528103, 27.519295>,  <36.189571, 39.882713, 27.671562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294762, 39.528103, 27.519295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289689, -0.448907, 0.845318,
		-0.920283, -0.112026, -0.374871,
		0.262980, -0.886529, -0.380669,
		36.373657, 39.262146, 27.405094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562454, 39.475830, 27.709276>,  <36.189571, 39.882713, 27.671562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562454, 39.475830, 27.709276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893192, 39.251991, 27.686729>,  <36.091633, 39.117687, 27.673203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893192, 39.251991, 27.686729>,  <35.562454, 39.475830, 27.709276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893192, 39.251991, 27.686729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318430, -0.548381, 0.773228,
		-0.463608, -0.621390, -0.631618,
		0.826843, -0.559601, -0.056365,
		36.141247, 39.084110, 27.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134148, 38.923660, 27.425274>,  <35.562454, 39.475830, 27.709276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134148, 38.923660, 27.425274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.749146, 38.972282, 27.328278>,  <34.518143, 39.001453, 27.270081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.749146, 38.972282, 27.328278>,  <35.134148, 38.923660, 27.425274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749146, 38.972282, 27.328278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233151, -0.086143, -0.968617,
		-0.138630, -0.988840, 0.054573,
		-0.962509, 0.121556, -0.242491,
		34.460392, 39.008747, 27.255529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002548, 38.554081, 26.891785>,  <35.134148, 38.923660, 27.425274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002548, 38.554081, 26.891785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.677414, 38.783783, 26.852736>,  <34.482334, 38.921604, 26.829306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.677414, 38.783783, 26.852736>,  <35.002548, 38.554081, 26.891785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677414, 38.783783, 26.852736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123550, 0.006187, -0.992319,
		-0.569242, -0.818652, -0.075978,
		-0.812834, 0.574256, -0.097623,
		34.433563, 38.956059, 26.823448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475346, 38.278450, 26.354666>,  <35.002548, 38.554081, 26.891785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475346, 38.278450, 26.354666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.431175, 38.673000, 26.403429>,  <34.404675, 38.909733, 26.432688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.431175, 38.673000, 26.403429>,  <34.475346, 38.278450, 26.354666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431175, 38.673000, 26.403429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045469, 0.127546, -0.990790,
		-0.992844, -0.103866, -0.058934,
		-0.110427, 0.986379, 0.121911,
		34.398048, 38.968914, 26.440002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040405, 38.494190, 25.841700>,  <34.475346, 38.278450, 26.354666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040405, 38.494190, 25.841700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.190636, 38.853123, 25.934423>,  <34.280773, 39.068481, 25.990057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.190636, 38.853123, 25.934423>,  <34.040405, 38.494190, 25.841700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190636, 38.853123, 25.934423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058586, 0.272606, -0.960340,
		-0.924937, 0.347103, 0.154956,
		0.375579, 0.897332, 0.231808,
		34.303310, 39.122322, 26.003965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564632, 38.986645, 25.640099>,  <34.040405, 38.494190, 25.841700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564632, 38.986645, 25.640099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.915707, 39.177452, 25.658497>,  <34.126350, 39.291939, 25.669537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.915707, 39.177452, 25.658497>,  <33.564632, 38.986645, 25.640099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915707, 39.177452, 25.658497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215439, 0.478473, -0.851264,
		-0.428078, 0.737234, 0.522718,
		0.877687, 0.477021, 0.045995,
		34.179012, 39.320557, 25.672295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383381, 39.592537, 25.401918>,  <33.564632, 38.986645, 25.640099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383381, 39.592537, 25.401918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.782612, 39.604149, 25.379988>,  <34.022148, 39.611115, 25.366829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.782612, 39.604149, 25.379988>,  <33.383381, 39.592537, 25.401918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782612, 39.604149, 25.379988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062012, 0.442748, -0.894499,
		-0.001690, 0.896176, 0.443695,
		0.998074, 0.029026, -0.054825,
		34.082035, 39.612858, 25.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592171, 40.338234, 25.189783>,  <33.383381, 39.592537, 25.401918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592171, 40.338234, 25.189783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.900810, 40.100731, 25.098499>,  <34.085995, 39.958229, 25.043728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.900810, 40.100731, 25.098499>,  <33.592171, 40.338234, 25.189783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900810, 40.100731, 25.098499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057328, 0.422212, -0.904683,
		0.633518, 0.684972, 0.359818,
		0.771601, -0.593760, -0.228211,
		34.132290, 39.922604, 25.030037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070995, 40.799198, 24.984690>,  <33.592171, 40.338234, 25.189783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070995, 40.799198, 24.984690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.189491, 40.449020, 24.831930>,  <34.260590, 40.238914, 24.740274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.189491, 40.449020, 24.831930>,  <34.070995, 40.799198, 24.984690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189491, 40.449020, 24.831930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205739, 0.448948, -0.869550,
		0.932692, 0.179021, 0.313108,
		0.296237, -0.875441, -0.381899,
		34.278362, 40.186390, 24.717360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846966, 40.792942, 24.630396>,  <34.070995, 40.799198, 24.984690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846966, 40.792942, 24.630396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.612583, 40.506615, 24.478470>,  <34.471954, 40.334816, 24.387314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.612583, 40.506615, 24.478470>,  <34.846966, 40.792942, 24.630396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612583, 40.506615, 24.478470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196850, 0.328931, -0.923610,
		0.786072, -0.615958, -0.051829,
		-0.585953, -0.715821, -0.379815,
		34.436798, 40.291870, 24.364525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126583, 40.674610, 23.960827>,  <34.846966, 40.792942, 24.630396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126583, 40.674610, 23.960827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.782803, 40.482197, 23.891602>,  <34.576534, 40.366749, 23.850067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.782803, 40.482197, 23.891602>,  <35.126583, 40.674610, 23.960827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782803, 40.482197, 23.891602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064021, 0.234588, -0.969984,
		0.507195, -0.844733, -0.170821,
		-0.859450, -0.481035, -0.173063,
		34.524967, 40.337887, 23.839684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221340, 40.415810, 23.284809>,  <35.126583, 40.674610, 23.960827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221340, 40.415810, 23.284809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.831184, 40.429924, 23.371866>,  <34.597092, 40.438393, 23.424101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.831184, 40.429924, 23.371866>,  <35.221340, 40.415810, 23.284809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831184, 40.429924, 23.371866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209708, 0.156376, -0.965178,
		-0.068095, -0.987067, -0.145127,
		-0.975390, 0.035290, 0.217644,
		34.538567, 40.440510, 23.437159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840546, 39.986855, 22.793510>,  <35.221340, 40.415810, 23.284809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840546, 39.986855, 22.793510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.565098, 40.231174, 22.949829>,  <34.399830, 40.377766, 23.043621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.565098, 40.231174, 22.949829>,  <34.840546, 39.986855, 22.793510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565098, 40.231174, 22.949829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205026, 0.352939, -0.912906,
		-0.695530, -0.708772, -0.117812,
		-0.688623, 0.610799, 0.390797,
		34.358509, 40.414413, 23.067068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242100, 39.863590, 22.474829>,  <34.840546, 39.986855, 22.793510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242100, 39.863590, 22.474829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187721, 40.236942, 22.607687>,  <34.155094, 40.460953, 22.687401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187721, 40.236942, 22.607687>,  <34.242100, 39.863590, 22.474829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187721, 40.236942, 22.607687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268606, 0.287974, -0.919196,
		-0.953608, -0.214180, 0.211562,
		-0.135949, 0.933380, 0.332145,
		34.146935, 40.516956, 22.707331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635265, 39.307354, 22.739357>,  <34.242100, 39.863590, 22.474829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635265, 39.307354, 22.739357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.301281, 39.283703, 22.520506>,  <34.100891, 39.269512, 22.389196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.301281, 39.283703, 22.520506>,  <34.635265, 39.307354, 22.739357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301281, 39.283703, 22.520506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335048, -0.734090, 0.590639,
		-0.436561, 0.676473, 0.593126,
		-0.834959, -0.059124, -0.547126,
		34.050793, 39.265965, 22.356367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034454, 39.335934, 23.187212>,  <34.635265, 39.307354, 22.739357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034454, 39.335934, 23.187212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975971, 39.112911, 22.860346>,  <33.940880, 38.979099, 22.664227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975971, 39.112911, 22.860346>,  <34.034454, 39.335934, 23.187212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975971, 39.112911, 22.860346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329441, -0.751447, 0.571660,
		-0.932787, 0.352789, -0.073812,
		-0.146209, -0.557554, -0.817163,
		33.932110, 38.945644, 22.615196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361244, 39.065247, 23.223074>,  <34.034454, 39.335934, 23.187212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361244, 39.065247, 23.223074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.552704, 38.823223, 22.968580>,  <33.667580, 38.678009, 22.815884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.552704, 38.823223, 22.968580>,  <33.361244, 39.065247, 23.223074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552704, 38.823223, 22.968580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396467, -0.795498, 0.458254,
		-0.783397, 0.032905, -0.620650,
		0.478647, -0.605062, -0.636237,
		33.696301, 38.641705, 22.777710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816872, 38.818703, 22.895744>,  <33.361244, 39.065247, 23.223074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816872, 38.818703, 22.895744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.142151, 38.586060, 22.904133>,  <33.337318, 38.446472, 22.909166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.142151, 38.586060, 22.904133>,  <32.816872, 38.818703, 22.895744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142151, 38.586060, 22.904133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500005, -0.679748, 0.536598,
		-0.297838, -0.446844, -0.843577,
		0.813196, -0.581612, 0.020969,
		33.386108, 38.411575, 22.910423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579624, 38.052433, 22.621664>,  <32.816872, 38.818703, 22.895744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579624, 38.052433, 22.621664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945835, 38.003578, 22.774971>,  <33.165562, 37.974266, 22.866955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945835, 38.003578, 22.774971>,  <32.579624, 38.052433, 22.621664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945835, 38.003578, 22.774971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259793, -0.906964, 0.331547,
		0.307114, -0.403110, -0.862081,
		0.915526, -0.122140, 0.383266,
		33.220493, 37.966938, 22.889952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935368, 37.395409, 22.437344>,  <32.579624, 38.052433, 22.621664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935368, 37.395409, 22.437344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.102680, 37.475727, 22.791681>,  <33.203068, 37.523918, 23.004284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.102680, 37.475727, 22.791681>,  <32.935368, 37.395409, 22.437344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102680, 37.475727, 22.791681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362595, -0.857268, 0.365535,
		0.832804, -0.474101, -0.285774,
		0.418285, 0.200799, 0.885843,
		33.228165, 37.535965, 23.057434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227993, 36.705551, 22.753227>,  <32.935368, 37.395409, 22.437344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227993, 36.705551, 22.753227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.186779, 36.982414, 23.038971>,  <33.162052, 37.148533, 23.210417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.186779, 36.982414, 23.038971>,  <33.227993, 36.705551, 22.753227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186779, 36.982414, 23.038971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254422, -0.712627, 0.653783,
		0.961589, -0.114387, 0.249524,
		-0.103034, 0.692155, 0.714357,
		33.155869, 37.190060, 23.253279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712688, 36.433224, 23.232754>,  <33.227993, 36.705551, 22.753227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712688, 36.433224, 23.232754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.471146, 36.674286, 23.441429>,  <33.326218, 36.818924, 23.566633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.471146, 36.674286, 23.441429>,  <33.712688, 36.433224, 23.232754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471146, 36.674286, 23.441429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229657, -0.758279, 0.610140,
		0.763290, 0.248630, 0.596299,
		-0.603860, 0.602657, 0.521688,
		33.289989, 36.855083, 23.597935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548576, 36.244186, 23.421928>,  <33.712688, 36.433224, 23.232754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548576, 36.244186, 23.421928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.646786, 35.907139, 23.230217>,  <34.705711, 35.704910, 23.115191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.646786, 35.907139, 23.230217>,  <34.548576, 36.244186, 23.421928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646786, 35.907139, 23.230217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430371, 0.537762, -0.724978,
		0.868620, -0.028271, 0.494671,
		0.245519, -0.842623, -0.479278,
		34.720440, 35.654350, 23.086433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248840, 36.399525, 23.087820>,  <34.548576, 36.244186, 23.421928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248840, 36.399525, 23.087820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.109165, 36.076733, 22.897305>,  <35.025360, 35.883057, 22.782995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.109165, 36.076733, 22.897305>,  <35.248840, 36.399525, 23.087820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109165, 36.076733, 22.897305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331737, 0.368905, -0.868251,
		0.876365, -0.461189, 0.138886,
		-0.349192, -0.806978, -0.476289,
		35.004406, 35.834641, 22.754417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843128, 36.103977, 22.716381>,  <35.248840, 36.399525, 23.087820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843128, 36.103977, 22.716381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.490910, 36.018963, 22.546930>,  <35.279579, 35.967953, 22.445259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.490910, 36.018963, 22.546930>,  <35.843128, 36.103977, 22.716381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490910, 36.018963, 22.546930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381129, 0.213776, -0.899467,
		0.281735, -0.953481, -0.107235,
		-0.880549, -0.212541, -0.423628,
		35.226746, 35.955200, 22.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082897, 35.647129, 22.153244>,  <35.843128, 36.103977, 22.716381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082897, 35.647129, 22.153244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.723366, 35.792042, 22.054565>,  <35.507648, 35.878990, 21.995358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.723366, 35.792042, 22.054565>,  <36.082897, 35.647129, 22.153244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723366, 35.792042, 22.054565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386151, 0.388258, -0.836746,
		-0.207357, -0.847353, -0.488873,
		-0.898828, 0.362283, -0.246698,
		35.453716, 35.900726, 21.980556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086987, 35.576740, 21.410940>,  <36.082897, 35.647129, 22.153244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086987, 35.576740, 21.410940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.781029, 35.818832, 21.499157>,  <35.597454, 35.964088, 21.552088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.781029, 35.818832, 21.499157>,  <36.086987, 35.576740, 21.410940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781029, 35.818832, 21.499157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202606, 0.551038, -0.809511,
		-0.611467, -0.574505, -0.544107,
		-0.764891, 0.605229, 0.220544,
		35.551559, 36.000401, 21.565321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920597, 35.815639, 20.750191>,  <36.086987, 35.576740, 21.410940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920597, 35.815639, 20.750191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719078, 36.077339, 20.975805>,  <35.598167, 36.234360, 21.111174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719078, 36.077339, 20.975805>,  <35.920597, 35.815639, 20.750191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719078, 36.077339, 20.975805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005934, 0.655563, -0.755118,
		-0.863800, -0.377082, -0.334155,
		-0.503801, 0.654253, 0.564037,
		35.567940, 36.273617, 21.145016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390263, 36.118214, 20.324240>,  <35.920597, 35.815639, 20.750191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390263, 36.118214, 20.324240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450264, 36.371845, 20.627672>,  <35.486263, 36.524025, 20.809732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.450264, 36.371845, 20.627672>,  <35.390263, 36.118214, 20.324240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450264, 36.371845, 20.627672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153501, 0.743023, -0.651425,
		-0.976697, 0.214160, 0.014125,
		0.150004, 0.634076, 0.758582,
		35.495266, 36.562069, 20.855247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868366, 36.773937, 20.418484>,  <35.390263, 36.118214, 20.324240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868366, 36.773937, 20.418484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.209030, 36.888863, 20.593815>,  <35.413429, 36.957817, 20.699013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.209030, 36.888863, 20.593815>,  <34.868366, 36.773937, 20.418484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209030, 36.888863, 20.593815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008835, 0.844100, -0.536114,
		-0.524024, 0.452713, 0.721422,
		0.851658, 0.287310, 0.438328,
		35.464527, 36.975056, 20.725313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824837, 37.512409, 20.353168>,  <34.868366, 36.773937, 20.418484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824837, 37.512409, 20.353168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207630, 37.435768, 20.440317>,  <35.437305, 37.389782, 20.492605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207630, 37.435768, 20.440317>,  <34.824837, 37.512409, 20.353168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207630, 37.435768, 20.440317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273505, 0.846336, -0.457068,
		-0.096816, 0.496996, 0.862335,
		0.956986, -0.191601, 0.217869,
		35.494724, 37.378288, 20.505678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.688755, 29.699930, 34.448460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050682, 29.861456, 34.502472>,  <35.267838, 29.958372, 34.534882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050682, 29.861456, 34.502472>,  <34.688755, 29.699930, 34.448460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050682, 29.861456, 34.502472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232718, -0.203426, -0.951031,
		-0.356570, 0.891937, -0.278039,
		0.904820, 0.403814, 0.135034,
		35.322128, 29.982599, 34.542984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809410, 30.271769, 33.964607>,  <34.688755, 29.699930, 34.448460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809410, 30.271769, 33.964607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179466, 30.140158, 34.040348>,  <35.401501, 30.061192, 34.085793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179466, 30.140158, 34.040348>,  <34.809410, 30.271769, 33.964607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179466, 30.140158, 34.040348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191994, -0.024764, -0.981084,
		0.327494, 0.943995, 0.040262,
		0.925141, -0.329029, 0.189351,
		35.457008, 30.041449, 34.097153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292339, 30.752932, 33.724598>,  <34.809410, 30.271769, 33.964607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292339, 30.752932, 33.724598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491409, 30.406128, 33.714657>,  <35.610851, 30.198046, 33.708694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491409, 30.406128, 33.714657>,  <35.292339, 30.752932, 33.724598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491409, 30.406128, 33.714657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317835, 0.208947, -0.924836,
		0.807033, 0.452369, 0.379554,
		0.497673, -0.867009, -0.024849,
		35.640713, 30.146025, 33.707203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968155, 30.862392, 33.475239>,  <35.292339, 30.752932, 33.724598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968155, 30.862392, 33.475239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879391, 30.480854, 33.394310>,  <35.826130, 30.251932, 33.345753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879391, 30.480854, 33.394310>,  <35.968155, 30.862392, 33.475239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879391, 30.480854, 33.394310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285656, 0.134794, -0.948805,
		0.932285, -0.268348, 0.242559,
		-0.221914, -0.953845, -0.202322,
		35.812817, 30.194700, 33.333614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486214, 30.704453, 32.974293>,  <35.968155, 30.862392, 33.475239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486214, 30.704453, 32.974293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219059, 30.406881, 32.965416>,  <36.058765, 30.228338, 32.960091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219059, 30.406881, 32.965416>,  <36.486214, 30.704453, 32.974293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219059, 30.406881, 32.965416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002140, 0.031741, -0.999494,
		0.744256, -0.667505, -0.022792,
		-0.667891, -0.743928, -0.022195,
		36.018692, 30.183702, 32.958759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602856, 30.317631, 32.417839>,  <36.486214, 30.704453, 32.974293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602856, 30.317631, 32.417839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231205, 30.194864, 32.500320>,  <36.008213, 30.121204, 32.549809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231205, 30.194864, 32.500320>,  <36.602856, 30.317631, 32.417839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231205, 30.194864, 32.500320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183342, -0.101884, -0.977755,
		0.321100, -0.946267, 0.038392,
		-0.929129, -0.306918, 0.206205,
		35.952465, 30.102789, 32.562183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506371, 29.856485, 31.901310>,  <36.602856, 30.317631, 32.417839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506371, 29.856485, 31.901310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.144611, 29.958769, 32.037945>,  <35.927555, 30.020138, 32.119926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.144611, 29.958769, 32.037945>,  <36.506371, 29.856485, 31.901310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144611, 29.958769, 32.037945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334050, 0.073770, -0.939664,
		-0.265478, -0.963935, 0.018702,
		-0.904396, 0.255707, 0.341587,
		35.873291, 30.035480, 32.140423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034203, 29.515448, 31.462784>,  <36.506371, 29.856485, 31.901310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034203, 29.515448, 31.462784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826473, 29.808178, 31.639297>,  <35.701836, 29.983816, 31.745207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826473, 29.808178, 31.639297>,  <36.034203, 29.515448, 31.462784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826473, 29.808178, 31.639297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498784, 0.159725, -0.851882,
		-0.693912, -0.662511, 0.282073,
		-0.519327, 0.731825, 0.441285,
		35.670673, 30.027725, 31.771683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368435, 29.521563, 31.176474>,  <36.034203, 29.515448, 31.462784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368435, 29.521563, 31.176474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386917, 29.896223, 31.315353>,  <35.398006, 30.121019, 31.398682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386917, 29.896223, 31.315353>,  <35.368435, 29.521563, 31.176474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386917, 29.896223, 31.315353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478351, 0.325875, -0.815467,
		-0.876953, -0.128408, 0.463104,
		0.046201, 0.936652, 0.347201,
		35.400776, 30.177219, 31.419514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650787, 29.903015, 31.103174>,  <35.368435, 29.521563, 31.176474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650787, 29.903015, 31.103174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932705, 30.186335, 31.119083>,  <35.101856, 30.356327, 31.128630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932705, 30.186335, 31.119083>,  <34.650787, 29.903015, 31.103174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932705, 30.186335, 31.119083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364639, 0.409783, -0.836131,
		-0.608531, 0.574793, 0.547085,
		0.704789, 0.708301, 0.039774,
		35.144142, 30.398825, 31.131016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313004, 30.469254, 30.930511>,  <34.650787, 29.903015, 31.103174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313004, 30.469254, 30.930511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691154, 30.591434, 30.884962>,  <34.918045, 30.664743, 30.857634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691154, 30.591434, 30.884962>,  <34.313004, 30.469254, 30.930511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691154, 30.591434, 30.884962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272783, 0.549982, -0.789373,
		-0.178488, 0.777315, 0.603261,
		0.945374, 0.305453, -0.113873,
		34.974766, 30.683071, 30.850800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246284, 31.167879, 30.737762>,  <34.313004, 30.469254, 30.930511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246284, 31.167879, 30.737762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612797, 31.052837, 30.626249>,  <34.832703, 30.983812, 30.559341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612797, 31.052837, 30.626249>,  <34.246284, 31.167879, 30.737762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612797, 31.052837, 30.626249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073778, 0.562915, -0.823215,
		0.393688, 0.774862, 0.494568,
		0.916279, -0.287602, -0.278781,
		34.887680, 30.966557, 30.542616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926586, 31.942293, 30.826279>,  <34.246284, 31.167879, 30.737762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926586, 31.942293, 30.826279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535522, 31.970976, 30.747248>,  <33.300884, 31.988186, 30.699829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535522, 31.970976, 30.747248>,  <33.926586, 31.942293, 30.826279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535522, 31.970976, 30.747248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208731, -0.220706, 0.952743,
		0.024713, 0.972701, 0.230743,
		-0.977661, 0.071709, -0.197579,
		33.242226, 31.992489, 30.687975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769279, 32.316738, 31.342447>,  <33.926586, 31.942293, 30.826279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769279, 32.316738, 31.342447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416058, 32.167034, 31.229212>,  <33.204124, 32.077213, 31.161270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416058, 32.167034, 31.229212>,  <33.769279, 32.316738, 31.342447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416058, 32.167034, 31.229212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216189, -0.210968, 0.953286,
		-0.416499, 0.903007, 0.105387,
		-0.883058, -0.374260, -0.283088,
		33.151142, 32.054756, 31.144285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221020, 32.620369, 31.749218>,  <33.769279, 32.316738, 31.342447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221020, 32.620369, 31.749218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058643, 32.272991, 31.635363>,  <32.961216, 32.064564, 31.567049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058643, 32.272991, 31.635363>,  <33.221020, 32.620369, 31.749218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058643, 32.272991, 31.635363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411628, -0.104327, 0.905361,
		-0.815950, 0.484688, -0.315124,
		-0.405942, -0.868443, -0.284637,
		32.936859, 32.012459, 31.549973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492935, 32.638504, 32.141911>,  <33.221020, 32.620369, 31.749218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492935, 32.638504, 32.141911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582294, 32.269264, 32.016705>,  <32.635910, 32.047722, 31.941580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582294, 32.269264, 32.016705>,  <32.492935, 32.638504, 32.141911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582294, 32.269264, 32.016705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385914, -0.378655, 0.841243,
		-0.895078, -0.067132, -0.440827,
		0.223395, -0.923100, -0.313018,
		32.649315, 31.992334, 31.922800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852226, 32.332283, 32.172764>,  <32.492935, 32.638504, 32.141911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852226, 32.332283, 32.172764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144573, 32.059425, 32.181858>,  <32.319981, 31.895712, 32.187317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144573, 32.059425, 32.181858>,  <31.852226, 32.332283, 32.172764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144573, 32.059425, 32.181858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292057, -0.282463, 0.913738,
		-0.616875, -0.674463, -0.405667,
		0.730868, -0.682140, 0.022738,
		32.363834, 31.854784, 32.188679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531912, 31.615726, 32.309551>,  <31.852226, 32.332283, 32.172764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531912, 31.615726, 32.309551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919064, 31.620144, 32.410023>,  <32.151356, 31.622793, 32.470306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919064, 31.620144, 32.410023>,  <31.531912, 31.615726, 32.309551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919064, 31.620144, 32.410023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226678, -0.393879, 0.890773,
		0.108771, -0.919096, -0.378724,
		0.967877, 0.011042, 0.251181,
		32.209427, 31.623457, 32.485378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613825, 31.032007, 32.819584>,  <31.531912, 31.615726, 32.309551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613825, 31.032007, 32.819584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951090, 31.239962, 32.874416>,  <32.153450, 31.364735, 32.907318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951090, 31.239962, 32.874416>,  <31.613825, 31.032007, 32.819584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951090, 31.239962, 32.874416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046153, -0.324011, 0.944927,
		0.535673, -0.790401, -0.297188,
		0.843163, 0.519888, 0.137085,
		32.204041, 31.395927, 32.915543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206852, 30.549107, 33.123413>,  <31.613825, 31.032007, 32.819584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206852, 30.549107, 33.123413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275848, 30.932112, 33.215862>,  <32.317245, 31.161915, 33.271332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275848, 30.932112, 33.215862>,  <32.206852, 30.549107, 33.123413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275848, 30.932112, 33.215862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086351, -0.248440, 0.964791,
		0.981219, -0.146460, -0.125536,
		0.172492, 0.957511, 0.231127,
		32.327595, 31.219364, 33.285202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426861, 30.475195, 33.813316>,  <32.206852, 30.549107, 33.123413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426861, 30.475195, 33.813316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395828, 30.872786, 33.782349>,  <32.377209, 31.111340, 33.763767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395828, 30.872786, 33.782349>,  <32.426861, 30.475195, 33.813316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395828, 30.872786, 33.782349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029554, 0.075327, 0.996721,
		0.996548, 0.079613, 0.023532,
		-0.077580, 0.993976, -0.077420,
		32.372555, 31.170979, 33.759121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810993, 30.802059, 34.356861>,  <32.426861, 30.475195, 33.813316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810993, 30.802059, 34.356861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530087, 31.064150, 34.245510>,  <32.361542, 31.221405, 34.178699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530087, 31.064150, 34.245510>,  <32.810993, 30.802059, 34.356861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530087, 31.064150, 34.245510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227257, 0.164233, 0.959886,
		0.674662, 0.737363, 0.033569,
		-0.702271, 0.655228, -0.278373,
		32.319405, 31.260717, 34.161999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894386, 31.406694, 34.853313>,  <32.810993, 30.802059, 34.356861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894386, 31.406694, 34.853313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539318, 31.491112, 34.689610>,  <32.326275, 31.541761, 34.591385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539318, 31.491112, 34.689610>,  <32.894386, 31.406694, 34.853313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539318, 31.491112, 34.689610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304155, 0.398579, 0.865231,
		0.345726, 0.892522, -0.289618,
		-0.887673, 0.211044, -0.409264,
		32.273018, 31.554424, 34.566830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630173, 32.051582, 35.196312>,  <32.894386, 31.406694, 34.853313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630173, 32.051582, 35.196312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291641, 31.899937, 35.046650>,  <32.088520, 31.808949, 34.956852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291641, 31.899937, 35.046650>,  <32.630173, 32.051582, 35.196312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291641, 31.899937, 35.046650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472561, 0.210285, 0.855843,
		-0.245784, 0.901139, -0.357126,
		-0.846331, -0.379116, -0.374158,
		32.037743, 31.786201, 34.934402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115856, 32.543034, 35.273811>,  <32.630173, 32.051582, 35.196312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115856, 32.543034, 35.273811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895103, 32.212730, 35.227261>,  <31.762651, 32.014549, 35.199329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895103, 32.212730, 35.227261>,  <32.115856, 32.543034, 35.273811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895103, 32.212730, 35.227261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580731, 0.280411, 0.764278,
		-0.598476, 0.489379, -0.634299,
		-0.551886, -0.825759, -0.116379,
		31.729538, 31.965002, 35.192348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344984, 32.796253, 35.250492>,  <32.115856, 32.543034, 35.273811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344984, 32.796253, 35.250492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356089, 32.410091, 35.354202>,  <31.362751, 32.178394, 35.416428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356089, 32.410091, 35.354202>,  <31.344984, 32.796253, 35.250492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356089, 32.410091, 35.354202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496425, 0.211817, 0.841841,
		-0.867636, -0.152085, -0.473370,
		0.027763, -0.965403, 0.259279,
		31.364418, 32.120472, 35.431988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887089, 32.957111, 35.717018>,  <31.344984, 32.796253, 35.250492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887089, 32.957111, 35.717018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657831, 33.269062, 35.817650>,  <30.520277, 33.456234, 35.878029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657831, 33.269062, 35.817650>,  <30.887089, 32.957111, 35.717018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657831, 33.269062, 35.817650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450754, -0.556432, 0.698000,
		0.684343, 0.286655, 0.670451,
		-0.573146, 0.779879, 0.251579,
		30.485888, 33.503025, 35.893124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279116, 33.457085, 35.874466>,  <30.887089, 32.957111, 35.717018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279116, 33.457085, 35.874466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581017, 33.656559, 36.044952>,  <31.762157, 33.776245, 36.147243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581017, 33.656559, 36.044952>,  <31.279116, 33.457085, 35.874466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581017, 33.656559, 36.044952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160192, 0.489932, -0.856916,
		-0.636151, 0.715035, 0.289891,
		0.754752, 0.498690, 0.426213,
		31.807442, 33.806168, 36.172817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109314, 34.237030, 35.820091>,  <31.279116, 33.457085, 35.874466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109314, 34.237030, 35.820091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497843, 34.143745, 35.838604>,  <31.730961, 34.087772, 35.849712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497843, 34.143745, 35.838604>,  <31.109314, 34.237030, 35.820091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497843, 34.143745, 35.838604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188948, 0.638965, -0.745669,
		0.144325, 0.733031, 0.664707,
		0.971323, -0.233214, 0.046286,
		31.789240, 34.073780, 35.852489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404577, 34.941010, 35.773354>,  <31.109314, 34.237030, 35.820091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404577, 34.941010, 35.773354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701370, 34.681908, 35.704216>,  <31.879446, 34.526447, 35.662735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701370, 34.681908, 35.704216>,  <31.404577, 34.941010, 35.773354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701370, 34.681908, 35.704216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421132, 0.650925, -0.631620,
		0.521642, 0.395862, 0.755766,
		0.741982, -0.647757, -0.172839,
		31.923965, 34.487579, 35.652363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919767, 35.363411, 35.864708>,  <31.404577, 34.941010, 35.773354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919767, 35.363411, 35.864708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030830, 35.058170, 35.631271>,  <32.097469, 34.875027, 35.491207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030830, 35.058170, 35.631271>,  <31.919767, 35.363411, 35.864708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030830, 35.058170, 35.631271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331800, 0.646274, -0.687196,
		0.901562, -0.002831, 0.432641,
		0.277659, -0.763100, -0.583596,
		32.114128, 34.829239, 35.456192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593761, 35.561005, 35.702129>,  <31.919767, 35.363411, 35.864708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593761, 35.561005, 35.702129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439896, 35.303459, 35.437561>,  <32.347576, 35.148933, 35.278820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439896, 35.303459, 35.437561>,  <32.593761, 35.561005, 35.702129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439896, 35.303459, 35.437561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311074, 0.584215, -0.749618,
		0.869061, -0.494101, -0.024438,
		-0.384664, -0.643861, -0.661420,
		32.324497, 35.110302, 35.239136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154655, 35.474907, 35.294434>,  <32.593761, 35.561005, 35.702129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154655, 35.474907, 35.294434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831123, 35.350079, 35.095074>,  <32.637005, 35.275181, 34.975456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831123, 35.350079, 35.095074>,  <33.154655, 35.474907, 35.294434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831123, 35.350079, 35.095074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309313, 0.495056, -0.811939,
		0.500154, -0.810870, -0.303868,
		-0.808808, -0.312105, -0.498417,
		32.588474, 35.256458, 34.945553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431194, 35.223980, 34.704922>,  <33.154655, 35.474907, 35.294434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431194, 35.223980, 34.704922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.043236, 35.250172, 34.611095>,  <32.810463, 35.265884, 34.554798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.043236, 35.250172, 34.611095>,  <33.431194, 35.223980, 34.704922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043236, 35.250172, 34.611095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242104, 0.363412, -0.899621,
		0.026341, -0.929325, -0.368322,
		-0.969893, 0.065475, -0.234566,
		32.752270, 35.269814, 34.540726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441971, 35.087635, 34.068329>,  <33.431194, 35.223980, 34.704922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441971, 35.087635, 34.068329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081947, 35.256817, 34.110302>,  <32.865932, 35.358326, 34.135487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081947, 35.256817, 34.110302>,  <33.441971, 35.087635, 34.068329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081947, 35.256817, 34.110302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061156, 0.361010, -0.930555,
		-0.431465, -0.831132, -0.350795,
		-0.900055, 0.422955, 0.104934,
		32.811932, 35.383701, 34.141781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080589, 34.982868, 33.431091>,  <33.441971, 35.087635, 34.068329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080589, 34.982868, 33.431091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943756, 35.317677, 33.601913>,  <32.861656, 35.518562, 33.704407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943756, 35.317677, 33.601913>,  <33.080589, 34.982868, 33.431091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943756, 35.317677, 33.601913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101479, 0.484724, -0.868760,
		-0.934175, -0.253850, -0.250755,
		-0.342082, 0.837020, 0.427057,
		32.841133, 35.568783, 33.730030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674881, 35.215870, 32.915173>,  <33.080589, 34.982868, 33.431091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674881, 35.215870, 32.915173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721931, 35.537731, 33.147964>,  <32.750160, 35.730846, 33.287640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721931, 35.537731, 33.147964>,  <32.674881, 35.215870, 32.915173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721931, 35.537731, 33.147964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009041, 0.585157, -0.810870,
		-0.993017, 0.100639, 0.061554,
		0.117624, 0.804651, 0.581980,
		32.757217, 35.779125, 33.322559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148800, 35.633427, 32.669453>,  <32.674881, 35.215870, 32.915173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148800, 35.633427, 32.669453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432663, 35.848675, 32.851357>,  <32.602982, 35.977825, 32.960499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432663, 35.848675, 32.851357>,  <32.148800, 35.633427, 32.669453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432663, 35.848675, 32.851357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113613, 0.549615, -0.827657,
		-0.695321, 0.639023, 0.328903,
		0.709662, 0.538120, 0.454760,
		32.645561, 36.010109, 32.987785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000542, 36.380699, 32.663105>,  <32.148800, 35.633427, 32.669453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000542, 36.380699, 32.663105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396805, 36.377354, 32.717564>,  <32.634563, 36.375347, 32.750240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396805, 36.377354, 32.717564>,  <32.000542, 36.380699, 32.663105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396805, 36.377354, 32.717564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097194, 0.743616, -0.661505,
		-0.095707, 0.668555, 0.737478,
		0.990653, -0.008367, 0.136149,
		32.694000, 36.374844, 32.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097866, 37.057838, 32.671993>,  <32.000542, 36.380699, 32.663105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097866, 37.057838, 32.671993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468929, 36.919979, 32.614498>,  <32.691566, 36.837265, 32.580002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468929, 36.919979, 32.614498>,  <32.097866, 37.057838, 32.671993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468929, 36.919979, 32.614498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149806, 0.696065, -0.702177,
		0.342053, 0.629851, 0.697343,
		0.927663, -0.344648, -0.143736,
		32.747227, 36.816586, 32.571377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416939, 37.658268, 32.544521>,  <32.097866, 37.057838, 32.671993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416939, 37.658268, 32.544521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664761, 37.373253, 32.412800>,  <32.813454, 37.202244, 32.333767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664761, 37.373253, 32.412800>,  <32.416939, 37.658268, 32.544521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664761, 37.373253, 32.412800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324742, 0.614609, -0.718887,
		0.714625, 0.338454, 0.612176,
		0.619559, -0.712534, -0.329304,
		32.850628, 37.159492, 32.314007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137329, 37.980614, 32.439274>,  <32.416939, 37.658268, 32.544521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137329, 37.980614, 32.439274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115837, 37.650192, 32.214863>,  <33.102943, 37.451939, 32.080215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115837, 37.650192, 32.214863>,  <33.137329, 37.980614, 32.439274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115837, 37.650192, 32.214863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296141, 0.523377, -0.798985,
		0.953632, -0.209071, 0.216507,
		-0.053729, -0.826054, -0.561024,
		33.099720, 37.402374, 32.046555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764076, 37.947781, 32.132671>,  <33.137329, 37.980614, 32.439274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764076, 37.947781, 32.132671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531013, 37.720421, 31.900316>,  <33.391174, 37.584007, 31.760902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531013, 37.720421, 31.900316>,  <33.764076, 37.947781, 32.132671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531013, 37.720421, 31.900316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380520, 0.440770, -0.812973,
		0.718130, -0.694727, -0.040532,
		-0.582660, -0.568397, -0.580888,
		33.356216, 37.549900, 31.726049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155075, 37.958443, 31.521353>,  <33.764076, 37.947781, 32.132671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155075, 37.958443, 31.521353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810253, 37.798153, 31.397234>,  <33.603359, 37.701981, 31.322762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810253, 37.798153, 31.397234>,  <34.155075, 37.958443, 31.521353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810253, 37.798153, 31.397234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143512, 0.394189, -0.907755,
		0.486074, -0.827065, -0.282303,
		-0.862053, -0.400723, -0.310299,
		33.551636, 37.677937, 31.304144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302288, 37.544647, 30.963518>,  <34.155075, 37.958443, 31.521353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302288, 37.544647, 30.963518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916187, 37.636353, 30.913359>,  <33.684525, 37.691376, 30.883263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916187, 37.636353, 30.913359>,  <34.302288, 37.544647, 30.963518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916187, 37.636353, 30.913359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173723, 0.204518, -0.963324,
		-0.195206, -0.951636, -0.237239,
		-0.965254, 0.229261, -0.125398,
		33.626610, 37.705132, 30.875740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108124, 37.285568, 30.330208>,  <34.302288, 37.544647, 30.963518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108124, 37.285568, 30.330208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814095, 37.548882, 30.395109>,  <33.637676, 37.706871, 30.434050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814095, 37.548882, 30.395109>,  <34.108124, 37.285568, 30.330208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814095, 37.548882, 30.395109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037397, 0.278318, -0.959761,
		-0.676954, -0.699428, -0.229203,
		-0.735075, 0.658285, 0.162252,
		33.593571, 37.746368, 30.443785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682640, 37.310307, 29.722321>,  <34.108124, 37.285568, 30.330208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682640, 37.310307, 29.722321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582939, 37.656635, 29.895857>,  <33.523117, 37.864433, 29.999979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582939, 37.656635, 29.895857>,  <33.682640, 37.310307, 29.722321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582939, 37.656635, 29.895857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042006, 0.457225, -0.888358,
		-0.967527, -0.203203, -0.150335,
		-0.249254, 0.865825, 0.433842,
		33.508163, 37.916382, 30.026009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022026, 37.541813, 29.409248>,  <33.682640, 37.310307, 29.722321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022026, 37.541813, 29.409248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177177, 37.875652, 29.565712>,  <33.270267, 38.075954, 29.659590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177177, 37.875652, 29.565712>,  <33.022026, 37.541813, 29.409248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177177, 37.875652, 29.565712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135019, 0.368356, -0.919828,
		-0.911769, 0.409592, 0.030189,
		0.387874, 0.834595, 0.391158,
		33.293541, 38.126030, 29.683060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719334, 38.070190, 29.089708>,  <33.022026, 37.541813, 29.409248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719334, 38.070190, 29.089708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040928, 38.259651, 29.233524>,  <33.233883, 38.373325, 29.319815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040928, 38.259651, 29.233524>,  <32.719334, 38.070190, 29.089708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040928, 38.259651, 29.233524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083003, 0.509320, -0.856565,
		-0.588832, 0.718506, 0.370170,
		0.803982, 0.473648, 0.359542,
		33.282124, 38.401745, 29.341387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664635, 38.850605, 28.720884>,  <32.719334, 38.070190, 29.089708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664635, 38.850605, 28.720884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036282, 38.786018, 28.853956>,  <33.259270, 38.747265, 28.933800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036282, 38.786018, 28.853956>,  <32.664635, 38.850605, 28.720884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036282, 38.786018, 28.853956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359712, 0.603275, -0.711805,
		-0.085765, 0.781018, 0.618592,
		0.929113, -0.161467, 0.332682,
		33.315014, 38.737579, 28.953760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051113, 39.460007, 28.628881>,  <32.664635, 38.850605, 28.720884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051113, 39.460007, 28.628881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352825, 39.202892, 28.682377>,  <33.533852, 39.048622, 28.714474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352825, 39.202892, 28.682377>,  <33.051113, 39.460007, 28.628881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352825, 39.202892, 28.682377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392978, 0.278821, -0.876258,
		0.525959, 0.713499, 0.462910,
		0.754278, -0.642789, 0.133741,
		33.579109, 39.010056, 28.722500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642963, 39.781239, 28.369642>,  <33.051113, 39.460007, 28.628881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642963, 39.781239, 28.369642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774330, 39.403957, 28.389709>,  <33.853149, 39.177589, 28.401751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774330, 39.403957, 28.389709>,  <33.642963, 39.781239, 28.369642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774330, 39.403957, 28.389709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521855, 0.136923, -0.841974,
		0.787279, 0.302701, 0.537181,
		0.328419, -0.943199, 0.050170,
		33.872856, 39.120998, 28.404760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256931, 39.870113, 28.159958>,  <33.642963, 39.781239, 28.369642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256931, 39.870113, 28.159958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155952, 39.489391, 28.090292>,  <34.095367, 39.260956, 28.048492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155952, 39.489391, 28.090292>,  <34.256931, 39.870113, 28.159958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155952, 39.489391, 28.090292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406736, 0.058936, -0.911643,
		0.877974, -0.300977, 0.372257,
		-0.252444, -0.951809, -0.174163,
		34.080219, 39.203850, 28.038044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897346, 39.422459, 27.981602>,  <34.256931, 39.870113, 28.159958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897346, 39.422459, 27.981602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562546, 39.276291, 27.818680>,  <34.361664, 39.188591, 27.720926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562546, 39.276291, 27.818680>,  <34.897346, 39.422459, 27.981602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562546, 39.276291, 27.818680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452362, -0.043251, -0.890785,
		0.307890, -0.929839, 0.201501,
		-0.837002, -0.365415, -0.407307,
		34.311443, 39.166668, 27.696487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359795, 38.887745, 28.095276>,  <34.897346, 39.422459, 27.981602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359795, 38.887745, 28.095276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751850, 38.814548, 28.064682>,  <35.987083, 38.770630, 28.046326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751850, 38.814548, 28.064682>,  <35.359795, 38.887745, 28.095276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751850, 38.814548, 28.064682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070763, -0.682922, 0.727056,
		-0.185275, -0.707201, -0.682305,
		0.980136, -0.182987, -0.076485,
		36.045891, 38.759651, 28.041737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483467, 38.222412, 28.170578>,  <35.359795, 38.887745, 28.095276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483467, 38.222412, 28.170578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848701, 38.361969, 28.255013>,  <36.067841, 38.445702, 28.305674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848701, 38.361969, 28.255013>,  <35.483467, 38.222412, 28.170578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848701, 38.361969, 28.255013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033585, -0.580231, 0.813759,
		0.406391, -0.735939, -0.541517,
		0.913082, 0.348891, 0.211084,
		36.122627, 38.466637, 28.318338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857643, 37.599834, 28.284605>,  <35.483467, 38.222412, 28.170578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857643, 37.599834, 28.284605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067883, 37.904442, 28.436308>,  <36.194027, 38.087208, 28.527328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067883, 37.904442, 28.436308>,  <35.857643, 37.599834, 28.284605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067883, 37.904442, 28.436308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068216, -0.482089, 0.873462,
		0.847993, -0.433220, -0.305334,
		0.525600, 0.761518, 0.379256,
		36.225563, 38.132896, 28.550085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479019, 37.262012, 28.722649>,  <35.857643, 37.599834, 28.284605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479019, 37.262012, 28.722649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382851, 37.627552, 28.853539>,  <36.325150, 37.846878, 28.932072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382851, 37.627552, 28.853539>,  <36.479019, 37.262012, 28.722649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382851, 37.627552, 28.853539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050312, -0.348390, 0.935999,
		0.969364, 0.208570, 0.129738,
		-0.240421, 0.913851, 0.327223,
		36.310726, 37.901707, 28.951706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021000, 37.513763, 29.224737>,  <36.479019, 37.262012, 28.722649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021000, 37.513763, 29.224737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659958, 37.680710, 29.266916>,  <36.443333, 37.780876, 29.292223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659958, 37.680710, 29.266916>,  <37.021000, 37.513763, 29.224737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659958, 37.680710, 29.266916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079550, -0.402449, 0.911979,
		0.423062, 0.814766, 0.396453,
		-0.902602, 0.417362, 0.105447,
		36.389179, 37.805920, 29.298550>
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
