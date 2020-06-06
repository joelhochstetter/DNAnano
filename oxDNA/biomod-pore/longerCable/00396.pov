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
	<24.477531, 35.035995, 34.852554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116417, 34.925228, 34.984184>,  <23.899748, 34.858768, 35.063164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116417, 34.925228, 34.984184>,  <24.477531, 35.035995, 34.852554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116417, 34.925228, 34.984184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117670, -0.894975, -0.430318,
		0.413678, -0.349763, 0.840557,
		-0.902787, -0.276922, 0.329075,
		23.845581, 34.842152, 35.082905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527758, 34.340935, 35.059772>,  <24.477531, 35.035995, 34.852554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527758, 34.340935, 35.059772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802553, 34.462872, 35.323627>,  <24.967430, 34.536034, 35.481941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802553, 34.462872, 35.323627>,  <24.527758, 34.340935, 35.059772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802553, 34.462872, 35.323627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122268, -0.846320, 0.518452,
		0.716307, -0.436823, -0.544141,
		0.686990, 0.304840, 0.659635,
		25.008650, 34.554325, 35.521519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016037, 33.794460, 35.159203>,  <24.527758, 34.340935, 35.059772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016037, 33.794460, 35.159203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010736, 34.008827, 35.496868>,  <25.007557, 34.137447, 35.699471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010736, 34.008827, 35.496868>,  <25.016037, 33.794460, 35.159203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010736, 34.008827, 35.496868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028619, -0.843694, 0.536062,
		0.999503, 0.031262, -0.004159,
		-0.013249, 0.535914, 0.844169,
		25.006762, 34.169601, 35.750118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509245, 33.513084, 35.686859>,  <25.016037, 33.794460, 35.159203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509245, 33.513084, 35.686859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260506, 33.724854, 35.917690>,  <25.111263, 33.851913, 36.056190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260506, 33.724854, 35.917690>,  <25.509245, 33.513084, 35.686859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260506, 33.724854, 35.917690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105412, -0.786760, 0.608191,
		0.776012, 0.317371, 0.545052,
		-0.621847, 0.529419, 0.577080,
		25.073952, 33.883678, 36.090813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803360, 33.495476, 36.337585>,  <25.509245, 33.513084, 35.686859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803360, 33.495476, 36.337585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412083, 33.567051, 36.379761>,  <25.177317, 33.609997, 36.405064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412083, 33.567051, 36.379761>,  <25.803360, 33.495476, 36.337585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412083, 33.567051, 36.379761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090712, -0.824771, 0.558144,
		0.186833, 0.536409, 0.823018,
		-0.978195, 0.178937, 0.105435,
		25.118624, 33.620731, 36.411392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688433, 33.523132, 37.056969>,  <25.803360, 33.495476, 36.337585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688433, 33.523132, 37.056969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340679, 33.441261, 36.877068>,  <25.132027, 33.392139, 36.769127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340679, 33.441261, 36.877068>,  <25.688433, 33.523132, 37.056969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340679, 33.441261, 36.877068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096142, -0.822724, 0.560251,
		-0.484697, 0.530313, 0.695584,
		-0.869382, -0.204677, -0.449757,
		25.079865, 33.379860, 36.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247095, 33.415401, 37.636585>,  <25.688433, 33.523132, 37.056969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247095, 33.415401, 37.636585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077663, 33.247662, 37.315403>,  <24.976006, 33.147018, 37.122696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077663, 33.247662, 37.315403>,  <25.247095, 33.415401, 37.636585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077663, 33.247662, 37.315403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033930, -0.878430, 0.476665,
		-0.905224, 0.229149, 0.357855,
		-0.423578, -0.419347, -0.802951,
		24.950590, 33.121857, 37.074516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613394, 33.015244, 37.922043>,  <25.247095, 33.415401, 37.636585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613394, 33.015244, 37.922043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.791389, 32.896713, 37.584007>,  <24.898188, 32.825596, 37.381187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.791389, 32.896713, 37.584007>,  <24.613394, 33.015244, 37.922043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.791389, 32.896713, 37.584007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158887, -0.902574, 0.400144,
		-0.881327, -0.312334, -0.354556,
		0.444991, -0.296323, -0.845089,
		24.924887, 32.807816, 37.330479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433712, 32.356503, 37.854473>,  <24.613394, 33.015244, 37.922043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433712, 32.356503, 37.854473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743286, 32.351688, 37.601212>,  <24.929031, 32.348801, 37.449257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743286, 32.351688, 37.601212>,  <24.433712, 32.356503, 37.854473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743286, 32.351688, 37.601212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322082, -0.853365, 0.409916,
		-0.545241, -0.521175, -0.656574,
		0.773935, -0.012032, -0.633151,
		24.975466, 32.348080, 37.411266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480921, 31.774857, 37.448841>,  <24.433712, 32.356503, 37.854473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480921, 31.774857, 37.448841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854937, 31.909288, 37.494007>,  <25.079346, 31.989948, 37.521107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854937, 31.909288, 37.494007>,  <24.480921, 31.774857, 37.448841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854937, 31.909288, 37.494007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271417, -0.883449, 0.381903,
		0.228109, -0.326446, -0.917278,
		0.935040, 0.336081, 0.112920,
		25.135448, 32.010113, 37.527882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877888, 31.176065, 37.315109>,  <24.480921, 31.774857, 37.448841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877888, 31.176065, 37.315109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145208, 31.424501, 37.478874>,  <25.305601, 31.573563, 37.577133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145208, 31.424501, 37.478874>,  <24.877888, 31.176065, 37.315109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145208, 31.424501, 37.478874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363611, -0.752879, 0.548598,
		0.648967, -0.217763, -0.728987,
		0.668303, 0.621090, 0.409413,
		25.345699, 31.610828, 37.601700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500889, 30.753677, 37.280193>,  <24.877888, 31.176065, 37.315109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500889, 30.753677, 37.280193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479971, 31.019711, 37.578167>,  <25.467421, 31.179331, 37.756950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479971, 31.019711, 37.578167>,  <25.500889, 30.753677, 37.280193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479971, 31.019711, 37.578167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454190, -0.648501, 0.610867,
		0.889369, 0.370287, -0.268162,
		-0.052293, 0.665082, 0.744937,
		25.464283, 31.219234, 37.801647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153040, 30.862970, 37.749920>,  <25.500889, 30.753677, 37.280193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153040, 30.862970, 37.749920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830830, 30.986282, 37.952343>,  <25.637503, 31.060268, 38.073795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830830, 30.986282, 37.952343>,  <26.153040, 30.862970, 37.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830830, 30.986282, 37.952343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288051, -0.542604, 0.789055,
		0.517835, 0.781374, 0.348282,
		-0.805527, 0.308278, 0.506055,
		25.589172, 31.078766, 38.104160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230776, 31.231413, 38.289986>,  <26.153040, 30.862970, 37.749920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230776, 31.231413, 38.289986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894604, 31.033146, 38.377613>,  <25.692900, 30.914186, 38.430191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894604, 31.033146, 38.377613>,  <26.230776, 31.231413, 38.289986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894604, 31.033146, 38.377613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462443, -0.445208, 0.766770,
		-0.282532, 0.745723, 0.603384,
		-0.840430, -0.495668, 0.219069,
		25.642475, 30.884445, 38.443333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994246, 31.479895, 38.893105>,  <26.230776, 31.231413, 38.289986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994246, 31.479895, 38.893105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933414, 31.092159, 38.815895>,  <25.896915, 30.859518, 38.769569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933414, 31.092159, 38.815895>,  <25.994246, 31.479895, 38.893105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933414, 31.092159, 38.815895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695331, -0.243717, 0.676104,
		-0.702416, -0.031393, 0.711074,
		-0.152076, -0.969338, -0.193020,
		25.887791, 30.801357, 38.757988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750830, 32.151482, 38.635380>,  <25.994246, 31.479895, 38.893105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750830, 32.151482, 38.635380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845306, 31.912323, 38.328987>,  <25.901993, 31.768827, 38.145149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845306, 31.912323, 38.328987>,  <25.750830, 32.151482, 38.635380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845306, 31.912323, 38.328987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269480, 0.717064, -0.642807,
		0.933592, 0.358243, 0.008244,
		0.236193, -0.597897, -0.765984,
		25.916164, 31.732954, 38.099194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283348, 32.367165, 38.058220>,  <25.750830, 32.151482, 38.635380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283348, 32.367165, 38.058220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991041, 32.133057, 37.917686>,  <25.815657, 31.992592, 37.833366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991041, 32.133057, 37.917686>,  <26.283348, 32.367165, 38.058220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991041, 32.133057, 37.917686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323788, 0.750286, -0.576396,
		0.600948, -0.307455, -0.737789,
		-0.730768, -0.585271, -0.351332,
		25.771811, 31.957476, 37.812286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370613, 32.266212, 37.403568>,  <26.283348, 32.367165, 38.058220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370613, 32.266212, 37.403568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978561, 32.192337, 37.432526>,  <25.743330, 32.148010, 37.449902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978561, 32.192337, 37.432526>,  <26.370613, 32.266212, 37.403568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978561, 32.192337, 37.432526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169265, 0.588339, -0.790700,
		0.103444, -0.787240, -0.607908,
		-0.980127, -0.184690, 0.072392,
		25.684523, 32.136929, 37.454243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082228, 32.321636, 36.700630>,  <26.370613, 32.266212, 37.403568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082228, 32.321636, 36.700630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738474, 32.335785, 36.904671>,  <25.532221, 32.344273, 37.027096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738474, 32.335785, 36.904671>,  <26.082228, 32.321636, 36.700630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738474, 32.335785, 36.904671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322404, 0.736832, -0.594251,
		-0.396879, -0.675150, -0.621820,
		-0.859385, 0.035368, 0.510104,
		25.480658, 32.346394, 37.057701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530092, 32.377277, 36.226143>,  <26.082228, 32.321636, 36.700630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530092, 32.377277, 36.226143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397684, 32.529385, 36.571587>,  <25.318239, 32.620647, 36.778854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397684, 32.529385, 36.571587>,  <25.530092, 32.377277, 36.226143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397684, 32.529385, 36.571587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373948, 0.787411, -0.490048,
		-0.866365, -0.485161, -0.118449,
		-0.331020, 0.380267, 0.863610,
		25.298378, 32.643463, 36.830669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842342, 32.494186, 36.290688>,  <25.530092, 32.377277, 36.226143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842342, 32.494186, 36.290688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033928, 32.757401, 36.523094>,  <25.148880, 32.915329, 36.662537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033928, 32.757401, 36.523094>,  <24.842342, 32.494186, 36.290688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033928, 32.757401, 36.523094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375191, 0.751827, -0.542206,
		-0.793615, 0.041706, 0.606989,
		0.478964, 0.658040, 0.581014,
		25.177616, 32.954811, 36.697399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.105164, 32.418591, 36.260242>,  <24.842342, 32.494186, 36.290688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.105164, 32.418591, 36.260242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378033, 32.609760, 36.481594>,  <24.541754, 32.724464, 36.614403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378033, 32.609760, 36.481594>,  <24.105164, 32.418591, 36.260242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378033, 32.609760, 36.481594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211345, 0.853391, -0.476505,
		-0.699981, 0.208106, 0.683168,
		0.682173, 0.477928, 0.553375,
		24.582685, 32.753139, 36.647606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.878757, 33.103947, 36.352543>,  <24.105164, 32.418591, 36.260242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.878757, 33.103947, 36.352543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257093, 33.183231, 36.455383>,  <24.484095, 33.230801, 36.517086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257093, 33.183231, 36.455383>,  <23.878757, 33.103947, 36.352543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.257093, 33.183231, 36.455383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017871, 0.822554, -0.568406,
		-0.324146, 0.533026, 0.781545,
		0.945838, 0.198213, 0.257102,
		24.540846, 33.242695, 36.532513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220716, 33.601765, 35.958260>,  <23.878757, 33.103947, 36.352543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220716, 33.601765, 35.958260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290503, 33.541042, 36.347416>,  <24.332375, 33.504608, 36.580910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290503, 33.541042, 36.347416>,  <24.220716, 33.601765, 35.958260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290503, 33.541042, 36.347416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363716, 0.928103, 0.079597,
		-0.915026, 0.339969, 0.217137,
		0.174465, -0.151809, 0.972890,
		24.342842, 33.495499, 36.639282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.838779, 33.939884, 36.502716>,  <24.220716, 33.601765, 35.958260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.838779, 33.939884, 36.502716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226864, 33.843132, 36.497307>,  <24.459715, 33.785080, 36.494061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226864, 33.843132, 36.497307>,  <23.838779, 33.939884, 36.502716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226864, 33.843132, 36.497307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239372, 0.965742, -0.100212,
		0.037298, 0.093990, 0.994874,
		0.970211, -0.241883, -0.013522,
		24.517927, 33.770569, 36.493252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.229393, 34.422314, 36.898613>,  <23.838779, 33.939884, 36.502716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.229393, 34.422314, 36.898613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491596, 34.265881, 36.640198>,  <24.648918, 34.172020, 36.485149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491596, 34.265881, 36.640198>,  <24.229393, 34.422314, 36.898613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491596, 34.265881, 36.640198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240753, 0.919047, -0.312074,
		0.715784, 0.049032, 0.696599,
		0.655509, -0.391086, -0.646034,
		24.688250, 34.148556, 36.446388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787182, 34.801853, 36.925514>,  <24.229393, 34.422314, 36.898613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787182, 34.801853, 36.925514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842846, 34.628197, 36.569500>,  <24.876244, 34.524002, 36.355892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842846, 34.628197, 36.569500>,  <24.787182, 34.801853, 36.925514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842846, 34.628197, 36.569500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270019, 0.881356, -0.387689,
		0.952746, -0.186375, 0.239874,
		0.139159, -0.434139, -0.890032,
		24.884594, 34.497955, 36.302490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464544, 35.031803, 36.871147>,  <24.787182, 34.801853, 36.925514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464544, 35.031803, 36.871147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278578, 34.923264, 36.534050>,  <25.166998, 34.858139, 36.331791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278578, 34.923264, 36.534050>,  <25.464544, 35.031803, 36.871147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278578, 34.923264, 36.534050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447464, 0.749339, -0.488126,
		0.763954, -0.604037, -0.226965,
		-0.464920, -0.271347, -0.842746,
		25.139103, 34.841858, 36.281227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958612, 34.924438, 36.245560>,  <25.464544, 35.031803, 36.871147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958612, 34.924438, 36.245560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588394, 34.999470, 36.113998>,  <25.366262, 35.044491, 36.035061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588394, 34.999470, 36.113998>,  <25.958612, 34.924438, 36.245560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588394, 34.999470, 36.113998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360975, 0.699336, -0.616949,
		0.114285, -0.689740, -0.714980,
		-0.925547, 0.187582, -0.328902,
		25.310730, 35.055744, 36.015327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417643, 34.612736, 36.732910>,  <25.958612, 34.924438, 36.245560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417643, 34.612736, 36.732910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716558, 34.547134, 36.990486>,  <26.895908, 34.507774, 37.145031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716558, 34.547134, 36.990486>,  <26.417643, 34.612736, 36.732910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716558, 34.547134, 36.990486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556497, 0.375122, 0.741347,
		-0.363140, -0.912352, 0.189057,
		0.747289, -0.164003, 0.643943,
		26.940744, 34.497932, 37.183670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177912, 34.104729, 37.221077>,  <26.417643, 34.612736, 36.732910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177912, 34.104729, 37.221077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474665, 34.321503, 37.379025>,  <26.652716, 34.451565, 37.473793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474665, 34.321503, 37.379025>,  <26.177912, 34.104729, 37.221077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474665, 34.321503, 37.379025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564404, 0.186748, 0.804098,
		0.362025, -0.819411, 0.444414,
		0.741880, 0.541932, 0.394871,
		26.697229, 34.484081, 37.497486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374254, 33.852051, 37.873947>,  <26.177912, 34.104729, 37.221077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374254, 33.852051, 37.873947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446699, 34.245407, 37.878666>,  <26.490166, 34.481422, 37.881496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446699, 34.245407, 37.878666>,  <26.374254, 33.852051, 37.873947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446699, 34.245407, 37.878666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728792, 0.126151, 0.673015,
		0.660349, -0.130488, 0.739535,
		0.181113, 0.983391, 0.011795,
		26.501034, 34.540424, 37.882206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402643, 33.947674, 38.592930>,  <26.374254, 33.852051, 37.873947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402643, 33.947674, 38.592930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351366, 34.293842, 38.399185>,  <26.320599, 34.501545, 38.282936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351366, 34.293842, 38.399185>,  <26.402643, 33.947674, 38.592930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351366, 34.293842, 38.399185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745996, 0.237674, 0.622094,
		0.653495, 0.441084, 0.615134,
		-0.128194, 0.865423, -0.484365,
		26.312908, 34.553471, 38.253876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572844, 34.396233, 39.102425>,  <26.402643, 33.947674, 38.592930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572844, 34.396233, 39.102425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337639, 34.560226, 38.823524>,  <26.196516, 34.658623, 38.656185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337639, 34.560226, 38.823524>,  <26.572844, 34.396233, 39.102425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337639, 34.560226, 38.823524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768353, -0.013776, 0.639878,
		0.252733, 0.911990, 0.323111,
		-0.588013, 0.409981, -0.697249,
		26.161236, 34.683220, 38.614349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192909, 34.924404, 39.406658>,  <26.572844, 34.396233, 39.102425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192909, 34.924404, 39.406658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954597, 34.812164, 39.105644>,  <25.811611, 34.744820, 38.925034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954597, 34.812164, 39.105644>,  <26.192909, 34.924404, 39.406658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954597, 34.812164, 39.105644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770203, -0.066000, 0.634375,
		-0.227670, 0.957554, -0.176794,
		-0.595780, -0.280596, -0.752537,
		25.775864, 34.727985, 38.879883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264097, 35.608307, 39.339447>,  <26.192909, 34.924404, 39.406658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264097, 35.608307, 39.339447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945814, 35.595596, 39.097507>,  <25.754845, 35.587971, 38.952343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945814, 35.595596, 39.097507>,  <26.264097, 35.608307, 39.339447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945814, 35.595596, 39.097507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580025, -0.247591, 0.776060,
		-0.174419, 0.968343, 0.178576,
		-0.795707, -0.031781, -0.604848,
		25.707102, 35.586063, 38.916054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740061, 36.037834, 39.508175>,  <26.264097, 35.608307, 39.339447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740061, 36.037834, 39.508175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602451, 35.723053, 39.303291>,  <25.519886, 35.534184, 39.180363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602451, 35.723053, 39.303291>,  <25.740061, 36.037834, 39.508175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602451, 35.723053, 39.303291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655828, -0.189005, 0.730867,
		-0.671966, 0.587356, -0.451082,
		-0.344023, -0.786950, -0.512210,
		25.499245, 35.486969, 39.149628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079142, 36.143974, 39.456524>,  <25.740061, 36.037834, 39.508175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079142, 36.143974, 39.456524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141703, 35.749516, 39.434437>,  <25.179239, 35.512840, 39.421185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141703, 35.749516, 39.434437>,  <25.079142, 36.143974, 39.456524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141703, 35.749516, 39.434437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575486, -0.136423, 0.806352,
		-0.802717, -0.094335, -0.588852,
		0.156400, -0.986149, -0.055221,
		25.188623, 35.453671, 39.417870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482601, 35.803154, 39.541965>,  <25.079142, 36.143974, 39.456524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482601, 35.803154, 39.541965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757784, 35.544582, 39.673931>,  <24.922894, 35.389439, 39.753109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757784, 35.544582, 39.673931>,  <24.482601, 35.803154, 39.541965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757784, 35.544582, 39.673931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459444, -0.036027, 0.887476,
		-0.561806, -0.762122, -0.321784,
		0.687957, -0.646430, 0.329912,
		24.964170, 35.350655, 39.772903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.255434, 35.687477, 40.241341>,  <24.482601, 35.803154, 39.541965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.255434, 35.687477, 40.241341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541950, 35.410198, 40.209335>,  <24.713860, 35.243832, 40.190132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541950, 35.410198, 40.209335>,  <24.255434, 35.687477, 40.241341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.541950, 35.410198, 40.209335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082186, -0.197667, 0.976818,
		-0.692947, -0.693108, -0.198558,
		0.716289, -0.693202, -0.080009,
		24.756838, 35.202236, 40.185333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839659, 35.522636, 40.614616>,  <24.255434, 35.687477, 40.241341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839659, 35.522636, 40.614616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732103, 35.156334, 40.495220>,  <24.667570, 34.936554, 40.423584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732103, 35.156334, 40.495220>,  <24.839659, 35.522636, 40.614616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732103, 35.156334, 40.495220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321535, 0.206778, -0.924045,
		0.907917, -0.344438, 0.238847,
		-0.268888, -0.915754, -0.298486,
		24.651438, 34.881607, 40.405674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318571, 35.129208, 40.352676>,  <24.839659, 35.522636, 40.614616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318571, 35.129208, 40.352676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994734, 35.000069, 40.156586>,  <24.800430, 34.922585, 40.038933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994734, 35.000069, 40.156586>,  <25.318571, 35.129208, 40.352676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994734, 35.000069, 40.156586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449817, 0.195334, -0.871498,
		0.377124, -0.926073, -0.012916,
		-0.809594, -0.322853, -0.490228,
		24.751856, 34.903214, 40.009518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515926, 34.529572, 39.891037>,  <25.318571, 35.129208, 40.352676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515926, 34.529572, 39.891037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214201, 34.760292, 39.765617>,  <25.033165, 34.898724, 39.690365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214201, 34.760292, 39.765617>,  <25.515926, 34.529572, 39.891037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214201, 34.760292, 39.765617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470774, 0.142351, -0.870694,
		-0.457585, -0.804385, -0.378921,
		-0.754313, 0.576803, -0.313546,
		24.987907, 34.933334, 39.671555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.279272, 34.214970, 39.245483>,  <25.515926, 34.529572, 39.891037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.279272, 34.214970, 39.245483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239990, 34.611305, 39.282551>,  <25.216421, 34.849106, 39.304790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239990, 34.611305, 39.282551>,  <25.279272, 34.214970, 39.245483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239990, 34.611305, 39.282551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571096, 0.132374, -0.810140,
		-0.814988, -0.026635, -0.578865,
		-0.098205, 0.990842, 0.092672,
		25.210529, 34.908558, 39.310352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983299, 34.377144, 38.627895>,  <25.279272, 34.214970, 39.245483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983299, 34.377144, 38.627895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159002, 34.697311, 38.791058>,  <25.264423, 34.889412, 38.888954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159002, 34.697311, 38.791058>,  <24.983299, 34.377144, 38.627895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159002, 34.697311, 38.791058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594945, 0.081028, -0.799672,
		-0.673123, 0.593940, -0.440613,
		0.439255, 0.800418, 0.407904,
		25.290779, 34.937435, 38.913429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035812, 34.908287, 38.112587>,  <24.983299, 34.377144, 38.627895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035812, 34.908287, 38.112587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336756, 34.953190, 38.372234>,  <25.517321, 34.980133, 38.528023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336756, 34.953190, 38.372234>,  <25.035812, 34.908287, 38.112587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336756, 34.953190, 38.372234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655757, -0.033708, -0.754219,
		-0.062785, 0.993108, -0.098973,
		0.752357, 0.112256, 0.649121,
		25.562464, 34.986866, 38.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436434, 35.365414, 37.814011>,  <25.035812, 34.908287, 38.112587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436434, 35.365414, 37.814011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662670, 35.152359, 38.065853>,  <25.798412, 35.024525, 38.216957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662670, 35.152359, 38.065853>,  <25.436434, 35.365414, 37.814011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662670, 35.152359, 38.065853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784500, 0.112077, -0.609917,
		0.254300, 0.838890, 0.481244,
		0.565589, -0.532638, 0.629608,
		25.832346, 34.992569, 38.254734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078485, 35.763145, 37.829395>,  <25.436434, 35.365414, 37.814011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078485, 35.763145, 37.829395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171394, 35.392456, 37.947540>,  <26.227140, 35.170044, 38.018429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171394, 35.392456, 37.947540>,  <26.078485, 35.763145, 37.829395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171394, 35.392456, 37.947540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770306, -0.010145, -0.637594,
		0.593868, 0.375616, 0.711501,
		0.232272, -0.926720, 0.295364,
		26.241076, 35.114441, 38.036148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753805, 35.776760, 37.737869>,  <26.078485, 35.763145, 37.829395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753805, 35.776760, 37.737869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660187, 35.391346, 37.789761>,  <26.604015, 35.160099, 37.820896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660187, 35.391346, 37.789761>,  <26.753805, 35.776760, 37.737869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660187, 35.391346, 37.789761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793266, -0.266401, -0.547502,
		0.562094, -0.025236, 0.826688,
		-0.234048, -0.963532, 0.129724,
		26.589972, 35.102287, 37.828678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360294, 35.473709, 37.950741>,  <26.753805, 35.776760, 37.737869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360294, 35.473709, 37.950741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118351, 35.217468, 37.761520>,  <26.973185, 35.063725, 37.647987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118351, 35.217468, 37.761520>,  <27.360294, 35.473709, 37.950741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118351, 35.217468, 37.761520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769598, -0.317595, -0.553943,
		0.204616, -0.699117, 0.685104,
		-0.604856, -0.640600, -0.473054,
		26.936893, 35.025288, 37.619602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538513, 34.675270, 37.930866>,  <27.360294, 35.473709, 37.950741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538513, 34.675270, 37.930866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313843, 34.768906, 37.613445>,  <27.179041, 34.825089, 37.422993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313843, 34.768906, 37.613445>,  <27.538513, 34.675270, 37.930866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313843, 34.768906, 37.613445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720036, -0.334121, -0.608203,
		-0.407517, -0.912998, 0.019113,
		-0.561674, 0.234091, -0.793551,
		27.145340, 34.839134, 37.375381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306694, 34.028675, 37.461544>,  <27.538513, 34.675270, 37.930866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306694, 34.028675, 37.461544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351473, 34.385315, 37.286037>,  <27.378340, 34.599300, 37.180733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351473, 34.385315, 37.286037>,  <27.306694, 34.028675, 37.461544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351473, 34.385315, 37.286037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738914, -0.369921, -0.563173,
		-0.664435, -0.261166, -0.700228,
		0.111947, 0.891600, -0.438768,
		27.385057, 34.652794, 37.154408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265726, 34.131554, 36.641754>,  <27.306694, 34.028675, 37.461544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265726, 34.131554, 36.641754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531990, 34.376060, 36.812984>,  <27.691748, 34.522766, 36.915722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531990, 34.376060, 36.812984>,  <27.265726, 34.131554, 36.641754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531990, 34.376060, 36.812984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715849, -0.360952, -0.597724,
		-0.210852, 0.704320, -0.677846,
		0.665659, 0.611267, 0.428079,
		27.731688, 34.559441, 36.941406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644594, 34.370022, 36.135685>,  <27.265726, 34.131554, 36.641754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644594, 34.370022, 36.135685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887993, 34.435364, 36.446308>,  <28.034031, 34.474571, 36.632683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887993, 34.435364, 36.446308>,  <27.644594, 34.370022, 36.135685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887993, 34.435364, 36.446308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786940, -0.250328, -0.563969,
		0.102266, 0.954280, -0.280876,
		0.608496, 0.163358, 0.776561,
		28.070541, 34.484371, 36.679276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180992, 34.732246, 35.814068>,  <27.644594, 34.370022, 36.135685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180992, 34.732246, 35.814068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305475, 34.562737, 36.154320>,  <28.380165, 34.461029, 36.358471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305475, 34.562737, 36.154320>,  <28.180992, 34.732246, 35.814068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305475, 34.562737, 36.154320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799710, -0.366796, -0.475315,
		0.513433, 0.828175, 0.224749,
		0.311207, -0.423777, 0.850625,
		28.398838, 34.435604, 36.409508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828236, 34.978901, 36.019447>,  <28.180992, 34.732246, 35.814068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828236, 34.978901, 36.019447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765368, 34.601471, 36.136044>,  <28.727646, 34.375015, 36.206001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765368, 34.601471, 36.136044>,  <28.828236, 34.978901, 36.019447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765368, 34.601471, 36.136044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811739, -0.291542, -0.506046,
		0.562474, 0.157082, 0.811756,
		-0.157171, -0.943572, 0.291494,
		28.718216, 34.318398, 36.223492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527962, 34.734837, 36.450813>,  <28.828236, 34.978901, 36.019447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527962, 34.734837, 36.450813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318506, 34.518230, 36.187737>,  <29.192833, 34.388268, 36.029892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318506, 34.518230, 36.187737>,  <29.527962, 34.734837, 36.450813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318506, 34.518230, 36.187737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849612, -0.274905, -0.450095,
		0.062932, -0.794471, 0.604032,
		-0.523639, -0.541518, -0.657692,
		29.161415, 34.355774, 35.990429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891870, 35.198120, 36.036049>,  <29.527962, 34.734837, 36.450813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891870, 35.198120, 36.036049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055283, 34.843624, 35.948704>,  <30.153330, 34.630928, 35.896297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055283, 34.843624, 35.948704>,  <29.891870, 35.198120, 36.036049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055283, 34.843624, 35.948704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865211, 0.452209, -0.216604,
		0.290708, -0.100440, 0.951526,
		0.408532, -0.886239, -0.218362,
		30.177843, 34.577751, 35.883194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612047, 35.032925, 36.274883>,  <29.891870, 35.198120, 36.036049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612047, 35.032925, 36.274883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554031, 34.818386, 35.942307>,  <30.519222, 34.689663, 35.742760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554031, 34.818386, 35.942307>,  <30.612047, 35.032925, 36.274883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554031, 34.818386, 35.942307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831703, 0.389091, -0.396078,
		0.535942, -0.748961, 0.389645,
		-0.145040, -0.536344, -0.831444,
		30.510519, 34.657482, 35.692875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261093, 34.702648, 36.130558>,  <30.612047, 35.032925, 36.274883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261093, 34.702648, 36.130558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082129, 34.777050, 35.780651>,  <30.974749, 34.821693, 35.570705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082129, 34.777050, 35.780651>,  <31.261093, 34.702648, 36.130558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082129, 34.777050, 35.780651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777527, 0.564209, -0.277704,
		0.441898, -0.804406, -0.397062,
		-0.447413, 0.186009, -0.874770,
		30.947905, 34.832851, 35.518219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580542, 34.367153, 35.516953>,  <31.261093, 34.702648, 36.130558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580542, 34.367153, 35.516953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411037, 34.720882, 35.438572>,  <31.309336, 34.933121, 35.391544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411037, 34.720882, 35.438572>,  <31.580542, 34.367153, 35.516953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411037, 34.720882, 35.438572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865589, 0.331646, -0.375188,
		-0.266802, -0.328602, -0.906001,
		-0.423759, 0.884326, -0.195950,
		31.283909, 34.986179, 35.379787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744219, 34.604500, 34.803288>,  <31.580542, 34.367153, 35.516953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744219, 34.604500, 34.803288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678335, 34.914307, 35.047581>,  <31.638805, 35.100189, 35.194157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678335, 34.914307, 35.047581>,  <31.744219, 34.604500, 34.803288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678335, 34.914307, 35.047581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891721, 0.381562, -0.243401,
		-0.421551, 0.504513, -0.753500,
		-0.164708, 0.774517, 0.610732,
		31.628923, 35.146664, 35.230801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715006, 35.287266, 34.521214>,  <31.744219, 34.604500, 34.803288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715006, 35.287266, 34.521214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856932, 35.328068, 34.892956>,  <31.942087, 35.352551, 35.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856932, 35.328068, 34.892956>,  <31.715006, 35.287266, 34.521214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856932, 35.328068, 34.892956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860975, 0.351843, -0.367326,
		-0.364458, 0.930484, 0.037012,
		0.354814, 0.102008, 0.929356,
		31.963375, 35.358669, 35.171761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197411, 35.575001, 34.054256>,  <31.715006, 35.287266, 34.521214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197411, 35.575001, 34.054256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191547, 35.276405, 34.320351>,  <32.188030, 35.097248, 34.480007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191547, 35.276405, 34.320351>,  <32.197411, 35.575001, 34.054256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191547, 35.276405, 34.320351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655937, -0.509325, -0.557077,
		0.754673, 0.428190, 0.497113,
		-0.014657, -0.746486, 0.665239,
		32.187149, 35.052460, 34.519924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975040, 35.305840, 34.225891>,  <32.197411, 35.575001, 34.054256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975040, 35.305840, 34.225891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672462, 35.044968, 34.245743>,  <32.490917, 34.888447, 34.257652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672462, 35.044968, 34.245743>,  <32.975040, 35.305840, 34.225891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672462, 35.044968, 34.245743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476658, -0.601636, -0.640961,
		0.447879, -0.461193, 0.765967,
		-0.756440, -0.652177, 0.049629,
		32.445530, 34.849316, 34.260632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242840, 34.602985, 34.298588>,  <32.975040, 35.305840, 34.225891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242840, 34.602985, 34.298588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874527, 34.584293, 34.143677>,  <32.653542, 34.573078, 34.050732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874527, 34.584293, 34.143677>,  <33.242840, 34.602985, 34.298588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874527, 34.584293, 34.143677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316348, -0.670329, -0.671255,
		-0.228238, -0.740592, 0.632006,
		-0.920778, -0.046728, -0.387279,
		32.598293, 34.570274, 34.027493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951061, 33.865726, 34.188042>,  <33.242840, 34.602985, 34.298588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951061, 33.865726, 34.188042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783592, 34.127705, 33.936405>,  <32.683109, 34.284893, 33.785423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783592, 34.127705, 33.936405>,  <32.951061, 33.865726, 34.188042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783592, 34.127705, 33.936405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186624, -0.615895, -0.765405,
		-0.888754, -0.437859, 0.135631,
		-0.418674, 0.654945, -0.629095,
		32.657990, 34.324188, 33.747677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593353, 33.499931, 33.783920>,  <32.951061, 33.865726, 34.188042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593353, 33.499931, 33.783920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662392, 33.828049, 33.565811>,  <32.703815, 34.024921, 33.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662392, 33.828049, 33.565811>,  <32.593353, 33.499931, 33.783920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662392, 33.828049, 33.565811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360763, -0.567761, -0.739930,
		-0.916548, -0.069003, -0.393928,
		0.172599, 0.820296, -0.545274,
		32.714172, 34.074139, 33.402229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269192, 33.361694, 33.112713>,  <32.593353, 33.499931, 33.783920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269192, 33.361694, 33.112713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554138, 33.637817, 33.062092>,  <32.725105, 33.803490, 33.031719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554138, 33.637817, 33.062092>,  <32.269192, 33.361694, 33.112713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554138, 33.637817, 33.062092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349010, -0.504894, -0.789477,
		-0.608875, 0.518228, -0.600592,
		0.712365, 0.690305, -0.126550,
		32.767849, 33.844910, 33.024128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235035, 33.579597, 32.355095>,  <32.269192, 33.361694, 33.112713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235035, 33.579597, 32.355095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600632, 33.702084, 32.461563>,  <32.819992, 33.775574, 32.525444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600632, 33.702084, 32.461563>,  <32.235035, 33.579597, 32.355095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600632, 33.702084, 32.461563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363564, -0.326925, -0.872320,
		-0.180098, 0.894066, -0.410136,
		0.913995, 0.306213, 0.266172,
		32.874828, 33.793949, 32.541416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471626, 33.843758, 31.797644>,  <32.235035, 33.579597, 32.355095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471626, 33.843758, 31.797644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795204, 33.763863, 32.018806>,  <32.989353, 33.715923, 32.151505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795204, 33.763863, 32.018806>,  <32.471626, 33.843758, 31.797644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795204, 33.763863, 32.018806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504813, -0.245967, -0.827444,
		0.301271, 0.948474, -0.098142,
		0.808949, -0.199742, 0.552905,
		33.037888, 33.703941, 32.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008762, 34.202374, 31.427202>,  <32.471626, 33.843758, 31.797644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008762, 34.202374, 31.427202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192596, 33.937004, 31.663387>,  <33.302898, 33.777782, 31.805099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192596, 33.937004, 31.663387>,  <33.008762, 34.202374, 31.427202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192596, 33.937004, 31.663387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585697, -0.273378, -0.763036,
		0.667635, 0.696516, 0.262923,
		0.459589, -0.663423, 0.590464,
		33.330475, 33.737976, 31.840527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649086, 34.388638, 31.454956>,  <33.008762, 34.202374, 31.427202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649086, 34.388638, 31.454956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634331, 34.001900, 31.556034>,  <33.625477, 33.769855, 31.616680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634331, 34.001900, 31.556034>,  <33.649086, 34.388638, 31.454956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634331, 34.001900, 31.556034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637494, -0.217497, -0.739119,
		0.769572, 0.133826, 0.624379,
		-0.036887, -0.966843, 0.252693,
		33.623264, 33.711845, 31.631842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317551, 34.156857, 31.514544>,  <33.649086, 34.388638, 31.454956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317551, 34.156857, 31.514544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067738, 33.851810, 31.447153>,  <33.917850, 33.668785, 31.406719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067738, 33.851810, 31.447153>,  <34.317551, 34.156857, 31.514544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067738, 33.851810, 31.447153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666205, -0.407611, -0.624519,
		0.407594, -0.502270, 0.762622,
		-0.624531, -0.762613, -0.168475,
		33.880379, 33.623028, 31.396610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768467, 33.639828, 31.637691>,  <34.317551, 34.156857, 31.514544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768467, 33.639828, 31.637691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482956, 33.463860, 31.419703>,  <34.311649, 33.358280, 31.288910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482956, 33.463860, 31.419703>,  <34.768467, 33.639828, 31.637691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482956, 33.463860, 31.419703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693905, -0.338683, -0.635445,
		0.094973, -0.831723, 0.547007,
		-0.713776, -0.439921, -0.544971,
		34.268822, 33.331882, 31.256212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046352, 32.995594, 31.570929>,  <34.768467, 33.639828, 31.637691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046352, 32.995594, 31.570929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772087, 33.034370, 31.282354>,  <34.607529, 33.057636, 31.109209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772087, 33.034370, 31.282354>,  <35.046352, 32.995594, 31.570929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772087, 33.034370, 31.282354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650170, -0.364114, -0.666858,
		-0.327328, -0.926296, 0.186635,
		-0.685664, 0.096937, -0.721434,
		34.566387, 33.063454, 31.065924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375259, 32.657158, 31.058086>,  <35.046352, 32.995594, 31.570929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375259, 32.657158, 31.058086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076931, 32.845650, 30.869751>,  <34.897934, 32.958744, 30.756748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076931, 32.845650, 30.869751>,  <35.375259, 32.657158, 31.058086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076931, 32.845650, 30.869751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411849, -0.229351, -0.881918,
		-0.523571, -0.851671, -0.023019,
		-0.745824, 0.471227, -0.470841,
		34.853184, 32.987019, 30.728498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246014, 32.258930, 30.467672>,  <35.375259, 32.657158, 31.058086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246014, 32.258930, 30.467672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101101, 32.616318, 30.361490>,  <35.014153, 32.830750, 30.297781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101101, 32.616318, 30.361490>,  <35.246014, 32.258930, 30.467672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101101, 32.616318, 30.361490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404024, -0.106122, -0.908572,
		-0.839951, -0.436409, -0.322536,
		-0.362280, 0.893468, -0.265457,
		34.992416, 32.884357, 30.281853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791275, 32.032532, 29.849821>,  <35.246014, 32.258930, 30.467672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791275, 32.032532, 29.849821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871830, 32.424297, 29.855274>,  <34.920162, 32.659359, 29.858545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871830, 32.424297, 29.855274>,  <34.791275, 32.032532, 29.849821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871830, 32.424297, 29.855274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183749, -0.024103, -0.982678,
		-0.962123, 0.200400, -0.184821,
		0.201384, 0.979418, 0.013633,
		34.932243, 32.718124, 29.859364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405491, 32.329300, 29.235001>,  <34.791275, 32.032532, 29.849821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405491, 32.329300, 29.235001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705132, 32.570934, 29.343750>,  <34.884918, 32.715916, 29.409000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705132, 32.570934, 29.343750>,  <34.405491, 32.329300, 29.235001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705132, 32.570934, 29.343750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301963, 0.053910, -0.951794,
		-0.589625, 0.795091, -0.142028,
		0.749106, 0.604089, 0.271875,
		34.929863, 32.752159, 29.425312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472290, 32.773262, 28.730946>,  <34.405491, 32.329300, 29.235001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472290, 32.773262, 28.730946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827702, 32.806164, 28.911499>,  <35.040947, 32.825905, 29.019831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827702, 32.806164, 28.911499>,  <34.472290, 32.773262, 28.730946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827702, 32.806164, 28.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455480, -0.039662, -0.889362,
		-0.055253, 0.995822, -0.072708,
		0.888530, 0.082257, 0.451385,
		35.094261, 32.830841, 29.046915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815399, 33.269913, 28.380337>,  <34.472290, 32.773262, 28.730946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815399, 33.269913, 28.380337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099567, 33.044075, 28.548401>,  <35.270069, 32.908573, 28.649239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099567, 33.044075, 28.548401>,  <34.815399, 33.269913, 28.380337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099567, 33.044075, 28.548401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468571, -0.065994, -0.880957,
		0.525112, 0.822726, 0.217669,
		0.710422, -0.564594, 0.420160,
		35.312695, 32.874695, 28.674448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452885, 33.413269, 28.011400>,  <34.815399, 33.269913, 28.380337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452885, 33.413269, 28.011400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509121, 33.057022, 28.184393>,  <35.542862, 32.843273, 28.288189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509121, 33.057022, 28.184393>,  <35.452885, 33.413269, 28.011400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509121, 33.057022, 28.184393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360669, -0.360732, -0.860111,
		0.922036, 0.276909, 0.270500,
		0.140594, -0.890614, 0.432481,
		35.551300, 32.789837, 28.314137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041862, 33.182526, 27.677216>,  <35.452885, 33.413269, 28.011400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041862, 33.182526, 27.677216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882717, 32.855061, 27.842867>,  <35.787231, 32.658581, 27.942257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882717, 32.855061, 27.842867>,  <36.041862, 33.182526, 27.677216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882717, 32.855061, 27.842867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177581, -0.511572, -0.840690,
		0.900096, -0.260936, 0.348913,
		-0.397860, -0.818662, 0.414126,
		35.763359, 32.609463, 27.967104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479454, 32.659321, 27.449043>,  <36.041862, 33.182526, 27.677216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479454, 32.659321, 27.449043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142685, 32.467754, 27.548492>,  <35.940624, 32.352814, 27.608162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142685, 32.467754, 27.548492>,  <36.479454, 32.659321, 27.449043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142685, 32.467754, 27.548492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014161, -0.480201, -0.877044,
		0.539417, -0.734880, 0.411072,
		-0.841920, -0.478914, 0.248622,
		35.890110, 32.324081, 27.623079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645500, 31.964165, 27.384607>,  <36.479454, 32.659321, 27.449043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645500, 31.964165, 27.384607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247955, 31.996271, 27.354137>,  <36.009430, 32.015533, 27.335855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247955, 31.996271, 27.354137>,  <36.645500, 31.964165, 27.384607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247955, 31.996271, 27.354137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044202, -0.343109, -0.938255,
		-0.101445, -0.935860, 0.337454,
		-0.993858, 0.080265, -0.076173,
		35.949799, 32.020351, 27.331285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543125, 31.501514, 26.857748>,  <36.645500, 31.964165, 27.384607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543125, 31.501514, 26.857748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194931, 31.697687, 26.874363>,  <35.986015, 31.815390, 26.884333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194931, 31.697687, 26.874363>,  <36.543125, 31.501514, 26.857748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194931, 31.697687, 26.874363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170222, -0.220793, -0.960352,
		-0.461815, -0.843046, 0.275680,
		-0.870489, 0.490432, 0.041539,
		35.933784, 31.844816, 26.886826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033005, 30.972202, 26.681501>,  <36.543125, 31.501514, 26.857748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033005, 30.972202, 26.681501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877872, 31.327665, 26.583622>,  <35.784794, 31.540943, 26.524895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877872, 31.327665, 26.583622>,  <36.033005, 30.972202, 26.681501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877872, 31.327665, 26.583622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131834, -0.316226, -0.939479,
		-0.912255, -0.332097, 0.239796,
		-0.387828, 0.888658, -0.244697,
		35.761524, 31.594263, 26.510212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394962, 30.790689, 26.265932>,  <36.033005, 30.972202, 26.681501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394962, 30.790689, 26.265932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516541, 31.165653, 26.197952>,  <35.589489, 31.390631, 26.157166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516541, 31.165653, 26.197952>,  <35.394962, 30.790689, 26.265932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516541, 31.165653, 26.197952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161399, -0.125141, -0.978923,
		-0.938917, 0.324972, 0.113261,
		0.303949, 0.937408, -0.169947,
		35.607723, 31.446877, 26.146969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851177, 31.061964, 25.941776>,  <35.394962, 30.790689, 26.265932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851177, 31.061964, 25.941776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187016, 31.251892, 25.836235>,  <35.388519, 31.365849, 25.772911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187016, 31.251892, 25.836235>,  <34.851177, 31.061964, 25.941776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187016, 31.251892, 25.836235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106981, -0.331685, -0.937304,
		-0.532566, 0.815188, -0.227687,
		0.839600, 0.474818, -0.263853,
		35.438896, 31.394337, 25.757078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707954, 31.259563, 25.216173>,  <34.851177, 31.061964, 25.941776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707954, 31.259563, 25.216173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102726, 31.323101, 25.227077>,  <35.339588, 31.361223, 25.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102726, 31.323101, 25.227077>,  <34.707954, 31.259563, 25.216173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102726, 31.323101, 25.227077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051824, -0.152608, -0.986927,
		-0.152608, 0.975438, -0.158845,
		0.986927, 0.158845, 0.027262,
		35.398804, 31.370754, 25.235256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890312, 31.672564, 24.672726>,  <34.707954, 31.259563, 25.216173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890312, 31.672564, 24.672726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228577, 31.485859, 24.776257>,  <35.431534, 31.373837, 24.838375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228577, 31.485859, 24.776257>,  <34.890312, 31.672564, 24.672726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228577, 31.485859, 24.776257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297557, 0.009728, -0.954655,
		0.443078, 0.884330, 0.147115,
		0.845660, -0.466762, 0.258828,
		35.482273, 31.345831, 24.853905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440331, 32.112988, 24.454752>,  <34.890312, 31.672564, 24.672726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440331, 32.112988, 24.454752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574375, 31.736696, 24.475660>,  <35.654800, 31.510921, 24.488205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574375, 31.736696, 24.475660>,  <35.440331, 32.112988, 24.454752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574375, 31.736696, 24.475660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169170, 0.005497, -0.985572,
		0.926868, 0.339116, 0.160985,
		0.335108, -0.940728, 0.052273,
		35.674908, 31.454477, 24.491343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128929, 32.021603, 24.146065>,  <35.440331, 32.112988, 24.454752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128929, 32.021603, 24.146065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998901, 31.643408, 24.153858>,  <35.920883, 31.416491, 24.158535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998901, 31.643408, 24.153858>,  <36.128929, 32.021603, 24.146065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998901, 31.643408, 24.153858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280563, -0.116097, -0.952788,
		0.903113, -0.304256, 0.303009,
		-0.325070, -0.945489, 0.019486,
		35.901379, 31.359760, 24.159704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662609, 31.638489, 23.916862>,  <36.128929, 32.021603, 24.146065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662609, 31.638489, 23.916862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342865, 31.403702, 23.865484>,  <36.151020, 31.262831, 23.834658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342865, 31.403702, 23.865484>,  <36.662609, 31.638489, 23.916862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342865, 31.403702, 23.865484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365432, -0.305229, -0.879372,
		0.476956, -0.749871, 0.458483,
		-0.799357, -0.586966, -0.128446,
		36.103058, 31.227612, 23.826950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885979, 31.072048, 23.621550>,  <36.662609, 31.638489, 23.916862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885979, 31.072048, 23.621550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493595, 31.032621, 23.554615>,  <36.258163, 31.008966, 23.514454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493595, 31.032621, 23.554615>,  <36.885979, 31.072048, 23.621550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493595, 31.032621, 23.554615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188366, -0.273119, -0.943358,
		0.047280, -0.956917, 0.286485,
		-0.980960, -0.098566, -0.167338,
		36.199306, 31.003052, 23.504414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915092, 30.464998, 23.077129>,  <36.885979, 31.072048, 23.621550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915092, 30.464998, 23.077129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545391, 30.612757, 23.038565>,  <36.323570, 30.701412, 23.015425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545391, 30.612757, 23.038565>,  <36.915092, 30.464998, 23.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545391, 30.612757, 23.038565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069839, -0.411876, -0.908560,
		-0.375328, -0.833010, 0.406477,
		-0.924258, 0.369396, -0.096412,
		36.268112, 30.723576, 23.009642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444584, 29.961136, 22.788403>,  <36.915092, 30.464998, 23.077129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444584, 29.961136, 22.788403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266682, 30.311768, 22.714870>,  <36.159939, 30.522146, 22.670752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266682, 30.311768, 22.714870>,  <36.444584, 29.961136, 22.788403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266682, 30.311768, 22.714870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131259, -0.266826, -0.954764,
		-0.885979, -0.400512, 0.233733,
		-0.444760, 0.876581, -0.183831,
		36.133255, 30.574741, 22.659721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965958, 29.735399, 22.309977>,  <36.444584, 29.961136, 22.788403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965958, 29.735399, 22.309977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047665, 30.124233, 22.263807>,  <36.096691, 30.357534, 22.236105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047665, 30.124233, 22.263807>,  <35.965958, 29.735399, 22.309977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047665, 30.124233, 22.263807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273180, -0.169832, -0.946853,
		-0.940024, 0.161884, -0.300247,
		0.204272, 0.972086, -0.115423,
		36.108948, 30.415859, 22.229181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758312, 29.915829, 21.608446>,  <35.965958, 29.735399, 22.309977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758312, 29.915829, 21.608446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995308, 30.214930, 21.728329>,  <36.137505, 30.394390, 21.800259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995308, 30.214930, 21.728329>,  <35.758312, 29.915829, 21.608446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995308, 30.214930, 21.728329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334412, 0.110167, -0.935966,
		-0.732887, 0.654776, -0.184784,
		0.592491, 0.747751, 0.299705,
		36.173054, 30.439255, 21.818241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790359, 30.408731, 21.158571>,  <35.758312, 29.915829, 21.608446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790359, 30.408731, 21.158571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150753, 30.470863, 21.320608>,  <36.366989, 30.508142, 21.417830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150753, 30.470863, 21.320608>,  <35.790359, 30.408731, 21.158571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150753, 30.470863, 21.320608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359456, 0.255576, -0.897481,
		-0.242939, 0.954229, 0.174435,
		0.900984, 0.155331, 0.405092,
		36.421047, 30.517462, 21.442137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988258, 31.101574, 20.904657>,  <35.790359, 30.408731, 21.158571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988258, 31.101574, 20.904657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333439, 30.942631, 21.029510>,  <36.540546, 30.847263, 21.104422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333439, 30.942631, 21.029510>,  <35.988258, 31.101574, 20.904657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333439, 30.942631, 21.029510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452840, 0.334112, -0.826623,
		0.224180, 0.854678, 0.468262,
		0.862948, -0.397360, 0.312131,
		36.592323, 30.823423, 21.123150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422306, 31.522326, 20.579981>,  <35.988258, 31.101574, 20.904657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422306, 31.522326, 20.579981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665241, 31.227304, 20.698074>,  <36.811001, 31.050291, 20.768930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665241, 31.227304, 20.698074>,  <36.422306, 31.522326, 20.579981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665241, 31.227304, 20.698074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606734, 0.190716, -0.771688,
		0.512855, 0.647799, 0.563326,
		0.607333, -0.737553, 0.295232,
		36.847443, 31.006039, 20.786644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085129, 31.811296, 20.598717>,  <36.422306, 31.522326, 20.579981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085129, 31.811296, 20.598717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148689, 31.418709, 20.555887>,  <37.186825, 31.183155, 20.530190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148689, 31.418709, 20.555887>,  <37.085129, 31.811296, 20.598717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148689, 31.418709, 20.555887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584400, 0.180913, -0.791042,
		0.795756, 0.063124, 0.602319,
		0.158901, -0.981471, -0.107073,
		37.196358, 31.124268, 20.523766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736240, 31.703701, 20.485056>,  <37.085129, 31.811296, 20.598717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736240, 31.703701, 20.485056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585510, 31.367304, 20.329758>,  <37.495071, 31.165466, 20.236578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585510, 31.367304, 20.329758>,  <37.736240, 31.703701, 20.485056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585510, 31.367304, 20.329758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659298, 0.050902, -0.750157,
		0.650639, -0.538646, 0.535284,
		-0.376822, -0.840993, -0.388247,
		37.472462, 31.115005, 20.213284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288391, 31.377369, 20.227543>,  <37.736240, 31.703701, 20.485056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288391, 31.377369, 20.227543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001320, 31.159088, 20.054501>,  <37.829079, 31.028118, 19.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001320, 31.159088, 20.054501>,  <38.288391, 31.377369, 20.227543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001320, 31.159088, 20.054501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606605, -0.184800, -0.773227,
		0.342009, -0.817347, 0.463654,
		-0.717677, -0.545705, -0.432603,
		37.786018, 30.995377, 19.924719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455566, 30.674427, 20.148029>,  <38.288391, 31.377369, 20.227543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455566, 30.674427, 20.148029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193062, 30.759663, 19.858501>,  <38.035561, 30.810804, 19.684786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193062, 30.759663, 19.858501>,  <38.455566, 30.674427, 20.148029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193062, 30.759663, 19.858501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713899, -0.135207, -0.687072,
		-0.244274, -0.967632, -0.063395,
		-0.656261, 0.213091, -0.723819,
		37.996185, 30.823589, 19.641356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532032, 30.201435, 19.692480>,  <38.455566, 30.674427, 20.148029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532032, 30.201435, 19.692480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359066, 30.498823, 19.488413>,  <38.255287, 30.677256, 19.365973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359066, 30.498823, 19.488413>,  <38.532032, 30.201435, 19.692480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359066, 30.498823, 19.488413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607997, -0.177406, -0.773865,
		-0.665852, -0.644810, -0.375315,
		-0.432413, 0.743470, -0.510168,
		38.229343, 30.721865, 19.335361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251965, 29.845682, 18.969231>,  <38.532032, 30.201435, 19.692480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251965, 29.845682, 18.969231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267231, 30.241064, 18.910574>,  <38.276390, 30.478292, 18.875380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267231, 30.241064, 18.910574>,  <38.251965, 29.845682, 18.969231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267231, 30.241064, 18.910574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317185, -0.151142, -0.936242,
		-0.947595, -0.010777, -0.319291,
		0.038168, 0.988453, -0.146640,
		38.278683, 30.537600, 18.866583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821865, 30.143209, 18.368082>,  <38.251965, 29.845682, 18.969231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821865, 30.143209, 18.368082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144680, 30.370241, 18.433258>,  <38.338367, 30.506460, 18.472363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144680, 30.370241, 18.433258>,  <37.821865, 30.143209, 18.368082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144680, 30.370241, 18.433258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223226, -0.037779, -0.974034,
		-0.546684, 0.822453, -0.157187,
		0.807036, 0.567578, 0.162939,
		38.386791, 30.540514, 18.482140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872822, 30.597757, 17.790869>,  <37.821865, 30.143209, 18.368082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872822, 30.597757, 17.790869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235474, 30.545589, 17.951376>,  <38.453064, 30.514288, 18.047680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235474, 30.545589, 17.951376>,  <37.872822, 30.597757, 17.790869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235474, 30.545589, 17.951376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414016, 0.091649, -0.905644,
		0.081340, 0.987214, 0.137088,
		0.906628, -0.130422, 0.401267,
		38.507462, 30.506462, 18.071756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244286, 30.971022, 17.342829>,  <37.872822, 30.597757, 17.790869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244286, 30.971022, 17.342829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522865, 30.744022, 17.518513>,  <38.690014, 30.607822, 17.623922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522865, 30.744022, 17.518513>,  <38.244286, 30.971022, 17.342829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522865, 30.744022, 17.518513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551889, 0.032376, -0.833289,
		0.458671, 0.822737, 0.335745,
		0.696447, -0.567499, 0.439210,
		38.731800, 30.573772, 17.650276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888191, 31.300766, 17.273361>,  <38.244286, 30.971022, 17.342829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888191, 31.300766, 17.273361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890491, 30.900991, 17.286566>,  <38.891872, 30.661127, 17.294489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890491, 30.900991, 17.286566>,  <38.888191, 31.300766, 17.273361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890491, 30.900991, 17.286566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446353, -0.026977, -0.894450,
		0.894839, 0.019876, 0.445947,
		0.005748, -0.999438, 0.033012,
		38.892216, 30.601160, 17.296469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563972, 31.031363, 17.256329>,  <38.888191, 31.300766, 17.273361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563972, 31.031363, 17.256329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309929, 30.761955, 17.105061>,  <39.157505, 30.600311, 17.014299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309929, 30.761955, 17.105061>,  <39.563972, 31.031363, 17.256329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309929, 30.761955, 17.105061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461503, 0.061725, -0.884989,
		0.619398, -0.736590, 0.271628,
		-0.635107, -0.673517, -0.378171,
		39.119396, 30.559900, 16.991610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248920, 30.876495, 17.546677>,  <39.563972, 31.031363, 17.256329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248920, 30.876495, 17.546677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519367, 31.083683, 17.756275>,  <40.681637, 31.207996, 17.882034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519367, 31.083683, 17.756275>,  <40.248920, 30.876495, 17.546677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519367, 31.083683, 17.756275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613145, 0.789903, 0.010332,
		-0.408554, -0.328270, 0.851659,
		0.676119, 0.517969, 0.523995,
		40.722202, 31.239075, 17.913473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930412, 31.057043, 18.136265>,  <40.248920, 30.876495, 17.546677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930412, 31.057043, 18.136265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209717, 31.328783, 18.046007>,  <40.377300, 31.491827, 17.991852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209717, 31.328783, 18.046007>,  <39.930412, 31.057043, 18.136265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209717, 31.328783, 18.046007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707684, 0.702569, -0.074696,
		0.107787, 0.211843, 0.971341,
		0.698259, 0.679351, -0.225646,
		40.419193, 31.532589, 17.978313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803085, 31.487446, 18.534407>,  <39.930412, 31.057043, 18.136265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803085, 31.487446, 18.534407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005280, 31.698582, 18.261389>,  <40.126598, 31.825264, 18.097578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005280, 31.698582, 18.261389>,  <39.803085, 31.487446, 18.534407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005280, 31.698582, 18.261389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728180, 0.685323, -0.009297,
		0.462854, 0.501714, 0.730787,
		0.505489, 0.527841, -0.682542,
		40.156925, 31.856934, 18.056625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071457, 32.098408, 18.731516>,  <39.803085, 31.487446, 18.534407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071457, 32.098408, 18.731516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961155, 32.142677, 18.349581>,  <39.894974, 32.169239, 18.120420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961155, 32.142677, 18.349581>,  <40.071457, 32.098408, 18.731516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961155, 32.142677, 18.349581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625613, 0.733496, 0.265691,
		0.729773, 0.670623, -0.133027,
		-0.275754, 0.110671, -0.954836,
		39.878429, 32.175880, 18.063129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145412, 32.834999, 18.516499>,  <40.071457, 32.098408, 18.731516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145412, 32.834999, 18.516499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842342, 32.685440, 18.302534>,  <39.660500, 32.595707, 18.174156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842342, 32.685440, 18.302534>,  <40.145412, 32.834999, 18.516499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842342, 32.685440, 18.302534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592225, 0.738284, 0.322811,
		0.274219, 0.561373, -0.780810,
		-0.757676, -0.373894, -0.534911,
		39.615040, 32.573273, 18.142061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807438, 33.467056, 18.313442>,  <40.145412, 32.834999, 18.516499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807438, 33.467056, 18.313442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583076, 33.138611, 18.355684>,  <39.448460, 32.941544, 18.381029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583076, 33.138611, 18.355684>,  <39.807438, 33.467056, 18.313442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583076, 33.138611, 18.355684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680787, 0.530061, 0.505533,
		-0.471079, 0.211661, -0.856320,
		-0.560904, -0.821118, 0.105605,
		39.414806, 32.892277, 18.387365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041004, 33.596161, 18.094868>,  <39.807438, 33.467056, 18.313442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041004, 33.596161, 18.094868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066441, 33.288666, 18.349424>,  <39.081703, 33.104168, 18.502157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066441, 33.288666, 18.349424>,  <39.041004, 33.596161, 18.094868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066441, 33.288666, 18.349424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731166, 0.398122, 0.553980,
		-0.679229, -0.500534, -0.536763,
		0.063589, -0.768742, 0.636389,
		39.085518, 33.058044, 18.540340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437698, 33.440434, 18.263659>,  <39.041004, 33.596161, 18.094868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437698, 33.440434, 18.263659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610619, 33.251205, 18.570726>,  <38.714371, 33.137669, 18.754967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610619, 33.251205, 18.570726>,  <38.437698, 33.440434, 18.263659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610619, 33.251205, 18.570726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785367, 0.220779, 0.578321,
		-0.443071, -0.852914, -0.276089,
		0.432303, -0.473069, 0.767672,
		38.740311, 33.109283, 18.801027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910286, 33.105545, 18.596769>,  <38.437698, 33.440434, 18.263659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910286, 33.105545, 18.596769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200665, 33.075886, 18.870264>,  <38.374893, 33.058090, 19.034361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200665, 33.075886, 18.870264>,  <37.910286, 33.105545, 18.596769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200665, 33.075886, 18.870264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659987, 0.204497, 0.722909,
		-0.193422, -0.976055, 0.099520,
		0.725951, -0.074145, 0.683738,
		38.418449, 33.053642, 19.075386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594330, 32.638821, 19.209223>,  <37.910286, 33.105545, 18.596769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594330, 32.638821, 19.209223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877323, 32.882359, 19.352764>,  <38.047119, 33.028481, 19.438889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877323, 32.882359, 19.352764>,  <37.594330, 32.638821, 19.209223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877323, 32.882359, 19.352764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625214, 0.302445, 0.719468,
		0.329520, -0.733364, 0.594637,
		0.707477, 0.608855, 0.358848,
		38.089569, 33.065014, 19.460421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540489, 32.555225, 19.853622>,  <37.594330, 32.638821, 19.209223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540489, 32.555225, 19.853622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756279, 32.890900, 19.881123>,  <37.885754, 33.092304, 19.897623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756279, 32.890900, 19.881123>,  <37.540489, 32.555225, 19.853622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756279, 32.890900, 19.881123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606112, 0.330368, 0.723523,
		0.584460, -0.431993, 0.686868,
		0.539476, 0.839189, 0.068750,
		37.918121, 33.142658, 19.901747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502163, 32.618332, 20.535313>,  <37.540489, 32.555225, 19.853622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502163, 32.618332, 20.535313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627609, 32.975071, 20.404928>,  <37.702877, 33.189114, 20.326698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627609, 32.975071, 20.404928>,  <37.502163, 32.618332, 20.535313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627609, 32.975071, 20.404928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474812, 0.444574, 0.759544,
		0.822312, -0.083438, 0.562887,
		0.313620, 0.891848, -0.325961,
		37.721695, 33.242626, 20.307140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039974, 32.997417, 20.910280>,  <37.502163, 32.618332, 20.535313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039974, 32.997417, 20.910280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845066, 33.287514, 20.715715>,  <37.728123, 33.461571, 20.598976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845066, 33.287514, 20.715715>,  <38.039974, 32.997417, 20.910280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845066, 33.287514, 20.715715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372966, 0.330815, 0.866866,
		0.789599, 0.603812, 0.109294,
		-0.487268, 0.725240, -0.486413,
		37.698887, 33.505085, 20.569792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301231, 33.577557, 21.174671>,  <38.039974, 32.997417, 20.910280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301231, 33.577557, 21.174671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943401, 33.656513, 21.014288>,  <37.728703, 33.703888, 20.918058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943401, 33.656513, 21.014288>,  <38.301231, 33.577557, 21.174671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943401, 33.656513, 21.014288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316159, 0.354588, 0.879949,
		0.315868, 0.913950, -0.254800,
		-0.894579, 0.197391, -0.400956,
		37.675026, 33.715729, 20.894001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201866, 34.223721, 21.392252>,  <38.301231, 33.577557, 21.174671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201866, 34.223721, 21.392252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837837, 34.107533, 21.274004>,  <37.619419, 34.037819, 21.203054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837837, 34.107533, 21.274004>,  <38.201866, 34.223721, 21.392252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837837, 34.107533, 21.274004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392968, 0.378148, 0.838201,
		-0.131684, 0.878995, -0.458288,
		-0.910074, -0.290470, -0.295621,
		37.564816, 34.020390, 21.185318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703053, 34.814217, 21.557413>,  <38.201866, 34.223721, 21.392252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703053, 34.814217, 21.557413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502525, 34.468662, 21.537891>,  <37.382210, 34.261330, 21.526178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502525, 34.468662, 21.537891>,  <37.703053, 34.814217, 21.557413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502525, 34.468662, 21.537891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438475, 0.205013, 0.875048,
		-0.745936, 0.460077, -0.481569,
		-0.501317, -0.863886, -0.048806,
		37.352131, 34.209496, 21.523249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119282, 35.052521, 21.825104>,  <37.703053, 34.814217, 21.557413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119282, 35.052521, 21.825104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084579, 34.654049, 21.821098>,  <37.063759, 34.414967, 21.818695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084579, 34.654049, 21.821098>,  <37.119282, 35.052521, 21.825104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084579, 34.654049, 21.821098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610609, 0.045226, 0.790640,
		-0.787166, 0.074704, -0.612200,
		-0.086751, -0.996180, -0.010015,
		37.058556, 34.355194, 21.818094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401039, 34.929668, 21.880072>,  <37.119282, 35.052521, 21.825104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401039, 34.929668, 21.880072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608387, 34.620163, 22.025715>,  <36.732796, 34.434460, 22.113100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608387, 34.620163, 22.025715>,  <36.401039, 34.929668, 21.880072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608387, 34.620163, 22.025715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534155, 0.039526, 0.844462,
		-0.667810, -0.632235, -0.392822,
		0.518371, -0.773768, 0.364107,
		36.763897, 34.388031, 22.134947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954521, 34.452160, 22.072016>,  <36.401039, 34.929668, 21.880072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954521, 34.452160, 22.072016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252140, 34.346119, 22.317327>,  <36.430710, 34.282494, 22.464514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252140, 34.346119, 22.317327>,  <35.954521, 34.452160, 22.072016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252140, 34.346119, 22.317327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649807, -0.073669, 0.756521,
		-0.155379, -0.961401, -0.227081,
		0.744049, -0.265106, 0.613279,
		36.475353, 34.266586, 22.501310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663879, 33.999474, 22.628187>,  <35.954521, 34.452160, 22.072016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663879, 33.999474, 22.628187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031929, 34.057983, 22.773504>,  <36.252758, 34.093090, 22.860695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031929, 34.057983, 22.773504>,  <35.663879, 33.999474, 22.628187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031929, 34.057983, 22.773504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372889, 0.043643, 0.926849,
		0.119728, -0.988279, 0.094704,
		0.920119, 0.146284, 0.363293,
		36.307964, 34.101868, 22.882492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819683, 33.545502, 23.173634>,  <35.663879, 33.999474, 22.628187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819683, 33.545502, 23.173634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056728, 33.862469, 23.231443>,  <36.198956, 34.052647, 23.266130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056728, 33.862469, 23.231443>,  <35.819683, 33.545502, 23.173634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056728, 33.862469, 23.231443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419935, 0.150828, 0.894933,
		0.687359, -0.591043, 0.422145,
		0.592615, 0.792414, 0.144527,
		36.234512, 34.100193, 23.274801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977280, 33.499516, 23.907782>,  <35.819683, 33.545502, 23.173634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977280, 33.499516, 23.907782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086788, 33.871353, 23.809071>,  <36.152493, 34.094456, 23.749844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086788, 33.871353, 23.809071>,  <35.977280, 33.499516, 23.907782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086788, 33.871353, 23.809071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163024, 0.297717, 0.940631,
		0.947878, -0.217288, 0.233053,
		0.273772, 0.929597, -0.246776,
		36.168919, 34.150230, 23.735037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470490, 33.724651, 24.390417>,  <35.977280, 33.499516, 23.907782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470490, 33.724651, 24.390417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314476, 34.065811, 24.251600>,  <36.220867, 34.270508, 24.168310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314476, 34.065811, 24.251600>,  <36.470490, 33.724651, 24.390417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314476, 34.065811, 24.251600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276447, 0.251042, 0.927661,
		0.878325, 0.457754, 0.137869,
		-0.390030, 0.852901, -0.347041,
		36.197468, 34.321682, 24.147488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507805, 34.185925, 24.969515>,  <36.470490, 33.724651, 24.390417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507805, 34.185925, 24.969515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240849, 34.366314, 24.732462>,  <36.080673, 34.474548, 24.590231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240849, 34.366314, 24.732462>,  <36.507805, 34.185925, 24.969515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240849, 34.366314, 24.732462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530982, 0.269812, 0.803281,
		0.522155, 0.850780, 0.059387,
		-0.667392, 0.450971, -0.592633,
		36.040630, 34.501606, 24.554672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501835, 34.843403, 25.308994>,  <36.507805, 34.185925, 24.969515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501835, 34.843403, 25.308994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175976, 34.791832, 25.082813>,  <35.980461, 34.760891, 24.947105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175976, 34.791832, 25.082813>,  <36.501835, 34.843403, 25.308994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175976, 34.791832, 25.082813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573614, 0.322976, 0.752764,
		0.085576, 0.937585, -0.337063,
		-0.814643, -0.128926, -0.565451,
		35.931583, 34.753155, 24.913177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136604, 35.518589, 25.304327>,  <36.501835, 34.843403, 25.308994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136604, 35.518589, 25.304327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853161, 35.254429, 25.204939>,  <35.683094, 35.095932, 25.145306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853161, 35.254429, 25.204939>,  <36.136604, 35.518589, 25.304327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853161, 35.254429, 25.204939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596379, 0.372362, 0.711111,
		-0.377100, 0.652083, -0.657710,
		-0.708610, -0.660405, -0.248470,
		35.640579, 35.056309, 25.130398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518169, 35.881462, 25.297094>,  <36.136604, 35.518589, 25.304327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518169, 35.881462, 25.297094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381676, 35.508675, 25.346073>,  <35.299778, 35.285004, 25.375460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381676, 35.508675, 25.346073>,  <35.518169, 35.881462, 25.297094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381676, 35.508675, 25.346073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626816, 0.322685, 0.709208,
		-0.700470, 0.165258, -0.694285,
		-0.341238, -0.931968, 0.122445,
		35.279305, 35.229084, 25.382807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790390, 35.937115, 25.212961>,  <35.518169, 35.881462, 25.297094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790390, 35.937115, 25.212961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873592, 35.601879, 25.414692>,  <34.923512, 35.400738, 25.535730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873592, 35.601879, 25.414692>,  <34.790390, 35.937115, 25.212961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873592, 35.601879, 25.414692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623104, 0.283910, 0.728791,
		-0.753974, -0.465837, -0.463162,
		0.208001, -0.838087, 0.504326,
		34.935993, 35.350452, 25.565990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176437, 35.771229, 25.484478>,  <34.790390, 35.937115, 25.212961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176437, 35.771229, 25.484478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426292, 35.552612, 25.707594>,  <34.576206, 35.421444, 25.841463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426292, 35.552612, 25.707594>,  <34.176437, 35.771229, 25.484478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426292, 35.552612, 25.707594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520662, 0.240876, 0.819079,
		-0.582016, -0.802044, -0.134102,
		0.624635, -0.546538, 0.557787,
		34.613682, 35.388653, 25.874929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762428, 35.220558, 25.728491>,  <34.176437, 35.771229, 25.484478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762428, 35.220558, 25.728491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067039, 35.292664, 25.977512>,  <34.249805, 35.335926, 26.126926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067039, 35.292664, 25.977512>,  <33.762428, 35.220558, 25.728491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067039, 35.292664, 25.977512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647918, 0.236172, 0.724172,
		-0.016488, -0.954844, 0.296648,
		0.761532, 0.180264, 0.622555,
		34.295498, 35.346745, 26.164278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498802, 35.056324, 26.364771>,  <33.762428, 35.220558, 25.728491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498802, 35.056324, 26.364771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820892, 35.254906, 26.494474>,  <34.014145, 35.374054, 26.572296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820892, 35.254906, 26.494474>,  <33.498802, 35.056324, 26.364771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820892, 35.254906, 26.494474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520240, 0.329066, 0.788077,
		0.284539, -0.803275, 0.523247,
		0.805226, 0.496453, 0.324264,
		34.062458, 35.403843, 26.591753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555557, 34.697643, 27.054365>,  <33.498802, 35.056324, 26.364771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555557, 34.697643, 27.054365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773365, 35.033012, 27.044966>,  <33.904049, 35.234234, 27.039326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773365, 35.033012, 27.044966>,  <33.555557, 34.697643, 27.054365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773365, 35.033012, 27.044966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210664, 0.163828, 0.963733,
		0.811865, -0.519816, 0.265832,
		0.544515, 0.838422, -0.023500,
		33.936718, 35.284538, 27.037916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993412, 34.768734, 27.622435>,  <33.555557, 34.697643, 27.054365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993412, 34.768734, 27.622435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961296, 35.150166, 27.506332>,  <33.942024, 35.379025, 27.436672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961296, 35.150166, 27.506332>,  <33.993412, 34.768734, 27.622435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961296, 35.150166, 27.506332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436942, 0.228054, 0.870099,
		0.895899, 0.196686, 0.398347,
		-0.080292, 0.953575, -0.290254,
		33.937210, 35.436237, 27.419256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326920, 35.094460, 28.130775>,  <33.993412, 34.768734, 27.622435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326920, 35.094460, 28.130775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098103, 35.372066, 27.955914>,  <33.960812, 35.538631, 27.850996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098103, 35.372066, 27.955914>,  <34.326920, 35.094460, 28.130775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098103, 35.372066, 27.955914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211607, 0.390058, 0.896146,
		0.792457, 0.605140, -0.076272,
		-0.572044, 0.694018, -0.437156,
		33.926491, 35.580273, 27.824766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466881, 35.792450, 28.397278>,  <34.326920, 35.094460, 28.130775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466881, 35.792450, 28.397278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093590, 35.816525, 28.255594>,  <33.869614, 35.830971, 28.170584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093590, 35.816525, 28.255594>,  <34.466881, 35.792450, 28.397278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093590, 35.816525, 28.255594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346510, 0.109778, 0.931600,
		0.094958, 0.992132, -0.081591,
		-0.933227, 0.060191, -0.354208,
		33.813622, 35.834583, 28.149332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199501, 36.426422, 28.717026>,  <34.466881, 35.792450, 28.397278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199501, 36.426422, 28.717026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879333, 36.220005, 28.595024>,  <33.687233, 36.096153, 28.521824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879333, 36.220005, 28.595024>,  <34.199501, 36.426422, 28.717026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879333, 36.220005, 28.595024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480193, 0.247421, 0.841545,
		-0.358812, 0.820048, -0.445842,
		-0.800418, -0.516046, -0.305004,
		33.639210, 36.065189, 28.503523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570435, 36.831257, 28.982492>,  <34.199501, 36.426422, 28.717026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570435, 36.831257, 28.982492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434704, 36.459244, 28.926065>,  <33.353264, 36.236038, 28.892208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434704, 36.459244, 28.926065>,  <33.570435, 36.831257, 28.982492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434704, 36.459244, 28.926065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463507, 0.034815, 0.885409,
		-0.818545, 0.365833, -0.442889,
		-0.339331, -0.930029, -0.141069,
		33.332905, 36.180237, 28.883745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869518, 36.896233, 29.284555>,  <33.570435, 36.831257, 28.982492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869518, 36.896233, 29.284555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962120, 36.508469, 29.251949>,  <33.017681, 36.275810, 29.232386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962120, 36.508469, 29.251949>,  <32.869518, 36.896233, 29.284555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962120, 36.508469, 29.251949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361144, -0.163441, 0.918075,
		-0.903316, -0.183102, -0.387935,
		0.231506, -0.969412, -0.081513,
		33.031570, 36.217644, 29.227495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336910, 36.605057, 29.509584>,  <32.869518, 36.896233, 29.284555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336910, 36.605057, 29.509584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630489, 36.334652, 29.535919>,  <32.806637, 36.172409, 29.551720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630489, 36.334652, 29.535919>,  <32.336910, 36.605057, 29.509584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630489, 36.334652, 29.535919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202735, -0.125525, 0.971155,
		-0.648248, -0.726121, -0.229179,
		0.733944, -0.676012, 0.065839,
		32.850674, 36.131847, 29.555672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112480, 36.204903, 30.090082>,  <32.336910, 36.605057, 29.509584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112480, 36.204903, 30.090082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484581, 36.068726, 30.035330>,  <32.707840, 35.987019, 30.002478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484581, 36.068726, 30.035330>,  <32.112480, 36.204903, 30.090082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484581, 36.068726, 30.035330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031329, -0.297989, 0.954055,
		-0.365589, -0.891797, -0.266538,
		0.930249, -0.340441, -0.136881,
		32.763657, 35.966595, 29.994267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121708, 35.582970, 30.415112>,  <32.112480, 36.204903, 30.090082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121708, 35.582970, 30.415112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488907, 35.740292, 30.394707>,  <32.709225, 35.834682, 30.382463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488907, 35.740292, 30.394707>,  <32.121708, 35.582970, 30.415112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488907, 35.740292, 30.394707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130768, -0.178743, 0.975167,
		0.374417, -0.901868, -0.215516,
		0.917993, 0.393302, -0.051011,
		32.764305, 35.858280, 30.379404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557869, 35.108601, 30.744816>,  <32.121708, 35.582970, 30.415112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557869, 35.108601, 30.744816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752399, 35.456944, 30.773375>,  <32.869118, 35.665947, 30.790510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752399, 35.456944, 30.773375>,  <32.557869, 35.108601, 30.744816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752399, 35.456944, 30.773375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055841, -0.112518, 0.992079,
		0.871991, -0.478488, -0.103349,
		0.486327, 0.870855, 0.071395,
		32.898296, 35.718201, 30.794794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018959, 35.010830, 31.287441>,  <32.557869, 35.108601, 30.744816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018959, 35.010830, 31.287441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999798, 35.407398, 31.238800>,  <32.988300, 35.645340, 31.209616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999798, 35.407398, 31.238800>,  <33.018959, 35.010830, 31.287441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999798, 35.407398, 31.238800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044621, 0.123746, 0.991310,
		0.997855, 0.042057, -0.050165,
		-0.047900, 0.991422, -0.121603,
		32.985428, 35.704826, 31.202318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440941, 35.336887, 31.908466>,  <33.018959, 35.010830, 31.287441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440941, 35.336887, 31.908466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204346, 35.610214, 31.737247>,  <33.062389, 35.774212, 31.634516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204346, 35.610214, 31.737247>,  <33.440941, 35.336887, 31.908466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204346, 35.610214, 31.737247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096204, 0.467268, 0.878866,
		0.800555, 0.561017, -0.210644,
		-0.591486, 0.683316, -0.428046,
		33.026901, 35.815208, 31.608833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640072, 35.835842, 32.232224>,  <33.440941, 35.336887, 31.908466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640072, 35.835842, 32.232224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289421, 35.961800, 32.086693>,  <33.079033, 36.037373, 31.999372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289421, 35.961800, 32.086693>,  <33.640072, 35.835842, 32.232224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289421, 35.961800, 32.086693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194079, 0.460503, 0.866182,
		0.440301, 0.829927, -0.342573,
		-0.876623, 0.314895, -0.363831,
		33.026436, 36.056267, 31.977543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824894, 36.065208, 31.597485>,  <33.640072, 35.835842, 32.232224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824894, 36.065208, 31.597485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066307, 36.293198, 31.820509>,  <34.211155, 36.429993, 31.954323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066307, 36.293198, 31.820509>,  <33.824894, 36.065208, 31.597485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066307, 36.293198, 31.820509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729372, -0.112159, -0.674861,
		-0.322117, 0.813972, -0.483415,
		0.603537, 0.569973, 0.557560,
		34.247368, 36.464191, 31.987778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130939, 36.642094, 31.204893>,  <33.824894, 36.065208, 31.597485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130939, 36.642094, 31.204893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379375, 36.606655, 31.516378>,  <34.528439, 36.585392, 31.703270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379375, 36.606655, 31.516378>,  <34.130939, 36.642094, 31.204893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379375, 36.606655, 31.516378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782820, 0.022052, -0.621857,
		0.037924, 0.995823, 0.083053,
		0.621091, -0.088599, 0.778714,
		34.565704, 36.580074, 31.749992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611248, 37.166283, 31.092960>,  <34.130939, 36.642094, 31.204893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611248, 37.166283, 31.092960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781075, 36.905621, 31.344383>,  <34.882969, 36.749222, 31.495237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781075, 36.905621, 31.344383>,  <34.611248, 37.166283, 31.092960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781075, 36.905621, 31.344383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729048, -0.165597, -0.664128,
		0.536873, 0.740215, 0.404784,
		0.424566, -0.651659, 0.628557,
		34.908443, 36.710121, 31.532949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320065, 37.385479, 31.137018>,  <34.611248, 37.166283, 31.092960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320065, 37.385479, 31.137018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307938, 37.007488, 31.267307>,  <35.300663, 36.780693, 31.345482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307938, 37.007488, 31.267307>,  <35.320065, 37.385479, 31.137018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307938, 37.007488, 31.267307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757992, -0.234158, -0.608784,
		0.651559, 0.228442, 0.723384,
		-0.030315, -0.944978, 0.325725,
		35.298843, 36.723995, 31.365025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007812, 37.266563, 31.221199>,  <35.320065, 37.385479, 31.137018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007812, 37.266563, 31.221199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830086, 36.912830, 31.163866>,  <35.723450, 36.700592, 31.129467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830086, 36.912830, 31.163866>,  <36.007812, 37.266563, 31.221199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830086, 36.912830, 31.163866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696583, -0.240419, -0.675996,
		0.563344, -0.400199, 0.722831,
		-0.444315, -0.884330, -0.143333,
		35.696793, 36.647530, 31.120867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568459, 36.843277, 31.214291>,  <36.007812, 37.266563, 31.221199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568459, 36.843277, 31.214291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269978, 36.641445, 31.040585>,  <36.090889, 36.520348, 30.936361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269978, 36.641445, 31.040585>,  <36.568459, 36.843277, 31.214291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269978, 36.641445, 31.040585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627944, -0.316861, -0.710834,
		0.221069, -0.803119, 0.553288,
		-0.746200, -0.504578, -0.434265,
		36.046116, 36.490070, 30.910305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876209, 36.143650, 30.935135>,  <36.568459, 36.843277, 31.214291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876209, 36.143650, 30.935135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538063, 36.228012, 30.738821>,  <36.335175, 36.278629, 30.621033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538063, 36.228012, 30.738821>,  <36.876209, 36.143650, 30.935135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538063, 36.228012, 30.738821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403428, -0.350137, -0.845370,
		-0.350137, -0.912645, 0.210909,
		0.845370, -0.210909, 0.490783,
		36.284451, 36.291286, 30.591587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868839, 35.642387, 30.513086>,  <36.876209, 36.143650, 30.935135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868839, 35.642387, 30.513086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603394, 35.892345, 30.348591>,  <36.444126, 36.042320, 30.249893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603394, 35.892345, 30.348591>,  <36.868839, 35.642387, 30.513086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603394, 35.892345, 30.348591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306622, -0.274216, -0.911476,
		-0.682347, -0.730964, -0.009633,
		-0.663615, 0.624897, -0.411241,
		36.404308, 36.079815, 30.225218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548801, 35.387260, 29.929577>,  <36.868839, 35.642387, 30.513086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548801, 35.387260, 29.929577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479881, 35.769650, 29.834549>,  <36.438530, 35.999081, 29.777533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479881, 35.769650, 29.834549>,  <36.548801, 35.387260, 29.929577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479881, 35.769650, 29.834549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316210, -0.174736, -0.932458,
		-0.932912, -0.235781, -0.272181,
		-0.172296, 0.955968, -0.237570,
		36.428192, 36.056438, 29.763279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303631, 35.319576, 29.325754>,  <36.548801, 35.387260, 29.929577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303631, 35.319576, 29.325754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367661, 35.714146, 29.311052>,  <36.406078, 35.950886, 29.302231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367661, 35.714146, 29.311052>,  <36.303631, 35.319576, 29.325754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367661, 35.714146, 29.311052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224873, -0.072698, -0.971672,
		-0.961149, 0.147277, -0.233457,
		0.160077, 0.986420, -0.036755,
		36.415684, 36.010071, 29.300026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894062, 35.547962, 28.707777>,  <36.303631, 35.319576, 29.325754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894062, 35.547962, 28.707777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183533, 35.801598, 28.816753>,  <36.357216, 35.953777, 28.882139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183533, 35.801598, 28.816753>,  <35.894062, 35.547962, 28.707777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183533, 35.801598, 28.816753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356833, -0.005884, -0.934150,
		-0.590730, 0.773238, -0.230522,
		0.723677, 0.634089, 0.272441,
		36.400635, 35.991825, 28.898485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900784, 36.094334, 28.202835>,  <35.894062, 35.547962, 28.707777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900784, 36.094334, 28.202835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262585, 36.117935, 28.371778>,  <36.479668, 36.132095, 28.473145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262585, 36.117935, 28.371778>,  <35.900784, 36.094334, 28.202835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262585, 36.117935, 28.371778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425363, -0.053865, -0.903418,
		-0.030551, 0.996804, -0.073818,
		0.904507, 0.059000, 0.422358,
		36.533936, 36.135635, 28.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306335, 36.745083, 28.032761>,  <35.900784, 36.094334, 28.202835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306335, 36.745083, 28.032761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552952, 36.441578, 28.116812>,  <36.700920, 36.259476, 28.167242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552952, 36.441578, 28.116812>,  <36.306335, 36.745083, 28.032761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552952, 36.441578, 28.116812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416745, 0.088075, -0.904746,
		0.667981, 0.645384, 0.370513,
		0.616542, -0.758763, 0.210128,
		36.737915, 36.213947, 28.179850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874325, 36.863892, 27.674940>,  <36.306335, 36.745083, 28.032761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874325, 36.863892, 27.674940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969322, 36.484173, 27.757345>,  <37.026321, 36.256344, 27.806787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969322, 36.484173, 27.757345>,  <36.874325, 36.863892, 27.674940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969322, 36.484173, 27.757345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294925, -0.131604, -0.946414,
		0.925536, 0.285524, 0.248716,
		0.237492, -0.949293, 0.206012,
		37.040569, 36.199387, 27.819149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596371, 36.872826, 27.512556>,  <36.874325, 36.863892, 27.674940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596371, 36.872826, 27.512556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454887, 36.498695, 27.509378>,  <37.369999, 36.274220, 27.507473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454887, 36.498695, 27.509378>,  <37.596371, 36.872826, 27.512556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454887, 36.498695, 27.509378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465050, -0.168487, -0.869103,
		0.811553, -0.311103, 0.494567,
		-0.353709, -0.935322, -0.007942,
		37.348774, 36.218098, 27.506996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087551, 36.585857, 27.232111>,  <37.596371, 36.872826, 27.512556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087551, 36.585857, 27.232111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796398, 36.317638, 27.174767>,  <37.621704, 36.156708, 27.140360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796398, 36.317638, 27.174767>,  <38.087551, 36.585857, 27.232111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796398, 36.317638, 27.174767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301208, -0.124849, -0.945350,
		0.615999, -0.731289, 0.292849,
		-0.727886, -0.670543, -0.143363,
		37.578033, 36.116474, 27.131758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392101, 36.073505, 26.963007>,  <38.087551, 36.585857, 27.232111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392101, 36.073505, 26.963007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009354, 36.038162, 26.852303>,  <37.779705, 36.016956, 26.785881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009354, 36.038162, 26.852303>,  <38.392101, 36.073505, 26.963007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009354, 36.038162, 26.852303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280253, -0.029689, -0.959467,
		0.076557, -0.995647, 0.053170,
		-0.956868, -0.088355, -0.276760,
		37.722294, 36.011658, 26.769274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423553, 35.631775, 26.389830>,  <38.392101, 36.073505, 26.963007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423553, 35.631775, 26.389830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043045, 35.754440, 26.376953>,  <37.814739, 35.828041, 26.369226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043045, 35.754440, 26.376953>,  <38.423553, 35.631775, 26.389830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043045, 35.754440, 26.376953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027852, -0.189434, -0.981498,
		-0.307089, -0.932777, 0.188745,
		-0.951273, 0.306664, -0.032193,
		37.757664, 35.846439, 26.367294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138744, 35.128830, 26.123259>,  <38.423553, 35.631775, 26.389830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138744, 35.128830, 26.123259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906788, 35.448391, 26.059399>,  <37.767616, 35.640129, 26.021084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906788, 35.448391, 26.059399>,  <38.138744, 35.128830, 26.123259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906788, 35.448391, 26.059399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004429, -0.192867, -0.981215,
		-0.814685, -0.569701, 0.108302,
		-0.579887, 0.798902, -0.159649,
		37.732822, 35.688061, 26.011503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722050, 34.893089, 25.614288>,  <38.138744, 35.128830, 26.123259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722050, 34.893089, 25.614288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676498, 35.288239, 25.572075>,  <37.649166, 35.525330, 25.546747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676498, 35.288239, 25.572075>,  <37.722050, 34.893089, 25.614288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676498, 35.288239, 25.572075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189052, -0.082735, -0.978476,
		-0.975342, -0.131379, -0.177338,
		-0.113879, 0.987874, -0.105533,
		37.642334, 35.584602, 25.540415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429382, 34.974922, 24.954414>,  <37.722050, 34.893089, 25.614288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429382, 34.974922, 24.954414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580379, 35.335918, 25.037367>,  <37.670979, 35.552517, 25.087139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580379, 35.335918, 25.037367>,  <37.429382, 34.974922, 24.954414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580379, 35.335918, 25.037367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301452, 0.091984, -0.949034,
		-0.875570, 0.420773, -0.237333,
		0.377497, 0.902491, 0.207381,
		37.693630, 35.606667, 25.099581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066902, 35.494938, 24.514843>,  <37.429382, 34.974922, 24.954414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066902, 35.494938, 24.514843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445549, 35.568718, 24.620594>,  <37.672737, 35.612984, 24.684044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445549, 35.568718, 24.620594>,  <37.066902, 35.494938, 24.514843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445549, 35.568718, 24.620594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262158, 0.036763, -0.964324,
		-0.187585, 0.982155, -0.013554,
		0.946618, 0.184446, 0.264376,
		37.729534, 35.624050, 24.699907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418713, 35.961777, 23.950212>,  <37.066902, 35.494938, 24.514843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418713, 35.961777, 23.950212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726284, 35.816681, 24.160801>,  <37.910828, 35.729622, 24.287153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726284, 35.816681, 24.160801>,  <37.418713, 35.961777, 23.950212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726284, 35.816681, 24.160801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507323, -0.154935, -0.847714,
		0.389068, 0.918920, 0.064893,
		0.768927, -0.362740, 0.526470,
		37.956963, 35.707859, 24.318743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001110, 36.069958, 23.506393>,  <37.418713, 35.961777, 23.950212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001110, 36.069958, 23.506393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114063, 35.790791, 23.769655>,  <38.181835, 35.623291, 23.927612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114063, 35.790791, 23.769655>,  <38.001110, 36.069958, 23.506393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114063, 35.790791, 23.769655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454422, -0.506902, -0.732496,
		0.844844, 0.505924, 0.174011,
		0.282381, -0.697919, 0.658156,
		38.198776, 35.581413, 23.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701599, 36.106239, 23.358103>,  <38.001110, 36.069958, 23.506393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701599, 36.106239, 23.358103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602901, 35.754299, 23.520575>,  <38.543682, 35.543137, 23.618057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602901, 35.754299, 23.520575>,  <38.701599, 36.106239, 23.358103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602901, 35.754299, 23.520575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668479, -0.457987, -0.585989,
		0.701607, 0.126933, 0.701167,
		-0.246744, -0.879850, 0.406179,
		38.528877, 35.490345, 23.642427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453720, 35.761688, 23.528702>,  <38.701599, 36.106239, 23.358103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453720, 35.761688, 23.528702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143364, 35.511749, 23.493912>,  <38.957150, 35.361786, 23.473038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143364, 35.511749, 23.493912>,  <39.453720, 35.761688, 23.528702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143364, 35.511749, 23.493912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547160, -0.597878, -0.585796,
		0.314034, -0.502101, 0.805778,
		-0.775886, -0.624849, -0.086976,
		38.910599, 35.324295, 23.467819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829700, 35.186481, 23.477324>,  <39.453720, 35.761688, 23.528702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829700, 35.186481, 23.477324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461319, 35.087708, 23.356752>,  <39.240288, 35.028442, 23.284410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461319, 35.087708, 23.356752>,  <39.829700, 35.186481, 23.477324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461319, 35.087708, 23.356752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383385, -0.712516, -0.587653,
		-0.069657, -0.656766, 0.750870,
		-0.920958, -0.246938, -0.301427,
		39.185032, 35.013626, 23.266325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739494, 34.439163, 23.612818>,  <39.829700, 35.186481, 23.477324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739494, 34.439163, 23.612818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477684, 34.545601, 23.329754>,  <39.320599, 34.609463, 23.159916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477684, 34.545601, 23.329754>,  <39.739494, 34.439163, 23.612818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477684, 34.545601, 23.329754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377006, -0.696457, -0.610585,
		-0.655329, -0.666439, 0.355532,
		-0.654530, 0.266096, -0.707660,
		39.281326, 34.625431, 23.117456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468422, 33.749908, 23.276491>,  <39.739494, 34.439163, 23.612818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468422, 33.749908, 23.276491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359554, 34.023716, 23.005980>,  <39.294235, 34.188000, 22.843672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359554, 34.023716, 23.005980>,  <39.468422, 33.749908, 23.276491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359554, 34.023716, 23.005980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385858, -0.566194, -0.728380,
		-0.881498, -0.459189, -0.110030,
		-0.272166, 0.684522, -0.676281,
		39.277905, 34.229073, 22.803095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311275, 33.385086, 22.655640>,  <39.468422, 33.749908, 23.276491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311275, 33.385086, 22.655640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378147, 33.761242, 22.537165>,  <39.418270, 33.986935, 22.466080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378147, 33.761242, 22.537165>,  <39.311275, 33.385086, 22.655640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378147, 33.761242, 22.537165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375391, -0.338499, -0.862844,
		-0.911665, 0.033064, -0.409602,
		0.167179, 0.940386, -0.296186,
		39.428299, 34.043358, 22.448309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010181, 33.501911, 21.969818>,  <39.311275, 33.385086, 22.655640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010181, 33.501911, 21.969818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270763, 33.803036, 22.007502>,  <39.427113, 33.983711, 22.030111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270763, 33.803036, 22.007502>,  <39.010181, 33.501911, 21.969818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270763, 33.803036, 22.007502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375794, -0.212313, -0.902054,
		-0.659078, 0.623051, -0.421216,
		0.651456, 0.752815, 0.094208,
		39.466202, 34.028881, 22.035765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185955, 33.775036, 21.263788>,  <39.010181, 33.501911, 21.969818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185955, 33.775036, 21.263788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490726, 33.890793, 21.495552>,  <39.673588, 33.960247, 21.634611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490726, 33.890793, 21.495552>,  <39.185955, 33.775036, 21.263788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490726, 33.890793, 21.495552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628636, -0.115205, -0.769119,
		-0.155827, 0.950252, -0.269702,
		0.761928, 0.289394, 0.579410,
		39.719303, 33.977612, 21.669374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529510, 34.108353, 20.828699>,  <39.185955, 33.775036, 21.263788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529510, 34.108353, 20.828699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781494, 33.977932, 21.110647>,  <39.932686, 33.899677, 21.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781494, 33.977932, 21.110647>,  <39.529510, 34.108353, 20.828699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781494, 33.977932, 21.110647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664963, -0.242430, -0.706436,
		0.401219, 0.913737, 0.064094,
		0.629959, -0.326055, 0.704869,
		39.970482, 33.880116, 21.322107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312263, 34.336903, 20.613476>,  <39.529510, 34.108353, 20.828699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312263, 34.336903, 20.613476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340443, 34.050922, 20.891724>,  <40.357349, 33.879333, 21.058672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340443, 34.050922, 20.891724>,  <40.312263, 34.336903, 20.613476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340443, 34.050922, 20.891724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752286, -0.419867, -0.507718,
		0.655060, 0.559072, 0.508267,
		0.070447, -0.714947, 0.695620,
		40.361576, 33.836437, 21.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972389, 34.176079, 20.539244>,  <40.312263, 34.336903, 20.613476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972389, 34.176079, 20.539244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828705, 33.865723, 20.746689>,  <40.742496, 33.679508, 20.871157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828705, 33.865723, 20.746689>,  <40.972389, 34.176079, 20.539244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828705, 33.865723, 20.746689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680887, -0.597922, -0.422944,
		0.638250, 0.201192, 0.743074,
		-0.359207, -0.775893, 0.518613,
		40.720943, 33.632954, 20.902273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571716, 33.828693, 20.778389>,  <40.972389, 34.176079, 20.539244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571716, 33.828693, 20.778389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276131, 33.562195, 20.818478>,  <41.098778, 33.402294, 20.842531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276131, 33.562195, 20.818478>,  <41.571716, 33.828693, 20.778389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276131, 33.562195, 20.818478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530576, -0.667138, -0.522891,
		0.415236, -0.333223, 0.846487,
		-0.738964, -0.666249, 0.100220,
		41.054443, 33.362320, 20.848543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910744, 33.208801, 20.970970>,  <41.571716, 33.828693, 20.778389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910744, 33.208801, 20.970970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558548, 33.076931, 20.834707>,  <41.347229, 32.997810, 20.752951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558548, 33.076931, 20.834707>,  <41.910744, 33.208801, 20.970970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558548, 33.076931, 20.834707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473950, -0.627512, -0.617738,
		-0.010114, -0.705368, 0.708769,
		-0.880494, -0.329673, -0.340656,
		41.294399, 32.978027, 20.732510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774727, 32.570293, 21.270336>,  <41.910744, 33.208801, 20.970970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774727, 32.570293, 21.270336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575813, 32.622326, 20.927223>,  <41.456467, 32.653545, 20.721355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575813, 32.622326, 20.927223>,  <41.774727, 32.570293, 21.270336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575813, 32.622326, 20.927223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427206, -0.823814, -0.372592,
		-0.755118, -0.551734, 0.354100,
		-0.497284, 0.130077, -0.857781,
		41.426628, 32.661350, 20.669889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250778, 32.263081, 20.779156>,  <41.774727, 32.570293, 21.270336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250778, 32.263081, 20.779156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344574, 31.879967, 20.712631>,  <42.400852, 31.650099, 20.672716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344574, 31.879967, 20.712631>,  <42.250778, 32.263081, 20.779156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344574, 31.879967, 20.712631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441163, -0.257297, 0.859752,
		-0.866250, -0.128233, -0.482874,
		0.234491, -0.957786, -0.166312,
		42.414921, 31.592630, 20.662737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635799, 31.807369, 20.915882>,  <42.250778, 32.263081, 20.779156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635799, 31.807369, 20.915882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955597, 31.576265, 20.981615>,  <42.147476, 31.437603, 21.021055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955597, 31.576265, 20.981615>,  <41.635799, 31.807369, 20.915882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955597, 31.576265, 20.981615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446657, -0.388894, 0.805766,
		-0.401637, -0.717600, -0.568980,
		0.799491, -0.577764, 0.164327,
		42.195446, 31.402937, 21.030914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304440, 31.295168, 21.254940>,  <41.635799, 31.807369, 20.915882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304440, 31.295168, 21.254940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689381, 31.234179, 21.344948>,  <41.920345, 31.197584, 21.398952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689381, 31.234179, 21.344948>,  <41.304440, 31.295168, 21.254940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689381, 31.234179, 21.344948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251785, -0.188190, 0.949310,
		-0.102394, -0.970226, -0.219494,
		0.962351, -0.152469, 0.225019,
		41.978085, 31.188437, 21.412453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225628, 30.692154, 21.626890>,  <41.304440, 31.295168, 21.254940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225628, 30.692154, 21.626890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560738, 30.881807, 21.735212>,  <41.761803, 30.995600, 21.800205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560738, 30.881807, 21.735212>,  <41.225628, 30.692154, 21.626890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560738, 30.881807, 21.735212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205346, -0.185965, 0.960859,
		0.505935, -0.860590, -0.058435,
		0.837773, 0.474132, 0.270804,
		41.812069, 31.024048, 21.816454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409954, 30.500587, 22.211687>,  <41.225628, 30.692154, 21.626890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409954, 30.500587, 22.211687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677849, 30.797289, 22.225861>,  <41.838585, 30.975309, 22.234365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677849, 30.797289, 22.225861>,  <41.409954, 30.500587, 22.211687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677849, 30.797289, 22.225861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008636, -0.055494, 0.998422,
		0.742549, -0.668373, -0.043572,
		0.669737, 0.741753, 0.035435,
		41.878769, 31.019815, 22.236490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836769, 30.343290, 22.825739>,  <41.409954, 30.500587, 22.211687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836769, 30.343290, 22.825739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857449, 30.731552, 22.731798>,  <41.869858, 30.964510, 22.675434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857449, 30.731552, 22.731798>,  <41.836769, 30.343290, 22.825739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857449, 30.731552, 22.731798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168336, 0.240272, 0.955998,
		0.984373, -0.009891, 0.175818,
		0.051700, 0.970655, -0.234852,
		41.872959, 31.022749, 22.661343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411961, 30.632462, 23.337799>,  <41.836769, 30.343290, 22.825739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411961, 30.632462, 23.337799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185837, 30.939463, 23.216894>,  <42.050163, 31.123663, 23.144352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185837, 30.939463, 23.216894>,  <42.411961, 30.632462, 23.337799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185837, 30.939463, 23.216894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117036, 0.288094, 0.950423,
		0.816531, 0.572663, -0.073038,
		-0.565314, 0.767502, -0.302260,
		42.016243, 31.169714, 23.126217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644512, 31.214924, 23.749004>,  <42.411961, 30.632462, 23.337799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644512, 31.214924, 23.749004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280136, 31.305286, 23.610926>,  <42.061512, 31.359505, 23.528078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280136, 31.305286, 23.610926>,  <42.644512, 31.214924, 23.749004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280136, 31.305286, 23.610926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298490, 0.216687, 0.929489,
		0.284777, 0.949744, -0.129957,
		-0.910937, 0.225906, -0.345196,
		42.006855, 31.373058, 23.507366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465992, 31.785463, 24.141195>,  <42.644512, 31.214924, 23.749004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465992, 31.785463, 24.141195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119183, 31.672531, 23.976967>,  <41.911098, 31.604773, 23.878429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119183, 31.672531, 23.976967>,  <42.465992, 31.785463, 24.141195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119183, 31.672531, 23.976967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497905, 0.522655, 0.692043,
		0.019203, 0.804439, -0.593725,
		-0.867019, -0.282329, -0.410571,
		41.859077, 31.587833, 23.853796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049126, 32.381969, 24.096920>,  <42.465992, 31.785463, 24.141195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049126, 32.381969, 24.096920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779526, 32.086529, 24.091358>,  <41.617767, 31.909266, 24.088020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779526, 32.086529, 24.091358>,  <42.049126, 32.381969, 24.096920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779526, 32.086529, 24.091358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461269, 0.406074, 0.788882,
		-0.577022, 0.538121, -0.614388,
		-0.674001, -0.738600, -0.013905,
		41.577324, 31.864948, 24.087187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499763, 32.832550, 24.195408>,  <42.049126, 32.381969, 24.096920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499763, 32.832550, 24.195408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414333, 32.455070, 24.296452>,  <41.363075, 32.228580, 24.357077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414333, 32.455070, 24.296452>,  <41.499763, 32.832550, 24.195408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414333, 32.455070, 24.296452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518112, 0.328632, 0.789659,
		-0.828218, 0.037775, -0.559132,
		-0.213578, -0.943702, 0.252608,
		41.350262, 32.171959, 24.372234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824726, 32.670998, 24.201416>,  <41.499763, 32.832550, 24.195408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824726, 32.670998, 24.201416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006306, 32.442722, 24.475130>,  <41.115253, 32.305756, 24.639359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006306, 32.442722, 24.475130>,  <40.824726, 32.670998, 24.201416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006306, 32.442722, 24.475130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564669, 0.409815, 0.716380,
		-0.689259, -0.711595, -0.136213,
		0.453951, -0.570687, 0.684284,
		41.142490, 32.271515, 24.680416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286648, 32.327980, 24.605476>,  <40.824726, 32.670998, 24.201416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286648, 32.327980, 24.605476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637165, 32.359745, 24.795551>,  <40.847477, 32.378803, 24.909595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637165, 32.359745, 24.795551>,  <40.286648, 32.327980, 24.605476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637165, 32.359745, 24.795551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475813, 0.297364, 0.827754,
		-0.075567, -0.951455, 0.298366,
		0.876295, 0.079416, 0.475186,
		40.900055, 32.383572, 24.938107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325043, 31.921886, 25.270136>,  <40.286648, 32.327980, 24.605476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325043, 31.921886, 25.270136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590923, 32.219898, 25.292427>,  <40.750450, 32.398705, 25.305801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590923, 32.219898, 25.292427>,  <40.325043, 31.921886, 25.270136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590923, 32.219898, 25.292427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482635, 0.371263, 0.793239,
		0.570294, -0.554164, 0.606355,
		0.664702, 0.745028, 0.055730,
		40.790333, 32.443405, 25.309147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609150, 31.944906, 25.887924>,  <40.325043, 31.921886, 25.270136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609150, 31.944906, 25.887924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675522, 32.321018, 25.769039>,  <40.715347, 32.546684, 25.697708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675522, 32.321018, 25.769039>,  <40.609150, 31.944906, 25.887924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675522, 32.321018, 25.769039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334560, 0.337194, 0.879983,
		0.927651, -0.046582, 0.370532,
		0.165932, 0.940282, -0.297214,
		40.725300, 32.603104, 25.679874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725018, 32.382599, 26.536625>,  <40.609150, 31.944906, 25.887924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725018, 32.382599, 26.536625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622192, 32.653564, 26.260937>,  <40.560497, 32.816143, 26.095524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622192, 32.653564, 26.260937>,  <40.725018, 32.382599, 26.536625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622192, 32.653564, 26.260937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668954, 0.389969, 0.632791,
		0.697439, 0.623722, 0.352917,
		-0.257059, 0.677418, -0.689221,
		40.545074, 32.856789, 26.054171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861423, 33.081669, 26.848705>,  <40.725018, 32.382599, 26.536625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861423, 33.081669, 26.848705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605152, 33.117928, 26.543728>,  <40.451389, 33.139683, 26.360741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605152, 33.117928, 26.543728>,  <40.861423, 33.081669, 26.848705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605152, 33.117928, 26.543728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639763, 0.486038, 0.595374,
		0.424547, 0.869224, -0.253398,
		-0.640674, 0.090649, -0.762443,
		40.412949, 33.145123, 26.314995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856087, 33.757980, 26.834299>,  <40.861423, 33.081669, 26.848705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856087, 33.757980, 26.834299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514187, 33.665344, 26.648497>,  <40.309048, 33.609760, 26.537016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514187, 33.665344, 26.648497>,  <40.856087, 33.757980, 26.834299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514187, 33.665344, 26.648497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517384, 0.451555, 0.726919,
		0.041399, 0.861662, -0.505791,
		-0.854752, -0.231594, -0.464504,
		40.257763, 33.595867, 26.509146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496025, 34.407330, 26.739693>,  <40.856087, 33.757980, 26.834299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496025, 34.407330, 26.739693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239864, 34.100231, 26.748188>,  <40.086170, 33.915970, 26.753284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239864, 34.100231, 26.748188>,  <40.496025, 34.407330, 26.739693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239864, 34.100231, 26.748188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533696, 0.464714, 0.706547,
		-0.552320, 0.441138, -0.707347,
		-0.640400, -0.767748, 0.021237,
		40.047745, 33.869907, 26.754559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835106, 34.666698, 26.556364>,  <40.496025, 34.407330, 26.739693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835106, 34.666698, 26.556364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740154, 34.322449, 26.736576>,  <39.683186, 34.115898, 26.844704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740154, 34.322449, 26.736576>,  <39.835106, 34.666698, 26.556364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740154, 34.322449, 26.736576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684018, 0.477399, 0.551552,
		-0.689762, -0.177245, -0.702006,
		-0.237377, -0.860624, 0.450531,
		39.668941, 34.064262, 26.871735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084221, 34.652790, 26.670563>,  <39.835106, 34.666698, 26.556364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084221, 34.652790, 26.670563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241299, 34.403564, 26.941141>,  <39.335545, 34.254028, 27.103489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241299, 34.403564, 26.941141>,  <39.084221, 34.652790, 26.670563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241299, 34.403564, 26.941141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639714, 0.343374, 0.687648,
		-0.660724, -0.702768, -0.263743,
		0.392695, -0.623066, 0.676446,
		39.359108, 34.216644, 27.144075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535908, 34.514011, 27.060680>,  <39.084221, 34.652790, 26.670563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535908, 34.514011, 27.060680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842873, 34.410091, 27.295143>,  <39.027054, 34.347740, 27.435822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842873, 34.410091, 27.295143>,  <38.535908, 34.514011, 27.060680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842873, 34.410091, 27.295143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480807, 0.371600, 0.794190,
		-0.424144, -0.891302, 0.160259,
		0.767415, -0.259797, 0.586156,
		39.073097, 34.332153, 27.470989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212803, 34.153111, 27.682684>,  <38.535908, 34.514011, 27.060680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212803, 34.153111, 27.682684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582703, 34.283413, 27.761391>,  <38.804642, 34.361595, 27.808615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582703, 34.283413, 27.761391>,  <38.212803, 34.153111, 27.682684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582703, 34.283413, 27.761391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322684, 0.397038, 0.859206,
		0.201770, -0.858046, 0.472278,
		0.924750, 0.325759, 0.196767,
		38.860126, 34.381142, 27.820421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463196, 33.859261, 28.342136>,  <38.212803, 34.153111, 27.682684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463196, 33.859261, 28.342136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698967, 34.179897, 28.302103>,  <38.840431, 34.372280, 28.278082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698967, 34.179897, 28.302103>,  <38.463196, 33.859261, 28.342136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698967, 34.179897, 28.302103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255244, 0.302355, 0.918386,
		0.766434, -0.515779, 0.382819,
		0.589432, 0.801594, -0.100085,
		38.875797, 34.420376, 28.272078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971272, 33.897369, 28.964808>,  <38.463196, 33.859261, 28.342136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971272, 33.897369, 28.964808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984211, 34.263969, 28.805315>,  <38.991974, 34.483929, 28.709620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984211, 34.263969, 28.805315>,  <38.971272, 33.897369, 28.964808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984211, 34.263969, 28.805315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006642, 0.399128, 0.916871,
		0.999454, -0.027014, 0.019000,
		0.032352, 0.916497, -0.398730,
		38.993916, 34.538918, 28.685696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511971, 34.271637, 29.363800>,  <38.971272, 33.897369, 28.964808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511971, 34.271637, 29.363800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308437, 34.559368, 29.174631>,  <39.186317, 34.732006, 29.061131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308437, 34.559368, 29.174631>,  <39.511971, 34.271637, 29.363800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308437, 34.559368, 29.174631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151871, 0.465734, 0.871796,
		0.847362, 0.515423, -0.127737,
		-0.508835, 0.719327, -0.472923,
		39.155788, 34.775166, 29.032755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836491, 34.915104, 29.533876>,  <39.511971, 34.271637, 29.363800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836491, 34.915104, 29.533876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461716, 35.011536, 29.432655>,  <39.236851, 35.069397, 29.371923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461716, 35.011536, 29.432655>,  <39.836491, 34.915104, 29.533876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461716, 35.011536, 29.432655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061929, 0.598051, 0.799062,
		0.343977, 0.764339, -0.545404,
		-0.936934, 0.241083, -0.253051,
		39.180637, 35.083862, 29.356741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787533, 35.679287, 29.609936>,  <39.836491, 34.915104, 29.533876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787533, 35.679287, 29.609936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430729, 35.500076, 29.633928>,  <39.216648, 35.392551, 29.648325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430729, 35.500076, 29.633928>,  <39.787533, 35.679287, 29.609936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430729, 35.500076, 29.633928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157617, 0.432657, 0.887674,
		-0.423650, 0.782358, -0.456549,
		-0.892008, -0.448023, 0.059983,
		39.163128, 35.365669, 29.651922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324078, 36.206722, 29.720991>,  <39.787533, 35.679287, 29.609936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324078, 36.206722, 29.720991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146980, 35.876789, 29.861637>,  <39.040722, 35.678829, 29.946024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146980, 35.876789, 29.861637>,  <39.324078, 36.206722, 29.720991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146980, 35.876789, 29.861637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148205, 0.454067, 0.878555,
		-0.884318, 0.336860, -0.323277,
		-0.442739, -0.824832, 0.351615,
		39.014160, 35.629341, 29.967121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745144, 36.410194, 30.042303>,  <39.324078, 36.206722, 29.720991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745144, 36.410194, 30.042303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781136, 36.039810, 30.188997>,  <38.802731, 35.817577, 30.277014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781136, 36.039810, 30.188997>,  <38.745144, 36.410194, 30.042303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781136, 36.039810, 30.188997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099117, 0.358077, 0.928416,
		-0.990999, -0.119888, -0.059560,
		0.089979, -0.925963, 0.366737,
		38.808128, 35.762020, 30.299019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194935, 36.217964, 30.608963>,  <38.745144, 36.410194, 30.042303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194935, 36.217964, 30.608963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477345, 35.941509, 30.670742>,  <38.646790, 35.775635, 30.707809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477345, 35.941509, 30.670742>,  <38.194935, 36.217964, 30.608963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477345, 35.941509, 30.670742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001271, 0.219327, 0.975651,
		-0.708187, -0.688636, 0.155728,
		0.706023, -0.691141, 0.154450,
		38.689152, 35.734165, 30.717077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015610, 35.889175, 31.292023>,  <38.194935, 36.217964, 30.608963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015610, 35.889175, 31.292023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404530, 35.825321, 31.223724>,  <38.637882, 35.787010, 31.182745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404530, 35.825321, 31.223724>,  <38.015610, 35.889175, 31.292023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404530, 35.825321, 31.223724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186425, 0.088938, 0.978435,
		-0.141007, -0.983162, 0.116234,
		0.972298, -0.159635, -0.170745,
		38.696220, 35.777431, 31.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297279, 35.322834, 31.739155>,  <38.015610, 35.889175, 31.292023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297279, 35.322834, 31.739155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611080, 35.553471, 31.647858>,  <38.799362, 35.691853, 31.593081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611080, 35.553471, 31.647858>,  <38.297279, 35.322834, 31.739155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611080, 35.553471, 31.647858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225732, 0.077286, 0.971119,
		0.577583, -0.813366, -0.069525,
		0.784502, 0.576596, -0.228242,
		38.846432, 35.726448, 31.579386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757683, 35.024879, 32.147110>,  <38.297279, 35.322834, 31.739155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757683, 35.024879, 32.147110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876232, 35.391567, 32.039928>,  <38.947361, 35.611580, 31.975620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876232, 35.391567, 32.039928>,  <38.757683, 35.024879, 32.147110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876232, 35.391567, 32.039928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244139, 0.198517, 0.949204,
		0.923342, -0.346734, -0.164971,
		0.296372, 0.916715, -0.267950,
		38.965145, 35.666580, 31.959543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241589, 35.096321, 32.641453>,  <38.757683, 35.024879, 32.147110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241589, 35.096321, 32.641453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199413, 35.461235, 32.483147>,  <39.174107, 35.680183, 32.388165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199413, 35.461235, 32.483147>,  <39.241589, 35.096321, 32.641453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199413, 35.461235, 32.483147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230173, 0.409562, 0.882768,
		0.967421, 0.001983, -0.253165,
		-0.105437, 0.912280, -0.395762,
		39.167782, 35.734921, 32.364418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881611, 35.434429, 32.747669>,  <39.241589, 35.096321, 32.641453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881611, 35.434429, 32.747669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602863, 35.721119, 32.737202>,  <39.435616, 35.893131, 32.730923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602863, 35.721119, 32.737202>,  <39.881611, 35.434429, 32.747669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602863, 35.721119, 32.737202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229349, 0.257265, 0.938730,
		0.679543, 0.648167, -0.343659,
		-0.696865, 0.716725, -0.026166,
		39.393803, 35.936138, 32.729351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221916, 36.070446, 32.972569>,  <39.881611, 35.434429, 32.747669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221916, 36.070446, 32.972569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834625, 36.165768, 33.002911>,  <39.602253, 36.222961, 33.021114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834625, 36.165768, 33.002911>,  <40.221916, 36.070446, 32.972569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834625, 36.165768, 33.002911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182696, 0.466869, 0.865249,
		0.170777, 0.851613, -0.495570,
		-0.968224, 0.238303, 0.075856,
		39.544159, 36.237259, 33.025669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238373, 36.714073, 33.214558>,  <40.221916, 36.070446, 32.972569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238373, 36.714073, 33.214558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866108, 36.595829, 33.300789>,  <39.642750, 36.524883, 33.352528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866108, 36.595829, 33.300789>,  <40.238373, 36.714073, 33.214558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866108, 36.595829, 33.300789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061544, 0.454348, 0.888696,
		-0.360656, 0.840347, -0.404653,
		-0.930666, -0.295610, 0.215581,
		39.586906, 36.507145, 33.365463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896706, 37.267307, 33.544174>,  <40.238373, 36.714073, 33.214558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896706, 37.267307, 33.544174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676796, 36.947872, 33.642151>,  <39.544849, 36.756210, 33.700939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676796, 36.947872, 33.642151>,  <39.896706, 37.267307, 33.544174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676796, 36.947872, 33.642151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009055, 0.287523, 0.957731,
		-0.835262, 0.528757, -0.150842,
		-0.549778, -0.798590, 0.244945,
		39.511864, 36.708294, 33.715633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331547, 37.518406, 33.981033>,  <39.896706, 37.267307, 33.544174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331547, 37.518406, 33.981033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373440, 37.129456, 34.064476>,  <39.398575, 36.896084, 34.114544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373440, 37.129456, 34.064476>,  <39.331547, 37.518406, 33.981033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373440, 37.129456, 34.064476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012079, 0.208506, 0.977946,
		-0.994427, -0.104944, 0.010093,
		0.104734, -0.972374, 0.208611,
		39.404861, 36.837742, 34.127060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845528, 37.273838, 34.411488>,  <39.331547, 37.518406, 33.981033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845528, 37.273838, 34.411488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178108, 37.056046, 34.455723>,  <39.377659, 36.925369, 34.482262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178108, 37.056046, 34.455723>,  <38.845528, 37.273838, 34.411488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178108, 37.056046, 34.455723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131072, 0.385648, 0.913289,
		-0.539912, -0.744863, 0.392014,
		0.831454, -0.544478, 0.110586,
		39.427544, 36.892704, 34.488899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720684, 36.937401, 34.969337>,  <38.845528, 37.273838, 34.411488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720684, 36.937401, 34.969337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118942, 36.919903, 34.936390>,  <39.357895, 36.909405, 34.916622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118942, 36.919903, 34.936390>,  <38.720684, 36.937401, 34.969337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118942, 36.919903, 34.936390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091729, 0.299581, 0.949651,
		-0.016862, -0.953068, 0.302288,
		0.995641, -0.043742, -0.082372,
		39.417633, 36.906780, 34.911678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948429, 36.577877, 35.547001>,  <38.720684, 36.937401, 34.969337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948429, 36.577877, 35.547001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275581, 36.772434, 35.424046>,  <39.471874, 36.889168, 35.350273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275581, 36.772434, 35.424046>,  <38.948429, 36.577877, 35.547001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275581, 36.772434, 35.424046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262021, 0.160776, 0.951576,
		0.512263, -0.858819, 0.004050,
		0.817883, 0.486395, -0.307388,
		39.520947, 36.918354, 35.331829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490345, 36.321503, 36.020710>,  <38.948429, 36.577877, 35.547001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490345, 36.321503, 36.020710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662277, 36.628971, 35.831230>,  <39.765434, 36.813454, 35.717541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662277, 36.628971, 35.831230>,  <39.490345, 36.321503, 36.020710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662277, 36.628971, 35.831230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548678, 0.194295, 0.813143,
		0.717078, -0.609419, -0.338241,
		0.429827, 0.768673, -0.473700,
		39.791225, 36.859573, 35.689121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238895, 36.250511, 35.927616>,  <39.490345, 36.321503, 36.020710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238895, 36.250511, 35.927616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161118, 36.641636, 35.958805>,  <40.114449, 36.876308, 35.977516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161118, 36.641636, 35.958805>,  <40.238895, 36.250511, 35.927616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161118, 36.641636, 35.958805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554648, 0.044041, 0.830919,
		0.809046, 0.204816, -0.550903,
		-0.194448, 0.977809, 0.077970,
		40.102783, 36.934978, 35.982197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643620, 36.464138, 36.510052>,  <40.238895, 36.250511, 35.927616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643620, 36.464138, 36.510052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506798, 36.827690, 36.414608>,  <40.424706, 37.045822, 36.357342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506798, 36.827690, 36.414608>,  <40.643620, 36.464138, 36.510052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506798, 36.827690, 36.414608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610263, 0.407949, 0.679085,
		0.714547, 0.086672, -0.694198,
		-0.342055, 0.908882, -0.238606,
		40.404182, 37.100353, 36.343025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189140, 36.948792, 36.321762>,  <40.643620, 36.464138, 36.510052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189140, 36.948792, 36.321762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862255, 37.076622, 36.513611>,  <40.666126, 37.153320, 36.628719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862255, 37.076622, 36.513611>,  <41.189140, 36.948792, 36.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862255, 37.076622, 36.513611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567136, 0.297765, 0.767914,
		0.102595, 0.899558, -0.424582,
		-0.817209, 0.319581, 0.479623,
		40.617092, 37.172497, 36.657497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466137, 37.400169, 36.816643>,  <41.189140, 36.948792, 36.321762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466137, 37.400169, 36.816643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082752, 37.359550, 36.923256>,  <40.852722, 37.335178, 36.987225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082752, 37.359550, 36.923256>,  <41.466137, 37.400169, 36.816643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082752, 37.359550, 36.923256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210119, 0.380517, 0.900587,
		-0.192873, 0.919181, -0.343374,
		-0.958462, -0.101549, 0.266529,
		40.795212, 37.329086, 37.003216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241512, 38.068325, 37.063873>,  <41.466137, 37.400169, 36.816643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241512, 38.068325, 37.063873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989082, 37.795399, 37.211491>,  <40.837624, 37.631645, 37.300060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989082, 37.795399, 37.211491>,  <41.241512, 38.068325, 37.063873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989082, 37.795399, 37.211491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036234, 0.449297, 0.892647,
		-0.774876, 0.576699, -0.258817,
		-0.631074, -0.682313, 0.369045,
		40.799759, 37.590706, 37.322205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633064, 38.476429, 37.285831>,  <41.241512, 38.068325, 37.063873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633064, 38.476429, 37.285831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641399, 38.135002, 37.494057>,  <40.646400, 37.930145, 37.618992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641399, 38.135002, 37.494057>,  <40.633064, 38.476429, 37.285831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641399, 38.135002, 37.494057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246333, 0.509011, 0.824759,
		-0.968961, 0.111043, 0.220870,
		0.020842, -0.853567, 0.520566,
		40.647652, 37.878933, 37.650227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244877, 38.564236, 37.832684>,  <40.633064, 38.476429, 37.285831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244877, 38.564236, 37.832684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483307, 38.262249, 37.942017>,  <40.626366, 38.081055, 38.007618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483307, 38.262249, 37.942017>,  <40.244877, 38.564236, 37.832684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483307, 38.262249, 37.942017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164705, 0.448154, 0.878652,
		-0.785853, -0.478724, 0.391482,
		0.596076, -0.754971, 0.273335,
		40.662128, 38.035759, 38.024017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042419, 38.395073, 38.493816>,  <40.244877, 38.564236, 37.832684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042419, 38.395073, 38.493816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411835, 38.243839, 38.468121>,  <40.633484, 38.153099, 38.452702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411835, 38.243839, 38.468121>,  <40.042419, 38.395073, 38.493816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411835, 38.243839, 38.468121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206322, 0.348633, 0.914268,
		-0.323277, -0.857616, 0.399983,
		0.923538, -0.378087, -0.064240,
		40.688896, 38.130413, 38.448849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121964, 38.123623, 39.198639>,  <40.042419, 38.395073, 38.493816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121964, 38.123623, 39.198639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493980, 38.143291, 39.052982>,  <40.717190, 38.155094, 38.965588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493980, 38.143291, 39.052982>,  <40.121964, 38.123623, 39.198639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493980, 38.143291, 39.052982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342877, 0.240158, 0.908162,
		0.132105, -0.969488, 0.206499,
		0.930045, 0.049169, -0.364142,
		40.772995, 38.158043, 38.943741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518017, 37.630882, 39.502243>,  <40.121964, 38.123623, 39.198639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518017, 37.630882, 39.502243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760529, 37.923969, 39.378597>,  <40.906036, 38.099823, 39.304409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760529, 37.923969, 39.378597>,  <40.518017, 37.630882, 39.502243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760529, 37.923969, 39.378597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397093, 0.057850, 0.915953,
		0.689017, -0.678070, -0.255884,
		0.606277, 0.732717, -0.309117,
		40.942413, 38.143784, 39.285862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215134, 37.406521, 39.702190>,  <40.518017, 37.630882, 39.502243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215134, 37.406521, 39.702190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217072, 37.805317, 39.671249>,  <41.218235, 38.044594, 39.652683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217072, 37.805317, 39.671249>,  <41.215134, 37.406521, 39.702190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217072, 37.805317, 39.671249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463063, 0.066324, 0.883840,
		0.886312, -0.040104, -0.461348,
		0.004847, 0.996992, -0.077355,
		41.218525, 38.104416, 39.648045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833439, 37.618073, 39.952061>,  <41.215134, 37.406521, 39.702190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833439, 37.618073, 39.952061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622444, 37.957508, 39.935776>,  <41.495846, 38.161167, 39.926003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622444, 37.957508, 39.935776>,  <41.833439, 37.618073, 39.952061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622444, 37.957508, 39.935776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585247, 0.397700, 0.706626,
		0.615825, 0.348909, -0.706415,
		-0.527489, 0.848585, -0.040715,
		41.464199, 38.212082, 39.923561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328571, 38.108459, 39.987293>,  <41.833439, 37.618073, 39.952061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328571, 38.108459, 39.987293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994343, 38.310093, 40.074669>,  <41.793804, 38.431072, 40.127094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994343, 38.310093, 40.074669>,  <42.328571, 38.108459, 39.987293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994343, 38.310093, 40.074669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501394, 0.537193, 0.678254,
		0.224551, 0.676256, -0.701608,
		-0.835572, 0.504085, 0.218443,
		41.743671, 38.461319, 40.140202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589943, 38.811108, 40.273857>,  <42.328571, 38.108459, 39.987293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589943, 38.811108, 40.273857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211926, 38.796535, 40.403816>,  <41.985115, 38.787792, 40.481792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211926, 38.796535, 40.403816>,  <42.589943, 38.811108, 40.273857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211926, 38.796535, 40.403816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283923, 0.401272, 0.870844,
		-0.162099, 0.915234, -0.368877,
		-0.945046, -0.036431, 0.324901,
		41.928413, 38.785606, 40.501286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419453, 39.499802, 40.519901>,  <42.589943, 38.811108, 40.273857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419453, 39.499802, 40.519901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165073, 39.235600, 40.679554>,  <42.012447, 39.077080, 40.775345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165073, 39.235600, 40.679554>,  <42.419453, 39.499802, 40.519901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165073, 39.235600, 40.679554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205720, 0.353387, 0.912577,
		-0.743807, 0.662462, -0.088858,
		-0.635948, -0.660501, 0.399134,
		41.974289, 39.037449, 40.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883919, 39.829952, 40.919605>,  <42.419453, 39.499802, 40.519901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883919, 39.829952, 40.919605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907749, 39.455746, 41.058895>,  <41.922047, 39.231220, 41.142467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907749, 39.455746, 41.058895>,  <41.883919, 39.829952, 40.919605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907749, 39.455746, 41.058895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085408, 0.352338, 0.931968,
		-0.994564, -0.025780, 0.100891,
		0.059574, -0.935518, 0.348220,
		41.925621, 39.175091, 41.163361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474308, 39.703136, 41.532570>,  <41.883919, 39.829952, 40.919605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474308, 39.703136, 41.532570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776531, 39.441204, 41.539814>,  <41.957867, 39.284046, 41.544159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776531, 39.441204, 41.539814>,  <41.474308, 39.703136, 41.532570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776531, 39.441204, 41.539814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175106, 0.228523, 0.957661,
		-0.631246, -0.720397, 0.287328,
		0.755557, -0.654832, 0.018108,
		42.003197, 39.244755, 41.545246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979736, 39.934376, 42.108463>,  <41.474308, 39.703136, 41.532570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979736, 39.934376, 42.108463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050102, 40.124458, 42.453308>,  <42.092319, 40.238506, 42.660213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050102, 40.124458, 42.453308>,  <41.979736, 39.934376, 42.108463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050102, 40.124458, 42.453308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675049, -0.695654, 0.245711,
		0.716494, 0.538743, -0.443162,
		0.175912, 0.475206, 0.862110,
		42.102875, 40.267021, 42.711941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729961, 39.746742, 42.134636>,  <41.979736, 39.934376, 42.108463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729961, 39.746742, 42.134636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406670, 39.528324, 42.222816>,  <42.212696, 39.397274, 42.275726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406670, 39.528324, 42.222816>,  <42.729961, 39.746742, 42.134636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406670, 39.528324, 42.222816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033036, -0.415821, -0.908846,
		0.587944, -0.727271, 0.354117,
		-0.808227, -0.546049, 0.220453,
		42.164200, 39.364510, 42.288952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915794, 38.981686, 41.998493>,  <42.729961, 39.746742, 42.134636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915794, 38.981686, 41.998493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521614, 39.049026, 42.007790>,  <42.285107, 39.089432, 42.013367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521614, 39.049026, 42.007790>,  <42.915794, 38.981686, 41.998493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521614, 39.049026, 42.007790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100635, -0.467874, -0.878047,
		-0.136944, -0.867613, 0.478010,
		-0.985454, 0.168348, 0.023240,
		42.225979, 39.099529, 42.014763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644211, 38.375153, 41.735081>,  <42.915794, 38.981686, 41.998493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644211, 38.375153, 41.735081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335163, 38.628857, 41.724007>,  <42.149734, 38.781078, 41.717361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335163, 38.628857, 41.724007>,  <42.644211, 38.375153, 41.735081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335163, 38.628857, 41.724007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417319, -0.540255, -0.730732,
		-0.478432, -0.553026, 0.682103,
		-0.772624, 0.634260, -0.027687,
		42.103378, 38.819134, 41.715698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021088, 37.996532, 41.546989>,  <42.644211, 38.375153, 41.735081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021088, 37.996532, 41.546989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928505, 38.377510, 41.467709>,  <41.872955, 38.606094, 41.420139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928505, 38.377510, 41.467709>,  <42.021088, 37.996532, 41.546989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928505, 38.377510, 41.467709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576319, -0.298377, -0.760807,
		-0.783761, -0.061871, 0.617972,
		-0.231461, 0.952440, -0.198199,
		41.859066, 38.663242, 41.408249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326622, 38.078159, 41.402748>,  <42.021088, 37.996532, 41.546989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326622, 38.078159, 41.402748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517754, 38.378948, 41.221107>,  <41.632435, 38.559422, 41.112122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517754, 38.378948, 41.221107>,  <41.326622, 38.078159, 41.402748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517754, 38.378948, 41.221107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444901, -0.238576, -0.863218,
		-0.757456, 0.614505, 0.220555,
		0.477832, 0.751974, -0.454104,
		41.661102, 38.604542, 41.084877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787140, 38.667648, 41.089344>,  <41.326622, 38.078159, 41.402748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787140, 38.667648, 41.089344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131359, 38.689266, 40.886749>,  <41.337891, 38.702236, 40.765190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131359, 38.689266, 40.886749>,  <40.787140, 38.667648, 41.089344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131359, 38.689266, 40.886749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491719, -0.171302, -0.853737,
		-0.132906, 0.983735, -0.120837,
		0.860551, 0.054049, -0.506489,
		41.389523, 38.705482, 40.734802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602615, 38.992470, 40.465332>,  <40.787140, 38.667648, 41.089344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602615, 38.992470, 40.465332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962975, 38.843189, 40.376690>,  <41.179188, 38.753620, 40.323505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962975, 38.843189, 40.376690>,  <40.602615, 38.992470, 40.465332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962975, 38.843189, 40.376690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259127, -0.052867, -0.964395,
		0.348200, 0.926242, -0.144334,
		0.900894, -0.373204, -0.221606,
		41.233242, 38.731228, 40.310207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853020, 39.287067, 39.835419>,  <40.602615, 38.992470, 40.465332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853020, 39.287067, 39.835419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049736, 38.940998, 39.874649>,  <41.167767, 38.733356, 39.898190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049736, 38.940998, 39.874649>,  <40.853020, 39.287067, 39.835419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049736, 38.940998, 39.874649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041323, -0.135708, -0.989887,
		0.869732, 0.482764, -0.102491,
		0.491791, -0.865172, 0.098080,
		41.197273, 38.681446, 39.904072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432476, 39.358208, 39.480309>,  <40.853020, 39.287067, 39.835419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432476, 39.358208, 39.480309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346088, 38.969479, 39.518085>,  <41.294254, 38.736240, 39.540752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346088, 38.969479, 39.518085>,  <41.432476, 39.358208, 39.480309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346088, 38.969479, 39.518085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155442, -0.129712, -0.979292,
		0.963947, -0.196821, 0.179076,
		-0.215973, -0.971821, 0.094441,
		41.281296, 38.677933, 39.546417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758057, 39.047955, 38.871475>,  <41.432476, 39.358208, 39.480309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758057, 39.047955, 38.871475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513699, 38.761326, 39.006134>,  <41.367085, 38.589348, 39.086929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513699, 38.761326, 39.006134>,  <41.758057, 39.047955, 38.871475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513699, 38.761326, 39.006134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101974, -0.350461, -0.931009,
		0.785115, -0.603081, 0.141024,
		-0.610897, -0.716569, 0.336651,
		41.330429, 38.546356, 39.107128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509491, 38.784172, 38.689716>,  <41.758057, 39.047955, 38.871475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509491, 38.784172, 38.689716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742966, 38.610981, 38.414955>,  <42.883049, 38.507065, 38.250099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742966, 38.610981, 38.414955>,  <42.509491, 38.784172, 38.689716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742966, 38.610981, 38.414955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758068, 0.012540, -0.652055,
		0.290941, 0.901316, -0.320910,
		0.583683, -0.432981, -0.686907,
		42.918072, 38.481087, 38.208881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009018, 38.327785, 38.479378>,  <42.509491, 38.784172, 38.689716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009018, 38.327785, 38.479378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646332, 38.261452, 38.634483>,  <41.428719, 38.221649, 38.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646332, 38.261452, 38.634483>,  <42.009018, 38.327785, 38.479378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646332, 38.261452, 38.634483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293954, -0.410795, -0.863040,
		0.302417, -0.896518, 0.323727,
		-0.906717, -0.165838, 0.387766,
		41.374317, 38.211700, 38.750813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834118, 37.665062, 38.378170>,  <42.009018, 38.327785, 38.479378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834118, 37.665062, 38.378170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446701, 37.737568, 38.446377>,  <41.214252, 37.781071, 38.487301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446701, 37.737568, 38.446377>,  <41.834118, 37.665062, 38.378170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446701, 37.737568, 38.446377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247941, -0.643855, -0.723862,
		-0.021424, -0.743366, 0.668542,
		-0.968538, 0.181267, 0.170516,
		41.156139, 37.791946, 38.497532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413300, 37.032867, 38.399368>,  <41.834118, 37.665062, 38.378170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413300, 37.032867, 38.399368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173252, 37.334320, 38.292118>,  <41.029224, 37.515190, 38.227768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173252, 37.334320, 38.292118>,  <41.413300, 37.032867, 38.399368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173252, 37.334320, 38.292118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372336, -0.559852, -0.740225,
		-0.707971, -0.344388, 0.616582,
		-0.600119, 0.753633, -0.268131,
		40.993217, 37.560410, 38.211678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832447, 36.746655, 38.268715>,  <41.413300, 37.032867, 38.399368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832447, 36.746655, 38.268715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795040, 37.097622, 38.080502>,  <40.772594, 37.308201, 37.967575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795040, 37.097622, 38.080502>,  <40.832447, 36.746655, 38.268715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795040, 37.097622, 38.080502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577982, -0.432656, -0.691915,
		-0.810673, 0.207254, 0.547590,
		-0.093516, 0.877414, -0.470531,
		40.766987, 37.360847, 37.939342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051655, 36.767597, 37.993622>,  <40.832447, 36.746655, 38.268715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051655, 36.767597, 37.993622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282455, 37.023922, 37.791065>,  <40.420937, 37.177719, 37.669533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282455, 37.023922, 37.791065>,  <40.051655, 36.767597, 37.993622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282455, 37.023922, 37.791065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424779, -0.294112, -0.856190,
		-0.697594, 0.709124, 0.102503,
		0.576997, 0.640814, -0.506392,
		40.455555, 37.216167, 37.639149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612766, 37.197987, 37.537430>,  <40.051655, 36.767597, 37.993622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612766, 37.197987, 37.537430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968483, 37.243351, 37.360210>,  <40.181915, 37.270569, 37.253880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968483, 37.243351, 37.360210>,  <39.612766, 37.197987, 37.537430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968483, 37.243351, 37.360210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449417, 0.037238, -0.892545,
		-0.084725, 0.992850, 0.084084,
		0.889295, 0.113409, -0.443049,
		40.235271, 37.277374, 37.227295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604630, 37.843590, 37.069546>,  <39.612766, 37.197987, 37.537430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604630, 37.843590, 37.069546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890129, 37.588444, 36.953831>,  <40.061428, 37.435356, 36.884399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890129, 37.588444, 36.953831>,  <39.604630, 37.843590, 37.069546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890129, 37.588444, 36.953831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370525, 0.006631, -0.928799,
		0.594366, 0.770120, -0.231612,
		0.713751, -0.637864, -0.289290,
		40.104256, 37.397083, 36.867043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516628, 38.002674, 36.392902>,  <39.604630, 37.843590, 37.069546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516628, 38.002674, 36.392902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760876, 37.686218, 36.407013>,  <39.907425, 37.496346, 36.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760876, 37.686218, 36.407013>,  <39.516628, 38.002674, 36.392902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760876, 37.686218, 36.407013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231296, -0.220762, -0.947505,
		0.757398, 0.570402, -0.317788,
		0.610615, -0.791142, 0.035273,
		39.944061, 37.448875, 36.417595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025043, 38.169247, 35.859615>,  <39.516628, 38.002674, 36.392902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025043, 38.169247, 35.859615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985359, 37.777374, 35.929329>,  <39.961548, 37.542252, 35.971157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985359, 37.777374, 35.929329>,  <40.025043, 38.169247, 35.859615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985359, 37.777374, 35.929329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249949, -0.144997, -0.957341,
		0.963163, -0.138537, -0.230487,
		-0.099207, -0.979685, 0.174283,
		39.955597, 37.483467, 35.981613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336124, 37.957123, 35.291245>,  <40.025043, 38.169247, 35.859615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336124, 37.957123, 35.291245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142029, 37.637592, 35.433468>,  <40.025570, 37.445873, 35.518803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142029, 37.637592, 35.433468>,  <40.336124, 37.957123, 35.291245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142029, 37.637592, 35.433468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133562, -0.334152, -0.933008,
		0.864120, -0.500221, 0.055451,
		-0.485239, -0.798825, 0.355558,
		39.996456, 37.397945, 35.540134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651394, 37.446552, 34.910942>,  <40.336124, 37.957123, 35.291245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651394, 37.446552, 34.910942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302776, 37.295582, 35.036133>,  <40.093605, 37.204998, 35.111248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302776, 37.295582, 35.036133>,  <40.651394, 37.446552, 34.910942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302776, 37.295582, 35.036133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203565, -0.302167, -0.931266,
		0.446059, -0.875352, 0.186521,
		-0.871546, -0.377430, 0.312976,
		40.041313, 37.182354, 35.130024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690189, 36.794842, 34.762489>,  <40.651394, 37.446552, 34.910942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690189, 36.794842, 34.762489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297054, 36.857265, 34.801815>,  <40.061172, 36.894722, 34.825409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297054, 36.857265, 34.801815>,  <40.690189, 36.794842, 34.762489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297054, 36.857265, 34.801815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159572, -0.452119, -0.877568,
		-0.092508, -0.878198, 0.469265,
		-0.982843, 0.156063, 0.098311,
		40.002201, 36.904083, 34.831306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384579, 36.038380, 34.689941>,  <40.690189, 36.794842, 34.762489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384579, 36.038380, 34.689941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112572, 36.325001, 34.627815>,  <39.949368, 36.496975, 34.590542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112572, 36.325001, 34.627815>,  <40.384579, 36.038380, 34.689941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112572, 36.325001, 34.627815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319325, -0.480129, -0.817012,
		-0.660004, -0.505989, 0.555311,
		-0.680019, 0.716556, -0.155312,
		39.908566, 36.539967, 34.581223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103622, 36.043495, 34.983688>,  <40.384579, 36.038380, 34.689941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103622, 36.043495, 34.983688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744713, 35.935101, 35.123096>,  <40.529366, 35.870064, 35.206741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744713, 35.935101, 35.123096>,  <41.103622, 36.043495, 34.983688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744713, 35.935101, 35.123096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208918, -0.956094, -0.205520,
		0.388907, -0.111597, 0.914493,
		-0.897276, -0.270982, 0.348517,
		40.475529, 35.853806, 35.227654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445648, 35.434166, 34.790501>,  <41.103622, 36.043495, 34.983688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445648, 35.434166, 34.790501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660942, 35.169624, 34.581532>,  <41.790119, 35.010899, 34.456150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660942, 35.169624, 34.581532>,  <41.445648, 35.434166, 34.790501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660942, 35.169624, 34.581532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524819, -0.222007, 0.821753,
		-0.659448, -0.716469, 0.227598,
		0.538232, -0.661351, -0.522419,
		41.822411, 34.971218, 34.424805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453827, 34.653530, 35.089737>,  <41.445648, 35.434166, 34.790501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453827, 34.653530, 35.089737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789909, 34.756794, 34.898983>,  <41.991558, 34.818752, 34.784531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789909, 34.756794, 34.898983>,  <41.453827, 34.653530, 35.089737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789909, 34.756794, 34.898983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532050, -0.222496, 0.816957,
		0.104801, -0.940133, -0.324295,
		0.840202, 0.258159, -0.476880,
		42.041969, 34.834240, 34.755920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890007, 34.097023, 35.242638>,  <41.453827, 34.653530, 35.089737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890007, 34.097023, 35.242638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052711, 34.459854, 35.199261>,  <42.150333, 34.677551, 35.173233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052711, 34.459854, 35.199261>,  <41.890007, 34.097023, 35.242638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052711, 34.459854, 35.199261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401012, -0.070635, 0.913346,
		0.820813, -0.415001, -0.392479,
		0.406762, 0.907075, -0.108443,
		42.174740, 34.731976, 35.166729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548630, 34.071815, 35.407051>,  <41.890007, 34.097023, 35.242638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548630, 34.071815, 35.407051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445915, 34.449760, 35.488338>,  <42.384285, 34.676529, 35.537109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445915, 34.449760, 35.488338>,  <42.548630, 34.071815, 35.407051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445915, 34.449760, 35.488338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374925, -0.096408, 0.922029,
		0.890781, 0.312958, -0.329495,
		-0.256791, 0.944861, 0.203214,
		42.368877, 34.733219, 35.549301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073685, 34.502773, 35.518753>,  <42.548630, 34.071815, 35.407051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073685, 34.502773, 35.518753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792038, 34.710781, 35.712162>,  <42.623051, 34.835587, 35.828205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792038, 34.710781, 35.712162>,  <43.073685, 34.502773, 35.518753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792038, 34.710781, 35.712162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467934, -0.172359, 0.866793,
		0.534090, 0.836582, -0.121974,
		-0.704121, 0.520021, 0.483521,
		42.580803, 34.866787, 35.857220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290390, 35.161728, 35.951317>,  <43.073685, 34.502773, 35.518753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290390, 35.161728, 35.951317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980534, 34.947369, 36.085621>,  <42.794621, 34.818752, 36.166203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980534, 34.947369, 36.085621>,  <43.290390, 35.161728, 35.951317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980534, 34.947369, 36.085621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577382, -0.382746, 0.721204,
		-0.257984, 0.752539, 0.605912,
		-0.774645, -0.535902, 0.335760,
		42.748138, 34.786598, 36.186348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342625, 35.239017, 36.769455>,  <43.290390, 35.161728, 35.951317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342625, 35.239017, 36.769455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162086, 34.897755, 36.664825>,  <43.053764, 34.692997, 36.602047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162086, 34.897755, 36.664825>,  <43.342625, 35.239017, 36.769455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162086, 34.897755, 36.664825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513395, -0.488018, 0.705878,
		-0.729874, 0.184302, 0.658267,
		-0.451341, -0.853154, -0.261572,
		43.026684, 34.641808, 36.586353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489239, 34.706367, 37.380035>,  <43.342625, 35.239017, 36.769455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489239, 34.706367, 37.380035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624550, 34.810757, 37.741688>,  <43.705738, 34.873390, 37.958679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624550, 34.810757, 37.741688>,  <43.489239, 34.706367, 37.380035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624550, 34.810757, 37.741688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874315, 0.268187, -0.404535,
		-0.348049, 0.927346, -0.137447,
		0.338282, 0.260970, 0.904135,
		43.726036, 34.889050, 38.012928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635208, 35.517208, 37.524933>,  <43.489239, 34.706367, 37.380035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635208, 35.517208, 37.524933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854786, 35.234997, 37.704212>,  <43.986534, 35.065670, 37.811779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854786, 35.234997, 37.704212>,  <43.635208, 35.517208, 37.524933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854786, 35.234997, 37.704212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809141, 0.314064, -0.496643,
		0.209633, 0.635288, 0.743279,
		0.548948, -0.705530, 0.448199,
		44.019470, 35.023338, 37.838673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352295, 35.785160, 37.608948>,  <43.635208, 35.517208, 37.524933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352295, 35.785160, 37.608948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341164, 35.385323, 37.606293>,  <44.334484, 35.145420, 37.604702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341164, 35.385323, 37.606293>,  <44.352295, 35.785160, 37.608948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341164, 35.385323, 37.606293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794591, -0.018092, -0.606875,
		0.606507, -0.022158, 0.794770,
		-0.027826, -0.999591, -0.006634,
		44.332817, 35.085445, 37.604301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925438, 35.589069, 37.848301>,  <44.352295, 35.785160, 37.608948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925438, 35.589069, 37.848301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792763, 35.306709, 37.597961>,  <44.713158, 35.137291, 37.447758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792763, 35.306709, 37.597961>,  <44.925438, 35.589069, 37.848301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792763, 35.306709, 37.597961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917015, -0.085483, -0.389585,
		0.221510, -0.703132, 0.675677,
		-0.331688, -0.705902, -0.625847,
		44.693256, 35.094940, 37.410206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300602, 34.950436, 37.985531>,  <44.925438, 35.589069, 37.848301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300602, 34.950436, 37.985531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150311, 34.943142, 37.614910>,  <45.060135, 34.938766, 37.392536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150311, 34.943142, 37.614910>,  <45.300602, 34.950436, 37.985531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150311, 34.943142, 37.614910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845731, -0.415530, -0.334773,
		-0.378906, -0.909396, 0.171548,
		-0.375725, -0.018236, -0.926552,
		45.037594, 34.937672, 37.336945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330906, 34.275753, 37.746151>,  <45.300602, 34.950436, 37.985531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330906, 34.275753, 37.746151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339176, 34.539467, 37.445511>,  <45.344139, 34.697697, 37.265125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339176, 34.539467, 37.445511>,  <45.330906, 34.275753, 37.746151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339176, 34.539467, 37.445511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737545, -0.517595, -0.433731,
		-0.674981, -0.545374, -0.496958,
		0.020678, 0.659289, -0.751605,
		45.345379, 34.737255, 37.220028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329239, 33.849167, 37.101055>,  <45.330906, 34.275753, 37.746151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329239, 33.849167, 37.101055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496807, 34.209991, 37.059494>,  <45.597347, 34.426487, 37.034557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496807, 34.209991, 37.059494>,  <45.329239, 33.849167, 37.101055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496807, 34.209991, 37.059494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842341, -0.428796, -0.326490,
		-0.339065, 0.049254, -0.939473,
		0.418924, 0.902058, -0.103901,
		45.622482, 34.480610, 37.028324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434464, 33.897503, 36.351875>,  <45.329239, 33.849167, 37.101055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434464, 33.897503, 36.351875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676918, 34.049084, 36.631588>,  <45.822392, 34.140030, 36.799416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676918, 34.049084, 36.631588>,  <45.434464, 33.897503, 36.351875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676918, 34.049084, 36.631588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742248, -0.585407, -0.326138,
		0.285777, 0.716726, -0.636109,
		0.606135, 0.378948, 0.699285,
		45.858757, 34.162769, 36.841373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996784, 34.128098, 36.028183>,  <45.434464, 33.897503, 36.351875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996784, 34.128098, 36.028183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128281, 34.046078, 36.396938>,  <46.207176, 33.996864, 36.618195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128281, 34.046078, 36.396938>,  <45.996784, 34.128098, 36.028183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128281, 34.046078, 36.396938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819608, -0.423048, -0.386358,
		0.469227, 0.882602, 0.028988,
		0.328737, -0.205049, 0.921893,
		46.226902, 33.984562, 36.673508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668304, 33.765732, 35.895977>,  <45.996784, 34.128098, 36.028183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668304, 33.765732, 35.895977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767731, 33.747562, 35.508957>,  <46.827385, 33.736660, 35.276745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767731, 33.747562, 35.508957>,  <46.668304, 33.765732, 35.895977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.767731, 33.747562, 35.508957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290460, 0.956425, 0.029714,
		0.924040, -0.288421, 0.250926,
		0.248562, -0.045427, -0.967550,
		46.842300, 33.733932, 35.218693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.372501, 34.119034, 35.810116>,  <46.668304, 33.765732, 35.895977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.372501, 34.119034, 35.810116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155319, 34.139751, 35.474850>,  <47.025009, 34.152184, 35.273689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155319, 34.139751, 35.474850>,  <47.372501, 34.119034, 35.810116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.155319, 34.139751, 35.474850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101766, 0.994798, -0.004448,
		0.833572, -0.087712, -0.545403,
		-0.542956, 0.051796, -0.838162,
		46.992432, 34.155289, 35.223400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788429, 34.472515, 35.308357>,  <47.372501, 34.119034, 35.810116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788429, 34.472515, 35.308357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395702, 34.515167, 35.245541>,  <47.160065, 34.540756, 35.207851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395702, 34.515167, 35.245541>,  <47.788429, 34.472515, 35.308357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395702, 34.515167, 35.245541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099114, 0.993558, 0.054935,
		0.161883, 0.038372, -0.986063,
		-0.981820, 0.106626, -0.157037,
		47.101158, 34.547153, 35.198429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595791, 34.891331, 34.624886>,  <47.788429, 34.472515, 35.308357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595791, 34.891331, 34.624886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350948, 34.919708, 34.939922>,  <47.204044, 34.936733, 35.128944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350948, 34.919708, 34.939922>,  <47.595791, 34.891331, 34.624886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350948, 34.919708, 34.939922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171567, 0.984158, 0.044691,
		-0.771941, 0.162480, -0.614579,
		-0.612104, 0.070943, 0.787588,
		47.167316, 34.940990, 35.176197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.703781, 29.638081, 27.096535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419849, 29.890789, 26.971947>,  <38.249493, 30.042414, 26.897194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419849, 29.890789, 26.971947>,  <38.703781, 29.638081, 27.096535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419849, 29.890789, 26.971947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195380, 0.248244, 0.948790,
		0.676736, 0.734332, -0.052775,
		-0.709828, 0.631769, -0.311469,
		38.206902, 30.080320, 26.878506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781521, 30.347294, 27.415791>,  <38.703781, 29.638081, 27.096535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781521, 30.347294, 27.415791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398163, 30.318207, 27.305374>,  <38.168148, 30.300755, 27.239124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398163, 30.318207, 27.305374>,  <38.781521, 30.347294, 27.415791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398163, 30.318207, 27.305374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280804, 0.414075, 0.865847,
		0.051339, 0.907333, -0.417266,
		-0.958391, -0.072719, -0.276041,
		38.110645, 30.296391, 27.222561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513004, 31.082037, 27.527609>,  <38.781521, 30.347294, 27.415791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513004, 31.082037, 27.527609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206657, 30.825588, 27.507998>,  <38.022850, 30.671719, 27.496231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206657, 30.825588, 27.507998>,  <38.513004, 31.082037, 27.527609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206657, 30.825588, 27.507998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471904, 0.508660, 0.720119,
		-0.436746, 0.574654, -0.692117,
		-0.765872, -0.641122, -0.049026,
		37.976894, 30.633251, 27.493290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153721, 31.519413, 27.674719>,  <38.513004, 31.082037, 27.527609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153721, 31.519413, 27.674719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957020, 31.176985, 27.738377>,  <37.839001, 30.971529, 27.776571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957020, 31.176985, 27.738377>,  <38.153721, 31.519413, 27.674719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957020, 31.176985, 27.738377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486203, 0.421584, 0.765424,
		-0.722349, 0.299021, -0.623537,
		-0.491751, -0.856069, 0.159145,
		37.809494, 30.920164, 27.786119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383904, 31.591780, 27.655649>,  <38.153721, 31.519413, 27.674719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383904, 31.591780, 27.655649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457355, 31.274422, 27.887789>,  <37.501427, 31.084007, 28.027073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457355, 31.274422, 27.887789>,  <37.383904, 31.591780, 27.655649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457355, 31.274422, 27.887789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469725, 0.447796, 0.760813,
		-0.863503, -0.412313, -0.290449,
		0.183631, -0.793396, 0.580347,
		37.512444, 31.036404, 28.061893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868298, 31.572577, 28.151152>,  <37.383904, 31.591780, 27.655649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868298, 31.572577, 28.151152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107365, 31.306160, 28.329670>,  <37.250805, 31.146311, 28.436781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107365, 31.306160, 28.329670>,  <36.868298, 31.572577, 28.151152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107365, 31.306160, 28.329670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396180, 0.238597, 0.886630,
		-0.697017, -0.706725, -0.121270,
		0.597669, -0.666042, 0.446296,
		37.286667, 31.106348, 28.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440235, 31.214079, 28.617964>,  <36.868298, 31.572577, 28.151152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440235, 31.214079, 28.617964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811066, 31.169994, 28.761286>,  <37.033566, 31.143543, 28.847279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811066, 31.169994, 28.761286>,  <36.440235, 31.214079, 28.617964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811066, 31.169994, 28.761286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308377, 0.319250, 0.896094,
		-0.213147, -0.941240, 0.261983,
		0.927077, -0.110210, 0.358304,
		37.089188, 31.136932, 28.868776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379513, 30.954521, 29.277542>,  <36.440235, 31.214079, 28.617964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379513, 30.954521, 29.277542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750568, 31.103785, 29.283741>,  <36.973202, 31.193342, 29.287460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750568, 31.103785, 29.283741>,  <36.379513, 30.954521, 29.277542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750568, 31.103785, 29.283741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137671, 0.303079, 0.942968,
		0.347178, -0.876868, 0.332521,
		0.927639, 0.373157, 0.015497,
		37.028858, 31.215733, 29.288389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648102, 30.776737, 29.958714>,  <36.379513, 30.954521, 29.277542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648102, 30.776737, 29.958714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882744, 31.061710, 29.804659>,  <37.023529, 31.232695, 29.712225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882744, 31.061710, 29.804659>,  <36.648102, 30.776737, 29.958714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882744, 31.061710, 29.804659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007180, 0.480110, 0.877179,
		0.809842, -0.511792, 0.286750,
		0.586605, 0.712435, -0.385138,
		37.058723, 31.275440, 29.689117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199356, 30.821819, 30.460409>,  <36.648102, 30.776737, 29.958714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199356, 30.821819, 30.460409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148750, 31.159878, 30.252672>,  <37.118385, 31.362713, 30.128029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148750, 31.159878, 30.252672>,  <37.199356, 30.821819, 30.460409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148750, 31.159878, 30.252672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051914, 0.517192, 0.854294,
		0.990605, 0.135045, -0.021559,
		-0.126519, 0.845148, -0.519343,
		37.110794, 31.413422, 30.096869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599506, 31.383440, 30.815657>,  <37.199356, 30.821819, 30.460409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599506, 31.383440, 30.815657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311924, 31.561705, 30.602308>,  <37.139374, 31.668663, 30.474300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311924, 31.561705, 30.602308>,  <37.599506, 31.383440, 30.815657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311924, 31.561705, 30.602308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153279, 0.646826, 0.747075,
		0.677941, 0.618871, -0.396731,
		-0.718959, 0.445662, -0.533370,
		37.096237, 31.695404, 30.442297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853306, 32.116863, 30.880667>,  <37.599506, 31.383440, 30.815657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853306, 32.116863, 30.880667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461411, 32.121540, 30.800695>,  <37.226273, 32.124348, 30.752712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461411, 32.121540, 30.800695>,  <37.853306, 32.116863, 30.880667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461411, 32.121540, 30.800695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134674, 0.700398, 0.700932,
		0.148227, 0.713657, -0.684633,
		-0.979741, 0.011695, -0.199929,
		37.167488, 32.125050, 30.740717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603302, 32.892296, 30.790764>,  <37.853306, 32.116863, 30.880667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603302, 32.892296, 30.790764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280857, 32.661976, 30.845358>,  <37.087391, 32.523785, 30.878115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280857, 32.661976, 30.845358>,  <37.603302, 32.892296, 30.790764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280857, 32.661976, 30.845358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240964, 0.530057, 0.813004,
		-0.540476, 0.622487, -0.566035,
		-0.806115, -0.575804, 0.136486,
		37.039024, 32.489235, 30.886303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010754, 33.328259, 30.941149>,  <37.603302, 32.892296, 30.790764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010754, 33.328259, 30.941149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889107, 32.969444, 31.069422>,  <36.816116, 32.754154, 31.146385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889107, 32.969444, 31.069422>,  <37.010754, 33.328259, 30.941149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889107, 32.969444, 31.069422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363809, 0.420477, 0.831169,
		-0.880428, 0.136110, -0.454226,
		-0.304121, -0.897036, 0.320682,
		36.797871, 32.700333, 31.165627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406635, 33.465141, 31.226784>,  <37.010754, 33.328259, 30.941149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406635, 33.465141, 31.226784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519627, 33.110889, 31.374224>,  <36.587421, 32.898338, 31.462688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519627, 33.110889, 31.374224>,  <36.406635, 33.465141, 31.226784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519627, 33.110889, 31.374224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250511, 0.302809, 0.919538,
		-0.925985, -0.352090, -0.136322,
		0.282480, -0.885629, 0.368600,
		36.604370, 32.845200, 31.484804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840355, 33.306225, 31.696165>,  <36.406635, 33.465141, 31.226784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840355, 33.306225, 31.696165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174778, 33.111671, 31.797705>,  <36.375431, 32.994938, 31.858627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174778, 33.111671, 31.797705>,  <35.840355, 33.306225, 31.696165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174778, 33.111671, 31.797705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120654, 0.288361, 0.949890,
		-0.535210, -0.824790, 0.182402,
		0.836058, -0.486383, 0.253848,
		36.425594, 32.965755, 31.873859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694820, 32.940285, 32.219860>,  <35.840355, 33.306225, 31.696165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694820, 32.940285, 32.219860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092514, 32.933834, 32.262253>,  <36.331131, 32.929966, 32.287689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092514, 32.933834, 32.262253>,  <35.694820, 32.940285, 32.219860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092514, 32.933834, 32.262253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103265, 0.121502, 0.987205,
		-0.028796, -0.992460, 0.119136,
		0.994237, -0.016125, 0.105985,
		36.390785, 32.928997, 32.294048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793934, 32.551914, 32.850895>,  <35.694820, 32.940285, 32.219860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793934, 32.551914, 32.850895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141159, 32.747910, 32.818951>,  <36.349495, 32.865505, 32.799782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141159, 32.747910, 32.818951>,  <35.793934, 32.551914, 32.850895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141159, 32.747910, 32.818951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010973, 0.179766, 0.983648,
		0.496335, -0.852991, 0.161424,
		0.868062, 0.489990, -0.079864,
		36.401577, 32.894905, 32.794991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981987, 32.446297, 33.454510>,  <35.793934, 32.551914, 32.850895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981987, 32.446297, 33.454510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.232433, 32.734219, 33.334595>,  <36.382702, 32.906971, 33.262646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.232433, 32.734219, 33.334595>,  <35.981987, 32.446297, 33.454510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232433, 32.734219, 33.334595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090578, 0.449012, 0.888923,
		0.774455, -0.529411, 0.346330,
		0.626111, 0.719800, -0.299786,
		36.420265, 32.950157, 33.244659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470062, 32.659237, 34.055401>,  <35.981987, 32.446297, 33.454510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470062, 32.659237, 34.055401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489975, 32.971119, 33.805737>,  <36.501923, 33.158249, 33.655937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489975, 32.971119, 33.805737>,  <36.470062, 32.659237, 34.055401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489975, 32.971119, 33.805737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152226, 0.623557, 0.766814,
		0.987091, 0.056836, 0.149736,
		0.049786, 0.779709, -0.624160,
		36.504910, 33.205032, 33.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986225, 33.097317, 34.289143>,  <36.470062, 32.659237, 34.055401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986225, 33.097317, 34.289143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757851, 33.334850, 34.062378>,  <36.620827, 33.477371, 33.926319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757851, 33.334850, 34.062378>,  <36.986225, 33.097317, 34.289143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757851, 33.334850, 34.062378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101682, 0.736347, 0.668920,
		0.814672, 0.324268, -0.480791,
		-0.570939, 0.593837, -0.566909,
		36.586571, 33.513000, 33.892303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384388, 33.720680, 34.154613>,  <36.986225, 33.097317, 34.289143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384388, 33.720680, 34.154613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991367, 33.784340, 34.116131>,  <36.755554, 33.822536, 34.093040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991367, 33.784340, 34.116131>,  <37.384388, 33.720680, 34.154613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991367, 33.784340, 34.116131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067776, 0.788187, 0.611693,
		0.173182, 0.594501, -0.785224,
		-0.982555, 0.159154, -0.096207,
		36.696602, 33.832085, 34.087269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055393, 33.622704, 33.910374>,  <37.384388, 33.720680, 34.154613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055393, 33.622704, 33.910374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416187, 33.686211, 34.070984>,  <38.632664, 33.724316, 34.167351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416187, 33.686211, 34.070984>,  <38.055393, 33.622704, 33.910374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416187, 33.686211, 34.070984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404741, -0.634789, -0.658201,
		0.150383, 0.756199, -0.636827,
		0.901981, 0.158768, 0.401526,
		38.686783, 33.733841, 34.191441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529129, 33.639153, 33.380287>,  <38.055393, 33.622704, 33.910374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529129, 33.639153, 33.380287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761078, 33.574184, 33.699631>,  <38.900246, 33.535202, 33.891235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761078, 33.574184, 33.699631>,  <38.529129, 33.639153, 33.380287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761078, 33.574184, 33.699631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588958, -0.593508, -0.548522,
		0.562921, 0.788269, -0.248498,
		0.579869, -0.162420, 0.798356,
		38.935040, 33.525459, 33.939137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121578, 33.787827, 33.121696>,  <38.529129, 33.639153, 33.380287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121578, 33.787827, 33.121696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139450, 33.526691, 33.424168>,  <39.150173, 33.370010, 33.605648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139450, 33.526691, 33.424168>,  <39.121578, 33.787827, 33.121696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139450, 33.526691, 33.424168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432046, -0.669856, -0.603845,
		0.900744, 0.353682, 0.252129,
		0.044679, -0.652841, 0.756176,
		39.152855, 33.330837, 33.651020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801479, 33.503330, 33.147518>,  <39.121578, 33.787827, 33.121696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801479, 33.503330, 33.147518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.569626, 33.237984, 33.336823>,  <39.430515, 33.078777, 33.450405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.569626, 33.237984, 33.336823>,  <39.801479, 33.503330, 33.147518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569626, 33.237984, 33.336823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468818, -0.746499, -0.472175,
		0.666514, -0.051813, 0.743690,
		-0.579629, -0.663366, 0.473261,
		39.395737, 33.038975, 33.478802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322479, 32.939255, 33.409878>,  <39.801479, 33.503330, 33.147518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322479, 32.939255, 33.409878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.948132, 32.802578, 33.375492>,  <39.723522, 32.720570, 33.354858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.948132, 32.802578, 33.375492>,  <40.322479, 32.939255, 33.409878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948132, 32.802578, 33.375492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330699, -0.767630, -0.548983,
		0.121594, -0.542206, 0.831401,
		-0.935870, -0.341696, -0.085968,
		39.667370, 32.700069, 33.349701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437145, 32.218628, 33.348465>,  <40.322479, 32.939255, 33.409878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437145, 32.218628, 33.348465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051567, 32.262600, 33.251526>,  <39.820221, 32.288982, 33.193363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051567, 32.262600, 33.251526>,  <40.437145, 32.218628, 33.348465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051567, 32.262600, 33.251526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093338, -0.713168, -0.694752,
		-0.249206, -0.692320, 0.677192,
		-0.963942, 0.109929, -0.242346,
		39.762386, 32.295578, 33.178822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199276, 31.630289, 33.385567>,  <40.437145, 32.218628, 33.348465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199276, 31.630289, 33.385567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951530, 31.823881, 33.138294>,  <39.802883, 31.940037, 32.989929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951530, 31.823881, 33.138294>,  <40.199276, 31.630289, 33.385567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951530, 31.823881, 33.138294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159080, -0.693692, -0.702485,
		-0.768817, -0.533435, 0.352657,
		-0.619365, 0.483981, -0.618181,
		39.765720, 31.969076, 32.952839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862682, 31.094290, 33.047935>,  <40.199276, 31.630289, 33.385567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862682, 31.094290, 33.047935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774014, 31.414087, 32.824623>,  <39.720814, 31.605967, 32.690636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774014, 31.414087, 32.824623>,  <39.862682, 31.094290, 33.047935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774014, 31.414087, 32.824623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070292, -0.584132, -0.808609,
		-0.972585, -0.140000, 0.185682,
		-0.221668, 0.799493, -0.558277,
		39.707512, 31.653934, 32.657139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370941, 30.876129, 32.585712>,  <39.862682, 31.094290, 33.047935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370941, 30.876129, 32.585712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.521622, 31.194798, 32.396645>,  <39.612030, 31.385998, 32.283203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.521622, 31.194798, 32.396645>,  <39.370941, 30.876129, 32.585712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521622, 31.194798, 32.396645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072892, -0.483178, -0.872482,
		-0.923461, 0.363122, -0.123945,
		0.376705, 0.796669, -0.472665,
		39.634632, 31.433798, 32.254845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062016, 30.807278, 31.959669>,  <39.370941, 30.876129, 32.585712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062016, 30.807278, 31.959669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351151, 31.074554, 31.889215>,  <39.524632, 31.234921, 31.846943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351151, 31.074554, 31.889215>,  <39.062016, 30.807278, 31.959669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351151, 31.074554, 31.889215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252238, -0.492442, -0.832993,
		-0.643333, 0.557693, -0.524500,
		0.722840, 0.668191, -0.176133,
		39.568001, 31.275011, 31.836376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946629, 31.024683, 31.327789>,  <39.062016, 30.807278, 31.959669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946629, 31.024683, 31.327789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328194, 31.127441, 31.389824>,  <39.557133, 31.189096, 31.427044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328194, 31.127441, 31.389824>,  <38.946629, 31.024683, 31.327789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328194, 31.127441, 31.389824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195890, -0.141590, -0.970350,
		-0.227320, 0.956011, -0.185388,
		0.953914, 0.256896, 0.155087,
		39.614368, 31.204510, 31.436350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137146, 31.576046, 30.985422>,  <38.946629, 31.024683, 31.327789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137146, 31.576046, 30.985422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485302, 31.381538, 31.016294>,  <39.694195, 31.264833, 31.034819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485302, 31.381538, 31.016294>,  <39.137146, 31.576046, 30.985422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485302, 31.381538, 31.016294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164424, 0.139316, -0.976502,
		0.464090, 0.862632, 0.201214,
		0.870394, -0.486269, 0.077182,
		39.746422, 31.235657, 31.039450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596527, 31.993729, 30.680628>,  <39.137146, 31.576046, 30.985422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596527, 31.993729, 30.680628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752529, 31.625423, 30.684353>,  <39.846130, 31.404440, 30.686588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752529, 31.625423, 30.684353>,  <39.596527, 31.993729, 30.680628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752529, 31.625423, 30.684353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232363, 0.088624, -0.968583,
		0.891011, 0.379920, 0.248516,
		0.390009, -0.920764, 0.009314,
		39.869534, 31.349194, 30.687147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316071, 32.093403, 30.446291>,  <39.596527, 31.993729, 30.680628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316071, 32.093403, 30.446291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231224, 31.704258, 30.409325>,  <40.180317, 31.470770, 30.387144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231224, 31.704258, 30.409325>,  <40.316071, 32.093403, 30.446291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231224, 31.704258, 30.409325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390497, 0.002311, -0.920601,
		0.895834, -0.231362, 0.379411,
		-0.212115, -0.972865, -0.092417,
		40.167591, 31.412399, 30.381599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933861, 31.712784, 30.251705>,  <40.316071, 32.093403, 30.446291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933861, 31.712784, 30.251705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620079, 31.494190, 30.134407>,  <40.431812, 31.363033, 30.064028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620079, 31.494190, 30.134407>,  <40.933861, 31.712784, 30.251705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620079, 31.494190, 30.134407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347304, 0.004656, -0.937741,
		0.513827, -0.837456, 0.186144,
		-0.784450, -0.546485, -0.293244,
		40.384743, 31.330244, 30.046434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212437, 31.376637, 29.596422>,  <40.933861, 31.712784, 30.251705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212437, 31.376637, 29.596422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.834011, 31.260378, 29.539160>,  <40.606956, 31.190622, 29.504803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.834011, 31.260378, 29.539160>,  <41.212437, 31.376637, 29.596422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834011, 31.260378, 29.539160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188484, -0.134344, -0.972844,
		0.263522, -0.947352, 0.181880,
		-0.946060, -0.290647, -0.143158,
		40.550194, 31.173183, 29.496212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282135, 30.828321, 29.137020>,  <41.212437, 31.376637, 29.596422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282135, 30.828321, 29.137020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903053, 30.951450, 29.103304>,  <40.675606, 31.025328, 29.083075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903053, 30.951450, 29.103304>,  <41.282135, 30.828321, 29.137020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903053, 30.951450, 29.103304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045196, -0.132006, -0.990218,
		-0.315940, -0.942241, 0.111190,
		-0.947702, 0.307824, -0.084291,
		40.618744, 31.043797, 29.078016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875694, 30.283342, 28.810667>,  <41.282135, 30.828321, 29.137020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875694, 30.283342, 28.810667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689240, 30.632147, 28.750927>,  <40.577366, 30.841431, 28.715082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689240, 30.632147, 28.750927>,  <40.875694, 30.283342, 28.810667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689240, 30.632147, 28.750927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049483, -0.142850, -0.988506,
		-0.883326, -0.468174, 0.023439,
		-0.466141, 0.872013, -0.149350,
		40.549397, 30.893751, 28.706121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.309433, 30.161156, 28.332888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347240, 30.559147, 28.319681>,  <40.369923, 30.797941, 28.311758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347240, 30.559147, 28.319681>,  <40.309433, 30.161156, 28.332888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347240, 30.559147, 28.319681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210440, -0.052381, -0.976202,
		-0.973027, 0.085318, -0.214333,
		0.094514, 0.994976, -0.033014,
		40.375595, 30.857639, 28.309776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836620, 30.441286, 27.806606>,  <40.309433, 30.161156, 28.332888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836620, 30.441286, 27.806606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134151, 30.701405, 27.868359>,  <40.312672, 30.857475, 27.905411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134151, 30.701405, 27.868359>,  <39.836620, 30.441286, 27.806606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134151, 30.701405, 27.868359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106373, 0.112855, -0.987901,
		-0.659851, 0.751251, 0.014770,
		0.743829, 0.650296, 0.154380,
		40.357300, 30.896494, 27.914673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657246, 30.875410, 27.276609>,  <39.836620, 30.441286, 27.806606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657246, 30.875410, 27.276609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039852, 30.902414, 27.390106>,  <40.269417, 30.918617, 27.458204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039852, 30.902414, 27.390106>,  <39.657246, 30.875410, 27.276609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039852, 30.902414, 27.390106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291362, -0.265441, -0.919048,
		0.013270, 0.961760, -0.273571,
		0.956521, 0.067512, 0.283742,
		40.326809, 30.922668, 27.475229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916832, 31.160042, 26.733486>,  <39.657246, 30.875410, 27.276609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916832, 31.160042, 26.733486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224064, 30.984888, 26.920380>,  <40.408405, 30.879795, 27.032515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224064, 30.984888, 26.920380>,  <39.916832, 31.160042, 26.733486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224064, 30.984888, 26.920380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331190, -0.352831, -0.875113,
		0.548052, 0.826903, -0.125981,
		0.768084, -0.437884, 0.467232,
		40.454491, 30.853523, 27.060549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485256, 31.343622, 26.271671>,  <39.916832, 31.160042, 26.733486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485256, 31.343622, 26.271671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567730, 31.035976, 26.513645>,  <40.617214, 30.851389, 26.658831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567730, 31.035976, 26.513645>,  <40.485256, 31.343622, 26.271671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567730, 31.035976, 26.513645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291484, -0.541878, -0.788293,
		0.934090, 0.338863, 0.112459,
		0.206184, -0.769117, 0.604936,
		40.629585, 30.805241, 26.695126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095543, 31.183901, 25.972105>,  <40.485256, 31.343622, 26.271671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095543, 31.183901, 25.972105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973591, 30.874195, 26.193939>,  <40.900421, 30.688372, 26.327040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973591, 30.874195, 26.193939>,  <41.095543, 31.183901, 25.972105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973591, 30.874195, 26.193939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298884, -0.630672, -0.716185,
		0.904278, -0.052591, 0.423693,
		-0.304876, -0.774266, 0.554584,
		40.882130, 30.641916, 26.360313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610996, 30.718094, 25.875835>,  <41.095543, 31.183901, 25.972105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610996, 30.718094, 25.875835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285423, 30.505764, 25.970274>,  <41.090080, 30.378366, 26.026937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285423, 30.505764, 25.970274>,  <41.610996, 30.718094, 25.875835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285423, 30.505764, 25.970274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162744, -0.598447, -0.784458,
		0.557702, -0.600071, 0.573483,
		-0.813931, -0.530825, 0.236097,
		41.041245, 30.346518, 26.041103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881134, 30.001656, 25.830748>,  <41.610996, 30.718094, 25.875835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881134, 30.001656, 25.830748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482388, 29.998247, 25.799301>,  <41.243137, 29.996202, 25.780434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482388, 29.998247, 25.799301>,  <41.881134, 30.001656, 25.830748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482388, 29.998247, 25.799301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059851, -0.731045, -0.679699,
		-0.051679, -0.682276, 0.729266,
		-0.996869, -0.008521, -0.078614,
		41.183327, 29.995691, 25.775717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737717, 29.309835, 25.799482>,  <41.881134, 30.001656, 25.830748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737717, 29.309835, 25.799482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416676, 29.501694, 25.657629>,  <41.224049, 29.616808, 25.572517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416676, 29.501694, 25.657629>,  <41.737717, 29.309835, 25.799482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416676, 29.501694, 25.657629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069527, -0.515239, -0.854222,
		-0.592446, -0.710258, 0.380185,
		-0.802604, 0.479647, -0.354634,
		41.175896, 29.645588, 25.551239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305309, 28.701372, 25.637369>,  <41.737717, 29.309835, 25.799482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305309, 28.701372, 25.637369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145210, 29.010046, 25.439659>,  <41.049152, 29.195250, 25.321033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145210, 29.010046, 25.439659>,  <41.305309, 28.701372, 25.637369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145210, 29.010046, 25.439659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054354, -0.558404, -0.827787,
		-0.914795, -0.304450, 0.265442,
		-0.400244, 0.771683, -0.494277,
		41.025139, 29.241550, 25.291376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616837, 28.515072, 25.294556>,  <41.305309, 28.701372, 25.637369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616837, 28.515072, 25.294556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784000, 28.824306, 25.103687>,  <40.884296, 29.009848, 24.989166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784000, 28.824306, 25.103687>,  <40.616837, 28.515072, 25.294556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784000, 28.824306, 25.103687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126771, -0.470474, -0.873260,
		-0.899602, 0.425433, -0.098609,
		0.417907, 0.773086, -0.477171,
		40.909374, 29.056232, 24.960535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336365, 28.506086, 24.636688>,  <40.616837, 28.515072, 25.294556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336365, 28.506086, 24.636688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620529, 28.773829, 24.549719>,  <40.791027, 28.934475, 24.497538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620529, 28.773829, 24.549719>,  <40.336365, 28.506086, 24.636688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620529, 28.773829, 24.549719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051494, -0.357544, -0.932476,
		-0.701898, 0.651248, -0.288472,
		0.710414, 0.669357, -0.217424,
		40.833652, 28.974636, 24.484491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105698, 28.776560, 23.992689>,  <40.336365, 28.506086, 24.636688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105698, 28.776560, 23.992689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500233, 28.828735, 24.032934>,  <40.736954, 28.860041, 24.057081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500233, 28.828735, 24.032934>,  <40.105698, 28.776560, 23.992689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500233, 28.828735, 24.032934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139460, -0.336092, -0.931447,
		-0.087682, 0.932753, -0.349691,
		0.986338, 0.130439, 0.100612,
		40.796135, 28.867867, 24.063118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326157, 29.227787, 23.392838>,  <40.105698, 28.776560, 23.992689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326157, 29.227787, 23.392838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.645386, 29.024675, 23.522598>,  <40.836926, 28.902809, 23.600454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.645386, 29.024675, 23.522598>,  <40.326157, 29.227787, 23.392838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645386, 29.024675, 23.522598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231778, -0.238251, -0.943141,
		0.556195, 0.827888, -0.072451,
		0.798076, -0.507778, 0.324401,
		40.884808, 28.872341, 23.619919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850979, 29.540207, 23.128649>,  <40.326157, 29.227787, 23.392838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850979, 29.540207, 23.128649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.025261, 29.195019, 23.230972>,  <41.129829, 28.987906, 23.292366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.025261, 29.195019, 23.230972>,  <40.850979, 29.540207, 23.128649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025261, 29.195019, 23.230972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436379, -0.046041, -0.898584,
		0.787231, 0.503149, 0.356523,
		0.435707, -0.862972, 0.255808,
		41.155972, 28.936127, 23.307714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451981, 29.611158, 22.701677>,  <40.850979, 29.540207, 23.128649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451981, 29.611158, 22.701677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.438721, 29.226772, 22.811550>,  <41.430763, 28.996141, 22.877474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.438721, 29.226772, 22.811550>,  <41.451981, 29.611158, 22.701677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438721, 29.226772, 22.811550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297551, -0.271859, -0.915181,
		0.954130, 0.051392, 0.294948,
		-0.033151, -0.960964, 0.274680,
		41.428776, 28.938482, 22.893953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083408, 29.293892, 22.569664>,  <41.451981, 29.611158, 22.701677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083408, 29.293892, 22.569664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835579, 28.980015, 22.577538>,  <41.686882, 28.791689, 22.582262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835579, 28.980015, 22.577538>,  <42.083408, 29.293892, 22.569664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835579, 28.980015, 22.577538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275915, -0.241193, -0.930428,
		0.734849, -0.571036, 0.365945,
		-0.619571, -0.784694, 0.019683,
		41.649708, 28.744606, 22.583443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463364, 28.647299, 22.306000>,  <42.083408, 29.293892, 22.569664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463364, 28.647299, 22.306000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077698, 28.553179, 22.256966>,  <41.846298, 28.496706, 22.227545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077698, 28.553179, 22.256966>,  <42.463364, 28.647299, 22.306000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077698, 28.553179, 22.256966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207498, -0.380805, -0.901073,
		0.165343, -0.894215, 0.415982,
		-0.964161, -0.235301, -0.122584,
		41.788448, 28.482588, 22.220190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479084, 28.067062, 21.873434>,  <42.463364, 28.647299, 22.306000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479084, 28.067062, 21.873434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.085983, 28.137665, 21.851357>,  <41.850124, 28.180025, 21.838110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.085983, 28.137665, 21.851357>,  <42.479084, 28.067062, 21.873434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085983, 28.137665, 21.851357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026161, -0.428133, -0.903337,
		-0.183072, -0.886312, 0.425365,
		-0.982751, 0.176504, -0.055192,
		41.791157, 28.190617, 21.834799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115383, 27.479254, 21.546057>,  <42.479084, 28.067062, 21.873434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115383, 27.479254, 21.546057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.886162, 27.805216, 21.511318>,  <41.748631, 28.000793, 21.490475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.886162, 27.805216, 21.511318>,  <42.115383, 27.479254, 21.546057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886162, 27.805216, 21.511318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165131, -0.218617, -0.961737,
		-0.802710, -0.536785, 0.259845,
		-0.573052, 0.814904, -0.086846,
		41.714245, 28.049686, 21.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631657, 27.194389, 21.232096>,  <42.115383, 27.479254, 21.546057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631657, 27.194389, 21.232096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582119, 27.586794, 21.172390>,  <41.552395, 27.822237, 21.136566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582119, 27.586794, 21.172390>,  <41.631657, 27.194389, 21.232096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582119, 27.586794, 21.172390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006804, -0.149578, -0.988727,
		-0.992278, -0.123468, 0.011850,
		-0.123848, 0.981011, -0.149263,
		41.544964, 27.881098, 21.127611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056839, 27.320709, 20.854990>,  <41.631657, 27.194389, 21.232096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056839, 27.320709, 20.854990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276432, 27.644955, 20.773479>,  <41.408188, 27.839502, 20.724573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276432, 27.644955, 20.773479>,  <41.056839, 27.320709, 20.854990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276432, 27.644955, 20.773479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200152, -0.109213, -0.973659,
		-0.811514, 0.575310, 0.102290,
		0.548984, 0.810611, -0.203777,
		41.441128, 27.888138, 20.712347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734741, 27.693768, 20.281446>,  <41.056839, 27.320709, 20.854990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734741, 27.693768, 20.281446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120354, 27.799692, 20.272367>,  <41.351723, 27.863247, 20.266920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120354, 27.799692, 20.272367>,  <40.734741, 27.693768, 20.281446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120354, 27.799692, 20.272367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033303, 0.035634, -0.998810,
		-0.263688, 0.963641, 0.043171,
		0.964033, 0.264812, -0.022696,
		41.409565, 27.879135, 20.265558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675842, 27.947983, 19.517866>,  <40.734741, 27.693768, 20.281446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675842, 27.947983, 19.517866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454288, 28.192364, 19.291611>,  <40.321358, 28.338993, 19.155857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454288, 28.192364, 19.291611>,  <40.675842, 27.947983, 19.517866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454288, 28.192364, 19.291611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632345, 0.133260, 0.763139,
		0.541619, 0.780371, 0.312522,
		-0.553885, 0.610953, -0.565640,
		40.288124, 28.375650, 19.121920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600159, 28.631371, 19.889030>,  <40.675842, 27.947983, 19.517866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600159, 28.631371, 19.889030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277218, 28.553223, 19.666313>,  <40.083454, 28.506334, 19.532682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277218, 28.553223, 19.666313>,  <40.600159, 28.631371, 19.889030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277218, 28.553223, 19.666313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582364, 0.111788, 0.805205,
		-0.095068, 0.974338, -0.204027,
		-0.807350, -0.195367, -0.556792,
		40.035011, 28.494612, 19.499275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100002, 29.182455, 20.040009>,  <40.600159, 28.631371, 19.889030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100002, 29.182455, 20.040009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.882088, 28.871237, 19.914885>,  <39.751339, 28.684505, 19.839809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.882088, 28.871237, 19.914885>,  <40.100002, 29.182455, 20.040009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882088, 28.871237, 19.914885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593056, 0.093745, 0.799685,
		-0.592868, 0.621172, -0.512497,
		-0.544786, -0.778047, -0.312811,
		39.718651, 28.637823, 19.821041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517780, 29.408258, 19.955780>,  <40.100002, 29.182455, 20.040009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517780, 29.408258, 19.955780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458504, 29.013983, 19.987926>,  <39.422939, 28.777418, 20.007214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458504, 29.013983, 19.987926>,  <39.517780, 29.408258, 19.955780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458504, 29.013983, 19.987926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574020, 0.151904, 0.804628,
		-0.805320, 0.073107, -0.588315,
		-0.148192, -0.985688, 0.080366,
		39.414047, 28.718277, 20.012037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807709, 29.311611, 20.098377>,  <39.517780, 29.408258, 19.955780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807709, 29.311611, 20.098377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959988, 28.963661, 20.223841>,  <39.051353, 28.754890, 20.299120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959988, 28.963661, 20.223841>,  <38.807709, 29.311611, 20.098377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959988, 28.963661, 20.223841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449600, 0.122283, 0.884820,
		-0.808040, -0.477872, -0.344544,
		0.380698, -0.869877, 0.313661,
		39.074196, 28.702698, 20.317940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240990, 28.990303, 20.419195>,  <38.807709, 29.311611, 20.098377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240990, 28.990303, 20.419195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556469, 28.795494, 20.569267>,  <38.745758, 28.678610, 20.659311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556469, 28.795494, 20.569267>,  <38.240990, 28.990303, 20.419195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556469, 28.795494, 20.569267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425017, 0.008994, 0.905141,
		-0.444196, -0.873344, -0.199899,
		0.788701, -0.487021, 0.375182,
		38.793079, 28.649387, 20.681822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949326, 28.532963, 20.859297>,  <38.240990, 28.990303, 20.419195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949326, 28.532963, 20.859297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321777, 28.563543, 21.001934>,  <38.545246, 28.581892, 21.087517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321777, 28.563543, 21.001934>,  <37.949326, 28.532963, 20.859297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321777, 28.563543, 21.001934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362131, 0.078010, 0.928857,
		0.043187, -0.994018, 0.100319,
		0.931126, 0.076443, 0.356596,
		38.601116, 28.586479, 21.108913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045094, 28.016783, 21.412970>,  <37.949326, 28.532963, 20.859297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045094, 28.016783, 21.412970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274960, 28.342390, 21.446762>,  <38.412880, 28.537754, 21.467037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274960, 28.342390, 21.446762>,  <38.045094, 28.016783, 21.412970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274960, 28.342390, 21.446762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364262, 0.161976, 0.917103,
		0.732855, -0.557797, 0.389597,
		0.574662, 0.814019, 0.084479,
		38.447357, 28.586596, 21.472105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978287, 28.212273, 22.099682>,  <38.045094, 28.016783, 21.412970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978287, 28.212273, 22.099682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227100, 28.508177, 21.997061>,  <38.376389, 28.685720, 21.935488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227100, 28.508177, 21.997061>,  <37.978287, 28.212273, 22.099682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227100, 28.508177, 21.997061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030778, 0.350509, 0.936053,
		0.782382, -0.574365, 0.240799,
		0.622038, 0.739762, -0.256554,
		38.413712, 28.730106, 21.920095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416725, 28.295097, 22.730488>,  <37.978287, 28.212273, 22.099682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416725, 28.295097, 22.730488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472591, 28.612009, 22.492905>,  <38.506111, 28.802156, 22.350355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472591, 28.612009, 22.492905>,  <38.416725, 28.295097, 22.730488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472591, 28.612009, 22.492905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341984, 0.524331, 0.779823,
		0.929269, -0.312038, -0.197717,
		0.139665, 0.792282, -0.593956,
		38.514492, 28.849693, 22.314718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069561, 28.497591, 22.818037>,  <38.416725, 28.295097, 22.730488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069561, 28.497591, 22.818037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844795, 28.808144, 22.703856>,  <38.709934, 28.994474, 22.635347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844795, 28.808144, 22.703856>,  <39.069561, 28.497591, 22.818037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844795, 28.808144, 22.703856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240853, 0.483695, 0.841445,
		0.791355, 0.404067, -0.458789,
		-0.561914, 0.776382, -0.285453,
		38.676220, 29.041058, 22.618219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444401, 28.950047, 22.987629>,  <39.069561, 28.497591, 22.818037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444401, 28.950047, 22.987629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.080578, 29.115587, 22.972462>,  <38.862286, 29.214912, 22.963362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.080578, 29.115587, 22.972462>,  <39.444401, 28.950047, 22.987629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080578, 29.115587, 22.972462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194290, 0.504109, 0.841502,
		0.367373, 0.758023, -0.538922,
		-0.909554, 0.413853, -0.037920,
		38.807713, 29.239742, 22.961086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598778, 29.626413, 23.202253>,  <39.444401, 28.950047, 22.987629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598778, 29.626413, 23.202253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205147, 29.578264, 23.254574>,  <38.968967, 29.549376, 23.285967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205147, 29.578264, 23.254574>,  <39.598778, 29.626413, 23.202253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205147, 29.578264, 23.254574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024271, 0.637963, 0.769685,
		-0.176095, 0.760602, -0.624881,
		-0.984074, -0.120371, 0.130802,
		38.909924, 29.542152, 23.293814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251087, 30.269670, 23.491165>,  <39.598778, 29.626413, 23.202253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251087, 30.269670, 23.491165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990231, 29.990179, 23.608805>,  <38.833717, 29.822485, 23.679388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.990231, 29.990179, 23.608805>,  <39.251087, 30.269670, 23.491165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990231, 29.990179, 23.608805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065516, 0.438437, 0.896371,
		-0.755263, 0.565291, -0.331699,
		-0.652139, -0.698727, 0.294100,
		38.794590, 29.780561, 23.697035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755207, 30.651962, 23.785061>,  <39.251087, 30.269670, 23.491165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755207, 30.651962, 23.785061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615746, 30.302324, 23.920353>,  <38.532070, 30.092541, 24.001528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615746, 30.302324, 23.920353>,  <38.755207, 30.651962, 23.785061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615746, 30.302324, 23.920353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267521, 0.438673, 0.857904,
		-0.898263, 0.208623, -0.386782,
		-0.348649, -0.874095, 0.338232,
		38.511150, 30.040096, 24.021822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042301, 30.723246, 24.144337>,  <38.755207, 30.651962, 23.785061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042301, 30.723246, 24.144337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240150, 30.407690, 24.290215>,  <38.358860, 30.218357, 24.377741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240150, 30.407690, 24.290215>,  <38.042301, 30.723246, 24.144337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240150, 30.407690, 24.290215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287839, 0.247248, 0.925212,
		-0.820062, -0.562600, -0.104780,
		0.494618, -0.788891, 0.364697,
		38.388535, 30.171022, 24.399624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696617, 30.615410, 24.811298>,  <38.042301, 30.723246, 24.144337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696617, 30.615410, 24.811298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007378, 30.368299, 24.859930>,  <38.193832, 30.220034, 24.889109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007378, 30.368299, 24.859930>,  <37.696617, 30.615410, 24.811298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007378, 30.368299, 24.859930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081775, 0.092458, 0.992353,
		-0.624291, -0.780901, 0.021313,
		0.776900, -0.617774, 0.121579,
		38.240448, 30.182968, 24.896404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425713, 29.988890, 25.133480>,  <37.696617, 30.615410, 24.811298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425713, 29.988890, 25.133480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822731, 29.996649, 25.181608>,  <38.060944, 30.001305, 25.210485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822731, 29.996649, 25.181608>,  <37.425713, 29.988890, 25.133480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822731, 29.996649, 25.181608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117607, -0.106557, 0.987327,
		0.031977, -0.994117, -0.103481,
		0.992545, 0.019402, 0.120323,
		38.120495, 30.002468, 25.217705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460442, 29.458138, 25.533331>,  <37.425713, 29.988890, 25.133480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460442, 29.458138, 25.533331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777538, 29.698311, 25.575367>,  <37.967796, 29.842415, 25.600588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777538, 29.698311, 25.575367>,  <37.460442, 29.458138, 25.533331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777538, 29.698311, 25.575367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089498, -0.055882, 0.994418,
		0.602952, -0.797721, 0.009438,
		0.792741, 0.600431, 0.105089,
		38.015362, 29.878441, 25.606894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858143, 29.208862, 26.088974>,  <37.460442, 29.458138, 25.533331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858143, 29.208862, 26.088974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012852, 29.575626, 26.049620>,  <38.105679, 29.795685, 26.026007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012852, 29.575626, 26.049620>,  <37.858143, 29.208862, 26.088974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012852, 29.575626, 26.049620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189219, 0.183329, 0.964669,
		0.902554, -0.354491, 0.244404,
		0.386773, 0.916911, -0.098388,
		38.128883, 29.850700, 26.020103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370232, 29.315624, 26.527657>,  <37.858143, 29.208862, 26.088974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370232, 29.315624, 26.527657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258156, 29.693602, 26.460037>,  <38.190910, 29.920387, 26.419466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258156, 29.693602, 26.460037>,  <38.370232, 29.315624, 26.527657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258156, 29.693602, 26.460037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195426, 0.116264, 0.973803,
		0.939841, 0.305887, 0.152091,
		-0.280191, 0.944942, -0.169048,
		38.174099, 29.977085, 26.409323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.808403, 30.587561, 31.414141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491547, 30.791424, 31.279823>,  <40.301434, 30.913742, 31.199232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491547, 30.791424, 31.279823>,  <40.808403, 30.587561, 31.414141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491547, 30.791424, 31.279823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143685, 0.378993, 0.914176,
		0.593182, 0.772407, -0.226986,
		-0.792143, 0.509658, -0.335795,
		40.253902, 30.944321, 31.179085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899799, 31.257557, 31.661196>,  <40.808403, 30.587561, 31.414141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899799, 31.257557, 31.661196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510303, 31.249605, 31.570471>,  <40.276608, 31.244833, 31.516037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510303, 31.249605, 31.570471>,  <40.899799, 31.257557, 31.661196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510303, 31.249605, 31.570471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194633, 0.589578, 0.783910,
		0.118137, 0.807467, -0.577963,
		-0.973736, -0.019882, -0.226811,
		40.218182, 31.243641, 31.502428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636139, 31.880655, 31.438465>,  <40.899799, 31.257557, 31.661196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636139, 31.880655, 31.438465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319973, 31.693853, 31.597031>,  <40.130272, 31.581772, 31.692171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319973, 31.693853, 31.597031>,  <40.636139, 31.880655, 31.438465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319973, 31.693853, 31.597031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029966, 0.675840, 0.736439,
		-0.611834, 0.570216, -0.548190,
		-0.790418, -0.467006, 0.396415,
		40.082848, 31.553751, 31.715956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283520, 32.417206, 31.697275>,  <40.636139, 31.880655, 31.438465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283520, 32.417206, 31.697275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.081429, 32.115929, 31.865768>,  <39.960175, 31.935162, 31.966864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.081429, 32.115929, 31.865768>,  <40.283520, 32.417206, 31.697275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081429, 32.115929, 31.865768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399786, 0.636854, 0.659233,
		-0.764796, 0.164662, -0.622876,
		-0.505232, -0.753196, 0.421233,
		39.929859, 31.889971, 31.992138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636856, 32.732243, 31.944592>,  <40.283520, 32.417206, 31.697275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636856, 32.732243, 31.944592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.662170, 32.402451, 32.169525>,  <39.677361, 32.204575, 32.304485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.662170, 32.402451, 32.169525>,  <39.636856, 32.732243, 31.944592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662170, 32.402451, 32.169525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410831, 0.491986, 0.767573,
		-0.909513, -0.279600, -0.307588,
		0.063285, -0.824484, 0.562336,
		39.681156, 32.155106, 32.338226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003315, 32.711037, 32.193554>,  <39.636856, 32.732243, 31.944592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003315, 32.711037, 32.193554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246841, 32.487045, 32.418327>,  <39.392956, 32.352650, 32.553192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246841, 32.487045, 32.418327>,  <39.003315, 32.711037, 32.193554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246841, 32.487045, 32.418327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407817, 0.386651, 0.827156,
		-0.680463, -0.732749, 0.007029,
		0.608815, -0.559982, 0.561929,
		39.429485, 32.319050, 32.586906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536449, 32.467308, 32.737194>,  <39.003315, 32.711037, 32.193554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536449, 32.467308, 32.737194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910767, 32.433079, 32.874001>,  <39.135357, 32.412540, 32.956085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910767, 32.433079, 32.874001>,  <38.536449, 32.467308, 32.737194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910767, 32.433079, 32.874001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246667, 0.534212, 0.808563,
		-0.251904, -0.841008, 0.478801,
		0.935788, -0.085576, 0.342018,
		39.191502, 32.407406, 32.976604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474842, 32.178333, 33.472672>,  <38.536449, 32.467308, 32.737194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474842, 32.178333, 33.472672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837967, 32.338497, 33.422791>,  <39.055840, 32.434597, 33.392860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837967, 32.338497, 33.422791>,  <38.474842, 32.178333, 33.472672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837967, 32.338497, 33.422791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179572, 0.639835, 0.747239,
		0.378993, -0.655958, 0.652751,
		0.907810, 0.400414, -0.124701,
		39.110310, 32.458622, 33.385380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824478, 32.128819, 34.170940>,  <38.474842, 32.178333, 33.472672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824478, 32.128819, 34.170940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.971172, 32.413593, 33.931389>,  <39.059189, 32.584457, 33.787659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.971172, 32.413593, 33.931389>,  <38.824478, 32.128819, 34.170940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971172, 32.413593, 33.931389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350102, 0.702020, 0.620159,
		0.861935, -0.017768, 0.506707,
		0.366737, 0.711936, -0.598875,
		39.081192, 32.627174, 33.751728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269650, 32.591080, 34.658546>,  <38.824478, 32.128819, 34.170940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269650, 32.591080, 34.658546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198917, 32.820179, 34.338375>,  <39.156479, 32.957638, 34.146271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198917, 32.820179, 34.338375>,  <39.269650, 32.591080, 34.658546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198917, 32.820179, 34.338375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087185, 0.800936, 0.592368,
		0.980372, 0.174535, -0.091695,
		-0.176831, 0.572746, -0.800433,
		39.145866, 32.992004, 34.098244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669552, 33.157909, 34.877804>,  <39.269650, 32.591080, 34.658546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669552, 33.157909, 34.877804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414536, 33.262928, 34.588081>,  <39.261528, 33.325939, 34.414249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414536, 33.262928, 34.588081>,  <39.669552, 33.157909, 34.877804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414536, 33.262928, 34.588081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160154, 0.874440, 0.457935,
		0.753589, 0.407951, -0.515441,
		-0.637537, 0.262545, -0.724304,
		39.223274, 33.341690, 34.370789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900009, 33.777534, 34.673428>,  <39.669552, 33.157909, 34.877804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900009, 33.777534, 34.673428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528049, 33.777870, 34.526306>,  <39.304874, 33.778072, 34.438034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528049, 33.777870, 34.526306>,  <39.900009, 33.777534, 34.673428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528049, 33.777870, 34.526306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164380, 0.893624, 0.417630,
		0.329031, 0.448815, -0.830845,
		-0.929902, 0.000839, -0.367806,
		39.249081, 33.778122, 34.415966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764946, 34.479118, 34.490089>,  <39.900009, 33.777534, 34.673428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764946, 34.479118, 34.490089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.411869, 34.299534, 34.545650>,  <39.200024, 34.191784, 34.578987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.411869, 34.299534, 34.545650>,  <39.764946, 34.479118, 34.490089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411869, 34.299534, 34.545650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232338, 0.673812, 0.701425,
		-0.408509, 0.586867, -0.699077,
		-0.882689, -0.448960, 0.138907,
		39.147064, 34.164845, 34.587322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148510, 34.971092, 34.483612>,  <39.764946, 34.479118, 34.490089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148510, 34.971092, 34.483612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.144241, 34.639992, 34.708008>,  <39.141682, 34.441330, 34.842644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.144241, 34.639992, 34.708008>,  <39.148510, 34.971092, 34.483612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144241, 34.639992, 34.708008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251426, 0.545220, 0.799700,
		-0.967818, -0.132513, -0.213937,
		-0.010672, -0.827753, 0.560991,
		39.141041, 34.391666, 34.876305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542500, 35.560387, 34.374565>,  <39.148510, 34.971092, 34.483612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542500, 35.560387, 34.374565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503307, 35.952286, 34.304722>,  <39.479794, 36.187428, 34.262814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503307, 35.952286, 34.304722>,  <39.542500, 35.560387, 34.374565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503307, 35.952286, 34.304722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300481, -0.196392, -0.933350,
		-0.948742, -0.038980, 0.313638,
		-0.097978, 0.979750, -0.174612,
		39.473915, 36.246212, 34.252338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808598, 35.703453, 34.131474>,  <39.542500, 35.560387, 34.374565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808598, 35.703453, 34.131474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997593, 36.028912, 33.995983>,  <39.110989, 36.224186, 33.914688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997593, 36.028912, 33.995983>,  <38.808598, 35.703453, 34.131474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997593, 36.028912, 33.995983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376999, -0.160808, -0.912147,
		-0.796634, 0.558680, 0.230763,
		0.472490, 0.813644, -0.338727,
		39.139339, 36.273006, 33.894363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358021, 36.044693, 33.737331>,  <38.808598, 35.703453, 34.131474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358021, 36.044693, 33.737331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718903, 36.167049, 33.615700>,  <38.935432, 36.240463, 33.542721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718903, 36.167049, 33.615700>,  <38.358021, 36.044693, 33.737331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718903, 36.167049, 33.615700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287893, -0.097873, -0.952648,
		-0.321169, 0.947022, -0.000237,
		0.902202, 0.305893, -0.304075,
		38.989563, 36.258816, 33.524479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322140, 36.587811, 33.084190>,  <38.358021, 36.044693, 33.737331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322140, 36.587811, 33.084190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695309, 36.444592, 33.068966>,  <38.919212, 36.358662, 33.059830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695309, 36.444592, 33.068966>,  <38.322140, 36.587811, 33.084190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695309, 36.444592, 33.068966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059810, -0.049853, -0.996964,
		0.355063, 0.932371, -0.067924,
		0.932927, -0.358048, -0.038064,
		38.975185, 36.337177, 33.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581993, 36.867222, 32.536728>,  <38.322140, 36.587811, 33.084190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581993, 36.867222, 32.536728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832054, 36.562637, 32.605270>,  <38.982090, 36.379887, 32.646397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832054, 36.562637, 32.605270>,  <38.581993, 36.867222, 32.536728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832054, 36.562637, 32.605270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021651, -0.202544, -0.979034,
		0.780203, 0.615755, -0.110134,
		0.625152, -0.761461, 0.171357,
		39.019600, 36.334198, 32.656677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101032, 37.025131, 32.075050>,  <38.581993, 36.867222, 32.536728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101032, 37.025131, 32.075050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117573, 36.631798, 32.145874>,  <39.127499, 36.395798, 32.188370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117573, 36.631798, 32.145874>,  <39.101032, 37.025131, 32.075050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117573, 36.631798, 32.145874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060666, -0.174416, -0.982802,
		0.997301, 0.051382, 0.052442,
		0.041351, -0.983331, 0.177062,
		39.129978, 36.336800, 32.198994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597416, 36.745941, 31.560940>,  <39.101032, 37.025131, 32.075050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597416, 36.745941, 31.560940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397701, 36.421207, 31.682028>,  <39.277870, 36.226368, 31.754681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397701, 36.421207, 31.682028>,  <39.597416, 36.745941, 31.560940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397701, 36.421207, 31.682028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092708, -0.397438, -0.912934,
		0.861461, -0.427753, 0.273700,
		-0.499289, -0.811831, 0.302721,
		39.247913, 36.177658, 31.772844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946404, 36.294273, 31.273258>,  <39.597416, 36.745941, 31.560940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946404, 36.294273, 31.273258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596180, 36.118694, 31.353977>,  <39.386047, 36.013348, 31.402409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596180, 36.118694, 31.353977>,  <39.946404, 36.294273, 31.273258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596180, 36.118694, 31.353977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033626, -0.472062, -0.880924,
		0.481941, -0.764514, 0.428078,
		-0.875558, -0.438948, 0.201799,
		39.333511, 35.987011, 31.414516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957691, 35.651573, 30.917303>,  <39.946404, 36.294273, 31.273258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957691, 35.651573, 30.917303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571011, 35.679253, 31.015846>,  <39.339001, 35.695862, 31.074972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571011, 35.679253, 31.015846>,  <39.957691, 35.651573, 30.917303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571011, 35.679253, 31.015846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247804, -0.493318, -0.833805,
		0.063832, -0.867092, 0.494042,
		-0.966705, 0.069202, 0.246358,
		39.280998, 35.700012, 31.089754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662052, 34.915863, 30.937788>,  <39.957691, 35.651573, 30.917303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662052, 34.915863, 30.937788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.377892, 35.184570, 30.853830>,  <39.207394, 35.345795, 30.803455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.377892, 35.184570, 30.853830>,  <39.662052, 34.915863, 30.937788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377892, 35.184570, 30.853830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309797, -0.566265, -0.763786,
		-0.631944, -0.477571, 0.610388,
		-0.710403, 0.671766, -0.209898,
		39.164768, 35.386101, 30.790861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054699, 34.534733, 30.889313>,  <39.662052, 34.915863, 30.937788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054699, 34.534733, 30.889313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.993698, 34.881557, 30.699596>,  <38.957100, 35.089653, 30.585766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.993698, 34.881557, 30.699596>,  <39.054699, 34.534733, 30.889313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993698, 34.881557, 30.699596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153661, -0.494871, -0.855273,
		-0.976285, -0.057547, 0.208700,
		-0.152498, 0.867059, -0.474292,
		38.947948, 35.141674, 30.557308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410236, 34.479160, 30.508129>,  <39.054699, 34.534733, 30.889313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410236, 34.479160, 30.508129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619152, 34.785770, 30.358650>,  <38.744499, 34.969738, 30.268963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619152, 34.785770, 30.358650>,  <38.410236, 34.479160, 30.508129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619152, 34.785770, 30.358650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343723, -0.211817, -0.914871,
		-0.780430, 0.606274, 0.152844,
		0.522287, 0.766528, -0.373699,
		38.775837, 35.015728, 30.246540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984524, 34.830292, 29.890705>,  <38.410236, 34.479160, 30.508129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984524, 34.830292, 29.890705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355385, 34.966789, 29.828802>,  <38.577900, 35.048687, 29.791660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355385, 34.966789, 29.828802>,  <37.984524, 34.830292, 29.890705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355385, 34.966789, 29.828802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061970, -0.267681, -0.961513,
		-0.369534, 0.901056, -0.227033,
		0.927149, 0.341242, -0.154756,
		38.633530, 35.069160, 29.782375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920307, 35.317863, 29.315722>,  <37.984524, 34.830292, 29.890705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920307, 35.317863, 29.315722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.310345, 35.230740, 29.332485>,  <38.544365, 35.178467, 29.342543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.310345, 35.230740, 29.332485>,  <37.920307, 35.317863, 29.315722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310345, 35.230740, 29.332485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032566, -0.327481, -0.944296,
		0.219403, 0.919410, -0.326417,
		0.975091, -0.217811, 0.041909,
		38.602871, 35.165398, 29.345058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697159, 36.073528, 29.213673>,  <37.920307, 35.317863, 29.315722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697159, 36.073528, 29.213673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369652, 36.082439, 28.984196>,  <37.173149, 36.087788, 28.846510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369652, 36.082439, 28.984196>,  <37.697159, 36.073528, 29.213673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369652, 36.082439, 28.984196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544919, 0.284500, 0.788748,
		0.180788, 0.958417, -0.220800,
		-0.818767, 0.022278, -0.573694,
		37.124023, 36.089123, 28.812088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405487, 36.766785, 29.207476>,  <37.697159, 36.073528, 29.213673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405487, 36.766785, 29.207476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104633, 36.521622, 29.110611>,  <36.924122, 36.374523, 29.052492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104633, 36.521622, 29.110611>,  <37.405487, 36.766785, 29.207476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104633, 36.521622, 29.110611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445658, 0.202353, 0.872033,
		-0.485469, 0.763808, -0.425342,
		-0.752136, -0.612903, -0.242161,
		36.878994, 36.337749, 29.037962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794136, 37.233025, 29.306253>,  <37.405487, 36.766785, 29.207476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794136, 37.233025, 29.306253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.685032, 36.848190, 29.305737>,  <36.619568, 36.617290, 29.305428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.685032, 36.848190, 29.305737>,  <36.794136, 37.233025, 29.306253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685032, 36.848190, 29.305737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461822, 0.129754, 0.877430,
		-0.843992, 0.239924, -0.479702,
		-0.272760, -0.962081, -0.001291,
		36.603203, 36.559566, 29.305349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092159, 37.277012, 29.480038>,  <36.794136, 37.233025, 29.306253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092159, 37.277012, 29.480038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190918, 36.898602, 29.564024>,  <36.250172, 36.671555, 29.614416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190918, 36.898602, 29.564024>,  <36.092159, 37.277012, 29.480038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190918, 36.898602, 29.564024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437200, 0.084620, 0.895374,
		-0.864811, -0.312861, -0.392708,
		0.246897, -0.946022, 0.209964,
		36.264988, 36.614796, 29.627012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519249, 36.935139, 29.657513>,  <36.092159, 37.277012, 29.480038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519249, 36.935139, 29.657513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.787460, 36.687706, 29.821342>,  <35.948387, 36.539246, 29.919640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.787460, 36.687706, 29.821342>,  <35.519249, 36.935139, 29.657513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787460, 36.687706, 29.821342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540478, -0.029124, 0.840854,
		-0.508207, -0.785182, -0.353857,
		0.670529, -0.618580, 0.409573,
		35.988621, 36.502132, 29.944214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178352, 36.474266, 29.992262>,  <35.519249, 36.935139, 29.657513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178352, 36.474266, 29.992262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525509, 36.423504, 30.184372>,  <35.733803, 36.393047, 30.299639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525509, 36.423504, 30.184372>,  <35.178352, 36.474266, 29.992262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525509, 36.423504, 30.184372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479320, 0.039983, 0.876729,
		-0.130464, -0.991109, -0.026127,
		0.867889, -0.126905, 0.480275,
		35.785877, 36.385433, 30.328455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058289, 35.793858, 30.384222>,  <35.178352, 36.474266, 29.992262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058289, 35.793858, 30.384222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.354076, 36.013813, 30.539555>,  <35.531551, 36.145786, 30.632755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.354076, 36.013813, 30.539555>,  <35.058289, 35.793858, 30.384222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354076, 36.013813, 30.539555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494796, 0.052824, 0.867402,
		0.456463, -0.833565, 0.311145,
		0.739471, 0.549891, 0.388332,
		35.575916, 36.178780, 30.656054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245209, 35.494686, 30.968210>,  <35.058289, 35.793858, 30.384222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245209, 35.494686, 30.968210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.396740, 35.856441, 31.046761>,  <35.487659, 36.073494, 31.093891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.396740, 35.856441, 31.046761>,  <35.245209, 35.494686, 30.968210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396740, 35.856441, 31.046761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579947, 0.066629, 0.811925,
		0.721213, -0.421470, 0.549740,
		0.378831, 0.904391, 0.196376,
		35.510387, 36.127758, 31.105673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376225, 35.456303, 31.740746>,  <35.245209, 35.494686, 30.968210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376225, 35.456303, 31.740746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342228, 35.831779, 31.607096>,  <35.321831, 36.057064, 31.526905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342228, 35.831779, 31.607096>,  <35.376225, 35.456303, 31.740746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342228, 35.831779, 31.607096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540055, 0.238410, 0.807156,
		0.837328, 0.249044, 0.486682,
		-0.084988, 0.938689, -0.334125,
		35.316730, 36.113388, 31.506859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472851, 35.834354, 32.288864>,  <35.376225, 35.456303, 31.740746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472851, 35.834354, 32.288864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.306610, 36.116829, 32.059574>,  <35.206867, 36.286312, 31.922001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.306610, 36.116829, 32.059574>,  <35.472851, 35.834354, 32.288864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306610, 36.116829, 32.059574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529984, 0.324163, 0.783604,
		0.739184, 0.629464, 0.239543,
		-0.415599, 0.706182, -0.573223,
		35.181931, 36.328682, 31.887608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511669, 36.511158, 32.674526>,  <35.472851, 35.834354, 32.288864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511669, 36.511158, 32.674526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.219372, 36.503529, 32.401573>,  <35.043995, 36.498951, 32.237801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.219372, 36.503529, 32.401573>,  <35.511669, 36.511158, 32.674526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219372, 36.503529, 32.401573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659686, 0.276830, 0.698698,
		0.175581, 0.960730, -0.214871,
		-0.730743, -0.019069, -0.682387,
		35.000149, 36.497807, 32.196857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137783, 37.158363, 32.586163>,  <35.511669, 36.511158, 32.674526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137783, 37.158363, 32.586163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.858513, 36.924725, 32.420567>,  <34.690952, 36.784542, 32.321209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.858513, 36.924725, 32.420567>,  <35.137783, 37.158363, 32.586163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858513, 36.924725, 32.420567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663741, 0.311350, 0.680080,
		-0.268334, 0.749596, -0.605064,
		-0.698172, -0.584095, -0.413992,
		34.649063, 36.749496, 32.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.197182, 36.756931, 25.404814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021149, 36.421810, 25.275562>,  <37.915531, 36.220737, 25.198011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021149, 36.421810, 25.275562>,  <38.197182, 36.756931, 25.404814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021149, 36.421810, 25.275562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488961, -0.078240, 0.868790,
		-0.753158, 0.540335, -0.375222,
		-0.440080, -0.837805, -0.323129,
		37.889126, 36.170467, 25.178623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490562, 36.888084, 25.405296>,  <38.197182, 36.756931, 25.404814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490562, 36.888084, 25.405296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521011, 36.492302, 25.454569>,  <37.539280, 36.254833, 25.484133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521011, 36.492302, 25.454569>,  <37.490562, 36.888084, 25.405296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521011, 36.492302, 25.454569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488476, 0.070693, 0.869709,
		-0.869251, -0.126373, -0.477947,
		0.076121, -0.989461, 0.123180,
		37.543846, 36.195465, 25.491524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995956, 36.750389, 25.951370>,  <37.490562, 36.888084, 25.405296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995956, 36.750389, 25.951370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211628, 36.413689, 25.940531>,  <37.341030, 36.211666, 25.934027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211628, 36.413689, 25.940531>,  <36.995956, 36.750389, 25.951370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211628, 36.413689, 25.940531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382663, -0.273521, 0.882471,
		-0.750236, -0.465442, -0.469585,
		0.539180, -0.841754, -0.027098,
		37.373383, 36.161163, 25.932402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531487, 36.151325, 26.151356>,  <36.995956, 36.750389, 25.951370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531487, 36.151325, 26.151356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917515, 36.092762, 26.238268>,  <37.149132, 36.057625, 26.290415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917515, 36.092762, 26.238268>,  <36.531487, 36.151325, 26.151356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917515, 36.092762, 26.238268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253123, -0.306923, 0.917457,
		-0.067635, -0.940406, -0.333260,
		0.965067, -0.146408, 0.217280,
		37.207035, 36.048840, 26.303452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515987, 35.607456, 26.543533>,  <36.531487, 36.151325, 26.151356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515987, 35.607456, 26.543533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891613, 35.730274, 26.605352>,  <37.116989, 35.803963, 26.642445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891613, 35.730274, 26.605352>,  <36.515987, 35.607456, 26.543533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891613, 35.730274, 26.605352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107838, -0.163766, 0.980587,
		0.326393, -0.937499, -0.120675,
		0.939062, 0.307043, 0.154550,
		37.173332, 35.822388, 26.651718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803230, 35.122269, 26.900980>,  <36.515987, 35.607456, 26.543533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803230, 35.122269, 26.900980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037170, 35.436775, 26.980713>,  <37.177536, 35.625481, 27.028553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037170, 35.436775, 26.980713>,  <36.803230, 35.122269, 26.900980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037170, 35.436775, 26.980713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208057, -0.092106, 0.973770,
		0.784005, -0.610981, 0.109721,
		0.584850, 0.786269, 0.199330,
		37.212624, 35.672657, 27.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043026, 34.966179, 27.464743>,  <36.803230, 35.122269, 26.900980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043026, 34.966179, 27.464743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135712, 35.355080, 27.477665>,  <37.191322, 35.588421, 27.485418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135712, 35.355080, 27.477665>,  <37.043026, 34.966179, 27.464743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135712, 35.355080, 27.477665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287308, 0.036671, 0.957136,
		0.929388, -0.231063, 0.287832,
		0.231713, 0.972247, 0.032304,
		37.205227, 35.646755, 27.487356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456249, 35.020992, 28.043398>,  <37.043026, 34.966179, 27.464743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456249, 35.020992, 28.043398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290905, 35.380154, 27.982859>,  <37.191700, 35.595650, 27.946535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290905, 35.380154, 27.982859>,  <37.456249, 35.020992, 28.043398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290905, 35.380154, 27.982859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158253, 0.092841, 0.983024,
		0.896710, 0.430295, 0.103719,
		-0.413361, 0.897901, -0.151347,
		37.166897, 35.649525, 27.937454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640278, 35.350647, 28.547962>,  <37.456249, 35.020992, 28.043398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640278, 35.350647, 28.547962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364681, 35.616756, 28.432938>,  <37.199322, 35.776424, 28.363924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364681, 35.616756, 28.432938>,  <37.640278, 35.350647, 28.547962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364681, 35.616756, 28.432938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107076, 0.298972, 0.948235,
		0.716812, 0.684121, -0.134755,
		-0.688996, 0.665278, -0.287559,
		37.157982, 35.816341, 28.346670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372620, 35.652725, 28.472240>,  <37.640278, 35.350647, 28.547962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372620, 35.652725, 28.472240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640266, 35.415665, 28.651594>,  <38.800854, 35.273426, 28.759207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640266, 35.415665, 28.651594>,  <38.372620, 35.652725, 28.472240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640266, 35.415665, 28.651594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314072, -0.321311, -0.893375,
		0.673533, 0.738594, -0.028857,
		0.669113, -0.592654, 0.448385,
		38.841000, 35.237869, 28.786110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990780, 35.583511, 28.097399>,  <38.372620, 35.652725, 28.472240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990780, 35.583511, 28.097399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059147, 35.255455, 28.315815>,  <39.100166, 35.058620, 28.446865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059147, 35.255455, 28.315815>,  <38.990780, 35.583511, 28.097399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059147, 35.255455, 28.315815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308576, -0.481758, -0.820177,
		0.935717, 0.308679, 0.170733,
		0.170920, -0.820138, 0.546040,
		39.110424, 35.009415, 28.479628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821499, 35.301495, 28.067177>,  <38.990780, 35.583511, 28.097399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821499, 35.301495, 28.067177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547573, 35.020378, 28.144239>,  <39.383217, 34.851707, 28.190477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547573, 35.020378, 28.144239>,  <39.821499, 35.301495, 28.067177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547573, 35.020378, 28.144239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274216, -0.493466, -0.825407,
		0.675159, -0.512419, 0.530648,
		-0.684811, -0.702793, 0.192654,
		39.342129, 34.809540, 28.202036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065845, 34.691517, 28.247028>,  <39.821499, 35.301495, 28.067177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065845, 34.691517, 28.247028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699081, 34.579926, 28.132866>,  <39.479023, 34.512970, 28.064369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699081, 34.579926, 28.132866>,  <40.065845, 34.691517, 28.247028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699081, 34.579926, 28.132866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399103, -0.642937, -0.653720,
		-0.001126, -0.713306, 0.700852,
		-0.916906, -0.278976, -0.285406,
		39.424011, 34.496231, 28.047245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061649, 33.904648, 28.269621>,  <40.065845, 34.691517, 28.247028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061649, 33.904648, 28.269621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779655, 34.042130, 28.021471>,  <39.610458, 34.124619, 27.872581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779655, 34.042130, 28.021471>,  <40.061649, 33.904648, 28.269621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779655, 34.042130, 28.021471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339647, -0.604278, -0.720755,
		-0.622610, -0.718828, 0.309264,
		-0.704980, 0.343709, -0.620377,
		39.568161, 34.145241, 27.835360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758301, 33.317745, 27.907978>,  <40.061649, 33.904648, 28.269621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758301, 33.317745, 27.907978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646164, 33.623089, 27.675192>,  <39.578880, 33.806297, 27.535521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646164, 33.623089, 27.675192>,  <39.758301, 33.317745, 27.907978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646164, 33.623089, 27.675192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265701, -0.520879, -0.811226,
		-0.922395, -0.382049, -0.056802,
		-0.280341, 0.763363, -0.581967,
		39.562061, 33.852097, 27.500603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414375, 32.929531, 27.431736>,  <39.758301, 33.317745, 27.907978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414375, 32.929531, 27.431736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516582, 33.280983, 27.270378>,  <39.577908, 33.491852, 27.173563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516582, 33.280983, 27.270378>,  <39.414375, 32.929531, 27.431736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516582, 33.280983, 27.270378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339808, -0.472242, -0.813338,
		-0.905120, 0.070743, -0.419229,
		0.255516, 0.878626, -0.403396,
		39.593239, 33.544571, 27.149359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212734, 32.857651, 26.673374>,  <39.414375, 32.929531, 27.431736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212734, 32.857651, 26.673374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466778, 33.166035, 26.692364>,  <39.619205, 33.351067, 26.703758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466778, 33.166035, 26.692364>,  <39.212734, 32.857651, 26.673374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466778, 33.166035, 26.692364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478999, -0.344890, -0.807224,
		-0.605964, 0.535418, -0.588333,
		0.635112, 0.770960, 0.047474,
		39.657310, 33.397324, 26.706606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213345, 33.124573, 26.008514>,  <39.212734, 32.857651, 26.673374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213345, 33.124573, 26.008514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542595, 33.299870, 26.152967>,  <39.740143, 33.405048, 26.239639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542595, 33.299870, 26.152967>,  <39.213345, 33.124573, 26.008514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542595, 33.299870, 26.152967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482206, -0.203537, -0.852086,
		-0.299913, 0.875511, -0.378857,
		0.823122, 0.438239, 0.361133,
		39.789532, 33.431339, 26.261307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545406, 33.388725, 25.439182>,  <39.213345, 33.124573, 26.008514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545406, 33.388725, 25.439182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827202, 33.333405, 25.717627>,  <39.996277, 33.300213, 25.884693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827202, 33.333405, 25.717627>,  <39.545406, 33.388725, 25.439182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827202, 33.333405, 25.717627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687160, -0.112403, -0.717758,
		0.177511, 0.983991, 0.015849,
		0.704486, -0.138301, 0.696112,
		40.038548, 33.291916, 25.926460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191395, 33.767071, 25.236677>,  <39.545406, 33.388725, 25.439182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191395, 33.767071, 25.236677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299179, 33.454052, 25.461180>,  <40.363850, 33.266239, 25.595881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299179, 33.454052, 25.461180>,  <40.191395, 33.767071, 25.236677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299179, 33.454052, 25.461180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726860, -0.217046, -0.651587,
		0.631718, 0.583529, 0.510320,
		0.269456, -0.782551, 0.561256,
		40.380016, 33.219288, 25.629557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941898, 33.781761, 25.181887>,  <40.191395, 33.767071, 25.236677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941898, 33.781761, 25.181887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856533, 33.416054, 25.319618>,  <40.805313, 33.196629, 25.402258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856533, 33.416054, 25.319618>,  <40.941898, 33.781761, 25.181887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856533, 33.416054, 25.319618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854005, -0.345758, -0.388750,
		0.474478, 0.211094, 0.854582,
		-0.213416, -0.914270, 0.344330,
		40.792507, 33.141773, 25.422916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562840, 33.461136, 25.392090>,  <40.941898, 33.781761, 25.181887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562840, 33.461136, 25.392090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321205, 33.149990, 25.322798>,  <41.176224, 32.963303, 25.281223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321205, 33.149990, 25.322798>,  <41.562840, 33.461136, 25.392090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321205, 33.149990, 25.322798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776497, -0.525639, -0.347499,
		0.179250, -0.344433, 0.921540,
		-0.604087, -0.777862, -0.173230,
		41.139980, 32.916630, 25.270828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976604, 32.903122, 25.521828>,  <41.562840, 33.461136, 25.392090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976604, 32.903122, 25.521828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674355, 32.728382, 25.326607>,  <41.493004, 32.623539, 25.209475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674355, 32.728382, 25.326607>,  <41.976604, 32.903122, 25.521828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674355, 32.728382, 25.326607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624295, -0.705805, -0.334805,
		-0.198210, -0.557675, 0.806046,
		-0.755625, -0.436849, -0.488052,
		41.447666, 32.597328, 25.180191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.036507, 30.445465, 23.862627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377769, 30.651573, 23.830101>,  <35.582527, 30.775238, 23.810585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377769, 30.651573, 23.830101>,  <35.036507, 30.445465, 23.862627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377769, 30.651573, 23.830101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070489, 0.040571, 0.996687,
		0.516863, -0.856066, -0.001707,
		0.853161, 0.515271, -0.081313,
		35.633717, 30.806154, 23.805708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527157, 30.113255, 24.361141>,  <35.036507, 30.445465, 23.862627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527157, 30.113255, 24.361141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651138, 30.484310, 24.277794>,  <35.725529, 30.706944, 24.227785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651138, 30.484310, 24.277794>,  <35.527157, 30.113255, 24.361141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651138, 30.484310, 24.277794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110484, 0.182532, 0.976973,
		0.944311, -0.325837, -0.045913,
		0.309954, 0.927638, -0.208366,
		35.744125, 30.762602, 24.215284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130905, 30.187805, 24.742758>,  <35.527157, 30.113255, 24.361141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130905, 30.187805, 24.742758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970356, 30.543633, 24.655519>,  <35.874027, 30.757130, 24.603176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970356, 30.543633, 24.655519>,  <36.130905, 30.187805, 24.742758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970356, 30.543633, 24.655519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000406, 0.238289, 0.971194,
		0.915915, 0.389722, -0.096004,
		-0.401373, 0.889570, -0.218094,
		35.849945, 30.810503, 24.590092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613308, 30.800566, 25.033895>,  <36.130905, 30.187805, 24.742758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613308, 30.800566, 25.033895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256390, 30.976116, 24.991570>,  <36.042240, 31.081446, 24.966173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256390, 30.976116, 24.991570>,  <36.613308, 30.800566, 25.033895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256390, 30.976116, 24.991570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079684, 0.383821, 0.919963,
		0.444364, 0.812447, -0.377453,
		-0.892295, 0.438876, -0.105817,
		35.988701, 31.107779, 24.959824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695633, 31.499933, 25.344799>,  <36.613308, 30.800566, 25.033895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695633, 31.499933, 25.344799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298023, 31.475927, 25.308306>,  <36.059460, 31.461523, 25.286409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298023, 31.475927, 25.308306>,  <36.695633, 31.499933, 25.344799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298023, 31.475927, 25.308306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109200, 0.551827, 0.826778,
		0.000724, 0.831797, -0.555080,
		-0.994019, -0.060016, -0.091232,
		35.999817, 31.457922, 25.280935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423370, 32.187450, 25.496021>,  <36.695633, 31.499933, 25.344799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423370, 32.187450, 25.496021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.105423, 31.957392, 25.573360>,  <35.914654, 31.819355, 25.619764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.105423, 31.957392, 25.573360>,  <36.423370, 32.187450, 25.496021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105423, 31.957392, 25.573360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222314, 0.572536, 0.789164,
		-0.564587, 0.584298, -0.582956,
		-0.794870, -0.575151, 0.193348,
		35.866962, 31.784847, 25.631365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887836, 32.621346, 25.784363>,  <36.423370, 32.187450, 25.496021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887836, 32.621346, 25.784363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805553, 32.255890, 25.924616>,  <35.756184, 32.036617, 26.008768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805553, 32.255890, 25.924616>,  <35.887836, 32.621346, 25.784363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805553, 32.255890, 25.924616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220594, 0.392367, 0.892965,
		-0.953427, 0.106343, -0.282257,
		-0.205709, -0.913640, 0.350635,
		35.743839, 31.981798, 26.029806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284332, 32.761703, 26.362793>,  <35.887836, 32.621346, 25.784363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284332, 32.761703, 26.362793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447639, 32.397823, 26.393143>,  <35.545624, 32.179493, 26.411352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447639, 32.397823, 26.393143>,  <35.284332, 32.761703, 26.362793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447639, 32.397823, 26.393143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244542, -0.028912, 0.969208,
		-0.879499, -0.414248, -0.234264,
		0.408266, -0.909704, 0.075873,
		35.570118, 32.124912, 26.415905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751167, 32.421234, 26.775331>,  <35.284332, 32.761703, 26.362793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751167, 32.421234, 26.775331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112103, 32.255058, 26.821283>,  <35.328663, 32.155354, 26.848854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112103, 32.255058, 26.821283>,  <34.751167, 32.421234, 26.775331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112103, 32.255058, 26.821283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118492, 0.017174, 0.992807,
		-0.414428, -0.909457, -0.033730,
		0.902336, -0.415444, 0.114881,
		35.382805, 32.130424, 26.855747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708118, 32.082863, 27.330727>,  <34.751167, 32.421234, 26.775331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708118, 32.082863, 27.330727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107979, 32.084034, 27.320192>,  <35.347893, 32.084736, 27.313871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107979, 32.084034, 27.320192>,  <34.708118, 32.082863, 27.330727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107979, 32.084034, 27.320192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025629, 0.145823, 0.988979,
		0.006739, -0.989306, 0.145696,
		0.999649, 0.002930, -0.026338,
		35.407875, 32.084915, 27.312290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787498, 31.805286, 27.869238>,  <34.708118, 32.082863, 27.330727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787498, 31.805286, 27.869238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.152538, 31.956446, 27.806803>,  <35.371563, 32.047142, 27.769342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.152538, 31.956446, 27.806803>,  <34.787498, 31.805286, 27.869238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152538, 31.956446, 27.806803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086253, 0.195225, 0.976958,
		0.399664, -0.905030, 0.145566,
		0.912595, 0.377900, -0.156087,
		35.426315, 32.069817, 27.759977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236580, 31.497862, 28.403620>,  <34.787498, 31.805286, 27.869238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236580, 31.497862, 28.403620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392387, 31.843531, 28.276194>,  <35.485870, 32.050930, 28.199738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392387, 31.843531, 28.276194>,  <35.236580, 31.497862, 28.403620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392387, 31.843531, 28.276194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051293, 0.365702, 0.929317,
		0.919589, -0.345647, 0.186774,
		0.389520, 0.864170, -0.318566,
		35.509243, 32.102783, 28.180624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846783, 31.667374, 28.802731>,  <35.236580, 31.497862, 28.403620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846783, 31.667374, 28.802731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735569, 32.017033, 28.643452>,  <35.668839, 32.226830, 28.547884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735569, 32.017033, 28.643452>,  <35.846783, 31.667374, 28.802731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735569, 32.017033, 28.643452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054471, 0.428224, 0.902029,
		0.959024, 0.229109, -0.166678,
		-0.278039, 0.874147, -0.398198,
		35.652157, 32.279278, 28.523993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343929, 32.149822, 28.997950>,  <35.846783, 31.667374, 28.802731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343929, 32.149822, 28.997950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.998760, 32.339909, 28.929205>,  <35.791660, 32.453960, 28.887959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.998760, 32.339909, 28.929205>,  <36.343929, 32.149822, 28.997950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998760, 32.339909, 28.929205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014847, 0.316105, 0.948608,
		0.505122, 0.821125, -0.265718,
		-0.862920, 0.475218, -0.171863,
		35.739883, 32.482475, 28.877645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909546, 32.438286, 29.352303>,  <36.343929, 32.149822, 28.997950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909546, 32.438286, 29.352303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958622, 32.125755, 29.597082>,  <36.988068, 31.938238, 29.743950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958622, 32.125755, 29.597082>,  <36.909546, 32.438286, 29.352303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958622, 32.125755, 29.597082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381535, -0.532087, -0.755853,
		0.916176, 0.326213, 0.232822,
		0.122687, -0.781325, 0.611947,
		36.995430, 31.891357, 29.780666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637527, 32.306824, 29.261356>,  <36.909546, 32.438286, 29.352303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637527, 32.306824, 29.261356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470100, 31.971107, 29.400145>,  <37.369644, 31.769676, 29.483418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470100, 31.971107, 29.400145>,  <37.637527, 32.306824, 29.261356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470100, 31.971107, 29.400145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488335, -0.530109, -0.693191,
		0.765723, -0.120708, 0.631742,
		-0.418566, -0.839294, 0.346970,
		37.344532, 31.719318, 29.504236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261497, 31.727089, 29.222879>,  <37.637527, 32.306824, 29.261356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261497, 31.727089, 29.222879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896461, 31.566139, 29.251917>,  <37.677441, 31.469568, 29.269339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896461, 31.566139, 29.251917>,  <38.261497, 31.727089, 29.222879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896461, 31.566139, 29.251917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230175, -0.652321, -0.722147,
		0.337927, -0.642317, 0.687920,
		-0.912592, -0.402375, 0.072591,
		37.622684, 31.445427, 29.273695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314259, 31.008715, 29.289330>,  <38.261497, 31.727089, 29.222879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314259, 31.008715, 29.289330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926498, 31.023579, 29.192268>,  <37.693844, 31.032497, 29.134031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926498, 31.023579, 29.192268>,  <38.314259, 31.008715, 29.289330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926498, 31.023579, 29.192268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162418, -0.644097, -0.747502,
		-0.184071, -0.764041, 0.618352,
		-0.969401, 0.037162, -0.242653,
		37.635677, 31.034727, 29.119473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284275, 30.432777, 29.043776>,  <38.314259, 31.008715, 29.289330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284275, 30.432777, 29.043776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985428, 30.636482, 28.872913>,  <37.806118, 30.758705, 28.770395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985428, 30.636482, 28.872913>,  <38.284275, 30.432777, 29.043776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985428, 30.636482, 28.872913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063604, -0.584918, -0.808595,
		-0.661639, -0.631286, 0.404613,
		-0.747120, 0.509263, -0.427157,
		37.761292, 30.789261, 28.744766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624298, 29.968084, 28.751104>,  <38.284275, 30.432777, 29.043776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624298, 29.968084, 28.751104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609715, 30.300926, 28.529737>,  <37.600964, 30.500631, 28.396917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609715, 30.300926, 28.529737>,  <37.624298, 29.968084, 28.751104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609715, 30.300926, 28.529737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016383, -0.553214, -0.832878,
		-0.999201, -0.039431, 0.006537,
		-0.036458, 0.832105, -0.553418,
		37.598778, 30.550558, 28.363712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277775, 29.794748, 28.158085>,  <37.624298, 29.968084, 28.751104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277775, 29.794748, 28.158085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441315, 30.141069, 28.042690>,  <37.539440, 30.348862, 27.973454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441315, 30.141069, 28.042690>,  <37.277775, 29.794748, 28.158085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441315, 30.141069, 28.042690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016562, -0.309022, -0.950911,
		-0.912451, 0.393559, -0.112005,
		0.408851, 0.865804, -0.288485,
		37.563969, 30.400810, 27.956144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992466, 29.813547, 27.383419>,  <37.277775, 29.794748, 28.158085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992466, 29.813547, 27.383419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282192, 30.084965, 27.432308>,  <37.456028, 30.247816, 27.461641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282192, 30.084965, 27.432308>,  <36.992466, 29.813547, 27.383419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282192, 30.084965, 27.432308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304489, -0.155765, -0.939693,
		-0.618586, 0.717853, -0.319433,
		0.724319, 0.678545, 0.122224,
		37.499489, 30.288528, 27.468975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920052, 30.306156, 26.784752>,  <36.992466, 29.813547, 27.383419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920052, 30.306156, 26.784752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295502, 30.327433, 26.921074>,  <37.520771, 30.340199, 27.002867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295502, 30.327433, 26.921074>,  <36.920052, 30.306156, 26.784752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295502, 30.327433, 26.921074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339229, 0.036538, -0.939994,
		-0.062454, 0.997916, 0.016251,
		0.938628, 0.053193, 0.340804,
		37.577091, 30.343391, 27.023315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196838, 30.781296, 26.359360>,  <36.920052, 30.306156, 26.784752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196838, 30.781296, 26.359360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513325, 30.593840, 26.516512>,  <37.703217, 30.481367, 26.610804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513325, 30.593840, 26.516512>,  <37.196838, 30.781296, 26.359360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513325, 30.593840, 26.516512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441650, -0.006486, -0.897164,
		0.422993, 0.883366, 0.201842,
		0.791215, -0.468638, 0.392882,
		37.750690, 30.453249, 26.634377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800171, 31.157099, 26.171202>,  <37.196838, 30.781296, 26.359360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800171, 31.157099, 26.171202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.907963, 30.779295, 26.246338>,  <37.972637, 30.552612, 26.291420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.907963, 30.779295, 26.246338>,  <37.800171, 31.157099, 26.171202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907963, 30.779295, 26.246338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362938, -0.081064, -0.928280,
		0.891997, 0.318324, 0.320953,
		0.269476, -0.944510, 0.187841,
		37.988804, 30.495941, 26.302691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375023, 31.087402, 25.890898>,  <37.800171, 31.157099, 26.171202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375023, 31.087402, 25.890898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310596, 30.696171, 25.943695>,  <38.271938, 30.461432, 25.975372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310596, 30.696171, 25.943695>,  <38.375023, 31.087402, 25.890898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310596, 30.696171, 25.943695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531871, -0.198677, -0.823189,
		0.831367, -0.062387, 0.552211,
		-0.161068, -0.978077, 0.131991,
		38.262276, 30.402748, 25.983292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976604, 30.850565, 25.799009>,  <38.375023, 31.087402, 25.890898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976604, 30.850565, 25.799009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705070, 30.568958, 25.715546>,  <38.542149, 30.399994, 25.665466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705070, 30.568958, 25.715546>,  <38.976604, 30.850565, 25.799009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705070, 30.568958, 25.715546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472432, -0.201209, -0.858092,
		0.562128, -0.681082, 0.469189,
		-0.678837, -0.704018, -0.208660,
		38.501419, 30.357754, 25.652948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312195, 30.301847, 25.482138>,  <38.976604, 30.850565, 25.799009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312195, 30.301847, 25.482138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936905, 30.208908, 25.379576>,  <38.711731, 30.153145, 25.318039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936905, 30.208908, 25.379576>,  <39.312195, 30.301847, 25.482138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936905, 30.208908, 25.379576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307383, -0.219408, -0.925946,
		0.158885, -0.947563, 0.277275,
		-0.938228, -0.232348, -0.256404,
		38.655437, 30.139204, 25.302654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855724, 29.939323, 25.844522>,  <39.312195, 30.301847, 25.482138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855724, 29.939323, 25.844522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.253780, 29.965239, 25.814848>,  <40.492615, 29.980787, 25.797043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.253780, 29.965239, 25.814848>,  <39.855724, 29.939323, 25.844522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253780, 29.965239, 25.814848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045943, 0.360884, 0.931478,
		0.087121, -0.930358, 0.356153,
		0.995137, 0.064788, -0.074184,
		40.552322, 29.984674, 25.792593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184235, 29.473783, 26.387720>,  <39.855724, 29.939323, 25.844522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184235, 29.473783, 26.387720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.431763, 29.769138, 26.280500>,  <40.580280, 29.946352, 26.216169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.431763, 29.769138, 26.280500>,  <40.184235, 29.473783, 26.387720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431763, 29.769138, 26.280500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054466, 0.300079, 0.952358,
		0.783645, -0.603935, 0.145477,
		0.618817, 0.738387, -0.268050,
		40.617409, 29.990654, 26.200085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625050, 29.524652, 27.027719>,  <40.184235, 29.473783, 26.387720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625050, 29.524652, 27.027719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.699028, 29.850698, 26.808126>,  <40.743416, 30.046326, 26.676371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.699028, 29.850698, 26.808126>,  <40.625050, 29.524652, 27.027719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699028, 29.850698, 26.808126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191526, 0.518014, 0.833655,
		0.963906, -0.259322, -0.060313,
		0.184942, 0.815116, -0.548983,
		40.754509, 30.095234, 26.643431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159996, 29.884586, 27.514093>,  <40.625050, 29.524652, 27.027719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159996, 29.884586, 27.514093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.010841, 30.151562, 27.256262>,  <40.921349, 30.311747, 27.101562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.010841, 30.151562, 27.256262>,  <41.159996, 29.884586, 27.514093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010841, 30.151562, 27.256262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106442, 0.720865, 0.684853,
		0.921750, 0.186764, -0.339846,
		-0.372889, 0.667437, -0.644579,
		40.898975, 30.351793, 27.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555183, 30.480688, 27.563869>,  <41.159996, 29.884586, 27.514093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555183, 30.480688, 27.563869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.196476, 30.599066, 27.432276>,  <40.981251, 30.670094, 27.353319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.196476, 30.599066, 27.432276>,  <41.555183, 30.480688, 27.563869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196476, 30.599066, 27.432276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043124, 0.681465, 0.730579,
		0.440403, 0.669344, -0.598351,
		-0.896764, 0.295946, -0.328984,
		40.927448, 30.687849, 27.333580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526020, 31.095655, 27.894442>,  <41.555183, 30.480688, 27.563869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526020, 31.095655, 27.894442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.159191, 31.057165, 27.739668>,  <40.939095, 31.034071, 27.646803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.159191, 31.057165, 27.739668>,  <41.526020, 31.095655, 27.894442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159191, 31.057165, 27.739668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352744, 0.648205, 0.674836,
		0.185879, 0.755362, -0.628393,
		-0.917072, -0.096224, -0.386936,
		40.884071, 31.028297, 27.623587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291790, 31.817034, 27.949207>,  <41.526020, 31.095655, 27.894442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291790, 31.817034, 27.949207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996159, 31.547588, 27.950077>,  <40.818779, 31.385921, 27.950598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996159, 31.547588, 27.950077>,  <41.291790, 31.817034, 27.949207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996159, 31.547588, 27.950077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388355, 0.428731, 0.815703,
		-0.550399, 0.602027, -0.578468,
		-0.739082, -0.673612, 0.002173,
		40.774433, 31.345505, 27.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649349, 32.147221, 28.225521>,  <41.291790, 31.817034, 27.949207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649349, 32.147221, 28.225521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.552315, 31.759325, 28.236485>,  <40.494095, 31.526587, 28.243063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.552315, 31.759325, 28.236485>,  <40.649349, 32.147221, 28.225521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552315, 31.759325, 28.236485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452541, 0.138107, 0.880984,
		-0.858113, 0.201313, -0.472351,
		-0.242589, -0.969742, 0.027409,
		40.479538, 31.468403, 28.244707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939423, 32.040592, 28.504936>,  <40.649349, 32.147221, 28.225521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939423, 32.040592, 28.504936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137360, 31.697931, 28.563278>,  <40.256123, 31.492334, 28.598284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137360, 31.697931, 28.563278>,  <39.939423, 32.040592, 28.504936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137360, 31.697931, 28.563278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355721, -0.046549, 0.933432,
		-0.792841, -0.513783, -0.327765,
		0.494839, -0.856656, 0.145857,
		40.285812, 31.440935, 28.607035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436813, 31.536606, 28.871845>,  <39.939423, 32.040592, 28.504936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436813, 31.536606, 28.871845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.800461, 31.387192, 28.945566>,  <40.018650, 31.297543, 28.989799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.800461, 31.387192, 28.945566>,  <39.436813, 31.536606, 28.871845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800461, 31.387192, 28.945566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234164, -0.092403, 0.967796,
		-0.344478, -0.923001, -0.171475,
		0.909122, -0.373538, 0.184303,
		40.073196, 31.275131, 29.000856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286549, 30.977621, 29.293760>,  <39.436813, 31.536606, 28.871845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286549, 30.977621, 29.293760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677509, 31.028599, 29.361219>,  <39.912086, 31.059185, 29.401695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677509, 31.028599, 29.361219>,  <39.286549, 30.977621, 29.293760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677509, 31.028599, 29.361219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167486, -0.019858, 0.985675,
		0.128968, -0.991647, 0.001936,
		0.977403, 0.127444, 0.168647,
		39.970730, 31.066832, 29.411814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547897, 30.439087, 29.672613>,  <39.286549, 30.977621, 29.293760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547897, 30.439087, 29.672613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810394, 30.724482, 29.770823>,  <39.967892, 30.895718, 29.829748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810394, 30.724482, 29.770823>,  <39.547897, 30.439087, 29.672613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810394, 30.724482, 29.770823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228579, -0.122118, 0.965836,
		0.719094, -0.689944, 0.082950,
		0.656243, 0.713488, 0.245521,
		40.007267, 30.938528, 29.844479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038368, 30.145918, 30.127159>,  <39.547897, 30.439087, 29.672613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038368, 30.145918, 30.127159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063343, 30.536419, 30.210133>,  <40.078327, 30.770720, 30.259916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063343, 30.536419, 30.210133>,  <40.038368, 30.145918, 30.127159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063343, 30.536419, 30.210133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091164, -0.212550, 0.972888,
		0.993877, -0.041829, -0.102270,
		0.062432, 0.976255, 0.207435,
		40.082073, 30.829296, 30.272364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498306, 30.182600, 30.797682>,  <40.038368, 30.145918, 30.127159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498306, 30.182600, 30.797682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302631, 30.528730, 30.754032>,  <40.185226, 30.736408, 30.727842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302631, 30.528730, 30.754032>,  <40.498306, 30.182600, 30.797682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302631, 30.528730, 30.754032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022907, 0.137823, 0.990192,
		0.871878, 0.481890, -0.087243,
		-0.489188, 0.865325, -0.109126,
		40.155876, 30.788328, 30.721294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.602180, 31.287970, 25.296537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.431458, 31.590103, 25.097616>,  <41.329025, 31.771383, 24.978264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.431458, 31.590103, 25.097616>,  <41.602180, 31.287970, 25.296537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431458, 31.590103, 25.097616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053829, -0.527710, -0.847717,
		-0.902740, -0.388579, 0.184570,
		-0.426805, 0.755334, -0.497302,
		41.303417, 31.816704, 24.948425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105907, 30.974789, 24.857948>,  <41.602180, 31.287970, 25.296537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105907, 30.974789, 24.857948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.180763, 31.332329, 24.694971>,  <41.225677, 31.546852, 24.597185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.180763, 31.332329, 24.694971>,  <41.105907, 30.974789, 24.857948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180763, 31.332329, 24.694971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142973, -0.435139, -0.888939,
		-0.971873, 0.108104, -0.209229,
		0.187142, 0.893850, -0.407443,
		41.236904, 31.600483, 24.572739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729370, 30.939964, 24.179768>,  <41.105907, 30.974789, 24.857948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729370, 30.939964, 24.179768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.005348, 31.224760, 24.127552>,  <41.170937, 31.395638, 24.096222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.005348, 31.224760, 24.127552>,  <40.729370, 30.939964, 24.179768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005348, 31.224760, 24.127552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209483, -0.369016, -0.905507,
		-0.692884, 0.597407, -0.403752,
		0.689948, 0.711991, -0.130539,
		41.212334, 31.438358, 24.088390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708977, 31.065365, 23.429003>,  <40.729370, 30.939964, 24.179768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708977, 31.065365, 23.429003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036961, 31.259602, 23.550245>,  <41.233749, 31.376143, 23.622992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036961, 31.259602, 23.550245>,  <40.708977, 31.065365, 23.429003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036961, 31.259602, 23.550245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433891, -0.181849, -0.882423,
		-0.373377, 0.855063, -0.359802,
		0.819956, 0.485591, 0.303106,
		41.282948, 31.405279, 23.641176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809711, 31.600080, 23.024340>,  <40.708977, 31.065365, 23.429003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809711, 31.600080, 23.024340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.167507, 31.531776, 23.189613>,  <41.382187, 31.490793, 23.288778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.167507, 31.531776, 23.189613>,  <40.809711, 31.600080, 23.024340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167507, 31.531776, 23.189613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427427, 0.055617, -0.902337,
		0.131102, 0.983742, 0.122737,
		0.894493, -0.170760, 0.413186,
		41.435856, 31.480549, 23.313570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317822, 32.143108, 22.703968>,  <40.809711, 31.600080, 23.024340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317822, 32.143108, 22.703968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545620, 31.839411, 22.829966>,  <41.682301, 31.657192, 22.905565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545620, 31.839411, 22.829966>,  <41.317822, 32.143108, 22.703968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545620, 31.839411, 22.829966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517059, 0.032986, -0.855314,
		0.639000, 0.649972, 0.411359,
		0.569499, -0.759242, 0.314996,
		41.716469, 31.611639, 22.924465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086590, 32.289391, 22.589500>,  <41.317822, 32.143108, 22.703968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086590, 32.289391, 22.589500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021130, 31.894918, 22.599844>,  <41.981853, 31.658236, 22.606050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021130, 31.894918, 22.599844>,  <42.086590, 32.289391, 22.589500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021130, 31.894918, 22.599844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565754, -0.115294, -0.816474,
		0.808171, -0.118989, 0.576803,
		-0.163654, -0.986179, 0.025859,
		41.972034, 31.599064, 22.607601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702168, 32.001034, 22.317350>,  <42.086590, 32.289391, 22.589500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702168, 32.001034, 22.317350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.448429, 31.693445, 22.285625>,  <42.296188, 31.508892, 22.266590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.448429, 31.693445, 22.285625>,  <42.702168, 32.001034, 22.317350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448429, 31.693445, 22.285625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524210, -0.352477, -0.775218,
		0.568168, -0.533329, 0.626694,
		-0.634342, -0.768973, -0.079310,
		42.258125, 31.462753, 22.261833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018845, 31.475527, 22.074778>,  <42.702168, 32.001034, 22.317350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018845, 31.475527, 22.074778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.653378, 31.342436, 21.981388>,  <42.434097, 31.262581, 21.925354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.653378, 31.342436, 21.981388>,  <43.018845, 31.475527, 22.074778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653378, 31.342436, 21.981388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303531, -0.176468, -0.936337,
		0.270345, -0.926364, 0.262226,
		-0.913664, -0.332728, -0.233474,
		42.379280, 31.242619, 21.911346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199554, 30.883324, 21.713676>,  <43.018845, 31.475527, 22.074778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199554, 30.883324, 21.713676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.818508, 30.959764, 21.619019>,  <42.589882, 31.005629, 21.562223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.818508, 30.959764, 21.619019>,  <43.199554, 30.883324, 21.713676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818508, 30.959764, 21.619019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230697, -0.053128, -0.971574,
		-0.198242, -0.980132, 0.006524,
		-0.952617, 0.191101, -0.236645,
		42.532722, 31.017096, 21.548025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200123, 30.607243, 21.066437>,  <43.199554, 30.883324, 21.713676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200123, 30.607243, 21.066437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.878662, 30.845112, 21.057438>,  <42.685787, 30.987833, 21.052038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.878662, 30.845112, 21.057438>,  <43.200123, 30.607243, 21.066437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878662, 30.845112, 21.057438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062847, 0.047222, -0.996905,
		-0.591772, -0.802579, -0.075324,
		-0.803652, 0.594675, -0.022495,
		42.637566, 31.023514, 21.050690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656292, 30.314949, 20.511671>,  <43.200123, 30.607243, 21.066437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656292, 30.314949, 20.511671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.596344, 30.706312, 20.568598>,  <42.560375, 30.941130, 20.602755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.596344, 30.706312, 20.568598>,  <42.656292, 30.314949, 20.511671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596344, 30.706312, 20.568598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060110, 0.152694, -0.986444,
		-0.986877, -0.139280, -0.081696,
		-0.149867, 0.978410, 0.142318,
		42.551384, 30.999836, 20.611294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168102, 30.415956, 20.012342>,  <42.656292, 30.314949, 20.511671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168102, 30.415956, 20.012342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309036, 30.783047, 20.085701>,  <42.393597, 31.003302, 20.129715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309036, 30.783047, 20.085701>,  <42.168102, 30.415956, 20.012342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309036, 30.783047, 20.085701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121047, 0.239004, -0.963444,
		-0.928012, 0.317258, 0.195298,
		0.352338, 0.917728, 0.183395,
		42.414738, 31.058365, 20.140720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094364, 29.646883, 20.149872>,  <42.168102, 30.415956, 20.012342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094364, 29.646883, 20.149872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.041973, 29.281006, 19.996939>,  <42.010536, 29.061480, 19.905178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.041973, 29.281006, 19.996939>,  <42.094364, 29.646883, 20.149872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041973, 29.281006, 19.996939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529730, 0.390559, -0.752895,
		0.837992, 0.103921, -0.535696,
		-0.130979, -0.914694, -0.382335,
		42.002678, 29.006598, 19.882238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961716, 29.045904, 20.555779>,  <42.094364, 29.646883, 20.149872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961716, 29.045904, 20.555779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778973, 28.691408, 20.586399>,  <41.669327, 28.478710, 20.604771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778973, 28.691408, 20.586399>,  <41.961716, 29.045904, 20.555779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778973, 28.691408, 20.586399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368683, 0.266965, 0.890395,
		-0.809540, 0.378560, -0.448706,
		-0.456856, -0.886240, 0.076551,
		41.641914, 28.425535, 20.609364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496548, 29.275539, 21.057161>,  <41.961716, 29.045904, 20.555779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496548, 29.275539, 21.057161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.524044, 28.876556, 21.064707>,  <41.540543, 28.637167, 21.069235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.524044, 28.876556, 21.064707>,  <41.496548, 29.275539, 21.057161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524044, 28.876556, 21.064707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268274, -0.000268, 0.963343,
		-0.960887, -0.071278, -0.267610,
		0.068737, -0.997456, 0.018865,
		41.544666, 28.577320, 21.070366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861172, 29.020035, 21.378351>,  <41.496548, 29.275539, 21.057161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861172, 29.020035, 21.378351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.153027, 28.749464, 21.418491>,  <41.328140, 28.587122, 21.442575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.153027, 28.749464, 21.418491>,  <40.861172, 29.020035, 21.378351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153027, 28.749464, 21.418491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063645, 0.078939, 0.994846,
		-0.680863, -0.732266, 0.014546,
		0.729640, -0.676428, 0.100352,
		41.371918, 28.546535, 21.448597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571472, 28.526592, 21.621695>,  <40.861172, 29.020035, 21.378351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571472, 28.526592, 21.621695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.948887, 28.415499, 21.693909>,  <41.175339, 28.348843, 21.737236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.948887, 28.415499, 21.693909>,  <40.571472, 28.526592, 21.621695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948887, 28.415499, 21.693909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201562, -0.048875, 0.978256,
		-0.262874, -0.959413, -0.102097,
		0.943541, -0.277737, 0.180534,
		41.231949, 28.332178, 21.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595833, 28.025797, 21.980986>,  <40.571472, 28.526592, 21.621695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595833, 28.025797, 21.980986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.962624, 28.158171, 22.070105>,  <41.182697, 28.237595, 22.123577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.962624, 28.158171, 22.070105>,  <40.595833, 28.025797, 21.980986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962624, 28.158171, 22.070105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247446, 0.033733, 0.968314,
		0.312934, -0.943050, 0.112821,
		0.916975, 0.330935, 0.222798,
		41.237717, 28.257452, 22.136944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739269, 27.797874, 22.610632>,  <40.595833, 28.025797, 21.980986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739269, 27.797874, 22.610632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016518, 28.086172, 22.606554>,  <41.182869, 28.259151, 22.604107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016518, 28.086172, 22.606554>,  <40.739269, 27.797874, 22.610632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016518, 28.086172, 22.606554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251962, 0.255511, 0.933397,
		0.675346, -0.644392, 0.358701,
		0.693125, 0.720745, -0.010196,
		41.224457, 28.302395, 22.603495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162651, 27.674215, 23.206551>,  <40.739269, 27.797874, 22.610632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162651, 27.674215, 23.206551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.258778, 28.055210, 23.131701>,  <41.316452, 28.283808, 23.086790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.258778, 28.055210, 23.131701>,  <41.162651, 27.674215, 23.206551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258778, 28.055210, 23.131701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158628, 0.228717, 0.960482,
		0.957646, -0.201134, 0.206055,
		0.240314, 0.952488, -0.187125,
		41.330872, 28.340956, 23.075563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793137, 27.826342, 23.688593>,  <41.162651, 27.674215, 23.206551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793137, 27.826342, 23.688593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.597397, 28.150629, 23.560047>,  <41.479954, 28.345201, 23.482920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.597397, 28.150629, 23.560047>,  <41.793137, 27.826342, 23.688593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597397, 28.150629, 23.560047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265483, 0.212522, 0.940400,
		0.830695, 0.545503, 0.111233,
		-0.489352, 0.810716, -0.321363,
		41.450592, 28.393845, 23.463638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063881, 28.400139, 24.078085>,  <41.793137, 27.826342, 23.688593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063881, 28.400139, 24.078085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693085, 28.498447, 23.964752>,  <41.470608, 28.557432, 23.896751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693085, 28.498447, 23.964752>,  <42.063881, 28.400139, 24.078085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693085, 28.498447, 23.964752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140017, 0.474046, 0.869296,
		0.347959, 0.845505, -0.405027,
		-0.926995, 0.245769, -0.283334,
		41.414986, 28.572178, 23.879751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073303, 29.161757, 23.966486>,  <42.063881, 28.400139, 24.078085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073303, 29.161757, 23.966486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690437, 29.061234, 24.024008>,  <41.460716, 29.000919, 24.058521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690437, 29.061234, 24.024008>,  <42.073303, 29.161757, 23.966486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690437, 29.061234, 24.024008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011535, 0.529354, 0.848323,
		-0.289314, 0.810326, -0.509577,
		-0.957165, -0.251310, 0.143802,
		41.403290, 28.985840, 24.067148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828278, 29.763811, 24.292526>,  <42.073303, 29.161757, 23.966486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828278, 29.763811, 24.292526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528564, 29.505711, 24.352158>,  <41.348736, 29.350851, 24.387936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528564, 29.505711, 24.352158>,  <41.828278, 29.763811, 24.292526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528564, 29.505711, 24.352158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335104, 0.563579, 0.755039,
		-0.571206, 0.515783, -0.638507,
		-0.749286, -0.645249, 0.149078,
		41.303780, 29.312136, 24.396881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295029, 30.158825, 24.359005>,  <41.828278, 29.763811, 24.292526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295029, 30.158825, 24.359005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.189899, 29.812952, 24.530233>,  <41.126820, 29.605429, 24.632971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.189899, 29.812952, 24.530233>,  <41.295029, 30.158825, 24.359005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189899, 29.812952, 24.530233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312023, 0.496001, 0.810324,
		-0.912998, 0.079406, -0.400163,
		-0.262826, -0.864684, 0.428071,
		41.111053, 29.553547, 24.658655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539612, 30.236814, 24.593737>,  <41.295029, 30.158825, 24.359005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539612, 30.236814, 24.593737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703552, 29.941366, 24.807825>,  <40.801918, 29.764097, 24.936279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703552, 29.941366, 24.807825>,  <40.539612, 30.236814, 24.593737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703552, 29.941366, 24.807825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345881, 0.417101, 0.840472,
		-0.844032, -0.529590, -0.084526,
		0.409850, -0.738621, 0.535222,
		40.826508, 29.719780, 24.968391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047512, 30.114830, 25.155628>,  <40.539612, 30.236814, 24.593737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047512, 30.114830, 25.155628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.389252, 29.956207, 25.289988>,  <40.594296, 29.861034, 25.370604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.389252, 29.956207, 25.289988>,  <40.047512, 30.114830, 25.155628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389252, 29.956207, 25.289988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219521, 0.310477, 0.924886,
		-0.471060, -0.863913, 0.178203,
		0.854349, -0.396557, 0.335900,
		40.645557, 29.837240, 25.390759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440590, 29.679266, 24.931698>,  <40.047512, 30.114830, 25.155628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440590, 29.679266, 24.931698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062500, 29.809555, 24.940277>,  <38.835648, 29.887730, 24.945425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062500, 29.809555, 24.940277>,  <39.440590, 29.679266, 24.931698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062500, 29.809555, 24.940277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109303, -0.253905, -0.961033,
		-0.307588, -0.910733, 0.275599,
		-0.945221, 0.325726, 0.021447,
		38.778934, 29.907272, 24.946711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971893, 29.084703, 24.730976>,  <39.440590, 29.679266, 24.931698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971893, 29.084703, 24.730976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.790276, 29.431583, 24.649187>,  <38.681305, 29.639711, 24.600115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.790276, 29.431583, 24.649187>,  <38.971893, 29.084703, 24.730976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790276, 29.431583, 24.649187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206598, -0.325709, -0.922622,
		-0.866696, -0.376668, 0.327047,
		-0.454044, 0.867200, -0.204471,
		38.654060, 29.691744, 24.587845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447758, 28.793966, 24.448175>,  <38.971893, 29.084703, 24.730976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447758, 28.793966, 24.448175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.479137, 29.174143, 24.327837>,  <38.497963, 29.402248, 24.255634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.479137, 29.174143, 24.327837>,  <38.447758, 28.793966, 24.448175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479137, 29.174143, 24.327837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121885, -0.290369, -0.949121,
		-0.989439, 0.111123, 0.093066,
		0.078445, 0.950441, -0.300846,
		38.502670, 29.459274, 24.237583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998383, 28.763382, 24.029526>,  <38.447758, 28.793966, 24.448175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998383, 28.763382, 24.029526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.234886, 29.072630, 23.937702>,  <38.376789, 29.258179, 23.882608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.234886, 29.072630, 23.937702>,  <37.998383, 28.763382, 24.029526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234886, 29.072630, 23.937702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228441, -0.112434, -0.967044,
		-0.773449, 0.624217, 0.110134,
		0.591263, 0.773118, -0.229559,
		38.412266, 29.304565, 23.868835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610081, 29.231611, 23.601686>,  <37.998383, 28.763382, 24.029526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610081, 29.231611, 23.601686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.994781, 29.294811, 23.512184>,  <38.225601, 29.332731, 23.458483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.994781, 29.294811, 23.512184>,  <37.610081, 29.231611, 23.601686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994781, 29.294811, 23.512184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217987, -0.053169, -0.974502,
		-0.165866, 0.986007, -0.016694,
		0.961754, 0.157998, -0.223756,
		38.283306, 29.342211, 23.445057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548702, 29.579432, 22.959467>,  <37.610081, 29.231611, 23.601686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548702, 29.579432, 22.959467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933716, 29.471483, 22.970078>,  <38.164722, 29.406713, 22.976444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933716, 29.471483, 22.970078>,  <37.548702, 29.579432, 22.959467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933716, 29.471483, 22.970078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021007, -0.171734, -0.984919,
		0.270356, 0.947458, -0.170968,
		0.962531, -0.269870, 0.026526,
		38.222477, 29.390522, 22.978035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725384, 29.898870, 22.270573>,  <37.548702, 29.579432, 22.959467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725384, 29.898870, 22.270573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001537, 29.630701, 22.379314>,  <38.167229, 29.469799, 22.444559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001537, 29.630701, 22.379314>,  <37.725384, 29.898870, 22.270573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001537, 29.630701, 22.379314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093013, -0.290403, -0.952373,
		0.717441, 0.682787, -0.138131,
		0.690382, -0.670424, 0.271855,
		38.208652, 29.429573, 22.460871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703411, 30.385782, 21.588787>,  <37.725384, 29.898870, 22.270573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703411, 30.385782, 21.588787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343559, 30.488472, 21.447504>,  <37.127647, 30.550085, 21.362734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343559, 30.488472, 21.447504>,  <37.703411, 30.385782, 21.588787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343559, 30.488472, 21.447504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367036, -0.006421, 0.930184,
		0.236533, 0.966463, 0.100004,
		-0.899631, 0.256725, -0.353208,
		37.073669, 30.565489, 21.341541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509075, 30.868853, 22.032402>,  <37.703411, 30.385782, 21.588787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509075, 30.868853, 22.032402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166042, 30.768883, 21.852581>,  <36.960224, 30.708900, 21.744688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166042, 30.768883, 21.852581>,  <37.509075, 30.868853, 22.032402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166042, 30.768883, 21.852581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479781, 0.073669, 0.874290,
		-0.185390, 0.965458, -0.183087,
		-0.857578, -0.249926, -0.449551,
		36.908768, 30.693905, 21.717716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081303, 31.348728, 22.161161>,  <37.509075, 30.868853, 22.032402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081303, 31.348728, 22.161161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820293, 31.060732, 22.066648>,  <36.663689, 30.887934, 22.009941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820293, 31.060732, 22.066648>,  <37.081303, 31.348728, 22.161161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820293, 31.060732, 22.066648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593445, 0.291642, 0.750178,
		-0.471213, 0.629727, -0.617578,
		-0.652519, -0.719992, -0.236283,
		36.624538, 30.844734, 21.995764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364948, 31.649260, 22.083942>,  <37.081303, 31.348728, 22.161161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364948, 31.649260, 22.083942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293278, 31.258919, 22.133915>,  <36.250275, 31.024714, 22.163898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293278, 31.258919, 22.133915>,  <36.364948, 31.649260, 22.083942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293278, 31.258919, 22.133915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504126, 0.200115, 0.840125,
		-0.844839, 0.087547, -0.527808,
		-0.179173, -0.975853, 0.124930,
		36.239525, 30.966164, 22.171394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658886, 31.744967, 22.304922>,  <36.364948, 31.649260, 22.083942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658886, 31.744967, 22.304922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.809818, 31.386703, 22.399086>,  <35.900379, 31.171745, 22.455585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.809818, 31.386703, 22.399086>,  <35.658886, 31.744967, 22.304922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809818, 31.386703, 22.399086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372110, 0.086141, 0.924183,
		-0.848029, -0.436325, -0.300778,
		0.377335, -0.895656, 0.235411,
		35.923019, 31.118006, 22.469709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228600, 31.544094, 22.865656>,  <35.658886, 31.744967, 22.304922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228600, 31.544094, 22.865656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531334, 31.286686, 22.911415>,  <35.712975, 31.132242, 22.938871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531334, 31.286686, 22.911415>,  <35.228600, 31.544094, 22.865656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531334, 31.286686, 22.911415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179993, -0.036944, 0.982974,
		-0.628337, -0.764537, -0.143789,
		0.756833, -0.643520, 0.114398,
		35.758385, 31.093630, 22.945734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990528, 30.888338, 23.210051>,  <35.228600, 31.544094, 22.865656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990528, 30.888338, 23.210051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374413, 30.960173, 23.296503>,  <35.604744, 31.003273, 23.348373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374413, 30.960173, 23.296503>,  <34.990528, 30.888338, 23.210051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374413, 30.960173, 23.296503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230434, 0.062778, 0.971061,
		0.160824, -0.981737, 0.101632,
		0.959706, 0.179589, 0.216129,
		35.662323, 31.014048, 23.361341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.637268, 32.632324, 19.778206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856030, 32.551891, 20.103283>,  <40.987286, 32.503632, 20.298328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856030, 32.551891, 20.103283>,  <40.637268, 32.632324, 19.778206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856030, 32.551891, 20.103283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513626, 0.685987, 0.515373,
		-0.661126, -0.699277, 0.271888,
		0.546901, -0.201078, 0.812691,
		41.020100, 32.491570, 20.347090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142284, 32.576797, 20.368824>,  <40.637268, 32.632324, 19.778206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142284, 32.576797, 20.368824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.508770, 32.663437, 20.503668>,  <40.728661, 32.715420, 20.584574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.508770, 32.663437, 20.503668>,  <40.142284, 32.576797, 20.368824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508770, 32.663437, 20.503668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398963, 0.571328, 0.717226,
		-0.037252, -0.791625, 0.609871,
		0.916210, 0.216598, 0.337112,
		40.783634, 32.728416, 20.604801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207993, 32.397499, 21.078592>,  <40.142284, 32.576797, 20.368824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207993, 32.397499, 21.078592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.462139, 32.699520, 21.013832>,  <40.614628, 32.880733, 20.974976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.462139, 32.699520, 21.013832>,  <40.207993, 32.397499, 21.078592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462139, 32.699520, 21.013832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484458, 0.553008, 0.677852,
		0.601343, -0.352250, 0.717151,
		0.635364, 0.755051, -0.161897,
		40.652748, 32.926037, 20.965261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391037, 32.690121, 21.703794>,  <40.207993, 32.397499, 21.078592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391037, 32.690121, 21.703794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.502480, 32.982037, 21.454062>,  <40.569344, 33.157185, 21.304222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.502480, 32.982037, 21.454062>,  <40.391037, 32.690121, 21.703794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502480, 32.982037, 21.454062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591100, 0.642659, 0.487432,
		0.756955, 0.233244, 0.610424,
		0.278604, 0.729785, -0.624335,
		40.586060, 33.200974, 21.266762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660591, 33.170265, 22.166155>,  <40.391037, 32.690121, 21.703794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660591, 33.170265, 22.166155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606915, 33.381283, 21.830610>,  <40.574711, 33.507893, 21.629284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606915, 33.381283, 21.830610>,  <40.660591, 33.170265, 22.166155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606915, 33.381283, 21.830610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567923, 0.652764, 0.501361,
		0.812069, 0.543686, 0.212013,
		-0.134188, 0.527547, -0.838861,
		40.566658, 33.539547, 21.578953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792377, 33.814228, 22.390804>,  <40.660591, 33.170265, 22.166155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792377, 33.814228, 22.390804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.563370, 33.845909, 22.064381>,  <40.425964, 33.864918, 21.868526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.563370, 33.845909, 22.064381>,  <40.792377, 33.814228, 22.390804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563370, 33.845909, 22.064381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578829, 0.665876, 0.470708,
		0.580673, 0.741847, -0.335383,
		-0.572517, 0.079198, -0.816059,
		40.391613, 33.869667, 21.819563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752563, 34.521152, 22.274649>,  <40.792377, 33.814228, 22.390804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752563, 34.521152, 22.274649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431828, 34.353344, 22.104441>,  <40.239388, 34.252659, 22.002316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431828, 34.353344, 22.104441>,  <40.752563, 34.521152, 22.274649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431828, 34.353344, 22.104441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588785, 0.676176, 0.442852,
		0.101941, 0.605633, -0.789187,
		-0.801835, -0.419517, -0.425518,
		40.191277, 34.227489, 21.976786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211777, 35.015106, 22.227007>,  <40.752563, 34.521152, 22.274649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211777, 35.015106, 22.227007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994358, 34.686176, 22.159672>,  <39.863907, 34.488819, 22.119270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994358, 34.686176, 22.159672>,  <40.211777, 35.015106, 22.227007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994358, 34.686176, 22.159672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713925, 0.347444, 0.607943,
		-0.441439, 0.450625, -0.775931,
		-0.543547, -0.822326, -0.168337,
		39.831295, 34.439480, 22.109171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603947, 35.275173, 21.962835>,  <40.211777, 35.015106, 22.227007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603947, 35.275173, 21.962835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544186, 34.909809, 22.114286>,  <39.508331, 34.690590, 22.205156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544186, 34.909809, 22.114286>,  <39.603947, 35.275173, 21.962835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544186, 34.909809, 22.114286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787871, 0.341343, 0.512586,
		-0.597444, -0.221731, -0.770647,
		-0.149399, -0.913412, 0.378628,
		39.499367, 34.635784, 22.227875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945015, 35.131195, 21.891510>,  <39.603947, 35.275173, 21.962835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945015, 35.131195, 21.891510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048611, 34.869095, 22.175360>,  <39.110767, 34.711834, 22.345669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048611, 34.869095, 22.175360>,  <38.945015, 35.131195, 21.891510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048611, 34.869095, 22.175360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721788, 0.356908, 0.592992,
		-0.641830, -0.665777, -0.380519,
		0.258990, -0.655254, 0.709624,
		39.126308, 34.672520, 22.388247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369598, 34.817814, 22.264137>,  <38.945015, 35.131195, 21.891510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369598, 34.817814, 22.264137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.664677, 34.754147, 22.526581>,  <38.841724, 34.715946, 22.684046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.664677, 34.754147, 22.526581>,  <38.369598, 34.817814, 22.264137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664677, 34.754147, 22.526581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621628, 0.219040, 0.752064,
		-0.263420, -0.962646, 0.062638,
		0.737691, -0.159171, 0.656107,
		38.885983, 34.706394, 22.723413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000221, 34.584934, 22.815363>,  <38.369598, 34.817814, 22.264137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000221, 34.584934, 22.815363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345684, 34.746357, 22.936190>,  <38.552959, 34.843208, 23.008686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345684, 34.746357, 22.936190>,  <38.000221, 34.584934, 22.815363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345684, 34.746357, 22.936190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473272, 0.442865, 0.761501,
		0.173533, -0.800634, 0.573473,
		0.863655, 0.403554, 0.302067,
		38.604782, 34.867424, 23.026810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604206, 33.947521, 22.945442>,  <38.000221, 34.584934, 22.815363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604206, 33.947521, 22.945442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229824, 34.024700, 22.827623>,  <37.005196, 34.071007, 22.756933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229824, 34.024700, 22.827623>,  <37.604206, 33.947521, 22.945442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229824, 34.024700, 22.827623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253514, -0.211278, -0.943977,
		-0.244377, -0.958191, 0.148830,
		-0.935954, 0.192956, -0.294546,
		36.949036, 34.082584, 22.739260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403542, 33.411388, 22.667612>,  <37.604206, 33.947521, 22.945442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403542, 33.411388, 22.667612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206703, 33.709343, 22.487398>,  <37.088600, 33.888115, 22.379271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206703, 33.709343, 22.487398>,  <37.403542, 33.411388, 22.667612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206703, 33.709343, 22.487398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266155, -0.364018, -0.892554,
		-0.828858, -0.559132, -0.019126,
		-0.492093, 0.744891, -0.450535,
		37.059074, 33.932812, 22.352238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148853, 33.057316, 21.991903>,  <37.403542, 33.411388, 22.667612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148853, 33.057316, 21.991903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113167, 33.450081, 21.925100>,  <37.091755, 33.685738, 21.885017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113167, 33.450081, 21.925100>,  <37.148853, 33.057316, 21.991903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113167, 33.450081, 21.925100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167410, -0.150510, -0.974331,
		-0.981842, -0.114884, -0.150954,
		-0.089215, 0.981911, -0.167010,
		37.086403, 33.744656, 21.874998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600651, 33.180996, 21.466690>,  <37.148853, 33.057316, 21.991903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600651, 33.180996, 21.466690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838005, 33.502960, 21.465420>,  <36.980415, 33.696140, 21.464659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838005, 33.502960, 21.465420>,  <36.600651, 33.180996, 21.466690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838005, 33.502960, 21.465420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179107, -0.135880, -0.974401,
		-0.784740, 0.577625, -0.224794,
		0.593383, 0.804914, -0.003174,
		37.016022, 33.744434, 21.464468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420864, 33.612347, 20.836660>,  <36.600651, 33.180996, 21.466690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420864, 33.612347, 20.836660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.781418, 33.746971, 20.945650>,  <36.997749, 33.827744, 21.011044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.781418, 33.746971, 20.945650>,  <36.420864, 33.612347, 20.836660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781418, 33.746971, 20.945650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243153, 0.127286, -0.961600,
		-0.358317, 0.933020, 0.032898,
		0.901380, 0.336559, 0.272475,
		37.051830, 33.847939, 21.027393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567272, 33.996380, 20.315308>,  <36.420864, 33.612347, 20.836660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567272, 33.996380, 20.315308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918385, 33.907345, 20.484993>,  <37.129051, 33.853924, 20.586805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918385, 33.907345, 20.484993>,  <36.567272, 33.996380, 20.315308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918385, 33.907345, 20.484993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436008, 0.004283, -0.899933,
		0.198500, 0.974903, 0.100811,
		0.877778, -0.222591, 0.424215,
		37.181717, 33.840569, 20.612257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070263, 34.463104, 19.989819>,  <36.567272, 33.996380, 20.315308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070263, 34.463104, 19.989819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269112, 34.160358, 20.159536>,  <37.388420, 33.978710, 20.261368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269112, 34.160358, 20.159536>,  <37.070263, 34.463104, 19.989819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269112, 34.160358, 20.159536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523834, -0.128040, -0.842143,
		0.691714, 0.640908, 0.332819,
		0.497122, -0.756864, 0.424296,
		37.418247, 33.933300, 20.286825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822319, 34.460701, 19.792385>,  <37.070263, 34.463104, 19.989819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822319, 34.460701, 19.792385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.781223, 34.079884, 19.907667>,  <37.756565, 33.851395, 19.976837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.781223, 34.079884, 19.907667>,  <37.822319, 34.460701, 19.792385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781223, 34.079884, 19.907667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658351, -0.282281, -0.697776,
		0.745666, 0.118053, 0.655779,
		-0.102740, -0.952040, 0.288208,
		37.750401, 33.794270, 19.994129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456509, 34.300301, 20.012123>,  <37.822319, 34.460701, 19.792385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456509, 34.300301, 20.012123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.276241, 33.951412, 19.936083>,  <38.168083, 33.742081, 19.890459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.276241, 33.951412, 19.936083>,  <38.456509, 34.300301, 20.012123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276241, 33.951412, 19.936083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797123, -0.297321, -0.525542,
		0.401866, -0.388377, 0.829257,
		-0.450664, -0.872218, -0.190101,
		38.141041, 33.689747, 19.879053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936417, 33.892776, 20.019026>,  <38.456509, 34.300301, 20.012123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936417, 33.892776, 20.019026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686279, 33.646667, 19.827032>,  <38.536198, 33.499004, 19.711836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686279, 33.646667, 19.827032>,  <38.936417, 33.892776, 20.019026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686279, 33.646667, 19.827032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776157, -0.426753, -0.464179,
		0.080759, -0.662817, 0.744414,
		-0.625346, -0.615269, -0.479986,
		38.498676, 33.462086, 19.683037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311295, 33.194160, 19.970888>,  <38.936417, 33.892776, 20.019026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311295, 33.194160, 19.970888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031860, 33.157070, 19.687094>,  <38.864201, 33.134815, 19.516817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031860, 33.157070, 19.687094>,  <39.311295, 33.194160, 19.970888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031860, 33.157070, 19.687094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668876, -0.436790, -0.601515,
		-0.254120, -0.894772, 0.367161,
		-0.698590, -0.092728, -0.709488,
		38.822285, 33.129253, 19.474247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282188, 32.505108, 19.789089>,  <39.311295, 33.194160, 19.970888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282188, 32.505108, 19.789089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114338, 32.697838, 19.481388>,  <39.013626, 32.813477, 19.296766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114338, 32.697838, 19.481388>,  <39.282188, 32.505108, 19.789089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114338, 32.697838, 19.481388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496181, -0.587890, -0.638897,
		-0.760075, -0.649791, 0.007623,
		-0.419631, 0.481827, -0.769254,
		38.988449, 32.842384, 19.250612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358402, 32.063885, 19.329113>,  <39.282188, 32.505108, 19.789089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358402, 32.063885, 19.329113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258224, 32.360943, 19.080677>,  <39.198116, 32.539177, 18.931616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258224, 32.360943, 19.080677>,  <39.358402, 32.063885, 19.329113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258224, 32.360943, 19.080677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380213, -0.514540, -0.768561,
		-0.890345, -0.428629, -0.153500,
		-0.250446, 0.742648, -0.621089,
		39.183090, 32.583736, 18.894350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916672, 31.751133, 18.798691>,  <39.358402, 32.063885, 19.329113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916672, 31.751133, 18.798691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117760, 32.080112, 18.692219>,  <39.238411, 32.277500, 18.628336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117760, 32.080112, 18.692219>,  <38.916672, 31.751133, 18.798691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117760, 32.080112, 18.692219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422044, -0.502241, -0.754740,
		-0.754421, 0.267083, -0.599596,
		0.502721, 0.822448, -0.266180,
		39.268578, 32.326847, 18.612364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301498, 31.789057, 18.528883>,  <38.916672, 31.751133, 18.798691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301498, 31.789057, 18.528883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292953, 31.406425, 18.645161>,  <38.287827, 31.176847, 18.714928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292953, 31.406425, 18.645161>,  <38.301498, 31.789057, 18.528883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292953, 31.406425, 18.645161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599432, 0.244960, 0.762021,
		-0.800141, -0.157972, -0.578636,
		-0.021365, -0.956577, 0.290696,
		38.286545, 31.119452, 18.732368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617264, 31.632542, 18.665588>,  <38.301498, 31.789057, 18.528883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617264, 31.632542, 18.665588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802853, 31.343735, 18.870886>,  <37.914207, 31.170450, 18.994064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802853, 31.343735, 18.870886>,  <37.617264, 31.632542, 18.665588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802853, 31.343735, 18.870886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611120, 0.158550, 0.775496,
		-0.641297, -0.673463, -0.367676,
		0.463973, -0.722018, 0.513244,
		37.942043, 31.127129, 19.024858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003754, 31.110193, 18.861036>,  <37.617264, 31.632542, 18.665588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003754, 31.110193, 18.861036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.326900, 31.033314, 19.083893>,  <37.520790, 30.987186, 19.217607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.326900, 31.033314, 19.083893>,  <37.003754, 31.110193, 18.861036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326900, 31.033314, 19.083893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586747, -0.173367, 0.790995,
		-0.055435, -0.965922, -0.252827,
		0.807871, -0.192195, 0.557141,
		37.569263, 30.975655, 19.251036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847744, 30.458614, 19.262453>,  <37.003754, 31.110193, 18.861036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847744, 30.458614, 19.262453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139065, 30.636847, 19.470699>,  <37.313858, 30.743786, 19.595646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139065, 30.636847, 19.470699>,  <36.847744, 30.458614, 19.262453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139065, 30.636847, 19.470699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477517, -0.214897, 0.851937,
		0.491483, -0.869068, 0.056262,
		0.728301, 0.445579, 0.520613,
		37.357555, 30.770519, 19.626883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968990, 29.943499, 19.753101>,  <36.847744, 30.458614, 19.262453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968990, 29.943499, 19.753101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.127846, 30.282846, 19.893129>,  <37.223160, 30.486456, 19.977146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.127846, 30.282846, 19.893129>,  <36.968990, 29.943499, 19.753101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127846, 30.282846, 19.893129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229387, -0.277576, 0.932916,
		0.888630, -0.450798, 0.084370,
		0.397138, 0.848371, 0.350070,
		37.246986, 30.537357, 19.998150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232826, 29.801708, 20.402939>,  <36.968990, 29.943499, 19.753101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232826, 29.801708, 20.402939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229507, 30.201496, 20.415541>,  <37.227516, 30.441368, 20.423101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229507, 30.201496, 20.415541>,  <37.232826, 29.801708, 20.402939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229507, 30.201496, 20.415541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425598, -0.032040, 0.904345,
		0.904874, -0.005905, 0.425638,
		-0.008298, 0.999469, 0.031505,
		37.227016, 30.501337, 20.424992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632999, 29.944578, 21.027124>,  <37.232826, 29.801708, 20.402939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632999, 29.944578, 21.027124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.379219, 30.241280, 20.940161>,  <37.226952, 30.419300, 20.887983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.379219, 30.241280, 20.940161>,  <37.632999, 29.944578, 21.027124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379219, 30.241280, 20.940161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271903, 0.049119, 0.961070,
		0.723558, 0.668869, 0.170522,
		-0.634454, 0.741756, -0.217408,
		37.188881, 30.463806, 20.874939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140690, 29.775444, 21.571819>,  <37.632999, 29.944578, 21.027124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140690, 29.775444, 21.571819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285786, 29.504848, 21.828190>,  <38.372845, 29.342491, 21.982012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285786, 29.504848, 21.828190>,  <38.140690, 29.775444, 21.571819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285786, 29.504848, 21.828190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495534, -0.442449, -0.747453,
		0.789219, 0.588730, 0.174730,
		0.362739, -0.676488, 0.640924,
		38.394608, 29.301903, 22.020468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903564, 29.755665, 21.435364>,  <38.140690, 29.775444, 21.571819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903564, 29.755665, 21.435364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773861, 29.425465, 21.620146>,  <38.696041, 29.227345, 21.731016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773861, 29.425465, 21.620146>,  <38.903564, 29.755665, 21.435364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773861, 29.425465, 21.620146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533716, -0.562841, -0.631155,
		0.781029, 0.041899, 0.623088,
		-0.324255, -0.825502, 0.461957,
		38.676586, 29.177814, 21.758734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481766, 29.389282, 21.642990>,  <38.903564, 29.755665, 21.435364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481766, 29.389282, 21.642990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.164303, 29.157663, 21.568359>,  <38.973824, 29.018692, 21.523581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.164303, 29.157663, 21.568359>,  <39.481766, 29.389282, 21.642990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164303, 29.157663, 21.568359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524097, -0.495053, -0.692997,
		0.308913, -0.647786, 0.696380,
		-0.793659, -0.579047, -0.186575,
		38.926205, 28.983950, 21.512386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829884, 28.764330, 21.453278>,  <39.481766, 29.389282, 21.642990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829884, 28.764330, 21.453278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.451515, 28.670589, 21.363554>,  <39.224495, 28.614346, 21.309719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.451515, 28.670589, 21.363554>,  <39.829884, 28.764330, 21.453278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451515, 28.670589, 21.363554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322347, -0.601316, -0.731103,
		0.036454, -0.763871, 0.644339,
		-0.945919, -0.234353, -0.224311,
		39.167740, 28.600285, 21.296261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800396, 28.039246, 21.236029>,  <39.829884, 28.764330, 21.453278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800396, 28.039246, 21.236029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.475029, 28.202408, 21.070152>,  <39.279808, 28.300306, 20.970627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.475029, 28.202408, 21.070152>,  <39.800396, 28.039246, 21.236029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475029, 28.202408, 21.070152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345278, -0.235151, -0.908563,
		-0.468125, -0.882222, 0.050433,
		-0.813414, 0.407908, -0.414692,
		39.231003, 28.324780, 20.945745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512165, 27.540258, 20.758961>,  <39.800396, 28.039246, 21.236029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512165, 27.540258, 20.758961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385010, 27.900438, 20.640211>,  <39.308716, 28.116547, 20.568962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385010, 27.900438, 20.640211>,  <39.512165, 27.540258, 20.758961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385010, 27.900438, 20.640211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233508, -0.229118, -0.944976,
		-0.918924, -0.369719, -0.137429,
		-0.317888, 0.900451, -0.296874,
		39.289642, 28.170574, 20.551149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304596, 27.423077, 20.142958>,  <39.512165, 27.540258, 20.758961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304596, 27.423077, 20.142958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.329529, 27.821178, 20.113064>,  <39.344490, 28.060040, 20.095127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.329529, 27.821178, 20.113064>,  <39.304596, 27.423077, 20.142958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329529, 27.821178, 20.113064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387911, -0.093153, -0.916977,
		-0.919587, 0.028170, -0.391876,
		0.062335, 0.995253, -0.074735,
		39.348228, 28.119755, 20.090643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065151, 27.596045, 19.487480>,  <39.304596, 27.423077, 20.142958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065151, 27.596045, 19.487480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263912, 27.929346, 19.584457>,  <39.383167, 28.129328, 19.642645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263912, 27.929346, 19.584457>,  <39.065151, 27.596045, 19.487480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263912, 27.929346, 19.584457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261740, 0.122463, -0.957337,
		-0.827396, 0.539157, -0.157244,
		0.496898, 0.833254, 0.242445,
		39.412983, 28.179323, 19.657190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905266, 28.147478, 18.879442>,  <39.065151, 27.596045, 19.487480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905266, 28.147478, 18.879442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240456, 28.229647, 19.081669>,  <39.441570, 28.278948, 19.203005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240456, 28.229647, 19.081669>,  <38.905266, 28.147478, 18.879442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240456, 28.229647, 19.081669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483236, 0.151096, -0.862353,
		-0.253534, 0.966940, 0.027348,
		0.837976, 0.205420, 0.505568,
		39.491848, 28.291273, 19.233339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.417900, 33.902489, 33.776569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810532, 33.959465, 33.827515>,  <36.046108, 33.993652, 33.858082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810532, 33.959465, 33.827515>,  <35.417900, 33.902489, 33.776569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810532, 33.959465, 33.827515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186658, -0.572352, -0.798481,
		-0.040841, 0.807542, -0.588394,
		0.981576, 0.142439, 0.127359,
		36.105003, 34.002197, 33.865723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844463, 34.285866, 33.119068>,  <35.417900, 33.902489, 33.776569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844463, 34.285866, 33.119068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074707, 34.052490, 33.348248>,  <36.212852, 33.912464, 33.485756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074707, 34.052490, 33.348248>,  <35.844463, 34.285866, 33.119068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074707, 34.052490, 33.348248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270216, -0.525586, -0.806687,
		0.771788, 0.619156, -0.144877,
		0.575610, -0.583443, 0.572946,
		36.247391, 33.877457, 33.520130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341145, 34.073669, 32.671768>,  <35.844463, 34.285866, 33.119068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341145, 34.073669, 32.671768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391033, 33.803070, 32.962090>,  <36.420967, 33.640709, 33.136284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391033, 33.803070, 32.962090>,  <36.341145, 34.073669, 32.671768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391033, 33.803070, 32.962090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191299, -0.701397, -0.686620,
		0.973576, 0.224481, 0.041935,
		0.124720, -0.676499, 0.725806,
		36.428448, 33.600121, 33.179832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050163, 33.966919, 32.835236>,  <36.341145, 34.073669, 32.671768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050163, 33.966919, 32.835236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869289, 33.632420, 32.959312>,  <36.760765, 33.431721, 33.033756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869289, 33.632420, 32.959312>,  <37.050163, 33.966919, 32.835236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869289, 33.632420, 32.959312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414733, -0.505029, -0.756930,
		0.789635, -0.213628, 0.575187,
		-0.452187, -0.836247, 0.310190,
		36.733635, 33.381546, 33.052368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571556, 33.403709, 32.766617>,  <37.050163, 33.966919, 32.835236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571556, 33.403709, 32.766617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212929, 33.227173, 32.781437>,  <36.997753, 33.121250, 32.790329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212929, 33.227173, 32.781437>,  <37.571556, 33.403709, 32.766617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212929, 33.227173, 32.781437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180676, -0.440839, -0.879214,
		0.404370, -0.781585, 0.474984,
		-0.896572, -0.441346, 0.037048,
		36.943958, 33.094769, 32.792553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654652, 32.753887, 32.360455>,  <37.571556, 33.403709, 32.766617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654652, 32.753887, 32.360455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257458, 32.799816, 32.349163>,  <37.019142, 32.827374, 32.342388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257458, 32.799816, 32.349163>,  <37.654652, 32.753887, 32.360455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257458, 32.799816, 32.349163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022316, -0.416464, -0.908878,
		-0.116113, -0.901873, 0.416105,
		-0.992985, 0.114818, -0.028231,
		36.959560, 32.834263, 32.340694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316422, 32.108452, 32.263645>,  <37.654652, 32.753887, 32.360455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316422, 32.108452, 32.263645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037010, 32.366756, 32.140331>,  <36.869362, 32.521740, 32.066341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037010, 32.366756, 32.140331>,  <37.316422, 32.108452, 32.263645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037010, 32.366756, 32.140331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127606, -0.536328, -0.834307,
		-0.704109, -0.543451, 0.457046,
		-0.698532, 0.645765, -0.308286,
		36.827450, 32.560486, 32.047844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031685, 31.647480, 31.913654>,  <37.316422, 32.108452, 32.263645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031685, 31.647480, 31.913654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868385, 31.999771, 31.817614>,  <36.770405, 32.211147, 31.759989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868385, 31.999771, 31.817614>,  <37.031685, 31.647480, 31.913654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868385, 31.999771, 31.817614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128157, -0.315711, -0.940161,
		-0.903830, -0.353048, 0.241760,
		-0.408248, 0.880729, -0.240104,
		36.745911, 32.263988, 31.745583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372787, 31.548885, 31.596849>,  <37.031685, 31.647480, 31.913654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372787, 31.548885, 31.596849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504002, 31.904869, 31.470125>,  <36.582729, 32.118458, 31.394091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504002, 31.904869, 31.470125>,  <36.372787, 31.548885, 31.596849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504002, 31.904869, 31.470125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066239, -0.356211, -0.932055,
		-0.942341, 0.284759, -0.175799,
		0.328033, 0.889958, -0.316811,
		36.602413, 32.171856, 31.375082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975540, 31.743744, 31.022081>,  <36.372787, 31.548885, 31.596849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975540, 31.743744, 31.022081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309570, 31.959818, 30.980410>,  <36.509987, 32.089462, 30.955406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309570, 31.959818, 30.980410>,  <35.975540, 31.743744, 31.022081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309570, 31.959818, 30.980410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023075, -0.223592, -0.974410,
		-0.549653, 0.811300, -0.199181,
		0.835074, 0.540183, -0.104178,
		36.560093, 32.121872, 30.949156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900154, 31.984995, 30.336550>,  <35.975540, 31.743744, 31.022081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900154, 31.984995, 30.336550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277557, 32.049744, 30.452204>,  <36.503998, 32.088593, 30.521597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277557, 32.049744, 30.452204>,  <35.900154, 31.984995, 30.336550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277557, 32.049744, 30.452204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326367, -0.303025, -0.895355,
		-0.057317, 0.939135, -0.338735,
		0.943504, 0.161871, 0.289134,
		36.560608, 32.098305, 30.538944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229389, 32.287682, 29.757923>,  <35.900154, 31.984995, 30.336550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229389, 32.287682, 29.757923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529766, 32.129139, 29.969200>,  <36.709991, 32.034012, 30.095966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529766, 32.129139, 29.969200>,  <36.229389, 32.287682, 29.757923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529766, 32.129139, 29.969200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354643, -0.432663, -0.828873,
		0.557058, 0.809756, -0.184340,
		0.750942, -0.396356, 0.528193,
		36.755051, 32.010231, 30.127659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259979, 32.963322, 29.610048>,  <36.229389, 32.287682, 29.757923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259979, 32.963322, 29.610048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897511, 32.922821, 29.445803>,  <35.680031, 32.898521, 29.347256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897511, 32.922821, 29.445803>,  <36.259979, 32.963322, 29.610048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897511, 32.922821, 29.445803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420995, 0.308296, 0.853063,
		0.040218, 0.945887, -0.321995,
		-0.906171, -0.101250, -0.410613,
		35.625660, 32.892445, 29.322618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922768, 33.459011, 29.862326>,  <36.259979, 32.963322, 29.610048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922768, 33.459011, 29.862326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619324, 33.251301, 29.704914>,  <35.437256, 33.126675, 29.610468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619324, 33.251301, 29.704914>,  <35.922768, 33.459011, 29.862326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619324, 33.251301, 29.704914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588197, 0.286038, 0.756444,
		-0.280235, 0.805320, -0.522426,
		-0.758612, -0.519271, -0.393529,
		35.391739, 33.095520, 29.586855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356396, 33.903183, 30.033274>,  <35.922768, 33.459011, 29.862326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356396, 33.903183, 30.033274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203175, 33.546551, 29.936640>,  <35.111244, 33.332573, 29.878660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203175, 33.546551, 29.936640>,  <35.356396, 33.903183, 30.033274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203175, 33.546551, 29.936640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696503, 0.106985, 0.709533,
		-0.606758, 0.440051, -0.661967,
		-0.383051, -0.891577, -0.241583,
		35.088261, 33.279079, 29.864164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598389, 34.071186, 30.034473>,  <35.356396, 33.903183, 30.033274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598389, 34.071186, 30.034473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689259, 33.684902, 30.084742>,  <34.743778, 33.453133, 30.114902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689259, 33.684902, 30.084742>,  <34.598389, 34.071186, 30.034473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689259, 33.684902, 30.084742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654352, -0.055793, 0.754129,
		-0.721260, -0.253550, -0.644591,
		0.227173, -0.965712, 0.125669,
		34.757412, 33.395187, 30.122442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982861, 33.747158, 30.145903>,  <34.598389, 34.071186, 30.034473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982861, 33.747158, 30.145903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245747, 33.498093, 30.315781>,  <34.403477, 33.348656, 30.417707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245747, 33.498093, 30.315781>,  <33.982861, 33.747158, 30.145903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245747, 33.498093, 30.315781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643090, -0.169392, 0.746822,
		-0.393077, -0.763937, -0.511753,
		0.657211, -0.622661, 0.424696,
		34.442909, 33.311295, 30.443190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665836, 33.162628, 30.159594>,  <33.982861, 33.747158, 30.145903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665836, 33.162628, 30.159594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950516, 33.141605, 30.439800>,  <34.121323, 33.128994, 30.607925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950516, 33.141605, 30.439800>,  <33.665836, 33.162628, 30.159594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950516, 33.141605, 30.439800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702437, -0.041428, 0.710539,
		-0.008319, -0.997759, -0.066398,
		0.711697, -0.052552, 0.700518,
		34.164024, 33.125839, 30.649956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311546, 32.774273, 30.600229>,  <33.665836, 33.162628, 30.159594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311546, 32.774273, 30.600229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603149, 32.958923, 30.802395>,  <33.778111, 33.069714, 30.923695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603149, 32.958923, 30.802395>,  <33.311546, 32.774273, 30.600229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603149, 32.958923, 30.802395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621866, 0.138090, 0.770853,
		0.286055, -0.876260, 0.387739,
		0.729010, 0.461628, 0.505415,
		33.821854, 33.097412, 30.954020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266354, 32.485161, 31.345289>,  <33.311546, 32.774273, 30.600229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266354, 32.485161, 31.345289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478992, 32.822594, 31.375675>,  <33.606575, 33.025055, 31.393908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478992, 32.822594, 31.375675>,  <33.266354, 32.485161, 31.345289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478992, 32.822594, 31.375675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353504, 0.139470, 0.924977,
		0.769704, -0.518565, 0.372352,
		0.531593, 0.843587, 0.075965,
		33.638470, 33.075668, 31.398464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490128, 32.484978, 32.041782>,  <33.266354, 32.485161, 31.345289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490128, 32.484978, 32.041782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560951, 32.858929, 31.918718>,  <33.603447, 33.083298, 31.844881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560951, 32.858929, 31.918718>,  <33.490128, 32.484978, 32.041782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560951, 32.858929, 31.918718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255815, 0.345569, 0.902851,
		0.950373, -0.081156, 0.300342,
		0.177060, 0.934877, -0.307659,
		33.614071, 33.139393, 31.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972095, 32.820164, 32.571686>,  <33.490128, 32.484978, 32.041782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972095, 32.820164, 32.571686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771885, 33.099274, 32.366714>,  <33.651760, 33.266739, 32.243732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771885, 33.099274, 32.366714>,  <33.972095, 32.820164, 32.571686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771885, 33.099274, 32.366714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274827, 0.433221, 0.858365,
		0.820940, 0.570464, -0.025071,
		-0.500527, 0.697776, -0.512427,
		33.621727, 33.308605, 32.212986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174690, 33.424664, 32.834869>,  <33.972095, 32.820164, 32.571686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174690, 33.424664, 32.834869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825752, 33.501431, 32.655010>,  <33.616390, 33.547493, 32.547096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825752, 33.501431, 32.655010>,  <34.174690, 33.424664, 32.834869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825752, 33.501431, 32.655010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240361, 0.632529, 0.736297,
		0.425724, 0.750382, -0.505654,
		-0.872345, 0.191920, -0.449645,
		33.564049, 33.559006, 32.520115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001064, 34.197739, 32.879055>,  <34.174690, 33.424664, 32.834869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001064, 34.197739, 32.879055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643448, 34.037739, 32.798374>,  <33.428879, 33.941738, 32.749966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643448, 34.037739, 32.798374>,  <34.001064, 34.197739, 32.879055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643448, 34.037739, 32.798374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425233, 0.616099, 0.663022,
		-0.140939, 0.678543, -0.720913,
		-0.894043, -0.400002, -0.201706,
		33.375237, 33.917740, 32.737862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659580, 34.799706, 32.854538>,  <34.001064, 34.197739, 32.879055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659580, 34.799706, 32.854538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381897, 34.513798, 32.888416>,  <33.215286, 34.342251, 32.908745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381897, 34.513798, 32.888416>,  <33.659580, 34.799706, 32.854538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381897, 34.513798, 32.888416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529681, 0.586993, 0.612272,
		-0.487353, 0.380181, -0.786098,
		-0.694208, -0.714774, 0.084698,
		33.173634, 34.299366, 32.913826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961914, 35.140953, 32.763805>,  <33.659580, 34.799706, 32.854538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961914, 35.140953, 32.763805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928379, 34.806519, 32.980667>,  <32.908260, 34.605858, 33.110783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928379, 34.806519, 32.980667>,  <32.961914, 35.140953, 32.763805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928379, 34.806519, 32.980667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365314, 0.531978, 0.763901,
		-0.927102, -0.134015, -0.350032,
		-0.083835, -0.836085, 0.542155,
		32.903229, 34.555695, 33.143314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359581, 35.643848, 32.719250>,  <32.961914, 35.140953, 32.763805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359581, 35.643848, 32.719250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358234, 36.042038, 32.681248>,  <32.357426, 36.280952, 32.658447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358234, 36.042038, 32.681248>,  <32.359581, 35.643848, 32.719250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358234, 36.042038, 32.681248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360850, -0.087393, -0.928520,
		-0.932618, -0.037405, -0.358922,
		-0.003364, 0.995471, -0.095001,
		32.357224, 36.340679, 32.652748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854425, 36.041286, 32.230190>,  <32.359581, 35.643848, 32.719250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854425, 36.041286, 32.230190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206799, 36.229309, 32.252129>,  <32.418221, 36.342121, 32.265293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206799, 36.229309, 32.252129>,  <31.854425, 36.041286, 32.230190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206799, 36.229309, 32.252129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196427, -0.257737, -0.946038,
		-0.430551, 0.844169, -0.319380,
		0.880933, 0.470053, 0.054848,
		32.471077, 36.370323, 32.268581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879158, 36.536575, 31.578955>,  <31.854425, 36.041286, 32.230190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879158, 36.536575, 31.578955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243881, 36.407043, 31.679943>,  <32.462715, 36.329327, 31.740536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243881, 36.407043, 31.679943>,  <31.879158, 36.536575, 31.578955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243881, 36.407043, 31.679943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184292, -0.226719, -0.956366,
		0.366936, 0.918551, -0.147046,
		0.911809, -0.323825, 0.252473,
		32.517426, 36.309895, 31.755686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292862, 36.768333, 31.082628>,  <31.879158, 36.536575, 31.578955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292862, 36.768333, 31.082628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519760, 36.482361, 31.246147>,  <32.655899, 36.310780, 31.344259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519760, 36.482361, 31.246147>,  <32.292862, 36.768333, 31.082628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519760, 36.482361, 31.246147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365954, -0.225869, -0.902807,
		0.737777, 0.661710, 0.133509,
		0.567241, -0.714928, 0.408797,
		32.689934, 36.267883, 31.368786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029133, 36.954464, 31.211493>,  <32.292862, 36.768333, 31.082628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029133, 36.954464, 31.211493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024899, 36.554573, 31.203156>,  <33.022358, 36.314640, 31.198153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024899, 36.554573, 31.203156>,  <33.029133, 36.954464, 31.211493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024899, 36.554573, 31.203156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367485, 0.015496, -0.929900,
		0.929969, -0.017507, 0.367221,
		-0.010590, -0.999727, -0.020844,
		33.021721, 36.254654, 31.196901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595909, 36.770718, 30.710941>,  <33.029133, 36.954464, 31.211493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595909, 36.770718, 30.710941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386166, 36.432884, 30.754265>,  <33.260319, 36.230186, 30.780260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386166, 36.432884, 30.754265>,  <33.595909, 36.770718, 30.710941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386166, 36.432884, 30.754265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322435, -0.314673, -0.892758,
		0.788087, -0.433204, 0.437324,
		-0.524360, -0.844580, 0.108310,
		33.228859, 36.179512, 30.786758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031269, 36.243847, 30.372770>,  <33.595909, 36.770718, 30.710941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031269, 36.243847, 30.372770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649529, 36.124813, 30.362503>,  <33.420483, 36.053394, 30.356342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649529, 36.124813, 30.362503>,  <34.031269, 36.243847, 30.372770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649529, 36.124813, 30.362503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102391, -0.245219, -0.964045,
		0.280592, -0.922665, 0.264495,
		-0.954350, -0.297585, -0.025666,
		33.363224, 36.035538, 30.354803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001961, 35.577305, 29.970552>,  <34.031269, 36.243847, 30.372770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001961, 35.577305, 29.970552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627064, 35.716522, 29.962196>,  <33.402126, 35.800053, 29.957182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627064, 35.716522, 29.962196>,  <34.001961, 35.577305, 29.970552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627064, 35.716522, 29.962196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074479, -0.258382, -0.963167,
		-0.340622, -0.901168, 0.268090,
		-0.937246, 0.348043, -0.020892,
		33.345890, 35.820934, 29.955929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533871, 35.057926, 29.675768>,  <34.001961, 35.577305, 29.970552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533871, 35.057926, 29.675768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338619, 35.402851, 29.621881>,  <33.221470, 35.609806, 29.589550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338619, 35.402851, 29.621881>,  <33.533871, 35.057926, 29.675768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338619, 35.402851, 29.621881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096206, -0.100249, -0.990300,
		-0.867454, -0.496352, -0.034025,
		-0.488127, 0.862313, -0.134714,
		33.192181, 35.661545, 29.581467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188137, 34.929272, 29.012423>,  <33.533871, 35.057926, 29.675768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188137, 34.929272, 29.012423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141293, 35.320045, 29.083843>,  <33.113186, 35.554512, 29.126696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141293, 35.320045, 29.083843>,  <33.188137, 34.929272, 29.012423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141293, 35.320045, 29.083843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062180, 0.186648, -0.980457,
		-0.991171, -0.103717, -0.082604,
		-0.117108, 0.976937, 0.178551,
		33.106159, 35.613125, 29.137409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773766, 35.072769, 28.559937>,  <33.188137, 34.929272, 29.012423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773766, 35.072769, 28.559937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954727, 35.414268, 28.663036>,  <33.063305, 35.619167, 28.724895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954727, 35.414268, 28.663036>,  <32.773766, 35.072769, 28.559937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954727, 35.414268, 28.663036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310620, 0.120070, -0.942920,
		-0.835968, 0.506646, -0.210872,
		0.452407, 0.853752, 0.257749,
		33.090450, 35.670395, 28.740360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603687, 35.438908, 28.025827>,  <32.773766, 35.072769, 28.559937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603687, 35.438908, 28.025827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911613, 35.642990, 28.179234>,  <33.096367, 35.765438, 28.271276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911613, 35.642990, 28.179234>,  <32.603687, 35.438908, 28.025827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911613, 35.642990, 28.179234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432362, 0.025171, -0.901349,
		-0.469523, 0.859686, -0.201215,
		0.769812, 0.510202, 0.383514,
		33.142559, 35.796051, 28.294289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656269, 35.987541, 27.598104>,  <32.603687, 35.438908, 28.025827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656269, 35.987541, 27.598104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014164, 35.948944, 27.772522>,  <33.228901, 35.925785, 27.877172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014164, 35.948944, 27.772522>,  <32.656269, 35.987541, 27.598104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014164, 35.948944, 27.772522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425467, -0.112564, -0.897946,
		0.135726, 0.988948, -0.059661,
		0.894738, -0.096491, 0.436042,
		33.282585, 35.919998, 27.903336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204395, 36.451187, 27.166466>,  <32.656269, 35.987541, 27.598104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204395, 36.451187, 27.166466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431755, 36.203644, 27.383327>,  <33.568172, 36.055119, 27.513445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431755, 36.203644, 27.383327>,  <33.204395, 36.451187, 27.166466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431755, 36.203644, 27.383327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596212, -0.144267, -0.789759,
		0.566965, 0.772139, 0.286970,
		0.568403, -0.618860, 0.542153,
		33.602276, 36.017986, 27.545973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839005, 36.634670, 27.002247>,  <33.204395, 36.451187, 27.166466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839005, 36.634670, 27.002247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885700, 36.262398, 27.140930>,  <33.913715, 36.039036, 27.224140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885700, 36.262398, 27.140930>,  <33.839005, 36.634670, 27.002247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885700, 36.262398, 27.140930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548986, -0.230444, -0.803436,
		0.827640, 0.284126, 0.484030,
		0.116735, -0.930681, 0.346706,
		33.920719, 35.983192, 27.244942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591427, 36.396946, 26.944401>,  <33.839005, 36.634670, 27.002247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591427, 36.396946, 26.944401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408318, 36.046131, 27.002714>,  <34.298450, 35.835644, 27.037703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408318, 36.046131, 27.002714>,  <34.591427, 36.396946, 26.944401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408318, 36.046131, 27.002714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588082, -0.421678, -0.690178,
		0.666785, -0.230212, 0.708802,
		-0.457774, -0.877035, 0.145785,
		34.270985, 35.783020, 27.046450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185284, 35.886284, 27.155951>,  <34.591427, 36.396946, 26.944401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185284, 35.886284, 27.155951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862762, 35.719070, 26.988556>,  <34.669250, 35.618744, 26.888119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862762, 35.719070, 26.988556>,  <35.185284, 35.886284, 27.155951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862762, 35.719070, 26.988556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587404, -0.482665, -0.649608,
		0.069570, -0.769598, 0.634727,
		-0.806298, -0.418035, -0.418486,
		34.620872, 35.593658, 26.863010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280788, 35.264317, 26.986763>,  <35.185284, 35.886284, 27.155951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280788, 35.264317, 26.986763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976574, 35.296246, 26.729017>,  <34.794044, 35.315403, 26.574369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976574, 35.296246, 26.729017>,  <35.280788, 35.264317, 26.986763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976574, 35.296246, 26.729017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589261, -0.331911, -0.736618,
		-0.272669, -0.939927, 0.205398,
		-0.760541, 0.079820, -0.644365,
		34.748413, 35.320190, 26.535707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367786, 34.696049, 26.626753>,  <35.280788, 35.264317, 26.986763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367786, 34.696049, 26.626753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115494, 34.899433, 26.392269>,  <34.964119, 35.021465, 26.251579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115494, 34.899433, 26.392269>,  <35.367786, 34.696049, 26.626753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115494, 34.899433, 26.392269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322242, -0.515592, -0.793930,
		-0.705928, -0.689660, 0.161353,
		-0.630734, 0.508463, -0.586209,
		34.926273, 35.051971, 26.216406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003189, 34.160004, 26.153105>,  <35.367786, 34.696049, 26.626753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003189, 34.160004, 26.153105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018131, 34.515392, 25.970139>,  <35.027096, 34.728626, 25.860359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018131, 34.515392, 25.970139>,  <35.003189, 34.160004, 26.153105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018131, 34.515392, 25.970139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400821, -0.432623, -0.807576,
		-0.915394, -0.153171, -0.372280,
		0.037359, 0.888468, -0.457415,
		35.029339, 34.781933, 25.832914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084160, 33.974953, 25.539146>,  <35.003189, 34.160004, 26.153105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084160, 33.974953, 25.539146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105961, 34.372036, 25.496157>,  <35.119041, 34.610287, 25.470364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105961, 34.372036, 25.496157>,  <35.084160, 33.974953, 25.539146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105961, 34.372036, 25.496157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337096, -0.119607, -0.933842,
		-0.939891, 0.014667, -0.341158,
		0.054502, 0.992713, -0.107474,
		35.122311, 34.669849, 25.463915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796871, 34.131958, 24.878599>,  <35.084160, 33.974953, 25.539146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796871, 34.131958, 24.878599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053730, 34.431190, 24.945557>,  <35.207844, 34.610729, 24.985731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053730, 34.431190, 24.945557>,  <34.796871, 34.131958, 24.878599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053730, 34.431190, 24.945557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396830, -0.137561, -0.907526,
		-0.655877, 0.649192, -0.385195,
		0.642146, 0.748082, 0.167396,
		35.246372, 34.655617, 24.995775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837067, 34.470612, 24.224833>,  <34.796871, 34.131958, 24.878599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837067, 34.470612, 24.224833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159744, 34.585529, 24.431404>,  <35.353352, 34.654480, 24.555347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159744, 34.585529, 24.431404>,  <34.837067, 34.470612, 24.224833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159744, 34.585529, 24.431404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528062, 0.041893, -0.848172,
		-0.265313, 0.956925, -0.117916,
		0.806696, 0.287298, 0.516431,
		35.401752, 34.671719, 24.586334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101398, 34.982418, 23.852108>,  <34.837067, 34.470612, 24.224833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101398, 34.982418, 23.852108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401501, 34.819962, 24.060789>,  <35.581562, 34.722488, 24.185997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401501, 34.819962, 24.060789>,  <35.101398, 34.982418, 23.852108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401501, 34.819962, 24.060789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503413, -0.160615, -0.848987,
		0.428599, 0.899586, 0.083954,
		0.750252, -0.406138, 0.521702,
		35.626575, 34.698120, 24.217300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640419, 35.353577, 23.640701>,  <35.101398, 34.982418, 23.852108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640419, 35.353577, 23.640701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802193, 35.022156, 23.795588>,  <35.899258, 34.823303, 23.888519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802193, 35.022156, 23.795588>,  <35.640419, 35.353577, 23.640701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802193, 35.022156, 23.795588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591764, -0.085741, -0.801539,
		0.697318, 0.553306, 0.455632,
		0.404430, -0.828554, 0.387215,
		35.923523, 34.773590, 23.911753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321346, 35.401642, 23.404076>,  <35.640419, 35.353577, 23.640701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321346, 35.401642, 23.404076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297100, 35.021004, 23.524603>,  <36.282551, 34.792622, 23.596920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297100, 35.021004, 23.524603>,  <36.321346, 35.401642, 23.404076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297100, 35.021004, 23.524603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529120, -0.286604, -0.798680,
		0.846379, 0.111019, 0.520881,
		-0.060618, -0.951595, 0.301318,
		36.278915, 34.735527, 23.614998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953991, 35.200073, 23.496653>,  <36.321346, 35.401642, 23.404076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953991, 35.200073, 23.496653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740044, 34.870018, 23.423927>,  <36.611675, 34.671986, 23.380293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740044, 34.870018, 23.423927>,  <36.953991, 35.200073, 23.496653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740044, 34.870018, 23.423927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690216, -0.302577, -0.657305,
		0.487357, -0.477063, 0.731365,
		-0.534869, -0.825142, -0.181813,
		36.579582, 34.622475, 23.369383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384338, 34.753708, 23.179575>,  <36.953991, 35.200073, 23.496653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384338, 34.753708, 23.179575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062267, 34.526176, 23.112503>,  <36.869022, 34.389656, 23.072260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062267, 34.526176, 23.112503>,  <37.384338, 34.753708, 23.179575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062267, 34.526176, 23.112503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351888, -0.230684, -0.907171,
		0.477345, -0.789441, 0.385907,
		-0.805181, -0.568830, -0.167679,
		36.820713, 34.355526, 23.062199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939251, 34.382427, 23.502226>,  <37.384338, 34.753708, 23.179575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939251, 34.382427, 23.502226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237522, 34.648266, 23.483143>,  <38.416485, 34.807770, 23.471693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237522, 34.648266, 23.483143>,  <37.939251, 34.382427, 23.502226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237522, 34.648266, 23.483143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286231, 0.384163, 0.877776,
		0.601694, -0.640882, 0.476690,
		0.745677, 0.664596, -0.047708,
		38.461224, 34.847645, 23.468830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262405, 34.323872, 24.070372>,  <37.939251, 34.382427, 23.502226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262405, 34.323872, 24.070372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333389, 34.691414, 23.929396>,  <38.375980, 34.911938, 23.844810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333389, 34.691414, 23.929396>,  <38.262405, 34.323872, 24.070372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333389, 34.691414, 23.929396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188815, 0.383262, 0.904135,
		0.965845, -0.093901, 0.241507,
		0.177460, 0.918854, -0.352442,
		38.386627, 34.967072, 23.823664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738846, 34.598648, 24.629095>,  <38.262405, 34.323872, 24.070372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738846, 34.598648, 24.629095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568741, 34.899799, 24.428164>,  <38.466679, 35.080490, 24.307604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568741, 34.899799, 24.428164>,  <38.738846, 34.598648, 24.629095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568741, 34.899799, 24.428164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159535, 0.483971, 0.860420,
		0.890900, 0.446041, -0.085703,
		-0.425260, 0.752875, -0.502328,
		38.441162, 35.125660, 24.277466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004925, 35.276199, 24.946785>,  <38.738846, 34.598648, 24.629095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004925, 35.276199, 24.946785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674339, 35.401840, 24.759893>,  <38.475990, 35.477222, 24.647758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674339, 35.401840, 24.759893>,  <39.004925, 35.276199, 24.946785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674339, 35.401840, 24.759893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380806, 0.299379, 0.874848,
		0.414668, 0.900952, -0.127814,
		-0.826461, 0.314099, -0.467231,
		38.426399, 35.496071, 24.619724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815662, 35.567863, 25.399900>,  <39.004925, 35.276199, 24.946785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815662, 35.567863, 25.399900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490280, 35.605415, 25.170300>,  <38.295052, 35.627945, 25.032539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490280, 35.605415, 25.170300>,  <38.815662, 35.567863, 25.399900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490280, 35.605415, 25.170300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487676, 0.427717, 0.761072,
		0.316956, 0.899025, -0.302148,
		-0.813456, 0.093877, -0.574000,
		38.246243, 35.633579, 24.998100>
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
